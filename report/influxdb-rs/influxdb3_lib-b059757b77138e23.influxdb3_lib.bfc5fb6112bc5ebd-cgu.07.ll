Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.07?download=true
inline.NumInlined: 5535
inline.NumDeleted: 2839
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf13poll_read_bufINtNtNtCsi8UQarL1hXO_2h25codec12framed_write11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB2S_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB16_5proto7streams10prioritize11PrioritizedINtNtNtB23_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtNtB6l_9bytes_mut8BytesMutECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre1.i, %bb.c ]
  %i.k = phi i64 [ %.val, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !alias.scope !1762, !nonnull !6, !noundef !6
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
  %i.q = call { i64, ptr } @_RNvXs2_NtNtCsi8UQarL1hXO_2h25codec12framed_writeINtB5_11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB21_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtB1c_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtNtNtB3m_2io10async_read9AsyncRead9poll_readCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(424) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) ; 2 uses
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
  br i1 %.not17, label %bb.h, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8
  %i.z = icmp eq ptr %i.m, %i.y
  br i1 %i.z, label %bb.j, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #32
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedPhBM_ECs4oFq2PzodUt_7reqwest(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !1763, !noundef !6
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !1763, !noundef !6 ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.k, label %_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut.exit, !prof !8

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1763
  store i64 %i.x, ptr %i.a, align 8, !noalias !1763
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !1763
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #32, !noalias !1763
  unreachable

_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut.exit: ; preds = %bb.j
  %i.af = add i64 %i.ab, %i.x
  store i64 %i.af, ptr %i.e, align 8, !alias.scope !1763
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
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf13poll_read_bufNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileQNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !align !9, !noundef !6 ; 4 uses
  %i.e = getelementptr i8, ptr %.val, i64 8       ; 4 uses
  %.val.i = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %.not = icmp eq i64 %.val.i, 9223372036854775807
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1768, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val.i
  br i1 %i.h, label %bb.c, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef 64, i1 noundef zeroext true) ; 0 uses
  %.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !1768
  %.pre1.i.i = load i64, ptr %i.f, align 8, !alias.scope !1768
  br label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre1.i.i, %bb.c ]
  %i.k = phi i64 [ %.val.i, %bb.b ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.val, align 8, !alias.scope !1768, !nonnull !6, !noundef !6
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

bb.d:                                             ; preds = %bb.a, %bb.l, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.l ], [ %i.ag, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.l ], [ 0, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 0, %bb.a ]
  %i.t = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, ptr } %i.t, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.u

bb.e:                                             ; preds = %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.v = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %.not16 = icmp eq ptr %i.v, null
  br i1 %.not16, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %i.x = load i64, ptr %i.p, align 8, !noundef !6 ; 6 uses
  %.not17 = icmp ugt i64 %i.x, %i.w
  br i1 %.not17, label %bb.h, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8
  %i.z = icmp eq ptr %i.m, %i.y
  br i1 %i.z, label %bb.j, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #32
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedPhBM_ECs4oFq2PzodUt_7reqwest(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !1769, !noundef !6
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !1769, !noundef !6 ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.k, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !8

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1769
  store i64 %i.x, ptr %i.a, align 8, !noalias !1769
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !1769
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #32, !noalias !1769
  unreachable

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut11advance_mutCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.j
  %i.af = add i64 %i.ab, %i.x
  store i64 %i.af, ptr %i.e, align 8, !alias.scope !1769
  %i.ag = inttoptr i64 %i.x to ptr
  br label %bb.d

bb.l:                                             ; preds = %bb.e, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.5.1 = phi ptr [ undef, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.v, %bb.e ]
  %.sroa.0.1 = phi i64 [ 2, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut9chunk_mutCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1024 x i8], align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i64, ptr %i.c, align 8, !alias.scope !31, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.val19 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !6 ; 6 uses
  %i.e = icmp ugt i64 %.val, %.val19
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0)
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.d, %bb.a, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.7.0 = phi ptr [ undef, %bb.d ], [ %.sroa.016.0.in, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ null, %bb.a ], [ %i.m, %bb.f ], [ undef, %bb.j ], [ %i.ai, %bb.k ]
  %.sroa.0.0 = phi i64 [ %i.l, %bb.d ], [ 0, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 0, %bb.a ], [ 1, %bb.f ], [ 2, %bb.j ], [ 1, %bb.k ]
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, ptr } %i.g, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.h

bb.d:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !1779, !nonnull !6, !noundef !6
  %i.i = sub nuw i64 %.val, %.val19               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val19
  %i.k = tail call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  switch i64 %i.l, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.l
  %.pre-phi = phi i64 [ %i.i, %bb.d ], [ %i.ad, %bb.l ] ; 2 uses
  %.sroa.016.0.in = phi ptr [ %i.m, %bb.d ], [ %i.ai, %bb.l ] ; 2 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  %i.n = icmp ult i64 %.pre-phi, %.sroa.016.0
  br i1 %i.n, label %bb.h, label %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1780
  store i64 %.sroa.016.0, ptr %i.a, align 8, !noalias !1780
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.pre-phi, ptr %i.o, align 8, !noalias !1780
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #32, !noalias !1780
  unreachable

_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.g
  %i.p = add i64 %.val19, %.sroa.016.0
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !1780
  br label %bb.c

bb.i:                                             ; preds = %bb.i, %bb.e
  %i.q = phi i64 [ 0, %bb.e ], [ %i.ac, %bb.i ]   ; 5 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 0, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %i.q, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ac, 64
  br i1 %exitcond.not.3, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.i

_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !1783, !noalias !1782, !nonnull !6, !noundef !6
  %i.ad = sub nuw i64 %.val, %.val19              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val19
  store ptr %i.ae, ptr %i.b, align 8, !alias.scope !1782, !noalias !1781
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !alias.scope !1782, !noalias !1781
  %i.ag = call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef range(i64 0, 65) 1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 3 uses
  switch i64 %i.ah, label %bb.k [
    i64 2, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.l:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtCsuxFxh2mtOX_5bytes3buf5chain5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB51_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtB51_5bytes5BytesEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 13 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !align !9, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val19 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1807, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1807, !noundef !6
  %i.f = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i.i, i64 %i.e)
  %i.g = tail call noundef i64 @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf9remainingCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %.val19)
  %i.h = or i64 %i.g, %i.f
  %.not = icmp eq i64 %i.h, 0
  %.sroa.0.0.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %.not, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0)
  br i1 %i.i, label %bb.f, label %bb.c

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i, %bb.i, %bb.p, %bb.q, %bb.g, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.a
  %.sroa.7.0 = phi ptr [ undef, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.ax, %bb.q ], [ null, %bb.a ], [ %i.u, %bb.g ], [ undef, %bb.p ], [ %.sroa.016.0.in, %bb.i ], [ %.sroa.016.0.in, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i ]
  %.sroa.0.0 = phi i64 [ %i.t, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 1, %bb.q ], [ 0, %bb.a ], [ 1, %bb.g ], [ 2, %bb.p ], [ 0, %bb.i ], [ 0, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.k

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !1808, !noundef !6 ; 2 uses
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1808, !noundef !6 ; 3 uses
  %i.l = icmp ugt i64 %.val.i.i, %.val1.i.i
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call { ptr, i64 } @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %.val19)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !1809, !nonnull !6, !noundef !6
  %i.n = sub nuw i64 %.val.i.i, %.val1.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val1.i.i
  %i.p = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %i.n, 1
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.d, %bb.e
  %.pn.i = phi { ptr, i64 } [ %i.q, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.0.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.r = extractvalue { ptr, i64 } %.pn.i, 1
  %i.s = tail call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.r) ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 3 uses
  switch i64 %i.t, label %bb.g [
    i64 2, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.k

bb.g:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.h:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.r
  %.sroa.016.0.in = phi ptr [ %i.ax, %bb.r ], [ %i.u, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ] ; 3 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1810, !noundef !6 ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !alias.scope !1810, !noundef !6 ; 4 uses
  %i.w = call i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i, i64 %i.v) ; 3 uses
  %.not1.i = icmp ugt i64 %.val1.i.i.i, %i.v
  br i1 %.not1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.h
  %.sroa.0.0.i26 = phi i64 [ %.sroa.016.0, %bb.h ], [ %i.y, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  call void @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val19, i64 noundef %.sroa.0.0.i26)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.j:                                             ; preds = %bb.h
  %.not.i = icmp ult i64 %i.w, %.sroa.016.0
  br i1 %.not.i, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.j
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.d, align 8, !alias.scope !1811
  %i.y = sub nuw i64 %.sroa.016.0, %i.w
  br label %bb.i

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i: ; preds = %bb.j
  %i.z = add i64 %i.v, %.sroa.016.0
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !1812
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.k:                                             ; preds = %bb.k, %bb.f
  %i.aa = phi i64 [ 0, %bb.f ], [ %i.am, %bb.k ]  ; 5 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i64 0, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %i.aa, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, 64
  br i1 %exitcond.not.3, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %.val.i.i.i27 = load i64, ptr %i.c, align 8, !alias.scope !1817, !noalias !1818, !noundef !6 ; 2 uses
  %.val1.i.i.i28 = load i64, ptr %i.d, align 8, !alias.scope !1817, !noalias !1818, !noundef !6 ; 3 uses
  %i.an = icmp ugt i64 %.val.i.i.i27, %.val1.i.i.i28
  br i1 %i.an, label %bb.m, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !1819, !noalias !1818, !nonnull !6, !noundef !6
  %i.ao = sub nuw i64 %.val.i.i.i27, %.val1.i.i.i28
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.val1.i.i.i28
  store ptr %i.ap, ptr %i.a, align 8, !alias.scope !1818, !noalias !1815
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !alias.scope !1818, !noalias !1815
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i.sroa.phi = phi ptr [ %.sroa.0.0.i.i.i.sroa.gep, %bb.m ], [ %i.a, %bb.l ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ar = sub nuw nsw i64 64, %.sroa.0.0.i.i.i
  %i.as = call noundef i64 @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %.val19, ptr noalias noundef nonnull align 8 %.sroa.0.0.i.i.i.sroa.phi, i64 noundef range(i64 0, 65) %i.ar)
  %i.at = add i64 %i.as, %.sroa.0.0.i.i.i         ; 3 uses
  %i.au = icmp ult i64 %i.at, 65
  br i1 %i.au, label %bb.o, label %bb.n, !prof !24

bb.n:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.at, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #32
  unreachable

bb.o:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.av = call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 65) %i.at) ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 3 uses
  switch i64 %i.aw, label %bb.q [
    i64 2, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1024 x i8], align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i64, ptr %i.c, align 8, !alias.scope !31, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.val19 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !6 ; 6 uses
  %i.e = icmp ugt i64 %.val, %.val19
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0)
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.d, %bb.a, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.7.0 = phi ptr [ undef, %bb.d ], [ %.sroa.016.0.in, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ null, %bb.a ], [ %i.m, %bb.f ], [ undef, %bb.j ], [ %i.ai, %bb.k ]
  %.sroa.0.0 = phi i64 [ %i.l, %bb.d ], [ 0, %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 0, %bb.a ], [ 1, %bb.f ], [ 2, %bb.j ], [ 1, %bb.k ]
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, ptr } %i.g, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.h

bb.d:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !1829, !nonnull !6, !noundef !6
  %i.i = sub nuw i64 %.val, %.val19               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val19
  %i.k = tail call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  switch i64 %i.l, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.l
  %.pre-phi = phi i64 [ %i.i, %bb.d ], [ %i.ad, %bb.l ] ; 2 uses
  %.sroa.016.0.in = phi ptr [ %i.m, %bb.d ], [ %i.ai, %bb.l ] ; 2 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.n = icmp ult i64 %.pre-phi, %.sroa.016.0
  br i1 %i.n, label %bb.h, label %_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1830
  store i64 %.sroa.016.0, ptr %i.a, align 8, !noalias !1830
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.pre-phi, ptr %i.o, align 8, !noalias !1830
  call void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #32, !noalias !1830
  unreachable

_RNvXs1_NtNtCsuxFxh2mtOX_5bytes3buf8buf_implINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.g
  %i.p = add i64 %.val19, %.sroa.016.0
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !1830
  br label %bb.c

bb.i:                                             ; preds = %bb.i, %bb.e
  %i.q = phi i64 [ 0, %bb.e ], [ %i.ac, %bb.i ]   ; 5 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 0, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %i.q, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ac, 64
  br i1 %exitcond.not.3, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.i

_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !1833, !noalias !1832, !nonnull !6, !noundef !6
  %i.ad = sub nuw i64 %.val, %.val19              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val19
  store ptr %i.ae, ptr %i.b, align 8, !alias.scope !1832, !noalias !1831
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !alias.scope !1832, !noalias !1831
  %i.ag = call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef range(i64 0, 65) 1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 3 uses
  switch i64 %i.ah, label %bb.k [
    i64 2, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.l:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1a9RECLZJLX_10tokio_util4util8poll_buf14poll_write_bufINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtCsuxFxh2mtOX_5bytes3buf5chain5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB4c_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtB4c_5bytes5BytesEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 13 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !align !9, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val19 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1857, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1857, !noundef !6
  %i.f = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i.i, i64 %i.e)
  %i.g = tail call noundef i64 @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf9remainingCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %.val19)
  %i.h = or i64 %i.g, %i.f
  %.not = icmp eq i64 %i.h, 0
  %.sroa.0.0.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %.not, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0)
  br i1 %i.i, label %bb.f, label %bb.c

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i, %bb.i, %bb.p, %bb.q, %bb.g, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.a
  %.sroa.7.0 = phi ptr [ undef, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.ax, %bb.q ], [ null, %bb.a ], [ %i.u, %bb.g ], [ undef, %bb.p ], [ %.sroa.016.0.in, %bb.i ], [ %.sroa.016.0.in, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i ]
  %.sroa.0.0 = phi i64 [ %i.t, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 1, %bb.q ], [ 0, %bb.a ], [ 1, %bb.g ], [ 2, %bb.p ], [ 0, %bb.i ], [ 0, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.k

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !1858, !noundef !6 ; 2 uses
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1858, !noundef !6 ; 3 uses
  %i.l = icmp ugt i64 %.val.i.i, %.val1.i.i
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call { ptr, i64 } @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %.val19)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !1859, !nonnull !6, !noundef !6
  %i.n = sub nuw i64 %.val.i.i, %.val1.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val1.i.i
  %i.p = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %i.n, 1
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.d, %bb.e
  %.pn.i = phi { ptr, i64 } [ %i.q, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.0.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.r = extractvalue { ptr, i64 } %.pn.i, 1
  %i.s = tail call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.r) ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 3 uses
  switch i64 %i.t, label %bb.g [
    i64 2, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.k

bb.g:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.h:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.r
  %.sroa.016.0.in = phi ptr [ %i.ax, %bb.r ], [ %i.u, %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ] ; 3 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1860, !noundef !6 ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !alias.scope !1860, !noundef !6 ; 4 uses
  %i.w = call i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i, i64 %i.v) ; 3 uses
  %.not1.i = icmp ugt i64 %.val1.i.i.i, %i.v
  br i1 %.not1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.h
  %.sroa.0.0.i26 = phi i64 [ %.sroa.016.0, %bb.h ], [ %i.y, %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  call void @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val19, i64 noundef %.sroa.0.0.i26)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.j:                                             ; preds = %bb.h
  %.not.i = icmp ult i64 %i.w, %.sroa.016.0
  br i1 %.not.i, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.j
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.d, align 8, !alias.scope !1861
  %i.y = sub nuw i64 %.sroa.016.0, %i.w
  br label %bb.i

_RNvXNtNtCsuxFxh2mtOX_5bytes3buf8buf_implQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit9.i: ; preds = %bb.j
  %i.z = add i64 %i.v, %.sroa.016.0
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !1862
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.k:                                             ; preds = %bb.k, %bb.f
  %i.aa = phi i64 [ 0, %bb.f ], [ %i.am, %bb.k ]  ; 5 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i64 0, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %i.aa, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, 64
  br i1 %exitcond.not.3, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %.val.i.i.i27 = load i64, ptr %i.c, align 8, !alias.scope !1867, !noalias !1868, !noundef !6 ; 2 uses
  %.val1.i.i.i28 = load i64, ptr %i.d, align 8, !alias.scope !1867, !noalias !1868, !noundef !6 ; 3 uses
  %i.an = icmp ugt i64 %.val.i.i.i27, %.val1.i.i.i28
  br i1 %i.an, label %bb.m, label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !1869, !noalias !1868, !nonnull !6, !noundef !6
  %i.ao = sub nuw i64 %.val.i.i.i27, %.val1.i.i.i28
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.val1.i.i.i28
  store ptr %i.ap, ptr %i.a, align 8, !alias.scope !1868, !noalias !1865
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !alias.scope !1868, !noalias !1865
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i.sroa.phi = phi ptr [ %.sroa.0.0.i.i.i.sroa.gep, %bb.m ], [ %i.a, %bb.l ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ar = sub nuw nsw i64 64, %.sroa.0.0.i.i.i
  %i.as = call noundef i64 @_RNvXs_NtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %.val19, ptr noalias noundef nonnull align 8 %.sroa.0.0.i.i.i.sroa.phi, i64 noundef range(i64 0, 65) %i.ar)
  %i.at = add i64 %i.as, %.sroa.0.0.i.i.i         ; 3 uses
  %i.au = icmp ult i64 %i.at, 65
  br i1 %i.au, label %bb.o, label %bb.n, !prof !24

bb.n:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.at, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #32
  unreachable

bb.o:                                             ; preds = %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.av = call { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 65) %i.at) ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 3 uses
  switch i64 %i.aw, label %bb.q [
    i64 2, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtNtCsuxFxh2mtOX_5bytes3buf5chainINtB4_5ChainQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsi8UQarL1hXO_2h25proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
