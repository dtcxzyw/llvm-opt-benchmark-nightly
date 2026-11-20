Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_quic-ca971a985ee5f433.libp2p_quic.408ba9c75daed611-cgu.05?download=true
inline.NumInlined: 118
inline.NumDeleted: 73
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneve10InfoGeneveNtB6_5Debug3fmtCs5xzCmWPONXx_11libp2p_quic:bb.a
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneve8GeneveDfNtB6_5Debug3fmtCs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.c = load i8, ptr %i.b, align 1, !range !11, !alias.scope !380, !noundef !6
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5), !noalias !380
  br label %_RNvXs2_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneveNtB5_8GeneveDfNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 3), !noalias !380
  br label %_RNvXs2_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneveNtB5_8GeneveDfNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 7), !noalias !380
  br label %_RNvXs2_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneveNtB5_8GeneveDfNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !381
  store ptr %i.g, ptr %i.a, align 8, !noalias !381
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !381
  br label %_RNvXs2_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneveNtB5_8GeneveDfNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs2_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneveNtB5_8GeneveDfNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNvNtNtCs3LwfirTY3Ij_20netlink_packet_route7address10addr_flags1__16InternalBitFlagsNtB6_5Debug3fmtCs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !18, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXsb_NvNtNtCs3LwfirTY3Ij_20netlink_packet_route7address10addr_flags1__NtB5_16InternalBitFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNvNtNtCs3LwfirTY3Ij_20netlink_packet_route7address10addr_flagss_1__16InternalBitFlagsNtB6_5Debug3fmtCs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXsb_NvNtNtCs3LwfirTY3Ij_20netlink_packet_route7address10addr_flagss_1__NtB5_16InternalBitFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions8nat_flag1__16InternalBitFlagsNtB6_5Debug3fmtCs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !18, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXsb_NvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions8nat_flag1__NtB5_16InternalBitFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB4_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !389, !noundef !6
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorNtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB3Y_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0EB40_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @_RNvMs2_NtCsaRn6AFvch86_5quinn10connectionNtB5_10Connection5close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !389
  %i.f = load ptr, ptr %1, align 8, !alias.scope !392, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6688
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !389 ; 0 uses
  %i.i = atomicrmw add ptr %i.f, i64 1 monotonic, align 8, !noalias !389
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !393
  store ptr %i.f, ptr %i.a, align 8, !noalias !393
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %i.k, align 8, !noalias !393
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !394
  %i.l = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 88, 105) 104, i64 noundef 8) #21, !noalias !394 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB6_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0B8_.exit.i, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #20
          to label %.noexc.i.i unwind label %bb.e, !noalias !389

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtBK_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close00EBM_(ptr noundef nonnull align 8 dereferenceable(104) %i.a) #18
          to label %bb.g unwind label %bb.f, !noalias !389

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !389
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB6_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0B8_.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !393
  store ptr %i.l, ptr %i.c, align 8, !alias.scope !389
  store ptr @18, ptr %i.e, align 8, !alias.scope !389
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorNtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB3Y_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0EB40_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorNtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB3Y_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0EB40_.exit: ; preds = %bb.a, %_RNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB6_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0B8_.exit.i
  call void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorNtNtB8_6marker4SendEL_EEB1v_4pollCs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.p = load i64, ptr %i.b, align 8, !range !17, !noundef !6 ; 4 uses
  %3 = icmp eq i64 %i.p, -1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorECs5xzCmWPONXx_11libp2p_quic.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorNtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB3Y_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0EB40_.exit
  %i.q = icmp ne i64 %i.p, 4
  call void @llvm.assume(i1 %i.q)
  %4 = icmp eq i64 %i.p, 8
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorECs5xzCmWPONXx_11libp2p_quic.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorECs5xzCmWPONXx_11libp2p_quic.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorECs5xzCmWPONXx_11libp2p_quic.exit: ; preds = %bb.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorNtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB3Y_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0EB40_.exit, %bb.j
  %.sink = phi i64 [ -2, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputNtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorNtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB3Y_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_close0EB40_.exit ], [ %i.p, %bb.j ], [ -1, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB4_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.03 = alloca [64 x i8], align 8           ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !399, !noundef !6
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2B_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB5H_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0EB5J_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 6688
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !399 ; 0 uses
  %i.j = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !399
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  store ptr %.val, ptr %i.a, align 8, !noalias !399
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.l, align 8, !noalias !399
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !400
  %i.m = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 88, 105) 88, i64 noundef 8) #21, !noalias !400 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB6_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0B8_.exit.i, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #20
          to label %.noexc.i.i unwind label %bb.e, !noalias !399

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtBK_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound00EBM_(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #18
          to label %common.resume unwind label %bb.f, !noalias !399

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !399
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.ae, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB6_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0B8_.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  store ptr %i.m, ptr %i.e, align 8, !alias.scope !399
  store ptr @19, ptr %i.g, align 8, !alias.scope !399
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2B_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB5H_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0EB5J_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2B_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB5H_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0EB5J_.exit: ; preds = %bb.a, %_RNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB6_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0B8_.exit.i
  call void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2g_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !15, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %bb.t, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2B_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB5H_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0EB5J_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = trunc nuw i64 %i.q to i1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, i64 56, i1 false)
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.u = load ptr, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  store ptr null, ptr %i.e, align 8
  %i.x = icmp eq ptr %i.u, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2Q_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB4_6marker4SendEL_EEEECs5xzCmWPONXx_11libp2p_quic.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.y = load ptr, ptr %i.w, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.y(ptr noundef nonnull %i.u)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !19, !invariant.load !6 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2Q_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB4_6marker4SendEL_EEEECs5xzCmWPONXx_11libp2p_quic.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !20, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2Q_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB4_6marker4SendEL_EEEECs5xzCmWPONXx_11libp2p_quic.exit

bb.o:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !19, !invariant.load !6 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !20, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #21
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaRn6AFvch86_5quinn11recv_stream10RecvStreamECs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #18
          to label %bb.s unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2Q_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB4_6marker4SendEL_EEEECs5xzCmWPONXx_11libp2p_quic.exit: ; preds = %bb.n, %bb.m, %bb.j
  %.sroa.03.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.03, i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2Q_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB4_6marker4SendEL_EEEECs5xzCmWPONXx_11libp2p_quic.exit
  ret void

bb.r:                                             ; preds = %bb.s, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.s:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamECs5xzCmWPONXx_11libp2p_quic(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %common.resume unwind label %bb.r

bb.t:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2B_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB5H_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0EB5J_.exit, %bb.i
  %storemerge = phi i64 [ 2, %bb.i ], [ -1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2B_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB5H_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer12poll_inbound0EB5J_.exit ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB4_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer13poll_outbound(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.03 = alloca [64 x i8], align 8           ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %.val15 = load ptr, ptr %1, align 8             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !405, !noundef !6
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultTNtNtCsaRn6AFvch86_5quinn11send_stream10SendStreamNtNtB2B_11recv_stream10RecvStreamENtNtCsdAHj8hiIvQh_11quinn_proto10connection15ConnectionErrorENtNtB5_6marker4SendEL_EEE18get_or_insert_withNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic10connectionNtB5H_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer13poll_outbound0EB5J_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val15, i64 6688
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !405 ; 0 uses
  %i.j = atomicrmw add ptr %.val15, i64 1 monotonic, align 8, !noalias !405
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !405
  store ptr %.val15, ptr %i.a, align 8, !noalias !405
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.l, align 8, !noalias !405
end_hunk_0
