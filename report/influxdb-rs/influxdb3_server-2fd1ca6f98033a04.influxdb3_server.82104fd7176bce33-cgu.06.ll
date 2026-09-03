Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.06?download=true
inline.NumInlined: 2017
inline.NumDeleted: 786
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf13poll_read_bufINtNtNtCsi8UQarL1hXO_2h25codec12framed_write11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB2S_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB16_5proto7streams10prioritize11PrioritizedINtNtNtB23_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtNtB6l_9bytes_mut8BytesMutECsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre1.i, %bb.c ]
  %i.k = phi i64 [ %.val, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !alias.scope !1859, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k ; 3 uses
  %i.n = sub i64 %i.j, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %i.q = call { i64, ptr } @_RNvXs2_NtNtCsi8UQarL1hXO_2h25codec12framed_writeINtB5_11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB21_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtB1c_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtNtNtB3m_2io10async_read9AsyncRead9poll_readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(424) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.l, %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut.exit
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.l ], [ %i.ag, %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.l ], [ 0, %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut.exit ], [ 0, %bb.a ]
  %i.t = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, ptr } %i.t, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.u

bb.e:                                             ; preds = %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut.exit
  %i.v = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %.not16 = icmp eq ptr %i.v, null
  br i1 %.not16, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %i.x = load i64, ptr %i.p, align 8, !noundef !6 ; 6 uses
  %.not17 = icmp ugt i64 %i.x, %i.w
  br i1 %.not17, label %bb.h, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8
  %i.z = icmp eq ptr %i.m, %i.y
  br i1 %i.z, label %bb.j, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #31
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedPhBM_ECs4oFq2PzodUt_7reqwest(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !1860, !noundef !6
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !1860, !noundef !6 ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.k, label %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut.exit, !prof !10

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1860
  store i64 %i.x, ptr %i.a, align 8, !noalias !1860
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !1860
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #31, !noalias !1860
  unreachable

_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut.exit: ; preds = %bb.j
  %i.af = add i64 %i.ab, %i.x
  store i64 %i.af, ptr %i.e, align 8, !alias.scope !1860
  %i.ag = inttoptr i64 %i.x to ptr
  br label %bb.d

bb.l:                                             ; preds = %bb.e, %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut.exit
  %.sroa.5.1 = phi ptr [ undef, %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut.exit ], [ %i.v, %bb.e ]
  %.sroa.0.1 = phi i64 [ 2, %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut.exit ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf13poll_read_bufNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileQNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !align !17, !noundef !6 ; 4 uses
  %i.e = getelementptr i8, ptr %.val, i64 8       ; 4 uses
  %.val.i = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %.not = icmp eq i64 %.val.i, 9223372036854775807
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1865, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val.i
  br i1 %i.h, label %bb.c, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef 64, i1 noundef zeroext true) ; 0 uses
  %.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !1865
  %.pre1.i.i = load i64, ptr %i.f, align 8, !alias.scope !1865
  br label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsbakdBCgU4AF_16influxdb3_server.exit

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre1.i.i, %bb.c ]
  %i.k = phi i64 [ %.val.i, %bb.b ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.val, align 8, !alias.scope !1865, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k ; 3 uses
  %i.n = sub i64 %i.j, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %i.q = call { i64, ptr } @_RNvXs_NtNtCseCDlJsl44RV_5tokio2fs4fileNtB4_4FileNtNtNtB8_2io10async_read9AsyncRead9poll_read(ptr noalias noundef nonnull align 8 dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.l, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.l ], [ %i.ag, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsbakdBCgU4AF_16influxdb3_server.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.l ], [ 0, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsbakdBCgU4AF_16influxdb3_server.exit ], [ 0, %bb.a ]
  %i.t = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, ptr } %i.t, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.u

bb.e:                                             ; preds = %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsbakdBCgU4AF_16influxdb3_server.exit
  %i.v = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %.not16 = icmp eq ptr %i.v, null
  br i1 %.not16, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %i.x = load i64, ptr %i.p, align 8, !noundef !6 ; 6 uses
  %.not17 = icmp ugt i64 %i.x, %i.w
  br i1 %.not17, label %bb.h, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8
  %i.z = icmp eq ptr %i.m, %i.y
  br i1 %i.z, label %bb.j, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #31
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedPhBM_ECs4oFq2PzodUt_7reqwest(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !1866, !noundef !6
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !1866, !noundef !6 ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.k, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsbakdBCgU4AF_16influxdb3_server.exit, !prof !10

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1866
  store i64 %i.x, ptr %i.a, align 8, !noalias !1866
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !1866
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #31, !noalias !1866
  unreachable

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.j
  %i.af = add i64 %i.ab, %i.x
  store i64 %i.af, ptr %i.e, align 8, !alias.scope !1866
  %i.ag = inttoptr i64 %i.x to ptr
  br label %bb.d

bb.l:                                             ; preds = %bb.e, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.5.1 = phi ptr [ undef, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.v, %bb.e ]
  %.sroa.0.1 = phi i64 [ 2, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsbakdBCgU4AF_16influxdb3_server.exit ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1024 x i8], align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !1880, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1880, !noundef !6 ; 6 uses
  %i.f = icmp ugt i64 %.val1.i.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3f_2io11async_write10AsyncWrite17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %0)
  br i1 %i.g, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.d, %bb.a, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.7.0 = phi ptr [ undef, %bb.d ], [ %.sroa.016.0.in, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit ], [ null, %bb.a ], [ %i.n, %bb.f ], [ undef, %bb.j ], [ %i.aj, %bb.k ]
  %.sroa.0.0 = phi i64 [ %i.m, %bb.d ], [ 0, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit ], [ 0, %bb.a ], [ 1, %bb.f ], [ 2, %bb.j ], [ 1, %bb.k ]
  %i.h = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.i

bb.d:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !1881, !nonnull !6, !noundef !6
  %i.j = sub nuw i64 %.val1.i.i, %i.e             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.e
  %i.l = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3f_2io11async_write10AsyncWrite10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 3 uses
  switch i64 %i.m, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.l
  %.pre-phi = phi i64 [ %i.j, %bb.d ], [ %i.ae, %bb.l ] ; 2 uses
  %.sroa.016.0.in = phi ptr [ %i.n, %bb.d ], [ %i.aj, %bb.l ] ; 2 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  %i.o = icmp ult i64 %.pre-phi, %.sroa.016.0
  br i1 %i.o, label %bb.h, label %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1882
  store i64 %.sroa.016.0, ptr %i.a, align 8, !noalias !1882
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.pre-phi, ptr %i.p, align 8, !noalias !1882
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #31, !noalias !1882
  unreachable

_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.g
  %i.q = add i64 %i.e, %.sroa.016.0
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1882
  br label %bb.c

bb.i:                                             ; preds = %bb.i, %bb.e
  %i.r = phi i64 [ 0, %bb.e ], [ %i.ad, %bb.i ]   ; 5 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 0, ptr %i.ac, align 8
  %i.ad = add nuw nsw i64 %i.r, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ad, 64
  br i1 %exitcond.not.3, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.i

_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !1885, !noalias !1884, !nonnull !6, !noundef !6
  %i.ae = sub nuw i64 %.val1.i.i, %i.e            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.e
  store ptr %i.af, ptr %i.b, align 8, !alias.scope !1884, !noalias !1883
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !alias.scope !1884, !noalias !1883
  %i.ah = call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3f_2io11async_write10AsyncWrite19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  switch i64 %i.ai, label %bb.k [
    i64 2, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.l:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtCsuxFxh2mtOX_5bytes3buf5chain5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB51_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtB51_5bytes5BytesEEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 10 uses
  %i.b = tail call noundef zeroext i1 @_RNvYINtNtNtCsuxFxh2mtOX_5bytes3buf5chain5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB9_5bytes5BytesEEENtNtB7_8buf_impl3Buf13has_remainingCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3f_2io11async_write10AsyncWrite17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.l, %bb.m, %bb.f, %bb.d, %bb.a, %bb.g
  %.sroa.7.0 = phi ptr [ undef, %bb.d ], [ %.sroa.016.0.in, %bb.g ], [ null, %bb.a ], [ %i.k, %bb.f ], [ undef, %bb.l ], [ %i.ac, %bb.m ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.g ], [ 0, %bb.a ], [ 1, %bb.f ], [ 2, %bb.l ], [ 1, %bb.m ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call { ptr, i64 } @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3f_2io11async_write10AsyncWrite10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 3 uses
  switch i64 %i.j, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.n
  %.sroa.016.0.in = phi ptr [ %i.ac, %bb.n ], [ %i.k, %bb.d ] ; 2 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64
  call void @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.sroa.016.0)
  br label %bb.c

bb.h:                                             ; preds = %bb.h, %bb.e
  %i.l = phi i64 [ 0, %bb.e ], [ %i.x, %bb.h ]    ; 5 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 0, ptr %i.w, align 8
  %i.x = add nuw nsw i64 %i.l, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.x, 64
  br i1 %exitcond.not.3, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.y = call noundef i64 @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 64) ; 3 uses
  %i.z = icmp ult i64 %i.y, 65
  br i1 %i.z, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3f_2io11async_write10AsyncWrite19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef %i.y) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 3 uses
  switch i64 %i.ab, label %bb.m [
    i64 2, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1024 x i8], align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !1899, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1899, !noundef !6 ; 6 uses
  %i.f = icmp ugt i64 %.val1.i.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %0)
  br i1 %i.g, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.d, %bb.a, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.7.0 = phi ptr [ undef, %bb.d ], [ %.sroa.016.0.in, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit ], [ null, %bb.a ], [ %i.n, %bb.f ], [ undef, %bb.j ], [ %i.aj, %bb.k ]
  %.sroa.0.0 = phi i64 [ %i.m, %bb.d ], [ 0, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit ], [ 0, %bb.a ], [ 1, %bb.f ], [ 2, %bb.j ], [ 1, %bb.k ]
  %i.h = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.i

bb.d:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !1900, !nonnull !6, !noundef !6
  %i.j = sub nuw i64 %.val1.i.i, %i.e             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.e
  %i.l = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 3 uses
  switch i64 %i.m, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.l
  %.pre-phi = phi i64 [ %i.j, %bb.d ], [ %i.ae, %bb.l ] ; 2 uses
  %.sroa.016.0.in = phi ptr [ %i.n, %bb.d ], [ %i.aj, %bb.l ] ; 2 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  %i.o = icmp ult i64 %.pre-phi, %.sroa.016.0
  br i1 %i.o, label %bb.h, label %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1901
  store i64 %.sroa.016.0, ptr %i.a, align 8, !noalias !1901
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.pre-phi, ptr %i.p, align 8, !noalias !1901
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #31, !noalias !1901
  unreachable

_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.g
  %i.q = add i64 %i.e, %.sroa.016.0
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1901
  br label %bb.c

bb.i:                                             ; preds = %bb.i, %bb.e
  %i.r = phi i64 [ 0, %bb.e ], [ %i.ad, %bb.i ]   ; 5 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 0, ptr %i.ac, align 8
  %i.ad = add nuw nsw i64 %i.r, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ad, 64
  br i1 %exitcond.not.3, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.i

_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !1904, !noalias !1903, !nonnull !6, !noundef !6
  %i.ae = sub nuw i64 %.val1.i.i, %i.e            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.e
  store ptr %i.af, ptr %i.b, align 8, !alias.scope !1903, !noalias !1902
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !alias.scope !1903, !noalias !1902
  %i.ah = call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  switch i64 %i.ai, label %bb.k [
    i64 2, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.l:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtCsuxFxh2mtOX_5bytes3buf5chain5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB4c_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtB4c_5bytes5BytesEEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 10 uses
  %i.b = tail call noundef zeroext i1 @_RNvYINtNtNtCsuxFxh2mtOX_5bytes3buf5chain5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB9_5bytes5BytesEEENtNtB7_8buf_impl3Buf13has_remainingCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.l, %bb.m, %bb.f, %bb.d, %bb.a, %bb.g
  %.sroa.7.0 = phi ptr [ undef, %bb.d ], [ %.sroa.016.0.in, %bb.g ], [ null, %bb.a ], [ %i.k, %bb.f ], [ undef, %bb.l ], [ %i.ac, %bb.m ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.g ], [ 0, %bb.a ], [ 1, %bb.f ], [ 2, %bb.l ], [ 1, %bb.m ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call { ptr, i64 } @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 3 uses
  switch i64 %i.j, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.n
  %.sroa.016.0.in = phi ptr [ %i.ac, %bb.n ], [ %i.k, %bb.d ] ; 2 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64
  call void @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.sroa.016.0)
  br label %bb.c

bb.h:                                             ; preds = %bb.h, %bb.e
  %i.l = phi i64 [ 0, %bb.e ], [ %i.x, %bb.h ]    ; 5 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 0, ptr %i.w, align 8
  %i.x = add nuw nsw i64 %i.l, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.x, 64
  br i1 %exitcond.not.3, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.y = call noundef i64 @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 64) ; 3 uses
  %i.z = icmp ult i64 %i.y, 65
  br i1 %i.z, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = call { i64, ptr } @_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB5_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef %i.y) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 3 uses
  switch i64 %i.ab, label %bb.m [
    i64 2, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task8blocking14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB14_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1e_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task8blocking14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB14_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB14_7plugins11PluginErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1e_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1e_7plugins11PluginErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task8blocking14spawn_blockingNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtBW_13HeapDumpErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB16_13HeapDumpErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteNtNtCscdodAO9FK5_5alloc6string6StringBR_ECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteNtNtCscdodAO9FK5_5alloc6string6StringINtNtBV_3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteReINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteReNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteReNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RINvXsc_NtCsdLkRf3gRIi6_10serde_json3rawNtB6_15BoxedFromStringNtNtCs5CfTnloWo2c_10serde_core2de15DeserializeSeed11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read7StrReadEECsbakdBCgU4AF_16influxdb3_server
declare hidden void @_RINvXsc_NtCsdLkRf3gRIi6_10serde_json3rawNtB6_15BoxedFromStringNtNtCs5CfTnloWo2c_10serde_core2de15DeserializeSeed11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read7StrReadEECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsk_NtNtCsdLkRf3gRIi6_10serde_json5value2deNtB6_13KeyClassifierNtNtCs5CfTnloWo2c_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read9SliceReadEECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsc_NtCsdLkRf3gRIi6_10serde_json3rawNtB6_15BoxedFromStringNtNtCs5CfTnloWo2c_10serde_core2de15DeserializeSeed11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read9SliceReadEECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4https6_1__NtB8_22LastCacheCreateRequestNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpse_1__NtB8_36ProcessingEngineTriggerCreateRequestNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1z_7Visitor9visit_strNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs15_NtNtCs5CfTnloWo2c_10serde_core2de5valueINtB7_15MapDeserializerNtNtCscX1haOsHjXZ_16serde_urlencoded2de12PartIteratorNtB7_5ErrorENtB9_9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtNtCscdodAO9FK5_5alloc6string6StringB3r_EEECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorNtB6_5Error12invalid_typeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCsbakdBCgU4AF_16influxdb3_server(i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #23

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtCs4NRVxsYgnAr_4core6option8IntoIterhEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24), i1 noundef zeroext, i8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #18

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i64 noundef) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #23

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCs1LivM9IBWqb_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #18

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCs1LivM9IBWqb_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext, i64 noundef) unnamed_addr #18

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs1LivM9IBWqb_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB18_4LeafE16push_with_handleCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE6kv_mutCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringTINtNtBT_4sync3ArcDNtNtCs7fnekraeopg_15datafusion_expr12table_source11TableSourceEL_ENtCsjGL2vCcvtUM_6schema6SchemaEEE14insert_no_growCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryE8grow_oneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldE8grow_oneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EE8grow_oneCs1LivM9IBWqb_12object_store(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkIBH_INtNtBL_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3n_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4L_5FrameB3n_E4dataENtB5_9TryStream13try_poll_nextB2d_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkIBH_INtNtBL_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3q_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4O_5FrameB3q_E4dataENtB5_9TryStream13try_poll_nextB2d_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkIBH_INtNtBL_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3p_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4N_5FrameB3p_E4dataENtB5_9TryStream13try_poll_nextB2d_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkIBH_INtNtNtBL_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB5_6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2c_6marker4SendEL_EENcNtINtNtB2c_6result6ResultB3u_NtNtB2c_7convert10InfallibleE2Ok0ENvYB3u_INtB4Z_4IntoB3u_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB62_5FrameB3u_E4dataENtB5_9TryStream13try_poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkIBH_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataENtB5_9TryStream13try_poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(144), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkINtNtBL_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3c_9Multipart16with_constraintsB1E_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB24_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0ENtB5_9TryStream13try_poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkINtNtBL_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3j_E4intoENtB5_9TryStream13try_poll_nextB29_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkINtNtBL_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3m_E4intoENtB5_9TryStream13try_poll_nextB29_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkINtNtBL_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3l_E4intoENtB5_9TryStream13try_poll_nextB29_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkINtNtNtBL_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB5_6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB28_6marker4SendEL_EENcNtINtNtB28_6result6ResultB3q_NtNtB28_7convert10InfallibleE2Ok0ENvYB3q_INtB4V_4IntoB3q_E4intoENtB5_9TryStream13try_poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream5MapOkINtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3o_E4intoENtB5_9TryStream13try_poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(144), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENtB5_9TryStream13try_poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENtB5_9TryStream13try_poll_nextB1J_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENtB5_9TryStream13try_poll_nextB1J_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENtB5_9TryStream13try_poll_nextB1J_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENtB5_9TryStream13try_poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(144), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtBK_6marker4SendEL_EEB1K_9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs5SRHcsv2kA9_12futures_util3fnsNcNtINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtBL_7convert10InfallibleE2Ok0INtB4_6FnMut1B1i_E8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoBU_E4intoEINtB5_6FnMut1INtNtB1y_6result6ResultBU_NtB1w_10InfallibleEE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyINtNtNtNtB7_6stream6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2A_6marker4SendEL_EENcNtINtNtB2A_6result6ResultB4q_NtNtB2A_7convert10InfallibleE2Ok0EB4q_B5T_E0EINtB5_6FnMut1IB5t_INtNtCshmaE5oGZBqQ_9http_body5frame5FrameB4q_EB5T_EE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyINtNtNtB7_6stream7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCshmaE5oGZBqQ_9http_body5frame5FrameB3I_EB4h_EE8call_mutB2B_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyINtNtNtB7_6stream7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCshmaE5oGZBqQ_9http_body5frame5FrameB3L_EB4k_EE8call_mutB2B_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyINtNtNtB7_6stream7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCshmaE5oGZBqQ_9http_body5frame5FrameB3K_EB4j_EE8call_mutB2B_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyINtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCshmaE5oGZBqQ_9http_body5frame5FrameB3E_EB4d_EE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvMNtCshmaE5oGZBqQ_9http_body5frameINtBU_5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4dataEINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB1C_NtNtB2A_7convert10InfallibleEE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvMNtCsgwXesxSsAwT_6multer9multipartNtBY_9Multipart16with_constraintsINtNtNtB7_6stream4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2B_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringEs_0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB3D_B4c_EE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvMNtCshmaE5oGZBqQ_9http_body5frameINtBU_5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4dataEINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB1C_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvMNtCshmaE5oGZBqQ_9http_body5frameINtBU_5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4dataEINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB1C_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNCINvMNtCsgwXesxSsAwT_6multer9multipartNtBX_9Multipart16with_constraintsINtNtNtB7_6stream4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2A_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB3C_B4b_EE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoBU_E4intoEINtB5_6FnMut1INtNtB1y_6result6ResultBU_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoBU_E4intoEINtB5_6FnMut1INtNtB1y_6result6ResultBU_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8call_mutCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCscdodAO9FK5_5alloc6stringNtB5_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsgJv5yGpdWgp_3hex5errorNtB4_12FromHexErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvMs1_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB8_11LogicalPlan16display_graphvizNtB2_7WrapperNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvMs1_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB8_11LogicalPlan21display_indent_schemaNtB2_7WrapperNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io18default_read_exactINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read11read_to_end(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read13read_vectored(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvXs3_NtNtB2_8buffered9bufreaderINtBP_9BufReaderNtNtB4_2fs4FileENtB2_4Read14read_to_string0ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsaIKnL9StOw_6anyhow7contextINtB5_6QuotedQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtBP_5Write9write_str(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs7fnekraeopg_15datafusion_expr12var_provider11VarProviderNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1I_4SyncEL_E9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs6gU0GsN6MoR_8lock_api5mutex5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtCsamjPIc071P4_6metric20HistogramObservationyEEE9drop_slowCsaRedpzzhJaR_10trace_http(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapIBw_eENtCsj9JzdWj4GcM_12arrow_schema11SortOptionsEE9drop_slowCsjGL2vCcvtUM_6schema(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicyEE9drop_slowCs5uU3ebUyQFg_20datafusion_execution(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaE9drop_slowCs6ePPILGZvJ2_11arrow_array(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column15TimestampColumnE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtB5_11BoolVisitorNtB7_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs5CfTnloWo2c_10serde_core2de5implsNtB2_11UnitVisitorNtB4_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs1a_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojENtBb_11Deserialize11deserializeNtB2_14NonZeroVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs1c_NtNtCs5CfTnloWo2c_10serde_core2de5implsjNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs8_NtNtCs3tYbhKVn990_6flate22gz4readINtB5_14MultiGzDecoderRShENtNtCs2AWtUsOyxgP_3std2io4Read4readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(320), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs3tYbhKVn990_6flate22gz4read14MultiGzDecoderRShENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(320), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderNtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtBa_5slice4iter4IterB14_EECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0
end_hunk_1
