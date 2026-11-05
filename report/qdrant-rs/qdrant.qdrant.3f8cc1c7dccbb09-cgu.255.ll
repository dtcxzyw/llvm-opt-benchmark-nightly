Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.255?download=true
inline.NumInlined: 642
inline.NumDeleted: 338
begin_hunk_0_@_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB5_7CollectINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB27_10Collection16update_all_local000EINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultINtNtB4a_6option6OptionNtNtNtB29_10operations5types12UpdateResultENtB56_15CollectionErrorEEENtNtNtB4a_6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB5_7CollectINtNtB9_17futures_unordered16FuturesUnorderedNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB25_10Collection18update_from_client00EINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB27_10operations5types12UpdateResultNtB4I_15CollectionErrorEEENtNtNtB49_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs5_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB1y_10Collection18update_from_client00ENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !16, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !540
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !541, !noalias !542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, i64 48, i1 false)
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultNtB1x_15CollectionErrorEEINtB4_10SpecExtendBT_INtNtBY_6option8IntoIterBT_EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !540
  call void @_RNvXs5_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB1y_10Collection18update_from_client00ENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !16, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %i.g, -2
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB5_7CollectINtNtB9_17futures_unordered16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB21_15ShardReplicaSet22truncate_unapplied_wal0EINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB25_10operations5types15CollectionErrorEEENtNtNtB4d_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs5_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1u_15ShardReplicaSet22truncate_unapplied_wal0ENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !14, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, -3
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %i.f, -2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !550
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !551, !noalias !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, i64 40, i1 false)
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEINtB4_10SpecExtendBT_INtNtBY_6option8IntoIterBT_EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !550
  call void @_RNvXs5_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1u_15ShardReplicaSet22truncate_unapplied_wal0ENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !14, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %i.g, -3
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_apiNtB5_19search_point_groupsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #1 {
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
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 51)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_apiNtB13_19search_point_groupsNtNtB7_7service18HttpServiceFactory8register19search_point_groupsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB15_14CollectionPathEINtNtB4w_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations5types19SearchGroupsRequestEINtNtB4w_5query5QueryNtNtB15_11read_params10ReadParamsEIB3l_NtNtB19_8settings13ServiceConfigENtNtB17_4auth9ActixAuthNtNtB15_13routing_token17ActixRoutingTokenEEB19_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_apiNtB5_26search_points_matrix_pairsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #1 {
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
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 57)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs1_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_apiNtB13_26search_points_matrix_pairsNtNtB7_7service18HttpServiceFactory8register26search_points_matrix_pairsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB15_14CollectionPathEINtNtB4K_4json4JsonNtNtNtCshMzyYDJGtjv_3api4rest6schema19SearchMatrixRequestEINtNtB4K_5query5QueryNtNtB15_11read_params10ReadParamsEIB3z_NtNtB19_8settings13ServiceConfigENtNtB17_4auth9ActixAuthNtNtB15_13routing_token17ActixRoutingTokenEEB19_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_apiNtB5_28search_points_matrix_offsetsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #1 {
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
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 59)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs2_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_apiNtB13_28search_points_matrix_offsetsNtNtB7_7service18HttpServiceFactory8register28search_points_matrix_offsetsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB15_14CollectionPathEINtNtB4O_4json4JsonNtNtNtCshMzyYDJGtjv_3api4rest6schema19SearchMatrixRequestEINtNtB4O_5query5QueryNtNtB15_11read_params10ReadParamsEIB3D_NtNtB19_8settings13ServiceConfigENtNtB17_4auth9ActixAuthNtNtB15_13routing_token17ActixRoutingTokenEEB19_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1K_jEEBV_NCINvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service20merge_position_itemsB2x_INtB1O_3VecB2x_EB56_E0ENtNtNtB12_6traits8iterator8Iterator4nextB3X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(272) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %2 = alloca [120 x i8], align 8                 ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [56 x i8], align 8            ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [40 x i8], align 8            ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load i64, ptr %1, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 -1, ptr %1, align 8
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !587, !noundef !6
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !594, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !594, !nonnull !6, !noundef !6 ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %i.m, align 8, !alias.scope !594
  %.sroa.0.0.copyload7.i.i.i = load i64, ptr %i.n, align 8, !noalias !595 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload7.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.412.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx8.i.i.i, i64 40, i1 false), !noalias !592
  store i64 %.sroa.0.0.copyload7.i.i.i, ptr %i.b, align 8, !noalias !592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !597, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !597, !nonnull !6, !noundef !6 ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %bb.g, label %bb.f

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.d
  store i64 -1, ptr %i.g, align 8, !alias.scope !598
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.s, align 8, !alias.scope !597
  %i.w = load i64, ptr %i.t, align 8, !noalias !599, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !600
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.w, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !598
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %i.g, align 8, !alias.scope !598
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b), !noalias !592
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.f, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !592
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.c
  store i64 -1, ptr %i.g, align 8, !alias.scope !586
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.h, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !range !10, !noundef !6 ; 2 uses
  %.not12 = icmp eq i64 %i.y, -1
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx, i64 40, i1 false)
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.946.0.copyload = load i64, ptr %.sroa.946.0..sroa_idx, align 8
  store i64 -1, ptr %i.x, align 8
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !601, !noundef !6
  %.not.i19 = icmp eq ptr %i.aa, null
  br i1 %.not.i19, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !604
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !606, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !606, !nonnull !6, !noundef !6 ; 4 uses
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i20

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i20: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %i.ag, ptr %i.ad, align 8, !alias.scope !606
  %.sroa.0.0.copyload7.i.i.i21 = load i64, ptr %i.ae, align 8, !noalias !607 ; 3 uses
  %.not.i.i.i22 = icmp eq i64 %.sroa.0.0.copyload7.i.i.i21, -1
  br i1 %.not.i.i.i22, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26, label %bb.l

bb.l:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i20
  %.sroa.7.0..sroa_idx8.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.412.0..sroa_idx.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.412.0..sroa_idx.i.i.i24, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx8.i.i.i23, i64 40, i1 false), !noalias !604
  store i64 %.sroa.0.0.copyload7.i.i.i21, ptr %i.a, align 8, !noalias !604
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !609, !nonnull !6, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !609, !nonnull !6, !noundef !6 ; 3 uses
  %i.al = icmp eq ptr %i.ak, %i.ai
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.aj, align 8, !alias.scope !609
  %i.an = load i64, ptr %i.ak, align 8, !noalias !610, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx8.i.i.i23, i64 40, i1 false)
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26

bb.n:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a)
          to label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26 unwind label %bb.o

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26: ; preds = %bb.n, %bb.k, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i20, %bb.m
  %.sroa.946.1 = phi i64 [ %i.an, %bb.m ], [ undef, %bb.k ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i20 ], [ undef, %bb.n ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload7.i.i.i21, %bb.m ], [ -1, %bb.k ], [ -1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i20 ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !604
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load i64, ptr %i.g, align 8, !range !10, !alias.scope !611, !noundef !6
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.q

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26, %bb.i
  %.sroa.946.0 = phi i64 [ %.sroa.946.0.copyload, %bb.i ], [ %.sroa.946.1, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26 ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.y, %bb.i ], [ %.sroa.0.1, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIBW_jEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i26 ] ; 3 uses
  %.sroa.05.0.copyload = load i64, ptr %i.g, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not13 = icmp eq i64 %.sroa.05.0.copyload, -1
  %.not14 = icmp eq i64 %.sroa.0.0, -1            ; 2 uses
  br i1 %.not13, label %bb.s, label %bb.r

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread: ; preds = %bb.j
  %.sroa.05.0.copyload61 = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx62, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not1363 = icmp eq i64 %.sroa.05.0.copyload61, -1
  br i1 %.not1363, label %.thread74, label %.thread

bb.q:                                             ; preds = %bb.ab, %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ab, %bb.o, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %i.ao, %bb.p ], [ %i.ay, %bb.ab ]
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28
  br i1 %.not14, label %.thread, label %bb.v

bb.s:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28
  br i1 %.not14, label %.thread74, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.457.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.946.0, ptr %.sroa.558.0..sroa_idx, align 8
  br label %bb.u

.thread74:                                        ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread, %bb.s
  store i64 -1, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.thread, %.thread74, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.05.0.copyload, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0, ptr %i.e, align 8
  %.sroa.9.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  %.sroa.946.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %.sroa.946.0, ptr %.sroa.946.0..sroa_idx49, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @_RNvXs1_NtCs9XvERIT2X68_9itertools10merge_joinNCINvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service20merge_position_itemsNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedINtNtCsexYYUdYSQU6_5alloc3vec3VecB1X_EB30_E0INtB5_14OrderingOrBoolTB1X_jEB44_E5mergeBS_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %2, ptr noalias nofree noundef nonnull %i.as, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false)
  %3 = load i64, ptr %2, align 8, !range !9, !noundef !6
  switch i64 %3, label %bb.x [
    i64 2, label %bb.w
    i64 0, label %bb.z
  ]

.thread:                                          ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread, %bb.r
  %.sroa.05.0.copyload6873 = phi i64 [ %.sroa.05.0.copyload, %bb.r ], [ %.sroa.05.0.copyload61, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread ]
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 %.sroa.05.0.copyload6873, ptr %0, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.x:                                             ; preds = %bb.v
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  %i.au = load i64, ptr %i.c, align 8, !range !10, !alias.scope !612, !noundef !6
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31 unwind label %bb.ab

bb.z:                                             ; preds = %bb.v
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  %i.aw = load i64, ptr %i.d, align 8, !range !10, !alias.scope !613, !noundef !6
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.4)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1K_jEEBV_NCINvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service20merge_position_itemsB2x_INtB1O_3VecB2x_EB56_E0ENtNtNtB12_6traits8iterator8Iterator9size_hintB3X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !632, !noundef !6
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !633, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val14.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !633, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val14.i.i.i.i to i64
  %i.f = ptrtoint ptr %.val.i.i.i.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val15.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !633, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val16.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !633, !nonnull !6, !noundef !6
  %i.k = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.l = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %i.h)
  br label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit

_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  %..i.i.i.sink1.i.i = phi i64 [ %..i.i.i.i.i, %bb.b ], [ 0, %bb.a ]
  %i.o = load i64, ptr %1, align 8, !range !10, !alias.scope !634, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !635, !noundef !6
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit8, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val.i.i.i.i2 = load ptr, ptr %i.r, align 8, !alias.scope !636, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val14.i.i.i.i3 = load ptr, ptr %i.s, align 8, !alias.scope !636, !nonnull !6, !noundef !6
  %i.t = ptrtoint ptr %.val14.i.i.i.i3 to i64
  %i.u = ptrtoint ptr %.val.i.i.i.i2 to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val15.i.i.i.i4 = load ptr, ptr %i.x, align 8, !alias.scope !636, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val16.i.i.i.i5 = load ptr, ptr %i.y, align 8, !alias.scope !636, !nonnull !6, !noundef !6
  %i.z = ptrtoint ptr %.val16.i.i.i.i5 to i64
  %i.aa = ptrtoint ptr %.val15.i.i.i.i4 to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3
  %..i.i.i.i.i6 = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.w)
  br label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit8

_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit8: ; preds = %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit, %bb.c
  %..i.i.i.sink1.i.i7 = phi i64 [ %..i.i.i.i.i6, %bb.c ], [ 0, %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ae = icmp ne i64 %i.o, -1
  %i.af = zext i1 %i.ae to i64
  %i.ag = add nuw nsw i64 %..i.i.i.sink1.i.i, %i.af
  %i.ah = load i64, ptr %i.ad, align 8, !range !10, !alias.scope !637, !noundef !6
  %i.ai = icmp ne i64 %i.ah, -1
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add nuw nsw i64 %..i.i.i.sink1.i.i7, %i.aj
  %i.al = add nuw nsw i64 %i.ak, %i.ag            ; 2 uses
  store i64 %i.al, ptr %0, align 8, !alias.scope !638
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.am, align 8, !alias.scope !638
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.an, align 8, !alias.scope !638
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsiHzErX7aQFk_12futures_util6stream10try_stream10try_unfoldINtB4_9TryUnfoldTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEyyENCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB38_18StorageReadServiceB1W_ENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_0NCNCB33_s0_00ENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextB3e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  %.pre = load i64, ptr %1, align 8, !range !5    ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i: ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.p, %bb.g ], [ %i.p, %bb.f ]
  store i64 1, ptr %1, align 8, !noalias !682
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 8, !noalias !682
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !682
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !682
  store i8 0, ptr %i.j, align 8, !noalias !682
  br label %common.resume

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.pre, 0
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !683, !noalias !682, !noundef !6
  switch i8 %i.k, label %.thread [
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

common.ret.sink.split.i.i:                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.d
  fence acquire, !noalias !682
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #20
          to label %.thread unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !682
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !686, !noalias !682, !nonnull !6, !noundef !6
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !687
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %common.ret.sink.split.i.i, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.f, !noalias !682

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689), !noalias !682
  %i.q = load ptr, ptr %i.i, align 8, !alias.scope !690, !noalias !682, !nonnull !6, !noundef !6
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !691
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire, !noalias !682
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i unwind label %bb.h, !noalias !682

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693), !noalias !682
  %i.t = load ptr, ptr %i.i, align 8, !alias.scope !694, !noalias !682, !nonnull !6, !noundef !6
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !695
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %common.ret.sink.split.i.i, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !682
  unreachable

bb.i:                                             ; preds = %common.ret.sink.split.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i

common.resume:                                    ; preds = %.body, %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit22.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body30, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i ], [ %.pn19.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit22.i.i ], [ %i.cg, %.body ], [ %i.cg, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %common.ret.sink.split.i.i, %bb.b, %bb.c, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i
  store i64 1, ptr %1, align 8, !noalias !682
  %.sroa.599.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.599.0..sroa_idx100, align 8, !noalias !682
  %.sroa.6.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx102, align 8, !noalias !682
  %.sroa.7.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx104, align 8, !noalias !682
  %.sroa.8107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %.sroa.8107.0..sroa_idx108, align 8, !noalias !682
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.y = trunc nuw i64 %.pre to i1
  br i1 %i.y, label %bb.k, label %bb.am

bb.k:                                             ; preds = %.thread, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !683, !noalias !696, !noundef !6
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.l
end_hunk_0
