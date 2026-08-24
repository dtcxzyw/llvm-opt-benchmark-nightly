Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/exthdrs?download=true
inline.NumInlined: 205
inline.NumDeleted: 62
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ipv6_push_frag_opts: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ipv6_push_frag_opts ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ipv6_dup_options: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ipv6_dup_options ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ipv6_fixup_options: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __ipv6_fixup_options ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___fl6_update_dst: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __fl6_update_dst ; .previous"

%struct.inet6_protocol = type { ptr, ptr, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.llist_node, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.idr, [40 x i8], %struct.ns_common, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.raw_notifier_head, i32, i8, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [24 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_nf, %struct.netns_ct, ptr, %struct.netns_bpf, [16 x i8], %struct.netns_xfrm, i64, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.21 }
%union.anon.21 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.anon.25, i32, ptr, ptr, i32, %union.anon.26 }
%struct.anon.25 = type { %struct.refcount_struct, [60 x i8] }
%union.anon.26 = type { %struct.ns_tree }
%struct.ns_tree = type { i64, %struct.atomic_t, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_root }
%struct.ns_tree_node = type { %struct.rb_node, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.ns_tree_root = type { %struct.rb_root, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, i32 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, i32, i32, i8, i8, i8, ptr, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { %struct.unix_table, i32, ptr }
%struct.unix_table = type { ptr, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, ptr }
%struct.netns_ipv4 = type { [0 x i8], i8, i8, i8, i8, i32, i32, i32, i32, [3 x i32], i8, [0 x i8], [0 x i8], i8, [0 x i8], [0 x i8], i8, i8, i8, i8, i32, [3 x i32], i32, [0 x i8], [4 x i8], [0 x i8], %struct.atomic_t, i32, [0 x i8], [56 x i8], %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i64, i64, i32, i32, ptr, ptr, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, i16, %struct.atomic_t, i32, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.sysctl_fib_multipath_hash_seed, i32, i8, i8, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, ptr, %struct.delayed_work, [8 x i8] }
%struct.inet_timewait_death_row = type { %struct.refcount_struct, [60 x i8], ptr, i32, [52 x i8] }
%struct.local_ports = type { i32, i8 }
%struct.ping_group_range = type { %struct.seqlock, [2 x %struct.kgid_t] }
%struct.seqlock = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kgid_t = type { i32 }
%struct.sysctl_fib_multipath_hash_seed = type { i32, i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, %struct.spinlock, ptr, %struct.list_head, %struct.rwlock, %struct.spinlock, %struct.atomic_t, i64, i8, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.anon.31, ptr, [32 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.percpu_counter, [24 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [0 x i8], i8, i8, i8, [0 x i8], i8, i8, i8, i32, [4 x i64], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8 }
%struct.rwlock = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.29, %struct.qspinlock }
%union.anon.29 = type { %struct.atomic_t }
%struct.anon.31 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_nf = type { ptr, [11 x ptr], ptr, [5 x ptr], [5 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, ptr, ptr, %struct.nf_ip_net }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8 }
%struct.nf_udp_net = type { [2 x i32] }
%struct.nf_icmp_net = type { i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, i32, [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, [3 x i8], ptr, [40 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, %struct.delayed_work }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock, i8, i8, i8, i8 }

@rthdr_protocol = internal constant %struct.inet6_protocol { ptr @ipv6_rthdr_rcv, ptr null, i32 1, i32 0 }, align 8
@destopt_protocol = internal constant %struct.inet6_protocol { ptr @ipv6_destopt_rcv, ptr null, i32 1, i32 0 }, align 8
@nodata_protocol = internal constant %struct.inet6_protocol { ptr @dst_discard, ptr null, i32 1, i32 0 }, align 8
@__UNIQUE_ID_addressable_ipv6_push_frag_opts_1104 = internal global ptr @ipv6_push_frag_opts, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ipv6_dup_options_1105 = internal global ptr @ipv6_dup_options, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___ipv6_fixup_options_1106 = internal global ptr @__ipv6_fixup_options, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___fl6_update_dst_1107 = internal global ptr @__fl6_update_dst, section ".discard.addressable", align 8
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable___fl6_update_dst_1107, ptr @__UNIQUE_ID_addressable___ipv6_fixup_options_1106, ptr @__UNIQUE_ID_addressable_ipv6_dup_options_1105, ptr @__UNIQUE_ID_addressable_ipv6_push_frag_opts_1104], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local i32 @ipv6_exthdrs_init() local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @inet6_add_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #9 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @inet6_add_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #9 ; 2 uses
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @inet6_add_protocol(ptr noundef nonnull @nodata_protocol, i8 noundef zeroext 59) #9 ; 2 uses
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.f
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.1, %bb.f ], [ 0, %bb.c ]
  ret i32 %.0

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @inet6_del_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.e ]
  %i.e = tail call i32 @inet6_del_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #9 ; 0 uses
  br label %bb.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ipv6_exthdrs_exit() local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @inet6_del_protocol(ptr noundef nonnull @nodata_protocol, i8 noundef zeroext 59) #9 ; 0 uses
  %i.b = tail call i32 @inet6_del_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #9 ; 0 uses
  %i.c = tail call i32 @inet6_del_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #9 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @ipv6_parse_hopopts(ptr noundef %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 264
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val34 = load i32, ptr %i.d, align 8           ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 116        ; 2 uses
  %.val35 = load i32, ptr %i.e, align 4
  %i.f = sub i32 %.val34, %.val35                 ; 3 uses
  %.not.i = icmp ult i32 %i.f, 48
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %.val34, 48
  br i1 %i.g, label %pskb_may_pull_reason.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = sub nuw nsw i32 48, %i.f
  %i.i = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.h) #9
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %pskb_may_pull_reason.exit, label %._crit_edge, !prof !10

._crit_edge:                                      ; preds = %bb.c
  %.val30.pre = load i32, ptr %i.d, align 8       ; 2 uses
  %.val31.pre = load i32, ptr %i.e, align 4
  %.pre46 = sub i32 %.val30.pre, %.val31.pre
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi = phi i32 [ %.pre46, %._crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %.val30 = phi i32 [ %.val30.pre, %._crit_edge ], [ %.val34, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 182        ; 4 uses
  %.val26 = load i16, ptr %i.j, align 2
  %i.k = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %.val27 = load ptr, ptr %i.k, align 8
  %i.l = zext i16 %.val26 to i64
  %i.m = getelementptr i8, ptr %.val27, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 3                  ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 48                 ; 3 uses
  %.not.i19 = icmp ugt i32 %i.r, %.pre-phi
  br i1 %.not.i19, label %bb.e, label %bb.g, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i32 %i.r, %.val30
  br i1 %i.s, label %pskb_may_pull_reason.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.t = sub nuw nsw i32 %i.r, %.pre-phi
  %i.u = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.t) #9
  %.not9.i21 = icmp eq ptr %i.u, null
  br i1 %.not9.i21, label %pskb_may_pull_reason.exit, label %._crit_edge41, !prof !10

._crit_edge41:                                    ; preds = %bb.f
  %.val24.pre = load i16, ptr %i.j, align 2
  %.val25.pre = load ptr, ptr %i.k, align 8
  %.phi.trans.insert = zext i16 %.val24.pre to i64
  %.phi.trans.insert44 = getelementptr i8, ptr %.val25.pre, i64 %.phi.trans.insert
  %.phi.trans.insert45 = getelementptr i8, ptr %.phi.trans.insert44, i64 1
  %.pre = load i8, ptr %.phi.trans.insert45, align 1
  %.pre48 = zext i8 %.pre to i32
  %.pre50 = shl nuw nsw i32 %.pre48, 3
  br label %bb.g

pskb_may_pull_reason.exit:                        ; preds = %bb.f, %bb.c, %bb.e, %bb.b, %bb.g
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #9
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge41, %bb.d
  %.pre-phi51 = phi i32 [ %.pre50, %._crit_edge41 ], [ %i.q, %bb.d ]
  %i.v = add nuw nsw i32 %.pre-phi51, 8           ; 2 uses
  %i.w = getelementptr i8, ptr %.val, i64 2268
  %i.x = load volatile i32, ptr %i.w, align 4
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %pskb_may_pull_reason.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = or i16 %i.aa, 32
  store i16 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr i8, ptr %.val, i64 2260
  %i.ad = load volatile i32, ptr %i.ac, align 4
  %i.ae = tail call fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext true, ptr noundef %0, i32 noundef %i.ad) #10, !srcloc !11
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr %i.j, align 2
  %i.ag = trunc nuw nsw i32 %i.v to i16
  %i.ah = add i16 %i.af, %i.ag
  store i16 %i.ah, ptr %i.j, align 2
  %i.ai = getelementptr i8, ptr %0, i64 54
  store i16 40, ptr %i.ai, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %pskb_may_pull_reason.exit
  %.0 = phi i32 [ -1, %pskb_may_pull_reason.exit ], [ 1, %bb.i ], [ -1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @ip6_parse_tlv(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 182
  %.val = load i16, ptr %i.a, align 2             ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 200        ; 3 uses
  %.val85 = load ptr, ptr %i.b, align 8           ; 4 uses
  %i.c = zext i16 %.val to i64
  %i.d = getelementptr i8, ptr %.val85, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 3                  ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 184        ; 3 uses
  %.val90 = load i16, ptr %i.i, align 8           ; 4 uses
  %i.j = zext i16 %.val90 to i64
  %i.k = getelementptr i8, ptr %.val85, i64 %i.j  ; 7 uses
  %i.l = zext i16 %.val to i32                    ; 2 uses
  %i.m = zext i16 %.val90 to i32                  ; 2 uses
  %i.n = icmp slt i32 %2, 0                       ; 2 uses
  br i1 %i.n, label %bb.b, label %.thread299, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.o = sub i32 0, %2                            ; 2 uses
  %i.p = add nuw nsw i32 %i.l, 2
  %i.q = sub nsw i32 %i.p, %i.m                   ; 2 uses
  %i.r = or disjoint i32 %i.h, 6                  ; 2 uses
  br i1 %0, label %.split.us.preheader, label %.split.split.us

.thread299:                                       ; preds = %bb.a
  %i.s = add nuw nsw i32 %i.l, 2
  %i.t = sub nsw i32 %i.s, %i.m                   ; 2 uses
  %i.u = or disjoint i32 %i.h, 6                  ; 2 uses
  br i1 %0, label %.split.us.preheader, label %.split.split.preheader

.split.us.preheader:                              ; preds = %.thread299, %bb.b
  %i.v = phi i32 [ %i.u, %.thread299 ], [ %i.r, %bb.b ]
  %i.w = phi i32 [ %i.t, %.thread299 ], [ %i.q, %bb.b ]
  %.071302 = phi i32 [ %2, %.thread299 ], [ %i.o, %bb.b ]
  %i.x = getelementptr i8, ptr %1, i64 112
  %i.y = getelementptr i8, ptr %1, i64 56         ; 4 uses
  %i.z = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.aa = getelementptr i8, ptr %1, i64 88
  %i.ab = getelementptr i8, ptr %1, i64 44
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.ai
  %.val7.i.us = phi ptr [ %.val12.i.us274, %bb.ai ], [ %.val85, %.split.us.preheader ] ; 8 uses
  %.val.i99.us = phi i16 [ %.val.i97.us271, %bb.ai ], [ %.val90, %.split.us.preheader ] ; 8 uses
  %.059177.us = phi i32 [ %.2.us, %bb.ai ], [ 0, %.split.us.preheader ] ; 3 uses
  %.060176.us = phi i32 [ %.262.us, %bb.ai ], [ 0, %.split.us.preheader ] ; 4 uses
  %.064173.us = phi i32 [ %.165.us, %bb.ai ], [ %i.w, %.split.us.preheader ] ; 11 uses
  %.066172.us = phi ptr [ %.268.us, %bb.ai ], [ %i.k, %.split.us.preheader ] ; 6 uses
  %.069171.us = phi i32 [ %.170.us, %bb.ai ], [ %i.v, %.split.us.preheader ] ; 4 uses
  %i.ac = sext i32 %.064173.us to i64             ; 7 uses
  %i.ad = getelementptr i8, ptr %.066172.us, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1             ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %.split.us
  %i.ag = icmp eq i32 %.069171.us, 1
  br i1 %i.ag, label %.thread119, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = add i32 %.064173.us, 1
  %i.ai = sext i32 %i.ah to i64                   ; 4 uses
  %i.aj = getelementptr i8, ptr %.066172.us, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = add nuw nsw i32 %i.al, 2                ; 5 uses
  %i.an = icmp samesign ugt i32 %i.am, %.069171.us
  br i1 %i.an, label %.thread119, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp eq i8 %i.ae, 1
  br i1 %i.ao, label %bb.ae, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = add i32 %.060176.us, 1                  ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %.071302
  br i1 %i.aq, label %.thread119, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i8 %i.ae, label %bb.ac [
    i8 5, label %bb.ab
    i8 49, label %bb.p
    i8 -62, label %bb.k
    i8 7, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = zext i16 %.val.i99.us to i64
  %i.as = getelementptr i8, ptr %.val7.i.us, i64 %i.ar ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ai
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = icmp ult i8 %i.au, 8
  br i1 %i.av, label %ipv6_hop_calipso.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = zext i8 %i.au to i32
  %i.ax = add i32 %.064173.us, 6
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.as, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 2
  %i.bd = add nuw nsw i32 %i.bc, 8
  %i.be = icmp samesign ugt i32 %i.bd, %i.aw
  br i1 %i.be, label %ipv6_hop_calipso.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %i.as, i64 %i.ac
  %i.bg = tail call zeroext i1 @calipso_validate(ptr noundef %1, ptr noundef %i.bf) #9
  br i1 %i.bg, label %ip6_tlvopt_unknown.exit.us, label %ipv6_hop_calipso.exit

bb.k:                                             ; preds = %bb.g
  %i.bh = zext i16 %.val.i99.us to i64
  %i.bi = getelementptr i8, ptr %.val7.i.us, i64 %i.bh ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ai
  %i.bk = load i8, ptr %i.bj, align 1
  %.not.i94.us = icmp eq i8 %i.bk, 4
  %i.bl = and i32 %.064173.us, 3
  %.not22.i.us = icmp eq i32 %i.bl, 2
  %or.cond.i.us = and i1 %.not22.i.us, %.not.i94.us
  br i1 %or.cond.i.us, label %bb.l, label %.split179.us

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr i8, ptr %i.bi, i64 %i.ac
  %i.bn = getelementptr i8, ptr %i.bm, i64 2
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo) ; 3 uses
  %i.bq = icmp ult i32 %i.bp, 65536
  br i1 %i.bq, label %.split181.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr i8, ptr %i.bi, i64 4
  %i.bs = load i16, ptr %i.br, align 4
  %.not23.i.us = icmp eq i16 %i.bs, 0
  br i1 %.not23.i.us, label %bb.n, label %.split184.us

bb.n:                                             ; preds = %bb.m
  %i.bt = zext i32 %i.bp to i64
  %i.bu = load i32, ptr %i.x, align 8             ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nsw i64 %i.bv, -40
  %i.bx = icmp ult i64 %i.bw, %i.bt
  br i1 %i.bx, label %.split179.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = add i32 %i.bp, 40                       ; 2 uses
  %.not.i.i96.us = icmp ult i32 %i.by, %i.bu
  br i1 %.not.i.i96.us, label %pskb_trim_rcsum.exit.i.us, label %ipv6_hop_jumbo.exit.us, !prof !10

pskb_trim_rcsum.exit.i.us:                        ; preds = %bb.o
  %i.bz = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %1, i32 noundef range(i32 65576, 40) %i.by) #9
  %.not24.i.us = icmp eq i32 %i.bz, 0
  br i1 %.not24.i.us, label %ipv6_hop_jumbo.exit.us, label %.split179.us

ipv6_hop_jumbo.exit.us:                           ; preds = %pskb_trim_rcsum.exit.i.us, %bb.o
  %i.ca = load i16, ptr %i.y, align 8
  %i.cb = or i16 %i.ca, 128
  store i16 %i.cb, ptr %i.y, align 8
  br label %ip6_tlvopt_unknown.exit.us

bb.p:                                             ; preds = %bb.g
  %i.cc = and i32 %.064173.us, 3
  %.not.i.us = icmp eq i32 %i.cc, 0
  br i1 %.not.i.us, label %bb.q, label %ipv6_hop_ioam.exit

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.z, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 192
  %i.cf = load volatile ptr, ptr %i.ce, align 64  ; 2 uses
  %.not38.i.us = icmp eq ptr %i.cf, null
  br i1 %.not38.i.us, label %ipv6_hop_ioam.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %i.cf, i64 892
  %i.ch = load volatile i8, ptr %i.cg, align 4
  %.not39.i.us = icmp eq i8 %i.ch, 0
  br i1 %.not39.i.us, label %ip6_tlvopt_unknown.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = zext i16 %.val.i99.us to i64
  %i.cj = getelementptr i8, ptr %.val7.i.us, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ac  ; 5 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 1      ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1             ; 3 uses
  %i.cn = icmp ult i8 %i.cm, 2
  br i1 %i.cn, label %ipv6_hop_ioam.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr i8, ptr %i.ck, i64 3
  %i.cp = load i8, ptr %i.co, align 1
  %cond.i.us = icmp eq i8 %i.cp, 0
  br i1 %cond.i.us, label %bb.u, label %ip6_tlvopt_unknown.exit.us

bb.u:                                             ; preds = %bb.t
  %i.cq = icmp ult i8 %i.cm, 10
  br i1 %i.cq, label %ipv6_hop_ioam.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr i8, ptr %i.ck, i64 4
  %i.cs = getelementptr i8, ptr %i.ck, i64 6
  %i.ct = load i16, ptr %i.cs, align 1            ; 2 uses
  %i.cu = lshr i16 %i.ct, 6
  %i.cv = and i16 %i.cu, 508
  %narrow.i.us = add nuw nsw i16 %i.cv, 10
  %i.cw = zext i8 %i.cm to i16
  %i.cx = icmp samesign ugt i16 %narrow.i.us, %i.cw
  br i1 %i.cx, label %ipv6_hop_ioam.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = lshr i16 %i.ct, 3
  %i.cz = and i16 %i.cy, 31
  %i.da = getelementptr i8, ptr %i.ck, i64 8
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = tail call i32 @llvm.bswap.i32(i32 %i.db)
  %i.dd = tail call zeroext i8 @ioam6_trace_compute_nodelen(i32 noundef %i.dc) #9
  %i.de = zext i8 %i.dd to i16
  %.not40.i.us = icmp eq i16 %i.cz, %i.de
  br i1 %.not40.i.us, label %bb.x, label %ipv6_hop_ioam.exit

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %i.z, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 264
  %.val43.i.us = load ptr, ptr %i.dg, align 8
  %i.dh = load i16, ptr %i.cr, align 1
  %i.di = tail call ptr @ioam6_namespace(ptr noundef %.val43.i.us, i16 noundef zeroext %i.dh) #9 ; 2 uses
  %.not41.i.us = icmp eq ptr %i.di, null
  br i1 %.not41.i.us, label %ip6_tlvopt_unknown.exit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val48.i.us = load i64, ptr %i.aa, align 8
  %i.dj = and i64 %.val48.i.us, -2                ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.us, label %skb_valid_dst.exit.thread.i.us, label %skb_valid_dst.exit.i.us

skb_valid_dst.exit.i.us:                          ; preds = %bb.y
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr i8, ptr %i.dk, i64 56
  %i.dm = load i16, ptr %i.dl, align 8
  %i.dn = and i16 %i.dm, 128
  %.not3.i.i.us = icmp eq i16 %i.dn, 0
  br i1 %.not3.i.i.us, label %bb.z, label %skb_valid_dst.exit.thread.i.us

skb_valid_dst.exit.thread.i.us:                   ; preds = %skb_valid_dst.exit.i.us, %bb.y
  tail call void @ip6_route_input(ptr noundef %1) #9
  br label %bb.z

bb.z:                                             ; preds = %skb_valid_dst.exit.thread.i.us, %skb_valid_dst.exit.i.us
  %i.do = or disjoint i32 %.064173.us, 2
  %i.dp = load i8, ptr %i.cl, align 1
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add i32 %i.do, %i.dq
  %i.ds = tail call i32 @skb_ensure_writable(ptr noundef %1, i32 noundef %i.dr) #9
  %.not42.i.us = icmp eq i32 %i.ds, 0
  br i1 %.not42.i.us, label %bb.aa, label %ipv6_hop_ioam.exit

bb.aa:                                            ; preds = %bb.z
  %.val44.i.us = load i16, ptr %i.i, align 8
  %.val45.i.us = load ptr, ptr %i.b, align 8
  %i.dt = zext i16 %.val44.i.us to i64
  %i.du = getelementptr i8, ptr %.val45.i.us, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.ac  ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4      ; 2 uses
  tail call void @ioam6_fill_trace_data(ptr noundef %1, ptr noundef nonnull %i.di, ptr noundef %i.dw, i1 noundef zeroext true) #9
  %i.dx = load ptr, ptr %i.z, align 8
  %i.dy = getelementptr i8, ptr %i.dx, i64 264
  %.val.i92.us = load ptr, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %i.dv, i64 1
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nsw i32 %i.eb, -2
  tail call void @ioam6_event(i32 noundef 1, ptr noundef %.val.i92.us, i32 noundef 2080, ptr noundef %i.dw, i32 noundef %i.ec) #9
  br label %ip6_tlvopt_unknown.exit.us

bb.ab:                                            ; preds = %bb.g
  %i.ed = zext i16 %.val.i99.us to i64
  %i.ee = getelementptr i8, ptr %.val7.i.us, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.ai
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = icmp eq i8 %i.eg, 2
  br i1 %i.eh, label %ipv6_hop_ra.exit.thread.us, label %ipv6_hop_ra.exit

ipv6_hop_ra.exit.thread.us:                       ; preds = %bb.ab
  %i.ei = load i16, ptr %i.y, align 8
  %i.ej = or i16 %i.ei, 8
  store i16 %i.ej, ptr %i.y, align 8
  %i.ek = getelementptr i8, ptr %i.ee, i64 %i.ac
  %i.el = getelementptr i8, ptr %i.ek, i64 2
  %i.em = load i16, ptr %i.el, align 1
  store i16 %i.em, ptr %i.ab, align 4
  br label %ip6_tlvopt_unknown.exit.us

bb.ac:                                            ; preds = %bb.g
  br i1 %i.n, label %.loopexit129, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = zext i16 %.val.i99.us to i64
  %i.eo = getelementptr i8, ptr %.val7.i.us, i64 %i.en ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ac
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = lshr i8 %i.eq, 6
  switch i8 %i.er, label %.unreachabledefault [
    i8 0, label %ip6_tlvopt_unknown.exit.us
    i8 2, label %.loopexit130
    i8 3, label %.split189.us
    i8 1, label %.loopexit129
  ]

ip6_tlvopt_unknown.exit.us:                       ; preds = %bb.ad, %ipv6_hop_ra.exit.thread.us, %bb.aa, %bb.x, %bb.t, %bb.r, %ipv6_hop_jumbo.exit.us, %bb.j
  %.val88.us = load i16, ptr %i.i, align 8        ; 2 uses
  %.val89.us = load ptr, ptr %i.b, align 8        ; 2 uses
  %i.es = zext i16 %.val88.us to i64
  %i.et = getelementptr i8, ptr %.val89.us, i64 %i.es
  br label %.loopexit.us

bb.ae:                                            ; preds = %bb.e
  %i.eu = add nuw nsw i32 %i.am, %.059177.us      ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 7
  br i1 %i.ev, label %.thread119, label %.preheader.us

bb.af:                                            ; preds = %.lr.ph.us
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count263
  br i1 %exitcond264.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !12

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.af
  %indvars.iv260 = phi i64 [ 2, %.lr.ph.us.preheader ], [ %indvars.iv.next261, %bb.af ] ; 2 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv260 to i32
  %i.ex = add i32 %.064173.us, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %.066172.us, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %.not.us = icmp eq i8 %i.fa, 0
  br i1 %.not.us, label %bb.af, label %.thread119

.loopexit.us:                                     ; preds = %bb.af, %.preheader.us, %ip6_tlvopt_unknown.exit.us
  %.val12.i.us275 = phi ptr [ %.val89.us, %ip6_tlvopt_unknown.exit.us ], [ %.val7.i.us, %.preheader.us ], [ %.val7.i.us, %bb.af ]
  %.val.i97.us272 = phi i16 [ %.val88.us, %ip6_tlvopt_unknown.exit.us ], [ %.val.i99.us, %.preheader.us ], [ %.val.i99.us, %bb.af ]
  %.167.us = phi ptr [ %i.et, %ip6_tlvopt_unknown.exit.us ], [ %.066172.us, %.preheader.us ], [ %.066172.us, %bb.af ]
  %.161.us = phi i32 [ %i.ap, %ip6_tlvopt_unknown.exit.us ], [ %.060176.us, %.preheader.us ], [ %.060176.us, %bb.af ]
  %.1.us = phi i32 [ 0, %ip6_tlvopt_unknown.exit.us ], [ %i.eu, %.preheader.us ], [ %i.eu, %bb.af ]
  %i.fb = sub nuw nsw i32 %.069171.us, %i.am
  br label %bb.ai

bb.ag:                                            ; preds = %.split.us
  %i.fc = icmp sgt i32 %.059177.us, 6
  br i1 %i.fc, label %.thread119, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = add nuw nsw i32 %.059177.us, 1
  %i.fe = add nsw i32 %.069171.us, -1
  br label %bb.ai, !llvm.loop !14

bb.ai:                                            ; preds = %bb.ah, %.loopexit.us
  %.val12.i.us274 = phi ptr [ %.val12.i.us275, %.loopexit.us ], [ %.val7.i.us, %bb.ah ]
  %.val.i97.us271 = phi i16 [ %.val.i97.us272, %.loopexit.us ], [ %.val.i99.us, %bb.ah ]
  %.170.us = phi i32 [ %i.fb, %.loopexit.us ], [ %i.fe, %bb.ah ] ; 2 uses
  %.268.us = phi ptr [ %.167.us, %.loopexit.us ], [ %.066172.us, %bb.ah ]
  %.pn.us = phi i32 [ %i.am, %.loopexit.us ], [ 1, %bb.ah ]
  %.262.us = phi i32 [ %.161.us, %.loopexit.us ], [ %.060176.us, %bb.ah ]
  %.2.us = phi i32 [ %.1.us, %.loopexit.us ], [ %i.fd, %bb.ah ]
  %.165.us = add i32 %.pn.us, %.064173.us
  %i.ff = icmp sgt i32 %.170.us, 0
  br i1 %i.ff, label %.split.us, label %.thread

.preheader.us:                                    ; preds = %bb.ae
  %.not221 = icmp eq i8 %i.ak, 0
  br i1 %.not221, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %wide.trip.count263 = zext nneg i32 %i.am to i64
  br label %.lr.ph.us

.unreachabledefault:                              ; preds = %bb.ad
  unreachable

default.unreachable:                              ; preds = %bb.ba
  unreachable

.split.split.preheader:                           ; preds = %.thread299
  %i.fg = zext i16 %.val90 to i64
  %i.fh = getelementptr i8, ptr %.val85, i64 %i.fg ; 2 uses
  br label %.split.split

.split.split.us:                                  ; preds = %bb.b, %bb.ar
  %.059177.us195 = phi i32 [ %.2.us209, %bb.ar ], [ 0, %bb.b ] ; 3 uses
  %.064173.us197 = phi i32 [ %.165.us210, %bb.ar ], [ %i.q, %bb.b ] ; 4 uses
  %.069171.us199 = phi i32 [ %.170.us205, %bb.ar ], [ %i.r, %bb.b ] ; 4 uses
  %i.fi = sext i32 %.064173.us197 to i64
  %i.fj = getelementptr i8, ptr %i.k, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1             ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %.split.split.us
  %i.fm = icmp eq i32 %.069171.us199, 1
  br i1 %i.fm, label %.thread119, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fn = add i32 %.064173.us197, 1
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr i8, ptr %i.k, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1             ; 2 uses
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fr, 2                ; 5 uses
  %i.ft = icmp samesign ugt i32 %i.fs, %.069171.us199
  br i1 %i.ft, label %.thread119, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fu = icmp eq i8 %i.fk, 1
  br i1 %i.fu, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = icmp slt i32 %i.o, 1
  br i1 %i.fv, label %.thread119, label %.loopexit127

bb.an:                                            ; preds = %bb.al
  %i.fw = add nuw nsw i32 %i.fs, %.059177.us195   ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 7
  br i1 %i.fx, label %.thread119, label %.preheader.us211

bb.ao:                                            ; preds = %.lr.ph.us213
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %.loopexit.us212, label %.lr.ph.us213, !llvm.loop !12

.lr.ph.us213:                                     ; preds = %.lr.ph.us213.preheader, %bb.ao
  %indvars.iv255 = phi i64 [ 2, %.lr.ph.us213.preheader ], [ %indvars.iv.next256, %bb.ao ] ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv255 to i32
  %i.fz = add i32 %.064173.us197, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr i8, ptr %i.k, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1
  %.not.us201 = icmp eq i8 %i.gc, 0
  br i1 %.not.us201, label %bb.ao, label %.thread119

bb.ap:                                            ; preds = %.split.split.us
  %i.gd = icmp sgt i32 %.059177.us195, 6
  br i1 %i.gd, label %.thread119, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = add nuw nsw i32 %.059177.us195, 1
  %i.gf = add nsw i32 %.069171.us199, -1
  br label %bb.ar, !llvm.loop !14

bb.ar:                                            ; preds = %bb.aq, %.loopexit.us212
  %.170.us205 = phi i32 [ %i.gh, %.loopexit.us212 ], [ %i.gf, %bb.aq ] ; 2 uses
  %.pn.us207 = phi i32 [ %i.fs, %.loopexit.us212 ], [ 1, %bb.aq ]
  %.2.us209 = phi i32 [ %i.fw, %.loopexit.us212 ], [ %i.ge, %bb.aq ]
  %.165.us210 = add i32 %.pn.us207, %.064173.us197
  %i.gg = icmp sgt i32 %.170.us205, 0
  br i1 %i.gg, label %.split.split.us, label %.thread

.preheader.us211:                                 ; preds = %bb.an
  %.not220 = icmp eq i8 %i.fq, 0
  br i1 %.not220, label %.loopexit.us212, label %.lr.ph.us213.preheader

.lr.ph.us213.preheader:                           ; preds = %.preheader.us211
  %wide.trip.count258 = zext nneg i32 %i.fs to i64
  br label %.lr.ph.us213

.loopexit.us212:                                  ; preds = %bb.ao, %.preheader.us211
  %i.gh = sub nuw nsw i32 %.069171.us199, %i.fs
  br label %bb.ar

.split.split:                                     ; preds = %.split.split.preheader, %bb.bc
  %.059177 = phi i32 [ %.2, %bb.bc ], [ 0, %.split.split.preheader ] ; 3 uses
  %.060176 = phi i32 [ %.262, %bb.bc ], [ 0, %.split.split.preheader ] ; 4 uses
  %.064173 = phi i32 [ %.165, %bb.bc ], [ %i.t, %.split.split.preheader ] ; 5 uses
  %.069171 = phi i32 [ %.170, %bb.bc ], [ %i.u, %.split.split.preheader ] ; 4 uses
  %i.gi = sext i32 %.064173 to i64                ; 2 uses
  %i.gj = getelementptr i8, ptr %i.k, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1             ; 2 uses
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.as, label %bb.au

bb.as:                                            ; preds = %.split.split
  %i.gm = icmp sgt i32 %.059177, 6
  br i1 %i.gm, label %.thread119, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gn = add nuw nsw i32 %.059177, 1
  %i.go = add nsw i32 %.069171, -1
  br label %bb.bc, !llvm.loop !14

bb.au:                                            ; preds = %.split.split
  %i.gp = icmp eq i32 %.069171, 1
  br i1 %i.gp, label %.thread119, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gq = add i32 %.064173, 1
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr i8, ptr %i.k, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1             ; 2 uses
  %i.gu = zext i8 %i.gt to i32
  %i.gv = add nuw nsw i32 %i.gu, 2                ; 5 uses
  %i.gw = icmp samesign ugt i32 %i.gv, %.069171
  br i1 %i.gw, label %.thread119, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gx = icmp eq i8 %i.gk, 1
  br i1 %i.gx, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gy = add nuw nsw i32 %i.gv, %.059177         ; 3 uses
  %i.gz = icmp sgt i32 %i.gy, 7
  br i1 %i.gz, label %.thread119, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %.not219 = icmp eq i8 %i.gt, 0
  br i1 %.not219, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.gv to i64
  br label %.lr.ph

bb.ay:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ay ] ; 2 uses
  %i.ha = trunc nuw nsw i64 %indvars.iv to i32
  %i.hb = add i32 %.064173, %i.ha
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr i8, ptr %i.k, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1
  %.not = icmp eq i8 %i.he, 0
  br i1 %.not, label %bb.ay, label %.thread119

bb.az:                                            ; preds = %bb.aw
  %i.hf = add i32 %.060176, 1                     ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, %2
  br i1 %i.hg, label %.thread119, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hh = getelementptr i8, ptr %i.fh, i64 %i.gi
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = lshr i8 %i.hi, 6
  switch i8 %i.hj, label %default.unreachable [
    i8 0, label %.loopexit
    i8 2, label %.loopexit128
    i8 3, label %bb.bb
    i8 1, label %.loopexit127
  ]

ipv6_hop_ra.exit:                                 ; preds = %bb.ab
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 15) #9
  br label %.thread

ipv6_hop_ioam.exit:                               ; preds = %bb.p, %bb.q, %bb.s, %bb.u, %bb.v, %bb.w, %bb.z
  %.034.i.us = phi i32 [ 15, %bb.p ], [ 15, %bb.s ], [ 15, %bb.u ], [ 15, %bb.v ], [ 15, %bb.w ], [ 15, %bb.z ], [ 56, %bb.q ]
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef range(i32 2, 72) %.034.i.us) #9
  br label %.thread

.split181.us:                                     ; preds = %bb.l
  %i.hk = add i32 %.064173.us, 2
  tail call void @icmpv6_param_prob_reason(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %i.hk, i32 noundef 15) #9
  br label %.thread

.split184.us:                                     ; preds = %bb.m
  tail call void @icmpv6_param_prob_reason(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %.064173.us, i32 noundef 15) #9
  br label %.thread

.split179.us:                                     ; preds = %bb.k, %bb.n, %pskb_trim_rcsum.exit.i.us
  %.019.i.us = phi i32 [ 2, %pskb_trim_rcsum.exit.i.us ], [ 15, %bb.k ], [ 9, %bb.n ]
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef range(i32 2, 72) %.019.i.us) #9
  br label %.thread

ipv6_hop_calipso.exit:                            ; preds = %bb.h, %bb.i, %bb.j
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 15) #9
  br label %.thread

.split189.us:                                     ; preds = %bb.ad
  %i.hl = getelementptr i8, ptr %i.eo, i64 24
  %.val10.i = load i32, ptr %i.hl, align 4
  %i.hm = and i32 %.val10.i, 255
  %i.hn = icmp eq i32 %i.hm, 255
  br i1 %i.hn, label %.loopexit129, label %.loopexit130

.loopexit130:                                     ; preds = %bb.ad, %.split189.us
  tail call void @icmpv6_param_prob_reason(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %.064173.us, i32 noundef 71) #9
  br label %.thread

.loopexit129:                                     ; preds = %bb.ad, %bb.ac, %.split189.us
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 71) #9
  br label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.ho = getelementptr i8, ptr %i.fh, i64 24
  %.val10.i104 = load i32, ptr %i.ho, align 4
  %i.hp = and i32 %.val10.i104, 255
  %i.hq = icmp eq i32 %i.hp, 255
  br i1 %i.hq, label %.loopexit127, label %.loopexit128

.loopexit128:                                     ; preds = %bb.ba, %bb.bb
  tail call void @icmpv6_param_prob_reason(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %.064173, i32 noundef 71) #9
  br label %.thread

.loopexit127:                                     ; preds = %bb.ba, %bb.am, %bb.bb
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 71) #9
  br label %.thread

.loopexit:                                        ; preds = %bb.ay, %bb.ba, %.preheader
  %.161 = phi i32 [ %i.hf, %bb.ba ], [ %.060176, %.preheader ], [ %.060176, %bb.ay ]
  %.1 = phi i32 [ 0, %bb.ba ], [ %i.gy, %.preheader ], [ %i.gy, %bb.ay ]
  %i.hr = sub nuw nsw i32 %.069171, %i.gv
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit, %bb.at
  %.170 = phi i32 [ %i.hr, %.loopexit ], [ %i.go, %bb.at ] ; 2 uses
  %.pn = phi i32 [ %i.gv, %.loopexit ], [ 1, %bb.at ]
  %.262 = phi i32 [ %.161, %.loopexit ], [ %.060176, %bb.at ]
  %.2 = phi i32 [ %.1, %.loopexit ], [ %i.gn, %bb.at ]
  %.165 = add i32 %.pn, %.064173
  %i.hs = icmp sgt i32 %.170, 0
  br i1 %i.hs, label %.split.split, label %.thread

.thread119:                                       ; preds = %bb.ax, %bb.av, %bb.au, %bb.as, %bb.az, %.lr.ph, %bb.aj, %bb.ak, %bb.an, %bb.ap, %.lr.ph.us213, %bb.ag, %bb.ae, %bb.f, %bb.d, %bb.c, %.lr.ph.us, %bb.am
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 15) #9
  br label %.thread

.thread:                                          ; preds = %bb.bc, %bb.ar, %bb.ai, %.loopexit128, %.loopexit127, %.loopexit130, %.loopexit129, %.split184.us, %.split181.us, %.split179.us, %ipv6_hop_ioam.exit, %ipv6_hop_ra.exit, %ipv6_hop_calipso.exit, %.thread119
  %.274 = phi i1 [ false, %.loopexit128 ], [ false, %.thread119 ], [ false, %ipv6_hop_calipso.exit ], [ false, %ipv6_hop_ra.exit ], [ false, %ipv6_hop_ioam.exit ], [ false, %.split179.us ], [ false, %.split181.us ], [ false, %.split184.us ], [ false, %.loopexit129 ], [ false, %.loopexit130 ], [ false, %.loopexit127 ], [ true, %bb.ai ], [ true, %bb.ar ], [ true, %bb.bc ]
  ret i1 %.274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i8 @ipv6_push_nfrag_opts(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 13 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 1
  switch i8 %i.d, label %ipv6_push_rthdr.exit [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 4, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 1        ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 3
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = tail call ptr @skb_push(ptr noundef %0, i32 noundef %i.i) #9 ; 4 uses
  %i.k = load i64, ptr %i.b, align 4
  store i64 %i.k, ptr %i.j, align 4
  %i.l = load i8, ptr %i.e, align 1               ; 2 uses
  %i.m = lshr i8 %i.l, 1
  %i.n = icmp ugt i8 %i.l, 3
  %i.o = zext nneg i8 %i.m to i64                 ; 2 uses
  br i1 %i.n, label %bb.d, label %ipv6_push_rthdr0.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.j, i64 8
  %i.q = getelementptr i8, ptr %i.b, i64 24
  %i.r = shl nuw nsw i64 %i.o, 4
  %i.s = add nuw nsw i64 %i.r, 68719476720
  %i.t = and i64 %i.s, 68719476720
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %i.q, i64 %i.t, i1 false)
  br label %ipv6_push_rthdr0.exit.i

ipv6_push_rthdr0.exit.i:                          ; preds = %bb.d, %bb.c
  %i.u = getelementptr [16 x i8], ptr %i.j, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %3, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.v, ptr noundef align 4 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr i8, ptr %i.b, i64 8
  store ptr %i.x, ptr %3, align 8
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.b, i64 1        ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 3
  %i.ac = add nuw nsw i32 %i.ab, 8
  %i.ad = tail call ptr @skb_push(ptr noundef %0, i32 noundef %i.ac) #9 ; 6 uses
  %i.ae = load i64, ptr %i.b, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %i.b, i64 4
  %i.ag = load i8, ptr %i.af, align 4             ; 2 uses
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 8
  %i.aj = getelementptr i8, ptr %i.ad, i64 24
  %i.ak = getelementptr i8, ptr %i.b, i64 8
  %i.al = getelementptr i8, ptr %i.b, i64 24
  %i.am = zext i8 %i.ag to i64
  %i.an = shl nuw nsw i64 %i.am, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aj, ptr align 4 %i.al, i64 %i.an, i1 false)
  %i.ao = load ptr, ptr %3, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.ai, ptr noundef align 4 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ap = getelementptr i8, ptr %i.b, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr [16 x i8], ptr %i.ak, i64 %i.ar
  store ptr %i.as, ptr %3, align 8
  %i.at = load i8, ptr %i.y, align 1
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = shl nuw nsw i32 %i.ah, 1
  %i.aw = add nuw nsw i32 %i.av, 2                ; 2 uses
  %i.ax = icmp samesign ult i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.f, label %.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.ay = shl nuw nsw i32 %i.ah, 4
  %i.az = add nuw nsw i32 %i.ay, 24
  %i.ba = sub nuw nsw i32 %i.au, %i.aw
  %i.bb = shl nuw nsw i32 %i.ba, 3
  %i.bc = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ad, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.b, i64 %i.bc
  %i.bf = zext nneg i32 %i.bb to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %ipv6_push_rthdr0.exit.i
  %.sink.i = phi ptr [ %i.j, %ipv6_push_rthdr0.exit.i ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ]
  store i8 %2, ptr %.sink.i, align 4
  br label %ipv6_push_rthdr.exit

ipv6_push_rthdr.exit:                             ; preds = %bb.b, %.sink.split.i
  %.0.i = phi i8 [ %2, %bb.b ], [ 43, %.sink.split.i ] ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.not17 = icmp eq ptr %i.bh, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ipv6_push_rthdr.exit
  %i.bi = getelementptr i8, ptr %i.bh, i64 1      ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 3
  %i.bm = add nuw nsw i32 %i.bl, 8
  %i.bn = tail call ptr @skb_push(ptr noundef %0, i32 noundef %i.bm) #9 ; 2 uses
  %i.bo = load i8, ptr %i.bi, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bn, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bh, i64 %i.br, i1 false)
  store i8 %.0.i, ptr %i.bn, align 1
  br label %bb.h

bb.h:                                             ; preds = %ipv6_push_rthdr.exit, %bb.g, %bb.a
  %.0 = phi i8 [ 60, %bb.g ], [ %.0.i, %ipv6_push_rthdr.exit ], [ %2, %bb.a ] ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not18 = icmp eq ptr %i.bt, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr i8, ptr %i.bt, i64 1      ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 3
  %i.by = add nuw nsw i32 %i.bx, 8
  %i.bz = tail call ptr @skb_push(ptr noundef %0, i32 noundef %i.by) #9 ; 2 uses
  %i.ca = load i8, ptr %i.bu, align 1
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bz, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bt, i64 %i.cd, i1 false)
  store i8 %.0, ptr %i.bz, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i8 [ 0, %bb.i ], [ %.0, %bb.h ]
  ret i8 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i8 @ipv6_push_frag_opts(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 1        ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = add nuw nsw i32 %i.f, 8
  %i.h = tail call ptr @skb_push(ptr noundef %0, i32 noundef %i.g) #9 ; 2 uses
  %i.i = load i8, ptr %i.c, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.h, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.b, i64 %i.l, i1 false)
  store i8 %2, ptr %i.h, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i8 [ 60, %bb.b ], [ %2, %bb.a ]
  ret i8 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ipv6_dup_options(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call ptr @sock_kmemdup(ptr noundef %0, ptr noundef %1, i32 noundef %i.b, i32 noundef 2080) #9 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@ipv6_renew_options:bb.a
  %i.dh = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not90 = icmp eq ptr %i.dh, null
  br i1 %.not90, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = getelementptr i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i16
  %i.dl = shl nuw nsw i16 %i.dk, 3
  %i.dm = add nuw nsw i16 %i.dl, 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.dn = phi i16 [ %i.dm, %bb.ac ], [ 0, %bb.ab ]
  %i.do = add nuw nsw i16 %i.dn, %i.dg
  %i.dp = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not91 = icmp eq ptr %i.dp, null
  br i1 %.not91, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i16
  %i.dt = shl nuw nsw i16 %i.ds, 3
  %i.du = add nuw nsw i16 %i.dt, 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.dv = phi i16 [ %i.du, %bb.ae ], [ 0, %bb.ad ]
  %i.dw = add nuw nsw i16 %i.do, %i.dv
  %i.dx = getelementptr i8, ptr %i.am, i64 10
  store i16 %i.dw, ptr %i.dx, align 2
  %i.dy = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not92 = icmp eq ptr %i.dy, null
  br i1 %.not92, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = getelementptr i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i16
  %i.ec = shl nuw nsw i16 %i.eb, 3
  %i.ed = add nuw nsw i16 %i.ec, 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ee = phi i16 [ %i.ed, %bb.ag ], [ 0, %bb.af ]
  %i.ef = getelementptr i8, ptr %i.am, i64 8
  store i16 %i.ee, ptr %i.ef, align 8
  br label %.thread148

.thread148:                                       ; preds = %.thread143, %bb.m, %bb.l, %bb.ah
  %.062 = phi ptr [ %i.am, %bb.ah ], [ null, %bb.l ], [ inttoptr (i64 -105 to ptr), %bb.m ], [ null, %.thread143 ]
  ret ptr %.062
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local noundef ptr @__ipv6_fixup_options(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr nofree noundef captures(address, ret: address, provenance) %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(64) %0, ptr noundef align 8 dereferenceable(64) %1, i64 64, i1 false)
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %.0 = phi ptr [ %0, %bb.d ], [ %1, %bb.c ]      ; 3 uses
  %i.f = getelementptr i8, ptr %.0, i64 24
  %i.g = getelementptr i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = getelementptr i8, ptr %.0, i64 10        ; 2 uses
  %i.k = load i16, ptr %i.j, align 2
  %.neg16 = add i16 %i.k, -8
  %i.l = shl nuw nsw i16 %i.i, 3
  %i.m = sub i16 %.neg16, %i.l
  store i16 %i.m, ptr %i.j, align 2
  store ptr null, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.1 = phi ptr [ %1, %bb.b ], [ %.0, %bb.e ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local noundef ptr @__fl6_update_dst(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %2, ptr noundef align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %i.i = getelementptr i8, ptr %i.d, i64 3
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr [16 x i8], ptr %i.h, i64 %i.k
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.g, %bb.c ], [ %i.l, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.c, ptr noundef align 4 dereferenceable(16) %.sink, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %2, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -1, 2) i32 @ipv6_rthdr_rcv(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 192
  %i.d = load volatile ptr, ptr %i.c, align 64    ; 5 uses
  %i.e = getelementptr i8, ptr %i.b, i64 264
  %.val = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.f = getelementptr i8, ptr %.val, i64 2296
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 124
  %i.i = load volatile i32, ptr %i.h, align 4     ; 0 uses
  %.not = icmp eq ptr %i.d, null                  ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 796
  %i.k = load volatile i32, ptr %i.j, align 4     ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %0, i64 182        ; 4 uses
  %.val.i = load i16, ptr %i.l, align 2           ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %.val2.i = load ptr, ptr %i.m, align 8          ; 2 uses
  %i.n = zext i16 %.val.i to i64                  ; 2 uses
  %i.o = getelementptr i8, ptr %.val2.i, i64 %i.n
  %i.p = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, 8                          ; 3 uses
  %i.w = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val75 = load i32, ptr %i.w, align 8           ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 116        ; 2 uses
  %.val76 = load i32, ptr %i.x, align 4
  %i.y = sub i32 %.val75, %.val76                 ; 3 uses
  %.not.i = icmp ugt i32 %i.v, %i.y
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ugt i32 %i.v, %.val75
  br i1 %i.z, label %pskb_may_pull_reason.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.aa = sub nuw i32 %i.v, %i.y
  %i.ab = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.aa) #9
  %.not9.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i, label %pskb_may_pull_reason.exit, label %._crit_edge, !prof !10

._crit_edge:                                      ; preds = %bb.e
  %.val.i86.pre = load i16, ptr %i.l, align 2     ; 2 uses
  %.val2.i87.pre = load ptr, ptr %i.m, align 8
  %.pre = load ptr, ptr %i.p, align 8
  %.val71.pre = load i32, ptr %i.w, align 8       ; 2 uses
  %.val72.pre = load i32, ptr %i.x, align 4
  %.pre98 = zext i16 %.val.i86.pre to i64
  %.pre99 = ptrtoint ptr %.pre to i64
  %.pre101 = sub i32 %.val71.pre, %.val72.pre
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi102 = phi i32 [ %.pre101, %._crit_edge ], [ %i.y, %bb.c ] ; 2 uses
  %.pre-phi100 = phi i64 [ %.pre99, %._crit_edge ], [ %i.s, %bb.c ]
  %.pre-phi = phi i64 [ %.pre98, %._crit_edge ], [ %i.n, %bb.c ] ; 2 uses
  %.val71 = phi i32 [ %.val71.pre, %._crit_edge ], [ %.val75, %bb.c ]
  %.val2.i87 = phi ptr [ %.val2.i87.pre, %._crit_edge ], [ %.val2.i, %bb.c ] ; 2 uses
  %.val.i86 = phi i16 [ %.val.i86.pre, %._crit_edge ], [ %.val.i, %bb.c ]
  %i.ac = getelementptr i8, ptr %.val2.i87, i64 %.pre-phi ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %.pre-phi100
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 3
  %i.ak = add nuw nsw i32 %i.aj, 8
  %i.al = add i32 %i.ak, %i.af                    ; 3 uses
  %.not.i60 = icmp ugt i32 %i.al, %.pre-phi102
  br i1 %.not.i60, label %bb.g, label %bb.k, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.am = icmp ugt i32 %i.al, %.val71
  br i1 %i.am, label %pskb_may_pull_reason.exit, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.an = sub nuw i32 %i.al, %.pre-phi102
  %i.ao = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.an) #9
  %.not9.i62 = icmp eq ptr %i.ao, null
  br i1 %.not9.i62, label %pskb_may_pull_reason.exit, label %._crit_edge95, !prof !10

._crit_edge95:                                    ; preds = %bb.h
  %.val65.pre = load i16, ptr %i.l, align 2       ; 2 uses
  %.val66.pre = load ptr, ptr %i.m, align 8
  %.pre103 = zext i16 %.val65.pre to i64
  br label %bb.k

pskb_may_pull_reason.exit:                        ; preds = %bb.h, %bb.e, %bb.g, %bb.d
  br i1 %.not, label %bb.j, label %bb.i, !prof !10

bb.i:                                             ; preds = %pskb_may_pull_reason.exit
  %i.ap = getelementptr i8, ptr %i.d, i64 912
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ar, ptr elementtype(i64) %i.ar) #11, !srcloc !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %pskb_may_pull_reason.exit
  %i.as = getelementptr i8, ptr %.val, i64 728
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.au, ptr elementtype(i64) %i.au) #11, !srcloc !16
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #9
  br label %bb.x

bb.k:                                             ; preds = %._crit_edge95, %bb.f
  %.pre-phi104 = phi i64 [ %.pre103, %._crit_edge95 ], [ %.pre-phi, %bb.f ]
  %.val66 = phi ptr [ %.val66.pre, %._crit_edge95 ], [ %.val2.i87, %bb.f ] ; 2 uses
  %.val65 = phi i16 [ %.val65.pre, %._crit_edge95 ], [ %.val.i86, %bb.f ] ; 2 uses
  %i.av = getelementptr i8, ptr %.val66, i64 %.pre-phi104 ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %.val83 = load i16, ptr %i.aw, align 8          ; 2 uses
  %i.ax = zext i16 %.val83 to i64
  %i.ay = getelementptr i8, ptr %.val66, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %.val85 = load i32, ptr %i.az, align 4
  %i.ba = and i32 %.val85, 255
  %i.bb = icmp eq i32 %i.ba, 255
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %0, i64 128
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = and i8 %i.bd, 7
  %.not59 = icmp eq i8 %i.be, 0
  br i1 %.not59, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr i8, ptr %i.d, i64 912
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 120    ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bh, ptr elementtype(i64) %i.bh) #11, !srcloc !17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bi = getelementptr i8, ptr %.val, i64 728
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 120    ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bk, ptr elementtype(i64) %i.bk) #11, !srcloc !18
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #9
  br label %bb.x

bb.p:                                             ; preds = %bb.l
  %i.bl = getelementptr i8, ptr %i.av, i64 2      ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  switch i8 %i.bm, label %bb.s [
    i8 4, label %bb.q
    i8 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call fastcc i32 @ipv6_srh_rcv(ptr noundef %0) #10, !srcloc !19
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.bo = tail call fastcc i32 @ipv6_rpl_srh_rcv(ptr noundef %0) #10, !srcloc !20
  br label %bb.x

bb.s:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.av, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = sub i16 %.val65, %.val83                ; 3 uses
  %i.bt = getelementptr i8, ptr %0, i64 48
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %0, i64 52
  store i16 %i.bs, ptr %i.bu, align 4
  %i.bv = getelementptr i8, ptr %i.av, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i16
  %i.by = shl nuw nsw i16 %i.bx, 3
  %i.bz = add i16 %.val65, 8
  %i.ca = add i16 %i.bz, %i.by
  store i16 %i.ca, ptr %i.l, align 2
  %i.cb = getelementptr i8, ptr %0, i64 50        ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = getelementptr i8, ptr %0, i64 46
  store i16 %i.cc, ptr %i.cd, align 2
  store i16 0, ptr %i.cb, align 2
  %i.ce = getelementptr i8, ptr %0, i64 54
  store i16 %i.bs, ptr %i.ce, align 2
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  br i1 %.not, label %bb.w, label %bb.v, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr i8, ptr %i.d, i64 912
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ch, ptr elementtype(i64) %i.ch) #11, !srcloc !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = getelementptr i8, ptr %.val, i64 728
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ck, ptr elementtype(i64) %i.ck) #11, !srcloc !22
  %.val79 = load i16, ptr %i.aw, align 8
  %.val80 = load ptr, ptr %i.m, align 8
  %i.cl = zext i16 %.val79 to i64
  %i.cm = getelementptr i8, ptr %.val80, i64 %i.cl
  %i.cn = ptrtoint ptr %i.bl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.cp to i32
  tail call void @icmpv6_param_prob_reason(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %i.cq, i32 noundef 2) #9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.r, %bb.q, %bb.o, %bb.j
  %.0 = phi i32 [ -1, %bb.o ], [ 1, %bb.t ], [ -1, %bb.w ], [ %i.bn, %bb.q ], [ %i.bo, %bb.r ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -1, 2) i32 @ipv6_srh_rcv(ptr noundef %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 11 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 264
  %.val104 = load ptr, ptr %i.e, align 8          ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 182        ; 8 uses
  %.val109 = load i16, ptr %i.f, align 2
  %i.g = getelementptr i8, ptr %0, i64 200        ; 12 uses
  %.val110 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.d, i64 192
  %i.i = load volatile ptr, ptr %i.h, align 64    ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #9
  br label %dst_input.exit

bb.c:                                             ; preds = %bb.a
  %i.j = zext i16 %.val109 to i64
  %i.k = getelementptr i8, ptr %.val110, i64 %i.j ; 3 uses
  %i.l = getelementptr i8, ptr %.val104, i64 2296
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 192
  %i.o = load volatile i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 864
  %i.q = load volatile i32, ptr %i.p, align 8
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.q)
  %.not95 = icmp eq i32 %i.r, 0
  br i1 %.not95, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.k, i64 3
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr i8, ptr %0, i64 126
  %i.w = getelementptr i8, ptr %0, i64 192
  %i.x = getelementptr i8, ptr %0, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = getelementptr i8, ptr %0, i64 140        ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 184       ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ai = getelementptr i8, ptr %0, i64 88        ; 2 uses
  br label %bb.p
end_hunk_1
begin_hunk_2_@ipv6_rpl_srh_rcv:bb.a
  %i.jh = inttoptr i64 %i.jg to ptr               ; 4 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 96
  %i.jj = load i16, ptr %i.ji, align 8
  %.not167 = icmp eq i16 %i.jj, 0
  br i1 %.not167, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %skb_postpush_rcsum.exit
  %i.jk = getelementptr i8, ptr %i.jh, i64 40
  %i.jl = load volatile ptr, ptr %i.jk, align 8   ; 3 uses
  %i.jm = icmp eq ptr %i.jl, @ip6_input
  br i1 %i.jm, label %bb.aj, label %bb.ak, !prof !27

bb.aj:                                            ; preds = %bb.ai
  %i.jn = tail call i32 @ip6_input(ptr noundef %0) #9 ; 0 uses
  br label %dst_input.exit

bb.ak:                                            ; preds = %bb.ai
  %i.jo = icmp eq ptr %i.jl, @ip_local_deliver
  br i1 %i.jo, label %bb.al, label %bb.am, !prof !27

bb.al:                                            ; preds = %bb.ak
  %i.jp = tail call i32 @ip_local_deliver(ptr noundef %0) #9 ; 0 uses
  br label %dst_input.exit

bb.am:                                            ; preds = %bb.ak
  %i.jq = tail call i32 %i.jl(ptr noundef %0) #9, !inline_history !28 ; 0 uses
  br label %dst_input.exit

bb.an:                                            ; preds = %skb_postpush_rcsum.exit
  %i.jr = load volatile ptr, ptr %i.jh, align 8
  %i.js = getelementptr i8, ptr %i.jr, i64 176
  %i.jt = load i32, ptr %i.js, align 16
  %i.ju = and i32 %i.jt, 8
  %.not168 = icmp eq i32 %i.ju, 0
  br i1 %.not168, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val195 = load i16, ptr %i.t, align 8
  %.val196 = load ptr, ptr %i.n, align 8
  %i.jv = zext i16 %.val195 to i64
  %i.jw = getelementptr i8, ptr %.val196, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 7      ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1             ; 2 uses
  %i.jz = icmp ult i8 %i.jy, 2
  br i1 %i.jz, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not169 = icmp eq ptr %i.e, null
  br i1 %.not169, label %bb.ar, label %bb.aq, !prof !10

bb.aq:                                            ; preds = %bb.ap
  %i.ka = getelementptr i8, ptr %i.e, i64 912
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = getelementptr i8, ptr %i.kb, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.kc, ptr elementtype(i64) %i.kc) #11, !srcloc !37
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.kd = getelementptr i8, ptr %.val176, i64 728
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = getelementptr i8, ptr %i.ke, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.kf, ptr elementtype(i64) %i.kf) #11, !srcloc !38
  %i.kg = getelementptr i8, ptr %0, i64 40
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %i.kg) #9
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #9
  br label %dst_input.exit

bb.as:                                            ; preds = %bb.ao
  %i.kh = add i8 %i.jy, -1
  store i8 %i.kh, ptr %i.jx, align 1
  %i.ki = tail call ptr @skb_pull(ptr noundef %0, i32 noundef 40) #9 ; 0 uses
  %.val181 = load i16, ptr %i.m, align 2          ; 2 uses
  %.val182 = load ptr, ptr %i.n, align 8          ; 2 uses
  %i.kj = zext i16 %.val181 to i64
  %i.kk = getelementptr i8, ptr %.val182, i64 %i.kj ; 3 uses
  %i.kl = getelementptr i8, ptr %i.kk, i64 3      ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1             ; 2 uses
  %i.kn = icmp eq i8 %i.km, 0
  br i1 %i.kn, label %._crit_edge, label %bb.l

bb.at:                                            ; preds = %bb.an
  %i.ko = getelementptr i8, ptr %i.jh, i64 40
  %i.kp = load volatile ptr, ptr %i.ko, align 8   ; 3 uses
  %i.kq = icmp eq ptr %i.kp, @ip6_input
  br i1 %i.kq, label %bb.au, label %bb.av, !prof !27

bb.au:                                            ; preds = %bb.at
  %i.kr = tail call i32 @ip6_input(ptr noundef %0) #9 ; 0 uses
  br label %dst_input.exit

bb.av:                                            ; preds = %bb.at
  %i.ks = icmp eq ptr %i.kp, @ip_local_deliver
  br i1 %i.ks, label %bb.aw, label %bb.ax, !prof !27

bb.aw:                                            ; preds = %bb.av
  %i.kt = tail call i32 @ip_local_deliver(ptr noundef %0) #9 ; 0 uses
  br label %dst_input.exit

bb.ax:                                            ; preds = %bb.av
  %i.ku = tail call i32 %i.kp(ptr noundef %0) #9, !inline_history !28 ; 0 uses
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %bb.ax, %bb.aw, %bb.au, %bb.am, %bb.al, %bb.aj, %bb.ar, %bb.ad, %bb.v, %bb.t, %_kmalloc_array_noprof.exit.thread, %bb.r, %bb.n, %bb.k, %__skb_tunnel_rx.exit, %bb.b
  %.0 = phi i32 [ -1, %__skb_tunnel_rx.exit ], [ 1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.r ], [ -1, %_kmalloc_array_noprof.exit.thread ], [ -1, %bb.t ], [ -1, %bb.v ], [ -1, %bb.ad ], [ -1, %bb.b ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.ax ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip6_input(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip_local_deliver(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ipv6_rpl_srh_decompress(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv6_chk_rpl_srh_loop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ipv6_rpl_srh_compress(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @icmpv6_param_prob_reason(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -1, 2) i32 @ipv6_destopt_rcv(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 192
  %i.d = load volatile ptr, ptr %i.c, align 64    ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 88
  %.val = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.b, i64 264
  %.val42 = load ptr, ptr %i.h, align 8           ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 182        ; 5 uses
  %.val.i = load i16, ptr %i.i, align 2           ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %.val2.i = load ptr, ptr %i.j, align 8          ; 2 uses
  %i.k = zext i16 %.val.i to i64                  ; 2 uses
  %i.l = getelementptr i8, ptr %.val2.i, i64 %i.k
  %i.m = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, 8                          ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val53 = load i32, ptr %i.t, align 8           ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 116        ; 2 uses
  %.val54 = load i32, ptr %i.u, align 4
  %i.v = sub i32 %.val53, %.val54                 ; 3 uses
  %.not.i = icmp ugt i32 %i.s, %i.v
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ugt i32 %i.s, %.val53
  br i1 %i.w, label %pskb_may_pull_reason.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.x = sub nuw i32 %i.s, %i.v
  %i.y = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.x) #9
  %.not9.i = icmp eq ptr %i.y, null
  br i1 %.not9.i, label %pskb_may_pull_reason.exit, label %._crit_edge, !prof !10

._crit_edge:                                      ; preds = %bb.c
  %.val.i57.pre = load i16, ptr %i.i, align 2     ; 2 uses
  %.val2.i58.pre = load ptr, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.m, align 8
  %.val49.pre = load i32, ptr %i.t, align 8       ; 2 uses
  %.val50.pre = load i32, ptr %i.u, align 4
  %.pre72 = zext i16 %.val.i57.pre to i64
  %.pre73 = ptrtoint ptr %.pre to i64
  %.pre75 = sub i32 %.val49.pre, %.val50.pre
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi76 = phi i32 [ %.pre75, %._crit_edge ], [ %i.v, %bb.a ] ; 2 uses
  %.pre-phi74 = phi i64 [ %.pre73, %._crit_edge ], [ %i.p, %bb.a ]
  %.pre-phi = phi i64 [ %.pre72, %._crit_edge ], [ %i.k, %bb.a ]
  %.val49 = phi i32 [ %.val49.pre, %._crit_edge ], [ %.val53, %bb.a ]
  %.val2.i58 = phi ptr [ %.val2.i58.pre, %._crit_edge ], [ %.val2.i, %bb.a ]
  %.val.i57 = phi i16 [ %.val.i57.pre, %._crit_edge ], [ %.val.i, %bb.a ]
  %i.z = getelementptr i8, ptr %.val2.i58, i64 %.pre-phi ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %.pre-phi74
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr i8, ptr %i.z, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 3
  %i.ah = add nuw nsw i32 %i.ag, 8                ; 2 uses
  %i.ai = add i32 %i.ah, %i.ac                    ; 3 uses
  %.not.i36 = icmp ugt i32 %i.ai, %.pre-phi76
  br i1 %.not.i36, label %bb.e, label %bb.j, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp ugt i32 %i.ai, %.val49
  br i1 %i.aj, label %pskb_may_pull_reason.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nuw i32 %i.ai, %.pre-phi76
  %i.al = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.ak) #9
  %.not9.i38 = icmp eq ptr %i.al, null
  br i1 %.not9.i38, label %pskb_may_pull_reason.exit, label %._crit_edge66, !prof !10

._crit_edge66:                                    ; preds = %bb.f
  %.val43.pre = load i16, ptr %i.i, align 2       ; 2 uses
  %.val44.pre = load ptr, ptr %i.j, align 8
  %.phi.trans.insert = zext i16 %.val43.pre to i64
  %.phi.trans.insert69 = getelementptr i8, ptr %.val44.pre, i64 %.phi.trans.insert
  %.phi.trans.insert70 = getelementptr i8, ptr %.phi.trans.insert69, i64 1
  %.pre71 = load i8, ptr %.phi.trans.insert70, align 1
  %.pre78 = zext i8 %.pre71 to i32
  %.pre80 = shl nuw nsw i32 %.pre78, 3
  %.pre82 = add nuw nsw i32 %.pre80, 8
  br label %bb.j

pskb_may_pull_reason.exit:                        ; preds = %bb.f, %bb.c, %bb.e, %bb.b
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %pskb_may_pull_reason.exit
  %i.am = getelementptr i8, ptr %i.d, i64 912
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ao, ptr elementtype(i64) %i.ao) #11, !srcloc !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %pskb_may_pull_reason.exit
  %i.ap = load volatile ptr, ptr %i.g, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 264
  %.val41 = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.val41, i64 728
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.at, ptr elementtype(i64) %i.at) #11, !srcloc !40
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #9
  br label %bb.p

bb.j:                                             ; preds = %._crit_edge66, %bb.d
  %.pre-phi83 = phi i32 [ %.pre82, %._crit_edge66 ], [ %i.ah, %bb.d ] ; 2 uses
  %.val43 = phi i16 [ %.val43.pre, %._crit_edge66 ], [ %.val.i57, %bb.d ]
  %i.au = getelementptr i8, ptr %.val42, i64 2264
  %i.av = load volatile i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.pre-phi83, %i.av
  br i1 %i.aw, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %0, i64 184
  %.val56 = load i16, ptr %i.ax, align 8
  %i.ay = sub i16 %.val43, %.val56                ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 50        ; 2 uses
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = getelementptr i8, ptr %0, i64 52
  store i16 %i.ay, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %.val42, i64 2256
  %i.bc = load volatile i32, ptr %i.bb, align 16
  %i.bd = tail call fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext false, ptr noundef %0, i32 noundef %i.bc) #10, !srcloc !41
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load i16, ptr %i.i, align 2
  %i.bf = trunc nuw nsw i32 %.pre-phi83 to i16
  %i.bg = add i16 %i.be, %i.bf
  store i16 %i.bg, ptr %i.i, align 2
  %i.bh = load i16, ptr %i.az, align 2
  %i.bi = getelementptr i8, ptr %0, i64 54
  store i16 %i.bh, ptr %i.bi, align 2
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %.not35 = icmp eq ptr %i.d, null
  br i1 %.not35, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %i.d, i64 912
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bl, ptr elementtype(i64) %i.bl) #11, !srcloc !42
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = getelementptr i8, ptr %.val42, i64 728
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 96     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bo, ptr elementtype(i64) %i.bo) #11, !srcloc !43
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.i
  %.0 = phi i32 [ -1, %bb.i ], [ 1, %bb.l ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dst_discard(ptr noundef %0) #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @dst_discard_out(ptr noundef nonnull @init_net, ptr noundef %i.b, ptr noundef %0) #9
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dst_discard_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_skb_reason_drop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @ioam6_trace_compute_nodelen(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ioam6_namespace(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ioam6_fill_trace_data(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ioam6_event(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @calipso_validate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #13 = { nounwind memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{i64 25398}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{i64 2162389346}
!16 = !{i64 2162410464}
!17 = !{i64 2162427372}
!18 = !{i64 2162444533}
!19 = !{i64 16411}
!20 = !{i64 16492}
!21 = !{i64 2162603944}
!22 = !{i64 2162621001}
!23 = !{i64 2162122033}
!24 = !{i64 2162139090}
!25 = !{i64 2162156293}
!26 = !{i64 2162173350}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = distinct !{null}
!29 = !{i64 2162194241}
!30 = !{i64 2162211298}
!31 = !{i64 2162250049}
!32 = !{i64 2162267106}
!33 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!34 = !{i64 2162305150}
!35 = !{i64 2162322207}
!36 = !{i64 8906281, i64 8906294}
!37 = !{i64 2162339273}
!38 = !{i64 2162356330}
!39 = !{i64 2162020171}
!40 = !{i64 2162038812}
!41 = !{i64 7601}
end_hunk_2
