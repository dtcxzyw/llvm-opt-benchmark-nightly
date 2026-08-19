inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.llist_node, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.idr, [40 x i8], %struct.ns_common, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.raw_notifier_head, i32, i8, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [24 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_nf, %struct.netns_ct, ptr, %struct.netns_bpf, [16 x i8], %struct.netns_xfrm, i64, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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

@init_net = external dso_local global %struct.net, align 64
@.str = private unnamed_addr constant [9 x i8] c"net/unix\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"max_dgram_qlen\00", align 1
@unix_table = internal global [1 x { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr }] [{ ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr } { ptr @.str.1, ptr getelementptr (i8, ptr @init_net, i64 856), i32 4, i16 420, [2 x i8] zeroinitializer, ptr @proc_dointvec, ptr null, ptr null, ptr null }], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @unix_sysctl_register(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, @init_net
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call dereferenceable_or_null(56) ptr @kmemdup_noprof(ptr noundef nonnull @unix_table, i64 noundef 56, i32 noundef 3264) #3 ; 4 uses
  %.not15 = icmp eq ptr %i.a, null
  br i1 %.not15, label %.thread19, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 856
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = tail call ptr @register_net_sysctl_sz(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i64 noundef 1) #4 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 864
  store ptr %i.d, ptr %i.e, align 8
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.d, label %.thread19

.thread:                                          ; preds = %bb.a
  %i.g = tail call ptr @register_net_sysctl_sz(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @unix_table, i64 noundef 1) #4 ; 2 uses
  %1 = getelementptr i8, ptr %0, i64 864
  store ptr %i.g, ptr %1, align 8
  %i.h = icmp eq ptr %i.g, null
  %spec.select = select i1 %i.h, i32 -12, i32 0
  br label %.thread19

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef nonnull %i.a) #4
  br label %.thread19

.thread19:                                        ; preds = %.thread, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %spec.select, %.thread ], [ -12, %bb.d ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @register_net_sysctl_sz(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @unix_sysctl_unregister(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @unregister_net_sysctl_table(ptr noundef %i.b) #4
  %.not = icmp eq ptr %0, @init_net
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef %i.d) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }
attributes #4 = { noredzone nounwind "no-builtin-wcslen" }

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
end_hunk_0
