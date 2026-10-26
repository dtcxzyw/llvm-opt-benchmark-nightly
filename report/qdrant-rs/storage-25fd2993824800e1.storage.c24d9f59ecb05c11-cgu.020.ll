Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.020?download=true
inline.NumInlined: 2054
inline.NumDeleted: 1383
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtBc_6result6ResultTNtNtCs607s0NAIaWN_7segment7segment7SegmentNtNtNtNtB36_19segment_constructor24segment_constructor_base7segment15NewSegmentTokenENtNtNtB36_6common15operation_error14OperationErrorEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB63_10LocalShard5build0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7k_8for_each4callIB2G_B2F_INtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EENCINvMsk_B12_INtB12_3VecB8n_E14extend_trustedBN_E0E0ECsgGgPqgSfnMH_7storage:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs607s0NAIaWN_7segment7segment7SegmentNtNtNtNtB2y_19segment_constructor24segment_constructor_base7segment15NewSegmentTokenENtNtNtB2y_6common15operation_error14OperationErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4folduNCINvNtNtB5u_8adapters3map8map_foldBX_IB1S_B1R_INtNtBa_5boxed3BoxDNtNtB1W_3any3AnyNtNtB1W_6marker4SendEL_EEuNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB81_10LocalShard5build0s1_0NCINvNvB5o_8for_each4callB6M_NCINvMsk_B8_INtB8_3VecB6M_E14extend_trustedINtB6f_3MapBI_B7U_EE0E0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNCNvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB1Q_14ChannelService20await_commit_on_peer0ENvYB1L_NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtB3E_6stream15futures_ordered14FuturesOrderedINtNtB3A_11into_future10IntoFutureB1L_EENCINvXs8_B5x_B5u_INtNtB4V_7collect12FromIteratorB6j_E9from_iterBN_E0ECsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNCNvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB12_14ChannelService20await_commit_on_peer0ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3K_6future10try_future11into_future10IntoFutureBX_EENCINvNtNtB2J_8adapters3map8map_foldBX_B4Q_B3D_NvYBX_NtB4V_12TryFutureExt11into_futureNCINvXs8_B3G_B3D_INtNtB2H_7collect12FromIteratorB4Q_E9from_iterINtB5V_3MapBI_B6A_EE0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB2O_10LocalShard20estimate_cardinality00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNCINvXs_NtCs9XvERIT2X68_9itertools20process_results_implINtB6i_14ProcessResultsBN_NtNtNtB58_6common15operation_error14OperationErrorEB4l_4foldB52_NCNvYB74_NtB54_15EstimationMerge17merge_independent0E0INtNtBc_6result6ResultB52_B52_EECsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, ptr noalias nofree noundef nonnull %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNCINvNtNtB1X_8adapters3map12map_try_foldBX_INtNtB1Z_6result6ResultB2V_NtNtNtB31_6common15operation_error14OperationErrorEB2V_IB4L_B2V_B2V_ENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB6r_10LocalShard20estimate_cardinality00s_0NCINvXs_NtCs9XvERIT2X68_9itertools20process_results_implINtB85_14ProcessResultsINtB48_3MapBI_B6i_EB5b_EB1R_4foldB2V_NCNvYB8R_NtB2X_15EstimationMerge17merge_independent0E0E0B64_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2Z_15ShardReplicaSet19delete_local_points0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4z_8for_each4callNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCINvMsk_B12_INtB12_3VecB5C_E14extend_trustedBN_E0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldBX_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4C_15ShardReplicaSet19delete_local_points0s_0NCINvNvB24_8for_each4callB3H_NCINvMsk_B8_INtB8_3VecB3H_E14extend_trustedINtB3a_3MapBI_B4v_EE0E0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB31_17ForwardProxyShard24read_batch_with_hashring0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENCINvNtB8_6filter15filter_try_foldB68_B5x_INtNtBc_6result6ResultB5x_zENCB2U_s0_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB68_E0E0B7C_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %i.e = call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENCINvNtNtB2a_8adapters3map12map_try_foldBX_B3I_B38_INtNtB2c_6result6ResultB38_zENCNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB5X_17ForwardProxyShard24read_batch_with_hashring0s_0NCINvNtB4D_6filter15filter_try_foldB3I_B38_B5l_NCB5Q_s0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3I_E0E0E0B5l_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB31_17ForwardProxyShard28read_batch_with_hashring_raw0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENCINvNtB8_6filter15filter_try_foldB6c_B5B_INtNtBc_6result6ResultB5B_zENCB2U_s0_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB6c_E0E0B7G_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %i.e = call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENCINvNtNtB2a_8adapters3map12map_try_foldBX_B3I_B38_INtNtB2c_6result6ResultB38_zENCNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB5X_17ForwardProxyShard28read_batch_with_hashring_raw0s_0NCINvNtB4D_6filter15filter_try_foldB3I_B38_B5l_NCB5Q_s0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3I_E0E0E0B5l_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENvYNtNtNtB1R_10operations9point_ops20PointStructPersistedINtNtBc_7convert7TryFromB1L_E8try_fromENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2V_ENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB14_6string6StringEEB4q_8try_foldB57_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2V_E0IB6k_B57_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB8k_B57_EECsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(24) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtB13_10operations9point_ops20PointStructPersistedENCINvNtNtB2a_8adapters3map12map_try_foldBX_INtNtB2c_6result6ResultB3I_NtNtBa_6string6StringEB38_INtNtNtB2c_3ops12control_flow11ControlFlowIB5j_B38_zEB38_ENvYB3I_INtNtB2c_7convert7TryFromBX_E8try_fromNCINvXB4I_INtB4I_12GenericShuntINtB4G_3MapBI_B75_EIB5j_zB5J_EEB24_8try_foldB38_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3I_E0B6P_E0E0B69_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB2K_11DynamicPoolB1L_E3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callTyINtNtB14_4sync3ArcINtB2K_13ItemWithStatsB1L_EEENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5U_7HashMapyB4Z_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3Y_7collect6ExtendB4X_E6extendBN_E0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7, !noundef !6
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_TyINtNtBa_4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsBX_EEEuNCNvMs1_B3N_INtB3N_11DynamicPoolBX_E3new0NCINvNvB1O_8for_each4callB3r_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB66_7HashMapyB3t_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1S_7collect6ExtendB3r_E6extendINtB2U_3MapBI_B4O_EE0E0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15AliasOperationsENCNvXs6_NtNtCsgGgPqgSfnMH_7storage15content_manager11conversionsNtNtB2N_19collection_meta_ops24CollectionMetaOperationsINtNtBc_7convert7TryFromNtB1N_13ChangeAliasesE8try_from0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB3H_15AliasOperationsENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB5t_8try_foldB6a_NCINvNtB12_16in_place_collect24write_in_place_with_dropB6L_E0IB7G_B6a_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB9W_B6a_EEB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15AliasOperationsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops15AliasOperationsENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultB3t_NtNtCsgOCJwUSa4vG_5tonic6status6StatusEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB5x_B2T_zEB2T_ENCNvXs6_NtB3x_11conversionsNtB3v_24CollectionMetaOperationsINtNtB1X_7convert7TryFromNtBZ_13ChangeAliasesE8try_from0NCINvXB4W_INtB4W_12GenericShuntINtB4U_3MapBI_B7A_EIB5x_zB5X_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0B7k_E0E0B6E_EB3z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB14_6string6StringB1M_EENCINvNtNtCsPYQCUnoTxQ_10collection10operations10validation12label_errorsReE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultB4a_zEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBY_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBY_ENCINvNtNtB1u_8adapters3map12map_try_foldBX_BY_B2s_INtNtB1w_6result6ResultB2s_zENCINvNtNtCsPYQCUnoTxQ_10collection10operations10validation12label_errorsReE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBY_E0E0B3U_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmINtB12_3VecyEEENCNvXs2_NtNtCsgGgPqgSfnMH_7storage15content_manager18shard_distributionNtNtNtCsPYQCUnoTxQ_10collection6shards29collection_shard_distribution27CollectionShardDistributionINtNtBc_7convert4FromNtB2a_25ShardDistributionProposalE4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5L_8for_each4callTmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7X_7HashMapmB6Q_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB5P_7collect6ExtendB6O_E6extendBN_E0E0EB2e_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtB8_3VecyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1j_8adapters3map8map_foldBX_TmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEuNCNvXs2_NtNtCsgGgPqgSfnMH_7storage15content_manager18shard_distributionNtNtNtCsPYQCUnoTxQ_10collection6shards29collection_shard_distribution27CollectionShardDistributionINtNtB1l_7convert4FromNtB3Y_25ShardDistributionProposalE4from0NCINvNvB1d_8for_each4callB2Q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8c_7HashMapmB2S_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1h_7collect6ExtendB2Q_E6extendINtB2j_3MapBI_B3Q_EE0E0E0EB42_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB1W_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB3y_8iterator8Iterator4folduNCINvNvB4e_8for_each4callTyuENCINvXs1i_NtB1Y_3mapINtB5n_7HashMapyuB2G_EIB3u_B59_E6extendBN_E0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIteryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2O_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB13_7collect6ExtendyE6extendBI_E0NCINvNvBZ_8for_each4callB2A_NCINvXs1i_NtB2Q_3mapINtB5z_7HashMapyuB3y_EIB4m_B2A_E6extendINtB25_3MapBI_B2F_EE0E0E0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENCNvMs1_B2q_INtB2q_11DynamicPoolB3k_E6chooses_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4Z_4find5checkTRyjEQNCB4f_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB63_EECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !3235
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !noalias !3235
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3p_8adapters3map12map_try_foldTRyRBV_ETB53_jEuINtNtNtB3r_3ops12control_flow11ControlFlowB5a_ENCNvMs1_B1w_INtB1w_11DynamicPoolB2q_E6chooses_0NCINvNvB3j_4find5checkB5a_QNCB65_s0_0E0E0B5i_ECsgGgPqgSfnMH_7storage.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3236)
  call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !3236, !noalias !3235, !nonnull !6, !align !7, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !3240, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load atomic i64, ptr %i.k monotonic, align 8, !noalias !3241 ; 3 uses
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !3238, !noalias !3242, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !3241, !noundef !6
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !noalias !3241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3243
  store ptr %i.g, ptr %i.a, align 8, !noalias !3244
  store i64 %i.l, ptr %i.e, align 8, !noalias !3244
  %i.p = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtBW_11DynamicPoolNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelE6chooses0_0INtB7_5FnMutTRTRyjEEE8call_mutCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !3237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3243
  br i1 %i.p, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3p_8adapters3map12map_try_foldTRyRBV_ETB53_jEuINtNtNtB3r_3ops12control_flow11ControlFlowB5a_ENCNvMs1_B1w_INtB1w_11DynamicPoolB2q_E6chooses_0NCINvNvB3j_4find5checkB5a_QNCB65_s0_0E0E0B5i_ECsgGgPqgSfnMH_7storage.exit, label %bb.b

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3p_8adapters3map12map_try_foldTRyRBV_ETB53_jEuINtNtNtB3r_3ops12control_flow11ControlFlowB5a_ENCNvMs1_B1w_INtB1w_11DynamicPoolB2q_E6chooses_0NCINvNvB3j_4find5checkB5a_QNCB65_s0_0E0E0B5i_ECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.b, %bb.c
  %.lcssa = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  %.sroa.3.0.i = phi i64 [ undef, %bb.b ], [ %i.l, %bb.c ]
  %i.q = insertvalue { ptr, i64 } poison, ptr %.lcssa, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtB10_7HashMapyB1P_EyB1P_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4d_8for_each4callTyB1P_ENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5x_7HashMapyB1P_NtNtNtB16_4hash6random11RandomStateEINtNtB4h_7collect6ExtendB5g_E6extendBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters3map8map_foldTRyRBM_ETyBM_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBM_EyBM_E0NCINvNvB1s_8for_each4callB3a_NCINvXs1i_B6_INtB6_7HashMapyBM_NtNtNtB4F_4hash6random11RandomStateEINtNtB1w_7collect6ExtendB3a_E6extendINtB2y_3MapINtB4z_4IteryBM_EB3h_EE0E0E0EBQ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCs577yCKf7gy3_4http3uri3UriENCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtB16_2fs4FileEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5A_8for_each4callTyNtNtB4o_6string6StringENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7c_7HashMapyB6F_NtNtNtB16_4hash6random11RandomStateEINtNtB5E_7collect6ExtendB6D_E6extendBN_E0E0EB2w_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(64) %0, i64 64, i1 false), !noalias !3265
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3266
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.d unwind label %bb.c, !noalias !3267

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i, %.noexc.i.i, %_RNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEEE0B6_.exit.i.i.i, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %.body.i.i.i.i, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit.split-lp2, %.body.i.i.i.i ], [ %i.s, %bb.k ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.n, !noalias !3267

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 8, !range !24, !noalias !3266, !noundef !6
  %.not.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i, label %_RINvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_8IntoIteryNtNtCs577yCKf7gy3_4http3uri3UriENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldTyB15_ETyNtNtCsexYYUdYSQU6_5alloc6string6StringEuNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtB3o_2io8buffered9bufwriter9BufWriterQNtNtBc_2fs4FileEEE0NCINvNvB1B_8for_each4callB3i_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7u_7HashMapyB3k_NtNtNtBc_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB3i_E6extendINtB2H_3MapBP_B3Y_EE0E0E0EB45_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !3266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false), !noalias !3266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3269
  store i64 0, ptr %i.e, align 8, !noalias !3269
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3269
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3269
  store i64 1610612768, ptr %i.j, align 8, !noalias !3269
  store ptr %i.e, ptr %i.d, align 8, !noalias !3269
  store ptr @12, ptr %i.k, align 8, !noalias !3269
  %i.n = invoke noundef zeroext i1 @_RNvXsh_NtCs577yCKf7gy3_4http3uriNtB5_3UriNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3270

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.g
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #25
          to label %.body.i.i.i.i unwind label %bb.h, !noalias !3270

bb.f:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.g, label %_RNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEEE0B6_.exit.i.i.i, !prof !34

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #29
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3270

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3270
  unreachable

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #25
          to label %.body.i.i unwind label %bb.i, !noalias !3271

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3271
  unreachable

_RNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEEE0B6_.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3269
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f)
          to label %.noexc.i.i unwind label %bb.c, !noalias !3267

.noexc.i.i:                                       ; preds = %_RNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEEE0B6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3272
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.sroa.05.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc2.i.i unwind label %bb.c, !noalias !3267

.noexc2.i.i:                                      ; preds = %.noexc.i.i
  %i.q = load i64, ptr %i.b, align 8, !range !10, !alias.scope !3274, !noalias !3272, !noundef !6
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.noexc2.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i unwind label %bb.k, !noalias !3275

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i unwind label %bb.l, !noalias !3275

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3275
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.c, !noalias !3267

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i, %.noexc2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3266
  br label %bb.b

bb.n:                                             ; preds = %.body.i.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3267
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_8IntoIteryNtNtCs577yCKf7gy3_4http3uri3UriENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldTyB15_ETyNtNtCsexYYUdYSQU6_5alloc6string6StringEuNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtB3o_2io8buffered9bufwriter9BufWriterQNtNtBc_2fs4FileEEE0NCINvNvB1B_8for_each4callB3i_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7u_7HashMapyB3k_NtNtNtBc_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB3i_E6extendINtB2H_3MapBP_B3Y_EE0E0E0EB45_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3266
  call void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h), !noalias !3267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3264
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCs577yCKf7gy3_4http3uri3UriENCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4S_8for_each4callTyNtNtB4k_6string6StringENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6u_7HashMapyB5X_NtNtNtB16_4hash6random11RandomStateEINtNtB4W_7collect6ExtendB5V_E6extendBN_E0E0EB2w_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(64) %0, i64 64, i1 false), !noalias !3296
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3297
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.d unwind label %bb.c, !noalias !3298

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i, %.noexc.i.i, %_RNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0B6_.exit.i.i.i, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %.body.i.i.i.i, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit.split-lp2, %.body.i.i.i.i ], [ %i.s, %bb.k ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.n, !noalias !3298

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 8, !range !24, !noalias !3297, !noundef !6
  %.not.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i, label %_RINvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_8IntoIteryNtNtCs577yCKf7gy3_4http3uri3UriENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldTyB15_ETyNtNtCsexYYUdYSQU6_5alloc6string6StringEuNCINvNtCsgGgPqgSfnMH_7storage24serialize_peer_addresses9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtB3o_3vec3VechEEE0NCINvNvB1B_8for_each4callB3i_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6N_7HashMapyB3k_NtNtNtBc_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB3i_E6extendINtB2H_3MapBP_B3Y_EE0E0E0EB45_.exit, label %bb.e

end_hunk_0
