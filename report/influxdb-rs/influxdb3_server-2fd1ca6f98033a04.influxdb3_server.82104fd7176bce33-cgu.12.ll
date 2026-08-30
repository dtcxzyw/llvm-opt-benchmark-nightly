Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.12?download=true
inline.NumInlined: 3104
inline.NumDeleted: 1369
begin_hunk_0_@_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE18write_empty_structCsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %3, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE9write_vlqCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = icmp ugt i64 %2, 127
  %.val.i.pre = load ptr, ptr %1, align 8, !noalias !11 ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %bb.e ]
  %i.e = trunc nuw nsw i64 %.sroa.0.0.lcssa to i8
  call void @llvm.experimental.noalias.scope.decl(metadata !5256)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5259
  store i8 %i.e, ptr %i.b, align 1, !noalias !5259
  %.val.i.i = load ptr, ptr %.val.i.pre, align 8, !noalias !5261, !nonnull !11, !align !25, !noundef !11
  %i.f = call noundef ptr @_RNvXs_NtNtCs7Ez7UXBn1VF_7parquet4file6writerINtB4_12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs2AWtUsOyxgP_3std2io5Write9write_allCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !5259 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvXs1_NtCs7Ez7UXBn1VF_7parquet6errorsNtB5_12ParquetErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.f), !noalias !5264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5259
  br label %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5259
  store i64 -1, ptr %0, align 8, !alias.scope !5256, !noalias !5264
  br label %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.0.010 = phi i64 [ %i.j, %bb.e ], [ %2, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = trunc i64 %.sroa.0.010 to i8
  %i.h = or i8 %i.g, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5265
  store i8 %i.h, ptr %i.a, align 1, !noalias !5265
  %.val.i.i5 = load ptr, ptr %.val.i.pre, align 8, !noalias !5269, !nonnull !11, !align !25, !noundef !11
  %i.i = call noundef ptr @_RNvXs_NtNtCs7Ez7UXBn1VF_7parquet4file6writerINtB4_12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs2AWtUsOyxgP_3std2io5Write9write_allCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !5265 ; 2 uses
  %.not.i6 = icmp eq ptr %i.i, null
  br i1 %.not.i6, label %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit7.thread, label %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit7

_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit7.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5265
  br label %bb.e

_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit7: ; preds = %.lr.ph
  call void @_RNvXs1_NtCs7Ez7UXBn1VF_7parquet6errorsNtB5_12ParquetErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull %i.i), !noalias !5272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5265
  %.pr = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.e, label %bb.d

_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void

bb.d:                                             ; preds = %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit

bb.e:                                             ; preds = %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit7.thread, %_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = lshr i64 %.sroa.0.010, 7                 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.0.010, 16383
  br i1 %i.k, label %.lr.ph, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtB4_6option6OptionNtNtNtB4_3net11socket_addr10SocketAddrENtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @14, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs2LSxCQSJWSD_5hyper7upgrade9OnUpgradeNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @18, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @9, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCsaRedpzzhJaR_10trace_http13query_variant15QueryVariantExtNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @25, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCsbakdBCgU4AF_16influxdb3_server4http15ShutdownTriggerNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @27, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Pdji9zeuGA_6backon5retryNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries00INtB2_9RetryableRNtNtNtB4_7backoff11exponential18ExponentialBuilderNtB1c_9PutResultNtB1c_5ErrorNCNCBx_00Bv_E5retryCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtNtCs6Pdji9zeuGA_6backon7backoff11exponentialRNtB5_18ExponentialBuilderNtNtB7_3api14BackoffBuilder5build(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9PutResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries000NCB2w_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6d_6option6OptionB69_EEB6X_E3new0INtNtNtB6d_3ops8function6FnOnceTRB2g_EE9call_onceCsbakdBCgU4AF_16influxdb3_server, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9PutResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries000NCB2w_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6d_6option6OptionB69_EEB6X_E3news_0INtNtNtB6d_3ops8function6FnOnceTRB2g_B69_EE9call_onceCsbakdBCgU4AF_16influxdb3_server, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9PutResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries000NCB2w_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6d_6option6OptionB69_EEB6X_E3news0_0INtNtNtB6d_3ops8function6FnOnceTRB2g_B6X_EE9call_onceCsbakdBCgU4AF_16influxdb3_server, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 2, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsc96bKABWO34_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBK_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBK_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5273)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5273, !noalias !5276, !noundef !11 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @31, i64 32, i1 false), !noalias !5273
  br label %_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !5092

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.n, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !5278
  %i.q = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !5278 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5278
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !5278
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %3, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5283
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !5283
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5283
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !5283
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !5294, !noalias !5295, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !5296
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5294, !noalias !5295, !noundef !11 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !5297
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1R_EEENCNvMse_B1y_B1v_15clone_from_impl0EECsbakdBCgU4AF_16influxdb3_server(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #27
          to label %.body.i unwind label %bb.m, !noalias !5300

bb.j:                                             ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.013.027.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ] ; 2 uses
  %.sroa.6.026.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ] ; 2 uses
  %.sroa.814.025.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ] ; 2 uses
  %.sroa.1015.024.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.025.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.026.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.027.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !5301
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.026.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.025.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.024.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5296
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !5296

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.k, !noalias !5296

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #27
          to label %.body.i.i.i unwind label %bb.l, !noalias !5296

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !5296
  unreachable

_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5296
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !5296
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1i_EEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32) %i.b) #27
          to label %bb.o unwind label %bb.n, !noalias !5283

.loopexit.i:                                      ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i
  store i64 %i.z, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !5304, !noalias !5300
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !5294, !noalias !5295, !noundef !11
  store i64 %i.bh, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !5304, !noalias !5300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !5273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5283
  br label %_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit

bb.n:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !5283
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5305)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5305, !noalias !5308, !noundef !11 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @31, i64 32, i1 false), !noalias !5305
  br label %_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !5092

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.n, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !5310
  %i.q = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !5310 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5310
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !5310
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %3, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5315
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !5315
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5315
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !5315
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5324)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !5326, !noalias !5327, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !5328
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5326, !noalias !5327, !noundef !11 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !5329
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 6 uses
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.r, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.az, %bb.r ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEEENCNvMse_B1y_B1v_15clone_from_impl0EECsbakdBCgU4AF_16influxdb3_server(i64 %.sroa.012.029.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #27
          to label %.body.i unwind label %bb.t, !noalias !5332

bb.j:                                             ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.029.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.013.028.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ] ; 2 uses
  %.sroa.6.027.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ] ; 2 uses
  %.sroa.814.026.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ] ; 2 uses
  %.sroa.1015.025.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.026.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.027.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.028.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !5333
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.027.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.028.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.026.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.025.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5328
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5339)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !5328

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5344)
  %i.av = load i64, ptr %i.au, align 8, !range !1454, !alias.scope !5346, !noalias !5347, !noundef !11 ; 2 uses
  %i.aw = xor i64 %i.av, -9223372036854775808
  %i.ax = icmp slt i64 %i.av, 0
  %i.ay = select i1 %i.ax, i64 %i.aw, i64 5
  switch i64 %i.ay, label %bb.k [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.p
    i64 5, label %bb.q
  ]

bb.k:                                             ; preds = %.noexc.i.i.i
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.ae, align 8, !alias.scope !5348, !noalias !5349
  br label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.au, i64 24, i1 false), !alias.scope !5350, !noalias !5328
  br label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.n:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.au, i64 24, i1 false), !alias.scope !5350, !noalias !5328
  br label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.au, i64 24, i1 false), !alias.scope !5350, !noalias !5328
  br label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.p:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.au, i64 24, i1 false), !alias.scope !5350, !noalias !5328
  br label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.r, !noalias !5328

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #27
          to label %.body.i.i.i unwind label %bb.s, !noalias !5328

bb.s:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !5328
  unreachable

_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = sub i64 %i.af, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 48                ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5328
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.as, 0
  br i1 %i.bi, label %.loopexit.i, label %bb.j

bb.t:                                             ; preds = %.body.i.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !5328
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32) %i.b) #27
          to label %bb.v unwind label %bb.u, !noalias !5315

.loopexit.i:                                      ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE17new_uninitializedCsbakdBCgU4AF_16influxdb3_server.exit.i
  store i64 %i.z, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !5351, !noalias !5332
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !5326, !noalias !5327, !noundef !11
  store i64 %i.bl, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !5351, !noalias !5332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !5305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5315
  br label %_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit

bb.u:                                             ; preds = %.body.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !5315
  unreachable

bb.v:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %.loopexit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.i
    i32 0, label %bb.f
  ], !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @79, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d

end_hunk_0
