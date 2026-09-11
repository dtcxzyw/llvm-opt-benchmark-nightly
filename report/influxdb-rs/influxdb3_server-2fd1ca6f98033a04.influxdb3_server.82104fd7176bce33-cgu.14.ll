Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.14?download=true
inline.NumInlined: 3843
inline.NumDeleted: 1643
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB4_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB15_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3e_2io10async_read9AsyncRead9poll_readCsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 4 uses
  %.not7 = icmp ugt i64 %i.g, %i.c
  br i1 %.not7, label %bb.e, label %bb.d, !prof !59

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %2, align 8, !nonnull !11, !noundef !11
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %i.e, ptr %i.k, align 8
  store i64 %i.g, ptr %i.j, align 8
  %i.l = call { i64, ptr } @_RNvXs_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB4_6RewindINtNtNtB8_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io4Read9poll_readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1
  %.not8 = icmp ne ptr %i.n, null
  %or.cond.not = select i1 %i.o, i1 true, i1 %.not8
  br i1 %or.cond.not, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.d
  %i.p = load i64, ptr %i.k, align 8, !noundef !11
  %i.q = load i64, ptr %i.j, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = sub i64 %i.p, %i.e
  %i.s = add i64 %i.r, %i.g                       ; 3 uses
  %i.t = icmp ugt i64 %i.s, %i.e
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit
  store i64 %i.s, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit, %bb.g
  %i.u = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.s, %bb.g ]
  %.not9 = icmp ugt i64 %i.q, %i.u
  br i1 %.not9, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @225, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #38
  unreachable

bb.j:                                             ; preds = %bb.h
  store i64 %i.q, ptr %i.f, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.3.0 = phi ptr [ %i.n, %bb.f ], [ null, %bb.j ]
  %i.v = insertvalue { i64, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB4_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB15_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2q_2io10async_read9AsyncRead9poll_readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 6 uses
  %.not = icmp ugt i64 %i.e, %i.c
  br i1 %.not, label %bb.c, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 4 uses
  %.not7 = icmp ugt i64 %i.g, %i.c
  br i1 %.not7, label %bb.e, label %bb.d, !prof !59

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %2, align 8, !nonnull !11, !noundef !11
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %i.e, ptr %i.k, align 8
  store i64 %i.g, ptr %i.j, align 8
  %i.l = call { i64, ptr } @_RNvXs_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB4_6RewindINtNtNtB8_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io4Read9poll_readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1
  %.not8 = icmp ne ptr %i.n, null
  %or.cond.not = select i1 %i.o, i1 true, i1 %.not8
  br i1 %or.cond.not, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.d
  %i.p = load i64, ptr %i.k, align 8, !noundef !11
  %i.q = load i64, ptr %i.j, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = sub i64 %i.p, %i.e
  %i.s = add i64 %i.r, %i.g                       ; 3 uses
  %i.t = icmp ugt i64 %i.s, %i.e
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit
  store i64 %i.s, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit, %bb.g
  %i.u = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.s, %bb.g ]
  %.not9 = icmp ugt i64 %i.q, %i.u
  br i1 %.not9, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @225, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #38
  unreachable

bb.j:                                             ; preds = %bb.h
  store i64 %i.q, ptr %i.f, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.3.0 = phi ptr [ %i.n, %bb.f ], [ null, %bb.j ]
  %i.v = insertvalue { i64, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Csk0FzFVI8urx_8iox_timeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_12TimeProviderEL_EB10_3nowCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !26, !invariant.load !11
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.k(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noundef nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXsb_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1r_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [256 x i8], align 8               ; 37 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9200)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !9201, !noalias !9200, !noundef !11 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !9201, !noalias !9200, !noundef !11 ; 5 uses
  %.not.i = icmp eq i64 %.val.i, %.val1.i
  br i1 %.not.i, label %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9202)
  %i.f = icmp ugt i64 %.val1.i, %.val.i
  br i1 %i.f, label %bb.c, label %_RNvXs7_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h12ioINtB5_6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunkCsbakdBCgU4AF_16influxdb3_server.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.val1.i, i64 noundef %.val.i, i64 noundef %.val.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #38, !noalias !9203
  unreachable

_RNvXs7_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h12ioINtB5_6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunkCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9204, !noalias !9200, !nonnull !11, !noundef !11
  %i.h = sub nuw i64 %.val.i, %.val1.i
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val1.i
  store ptr %i.i, ptr %1, align 8, !alias.scope !9200, !noalias !9199
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.j, align 8, !alias.scope !9200, !noalias !9199
  br label %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit

_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %_RNvXs7_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h12ioINtB5_6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunkCsbakdBCgU4AF_16influxdb3_server.exit.i
  %.sroa.0.0.i = phi i64 [ 1, %_RNvXs7_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h12ioINtB5_6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunkCsbakdBCgU4AF_16influxdb3_server.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = sub nuw nsw i64 64, %.sroa.0.0.i         ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9206
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEE4iterCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !9206
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.sroa.7.0.copyload.i = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !noalias !9206
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.sroa.0.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !9206
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.sroa.5.0.copyload.i = load ptr, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i, align 8, !noalias !9206
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.sroa.011.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.011.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.011.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i, %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %.sroa.0.sroa.7.0.copyload.i, %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit ], [ %.sroa.0.sroa.7.1.i, %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i ] ; 3 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %.sroa.0.sroa.0.0.copyload.i, %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.av, %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i ] ; 3 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %.sroa.9.sroa.5.0.copyload.i, %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit ], [ %.sroa.9.sroa.5.1.i, %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %.sroa.9.sroa.0.0.copyload.i, %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit ], [ %.sroa.9.sroa.0.1.i, %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ 0, %_RNvYINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h12io6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.df, %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i ] ; 7 uses
  %i.at = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.at, label %bb.e, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.e:                                             ; preds = %bb.d
  %i.au = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.au, label %_RNvXs_NtNtCs2LSxCQSJWSD_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.sroa.7.1.i = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.e ], [ %.sroa.0.sroa.7.0.i, %bb.d ]
  %.sroa.9.sroa.5.1.i = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.e ], [ %.sroa.9.sroa.5.0.i, %bb.d ]
  %.sroa.9.sroa.0.1.i = phi ptr [ %.sroa.0.sroa.0.0.i, %bb.e ], [ %.sroa.9.sroa.0.0.i, %bb.d ]
  %.sink6.i.i = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.e ], [ %.sroa.0.sroa.0.0.i, %bb.d ] ; 17 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 80
  %.not.i3 = icmp eq ptr %.sink6.i.i, null
  br i1 %.not.i3, label %_RNvXs_NtNtCs2LSxCQSJWSD_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.aw = icmp ugt i64 %.sroa.0.1.i, %i.l
  br i1 %i.aw, label %bb.aa, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ax = sub nuw nsw i64 %i.l, %.sroa.0.1.i      ; 18 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.1.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9207)
  %i.az = load i64, ptr %.sink6.i.i, align 8, !range !12, !noalias !9207, !noundef !11
  switch i64 %i.az, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.o
    i64 3, label %bb.t
    i64 4, label %bb.v
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.bb = call noundef i64 @_RNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.ba, ptr noalias noundef nonnull align 8 %i.ay, i64 noundef range(i64 0, 65) %i.ax)
  br label %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !9208, !noundef !11
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !noalias !9209
  store i64 0, ptr %i.n, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8, !noalias !9209
  store i64 0, ptr %i.p, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !noalias !9209
  store i64 0, ptr %i.r, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !9209
  store i64 0, ptr %i.t, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8, !noalias !9209
  store i64 0, ptr %i.v, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.w, align 8, !noalias !9209
  store i64 0, ptr %i.x, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.y, align 8, !noalias !9209
  store i64 0, ptr %i.z, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8, !noalias !9209
  store i64 0, ptr %i.ab, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8, !noalias !9209
  store i64 0, ptr %i.ad, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8, !noalias !9209
  store i64 0, ptr %i.af, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.ag, align 8, !noalias !9209
  store i64 0, ptr %i.ah, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !noalias !9209
  store i64 0, ptr %i.aj, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.ak, align 8, !noalias !9209
  store i64 0, ptr %i.al, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8, !noalias !9209
  store i64 0, ptr %i.an, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !noalias !9209
  store i64 0, ptr %i.ap, align 8, !noalias !9209
  store ptr inttoptr (i64 1 to ptr), ptr %i.aq, align 8, !noalias !9209
  store i64 0, ptr %i.ar, align 8, !noalias !9209
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 65) %i.ax, i64 16)
  %i.bg = call noundef i64 @_RNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.bf, ptr noalias noundef nonnull align 8 %i.b, i64 noundef %.sroa.0.0.i.i.i.i), !noalias !9208 ; 5 uses
  %i.bh = load i64, ptr %i.bc, align 8, !noalias !9208, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9209
  %.not.i.i.i = icmp ugt i64 %i.bg, %i.ax
  br i1 %.not.i.i.i, label %bb.k, label %bb.l, !prof !59

.sink.split.i.i.i:                                ; preds = %bb.m, %bb.n, %bb.l
  %.sroa.0.0.ph.i.i.i = phi i64 [ %i.bv, %bb.n ], [ %i.bg, %bb.l ], [ %i.bg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9209
  br label %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef range(i64 0, 65) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #38, !noalias !9208
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bg
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1X_E3newCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.ay, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.b, ptr noundef nonnull %i.as)
  %.sroa.011.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !noalias !9209 ; 2 uses
  %.sroa.011.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.011.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !9209 ; 2 uses
  %.sroa.011.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.011.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !9209 ; 3 uses
  %.sroa.011.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.011.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !9209 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9209
  %i.bj = icmp ult i64 %.sroa.011.sroa.5.0.copyload.i.i.i, %.sroa.011.sroa.6.0.copyload.i.i.i
  br i1 %i.bj, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.lr.ph.i.i.i, label %.sink.split.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.lr.ph.i.i.i: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.sroa.3.0.copyload.i.i.i) ]
  %i.bk = sub nuw i64 %.sroa.011.sroa.6.0.copyload.i.i.i, %.sroa.011.sroa.5.0.copyload.i.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.m, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.lr.ph.i.i.i
  %.sroa.09.036.i.i.i = phi i64 [ %i.bh, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.lr.ph.i.i.i ], [ %i.bt, %bb.m ] ; 3 uses
  %.sroa.621.035.i.i.i = phi i64 [ %.sroa.011.sroa.5.0.copyload.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.lr.ph.i.i.i ], [ %i.br, %bb.m ] ; 3 uses
  %.sroa.9.034.i.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.lr.ph.i.i.i ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.sroa.0.0.copyload.i.i.i, i64 %.sroa.621.035.i.i.i ; 4 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.sroa.3.0.copyload.i.i.i, i64 %.sroa.621.035.i.i.i ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noundef !11 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !11 ; 3 uses
  %.not19.i.i.i = icmp ugt i64 %.sroa.09.036.i.i.i, %i.bp
  br i1 %.not19.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.bq = add nuw i64 %.sroa.9.034.i.i.i, 1       ; 2 uses
  %i.br = add nuw i64 %.sroa.621.035.i.i.i, 1
  store ptr %i.bn, ptr %i.bl, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bp, ptr %i.bs, align 8
  %i.bt = sub nuw i64 %.sroa.09.036.i.i.i, %i.bp
  %exitcond.not.i.i.i = icmp eq i64 %i.bq, %i.bk
  br i1 %exitcond.not.i.i.i, label %.sink.split.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.n:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtCs2AWtUsOyxgP_3std2io7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  store ptr %i.bn, ptr %i.bl, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.09.036.i.i.i, ptr %i.bu, align 8
  %i.bv = add i64 %.sroa.9.034.i.i.i, 1
  br label %.sink.split.i.i.i

bb.o:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !9210)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 40
  %i.bx = call noundef i64 @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.bw, ptr noalias noundef nonnull align 8 %i.ay, i64 noundef range(i64 0, 65) %i.ax) ; 5 uses
  %i.by = icmp ugt i64 %i.bx, %i.ax
  br i1 %i.by, label %bb.p, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, !prof !16

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef range(i64 0, 65) %i.ax, i64 noundef range(i64 0, 65) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #38
  unreachable

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.ca = sub nuw nsw i64 %i.ax, %i.bx
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bx
  %i.cc = call noundef i64 @_RNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.bz, ptr noalias noundef nonnull align 8 %i.cb, i64 noundef %i.ca)
  %i.cd = add i64 %i.cc, %i.bx                    ; 5 uses
  %i.ce = icmp ugt i64 %i.cd, %i.ax
  br i1 %i.ce, label %bb.s, label %bb.q, !prof !16

bb.q:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.cf = getelementptr i8, ptr %.sink6.i.i, i64 72
  %.val5.i.i.i = load i64, ptr %i.cf, align 8, !noalias !9211 ; 2 uses
  %i.cg = icmp ne i64 %i.ax, %i.cd
  %i.ch = icmp ne i64 %.val5.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.r, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_NtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 64
  %.val.i.i.i = load ptr, ptr %i.ci, align 8, !noalias !9211, !nonnull !11, !noundef !11
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cd ; 2 uses
  store ptr %.val.i.i.i, ptr %i.cj, align 8, !alias.scope !9212, !noalias !9213
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %.val5.i.i.i, ptr %i.ck, align 8, !alias.scope !9212, !noalias !9213
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_NtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.s:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cd, i64 noundef range(i64 0, 65) %i.ax, i64 noundef range(i64 0, 65) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #38
  unreachable

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_NtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i2.i.i = phi i64 [ 0, %bb.q ], [ 1, %bb.r ]
  %i.cl = add nuw nsw i64 %.sroa.0.0.i.i2.i.i, %i.cd
  br label %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.t:                                             ; preds = %bb.g
  %i.cm = getelementptr i8, ptr %.sink6.i.i, i64 16
  %.val1.i.i = load i64, ptr %i.cm, align 8, !noalias !9207 ; 2 uses
  %.not74.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not74.i, label %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %.val.i.i5 = load ptr, ptr %i.cn, align 8, !noalias !9207, !nonnull !11, !noundef !11
  store ptr %.val.i.i5, ptr %i.ay, align 8, !alias.scope !9214, !noalias !9213
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.val1.i.i, ptr %i.co, align 8, !alias.scope !9214, !noalias !9213
  br label %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.v:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !9215)
  call void @llvm.experimental.noalias.scope.decl(metadata !9216)
  %i.cp = getelementptr i8, ptr %.sink6.i.i, i64 16
  %.val5.i.i.i.i = load i64, ptr %i.cp, align 8, !noalias !9217 ; 2 uses
  %.not73.i = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %.not73.i, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !9217, !nonnull !11, !noundef !11
  store ptr %.val.i.i.i.i, ptr %i.ay, align 8, !alias.scope !9218, !noalias !9213
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.val5.i.i.i.i, ptr %i.cr, align 8, !alias.scope !9218, !noalias !9213
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.v ], [ 1, %bb.w ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 24
  %i.ct = sub nuw nsw i64 %i.ax, %.sroa.0.0.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.0.0.i.i.i.i.i
  %i.cv = call noundef i64 @_RNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.cs, ptr noalias noundef nonnull align 8 %i.cu, i64 noundef %i.ct)
  %i.cw = add i64 %i.cv, %.sroa.0.0.i.i.i.i.i     ; 5 uses
  %i.cx = icmp ugt i64 %i.cw, %i.ax
  br i1 %i.cx, label %bb.z, label %bb.x, !prof !16

bb.x:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.cy = getelementptr i8, ptr %.sink6.i.i, i64 64
  %.val5.i4.i.i = load i64, ptr %i.cy, align 8, !noalias !9219 ; 2 uses
  %i.cz = icmp ne i64 %i.ax, %i.cw
  %i.da = icmp ne i64 %.val5.i4.i.i, 0
  %or.cond.i.i5.i.i = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond.i.i5.i.i, label %bb.y, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_RShNtNtB8_5bytes5BytesEBR_ENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 56
  %.val.i7.i.i = load ptr, ptr %i.db, align 8, !noalias !9219, !nonnull !11, !noundef !11
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cw ; 2 uses
  store ptr %.val.i7.i.i, ptr %i.dc, align 8, !alias.scope !9220, !noalias !9213
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.val5.i4.i.i, ptr %i.dd, align 8, !alias.scope !9220, !noalias !9213
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_RShNtNtB8_5bytes5BytesEBR_ENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.z:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef range(i64 0, 65) %i.ax, i64 noundef range(i64 0, 65) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #38
  unreachable

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_RShNtNtB8_5bytes5BytesEBR_ENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i6.i.i = phi i64 [ 0, %bb.x ], [ 1, %bb.y ]
  %i.de = add nuw nsw i64 %.sroa.0.0.i.i6.i.i, %i.cw
  br label %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i

_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_RShNtNtB8_5bytes5BytesEBR_ENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.u, %bb.t, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_NtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i, %.sink.split.i.i.i, %bb.i, %bb.h
  %.sroa.0.0.i7.i = phi i64 [ %i.bb, %bb.h ], [ %i.de, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_RShNtNtB8_5bytes5BytesEBR_ENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.cl, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainIBC_NtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %.sroa.0.0.ph.i.i.i, %.sink.split.i.i.i ], [ 0, %bb.i ], [ 0, %bb.t ], [ 1, %bb.u ]
  %i.df = add i64 %.sroa.0.0.i7.i, %.sroa.0.1.i   ; 2 uses
  %i.dg = icmp eq i64 %i.df, %i.l
  br i1 %i.dg, label %_RNvXs_NtNtCs2LSxCQSJWSD_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.aa:                                            ; preds = %bb.f
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 65) %i.l, i64 noundef range(i64 0, 65) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #38
  unreachable

_RNvXs_NtNtCs2LSxCQSJWSD_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.e, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i, %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i
  %.sroa.0.2.i = phi i64 [ %i.l, %_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.0.1.i, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.0.1.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9206
  %i.dh = add i64 %.sroa.0.2.i, %.sroa.0.0.i
  ret i64 %i.dh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @255, ptr noalias noundef nonnull readonly captures(address, read_provenance) @288, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @282, ptr noalias noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283, ptr noalias noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284, ptr noalias noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @285)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCs2LSxCQSJWSD_5hyper5error5ErrorEENtNtNtB1c_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = atomicrmw sub ptr %i.b, i64 1 seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8, !noalias !9223
  %.not.i.i = icmp sgt i64 %i.f, -1
  br i1 %.not.i.i, label %_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCs2LSxCQSJWSD_5hyper5error5ErrorEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw and ptr %i.e, i64 9223372036854775807 seq_cst, align 8, !noalias !9223 ; 0 uses
  br label %_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCs2LSxCQSJWSD_5hyper5error5ErrorEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit

_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCs2LSxCQSJWSD_5hyper5error5ErrorEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @_RNvMNtNtNtCsi0Uwx9p0WRp_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.h), !noalias !9223
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCs2LSxCQSJWSD_5hyper5error5ErrorEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEENtNtNtB1e_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = atomicrmw sub ptr %i.b, i64 1 seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8, !noalias !9226
  %.not.i.i = icmp sgt i64 %i.f, -1
  br i1 %.not.i.i, label %_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw and ptr %i.e, i64 9223372036854775807 seq_cst, align 8, !noalias !9226 ; 0 uses
  br label %_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit

_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @_RNvMNtNtNtCsi0Uwx9p0WRp_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.h), !noalias !9226
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMsg_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE13close_channelCsbakdBCgU4AF_16influxdb3_server.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types4TypeENtB5_5Debug3fmtCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types4TypeEINtNtNtBa_5slice4iter4IterB14_EECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE12next_messageCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(8) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !14, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !noundef !11  ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.k, label %bb.j, !prof !16

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtB12_5boxed3BoxShEEEEEECsbakdBCgU4AF_16influxdb3_server.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
end_hunk_0
