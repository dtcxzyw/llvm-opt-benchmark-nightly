Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonat_server.autonat_server.e761e5e2c6052f53-cgu.04?download=true
inline.NumInlined: 754
inline.NumDeleted: 352
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info11bridge_port15BridgePortStateNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@12 = private unnamed_addr constant [5 x i8] c"State", align 1
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@14 = private unnamed_addr constant [8 x i8] c"Priority", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@16 = private unnamed_addr constant [4 x i8] c"Cost", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@18 = private unnamed_addr constant [11 x i8] c"HairpinMode", align 1
@19 = private unnamed_addr constant [5 x i8] c"Guard", align 1
@20 = private unnamed_addr constant [7 x i8] c"Protect", align 1
@21 = private unnamed_addr constant [9 x i8] c"FastLeave", align 1
@22 = private unnamed_addr constant [8 x i8] c"Learning", align 1
@23 = private unnamed_addr constant [12 x i8] c"UnicastFlood", align 1
@24 = private unnamed_addr constant [8 x i8] c"ProxyARP", align 1
@25 = private unnamed_addr constant [12 x i8] c"ProxyARPWifi", align 1
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6bridge8BridgeIdNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@27 = private unnamed_addr constant [6 x i8] c"RootId", align 1
@28 = private unnamed_addr constant [8 x i8] c"BridgeId", align 1
@29 = private unnamed_addr constant [14 x i8] c"DesignatedPort", align 1
@30 = private unnamed_addr constant [14 x i8] c"DesignatedCost", align 1
@31 = private unnamed_addr constant [6 x i8] c"PortId", align 1
@32 = private unnamed_addr constant [10 x i8] c"PortNumber", align 1
@33 = private unnamed_addr constant [17 x i8] c"TopologyChangeAck", align 1
@34 = private unnamed_addr constant [13 x i8] c"ConfigPending", align 1
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@36 = private unnamed_addr constant [15 x i8] c"MessageAgeTimer", align 1
@37 = private unnamed_addr constant [17 x i8] c"ForwardDelayTimer", align 1
@38 = private unnamed_addr constant [9 x i8] c"HoldTimer", align 1
@39 = private unnamed_addr constant [5 x i8] c"Flush", align 1
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6bridge25BridgeMulticastRouterTypeNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@41 = private unnamed_addr constant [15 x i8] c"MulticastRouter", align 1
@42 = private unnamed_addr constant [14 x i8] c"MulticastFlood", align 1
@43 = private unnamed_addr constant [18 x i8] c"MulticastToUnicast", align 1
@44 = private unnamed_addr constant [10 x i8] c"VlanTunnel", align 1
@45 = private unnamed_addr constant [14 x i8] c"BroadcastFlood", align 1
@46 = private unnamed_addr constant [12 x i8] c"GroupFwdMask", align 1
@47 = private unnamed_addr constant [12 x i8] c"NeighSupress", align 1
@48 = private unnamed_addr constant [8 x i8] c"Isolated", align 1
@49 = private unnamed_addr constant [10 x i8] c"BackupPort", align 1
@50 = private unnamed_addr constant [11 x i8] c"MrpRingOpen", align 1
@51 = private unnamed_addr constant [9 x i8] c"MrpInOpen", align 1
@52 = private unnamed_addr constant [22 x i8] c"MulticastEhtHostsLimit", align 1
@53 = private unnamed_addr constant [20 x i8] c"MulticastEhtHostsCnt", align 1
@54 = private unnamed_addr constant [6 x i8] c"Locked", align 1
@55 = private unnamed_addr constant [3 x i8] c"Mab", align 1
@56 = private unnamed_addr constant [16 x i8] c"MulticastNGroups", align 1
@57 = private unnamed_addr constant [18 x i8] c"MulticastMaxGroups", align 1
@58 = private unnamed_addr constant [16 x i8] c"NeighVlanSupress", align 1
@59 = private unnamed_addr constant [15 x i8] c"BackupNextHopId", align 1
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgUwh0qa7Dto_19netlink_packet_core3nla10DefaultNlaNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@62 = private unnamed_addr constant [2 x i8] c"Io", align 1
@63 = private unnamed_addr constant [11 x i8] c"InvalidSize", align 1
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfPnYm3bSk7z_15unsigned_varint6decode5ErrorNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@65 = private unnamed_addr constant [6 x i8] c"Varint", align 1
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc6header8TcHandleNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@67 = private unnamed_addr constant [7 x i8] c"ClassId", align 1
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions6action8TcActionENtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@69 = private unnamed_addr constant [6 x i8] c"Action", align 1
@70 = private unnamed_addr constant [4 x i8] c"Pnct", align 1
@71 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@72 = private unnamed_addr constant [8 x i8] c"Disabled", align 1
@73 = private unnamed_addr constant [9 x i8] c"Listening", align 1
@74 = private unnamed_addr constant [10 x i8] c"Forwarding", align 1
@75 = private unnamed_addr constant [8 x i8] c"Blocking", align 1
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link5sriov7vf_port6VfPortENtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@78 = private unnamed_addr constant [10 x i8] c"LinkVfPort", align 1
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueNtNtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6format13TimingDisplayENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerohEENtNtB17_3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEENtNtB17_3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6StreamENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtB16_3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@89 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRRNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRRNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRReENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6result6ResultuNtNtNtB8_2io5error5ErrorENtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbVDXp34Q3tF_18multistream_select8protocol7MessageNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@96 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8
@97 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_5Debug3fmtCsjRDSj9tZLBn_14autonat_server }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECsjRDSj9tZLBn_14autonat_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.m, %.backedge.i ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val8.i = load i64, ptr %i.j, align 8, !noalias !27, !noundef !7
  %i.k = icmp eq i64 %.val8.i, %3
  br i1 %i.k, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, label %.backedge.i

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.g, align 8, !noalias !27, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %2, i64 %3), !alias.scope !28, !noalias !27
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.l = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.l, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.m = add nuw nsw i64 %i.h, 1
  %i.n = icmp eq ptr %i.i, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE6removeCsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCs80T0Klmhmtx_12clap_builder6parser7matches11matched_arg10MatchedArgE6removeCsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %bb.b
  %.sink15 = phi i64 [ 8, %bb.b ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.q, %bb.b ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.val7 = load i128, ptr %1, align 8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0819, i64 16 ; 2 uses
  %i.h = add i64 %.sroa.8.018, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0819 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.8.018 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val = load i128, ptr %.sroa.0.0819, align 8
  %i.j = icmp eq i128 %.val, %.val7
  br i1 %i.j, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %i.m = icmp ult i64 %.sroa.8.018, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.8.018
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.018, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idReECsjRDSj9tZLBn_14autonat_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) initializes((72, 88)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECsjRDSj9tZLBn_14autonat_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !38, !nonnull !7, !noundef !7
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.b = invoke { ptr, i64 } @_RNvXsk_NtNtCs80T0Klmhmtx_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload)
          to label %bb.c unwind label %bb.b, !noalias !40 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_group8ArgGroupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #25
          to label %bb.h unwind label %bb.f, !noalias !41

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %3, label %bb.d

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !39
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.b, 1
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load i64, ptr %5, align 8, !alias.scope !42, !noundef !7 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !8, !alias.scope !42, !noundef !7
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsjRDSj9tZLBn_14autonat_server.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #26
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsjRDSj9tZLBn_14autonat_server.exit.i unwind label %bb.b, !noalias !41

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsjRDSj9tZLBn_14autonat_server.exit.i: ; preds = %bb.e, %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %6, align 8, !alias.scope !42, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !41
  %i.m = add i64 %i.g, 1
  store i64 %i.m, ptr %5, align 8, !alias.scope !42
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !41
  unreachable

bb.g:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsjRDSj9tZLBn_14autonat_server.exit.i, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1N_NtNtBV_15stream_protocol14StreamProtocolB2m_EB2m_EEbEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !65, !noundef !7 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !65, !noundef !7 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !66
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsjRDSj9tZLBn_14autonat_server.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  %i.s = icmp ult i64 %..i, 15
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %..i, 3
  %i.v = udiv i64 %i.u, 7
  %i.w = add nsw i64 %i.v, -1
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = lshr i64 -1, %i.x
  %i.z = add nuw nsw i64 %i.y, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp samesign ult i64 %..i, 4
  %i.ab = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.ab, 8
  %.sroa.03.0.i.i = select i1 %i.aa, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.z, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 16, 185) 40) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, !prof !10

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !69
  %i.al = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !69 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !69
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ai), !noalias !69
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !70
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.ao, %bb.k ], [ %i.an, %bb.j ]
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsjRDSj9tZLBn_14autonat_server.exit

bb.n:                                             ; preds = %._crit_edge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #25, !noalias !71
  resume { ptr, i32 } %i.aq

bb.o:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 3 uses
  %i.as = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.at = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.au = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.av = mul nuw nsw i64 %i.au, 7
  %.sroa.07.0.i.i = select i1 %i.at, i64 %i.as, i64 %i.av ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ah, i1 false), !noalias !70
  store ptr %i.d, ptr %i.a, align 8, !noalias !68
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.as, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %i.aw = load i64, ptr %i.e, align 8, !alias.scope !72, !noundef !7 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %._crit_edge38, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !72, !nonnull !7, !noundef !7 ; 2 uses
  %.val326 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ar, %.preheader.lr.ph ], [ %i.dl, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.037 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.036 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.035 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.034 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i129 = icmp eq i16 %.sroa.13.034, 0
  br i1 %.not.i129, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.131 = phi ptr [ %i.bb, %.noexc2 ], [ %.sroa.0.037, %.preheader ] ; 2 uses
  %.sroa.5.130 = phi i64 [ %i.be, %.noexc2 ], [ %.sroa.5.036, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.131) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.131, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.bb, align 16
  %i.bc = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.130, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bd, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge38.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !72
  %.pre43 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %bb.o
  %i.bf = phi i64 [ %.pre43, %._crit_edge38.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bg = phi i64 [ %.pre, %._crit_edge38.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  store i64 %i.bg, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjRDSj9tZLBn_14autonat_server(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsjRDSj9tZLBn_14autonat_server.exit unwind label %bb.p, !noalias !71

bb.p:                                             ; preds = %._crit_edge38
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27, !noalias !71
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsjRDSj9tZLBn_14autonat_server.exit: ; preds = %._crit_edge38
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74), !noalias !71
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !75, !noalias !71 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !75, !noalias !71 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !75, !noalias !71, !noundef !7 ; 3 uses
  %i.bj = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsjRDSj9tZLBn_14autonat_server.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

end_hunk_0
