Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/perf.perf.9685abdc0f76bdb8-cgu.00?download=true
inline.NumInlined: 2024
inline.NumDeleted: 958
begin_hunk_0_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtBV_13CachingClientINtNtBX_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors_0INtB7_5FnMutTRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEE8call_mutCscVe0kjRb1xs_4perf:bb.a

bb.q:                                             ; preds = %bb.o
  %or.cond2.i = and i1 %.sroa.012.0.i, %i.ap
  br i1 %or.cond2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !2728, !nonnull !10, !noundef !10
  %i.as = load i8, ptr %i.ar, align 1, !range !31, !noalias !2731, !noundef !10
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = icmp eq i16 %i.ad, 9
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %bb.w, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.a, i64 280, i1 false), !noalias !2732
  br label %_RNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors_0CscVe0kjRb1xs_4perf.exit

bb.t:                                             ; preds = %bb.r
  store i16 2, ptr %0, align 8, !alias.scope !2727
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECscVe0kjRb1xs_4perf.exit24.i unwind label %bb.u, !noalias !2731

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(184) %i.aa) #27
          to label %common.resume.i unwind label %bb.v, !noalias !2731

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2731
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECscVe0kjRb1xs_4perf.exit24.i: ; preds = %bb.t
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(184) %i.aa), !noalias !2731
  br label %_RNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors_0CscVe0kjRb1xs_4perf.exit

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.a, i64 280, i1 false), !noalias !2732
  br label %_RNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors_0CscVe0kjRb1xs_4perf.exit

bb.x:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2731
  unreachable

_RNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors_0CscVe0kjRb1xs_4perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECscVe0kjRb1xs_4perf.exit.i, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECscVe0kjRb1xs_4perf.exit24.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2730
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgUwh0qa7Dto_19netlink_packet_core4done11DoneMessageNtB6_5Debug3fmtCscVe0kjRb1xs_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2736
  store ptr %i.b, ptr %i.a, align 8, !noalias !2736
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @315, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @319, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @316)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2736
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgUwh0qa7Dto_19netlink_packet_core5error12ErrorMessageNtB6_5Debug3fmtCscVe0kjRb1xs_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2740
  store ptr %i.b, ptr %i.a, align 8, !noalias !2740
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @417, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @416, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @418, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @316)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2740
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs2_NtCsgUwh0qa7Dto_19netlink_packet_core7messageINtB5_14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtB7_6traits8Emitable10buffer_lenCscVe0kjRb1xs_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !10 ; 2 uses
  %i.b = add nsw i64 %i.a, -40
  %i.c = icmp samesign ugt i64 %i.a, 39
  %i.d = select i1 %i.c, i64 %i.b, i64 4
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw i64 %i.f, 4
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw i64 %i.j, 4
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.p = tail call noundef i64 @_RNvXs1_NtCs3LwfirTY3Ij_20netlink_packet_route7messageNtB5_19RouteNetlinkMessageNtNtCsgUwh0qa7Dto_19netlink_packet_core6traits19NetlinkSerializable10buffer_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ %i.p, %bb.f ], [ %i.n, %bb.e ], [ 0, %bb.a ]
  %i.q = add i64 %.sroa.0.0, 16
  ret i64 %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCsgUwh0qa7Dto_19netlink_packet_core7messageINtB5_14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtB7_6traits8Emitable4emitCscVe0kjRb1xs_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_RNvXNtCsgUwh0qa7Dto_19netlink_packet_core6headerNtB2_13NetlinkHeaderNtNtB4_6traits8Emitable4emit(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  %i.b = load i32, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp ult i32 %i.b, 16
  br i1 %i.d, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -16                    ; 4 uses
  %.not = icmp samesign ult i64 %2, %i.c
  br i1 %.not, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !27, !noundef !10 ; 2 uses
  %i.h = add nsw i64 %i.g, -40
  %i.i = icmp samesign ugt i64 %i.g, 39
  %i.j = select i1 %i.i, i64 %i.h, i64 4
  switch i64 %i.j, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
  ]

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 16, i64 noundef %i.c, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs2_NtCsgUwh0qa7Dto_19netlink_packet_core4doneNtB5_11DoneMessageNtNtB7_6traits8Emitable4emit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.e)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsa_NtCsgUwh0qa7Dto_19netlink_packet_core5errorNtB5_12ErrorMessageNtNtB7_6traits8Emitable4emit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.c
  ret void

bb.i:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !10
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268)
  br label %bb.h

bb.j:                                             ; preds = %bb.c
  tail call void @_RNvXs1_NtCs3LwfirTY3Ij_20netlink_packet_route7messageNtB5_19RouteNetlinkMessageNtNtCsgUwh0qa7Dto_19netlink_packet_core6traits19NetlinkSerializable9serialize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.e)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !41, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0)
  %2 = load i8, ptr %i.b, align 8, !range !41, !noundef !10
  %3 = or i8 %2, 2                                ; 2 uses
  store i8 %3, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.d = phi i8 [ %i.c, %bb.a ], [ %3, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !41, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !41, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCsdTHTBGblh3Z_11libp2p_core10connectionNtB5_8EndpointNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !31, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 8, i64 6
  %.1 = select i1 %i.b, ptr @271, ptr @270
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs3_NtCsgUwh0qa7Dto_19netlink_packet_core4doneNtB5_11DoneMessageINtNtB7_6traits9ParseableINtB5_10DoneBufferRAhj4_EE5parseCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree nonnull readonly captures(address, read_provenance) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsgUwh0qa7Dto_19netlink_packet_core7parsers9parse_i32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef 4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  %i.d = load i64, ptr %i.b, align 8, !range !20, !alias.scope !2744, !noundef !10
  %.not.i.i = icmp eq i64 %i.d, -1
  br i1 %.not.i.i, label %_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRAhj4_E4codeCscVe0kjRb1xs_4perf.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2746
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @209, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #31
          to label %bb.d unwind label %bb.c, !noalias !2744

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgUwh0qa7Dto_19netlink_packet_core5error11DecodeErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #27
          to label %bb.f unwind label %bb.e, !noalias !2744

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2744
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRAhj4_E4codeCscVe0kjRb1xs_4perf.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !2744, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.c, align 8, !range !12, !noundef !10
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !14, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRAhj4_E4codeCscVe0kjRb1xs_4perf.exit
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRAhj4_E4codeCscVe0kjRb1xs_4perf.exit
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.l, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs3_NtCsgUwh0qa7Dto_19netlink_packet_core4doneNtB5_11DoneMessageINtNtB7_6traits9ParseableINtB5_10DoneBufferRRShEE5parseCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i.i = load ptr, ptr %.0.val, align 8, !nonnull !10, !noundef !10
  %i.d = getelementptr i8, ptr %.0.val, i64 8     ; 2 uses
  %.val1.i.i = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = icmp ugt i64 %.val1.i.i, 3
  br i1 %i.e, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCsgUwh0qa7Dto_19netlink_packet_core7parsers9parse_i32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef 4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  %i.f = load i64, ptr %i.b, align 8, !range !20, !alias.scope !2750, !noundef !10
  %.not.i.i = icmp eq i64 %i.f, -1
  br i1 %.not.i.i, label %_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRRShE4codeCscVe0kjRb1xs_4perf.exit, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2752
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @209, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #31
          to label %bb.f unwind label %bb.e, !noalias !2750

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgUwh0qa7Dto_19netlink_packet_core5error11DecodeErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #27
          to label %bb.h unwind label %bb.g, !noalias !2750

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2750
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.g

_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRRShE4codeCscVe0kjRb1xs_4perf.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !2750, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val1.i = load i64, ptr %i.d, align 8, !noundef !10 ; 4 uses
  %i.k = icmp ult i64 %.val1.i, 4
  br i1 %i.k, label %bb.i, label %_RNvMs_NtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB4_10DoneBufferRRShE12extended_ackCscVe0kjRb1xs_4perf.exit, !prof !8

bb.i:                                             ; preds = %_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRRShE4codeCscVe0kjRb1xs_4perf.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #33
  unreachable

_RNvMs_NtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB4_10DoneBufferRRShE12extended_ackCscVe0kjRb1xs_4perf.exit: ; preds = %_RNvMNtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB2_10DoneBufferRRShE4codeCscVe0kjRb1xs_4perf.exit
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !10, !noundef !10
  %i.l = add nsw i64 %.val1.i, -4                 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.n = load i64, ptr %i.c, align 8, !range !12, !noundef !10
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !14, !noundef !10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %_RNvMs_NtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB4_10DoneBufferRRShE12extended_ackCscVe0kjRb1xs_4perf.exit
  %i.s = load i64, ptr %i.r, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #31
  unreachable

bb.k:                                             ; preds = %_RNvMs_NtCsgUwh0qa7Dto_19netlink_packet_core4doneINtB4_10DoneBufferRRShE12extended_ackCscVe0kjRb1xs_4perf.exit
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10 ; 2 uses
end_hunk_0
