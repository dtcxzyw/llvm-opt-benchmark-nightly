inline.NumInlined: 228
inline.NumDeleted: 96
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fib_new_table: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad fib_new_table ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inet_addr_type_table: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad inet_addr_type_table ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inet_addr_type: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad inet_addr_type ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inet_dev_addr_type: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad inet_dev_addr_type ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inet_addr_type_dev_table: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad inet_addr_type_dev_table ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fib_info_nh_uses_dev: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad fib_info_nh_uses_dev ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip_valid_fib_dump_req: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ip_valid_fib_dump_req ; .previous"

%union.anon.72 = type { ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.72 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.list_head = type { ptr, ptr }
%struct.flow_dissector = type { i64, [33 x i16] }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.106 }
%union.anon.106 = type { i64 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, i32, %struct.flowi_tunnel }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, i8, ptr, ptr, ptr, ptr }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.80, i16, i16, i16 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.82 }
%union.anon.82 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.84, i16 }
%struct.anon.84 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.85 }
%union.anon.85 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.34 }
%union.anon.34 = type { [4 x i32] }
%struct.fib_config = type { i8, i8, i8, i8, i8, i8, i32, i32, %union.anon.71, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.nl_info, ptr, i16 }
%union.anon.71 = type { %struct.in6_addr }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }

@__UNIQUE_ID_addressable_fib_new_table_1239 = internal global ptr @fib_new_table, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_inet_addr_type_table_1250 = internal global ptr @inet_addr_type_table, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_inet_addr_type_1251 = internal global ptr @inet_addr_type, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_inet_dev_addr_type_1252 = internal global ptr @inet_dev_addr_type, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_inet_addr_type_dev_table_1253 = internal global ptr @inet_addr_type_dev_table, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_fib_info_nh_uses_dev_1255 = internal global ptr @fib_info_nh_uses_dev, section ".discard.addressable", align 8
@rtm_ipv4_policy = dso_local constant <{ { i8, i8, i16, [4 x i8], { i16, [6 x i8] } }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.72 }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.72 }, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, { i8, i8, i16, [4 x i8], %union.anon.72 }, %struct.nla_policy }> <{ { i8, i8, i16, [4 x i8], { i16, [6 x i8] } } { i8 0, i8 0, i16 0, [4 x i8] zeroinitializer, { i16, [6 x i8] } { i16 30, [6 x i8] zeroinitializer } }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 8, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 0, i8 0, i16 8, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 2, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 8, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 1, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 2, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 2, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.72 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.72 zeroinitializer }, %struct.nla_policy zeroinitializer }>, align 16
@fib_gw_from_via.__msg = internal constant [37 x i8] c"Invalid attribute length for RTA_VIA\00", align 16
@fib_gw_from_via.__msg.1 = internal constant [32 x i8] c"Invalid IPv4 address in RTA_VIA\00", align 16
@fib_gw_from_via.__msg.2 = internal constant [32 x i8] c"Invalid IPv6 address in RTA_VIA\00", align 16
@fib_gw_from_via.__msg.3 = internal constant [38 x i8] c"Unsupported address family in RTA_VIA\00", align 16
@ip_valid_fib_dump_req.__msg = internal constant [36 x i8] c"Invalid header for FIB dump request\00", align 16
@ip_valid_fib_dump_req.__msg.4 = internal constant [46 x i8] c"Invalid values in header for FIB dump request\00", align 16
@ip_valid_fib_dump_req.__msg.5 = internal constant [35 x i8] c"Invalid flags for FIB dump request\00", align 16
@ip_valid_fib_dump_req.__msg.6 = internal constant [38 x i8] c"Unsupported attribute in dump request\00", align 16
@__UNIQUE_ID_addressable_ip_valid_fib_dump_req_1264 = internal global ptr @ip_valid_fib_dump_req, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [25 x i8] c"\014%s: bug: prim == NULL\0A\00", align 1
@__func__.fib_add_ifaddr = private unnamed_addr constant [15 x i8] c"fib_add_ifaddr\00", align 1
@__func__.fib_del_ifaddr = private unnamed_addr constant [15 x i8] c"fib_del_ifaddr\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\014%s: bug: iprim != prim\0A\00", align 1
@fib_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib_net_init, ptr @fib_net_pre_exit, ptr @fib_net_exit, ptr null, ptr @fib_net_exit_rtnl, ptr null, i64 0 }, align 8
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 16
@__const.nl_fib_lookup_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 0, i32 0, ptr @nl_fib_input, ptr null, ptr null, ptr null }, align 8
@__preempt_count = external dso_local global i32, section ".data..percpu..hot..__preempt_count", align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"include/linux/rtnetlink.h\00", align 1
@ASSERT_RTNL_NET.__UNIQUE_ID_addressable___SCK__WARN_trap_733 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@fib_netdev_notifier = internal global { ptr, ptr, i32, [4 x i8] } { ptr @fib_netdev_event, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@fib_inetaddr_notifier = internal global { ptr, ptr, i32, [4 x i8] } { ptr @fib_inetaddr_event, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@fib_rtnl_msg_handlers = internal constant [3 x { ptr, i32, i32, ptr, ptr, i32, [4 x i8] }] [{ ptr, i32, i32, ptr, ptr, i32, [4 x i8] } { ptr null, i32 2, i32 24, ptr @inet_rtm_newroute, ptr null, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, ptr, i32, [4 x i8] } { ptr null, i32 2, i32 25, ptr @inet_rtm_delroute, ptr null, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, ptr, i32, [4 x i8] } { ptr null, i32 2, i32 26, ptr null, ptr @inet_dump_fib, i32 12, [4 x i8] zeroinitializer }], section ".init.rodata", align 16
@rtm_to_fib_config.__msg = internal constant [42 x i8] c"Invalid dsfield (tos): ECN bits must be 0\00", align 16
@rtm_to_fib_config.__msg.17 = internal constant [19 x i8] c"Invalid route type\00", align 16
@rtm_to_fib_config.__msg.18 = internal constant [22 x i8] c"Invalid prefix length\00", align 16
@rtm_to_fib_config.__msg.19 = internal constant [39 x i8] c"Invalid prefix for given prefix length\00", align 16
@rtm_to_fib_config.__msg.20 = internal constant [60 x i8] c"Nexthop specification and nexthop id are mutually exclusive\00", align 16
@rtm_to_fib_config.__msg.21 = internal constant [59 x i8] c"Nexthop configuration can not contain both GATEWAY and VIA\00", align 16
@lwtunnel_valid_encap_type.__msg = internal constant [46 x i8] c"CONFIG_LWTUNNEL is not enabled in this kernel\00", align 16
@inet_rtm_delroute.__msg = internal constant [26 x i8] c"Nexthop id does not exist\00", align 16
@inet_rtm_delroute.__msg.22 = internal constant [25 x i8] c"FIB table does not exist\00", align 16
@__const.inet_dump_fib.filter = private unnamed_addr constant { i32, i8, i8, i8, i8, i8, [3 x i8], i32, ptr } { i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null }, align 8
@inet_dump_fib.__msg = internal constant [31 x i8] c"ipv4: FIB table does not exist\00", align 16
@llvm.compiler.used = appending global [8 x ptr] [ptr @ASSERT_RTNL_NET.__UNIQUE_ID_addressable___SCK__WARN_trap_733, ptr @__UNIQUE_ID_addressable_fib_info_nh_uses_dev_1255, ptr @__UNIQUE_ID_addressable_fib_new_table_1239, ptr @__UNIQUE_ID_addressable_inet_addr_type_1251, ptr @__UNIQUE_ID_addressable_inet_addr_type_dev_table_1253, ptr @__UNIQUE_ID_addressable_inet_addr_type_table_1250, ptr @__UNIQUE_ID_addressable_inet_dev_addr_type_1252, ptr @__UNIQUE_ID_addressable_ip_valid_fib_dump_req_1264], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @fib_new_table(ptr nofree noundef captures(address) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %spec.store.select = select i1 %i.a, i32 254, i32 %1 ; 5 uses
  %i.b = and i32 %spec.store.select, 255
  %i.c = getelementptr i8, ptr %0, i64 1344       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 64
  %i.e = zext nneg i32 %i.b to i64                ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load volatile ptr, ptr %i.f, align 8     ; 2 uses
  %.not2932.i = icmp eq ptr %i.g, null
  br i1 %.not2932.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02633.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.h = getelementptr i8, ptr %.02633.i, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, %spec.store.select
  br i1 %i.j, label %fib_get_table.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = load volatile ptr, ptr %.02633.i, align 8 ; 2 uses
  %.not29.i = icmp eq ptr %i.k, null
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !10

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.l = icmp eq i32 %spec.store.select, 255
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.m = getelementptr i8, ptr %0, i64 1340
  %i.n = load i8, ptr %i.m, align 4, !range !12, !noundef !13
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @fib_new_table(ptr noundef %0, i32 noundef 254) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.loopexit
  %.024 = phi ptr [ null, %bb.c ], [ %i.p, %bb.d ], [ null, %.loopexit ]
  %i.q = getelementptr i8, ptr %0, i64 192
  %i.r = load volatile i32, ptr %i.q, align 64
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %fib_get_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @fib_trie_table(i32 noundef %spec.store.select, ptr noundef %.024) #13 ; 9 uses
  %.not28 = icmp eq ptr %i.s, null
  br i1 %.not28, label %fib_get_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %spec.store.select, label %bb.j [
    i32 254, label %bb.h
    i32 253, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !14
  %i.t = getelementptr i8, ptr %0, i64 1320
  store volatile ptr %i.s, ptr %i.t, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !15
  %i.u = getelementptr i8, ptr %0, i64 1328
  store volatile ptr %i.s, ptr %i.u, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.v = load ptr, ptr %i.c, align 64
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.e ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  store ptr %i.x, ptr %i.s, align 8
  %i.y = getelementptr i8, ptr %i.s, i64 8
  store volatile ptr %i.w, ptr %i.y, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  store volatile ptr %i.s, ptr %i.w, align 8
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %fib_get_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.x, i64 8
  store volatile ptr %i.s, ptr %i.z, align 8
  br label %fib_get_table.exit

fib_get_table.exit:                               ; preds = %.lr.ph.i, %bb.e, %bb.k, %bb.j, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.s, %bb.k ], [ null, %bb.e ], [ %i.s, %bb.j ], [ %.02633.i, %.lr.ph.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local ptr @fib_get_table(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %spec.store.select = select i1 %i.a, i32 254, i32 %1 ; 2 uses
  %i.b = and i32 %spec.store.select, 255
  %i.c = getelementptr i8, ptr %0, i64 1344
  %i.d = load ptr, ptr %i.c, align 64
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load volatile ptr, ptr %i.f, align 8     ; 2 uses
  %.not2932 = icmp eq ptr %i.g, null
  br i1 %.not2932, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02633 = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.h = getelementptr i8, ptr %.02633, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, %spec.store.select
  br i1 %i.j, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load volatile ptr, ptr %.02633, align 8  ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.026.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.02633, %.lr.ph ]
  ret ptr %.026.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @fib_trie_table(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @fib_unmerge(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1344       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 64
  %i.c = getelementptr i8, ptr %i.b, i64 2040
  %i.d = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not2932.i = icmp eq ptr %i.d, null
  br i1 %.not2932.i, label %fib_get_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02633.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 7 uses
  %i.e = getelementptr i8, ptr %.02633.i, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 255
  br i1 %i.g, label %fib_get_table.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load volatile ptr, ptr %.02633.i, align 8 ; 2 uses
  %.not29.i = icmp eq ptr %i.h, null
  br i1 %.not29.i, label %fib_get_table.exit.thread, label %.lr.ph.i, !llvm.loop !10

fib_get_table.exit:                               ; preds = %.lr.ph.i
  %i.i = tail call ptr @fib_trie_unmerge(ptr noundef nonnull %.02633.i) #13 ; 10 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %fib_get_table.exit.thread, label %bb.c

bb.c:                                             ; preds = %fib_get_table.exit
  %i.j = icmp eq ptr %i.i, %.02633.i
  br i1 %i.j, label %fib_get_table.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %i.l = load i32, ptr %i.k, align 8
  switch i32 %i.l, label %bb.g [
    i32 254, label %bb.e
    i32 253, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !17
  %i.m = getelementptr i8, ptr %0, i64 1320
  store volatile ptr %i.i, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %i.n = getelementptr i8, ptr %0, i64 1328
  store volatile ptr %i.i, ptr %i.n, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = load ptr, ptr %.02633.i, align 8         ; 2 uses
  store ptr %i.o, ptr %i.i, align 8
  %i.p = getelementptr i8, ptr %.02633.i, i64 8   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  store volatile ptr %i.q, ptr %i.r, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !19
  %i.s = load ptr, ptr %i.r, align 8
  store volatile ptr %i.i, ptr %i.s, align 8
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %fib_replace_table.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 8
  store volatile ptr %i.i, ptr %i.u, align 8
  br label %fib_replace_table.exit

fib_replace_table.exit:                           ; preds = %bb.g, %bb.h
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.p, align 8
  tail call void @fib_free_table(ptr noundef nonnull %.02633.i) #13
  %i.v = load ptr, ptr %i.a, align 64
  %i.w = getelementptr i8, ptr %i.v, i64 2032
  %i.x = load volatile ptr, ptr %i.w, align 8     ; 2 uses
  %.not2932.i18 = icmp eq ptr %i.x, null
  br i1 %.not2932.i18, label %fib_get_table.exit.thread, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %fib_replace_table.exit, %bb.i
  %.02633.i20 = phi ptr [ %i.ab, %bb.i ], [ %i.x, %fib_replace_table.exit ] ; 3 uses
  %i.y = getelementptr i8, ptr %.02633.i20, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.z, 254
  br i1 %i.aa, label %fib_get_table.exit23, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i19
  %i.ab = load volatile ptr, ptr %.02633.i20, align 8 ; 2 uses
  %.not29.i21 = icmp eq ptr %i.ab, null
  br i1 %.not29.i21, label %fib_get_table.exit.thread, label %.lr.ph.i19, !llvm.loop !10

fib_get_table.exit23:                             ; preds = %.lr.ph.i19
  tail call void @fib_table_flush_external(ptr noundef nonnull %.02633.i20) #13
  br label %fib_get_table.exit.thread

fib_get_table.exit.thread:                        ; preds = %bb.b, %bb.i, %fib_replace_table.exit, %bb.a, %bb.c, %fib_get_table.exit, %fib_get_table.exit23
  %.0 = phi i32 [ -12, %fib_get_table.exit ], [ 0, %fib_get_table.exit23 ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %fib_replace_table.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @fib_trie_unmerge(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fib_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fib_table_flush_external(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @fib_flush(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1344
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.034 = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %.critedge ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 64
  %i.c = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not2830 = icmp eq ptr %i.d, null
  br i1 %.not2830, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.132 = phi i32 [ %i.g, %.lr.ph ], [ %.034, %bb.b ]
  %.02431 = phi ptr [ %i.e, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
end_hunk_0
