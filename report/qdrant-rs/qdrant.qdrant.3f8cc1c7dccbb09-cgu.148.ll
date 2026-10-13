Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.148?download=true
inline.NumInlined: 592
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtNtCsl8OoimOLbh_6qdrant5actix3api15local_shard_apiNtB2_10get_pointsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register:bb.a
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXNtNtNtCsl8OoimOLbh_6qdrant5actix3api15local_shard_apiNtB10_10get_pointsNtNtB7_7service18HttpServiceFactory8register10get_pointsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtB14_4auth9ActixAuthINtNtNtB7_5types4path4PathNtB10_15CollectionShardEINtNtB4D_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations5types20PointRequestInternalEINtNtB4D_5query5QueryNtNtB12_11read_params10ReadParamsENtNtB12_13routing_token17ActixRoutingTokenIB35_NtNtB16_8settings13ServiceConfigEEEB16_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api15local_shard_apiNtB5_12count_pointsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 58)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api15local_shard_apiNtB13_12count_pointsNtNtB7_7service18HttpServiceFactory8register12count_pointsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtB17_4auth9ActixAuthINtNtNtB7_5types4path4PathNtB13_15CollectionShardEINtNtB4K_4json4JsonINtB13_10WithFilterNtNtCs5QaNqjAn6vc_5shard5count20CountRequestInternalEEINtNtB4K_5query5QueryNtNtB15_11read_params10ReadParamsENtNtB15_13routing_token17ActixRoutingTokenIB3c_NtNtB19_8settings13ServiceConfigEEEB19_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherIBQ_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1f_10LocalShard20get_snapshot_creator00B16_EB12_ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call fastcc void @_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB8_10LocalShard20get_snapshot_creator00Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1v_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB3A_IB3A_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB1v_8read_opsB2G_11query_batch00E0s_0NCB1n_s0_0EIB13_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB3E_5boxed3BoxDNtNtNtB67_6future6future6Futurep6OutputINtNtB67_6result6ResultB3z_NtNtNtB1z_10operations5types15CollectionErrorENtNtB67_6marker4SendEL_EENCNCB1n_s2_00EEB6S_4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultINtNtB1G_3vec3VecIB3c_IB3c_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB1a_6marker4SendEL_EENCNCNCINvMNtNtNtB4u_6shards11replica_set22execute_read_operationNtB64_15ShardReplicaSet30execute_cluster_read_operationB3b_NCNCNvMNtB64_8read_opsB6U_11query_batch00E0s2_00EB2b_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1f_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB3k_IB3k_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB1f_8read_opsB2q_11query_batch00E0s_0NCB17_s0_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1v_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB3A_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB1v_8read_opsB2G_11core_search00E0s_0NCB1n_s0_0EIB13_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB3E_5boxed3BoxDNtNtNtB61_6future6future6Futurep6OutputINtNtB61_6result6ResultB3z_NtNtNtB1z_10operations5types15CollectionErrorENtNtB61_6marker4SendEL_EENCNCB1n_s2_00EEB6M_4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultINtNtB1G_3vec3VecIB3c_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB1a_6marker4SendEL_EENCNCNCINvMNtNtNtB4o_6shards11replica_set22execute_read_operationNtB5Y_15ShardReplicaSet30execute_cluster_read_operationB3b_NCNCNvMNtB5Y_8read_opsB6O_11core_search00E0s2_00EB2b_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1f_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB3k_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB1f_8read_opsB2q_11core_search00E0s_0NCB17_s0_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1v_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1v_8read_opsB2G_8retrieve00E0s_0NCB1n_s0_0EIB13_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB3E_5boxed3BoxDNtNtNtB6e_6future6future6Futurep6OutputINtNtB6e_6result6ResultB3z_NtNtNtB1z_10operations5types15CollectionErrorENtNtB6e_6marker4SendEL_EENCNCB1n_s2_00EEB6Z_4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultINtNtB1G_3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB1a_6marker4SendEL_EENCNCNCINvMNtNtNtB4F_6shards11replica_set22execute_read_operationNtB6f_15ShardReplicaSet30execute_cluster_read_operationB3b_NCNCNvMNtB6f_8read_opsB75_8retrieve00E0s2_00EB2b_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1f_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1f_8read_opsB2q_8retrieve00E0s_0NCB17_s0_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1v_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1v_8read_opsB2G_9scroll_by00E0s_0NCB1n_s0_0EIB13_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB3E_5boxed3BoxDNtNtNtB6f_6future6future6Futurep6OutputINtNtB6f_6result6ResultB3z_NtNtNtB1z_10operations5types15CollectionErrorENtNtB6f_6marker4SendEL_EENCNCB1n_s2_00EEB70_4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultINtNtB1G_3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB1a_6marker4SendEL_EENCNCNCINvMNtNtNtB4F_6shards11replica_set22execute_read_operationNtB6f_15ShardReplicaSet30execute_cluster_read_operationB3b_NCNCNvMNtB6f_8read_opsB75_9scroll_by00E0s2_00EB2b_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1f_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1f_8read_opsB2q_9scroll_by00E0s_0NCB17_s0_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1v_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB1z_10operations5types11CountResultNCNCNvMNtB1v_8read_opsB2G_5count00E0s_0NCB1n_s0_0EIB13_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5c_6future6future6Futurep6OutputINtNtB5c_6result6ResultB3z_NtB3B_15CollectionErrorENtNtB5c_6marker4SendEL_EENCNCB1n_s2_00EEB6d_4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types11CountResultNtB3d_15CollectionErrorENtNtB1a_6marker4SendEL_EENCNCNCINvMNtNtNtB3h_6shards11replica_set22execute_read_operationNtB5a_15ShardReplicaSet30execute_cluster_read_operationB3b_NCNCNvMNtB5a_8read_opsB60_5count00E0s2_00EB2b_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1f_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB1j_10operations5types11CountResultNCNCNvMNtB1f_8read_opsB2q_5count00E0s_0NCB17_s0_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1v_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB1z_10operations5types14CollectionInfoNCNCNvMNtB1v_8read_opsB2G_4info00E0s_0NCB1n_s0_0EIB13_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5e_6future6future6Futurep6OutputINtNtB5e_6result6ResultB3z_NtB3B_15CollectionErrorENtNtB5e_6marker4SendEL_EENCNCB1n_s2_00EEB6f_4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([944 x i8]) align 8 captures(none) dereferenceable(944) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types14CollectionInfoNtB3d_15CollectionErrorENtNtB1a_6marker4SendEL_EENCNCNCINvMNtNtNtB3h_6shards11replica_set22execute_read_operationNtB5d_15ShardReplicaSet30execute_cluster_read_operationB3b_NCNCNvMNtB5d_8read_opsB63_4info00E0s2_00EB2b_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([944 x i8]) align 8 captures(none) dereferenceable(944) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1f_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB1j_10operations5types14CollectionInfoNCNCNvMNtB1f_8read_opsB2q_4info00E0s_0NCB17_s0_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([944 x i8]) align 8 captures(none) dereferenceable(944) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1v_15ShardReplicaSet30execute_cluster_read_operationNtNtNtCs607s0NAIaWN_7segment10data_types6facets13FacetResponseNCNCNvMNtB1v_8read_opsB2G_5facet00E0s_0NCB1n_s0_0EIB13_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5x_6future6future6Futurep6OutputINtNtB5x_6result6ResultB3z_NtNtNtB1z_10operations5types15CollectionErrorENtNtB5x_6marker4SendEL_EENCNCB1n_s2_00EEB6y_4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultNtNtNtCs607s0NAIaWN_7segment10data_types6facets13FacetResponseNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB1a_6marker4SendEL_EENCNCNCINvMNtNtNtB4h_6shards11replica_set22execute_read_operationNtB5R_15ShardReplicaSet30execute_cluster_read_operationB3b_NCNCNvMNtB5R_8read_opsB6H_5facet00E0s2_00EB2b_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6future6future3mapINtB5_3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1f_15ShardReplicaSet30execute_cluster_read_operationNtNtNtCs607s0NAIaWN_7segment10data_types6facets13FacetResponseNCNCNvMNtB1f_8read_opsB2q_5facet00E0s_0NCB17_s0_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherINtNtCskKLDkoKarTP_4core3pin3PinQNCNvMsf_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtB1H_19ConnectingTcpRemote7connect0EB12_ENtNtNtB17_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQNCNvMsf_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtB14_19ConnectingTcpRemote7connect0ENtB4_6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6future6eitherINtB5_6EitherNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1b_15ShardReplicaSet11update_impl0s1_0NCNCB14_s0_00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 22 uses
  %.sroa.3.sroa.3.i.i = alloca [31 x i8], align 1 ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [120 x i8], align 8               ; 5 uses
  %.sroa.368.sroa.3.i.i = alloca [31 x i8], align 1 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = load i64, ptr %1, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @_RNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBa_15ShardReplicaSet11update_impl0s0_00Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #26
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !range !23, !noalias !1442, !noundef !6
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %.thread58.i
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.g, %bb.c
  unreachable

.thread58.i:                                      ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !1442
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !noalias !1442 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i32, ptr %i.o, align 8, !range !24, !noalias !1442, !noundef !6 ; 2 uses
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %i.n, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !1442
  %.sroa.815.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 %i.p, ptr %.sroa.815.0..sroa_idx.i, align 8, !noalias !1442
  %.sroa.1016.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store i8 0, ptr %.sroa.1016.0..sroa_idx.i, align 8, !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.368.sroa.3.i.i), !noalias !1442
  br label %bb.h

bb.d:                                             ; preds = %bb.bb, %.body.i
  %.pn4.i = phi { ptr, i32 } [ %i.cg, %bb.bb ], [ %.pn2.i, %.body.i ]
  store i8 2, ptr %i.i, align 8, !noalias !1442
  resume { ptr, i32 } %.pn4.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #25, !noalias !1441
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #25, !noalias !1441
  unreachable

.body.i:                                          ; preds = %bb.ay, %bb.aw
  %i.q = phi ptr [ %i.bk, %bb.aw ], [ %i.r, %bb.ay ]
  %.pn2.i = phi { ptr, i32 } [ %.pn44.pn.pn.i.i, %bb.aw ], [ %i.cb, %bb.ay ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9shard_ops19await_update_result0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.q) #20
          to label %bb.d unwind label %bb.bc, !noalias !1441

bb.g:                                             ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !18, !noalias !1443
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.368.sroa.3.i.i), !noalias !1442
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !noalias !1443
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !range !24, !noalias !1443
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.thread58.i
  %i.s = phi i32 [ %i.p, %.thread58.i ], [ %.pre3, %._crit_edge ] ; 2 uses
  %i.t = phi i64 [ %i.n, %.thread58.i ], [ %.pre, %._crit_edge ]
  %i.u = phi ptr [ %.sroa.1016.0..sroa_idx.i, %.thread58.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 5 uses
  %i.v = phi ptr [ %i.l, %.thread58.i ], [ %i.r, %._crit_edge ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 201 ; 2 uses
  store i8 0, ptr %i.w, align 1, !noalias !1443
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 8, !noalias !1443 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.11.0.copyload.i.i = load ptr, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !1443 ; 4 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %i.x, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1443
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1443
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1443
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.11.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1443
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 3, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1443
  br label %bb.ba

bb.l:                                             ; preds = %bb.h
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.14.0.copyload.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !1443 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1443
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.14.0.copyload.i.i, ptr %i.z, align 8, !noalias !1443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1443
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.e, align 8, !noalias !1443
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.11.0.copyload.i.i, ptr %i.aa, align 8, !noalias !1443
  store i8 0, ptr %i.w, align 1, !noalias !1443
  %i.ab = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq i32 %i.s, -1
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.n:                                             ; preds = %bb.au, %bb.as, %bb.ai, %bb.l
  %.sink60.i = phi ptr [ %i.bx, %bb.as ], [ %i.bz, %bb.au ], [ %i.bc, %bb.ai ], [ %.sroa.13.0..sroa_idx.i.i, %bb.l ]
  %.sink59.i = phi i64 [ %i.bw, %bb.as ], [ %.sroa.3.sroa.0.0.copyload.i.i, %bb.au ], [ %i.bb, %bb.ai ], [ %.sroa.14.0.copyload.i.i, %bb.l ]
  %.sink.i = phi i8 [ 2, %bb.as ], [ %.sroa.3.sroa.2.0.copyload.i.i, %bb.au ], [ 1, %bb.ai ], [ 0, %bb.l ]
  %i.ac = phi ptr [ %i.bo, %bb.as ], [ %i.bo, %bb.au ], [ %i.aj, %bb.ai ], [ %i.u, %bb.l ]
  %i.ad = phi ptr [ %i.bp, %bb.as ], [ %i.bp, %bb.au ], [ %i.ak, %bb.ai ], [ %i.v, %bb.l ]
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.528.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sink60.i, i64 32, i1 false), !noalias !1443
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink59.i, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !1443
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %.sink.i, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !noalias !1443
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 201
  store i8 0, ptr %i.ae, align 1, !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1443
  br label %bb.ba

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1443
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio4time7timeout7timeoutINtNtNtB6_4sync7oneshot8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Z_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.c, i64 noundef %i.t, i32 noundef %i.s, ptr noundef %.sroa.11.0.copyload.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.s unwind label %bb.r, !noalias !1444

bb.p:                                             ; preds = %bb.af
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.q:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %.sroa.11.0.copyload.i.i, ptr %i.ag, align 8, !noalias !1443
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1443
  br label %.body.i.i

bb.s:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.c, i64 120, i1 false), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1443
  br label %bb.al

bb.t:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
          to label %.noexc.i unwind label %bb.ay, !noalias !1441

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
          to label %.noexc7.i unwind label %bb.ay, !noalias !1441

.noexc7.i:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.q, %bb.i
  %i.aj = phi ptr [ %i.u, %bb.q ], [ %.phi.trans.insert.i, %bb.i ] ; 10 uses
  %i.ak = phi ptr [ %i.v, %bb.q ], [ %i.r, %bb.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1443
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 7 uses
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync7oneshotINtB5_8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1D_10operations5types15CollectionErrorEENtNtNtB10_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w, !noalias !1445

bb.w:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1443
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.al) #20
          to label %.body.i.i unwind label %bb.ak, !noalias !1445

bb.x:                                             ; preds = %bb.v
  %i.an = load i64, ptr %i.d, align 8, !range !25, !noalias !1443, !noundef !6 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -3
  br i1 %i.ao, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1443
  br label %bb.az

bb.z:                                             ; preds = %bb.x
  %.sroa.368.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.368.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.368.0..sroa_idx.i.i, align 8, !noalias !1443
  %.sroa.368.sroa.2.0..sroa.368.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.368.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.368.sroa.2.0..sroa.368.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1443
  %.sroa.368.sroa.3.0..sroa.368.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.368.sroa.3.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.368.sroa.3.0..sroa.368.0..sroa_idx.sroa_idx.i.i, i64 31, i1 false), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1443
  invoke void @_RNvXs2_NtNtCsjZG7hsAZr3B_5tokio4sync7oneshotINtB5_8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1D_10operations5types15CollectionErrorEENtNtNtB10_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.ad unwind label %bb.aa, !noalias !1445

bb.aa:                                            ; preds = %bb.z
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  %i.aq = load ptr, ptr %i.al, align 8, !alias.scope !1447, !noalias !1443, !noundef !6 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.body.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.as = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !1448
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.ac, label %.body.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB28_10operations5types15CollectionErrorEEE9drop_slowB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #23
          to label %.body.i.i unwind label %bb.ag, !noalias !1445

bb.ad:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.au = load ptr, ptr %i.al, align 8, !alias.scope !1450, !noalias !1443, !noundef !6 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aw = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !1451
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB28_10operations5types15CollectionErrorEEE9drop_slowB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.p, !noalias !1445

bb.ag:                                            ; preds = %bb.ac
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !1445
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  switch i64 %i.an, label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i [
    i64 -2, label %bb.ah
    i64 -1, label %bb.ai
  ]

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXsf_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.az)
          to label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.aj, !noalias !1445

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1443, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 168
  br label %bb.n

bb.aj:                                            ; preds = %bb.ah
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i: ; preds = %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i
  %.sroa.3.sroa.3.i.sink.i = phi ptr [ %.sroa.3.sroa.3.i.i, %bb.ar ], [ %.sroa.368.sroa.3.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sink62.i = phi i64 [ %i.bs, %bb.ar ], [ %i.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.3.sroa.0.0.copyload.i.sink.i = phi i64 [ %.sroa.3.sroa.0.0.copyload.i.i, %bb.ar ], [ %.sroa.368.sroa.0.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.3.sroa.2.0.copyload.i.sink.i = phi i8 [ %.sroa.3.sroa.2.0.copyload.i.i, %bb.ar ], [ %.sroa.368.sroa.2.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.ph.i = phi ptr [ %i.bo, %bb.ar ], [ %i.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.ph61.i = phi ptr [ %i.bp, %bb.ar ], [ %i.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.799.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.sroa.3.i.sink.i, i64 31, i1 false), !noalias !1443
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink62.i, ptr %i.be, align 8, !noalias !1443
  %.sroa.597.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.3.sroa.0.0.copyload.i.sink.i, ptr %.sroa.597.0..sroa_idx.i.i, align 8, !noalias !1443
  %.sroa.698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.sroa.3.sroa.2.0.copyload.i.sink.i, ptr %.sroa.698.0..sroa_idx.i.i, align 8, !noalias !1443
  br label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.at, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i, %bb.ah
  %i.bf = phi ptr [ %i.aj, %bb.ah ], [ %i.bo, %bb.at ], [ %.ph.i, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i ]
  %i.bg = phi ptr [ %i.ak, %bb.ah ], [ %i.bp, %bb.at ], [ %.ph61.i, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 201
  store i8 0, ptr %i.bh, align 1, !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1443
  br label %bb.ba

bb.ak:                                            ; preds = %bb.ax, %bb.am, %bb.w
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !1445
  unreachable

.body.i.i:                                        ; preds = %bb.av, %bb.aq, %bb.am, %bb.aj, %bb.ac, %bb.ab, %bb.aa, %bb.w, %bb.r, %bb.p
  %i.bj = phi ptr [ %i.aj, %bb.ab ], [ %i.aj, %bb.aj ], [ %i.aj, %bb.aa ], [ %i.aj, %bb.w ], [ %i.aj, %bb.p ], [ %i.aj, %bb.ac ], [ %i.bo, %bb.av ], [ %i.bo, %bb.aq ], [ %i.bo, %bb.am ], [ %i.u, %bb.r ]
  %i.bk = phi ptr [ %i.ak, %bb.ab ], [ %i.ak, %bb.aj ], [ %i.ak, %bb.aa ], [ %i.ak, %bb.w ], [ %i.ak, %bb.p ], [ %i.ak, %bb.ac ], [ %i.bp, %bb.av ], [ %i.bp, %bb.aq ], [ %i.bp, %bb.am ], [ %i.v, %bb.r ]
  %.pn44.pn.pn.i.i = phi { ptr, i32 } [ %i.ap, %bb.ab ], [ %i.bd, %bb.aj ], [ %i.ap, %bb.aa ], [ %i.am, %bb.w ], [ %i.af, %bb.p ], [ %i.ap, %bb.ac ], [ %i.ca, %bb.av ], [ %i.bu, %bb.aq ], [ %i.br, %bb.am ], [ %i.ah, %bb.r ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 201 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !range !20, !noalias !1443, !noundef !6
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.ax, label %bb.aw

bb.al:                                            ; preds = %bb.s, %bb.j
  %i.bo = phi ptr [ %i.u, %bb.s ], [ %.phi.trans.insert.i, %bb.j ] ; 8 uses
  %i.bp = phi ptr [ %i.v, %bb.s ], [ %i.r, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1443
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  invoke void @_RNvXs_NtNtCsjZG7hsAZr3B_5tokio4time7timeoutINtB4_7TimeoutINtNtNtB8_4sync7oneshot8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB27_10operations5types15CollectionErrorEEENtNtNtB1u_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.an unwind label %bb.am, !noalias !1445

bb.am:                                            ; preds = %bb.al
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1443
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4time7timeout7TimeoutINtNtNtBI_4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB2l_10operations5types15CollectionErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bq) #20
end_hunk_0
