Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.183?download=true
inline.NumInlined: 206
inline.NumDeleted: 115
begin_hunk_0_@_RNvXs1_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io4Read9poll_readCsPYQCUnoTxQ_10collection:bb.a
  %.not7 = icmp ugt i64 %i.q, %i.p
  br i1 %.not7, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit, !prof !15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = add i64 %i.q, %i.e                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.e
  br i1 %i.s, label %bb.f, label %_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit, !prof !12

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
  unreachable

_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit
  store i64 %i.r, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !6
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %i.r)
  store i64 %..i.i, ptr %i.t, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit, %bb.d
  %.sroa.3.0 = phi ptr [ %i.n, %bb.d ], [ null, %_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit ]
  %i.v = insertvalue { i64, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.v

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection(i64 0, ptr null) #13
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io4Read9poll_readCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 6 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.h = sub nuw i64 %i.c, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = call { i64, ptr } @_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1
  %.not = icmp ne ptr %i.n, null
  %or.cond.not = select i1 %i.o, i1 true, i1 %.not
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.j, align 8, !noundef !6 ; 2 uses
  %i.q = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %.not7 = icmp ugt i64 %i.q, %i.p
  br i1 %.not7, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit, !prof !15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = add i64 %i.q, %i.e                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.e
  br i1 %i.s, label %bb.f, label %_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit, !prof !12

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
  unreachable

_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection.exit
  store i64 %i.r, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !6
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %i.r)
  store i64 %..i.i, ptr %i.t, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit, %bb.d
  %.sroa.3.0 = phi ptr [ %i.n, %bb.d ], [ null, %_RNvMs0_NtNtCs3WWrd2JY12C_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit ]
  %i.v = insertvalue { i64, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.v

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsPYQCUnoTxQ_10collection(i64 0, ptr null) #13
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_flushCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !148, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !148, !noundef !6
  store ptr %0, ptr %i.a, align 8, !noalias !149
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !149
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_flushCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !154, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !154, !noundef !6
  store ptr %0, ptr %i.a, align 8, !noalias !155
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !155
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !155
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !155
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write13poll_shutdownCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !159, !noundef !6 ; 2 uses
  %switch.not.i = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not.i, label %.sink.split.i.a, label %_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection.exit

.sink.split.i.a:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCsbM8FbnNn9aS_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.d), !noalias !160
  %i.e = load i8, ptr %i.b, align 1, !range !14, !alias.scope !159, !noundef !6
  %2 = or i8 %i.e, 2                              ; 2 uses
  store i8 %2, ptr %i.b, align 1, !alias.scope !159
  br label %_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection.exit

_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a, %.sink.split.i.a
  %i.f = phi i8 [ %i.c, %bb.a ], [ %2, %.sink.split.i.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8, !noalias !161
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !161
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !161
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !161
  %i.i = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  ret { i64, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write17is_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1096) %0) unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write19poll_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !166, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !166, !noundef !6
  store ptr %0, ptr %i.a, align 8, !noalias !167
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !167
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !167
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !167
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite19poll_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_flushCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !171, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !171, !noundef !6
  store ptr %0, ptr %i.a, align 8, !noalias !172
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !172
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !172
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !172
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_flushCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !177, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !177, !noundef !6
  store ptr %0, ptr %i.a, align 8, !noalias !178
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !178
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !178
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !178
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !178
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write13poll_shutdownCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !182, !noundef !6 ; 2 uses
  %switch.not.i = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not.i, label %.sink.split.i.a, label %_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection.exit

.sink.split.i.a:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCsbM8FbnNn9aS_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.d), !noalias !183
  %i.e = load i8, ptr %i.b, align 1, !range !14, !alias.scope !182, !noundef !6
  %2 = or i8 %i.e, 2                              ; 2 uses
  store i8 %2, ptr %i.b, align 1, !alias.scope !182
  br label %_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection.exit

_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a, %.sink.split.i.a
  %i.f = phi i8 [ %i.c, %bb.a ], [ %2, %.sink.split.i.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !184
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8, !noalias !184
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !184
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !184
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !184
  %i.i = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite13poll_shutdownCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !184
  ret { i64, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write17is_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1096) %0) unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamIBJ_IBJ_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write19poll_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !14, !alias.scope !189, !noundef !6
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !189, !noundef !6
  store ptr %0, ptr %i.a, align 8, !noalias !190
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !190
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !190
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !190
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite19poll_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !190
  ret { i64, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_flushCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write13poll_shutdownCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write17is_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write19poll_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_flushCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write10poll_writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsjZG7hsAZr3B_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtBb_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write13poll_shutdownCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsjZG7hsAZr3B_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtBb_2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write17is_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCslfxrBSw8aGw_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamENtNtNtCs3WWrd2JY12C_5hyper2rt2io5Write19poll_write_vectoredCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsjZG7hsAZr3B_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtBb_2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbcy5BtteWpM_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !noundef !6 ; 2 uses
  store i32 -1, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.d, ptr %i.b, align 4
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.d unwind label %bb.i

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsPYQCUnoTxQ_10collection.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = invoke noundef ptr @_RINvMs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsbcy5BtteWpM_3mio3net3tcp6stream9TcpStreamECsPYQCUnoTxQ_10collection(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.i       ; 4 uses

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsPYQCUnoTxQ_10collection.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsPYQCUnoTxQ_10collection.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsPYQCUnoTxQ_10collection.exit.i
    i64 1, label %bb.h
  ], !prof !8

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = icmp ult ptr %i.g, inttoptr (i64 188978561024 to ptr)
  %i.l = and i64 %i.i, 1095216660480
  %i.m = icmp ne i64 %i.l, 1095216660480
  call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsPYQCUnoTxQ_10collection.exit.i

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.g, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !193
  store i8 3, ptr %i.a, align 8, !alias.scope !193
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsPYQCUnoTxQ_10collection.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsPYQCUnoTxQ_10collection.exit.i, %bb.e
  %.val = load i32, ptr %i.b, align 4, !range !16, !noundef !6
  %i.p = call noundef i32 @close(i32 noundef %.val) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val3 = load i32, ptr %i.b, align 4, !range !16, !noundef !6
  %i.r = call noundef i32 @close(i32 noundef %.val3) #15 ; 0 uses
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbcy5BtteWpM_3mio3net3uds6stream10UnixStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !noundef !6 ; 2 uses
  store i32 -1, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
