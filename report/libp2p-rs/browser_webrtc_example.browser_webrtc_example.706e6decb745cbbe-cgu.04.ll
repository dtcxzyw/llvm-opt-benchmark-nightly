Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/browser_webrtc_example.browser_webrtc_example.706e6decb745cbbe-cgu.04?download=true
inline.NumInlined: 998
inline.NumDeleted: 443
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBR_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example:bb.a
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !2088
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBE_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc14UnboundedInnerINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEE9drop_slowCsg1Z0Dwl4khT_9rtnetlink(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #32, !noalias !2077
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBE_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !2077
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc14UnboundedInnerINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBE_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBX_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  %i.ah = icmp eq i64 %i.v, 0
  br i1 %i.ah, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB1c_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB1c_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBE_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 24
  %i.aj = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 32                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB1f_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB1c_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !2075, !nonnull !7, !noundef !7
  %i.as = sub i64 -32, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !2075
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB1f_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB1f_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB1c_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEENtNtNtBV_3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2097, !noundef !7 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2099, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2099, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2100
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2101
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -896 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [56 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w), !noalias !2099
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 56
  %i.z = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 64                       ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2097, !nonnull !7, !noundef !7
  %i.ai = sub i64 -64, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !2097
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn10UDPMuxConnEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddruEENtNtNtBV_3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !7 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddruENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 5                        ; 2 uses
  %i.d = add i64 %i.c, 32                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddruENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -32, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #28
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddruENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddruENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #28
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointNtCs9Et6OYOsIUY_22browser_webrtc_example14Libp2pEndpointEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointNtCs9Et6OYOsIUY_22browser_webrtc_example14Libp2pEndpointEEE15into_allocationB1J_.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, -288
  %2 = mul i64 %i.c, 289
  %i.h = add i64 %2, 305
  %3 = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %3, i64 -288
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointNtCs9Et6OYOsIUY_22browser_webrtc_example14Libp2pEndpointEEE15into_allocationB1J_.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointNtCs9Et6OYOsIUY_22browser_webrtc_example14Libp2pEndpointEEE15into_allocationB1J_.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %i.a, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.k, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2107
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointuEEE15into_allocationCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, -288
  %2 = mul i64 %i.c, 289
  %i.h = add i64 %2, 305
  %3 = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %3, i64 -288
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointuEEE15into_allocationCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdINtBR_8EndpointuEEE15into_allocationCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %i.a, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.k, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { ptr, i64 } @_RNvXsl_Cscu2bAJ62uie_6eitherINtB5_6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5error5ErrorENtNtBJ_5error5Error11descriptionCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @166, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsl_Cscu2bAJ62uie_6eitherINtB5_6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5error5ErrorENtNtBJ_5error5Error5causeCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !noundef !7
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, ptr } @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, ptr } [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsl_Cscu2bAJ62uie_6eitherINtB5_6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5error5ErrorENtNtBJ_5error5Error6sourceCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !noundef !7
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, ptr } @_RNvXNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5errorNtB2_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, ptr } [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB10_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  %i.a = load i64, ptr %0, align 8, !range !17, !alias.scope !2124, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBX_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2127, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2127
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBX_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBX_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBX_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceENtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2137, !nonnull !7, !noundef !7
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2137
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceENtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceENtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceENtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2F_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1J_B4c_E0Es_0INtNtNtB4h_3ops8function6FnOnceTOhEE9call_onceCs9Et6OYOsIUY_22browser_webrtc_example(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2162, !noundef !7 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_B49_E0Es_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2164, !noundef !7 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1c_4pool21EstablishedConnectionzEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !2164, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !2165
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.05.1.i.i.i.i.i.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.t, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.c ], [ %i.w, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !2166
  %i.n = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1536 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBX_4pool21EstablishedConnectionzEEE9next_implKb0_ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.013.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -96
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBE_4pool21EstablishedConnectionzEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(96) %i.x), !noalias !2164
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1c_4pool21EstablishedConnectionzEEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i.i.i, label %bb.d
end_hunk_0
begin_hunk_1_@_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error
; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshBXkHALwdIK_3url6parser10ParseErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtCs6b9j1MKPRPC_12libp2p_swarm5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourENtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream9StreamExt15poll_next_unpinCs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable sret([312 x i8]) align 8 captures(address) dereferenceable(312), ptr noalias nofree noundef align 8 dereferenceable(1208), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser14AddrParseErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCslqlypCAacxc_11webrtc_util5error5ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs9lcnD56yHQk_11webrtc_mdns5error5ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs8jnzmj8fZoo_4turn5error5ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8metadataNtB4_8MetadataNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs66a4hBEq2Hz_2h25frame8settingsNtB5_8SettingsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(60), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbj0q3y7K5M5_8base64ct6errors5ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRReNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5errorNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCs4PDs7pjxAW4_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEEE9drop_slowCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc14UnboundedInnerINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEE9drop_slowCsg1Z0Dwl4khT_9rtnetlink(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerzEE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5watch6SharedbEE9drop_slowCs9lcnD56yHQk_11webrtc_mdns(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtCse0yMYRRwETY_5hyper7upgrade8UpgradedNtNtB2X_5error5ErrorEEEE9drop_slowB2X_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsaXMnjnuL9zn_10webrtc_ice7udp_mux12udp_mux_conn15UDPMuxConnInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtCsdXHxuUs9k1_10tower_http4cors14ResponseFutureINtNtNtCs9DIU3UKMbTt_4axum7routing5route11RouteFuturezEEEINtNtB9_3fns8MapErrFnNvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENtNtNtB3Y_6future6future6Future4pollCs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(496), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1P_3map9MapFutureINtNtB1R_6either12EitherFutureINtNtB7_7pending7PendingINtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB1R_6muxing5boxed14StreamMuxerBoxENtNtNtB42_2io5error5ErrorEEIB2J_IB2J_INtNtB42_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB42_6future6future6Futurep6OutputIB3Y_TB4A_NtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connection10ConnectionENtNtB8l_5error5ErrorENtNtB42_6marker4SendEL_EENCNCNCNvCs9Et6OYOsIUY_22browser_webrtc_example4main000ENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtBb8_12SwarmBuilderNtNtBb6_8provider5TokioINtBb4_19OtherTransportPhaseINtNtB1P_5dummy14DummyTransportB4z_EEE20with_other_transportB5o_INtB2L_3MapNtNtB8l_9transport9TransportBa5_EIB3Y_Bec_IB6V_DNtNtB42_5error5ErrorB9G_NtB9I_4SyncEL_EENCBa9_0E0EENCBb0_s_0EEEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errINtB1N_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherB62_B9l_EEEEEB7u_4pollBad_(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(240), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCshEYSjulKtIJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber12current_span(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber9try_closeCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5errorNtB2_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio5error5ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber20on_register_dispatchCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber17register_callsiteCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber7enabledCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 -2, 5) i64 @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber14max_level_hintCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 1, 0) i64 @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber8new_spanCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber6recordCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber19record_follows_fromCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber13event_enabledCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber5eventCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber5enterCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber4exitCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 1, 0) i64 @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber10clone_spanCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10Subscriber12downcast_rawCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtCs9Bqz0CSWZZv_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCshEYSjulKtIJ_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter3env9EnvFilterIBW_INtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2b_EE3newCs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable sret([2368 x i8]) align 8 captures(none) dereferenceable(2368), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1784), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(576), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtCs9DIU3UKMbTt_4axum7routingINtB5_8EndpointNtCs9Et6OYOsIUY_22browser_webrtc_example14Libp2pEndpointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBP_(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(none) dereferenceable(280), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtCs9DIU3UKMbTt_4axum7routingINtB5_8EndpointuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(none) dereferenceable(280), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { cold }
attributes #30 = { cold noreturn nounwind }
attributes #31 = { inlinehint }
attributes #32 = { noinline }
attributes #33 = { noreturn }
attributes #34 = { noinline noreturn }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{i64 8}
!11 = !{!"branch_weights", i32 1, i32 1999}
!12 = !{!"branch_weights", i32 0, i32 1}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 1, i64 536870913}
!16 = !{!"branch_weights", i32 -294967296, i32 6003000}
!17 = !{i64 0, i64 2}
!18 = !{i8 0, i8 2}
!19 = !{i64 0, i64 3}
!20 = !{i64 -1, i64 -9223372036854775808}
!21 = !{i8 0, i8 3}
!22 = !{i64 -1, i64 3}
!23 = !{i64 -1, i64 7}
!24 = !{i64 0, i64 -9223372036854775807}
!25 = distinct !{!25, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!26 = distinct !{!26, !25, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!27 = distinct !{!27, !25, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 2"}
!28 = distinct !{!28, !25, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!29 = distinct !{!29, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!30 = distinct !{!30, !29, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!31 = distinct !{!31, !29, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 2"}
!32 = distinct !{!32, !29, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!33 = distinct !{!33, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!34 = distinct !{!34, !33, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!35 = distinct !{!35, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!36 = distinct !{!36, !35, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!37 = distinct !{!37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs9Et6OYOsIUY_22browser_webrtc_example"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!39 = distinct !{!39, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example"}
!40 = distinct !{!40, !39, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!41 = distinct !{!41, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBX_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs9Et6OYOsIUY_22browser_webrtc_example"}
!42 = distinct !{!42, !41, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBX_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!43 = distinct !{!43, !41, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBX_15stream_protocol14StreamProtocolEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!44 = distinct !{!44, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!45 = distinct !{!45, !44, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!46 = !{!26}
!47 = !{!28, !27}
!48 = !{!26, !28, !27}
!49 = !{!30}
!50 = !{!30, !32, !31, !26, !28, !27}
!51 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!52 = !{!36, !34}
!53 = !{!34}
!54 = !{!31, !27}
!55 = !{!30, !26}
!56 = !{!32, !31, !28, !27}
!57 = !{!38}
!58 = !{!40}
!59 = !{!40, !38}
!60 = !{!40, !38, !31, !27}
!61 = !{!42}
!62 = !{!43}
!63 = !{!43, !31, !27}
!64 = !{!42, !31, !27}
!65 = !{!42, !43, !31, !27}
!66 = !{!45}
!67 = distinct !{!67, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!68 = distinct !{!68, !67, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!69 = distinct !{!69, !67, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 2"}
!70 = distinct !{!70, !67, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!71 = distinct !{!71, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!72 = distinct !{!72, !71, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!73 = distinct !{!73, !71, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 2"}
!74 = distinct !{!74, !71, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!75 = distinct !{!75, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!76 = distinct !{!76, !75, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!77 = distinct !{!77, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example"}
!78 = distinct !{!78, !77, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!79 = distinct !{!79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs9Et6OYOsIUY_22browser_webrtc_example"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!81 = distinct !{!81, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example"}
!82 = distinct !{!82, !81, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!83 = distinct !{!83, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceENtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs9Et6OYOsIUY_22browser_webrtc_example"}
!84 = distinct !{!84, !83, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceENtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!85 = distinct !{!85, !83, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceENtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!86 = distinct !{!86, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!87 = distinct !{!87, !86, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!88 = !{!68}
!89 = !{!70, !69}
!90 = !{!68, !70, !69}
!91 = !{!72}
!92 = !{!72, !74, !73, !68, !70, !69}
!93 = !{!78, !76}
!94 = !{!76}
!95 = !{!73, !69}
!96 = !{!72, !68}
!97 = !{!74, !73, !70, !69}
!98 = !{!80}
!99 = !{!82}
!100 = !{!82, !80}
!101 = !{!82, !80, !73, !69}
!102 = !{!84}
!103 = !{!85}
!104 = !{!85, !73, !69}
!105 = !{!84, !73, !69}
!106 = !{!84, !85, !73, !69}
!107 = !{!87}
!108 = distinct !{!108, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs9Et6OYOsIUY_22browser_webrtc_example"}
!109 = distinct !{!109, !108, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!110 = distinct !{!110, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!111 = distinct !{!111, !110, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!112 = distinct !{!112, !110, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!113 = distinct !{!113, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!114 = distinct !{!114, !113, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!115 = distinct !{!115, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs9Et6OYOsIUY_22browser_webrtc_example"}
!116 = distinct !{!116, !115, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!117 = distinct !{!117, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE6removeCs9Et6OYOsIUY_22browser_webrtc_example"}
!118 = distinct !{!118, !117, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE6removeCs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!119 = distinct !{!119, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE13erase_no_dropCs9Et6OYOsIUY_22browser_webrtc_example"}
!120 = distinct !{!120, !119, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE13erase_no_dropCs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!121 = distinct !{!121, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner5erase"}
!122 = distinct !{!122, !121, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!123 = distinct !{!123, !117, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE6removeCs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!124 = distinct !{!124, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!125 = distinct !{!125, !124, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!126 = distinct !{!126, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!127 = distinct !{!127, !126, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!128 = !{!109}
!129 = !{!111}
!130 = !{!111, !109}
!131 = !{!112}
!132 = !{!114, !111, !112, !109}
!133 = !{!116, !111, !112, !109}
!134 = !{!118}
!135 = !{!120}
!136 = !{!122}
!137 = !{!125, !122, !120, !123, !118}
!138 = !{!127, !122, !120, !123, !118}
!139 = !{!122, !120, !118}
!140 = !{!123}
!141 = !{!122, !120, !123, !118}
!142 = distinct !{!142, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2A_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1E_E0ECs9Et6OYOsIUY_22browser_webrtc_example"}
!143 = distinct !{!143, !142, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2A_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1E_E0ECs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!144 = distinct !{!144, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!145 = distinct !{!145, !144, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!146 = distinct !{!146, !142, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2A_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1E_E0ECs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!147 = distinct !{!147, !144, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!148 = distinct !{!148, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!149 = distinct !{!149, !148, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!150 = distinct !{!150, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0Cs9Et6OYOsIUY_22browser_webrtc_example"}
!151 = distinct !{!151, !150, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0Cs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!152 = distinct !{!152, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2z_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE6removeCs9Et6OYOsIUY_22browser_webrtc_example"}
!153 = distinct !{!153, !152, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2z_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE6removeCs9Et6OYOsIUY_22browser_webrtc_example: argument 1"}
!154 = distinct !{!154, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2z_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE13erase_no_dropCs9Et6OYOsIUY_22browser_webrtc_example"}
!155 = distinct !{!155, !154, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2z_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE13erase_no_dropCs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!156 = distinct !{!156, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner5erase"}
!157 = distinct !{!157, !156, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!158 = distinct !{!158, !152, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2z_4pool21EstablishedConnectionzEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEEEE6removeCs9Et6OYOsIUY_22browser_webrtc_example: argument 0"}
!159 = distinct !{!159, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!160 = distinct !{!160, !159, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!161 = distinct !{!161, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!162 = distinct !{!162, !161, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!163 = !{!143}
!164 = !{!145}
!165 = !{!145, !143}
!166 = !{!147, !146}
!167 = !{!149, !145, !147, !143}
!168 = !{!151, !145, !147, !143}
!169 = !{!153}
!170 = !{!155}
!171 = !{!157}
!172 = !{!160, !157, !155, !158, !153}
end_hunk_1
