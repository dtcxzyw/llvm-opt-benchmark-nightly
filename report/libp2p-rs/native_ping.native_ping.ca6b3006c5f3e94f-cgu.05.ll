Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.05?download=true
inline.NumInlined: 2036
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtCsgrcu2UPjJtD_14futures_rustls6common15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping:bb.a

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.h = phi i64 [ %i.f, %.lr.ph ], [ %i.ag, %.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = call noundef ptr @_RNvYINtNtCsgrcu2UPjJtD_14futures_rustls6common15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read8read_bufCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 8 uses
  store ptr %i.i, ptr %i.b, align 8
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %bb.e, label %bb.c

.loopexit:                                        ; preds = %.backedge, %bb.e, %bb.a, %bb.f
  %.sroa.0.0 = phi ptr [ %i.i, %bb.f ], [ null, %bb.a ], [ null, %.backedge ], [ @22, %bb.e ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split12
    i64 0, label %.split13
    i64 1, label %.split
  ], !prof !20

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.k, !inline_history !3

.split12:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32
  %i.s = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.g, label %bb.f

.split13:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !34, !noundef !9
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread15, label %bb.f

.split:                                           ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.i, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !34, !noundef !9
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.h
  br i1 %i.ac, label %.loopexit, label %.backedge

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread15, label %bb.f

bb.f:                                             ; preds = %.split13, %.split12, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.thread15:                                        ; preds = %.split13, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1320
  br label %bb.i

bb.g:                                             ; preds = %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1321
  %i.ad = and i64 %i.j, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 %i.ae)
  br label %bb.i

bb.h:                                             ; preds = %.split
  %i.af = getelementptr i8, ptr %i.i, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.g, align 8, !alias.scope !1323, !noalias !1322
  store i8 3, ptr %i.a, align 8, !alias.scope !1323, !noalias !1322
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %bb.e
  %i.ag = phi i64 [ %.pre, %bb.i ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ah = load i64, ptr %i.c, align 8, !noundef !9
  %.not = icmp eq i64 %i.ah, %i.ag
  br i1 %.not, label %.loopexit, label %bb.b

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsjouRnuJWSBB_5yamux5frame6header6encodeuECshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 1 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [12 x i8], align 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, i8 0, i64 10, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.g = load i8, ptr %i.f, align 2, !noundef !9
  store i8 %i.g, ptr %i.d, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.i = load i8, ptr %i.h, align 1, !range !28, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i16, ptr %i.l, align 4, !noundef !9
  %i.n = tail call i16 @llvm.bswap.i16(i16 %i.m)
  store i16 %i.n, ptr %i.c, align 2
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull %i.k, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load i32, ptr %1, align 4, !noundef !9
  %i.q = call i32 @llvm.bswap.i32(i32 %i.p)
  store i32 %i.q, ptr %i.b, align 4
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull %i.o, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noundef !9
  %i.u = call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.u, ptr %i.a, align 4
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull %i.r, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtCsgrcu2UPjJtD_14futures_rustls6common15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs0_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull %i.c, i64 noundef 32) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 5 uses
  switch i64 %i.g, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit [
    i64 2, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
    i64 0, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  ]

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6: ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = icmp ult ptr %i.h, inttoptr (i64 33 to ptr)
  br i1 %i.j, label %.noexc7, label %bb.d, !prof !33

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread: ; preds = %bb.b, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit
  %storemerge = phi i64 [ %i.g, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit ], [ 1, %bb.b ]
  %.sroa.4.0.i3 = phi ptr [ %i.h, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit ], [ inttoptr (i64 55834574851 to ptr), %bb.b ] ; 11 uses
  store i64 %storemerge, ptr %i.b, align 8
  store ptr %.sroa.4.0.i3, ptr %i.d, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i3) ]
  %i.k = ptrtoint ptr %.sroa.4.0.i3 to i64        ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split14
    i64 0, label %.split15
    i64 1, label %.split
  ], !prof !20

default.unreachable:                              ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  unreachable

bb.c:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.i, !inline_history !3

.split14:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %.sroa.4.0.i3, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.g, label %.loopexit

.split15:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i3, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !34, !noundef !9
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread17, label %.loopexit

.split:                                           ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.z = getelementptr i8, ptr %.sroa.4.0.i3, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !34, !noundef !9
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.h, label %.loopexit

bb.d:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #26
  unreachable

.noexc7:                                          ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1330, !noundef !9 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1330, !nonnull !9, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.c, i64 %i.i, i1 false)
  %.pre.i = load i64, ptr %i.ac, align 8, !alias.scope !1330
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc7
  %i.ai = phi i64 [ %.pre.i, %bb.e ], [ %i.ad, %.noexc7 ]
  %i.aj = add i64 %i.ai, %i.i
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !1330
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split14, %.split15, %bb.f
  %.sroa.3.0 = phi ptr [ %i.h, %bb.f ], [ %.sroa.4.0.i3, %.split15 ], [ %.sroa.4.0.i3, %.split14 ], [ %.sroa.4.0.i3, %.split ], [ %.sroa.4.0.i3, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 1, %.split15 ], [ 1, %.split14 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.al

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread17, label %.loopexit

.thread17:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1331
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

bb.g:                                             ; preds = %.split14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1331
  %i.am = and i64 %i.k, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

bb.h:                                             ; preds = %.split
  %i.ao = getelementptr i8, ptr %.sroa.4.0.i3, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1331
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.e, align 8, !alias.scope !1332, !noalias !1331
  store i8 3, ptr %i.a, align 8, !alias.scope !1332, !noalias !1331
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !1331
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.g, %bb.h, %.thread17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.i:                                             ; preds = %bb.c, %.noexc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtCsgrcu2UPjJtD_14futures_rustls6common15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs0_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull %i.c, i64 noundef 32) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 5 uses
  switch i64 %i.g, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit [
    i64 2, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
    i64 0, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  ]

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6: ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = icmp ult ptr %i.h, inttoptr (i64 33 to ptr)
  br i1 %i.j, label %.noexc7, label %bb.d, !prof !33

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread: ; preds = %bb.b, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit
  %storemerge = phi i64 [ %i.g, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit ], [ 1, %bb.b ]
  %.sroa.4.0.i3 = phi ptr [ %i.h, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit ], [ inttoptr (i64 55834574851 to ptr), %bb.b ] ; 11 uses
  store i64 %storemerge, ptr %i.b, align 8
  store ptr %.sroa.4.0.i3, ptr %i.d, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i3) ]
  %i.k = ptrtoint ptr %.sroa.4.0.i3 to i64        ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split14
    i64 0, label %.split15
    i64 1, label %.split
  ], !prof !20

default.unreachable:                              ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  unreachable

bb.c:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.i, !inline_history !3

.split14:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %.sroa.4.0.i3, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.g, label %.loopexit

.split15:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i3, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !34, !noundef !9
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread17, label %.loopexit

.split:                                           ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.z = getelementptr i8, ptr %.sroa.4.0.i3, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !34, !noundef !9
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.h, label %.loopexit

bb.d:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #26
  unreachable

.noexc7:                                          ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1339, !noundef !9 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1339, !nonnull !9, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.c, i64 %i.i, i1 false)
  %.pre.i = load i64, ptr %i.ac, align 8, !alias.scope !1339
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc7
  %i.ai = phi i64 [ %.pre.i, %bb.e ], [ %i.ad, %.noexc7 ]
  %i.aj = add i64 %i.ai, %i.i
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !1339
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split14, %.split15, %bb.f
  %.sroa.3.0 = phi ptr [ %i.h, %bb.f ], [ %.sroa.4.0.i3, %.split15 ], [ %.sroa.4.0.i3, %.split14 ], [ %.sroa.4.0.i3, %.split ], [ %.sroa.4.0.i3, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 1, %.split15 ], [ 1, %.split14 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.al

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread17, label %.loopexit

.thread17:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1340
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

bb.g:                                             ; preds = %.split14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1340
  %i.am = and i64 %i.k, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

bb.h:                                             ; preds = %.split
  %i.ao = getelementptr i8, ptr %.sroa.4.0.i3, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1340
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.e, align 8, !alias.scope !1341, !noalias !1340
  store i8 3, ptr %i.a, align 8, !alias.scope !1341, !noalias !1340
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !1340
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.g, %bb.h, %.thread17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.i:                                             ; preds = %bb.c, %.noexc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtCsgrcu2UPjJtD_14futures_rustls6common15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs0_NtNtCs62FBUrD8956_10libp2p_tcp8provider5tokioNtB5_9TcpStreamNtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull %i.c, i64 noundef 32) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 5 uses
  switch i64 %i.g, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit [
    i64 2, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
    i64 0, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  ]

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6: ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = icmp ult ptr %i.h, inttoptr (i64 33 to ptr)
  br i1 %i.j, label %.noexc7, label %bb.d, !prof !33

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread: ; preds = %bb.b, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit
  %storemerge = phi i64 [ %i.g, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit ], [ 1, %bb.b ]
  %.sroa.4.0.i3 = phi ptr [ %i.h, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit ], [ inttoptr (i64 55834574851 to ptr), %bb.b ] ; 11 uses
  store i64 %storemerge, ptr %i.b, align 8
  store ptr %.sroa.4.0.i3, ptr %i.d, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i3) ]
  %i.k = ptrtoint ptr %.sroa.4.0.i3 to i64        ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split14
    i64 0, label %.split15
    i64 1, label %.split
  ], !prof !20

default.unreachable:                              ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  unreachable

bb.c:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.i, !inline_history !3

.split14:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %.sroa.4.0.i3, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.g, label %.loopexit

.split15:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i3, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !34, !noundef !9
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread17, label %.loopexit

.split:                                           ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread
  %i.z = getelementptr i8, ptr %.sroa.4.0.i3, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !34, !noundef !9
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.h, label %.loopexit

bb.d:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #26
  unreachable

.noexc7:                                          ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCshnt8FRa5Rut_11native_ping.exit.thread6
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1348, !noundef !9 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1348, !nonnull !9, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.c, i64 %i.i, i1 false)
  %.pre.i = load i64, ptr %i.ac, align 8, !alias.scope !1348
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc7
  %i.ai = phi i64 [ %.pre.i, %bb.e ], [ %i.ad, %.noexc7 ]
  %i.aj = add i64 %i.ai, %i.i
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !1348
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split14, %.split15, %bb.f
  %.sroa.3.0 = phi ptr [ %i.h, %bb.f ], [ %.sroa.4.0.i3, %.split15 ], [ %.sroa.4.0.i3, %.split14 ], [ %.sroa.4.0.i3, %.split ], [ %.sroa.4.0.i3, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 1, %.split15 ], [ 1, %.split14 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.al

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread17, label %.loopexit

.thread17:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1349
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

bb.g:                                             ; preds = %.split14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1349
  %i.am = and i64 %i.k, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

bb.h:                                             ; preds = %.split
  %i.ao = getelementptr i8, ptr %.sroa.4.0.i3, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1349
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.e, align 8, !alias.scope !1350, !noalias !1349
  store i8 3, ptr %i.a, align 8, !alias.scope !1350, !noalias !1349
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !1349
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.g, %bb.h, %.thread17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.i:                                             ; preds = %bb.c, %.noexc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2d_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB39_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4c_6server9TlsStreamB4X_EEB4X_EE14decode_requests0_0ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread
  %i.d = phi ptr [ %i.e, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread ], [ %.promoted, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %.not.i.i = icmp eq i64 %i.g, 24
  br i1 %.not.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit: ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.i = tail call fastcc noundef zeroext i1 @_RINvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 24) #27
  br i1 %i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread: ; preds = %.lr.ph, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit
  %i.j = icmp eq ptr %i.e, %i.b
  br i1 %i.j, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge, label %.lr.ph

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge: ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.d, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit ], [ null, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests0_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2d_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB39_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4c_6server9TlsStreamB4X_EEB4X_EE14decode_requests1_0ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread
  %i.d = phi ptr [ %i.e, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread ], [ %.promoted, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %.not.i.i = icmp eq i64 %i.g, 22
  br i1 %.not.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit: ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.i = tail call fastcc noundef zeroext i1 @_RINvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 22) #27
  br i1 %i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread: ; preds = %.lr.ph, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit
  %i.j = icmp eq ptr %i.e, %i.b
  br i1 %i.j, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge, label %.lr.ph

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit._crit_edge: ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.d, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit ], [ null, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtBT_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1O_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2R_6server9TlsStreamB3C_EEB3C_EE14decode_requests1_0INtB7_5FnMutTRRNtCs1ll6eLl40nD_8httparse6HeaderEE8call_mutCshnt8FRa5Rut_11native_ping.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRShNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2j_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3f_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4i_6server9TlsStreamB53_EEB53_EE14decode_request0ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.d = phi ptr [ %i.e, %bb.h ], [ %.promoted, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1355, !noundef !9
  %.not.i = icmp eq i64 %i.g, 6
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !1355, !nonnull !9, !noundef !9 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1356, !noalias !1355, !noundef !9 ; 2 uses
  %i.j = add i8 %i.i, -65
  %i.k = icmp ult i8 %i.j, 26
  %i.l = select i1 %i.k, i8 32, i8 0
  %.sroa.012.0.i.i = or i8 %i.l, %i.i
  %i.m = icmp eq i8 %.sroa.012.0.i.i, 111
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !1356, !noalias !1355, !noundef !9 ; 2 uses
  %i.p = add i8 %i.o, -65
  %i.q = icmp ult i8 %i.p, 26
  %i.r = select i1 %i.q, i8 32, i8 0
  %.sroa.012.0.i.1.i = or i8 %i.r, %i.o
  %i.s = icmp eq i8 %.sroa.012.0.i.1.i, 114
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1356, !noalias !1355, !noundef !9 ; 2 uses
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = select i1 %i.w, i8 32, i8 0
  %.sroa.012.0.i.2.i = or i8 %i.x, %i.u
  %i.y = icmp eq i8 %.sroa.012.0.i.2.i, 105
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !1356, !noalias !1355, !noundef !9 ; 2 uses
  %i.ab = add i8 %i.aa, -65
  %i.ac = icmp ult i8 %i.ab, 26
  %i.ad = select i1 %i.ac, i8 32, i8 0
  %.sroa.012.0.i.3.i = or i8 %i.ad, %i.aa
  %i.ae = icmp eq i8 %.sroa.012.0.i.3.i, 103
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !1356, !noalias !1355, !noundef !9 ; 2 uses
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.012.0.i.4.i = or i8 %i.aj, %i.ag
  %i.ak = icmp eq i8 %.sroa.012.0.i.4.i, 105
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1356, !noalias !1355, !noundef !9 ; 2 uses
  %i.an = add i8 %i.am, -65
  %i.ao = icmp ult i8 %i.an, 26
  %i.ap = select i1 %i.ao, i8 32, i8 0
  %.sroa.012.0.i.5.i = or i8 %i.ap, %i.am
  %i.aq = icmp eq i8 %.sroa.012.0.i.5.i, 110
  br i1 %i.aq, label %_RNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB4_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBZ_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB21_6server9TlsStreamB2M_EEB2M_EE14decode_request0Cshnt8FRa5Rut_11native_ping.exit, label %bb.h

_RNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB4_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBZ_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB21_6server9TlsStreamB2M_EEB2M_EE14decode_request0Cshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.g
  store ptr %i.e, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1355, !nonnull !9, !noundef !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1355, !noundef !9
  %i.av = insertvalue { ptr, i64 } poison, ptr %i.as, 0
  %i.aw = insertvalue { ptr, i64 } %i.av, i64 %i.au, 1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ax = icmp eq ptr %i.e, %i.b
  br i1 %i.ax, label %..loopexit_crit_edge, label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.h
  store ptr %i.e, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB4_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBZ_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB21_6server9TlsStreamB2M_EEB2M_EE14decode_request0Cshnt8FRa5Rut_11native_ping.exit
  %.merged = phi { ptr, i64 } [ %i.aw, %_RNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB4_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBZ_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB21_6server9TlsStreamB2M_EEB2M_EE14decode_request0Cshnt8FRa5Rut_11native_ping.exit ], [ { ptr null, i64 undef }, %..loopexit_crit_edge ], [ { ptr null, i64 undef }, %bb.a ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1I_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2E_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3H_6server9TlsStreamB4s_EEB4s_EE14decode_requests2_0ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
end_hunk_0
