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
  %i.a = alloca [56 x i8], align 8                ; 24 uses
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
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !range !23, !noalias !1441, !noundef !6
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !1441
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !noalias !1441 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i32, ptr %i.o, align 8, !range !24, !noalias !1441, !noundef !6 ; 2 uses
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %i.n, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !1441
  %.sroa.815.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 %i.p, ptr %.sroa.815.0..sroa_idx.i, align 8, !noalias !1441
  %.sroa.1016.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store i8 0, ptr %.sroa.1016.0..sroa_idx.i, align 8, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i), !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.368.sroa.3.i.i), !noalias !1441
  br label %bb.h

bb.d:                                             ; preds = %bb.ay, %.body.i
  %.pn4.i = phi { ptr, i32 } [ %i.cg, %bb.ay ], [ %eh.lpad-body.i, %.body.i ]
  store i8 2, ptr %i.i, align 8, !noalias !1441
  resume { ptr, i32 } %.pn4.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #25, !noalias !1441
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #25, !noalias !1441
  unreachable

bb.g:                                             ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !18, !noalias !1442
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i), !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.368.sroa.3.i.i), !noalias !1441
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !noalias !1442
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !range !24, !noalias !1442
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.thread58.i
  %i.r = phi i32 [ %i.p, %.thread58.i ], [ %.pre3, %._crit_edge ] ; 2 uses
  %i.s = phi i64 [ %i.n, %.thread58.i ], [ %.pre, %._crit_edge ]
  %i.t = phi ptr [ %.sroa.1016.0..sroa_idx.i, %.thread58.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 5 uses
  %i.u = phi ptr [ %i.l, %.thread58.i ], [ %i.q, %._crit_edge ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 201 ; 2 uses
  store i8 0, ptr %i.v, align 1, !noalias !1442
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 8, !noalias !1442 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.11.0.copyload.i.i = load ptr, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !1442 ; 4 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %i.w, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  br label %bb.u

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  br label %bb.aj

bb.k:                                             ; preds = %bb.h
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1442
  store i64 0, ptr %i.a, align 8, !noalias !1442
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.11.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1442
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 3, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1442
  br label %bb.ax

bb.l:                                             ; preds = %bb.h
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.14.0.copyload.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !1442 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1442
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.14.0.copyload.i.i, ptr %i.y, align 8, !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.e, align 8, !noalias !1442
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.11.0.copyload.i.i, ptr %i.z, align 8, !noalias !1442
  store i8 0, ptr %i.v, align 1, !noalias !1442
  %i.aa = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq i32 %i.r, -1
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.ar, %bb.ap, %bb.ah, %bb.l
  %.sink60.i = phi ptr [ %i.bt, %bb.ap ], [ %i.bv, %bb.ar ], [ %i.ba, %bb.ah ], [ %.sroa.13.0..sroa_idx.i.i, %bb.l ]
  %.sink59.i = phi i64 [ %i.bs, %bb.ap ], [ %.sroa.3.sroa.0.0.copyload.i.i, %bb.ar ], [ %i.az, %bb.ah ], [ %.sroa.14.0.copyload.i.i, %bb.l ]
  %.sink.i = phi i8 [ 2, %bb.ap ], [ %.sroa.3.sroa.2.0.copyload.i.i, %bb.ar ], [ 1, %bb.ah ], [ 0, %bb.l ]
  %i.ab = phi ptr [ %i.bl, %bb.ap ], [ %i.bl, %bb.ar ], [ %i.ah, %bb.ah ], [ %i.t, %bb.l ]
  %i.ac = phi ptr [ %i.bm, %bb.ap ], [ %i.bm, %bb.ar ], [ %i.ai, %bb.ah ], [ %i.u, %bb.l ]
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.528.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sink60.i, i64 32, i1 false), !noalias !1442
  store i64 1, ptr %i.a, align 8, !noalias !1442
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink59.i, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !1442
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %.sink.i, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !noalias !1442
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 201
  store i8 0, ptr %i.ad, align 1, !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  br label %bb.ax

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1442
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio4time7timeout7timeoutINtNtNtB6_4sync7oneshot8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Z_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.c, i64 noundef %i.s, i32 noundef %i.r, ptr noundef %.sroa.11.0.copyload.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.r unwind label %bb.q, !noalias !1442

bb.p:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %.sroa.11.0.copyload.i.i, ptr %i.ae, align 8, !noalias !1442
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1442
  br label %.body.i.i

bb.r:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.c, i64 120, i1 false), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1442
  br label %bb.aj

bb.s:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
          to label %.noexc.i unwind label %bb.av, !noalias !1441

.noexc.i:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
          to label %.noexc7.i unwind label %bb.av, !noalias !1441

.noexc7.i:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.p, %bb.i
  %i.ah = phi ptr [ %i.t, %bb.p ], [ %.phi.trans.insert.i, %bb.i ] ; 10 uses
  %i.ai = phi ptr [ %i.u, %bb.p ], [ %i.q, %bb.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1442
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 7 uses
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync7oneshotINtB5_8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1D_10operations5types15CollectionErrorEENtNtNtB10_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.v, !noalias !1443

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1442
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.aj) #20
          to label %.body.i.i unwind label %bb.ai, !noalias !1443

bb.w:                                             ; preds = %bb.u
  %i.al = load i64, ptr %i.d, align 8, !range !25, !noalias !1442, !noundef !6 ; 3 uses
  %i.am = icmp eq i64 %i.al, -3
  br i1 %i.am, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1442
  br label %bb.aw

bb.y:                                             ; preds = %bb.w
  %.sroa.368.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.368.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.368.0..sroa_idx.i.i, align 8, !noalias !1442
  %.sroa.368.sroa.2.0..sroa.368.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.368.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.368.sroa.2.0..sroa.368.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1442
  %.sroa.368.sroa.3.0..sroa.368.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.368.sroa.3.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.368.sroa.3.0..sroa.368.0..sroa_idx.sroa_idx.i.i, i64 31, i1 false), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1442
  invoke void @_RNvXs2_NtNtCsjZG7hsAZr3B_5tokio4sync7oneshotINtB5_8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1D_10operations5types15CollectionErrorEENtNtNtB10_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.ac unwind label %bb.z, !noalias !1443

bb.z:                                             ; preds = %bb.y
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.ao = load ptr, ptr %i.aj, align 8, !alias.scope !1445, !noalias !1442, !noundef !6 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.body.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !1446
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.ab, label %.body.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB28_10operations5types15CollectionErrorEEE9drop_slowB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #23
          to label %.body.i.i unwind label %bb.af, !noalias !1443

bb.ac:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !1448, !noalias !1442, !noundef !6 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !1449
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB28_10operations5types15CollectionErrorEEE9drop_slowB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.as, !noalias !1443

bb.af:                                            ; preds = %bb.ab
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !1443
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  switch i64 %i.al, label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i [
    i64 -2, label %bb.ag
    i64 -1, label %bb.ah
  ]

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXsf_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ax)
          to label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.as, !noalias !1443

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.az = load i64, ptr %i.ay, align 8, !noalias !1442, !noundef !6
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 168
  br label %bb.n

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i: ; preds = %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i
  %.sroa.3.sroa.3.i.sink.i = phi ptr [ %.sroa.3.sroa.3.i.i, %bb.ao ], [ %.sroa.368.sroa.3.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sink62.i = phi i64 [ %i.bp, %bb.ao ], [ %i.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.3.sroa.0.0.copyload.i.sink.i = phi i64 [ %.sroa.3.sroa.0.0.copyload.i.i, %bb.ao ], [ %.sroa.368.sroa.0.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.3.sroa.2.0.copyload.i.sink.i = phi i8 [ %.sroa.3.sroa.2.0.copyload.i.i, %bb.ao ], [ %.sroa.368.sroa.2.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.ph.i = phi ptr [ %i.bl, %bb.ao ], [ %i.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.ph61.i = phi ptr [ %i.bm, %bb.ao ], [ %i.ai, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB1Q_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.799.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.sroa.3.i.sink.i, i64 31, i1 false), !noalias !1442
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink62.i, ptr %i.bb, align 8, !noalias !1442
  %.sroa.597.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.3.sroa.0.0.copyload.i.sink.i, ptr %.sroa.597.0..sroa_idx.i.i, align 8, !noalias !1442
  %.sroa.698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.sroa.3.sroa.2.0.copyload.i.sink.i, ptr %.sroa.698.0..sroa_idx.i.i, align 8, !noalias !1442
  br label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aq, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i, %bb.ag
  %i.bc = phi ptr [ %i.ah, %bb.ag ], [ %i.bl, %bb.aq ], [ %.ph.i, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i ]
  %i.bd = phi ptr [ %i.ai, %bb.ag ], [ %i.bm, %bb.aq ], [ %.ph61.i, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtBM_15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot5error9RecvErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.sink.split.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 201
  store i8 0, ptr %i.be, align 1, !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  br label %bb.ax

bb.ai:                                            ; preds = %bb.au, %bb.ak, %bb.v
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !1443
  unreachable

.body.i.i:                                        ; preds = %bb.as, %bb.ak, %bb.ab, %bb.aa, %bb.z, %bb.v, %bb.q
  %i.bg = phi ptr [ %i.ah, %bb.aa ], [ %i.ah, %bb.v ], [ %i.ah, %bb.z ], [ %i.t, %bb.q ], [ %i.ah, %bb.ab ], [ %i.bw, %bb.as ], [ %i.bl, %bb.ak ]
  %i.bh = phi ptr [ %i.ai, %bb.aa ], [ %i.ai, %bb.v ], [ %i.ai, %bb.z ], [ %i.u, %bb.q ], [ %i.ai, %bb.ab ], [ %i.bx, %bb.as ], [ %i.bm, %bb.ak ]
  %.pn44.pn.pn.i.i = phi { ptr, i32 } [ %i.an, %bb.aa ], [ %i.ak, %bb.v ], [ %i.an, %bb.z ], [ %i.af, %bb.q ], [ %i.an, %bb.ab ], [ %i.by, %bb.as ], [ %i.bo, %bb.ak ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 201 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !range !20, !noalias !1442, !noundef !6
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.au, label %bb.at

bb.aj:                                            ; preds = %bb.r, %bb.j
  %i.bl = phi ptr [ %i.t, %bb.r ], [ %.phi.trans.insert.i, %bb.j ] ; 8 uses
  %i.bm = phi ptr [ %i.u, %bb.r ], [ %i.q, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1442
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  invoke void @_RNvXs_NtNtCsjZG7hsAZr3B_5tokio4time7timeoutINtB4_7TimeoutINtNtNtB8_4sync7oneshot8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB27_10operations5types15CollectionErrorEEENtNtNtB1u_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.al unwind label %bb.ak, !noalias !1443

bb.ak:                                            ; preds = %bb.aj
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1442
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4time7timeout7TimeoutINtNtNtBI_4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection14update_workers22internal_update_result20InternalUpdateResultNtNtNtB2l_10operations5types15CollectionErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bn) #20
          to label %.body.i.i unwind label %bb.ai, !noalias !1443

bb.al:                                            ; preds = %bb.aj
  %i.bp = load i64, ptr %i.b, align 8, !range !1450, !noalias !1442, !noundef !6 ; 3 uses
  %i.bq = icmp eq i64 %i.bp, -4
  br i1 %i.bq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1442
  br label %bb.aw
end_hunk_0
