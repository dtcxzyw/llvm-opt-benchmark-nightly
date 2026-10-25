Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.240?download=true
inline.NumInlined: 472
inline.NumDeleted: 255
begin_hunk_0_@_RNvXs7_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io10async_read9AsyncRead9poll_readCsl8OoimOLbh_6qdrant:bb.a
    i64 3, label %bb.f
    i64 0, label %bb.g
    i64 1, label %bb.h
  ], !prof !15

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.k, !noalias !1258

.noexc.i:                                         ; preds = %bb.e
  %i.t = lshr i64 %i.q, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1258, !nonnull !7, !noundef !7
  %i.x = invoke noundef i8 %i.w(i32 noundef %i.u)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.k, !noalias !1258, !inline_history !0

bb.f:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.q, 32
  %i.z = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.y to i8 ; 2 uses
  %i.aa = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.z)
  call void @llvm.assume(i1 %i.aa)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.g:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !16, !noalias !1258, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %.val.i, i64 31
  %i.ae = load i8, ptr %i.ad, align 8, !range !16, !noalias !1258, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.i:                                             ; preds = %bb.c
  %i.af = load i64, ptr %i.p, align 8, !noalias !1257, !noundef !7 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.sink.split.i, label %.thread33

.sink.split.i:                                    ; preds = %bb.i
  %i.ah = load i8, ptr %i.d, align 1, !range !25, !alias.scope !1256, !noundef !7
  %.14.i = or i8 %i.ah, 1
  store i8 %.14.i, ptr %i.d, align 1, !alias.scope !1256
  br label %.thread33

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.ae, %bb.h ], [ %switch.idx.cast.i.i.i.i, %bb.f ], [ %i.ac, %bb.g ], [ %i.x, %.noexc.i ]
  %i.ai = icmp eq i8 %.sroa.0.0.i.i, 6
  br i1 %i.ai, label %bb.m, label %.thread30

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %.noexc.i, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #24
          to label %bb.j unwind label %bb.l, !noalias !1258

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1258
  unreachable

.thread33:                                        ; preds = %bb.i, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1257
  br label %.thread

bb.m:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  %i.al = load i8, ptr %i.d, align 1, !range !25, !alias.scope !1256, !noundef !7
  %..i = or i8 %i.al, 1
  store i8 %..i, ptr %i.d, align 1, !alias.scope !1256
  br label %.thread30

.thread30:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

.thread:                                          ; preds = %bb.a, %bb.a, %.thread33
  %.sroa.12.11126 = phi i64 [ %i.af, %.thread33 ], [ 0, %bb.a ], [ 0, %bb.a ]
  %.sroa.8.11225 = phi ptr [ %i.n, %.thread33 ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !7 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !7 ; 5 uses
  %i.aq = sub i64 %i.an, %i.ap
  %..i5 = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.12.11126) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %i.ar = add i64 %..i5, %i.ap                    ; 6 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ule i64 %i.ar, %i.an
  %or.cond.i = and i1 %i.as, %i.at
  br i1 %or.cond.i, label %bb.n, label %bb.o, !prof !29

bb.n:                                             ; preds = %.thread
  %i.au = load ptr, ptr %2, align 8, !alias.scope !1259, !nonnull !7, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %.sroa.8.11225, i64 range(i64 0, -9223372036854775808) %..i5, i1 false), !noalias !1260
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !1259, !noundef !7
  %i.ay = icmp ult i64 %i.ax, %i.ar
  br i1 %i.ay, label %bb.p, label %_RNvMNtNtCsjZG7hsAZr3B_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit

bb.o:                                             ; preds = %.thread
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %i.ar, i64 noundef %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22, !noalias !1261
  unreachable

bb.p:                                             ; preds = %bb.n
  store i64 %i.ar, ptr %i.aw, align 8, !alias.scope !1259
  br label %_RNvMNtNtCsjZG7hsAZr3B_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit

_RNvMNtNtCsjZG7hsAZr3B_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit: ; preds = %bb.n, %bb.p
  store i64 %i.ar, ptr %i.ao, align 8, !alias.scope !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 859
  %i.bb = load i8, ptr %i.ba, align 1, !range !10, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bd = load i8, ptr %i.bc, align 4, !range !10, !noundef !7
  store ptr %i.az, ptr %i.c, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.bb, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %i.bd, ptr %i.bf, align 1
  call void @_RNvXs3_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionNtB5_6ReaderNtNtNtCsexYYUdYSQU6_5alloc2io8buf_read7BufRead7consume(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %..i5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %.thread30, %_RNvXs8_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io14async_buf_read12AsyncBufRead13poll_fill_bufCsl8OoimOLbh_6qdrant.exit.thread18, %_RNvMNtNtCsjZG7hsAZr3B_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit
  %.sroa.4.0 = phi ptr [ null, %_RNvMNtNtCsjZG7hsAZr3B_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit ], [ %.val.i, %.thread30 ], [ undef, %_RNvXs8_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io14async_buf_read12AsyncBufRead13poll_fill_bufCsl8OoimOLbh_6qdrant.exit.thread18 ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMNtNtCsjZG7hsAZr3B_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit ], [ 0, %.thread30 ], [ 1, %_RNvXs8_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io14async_buf_read12AsyncBufRead13poll_fill_bufCsl8OoimOLbh_6qdrant.exit.thread18 ]
  %i.bg = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bh = insertvalue { i64, ptr } %i.bg, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.bh
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB1W_2io11async_write10AsyncWrite10poll_flushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !7
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_flushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB1W_2io11async_write10AsyncWrite10poll_writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !7
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split.a, label %bb.b

.sink.split.a:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCsbM8FbnNn9aS_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.d)
  %i.e = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %2 = or i8 %i.e, 2                              ; 2 uses
  store i8 %2, ptr %i.b, align 1
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
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.i = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite13poll_shutdownCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB1W_2io11async_write10AsyncWrite19poll_write_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !7
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite19poll_write_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io11async_write10AsyncWrite10poll_flushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !7
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_flushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io11async_write10AsyncWrite10poll_writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !7
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io11async_write10AsyncWrite13poll_shutdownCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split.a, label %bb.b

.sink.split.a:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCsbM8FbnNn9aS_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.d)
  %i.e = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %2 = or i8 %i.e, 2                              ; 2 uses
  store i8 %2, ptr %i.b, align 1
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
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.i = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite13poll_shutdownCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs9_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB1W_2io11async_write10AsyncWrite19poll_write_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1089
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !7
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !7
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %i.h = call { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite19poll_write_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs5TwP8AC98I6_5tower5limit11concurrency5layerNtB4_21ConcurrencyLimitLayerINtCskAVbmAUIDVC_11tower_layer5LayerINtNtNtBa_4util6either6EitherINtNtNtB8_4rate7service9RateLimitINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service9reconnect9ReconnectINtNtB30_10connection22MakeSendRequestServiceINtNtB30_9connector9ConnectorNtNtB32_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB2V_EE5layerCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([488 x i8]) align 8 captures(none) dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(440) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !7
  tail call void @_RNvMNtNtNtCs5TwP8AC98I6_5tower5limit11concurrency7serviceINtB2_16ConcurrencyLimitINtNtNtB8_4util6either6EitherINtNtNtB6_4rate7service9RateLimitINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service9reconnect9ReconnectINtNtB2m_10connection22MakeSendRequestServiceINtNtB2m_9connector9ConnectorNtNtB2o_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB2h_EE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([488 x i8]) align 8 captures(none) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %2, i64 noundef %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs5TwP8AC98I6_5tower5limit11concurrency5layerNtB4_21ConcurrencyLimitLayerINtCskAVbmAUIDVC_11tower_layer5LayerINtNtNtBa_4util6either6EitherINtNtNtB8_4rate7service9RateLimitINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service9reconnect9ReconnectINtNtB30_10connection22MakeSendRequestServiceINtNtB30_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB2V_EE5layerCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([472 x i8]) align 8 captures(none) dereferenceable(472) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(424) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !7
  tail call void @_RNvMNtNtNtCs5TwP8AC98I6_5tower5limit11concurrency7serviceINtB2_16ConcurrencyLimitINtNtNtB8_4util6either6EitherINtNtNtB6_4rate7service9RateLimitINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service9reconnect9ReconnectINtNtB2m_10connection22MakeSendRequestServiceINtNtB2m_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB2h_EE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([472 x i8]) align 8 captures(none) dereferenceable(472) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %2, i64 noundef %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs5TwP8AC98I6_5tower5limit11concurrency5layerNtB4_21ConcurrencyLimitLayerINtCskAVbmAUIDVC_11tower_layer5LayerINtNtNtNtCsgOCJwUSa4vG_5tonic9transport7service12grpc_timeout11GrpcTimeoutINtNtNtCsl8OoimOLbh_6qdrant5tonic7logging17LoggingMiddlewareINtNtB3c_15tonic_telemetry21TonicTelemetryServiceINtNtNtBa_4util6either6EitherINtNtB3c_4auth14AuthMiddlewareNtNtNtB24_7service6router6RoutesEB5P_EEEEE5layerB3e_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !7
  tail call void @_RNvMNtNtNtCs5TwP8AC98I6_5tower5limit11concurrency7serviceINtB2_16ConcurrencyLimitINtNtNtNtCsgOCJwUSa4vG_5tonic9transport7service12grpc_timeout11GrpcTimeoutINtNtNtCsl8OoimOLbh_6qdrant5tonic7logging17LoggingMiddlewareINtNtB2y_15tonic_telemetry21TonicTelemetryServiceINtNtNtB8_4util6either6EitherINtNtB2y_4auth14AuthMiddlewareNtNtNtB1q_7service6router6RoutesEB5b_EEEEE3newB2A_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service9connectorINtB4_9ConnectorNtNtB8_13uds_connector12UdsConnectorEINtCs372LqxyVCI8_13tower_service7ServiceNtNtCs577yCKf7gy3_4http3uri3UriE10poll_readyCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service9connectorINtB4_9ConnectorNtNtB8_13uds_connector12UdsConnectorEINtCs372LqxyVCI8_13tower_service7ServiceNtNtCs577yCKf7gy3_4http3uri3UriE4callCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1440 x i8], align 8              ; 9 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !range !20, !noundef !7 ; 3 uses
  %.not = icmp eq i32 %i.e, -2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1267, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !1268
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1267, !nonnull !7, !noundef !7 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !noalias !1268
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 -2, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.p = load i8, ptr %1, align 8, !range !14, !noundef !7 ; 2 uses
  switch i8 %i.p, label %default.unreachable21 [
    i8 0, label %bb.j
    i8 2, label %bb.i
    i8 1, label %.split
  ], !prof !30

bb.h:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i8, ptr %i.q, align 8, !range !10, !alias.scope !1267, !noundef !7
  %.not.i = icmp eq i32 %i.e, -1
  %i.s = load i64, ptr %i.f, align 8, !alias.scope !1267
  %.sroa.0.0.i = select i1 %.not.i, i64 undef, i64 %i.s
  store i64 %.sroa.0.0.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.r, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.g

default.unreachable21:                            ; preds = %bb.g
  unreachable

.split:                                           ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !10, !noundef !7
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noundef !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !7
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split, %bb.i, %bb.g, %bb.k
  %.sroa.0.0 = phi i8 [ %i.p, %bb.g ], [ %i.ao, %bb.k ], [ 0, %bb.i ], [ 0, %.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.ad = invoke { ptr, ptr } @_RNvXs_NtNtNtCsgOCJwUSa4vG_5tonic9transport7channel13uds_connectorNtB4_12UdsConnectorINtCs372LqxyVCI8_13tower_service7ServiceNtNtCs577yCKf7gy3_4http3uri3UriE4call(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %.split, %bb.i
  %.sroa.07.019 = phi ptr [ @21, %.split ], [ %i.z, %bb.i ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.07.019, align 1
  %i.af = xor i32 %i.ae, 1886680168
  %i.ag = getelementptr i8, ptr %.sroa.07.019, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 115
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = zext i1 %i.an to i8
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ap = extractvalue { ptr, ptr } %i.ad, 0
  %i.aq = extractvalue { ptr, ptr } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
end_hunk_0
