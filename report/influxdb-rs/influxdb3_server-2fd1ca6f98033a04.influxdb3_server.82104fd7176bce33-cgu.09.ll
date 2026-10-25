Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.09?download=true
inline.NumInlined: 2351
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvNtNtBb_2fs5write20write_spawn_blocking00ENtNtNtCs4NRVxsYgnAr_4core6future6future6Future4pollCsbakdBCgU4AF_16influxdb3_server:bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking00ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(56) %i.c) #31
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvNtNtBb_2fs6rename15rename_blocking00ENtNtNtCs4NRVxsYgnAr_4core6future6future6Future4pollCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.01.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -1, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01.0.copyload, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa.0.0..sroa_idx, i64 40, i1 false)
  %i.d = invoke { i1, i8 } @_RNvNtNtCseCDlJsl44RV_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4717
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = call noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2fs6renameNtNtB4_4path7PathBufBw_ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.f, 1
  ret { i64, ptr } %i.g

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvNtNtCseCDlJsl44RV_5tokio2fs6rename15rename_blocking00ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.c) #31
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingENtNtNtCs4NRVxsYgnAr_4core6future6future6Future4pollCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) dereferenceable(1) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !15, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  store i8 0, ptr %1, align 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i1, i8 } @_RNvNtNtCseCDlJsl44RV_5tokio4task4coop4stop() ; 0 uses
  tail call void @_RNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blocking(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !4718, !noundef !6
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.369, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs2LSxCQSJWSD_5hyper5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !20, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !20, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs844E4pPEVZX_17influxdb3_catalog5errorNtB5_18TruncatedTableNameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @390, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @389)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCs8rTCm43AEA0_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtB14_2io11async_write10AsyncWrite10poll_flushCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1136) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.c = load i8, ptr %i.b, align 8, !range !64, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCs8rTCm43AEA0_12tokio_rustls6commonINtB5_6StreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamNtNtNtCs62AB4KIMLyv_6rustls6server11server_conn16ServerConnectionENtNtNtB11_2io11async_write10AsyncWrite10poll_flushCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCs8rTCm43AEA0_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtB14_2io11async_write10AsyncWrite10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1136) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.c = load i8, ptr %i.b, align 8, !range !64, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCs8rTCm43AEA0_12tokio_rustls6commonINtB5_6StreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamNtNtNtCs62AB4KIMLyv_6rustls6server11server_conn16ServerConnectionENtNtNtB11_2io11async_write10AsyncWrite10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCs8rTCm43AEA0_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtB14_2io11async_write10AsyncWrite13poll_shutdownCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1136) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !64, !noundef !6 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split.a, label %bb.b

.sink.split.a:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias noundef nonnull align 8 dereferenceable(824) %i.d)
  %i.e = load i8, ptr %i.b, align 8, !range !64, !noundef !6
  %2 = or i8 %i.e, 2                              ; 2 uses
  store i8 %2, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.a, %bb.a
  %i.f = phi i8 [ %i.c, %bb.a ], [ %2, %.sink.split.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = call { i64, ptr } @_RNvXs1_NtCs8rTCm43AEA0_12tokio_rustls6commonINtB5_6StreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamNtNtNtCs62AB4KIMLyv_6rustls6server11server_conn16ServerConnectionENtNtNtB11_2io11async_write10AsyncWrite13poll_shutdownCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = load i8, ptr %0, align 8, !range !40, !noundef !6
  switch i8 %i.s, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.r, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 10, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @391)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @393, i64 noundef 10)
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.y, ptr %i.q, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @397, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 4, ptr noundef nonnull %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @394, ptr noalias noundef nonnull readonly captures(address, read_provenance) @398, i64 noundef 8, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @395, ptr noalias noundef nonnull readonly captures(address, read_provenance) @399, i64 noundef 3, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @396)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.y

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.p, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @401, i64 noundef 18, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @400)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.y

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.o, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @403, i64 noundef 14, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @402)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.n, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 16, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @322)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.m, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @406, i64 noundef 17, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @405)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.y

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.l, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @408, i64 noundef 16, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @407)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.y

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.k, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @410, i64 noundef 14, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @409)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.y

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.j, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 7, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @322)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.l:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.i, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @412, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 7, ptr noundef nonnull %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @394, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 10, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @322)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.y

bb.m:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @413, i64 noundef 14)
  br label %bb.y

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.h, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @414, i64 noundef 14, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @322)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.g, align 8
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @415, i64 noundef 15, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @322)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

bb.p:                                             ; preds = %bb.a
  %i.aw = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @416, i64 noundef 17)
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ay, ptr %i.f, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @418, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 7, ptr noundef nonnull %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @417, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 10, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @389)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.e, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 18, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @322)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.d, align 8
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 15, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @400)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.y

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.c, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @421, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @420)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
