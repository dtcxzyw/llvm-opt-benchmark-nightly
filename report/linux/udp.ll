Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/udp?download=true
inline.NumInlined: 754
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_udp_prot: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad udp_prot ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_udp_flow_hashrnd: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad udp_flow_hashrnd ; .previous"

%struct.atomic_t = type { i32 }
%union.anon.35 = type { i64 }
%struct.net_hotdata = type { %struct.packet_offload, %struct.net_offload, %struct.net_protocol, %struct.net_offload, %struct.net_protocol, %struct.packet_offload, %struct.net_offload, %struct.inet6_protocol, %struct.inet6_protocol, %struct.net_offload, %struct.list_head, ptr, ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_protocol = type { ptr, ptr, i8, i32 }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, i32, i32 }
%struct.net_offload = type { %struct.offload_callbacks, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.35 }
%struct.icmp_err = type { i32, i8 }
%struct.net_aligned_data = type { %struct.atomic64_t, [56 x i8], %struct.atomic64_t, [56 x i8], %struct.atomic64_t, [56 x i8] }
%struct.atomic64_t = type { i64 }
%union.anon.114 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.udp_table = type { ptr, ptr, ptr, i32, i32 }
%struct.static_call_key = type { ptr, %union.anon.119 }
%union.anon.119 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.udp_seq_afinfo = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.llist_node, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.idr, [40 x i8], %struct.ns_common, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.raw_notifier_head, i32, i8, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [24 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_nf, %struct.netns_ct, ptr, %struct.netns_bpf, [16 x i8], %struct.netns_xfrm, i64, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.anon.2, i32, ptr, ptr, i32, %union.anon.3 }
%struct.anon.2 = type { %struct.refcount_struct, [60 x i8] }
%union.anon.3 = type { %struct.ns_tree }
%struct.ns_tree = type { i64, %struct.atomic_t, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_root }
%struct.ns_tree_node = type { %struct.rb_node, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.ns_tree_root = type { %struct.rb_root, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, i32, i32, i8, i8, i8, ptr, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, %struct.spinlock, ptr, %struct.list_head, %struct.rwlock, %struct.spinlock, %struct.atomic_t, i64, i8, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.anon.8, ptr, [32 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.percpu_counter, [24 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [0 x i8], i8, i8, i8, [0 x i8], i8, i8, i8, i32, [4 x i64], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8 }
%struct.rwlock = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.6, %struct.qspinlock }
%union.anon.6 = type { %struct.atomic_t }
%struct.anon.8 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%union.anon.111 = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.callback_head = type { ptr, ptr }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, i32, %struct.flowi_tunnel }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i8, i16, i16 }
%struct.sockcm_cookie = type { i64, i32, i32, i32, i32, i32 }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i32, i16, i32, i64, i32 }

@udp_memory_per_cpu_fw_alloc = dso_local global i32 0, section ".data..percpu", align 4
@__UNIQUE_ID_addressable_udp_memory_per_cpu_fw_alloc_1240 = internal global ptr @udp_memory_per_cpu_fw_alloc, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [15 x i8] c"net/ipv4/udp.c\00", align 1
@udp_ehashfn.___done = internal global i8 0, section ".data..do_once", align 1
@udp_ehashfn.___once_key = internal global { { %struct.atomic_t, [4 x i8], %union.anon.35 } } { { %struct.atomic_t, [4 x i8], %union.anon.35 } { %struct.atomic_t { i32 1 }, [4 x i8] zeroinitializer, %union.anon.35 { i64 1 } } }, align 8
@net_hotdata = external dso_local global %struct.net_hotdata, align 8
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 8
@__UNIQUE_ID_addressable___udp4_lib_lookup_1260 = internal global ptr @__udp4_lib_lookup, section ".discard.addressable", align 8
@udp_encap_needed_key = dso_local global { { %struct.atomic_t, [4 x i8], %union.anon.35 } } zeroinitializer, align 8
@udpv6_encap_needed_key = dso_local global { { %struct.atomic_t, [4 x i8], %union.anon.35 } } zeroinitializer, align 8
@__UNIQUE_ID_addressable_udp_encap_enable_1261 = internal global ptr @udp_encap_enable, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_udp_encap_disable_1262 = internal global ptr @udp_encap_disable, section ".discard.addressable", align 8
@icmp_err_convert = external dso_local local_unnamed_addr constant [0 x %struct.icmp_err], align 4
@__UNIQUE_ID_addressable_udp4_hwcsum_1270 = internal global ptr @udp4_hwcsum, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_udp_set_csum_1271 = internal global ptr @udp_set_csum, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_udp_sendmsg_1286 = internal global ptr @udp_sendmsg, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___skb_recv_udp_1295 = internal global ptr @__skb_recv_udp, section ".discard.addressable", align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__UNIQUE_ID_addressable___udp_disconnect_1299 = internal global ptr @__udp_disconnect, section ".discard.addressable", align 8
@net_aligned_data = external dso_local global %struct.net_aligned_data, align 64
@sysctl_udp_mem = dso_local global [3 x i64] zeroinitializer, section ".data..read_mostly", align 16
@udp_prot = dso_local global { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr } { ptr @udp_lib_close, ptr @udp_pre_connect, ptr @udp_connect, ptr @udp_disconnect, ptr null, ptr @udp_ioctl, ptr @udp_init_sock, ptr @udp_destroy_sock, ptr null, ptr @udp_setsockopt, ptr @udp_getsockopt, ptr null, ptr null, ptr @udp_sendmsg, ptr @udp_recvmsg, ptr @udp_splice_eof, ptr null, ptr null, ptr null, ptr null, ptr @ip4_datagram_release_cb, ptr @udp_lib_hash, ptr @udp_lib_unhash, ptr @udp_v4_rehash, ptr @udp_v4_get_port, ptr @udp_lib_unhash, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @net_aligned_data, i64 128), ptr @udp_memory_per_cpu_fw_alloc, ptr null, ptr null, ptr @sysctl_udp_mem, ptr null, ptr null, i32 1648, i32 1652, i32 0, i8 0, [3 x i8] zeroinitializer, ptr null, i32 1344, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, %union.anon.114 zeroinitializer, ptr null, [32 x i8] c"UDP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @udp_abort }, align 8
@__UNIQUE_ID_addressable_udp_prot_1339 = internal global ptr @udp_prot, section ".discard.addressable", align 8
@udp4_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @udp4_proc_init_net, ptr null, ptr @udp4_proc_exit_net, ptr null, ptr null, ptr null, i64 0 }, align 8
@__setup_str_set_uhash_entries = internal constant [15 x i8] c"uhash_entries=\00", section ".init.rodata", align 1
@__setup_set_uhash_entries = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_set_uhash_entries, ptr @set_uhash_entries, i32 0, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@udp_flow_hashrnd.hashrnd = internal global i32 0, section ".data..read_mostly", align 4
@udp_flow_hashrnd.___done = internal global i8 0, section ".data..do_once", align 1
@udp_flow_hashrnd.___once_key = internal global { { %struct.atomic_t, [4 x i8], %union.anon.35 } } { { %struct.atomic_t, [4 x i8], %union.anon.35 } { %struct.atomic_t { i32 1 }, [4 x i8] zeroinitializer, %union.anon.35 { i64 1 } } }, align 8
@__UNIQUE_ID_addressable_udp_flow_hashrnd_1340 = internal global ptr @udp_flow_hashrnd, section ".discard.addressable", align 8
@udp_table = dso_local global %struct.udp_table zeroinitializer, section ".data..read_mostly", align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@udp_sysctl_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @udp_pernet_init, ptr null, ptr @udp_pernet_exit, ptr null, ptr null, ptr null, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"UDP: failed to init sysctl parameters.\0A\00", align 1
@_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_85 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@iptun_encaps = external dso_local global [8 x ptr], align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"include/linux/skbuff.h\00", align 1
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"include/linux/ucopysize.h\00", align 1
@rfs_needed = external dso_local global %struct.static_key_false, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"include/net/inet_hashtables.h\00", align 1
@__tracepoint_udp_fail_queue_rcv_skb = external dso_local global %struct.tracepoint, align 8
@__do_trace_udp_fail_queue_rcv_skb.__trace_check_udp_fail_queue_rcv_skb = internal constant [23 x i8] c"udp_fail_queue_rcv_skb\00", section "__tracepoint_check", align 16
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_udp_fail_queue_rcv_skb.__UNIQUE_ID_addressable___SCK__tp_func_udp_fail_queue_rcv_skb_1109 = internal global ptr @__SCK__tp_func_udp_fail_queue_rcv_skb, section ".discard.addressable", align 8
@__SCK__tp_func_udp_fail_queue_rcv_skb = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_node_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.10 = private unnamed_addr constant [18 x i8] c"include/net/udp.h\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@udp_seq_ops = internal constant %struct.seq_operations { ptr @udp_seq_start, ptr @udp_seq_stop, ptr @udp_seq_next, ptr @udp4_seq_show }, align 8
@udp4_seq_afinfo = internal global %struct.udp_seq_afinfo { i16 2 }, align 2
@.str.12 = private unnamed_addr constant [116 x i8] c"   sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\00", align 1
@.str.13 = private unnamed_addr constant [79 x i8] c"%5d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %llu %d %pK %u\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@uhash_entries = internal global i64 0, section ".init.data", align 8
@init_net = external dso_local global %struct.net, align 64
@.str.14 = private unnamed_addr constant [96 x i8] c"\014UDP: Failed to allocate UDP hash table (entries: %u) for a netns, fallback to the global one\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_addressable___skb_recv_udp_1295, ptr @__UNIQUE_ID_addressable___udp4_lib_lookup_1260, ptr @__UNIQUE_ID_addressable___udp_disconnect_1299, ptr @__UNIQUE_ID_addressable_udp4_hwcsum_1270, ptr @__UNIQUE_ID_addressable_udp_encap_disable_1262, ptr @__UNIQUE_ID_addressable_udp_encap_enable_1261, ptr @__UNIQUE_ID_addressable_udp_flow_hashrnd_1340, ptr @__UNIQUE_ID_addressable_udp_memory_per_cpu_fw_alloc_1240, ptr @__UNIQUE_ID_addressable_udp_prot_1339, ptr @__UNIQUE_ID_addressable_udp_sendmsg_1286, ptr @__UNIQUE_ID_addressable_udp_set_csum_1271, ptr @__do_trace_udp_fail_queue_rcv_skb.__UNIQUE_ID_addressable___SCK__tp_func_udp_fail_queue_rcv_skb_1109, ptr @__do_trace_udp_fail_queue_rcv_skb.__trace_check_udp_fail_queue_rcv_skb, ptr @__setup_set_uhash_entries, ptr @_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_85], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -98, 1) i32 @udp_lib_get_port(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i52.i = alloca i32, align 4            ; 3 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 3 uses
  %i.a = alloca [8 x i64], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val154 = load ptr, ptr %i.d, align 8          ; 8 uses
  %i.e = getelementptr i8, ptr %.val154, i64 1216
  %i.f = load ptr, ptr %i.e, align 64             ; 8 uses
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !annotation !13
  %i.g = call zeroext i1 @inet_sk_get_local_port_range(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.h = load i32, ptr %i.c, align 4
  %i.i = load i32, ptr %i.b, align 4
  %i.j = add i32 %i.h, 1
  %i.k = sub i32 %i.j, %i.i
  %i.l = call i32 @get_random_u32() #19           ; 2 uses
  %3 = zext i32 %i.l to i64
  %4 = zext i32 %i.k to i64
  %5 = mul nuw i64 %4, %3
  %6 = lshr i64 %5, 32
  %7 = trunc nuw i64 %6 to i32
  %i.m = load i32, ptr %i.b, align 4
  %i.n = add i32 %i.m, %7                         ; 2 uses
  %i.o = trunc i32 %i.n to i16
  %i.p = or i32 %i.l, 1
  %i.q = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = add i32 %i.r, 1
  %i.t = mul i32 %i.s, %i.p
  %i.u = add i32 %i.n, %i.r
  %i.v = getelementptr i8, ptr %.val154, i64 648
  %i.w = getelementptr i8, ptr %i.f, i64 28       ; 2 uses
  %i.x = getelementptr i8, ptr %.val154, i64 1704
  %i.y = trunc i32 %i.t to i16
  %i.z = trunc i32 %i.u to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.0133 = phi i16 [ %i.o, %bb.b ], [ %i.ax, %bb.g ] ; 6 uses
  %.0128 = phi i16 [ 0, %bb.b ], [ %.0133, %bb.g ]
  %i.aa = zext i16 %.0133 to i32
  %.val158 = load ptr, ptr %i.f, align 8
  %.val159 = load i32, ptr %i.q, align 8
  %.val160 = load i32, ptr %i.v, align 8
  %i.ab = add i32 %.val160, %i.aa
  %i.ac = and i32 %i.ab, %.val159
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [16 x i8], ptr %.val158, i64 %i.ad ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.af = getelementptr i8, ptr %i.ae, i64 12     ; 2 uses
  call void @_raw_spin_lock_bh(ptr noundef %i.af) #19
  %i.ag = load i32, ptr %i.w, align 4
  %i.ah = call fastcc i32 @udp_lib_lport_inuse(ptr noundef %.val154, i16 noundef zeroext %.0128, ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %i.ag) #20, !srcloc !46 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i16 [ %.0133, %bb.c ], [ %i.av, %bb.f ] ; 4 uses
  %i.ai = load i32, ptr %i.b, align 4
  %i.aj = zext i16 %.1 to i32                     ; 3 uses
  %.not143 = icmp sgt i32 %i.ai, %i.aj
  %i.ak = load i32, ptr %i.c, align 4
  %.not144 = icmp slt i32 %i.ak, %i.aj
  %or.cond = select i1 %.not143, i1 true, i1 %.not144
  br i1 %or.cond, label %bb.f, label %arch_test_bit.exit

arch_test_bit.exit:                               ; preds = %bb.d
  %i.al = load i32, ptr %i.w, align 4
  %i.am = lshr i32 %i.aj, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 range(i64 0, 4294967296) %i.an) #18, !srcloc !14 ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 2
  call void @llvm.assume(i1 %i.ap)
  %i.aq = trunc nuw i8 %i.ao to i1
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %arch_test_bit.exit
  %.val161 = load ptr, ptr %i.x, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.val161, null
  br i1 %.not.i, label %.thread, label %.split181

.split181:                                        ; preds = %bb.e
  %i.ar = zext i16 %.1 to i64
  %i.as = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %.val161, i64 range(i64 0, 4294967296) %i.ar) #18, !srcloc !14 ; 2 uses
  %i.at = icmp ult i8 %i.as, 2
  call void @llvm.assume(i1 %i.at)
  %i.au = trunc nuw i8 %i.as to i1
  br i1 %i.au, label %bb.f, label %.thread

bb.f:                                             ; preds = %.split181, %arch_test_bit.exit, %bb.d
  %i.av = add i16 %.1, %i.y                       ; 2 uses
  %.not145 = icmp eq i16 %i.av, %.0133
  br i1 %.not145, label %bb.g, label %bb.d, !llvm.loop !43

bb.g:                                             ; preds = %bb.f
  call void @_raw_spin_unlock_bh(ptr noundef %i.af) #19
  %i.aw = call i32 @__SCT__cond_resched() #19     ; 0 uses
  %i.ax = add i16 %.0133, 1
  %.not146 = icmp eq i16 %.0133, %i.z
  br i1 %.not146, label %bb.h, label %bb.c, !llvm.loop !44

.thread:                                          ; preds = %.split181, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread188

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ap

bb.i:                                             ; preds = %bb.a
  %i.ay = zext i16 %1 to i32
  %.val155 = load ptr, ptr %i.f, align 8
  %i.az = getelementptr i8, ptr %i.f, i64 24      ; 3 uses
  %.val156 = load i32, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %.val154, i64 648
  %.val157 = load i32, ptr %i.ba, align 8
  %i.bb = add i32 %.val157, %i.ay
  %i.bc = and i32 %i.bb, %.val156
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr [16 x i8], ptr %.val155, i64 %i.bd ; 9 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 12
  tail call void @_raw_spin_lock_bh(ptr noundef %i.bf) #19
  %i.bg = getelementptr i8, ptr %0, i64 16
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = icmp eq i16 %i.bh, 10
  br i1 %i.bi, label %bb.j, label %inet_use_hash2_on_bind.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %0, i64 72
  %.val.i = load i64, ptr %i.bj, align 8          ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 80
  %.val5.i = load i64, ptr %i.bk, align 8         ; 2 uses
  %i.bl = or i64 %.val5.i, %.val.i
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %inet_use_hash2_on_bind.exit.thread186, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = and i64 %.val5.i, 4294967295
  %i.bo = xor i64 %i.bn, 4294901760
  %i.bp = or i64 %i.bo, %.val.i
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %inet_use_hash2_on_bind.exit, label %inet_use_hash2_on_bind.exit.thread

inet_use_hash2_on_bind.exit:                      ; preds = %bb.i, %bb.k
  %i.br = getelementptr i8, ptr %0, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %.not199 = icmp eq i32 %i.bs, 0
  br i1 %.not199, label %inet_use_hash2_on_bind.exit.thread186, label %inet_use_hash2_on_bind.exit.thread

inet_use_hash2_on_bind.exit.thread:               ; preds = %bb.k, %inet_use_hash2_on_bind.exit
  %i.bt = getelementptr i8, ptr %i.be, i64 8
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 10
  br i1 %i.bv, label %bb.l, label %inet_use_hash2_on_bind.exit.thread186

bb.l:                                             ; preds = %inet_use_hash2_on_bind.exit.thread
  %i.bw = getelementptr i8, ptr %0, i64 10
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = xor i16 %i.bx, %1
  %i.bz = zext i16 %i.by to i32
  %i.ca = load i32, ptr %i.az, align 8            ; 2 uses
  %i.cb = and i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = and i32 %i.ca, %2                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  %.val166 = load ptr, ptr %i.cd, align 8
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr [32 x i8], ptr %.val166, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = icmp slt i32 %i.bu, %i.ch
  br i1 %i.ci, label %inet_use_hash2_on_bind.exit.thread186, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = tail call fastcc i32 @udp_lib_lport_inuse2(ptr noundef %.val154, i16 noundef zeroext %1, ptr noundef %i.cf, ptr noundef %0) #20, !srcloc !47
  %.not147 = icmp eq i32 %i.cj, 0
  br i1 %.not147, label %bb.n, label %.thread195

bb.n:                                             ; preds = %bb.m
  %.not148 = icmp eq i32 %i.cc, %i.cb
  br i1 %.not148, label %.thread188, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val164 = load ptr, ptr %i.cd, align 8
  %.val165 = load i32, ptr %i.az, align 8
  %i.ck = and i32 %.val165, %i.cc
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr [32 x i8], ptr %.val164, i64 %i.cl
  %i.cn = tail call fastcc i32 @udp_lib_lport_inuse2(ptr noundef %.val154, i16 noundef zeroext %1, ptr noundef %i.cm, ptr noundef %0) #20, !srcloc !48
  %.fr = freeze i32 %i.cn
  %i.co = icmp eq i32 %.fr, 0
  br i1 %i.co, label %.thread188, label %.thread195

inet_use_hash2_on_bind.exit.thread186:            ; preds = %bb.l, %bb.j, %inet_use_hash2_on_bind.exit, %inet_use_hash2_on_bind.exit.thread
  %i.cp = tail call fastcc i32 @udp_lib_lport_inuse(ptr noundef %.val154, i16 noundef zeroext %1, ptr noundef %i.be, ptr noundef null, ptr noundef %0, i32 noundef 0) #20, !srcloc !49
  %.not150 = icmp eq i32 %i.cp, 0
  br i1 %.not150, label %.thread188, label %.thread195

.thread188:                                       ; preds = %bb.n, %bb.o, %.thread, %inet_use_hash2_on_bind.exit.thread186
  %.0129 = phi ptr [ %i.be, %inet_use_hash2_on_bind.exit.thread186 ], [ %i.ae, %.thread ], [ %i.be, %bb.o ], [ %i.be, %bb.n ] ; 12 uses
  %.3 = phi i16 [ %1, %inet_use_hash2_on_bind.exit.thread186 ], [ %.1, %.thread ], [ %1, %bb.o ], [ %1, %bb.n ] ; 4 uses
  %i.cq = getelementptr i8, ptr %0, i64 14        ; 2 uses
  store i16 %.3, ptr %i.cq, align 2
  %i.cr = getelementptr i8, ptr %0, i64 8         ; 3 uses
  store i16 %.3, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %0, i64 10        ; 5 uses
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = xor i16 %i.ct, %.3
  store i16 %i.cu, ptr %i.cs, align 2
  %i.cv = getelementptr i8, ptr %0, i64 112       ; 4 uses
  %.val168 = load ptr, ptr %i.cv, align 8
  %.not.i.i = icmp eq ptr %.val168, null
  br i1 %.not.i.i, label %bb.p, label %.thread195

bb.p:                                             ; preds = %.thread188
  %i.cw = getelementptr i8, ptr %0, i64 19        ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = and i8 %i.cx, 16
  %.not151 = icmp eq i8 %i.cy, 0
  br i1 %.not151, label %sock_set_flag.exit, label %bb.q

end_hunk_0
begin_hunk_1_@udp_pernet_init:bb.a

bb.e:                                             ; preds = %bb.d
  %i.t = shl i32 %.0.i, 6
  %i.u = zext i32 %i.t to i64
  %i.v = tail call noalias ptr @vmalloc_huge_node_noprof(i64 noundef range(i64 0, 4294967296) %i.u, i32 noundef 4197568, i32 noundef -1) #23 ; 8 uses
  store ptr %i.v, ptr %i.s, align 8
  %.not47.i.i = icmp eq ptr %i.v, null
  br i1 %.not47.i.i, label %bb.g, label %fls.exit.i.i

fls.exit.i.i:                                     ; preds = %bb.e
  %i.w = zext i32 %.0.i to i64                    ; 2 uses
  %i.x = getelementptr [16 x i8], ptr %i.v, i64 %i.w ; 10 uses
  %i.y = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = add i32 %.0.i, -1
  %i.aa = getelementptr i8, ptr %i.s, i64 24
  store i32 %i.z, ptr %i.aa, align 8
  %i.ab = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.0.i, i32 -1) #22, !srcloc !174
  %i.ac = getelementptr i8, ptr %i.s, i64 28
  store i32 %i.ab, ptr %i.ac, align 4
  %.not49.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %fls.exit.i.i
  %xtraiter = and i32 %.0.i, 3                    ; 3 uses
  %i.ad = icmp ult i32 %.0.i, 4
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.0.i, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.04448.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ae = sext i32 %.04448.i.i to i64             ; 2 uses
  %i.af = getelementptr [16 x i8], ptr %i.v, i64 %i.ae
  %i.ag = getelementptr [32 x i8], ptr %i.x, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ah = or disjoint i32 %.04448.i.i, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr [16 x i8], ptr %i.v, i64 %i.ai
  %i.ak = getelementptr [32 x i8], ptr %i.x, i64 %i.ai
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.al = or disjoint i32 %.04448.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %i.v, i64 %i.am
  %i.ao = getelementptr [32 x i8], ptr %i.x, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ap = or disjoint i32 %.04448.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr [16 x i8], ptr %i.v, i64 %i.aq
  %i.as = getelementptr [32 x i8], ptr %i.x, i64 %i.aq
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.at = add nuw i32 %.04448.i.i, 4              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !171

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.04448.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.04448.i.i.epil = phi i32 [ %i.ax, %.lr.ph.i.i.epil ], [ %.04448.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.au = sext i32 %.04448.i.i.epil to i64        ; 2 uses
  %i.av = getelementptr [16 x i8], ptr %i.v, i64 %i.au
  %i.aw = getelementptr [32 x i8], ptr %i.x, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.ax = add nuw i32 %.04448.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !172

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %fls.exit.i.i
  %i.ay = getelementptr [32 x i8], ptr %i.x, i64 %i.w ; 4 uses
  %i.az = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.ay, ptr %i.az, align 8
  %umax.i = tail call i32 @llvm.umax.i32(i32 %.0.i, i32 1) ; 3 uses
  %xtraiter5 = and i32 %umax.i, 1
  %i.ba = icmp ult i32 %.0.i, 2
  br i1 %i.ba, label %.epil.preheader, label %._crit_edge.i.i.new

._crit_edge.i.i.new:                              ; preds = %._crit_edge.i.i
  %unroll_iter9 = and i32 %umax.i, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.i.i.new
  %.016.i.i.i = phi i32 [ 0, %._crit_edge.i.i.new ], [ %i.bu, %bb.f ] ; 3 uses
  %niter10 = phi i32 [ 0, %._crit_edge.i.i.new ], [ %niter10.next.1, %bb.f ]
  %i.bb = sext i32 %.016.i.i.i to i64             ; 3 uses
  %i.bc = getelementptr [32 x i8], ptr %i.x, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store i32 0, ptr %i.bd, align 16
  %i.be = shl nsw i64 %i.bb, 1
  %i.bf = or disjoint i64 %i.be, 1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr [16 x i8], ptr %i.ay, i64 %i.bb ; 3 uses
  store ptr %i.bg, ptr %i.bh, align 16
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bj, align 4
  %i.bk = or disjoint i32 %.016.i.i.i, 1
  %i.bl = sext i32 %i.bk to i64                   ; 3 uses
  %i.bm = getelementptr [32 x i8], ptr %i.x, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  store i32 0, ptr %i.bn, align 16
  %i.bo = shl nsw i64 %i.bl, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr [16 x i8], ptr %i.ay, i64 %i.bl ; 3 uses
  store ptr %i.bq, ptr %i.br, align 16
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bt, align 4
  %i.bu = add nuw i32 %.016.i.i.i, 2              ; 2 uses
  %niter10.next.1 = add i32 %niter10, 2           ; 2 uses
  %niter10.ncmp.1 = icmp eq i32 %niter10.next.1, %unroll_iter9
  br i1 %niter10.ncmp.1, label %udp_set_table.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1

bb.g:                                             ; preds = %bb.e
  tail call void @kfree(ptr noundef nonnull %i.s) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.bv = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %.0.i) #27 ; 0 uses
  br label %udp_set_table.exit

udp_set_table.exit.loopexit.unr-lcssa:            ; preds = %bb.f
  %lcmp.mod7.not = icmp eq i32 %xtraiter5, 0
  br i1 %lcmp.mod7.not, label %udp_set_table.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %udp_set_table.exit.loopexit.unr-lcssa, %._crit_edge.i.i
  %.016.i.i.i.epil.init = phi i32 [ 0, %._crit_edge.i.i ], [ %i.bu, %udp_set_table.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i32 %umax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.bw = sext i32 %.016.i.i.i.epil.init to i64   ; 3 uses
  %i.bx = getelementptr [32 x i8], ptr %i.x, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  store i32 0, ptr %i.by, align 16
  %i.bz = shl nsw i64 %i.bw, 1
  %i.ca = or disjoint i64 %i.bz, 1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr [16 x i8], ptr %i.ay, i64 %i.bw ; 3 uses
  store ptr %i.cb, ptr %i.cc, align 16
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  store i32 0, ptr %i.cd, align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ce, align 4
  br label %udp_set_table.exit

udp_set_table.exit:                               ; preds = %.epil.preheader, %udp_set_table.exit.loopexit.unr-lcssa, %bb.a, %bb.b, %bb.h
  %udp_table.sink.i = phi ptr [ @udp_table, %bb.h ], [ @udp_table, %bb.b ], [ @udp_table, %bb.a ], [ %i.s, %udp_set_table.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  %i.cf = getelementptr i8, ptr %0, i64 1216
  store ptr %udp_table.sink.i, ptr %i.cf, align 64
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @udp_pernet_exit(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1216
  %.val = load ptr, ptr %i.a, align 64            ; 3 uses
  %i.b = icmp eq ptr %.val, @udp_table
  br i1 %i.b, label %udp_pernet_table_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8
  tail call void @kvfree(ptr noundef %i.c) #19
  tail call void @kfree(ptr noundef %.val) #19
  br label %udp_pernet_table_free.exit

udp_pernet_table_free.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_huge_node_noprof(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone noreturn nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { cold noredzone noreturn null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noredzone nounwind "no-builtin-wcslen" }
attributes #20 = { noredzone "no-builtin-wcslen" }
attributes #21 = { nounwind memory(read) }
attributes #22 = { nounwind memory(none) }
attributes #23 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #24 = { cold noredzone "no-builtin-wcslen" }
attributes #25 = { cold noredzone noreturn nounwind "no-builtin-wcslen" }
attributes #26 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #27 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = !{!"rsp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7 = !{i32 1, !"Code Model", i32 2}
!8 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!9 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{i32 4, !"SkipRaxSetup", i32 1}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"auto-init"}
!14 = !{i64 2149433642}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i64 2149421336}
!17 = !{i64 2148851213, i64 2148851252, i64 2148851273, i64 2148851310, i64 2148851333, i64 2148851342}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{i64 2153773885}
!21 = !{i64 2110386, i64 2110409, i64 2149595824, i64 2149595845, i64 2149595888, i64 2149595903, i64 2149595936, i64 2149595970, i64 2149595994}
!22 = !{i64 2156921681}
!23 = !{i64 2149594492, i64 2149594532, i64 2149594649, i64 2149594670, i64 2149594713, i64 2149594728, i64 2149594761, i64 2149594795, i64 2149594819}
!24 = !{i64 2163559054}
!25 = !{i64 11148032, i64 11148056, i64 11148079, i64 11148102}
!26 = !{i64 11146283, i64 11146306}
!27 = !{i64 11149912, i64 11149925}
!28 = !{i64 33213}
!29 = !{i64 2160415446}
!30 = !{i64 2148846901, i64 2148846940, i64 2148846961, i64 2148846998, i64 2148847021, i64 2148847030}
!31 = !{i64 44060}
!32 = !{i64 2148838676, i64 2148838715, i64 2148838736, i64 2148838773, i64 2148838796, i64 2148838667}
!33 = !{i64 2153012319}
!34 = !{i64 2148838301, i64 2148838340, i64 2148838361, i64 2148838398, i64 2148838421, i64 2148838292}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{i64 2159093298, i64 2159093173}
!38 = !{i64 2159093821, i64 2159094297, i64 2159094330, i64 2159094365, i64 2159094381, i64 2159095222, i64 2159095280, i64 2159095329, i64 2159095139, i64 2159094440, i64 2159094472}
!39 = !{i64 2150016238}
!40 = !{ptr @__udp_disconnect}
!41 = !{i64 2151720763}
!42 = !{i64 2149420398, i64 2149420437, i64 2149420458, i64 2149420495, i64 2149420518, i64 2149420389}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = !{i64 8297}
!47 = !{i64 9292}
!48 = !{i64 9449}
!49 = !{i64 9600}
!50 = !{i64 2153791913}
!51 = !{i64 2160264128}
!52 = distinct !{!52, !15}
!53 = !{i64 2163598109}
!54 = !{i64 19807}
!55 = !{i64 20488}
!56 = distinct !{null}
!57 = distinct !{null, null}
!58 = !{i64 2163711325}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!62 = !{i64 2163774231}
!63 = !{i64 2163791488}
!64 = distinct !{null}
!65 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!66 = !{i64 2163856253}
!67 = !{i64 38541}
!68 = !{i64 38994}
!69 = !{i64 2163878480}
!70 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!71 = !{i64 2160039543, i64 2160039418}
!72 = !{i64 2160040066, i64 2160041131, i64 2160041164, i64 2160041199, i64 2160041215, i64 2160042142, i64 2160042200, i64 2160042249, i64 2160042059, i64 2160041274, i64 2160041306, i64 2160041389}
!73 = !{i64 2160042546, i64 2160042422}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = !{i64 2149961092, i64 2149961131, i64 2149961152, i64 2149961189, i64 2149961212, i64 2149961221}
!78 = !{!"branch_weights", i32 1999, i32 1}
!79 = !{!"branch_weights", i32 1, i32 0}
!80 = !{i64 2149963275}
!81 = !{i64 2163946146}
!82 = !{i64 2163973018}
!83 = !{i64 2163996020}
!84 = !{i64 2164018933}
!85 = distinct !{!85, !15}
!86 = distinct !{null}
!87 = !{i64 2158997367}
!88 = !{i64 2158997412}
!89 = !{i64 2164090123}
!90 = !{i64 50041}
!91 = !{i64 50251}
!92 = !{i64 50337}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = !{i64 2160438882}
!96 = distinct !{!96, !15}
!97 = distinct !{null}
!98 = !{i64 2164112299}
!99 = !{i64 2164128143}
!100 = !{i64 2148856962, i64 2148857001, i64 2148857022, i64 2148857059, i64 2148857082, i64 2148857091}
!101 = !{i64 2164131394, i64 2164131264}
!102 = !{i64 2164131925, i64 2164132994, i64 2164133027, i64 2164133062, i64 2164133078, i64 2164134005, i64 2164134063, i64 2164134112, i64 2164133922, i64 2164133137, i64 2164133169, i64 2164133252}
!103 = !{i64 2164134412, i64 2164134283}
!104 = !{i64 2153194564, i64 2153194439}
!105 = !{i64 2153195087, i64 2153196140, i64 2153196173, i64 2153196208, i64 2153196224, i64 2153197151, i64 2153197209, i64 2153197258, i64 2153197068, i64 2153196283, i64 2153196315, i64 2153196398}
!106 = !{i64 2153197562, i64 2153197438}
!107 = !{i64 2164152740}
!108 = !{i64 2164168919}
!109 = !{i64 2164195608}
!110 = !{i64 2164215619}
!111 = !{i64 2160264769}
!112 = !{i64 2164385091}
!113 = !{i64 2161657447, i64 2161657322}
!114 = !{i64 2161657970, i64 2161659019, i64 2161659052, i64 2161659087, i64 2161659103, i64 2161660030, i64 2161660088, i64 2161660137, i64 2161659947, i64 2161659162, i64 2161659194, i64 2161659277}
!115 = !{i64 2161660446, i64 2161660322}
!116 = !{i64 68464}
!117 = !{i64 68519}
!118 = !{i64 68674}
!119 = !{i64 68742}
!120 = !{i64 68850}
!121 = !{i64 68935}
!122 = !{i64 2164467525}
!123 = !{i64 2164485147}
!124 = !{i64 2164500991}
!125 = !{i64 67135}
!126 = distinct !{!126, !15}
!127 = !{i64 2164414638}
!128 = !{i64 2164430514}
!129 = !{i64 65486}
!130 = !{i64 65724}
!131 = !{i64 2164446678}
!132 = distinct !{null}
!133 = !{i64 2149421710, i64 2149421749, i64 2149421770, i64 2149421807, i64 2149421830, i64 2149421701}
!134 = !{i64 76387}
!135 = !{i64 76889}
!136 = !{i64 2149426863, i64 2149426902, i64 2149426923, i64 2149426960, i64 2149426983, i64 2149426992}
!137 = !{i64 2164631344}
!138 = !{i64 2164654702}
!139 = distinct !{null}
!140 = !{i64 79486}
!141 = distinct !{!141, !15}
!142 = !{i64 2163305183, i64 2163305053}
!143 = !{i64 2163305714, i64 2163306190, i64 2163306223, i64 2163306258, i64 2163306274, i64 2163307115, i64 2163307173, i64 2163307222, i64 2163307032, i64 2163306333, i64 2163306365}
!144 = !{i64 83096}
!145 = !{i64 82820}
!146 = !{i64 82676}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
end_hunk_1
