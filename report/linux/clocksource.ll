Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/clocksource?download=true
inline.NumInlined: 126
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_clocks_calc_mult_shift: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad clocks_calc_mult_shift ; .previous"
    ".section\09\22.initcall5.init\22, \22a\22\09\09"
    "__initcall__kmod_clocksource__472_1201_clocksource_done_booting5:\09\09\09"
    ".long\09clocksource_done_booting - .\09"
    ".previous\09\09\09\09\09"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___clocksource_register_scale: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __clocksource_register_scale ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___devm_clocksource_register_scale: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __devm_clocksource_register_scale ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_clocksource_unregister: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad clocksource_unregister ; .previous"
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_clocksource__488_1575_init_clocksource_sysfs6:\09\09\09"
    ".long\09init_clocksource_sysfs - .\09"
    ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.watchdog_data = type { %struct.raw_spinlock, i32, i64, i64, i64, [2 x i64], i32, [12 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.4 = type { ptr, %struct.spinlock }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr, i8 }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_linked_node, ptr, i8, i8, i8, i8, i8, i64, ptr }
%struct.timerqueue_linked_node = type { %struct.rb_node_linked, i64 }
%struct.rb_node_linked = type { %struct.rb_node, ptr, ptr }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.attribute_group = type { ptr, %union.anon.5, ptr, ptr, %union.anon.6, ptr }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.8 = type { ptr }

@__UNIQUE_ID_addressable_clocks_calc_mult_shift_449 = internal global ptr @clocks_calc_mult_shift, section ".discard.addressable", align 8
@watchdog_lock = internal global %struct.spinlock zeroinitializer, align 4
@watchdog_list = internal global %struct.list_head { ptr @watchdog_list, ptr @watchdog_list }, align 8
@suspend_clocksource = internal unnamed_addr global ptr null, align 8
@suspend_start = internal unnamed_addr global i64 0, align 8
@clocksource_start_suspend_timing.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str = private unnamed_addr constant [67 x i8] c"\014clocksource: Failed to enable the non-suspend-able clocksource.\0A\00", align 1
@clocksource_list = internal global %struct.list_head { ptr @clocksource_list, ptr @clocksource_list }, align 8
@__UNIQUE_ID_addressable_clocksource_done_booting_473 = internal global ptr @clocksource_done_booting, section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"kernel/time/clocksource.c\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"\014clocksource: clocksource %s registered with invalid VDSO mode %d. Disabling VDSO support.\0A\00", align 1
@clocksource_mutex = internal global %struct.mutex zeroinitializer, align 8
@__UNIQUE_ID_addressable___clocksource_register_scale_479 = internal global ptr @__clocksource_register_scale, section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"__devm_clocksource_unregister\00", align 1
@__UNIQUE_ID_addressable___devm_clocksource_register_scale_480 = internal global ptr @__devm_clocksource_register_scale, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_clocksource_unregister_481 = internal global ptr @clocksource_unregister, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_init_clocksource_sysfs_489 = internal global ptr @init_clocksource_sysfs, section ".discard.addressable", align 8
@__setup_str_boot_override_clocksource = internal constant [13 x i8] c"clocksource=\00", section ".init.rodata", align 1
@__setup_boot_override_clocksource = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_boot_override_clocksource, ptr @boot_override_clocksource, i32 0, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@__setup_str_boot_override_clock = internal constant [7 x i8] c"clock=\00", section ".init.rodata", align 1
@__setup_boot_override_clock = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_boot_override_clock, ptr @boot_override_clock, i32 0, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@finished_booting = internal unnamed_addr global i1 false, align 4
@watchdog_work = internal global %struct.work_struct { %struct.atomic64_t { i64 4503599625273344 }, %struct.list_head { ptr getelementptr (i8, ptr @watchdog_work, i64 8), ptr getelementptr (i8, ptr @watchdog_work, i64 8) }, ptr @clocksource_watchdog_work }, align 8
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"kwatchdog\00", align 1
@watchdog_running = internal unnamed_addr global i1 false, align 4
@watchdog_timer = internal global %struct.timer_list zeroinitializer, align 8
@watchdog_reset_pending = internal global %struct.atomic_t zeroinitializer, align 4
@curr_clocksource = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"timekeeping: Clocksource %s might overflow on 11%% adjustment\0A\00", align 1
@__clocksource_update_freq_scale.__UNIQUE_ID_addressable___SCK__WARN_trap_474 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.7 = private unnamed_addr constant [74 x i8] c"\016clocksource: %s: mask: 0x%llx max_cycles: 0x%llx, max_idle_ns: %lld ns\0A\00", align 1
@override_name = internal global [32 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [114 x i8] c"\014clocksource: Override clocksource %s is unstable and not HRT compatible - cannot switch while in HRT/NOHZ mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"\016clocksource: Override clocksource %s is not currently HRT compatible - deferring\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\016clocksource: Switched to clocksource %s\0A\00", align 1
@watchdog = internal unnamed_addr global ptr null, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@watchdog_data = internal global %struct.watchdog_data zeroinitializer, align 64
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [64 x i64], align 16
@watchdog_cpu_data = internal global { %struct.__call_single_data, %struct.atomic_t, i32, [2 x i64], ptr, %struct.atomic_t, [4 x i8], i64, [48 x i8] } { %struct.__call_single_data { %struct.__call_single_node zeroinitializer, ptr @watchdog_check_skew_remote, ptr null }, %struct.atomic_t zeroinitializer, i32 0, [2 x i64] zeroinitializer, ptr null, %struct.atomic_t zeroinitializer, [4 x i8] zeroinitializer, i64 0, [48 x i8] zeroinitializer }, section ".data..percpu..shared_aligned", align 64
@this_cpu_off = external dso_local global i64, section ".data..percpu..hot..this_cpu_off", align 8
@nr_node_ids = external dso_local local_unnamed_addr global i32, align 4
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@ratelimit_state = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 2, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.watchdog_print_freq_timeout = private unnamed_addr constant [28 x i8] c"watchdog_print_freq_timeout\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"\016clocksource: Watchdog %s read timed out. Readout sequence took: %lluns\0A\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"\014clocksource: Marking clocksource %s unstable due to frequency skew\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"\014clocksource: Watchdog    %20s interval: %16lluns\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"\014clocksource: Clocksource %20s interval: %16lluns\0A\00", align 1
@watchdog_handle_remote_timeout.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"\016clocksource: Watchdog remote CPU %u read timed out\0A\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"\014clocksource: Marking clocksource %s unstable due to inter CPU skew\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"\014clocksource: CPU%u %16llu < CPU%u %16llu (cycles)\0A\00", align 1
@__boot_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [83 x i8] c"\014clocksource: Nonstop clocksource %s should not supply suspend/resume interfaces\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"clocksource\00", align 1
@clocksource_subsys = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] } { ptr @.str.21, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, [6 x i8] zeroinitializer }, align 8
@clocksource_groups = internal global [2 x ptr] [ptr @clocksource_group, ptr null], align 16
@device_clocksource = internal global { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.4, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], [1 x i64] } { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @clocksource_subsys, ptr null, ptr null, ptr null, %struct.anon.4 zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @clocksource_groups, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, [1 x i64] zeroinitializer }, align 8
@clocksource_group = internal constant %struct.attribute_group { ptr null, %union.anon.5 zeroinitializer, ptr null, ptr null, %union.anon.6 { ptr @clocksource_attrs }, ptr null }, align 8
@clocksource_attrs = internal global [4 x ptr] [ptr @dev_attr_current_clocksource, ptr @dev_attr_unbind_clocksource, ptr @dev_attr_available_clocksource, ptr null], align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"current_clocksource\00", align 1
@dev_attr_current_clocksource = internal global { { ptr, i16, [6 x i8] }, %union.anon.7, %union.anon.8 } { { ptr, i16, [6 x i8] } { ptr @.str.24, i16 420, [6 x i8] zeroinitializer }, %union.anon.7 { ptr @current_clocksource_show }, %union.anon.8 { ptr @current_clocksource_store } }, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"unbind_clocksource\00", align 1
@dev_attr_unbind_clocksource = internal global { { ptr, i16, [6 x i8] }, %union.anon.7, %union.anon.8 } { { ptr, i16, [6 x i8] } { ptr @.str.27, i16 128, [6 x i8] zeroinitializer }, %union.anon.7 zeroinitializer, %union.anon.8 { ptr @unbind_clocksource_store } }, align 8
@.str.29 = private unnamed_addr constant [22 x i8] c"available_clocksource\00", align 1
@dev_attr_available_clocksource = internal global { { ptr, i16, [6 x i8] }, %union.anon.7, %union.anon.8 } { { ptr, i16, [6 x i8] } { ptr @.str.29, i16 292, [6 x i8] zeroinitializer }, %union.anon.7 { ptr @available_clocksource_show }, %union.anon.8 zeroinitializer }, align 8
@.str.31 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"pmtmr\00", align 1
@.str.34 = private unnamed_addr constant [68 x i8] c"\014clocksource: clock=pmtmr is deprecated - use clocksource=acpi_pm\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"acpi_pm\00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"\014clocksource: clock= boot option is deprecated - use clocksource=xyz\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_addressable___clocksource_register_scale_479, ptr @__UNIQUE_ID_addressable___devm_clocksource_register_scale_480, ptr @__UNIQUE_ID_addressable_clocks_calc_mult_shift_449, ptr @__UNIQUE_ID_addressable_clocksource_done_booting_473, ptr @__UNIQUE_ID_addressable_clocksource_unregister_481, ptr @__UNIQUE_ID_addressable_init_clocksource_sysfs_489, ptr @__clocksource_update_freq_scale.__UNIQUE_ID_addressable___SCK__WARN_trap_474, ptr @__setup_boot_override_clock, ptr @__setup_boot_override_clocksource], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: write)
define dso_local void @clocks_calc_mult_shift(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
.preheader:
  %i.a = zext i32 %4 to i64
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %i.c = mul nuw i64 %i.a, %i.b
  %i.d = lshr i64 %i.c, 32
  %i.e = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 false)
  %i.f = add nuw nsw i64 %i.e, 4294967264
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %i.i = lshr i32 %2, 1
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.preheader
  %.02228 = phi i32 [ 32, %.preheader ], [ %8, %bb.c ] ; 4 uses
  %5 = zext nneg i32 %.02228 to i64
  %i.k = shl i64 %i.h, %5
  %i.l = add i64 %i.k, %i.j
  %i.m = udiv i64 %i.l, %i.b                      ; 2 uses
  %i.n = lshr i64 %i.m, %i.g
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.loop.exit31, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = add nsw i32 %.02228, -1                    ; 2 uses
  %7 = zext nneg i32 %6 to i64
  %i.p = shl i64 %i.h, %7
  %i.q = add i64 %i.p, %i.j
  %i.r = udiv i64 %i.q, %i.b                      ; 3 uses
  %i.s = lshr i64 %i.r, %i.g
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.split.loop.exit31, label %bb.c

bb.c:                                             ; preds = %bb.b
  %8 = add nsw i32 %.02228, -2                    ; 2 uses
  %.not24.1 = icmp eq i32 %8, 0
  br i1 %.not24.1, label %.split.loop.exit31, label %bb.a, !llvm.loop !10

.split.loop.exit31:                               ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i64 [ %i.m, %bb.a ], [ %i.r, %bb.c ], [ %i.r, %bb.b ]
  %.022.lcssa = phi i32 [ %.02228, %bb.a ], [ 0, %bb.c ], [ %6, %bb.b ]
  %i.u = trunc i64 %.lcssa to i32
  store i32 %i.u, ptr %0, align 4
  store i32 %.022.lcssa, ptr %1, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_mark_unstable(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @watchdog_lock) #15
  %i.b = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 64
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %__clocksource_unstable.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %i.f = load volatile ptr, ptr %i.e, align 8
  %.not7 = icmp eq ptr %i.f, %i.e
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 168        ; 5 uses
  %i.h = load volatile ptr, ptr %i.g, align 8
  %.not8 = icmp eq ptr %i.h, %i.g
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @watchdog_list, align 8    ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.g, ptr %i.j, align 8
  store ptr %i.i, ptr %i.g, align 8
  %i.k = getelementptr i8, ptr %0, i64 176
  store ptr @watchdog_list, ptr %i.k, align 8
  store volatile ptr %i.g, ptr @watchdog_list, align 8
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = phi i64 [ %.pre, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %i.m = and i64 %i.l, -113
  %i.n = or disjoint i64 %i.m, 64
  store i64 %i.n, ptr %i.b, align 8
  %i.o = load volatile ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.o, %i.e
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 84
  store i32 0, ptr %i.p, align 4
  br label %__clocksource_unstable.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.r, null
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.r(ptr noundef %0) #15, !inline_history !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.b.i = load i1, ptr @finished_booting, align 4
  br i1 %.b.i, label %bb.j, label %__clocksource_unstable.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @system_percpu_wq, align 8
  %i.t = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.s, ptr noundef nonnull @watchdog_work) #15 ; 0 uses
  br label %__clocksource_unstable.exit

__clocksource_unstable.exit:                      ; preds = %bb.j, %bb.i, %bb.f, %bb.a
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @watchdog_lock, i64 noundef %i.a) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_start_suspend_timing(ptr nofree noundef readnone captures(address) %0, i64 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @suspend_clocksource, align 8 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %i.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr @suspend_start, align 8
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 120
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a) #15
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr @suspend_clocksource, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %.b = load i1, ptr @clocksource_start_suspend_timing.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @clocksource_start_suspend_timing.__already_done, align 1
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %._crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef %i.g) #15
  store i64 %i.i, ptr @suspend_start, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.a, %bb.h, %bb.c
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @clocksource_stop_suspend_timing(ptr nofree noundef readnone captures(address) %0, i64 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @suspend_clocksource, align 8 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull %i.a) #15
  %.pre.pre = load ptr, ptr @suspend_clocksource, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre = phi ptr [ %.pre.pre, %bb.c ], [ %i.a, %bb.b ] ; 4 uses
  %.06 = phi i64 [ %i.d, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.e = load i64, ptr @suspend_start, align 8    ; 2 uses
  %i.f = icmp ugt i64 %.06, %i.e
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc i64 @cycles_to_nsec_safe(ptr noundef %.pre, i64 noundef %i.e, i64 noundef %.06) #17, !srcloc !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.g, %bb.e ], [ 0, %bb.d ]     ; 3 uses
  %i.h = icmp eq ptr %0, %.pre
  br i1 %i.h, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %.pre, i64 128
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.j(ptr noundef %.pre) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %.0, %bb.h ], [ %.0, %bb.g ], [ %.0, %bb.f ]
  ret i64 %.07
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal fastcc i64 @cycles_to_nsec_safe(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sub i64 %2, %1
  %i.f = and i64 %i.b, %i.e                       ; 2 uses
  %i.g = icmp ugt i64 %i.f, %i.d
  %i.h = select i1 %i.g, i64 0, i64 %i.f          ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ult i64 %i.h, %i.j
end_hunk_0
begin_hunk_1_@cycles_to_nsec_safe:bb.a
  %i.y = trunc i128 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.s, %bb.b ], [ %i.y, %bb.c ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_suspend() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %.pn11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @clocksource_list, i64 8), align 8 ; 2 uses
  %.not13 = icmp eq ptr %.pn11, @clocksource_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn14 = phi ptr [ %.pn, %bb.c ], [ %.pn11, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.pn14, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.015 = getelementptr i8, ptr %.pn14, i64 -64
  tail call void %i.b(ptr noundef %.015) #15
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.c = getelementptr i8, ptr %.pn14, i64 8
  %.pn = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_resume() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %.pn11 = load ptr, ptr @clocksource_list, align 8 ; 2 uses
  %.not13 = icmp eq ptr %.pn11, @clocksource_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn14 = phi ptr [ %.pn, %bb.c ], [ %.pn11, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.pn14, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.015 = getelementptr i8, ptr %.pn14, i64 -64
  tail call void %i.b(ptr noundef %.015) #15
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.pn = load ptr, ptr %.pn14, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @watchdog_reset_pending, ptr nonnull elementtype(i32) @watchdog_reset_pending) #18, !srcloc !17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_touch_watchdog() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @watchdog_reset_pending, ptr nonnull elementtype(i32) @watchdog_reset_pending) #18, !srcloc !17
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local range(i64 0, -9223372036854775808) i64 @clocks_calc_max_nsecs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %2, %0
  %i.b = zext i32 %i.a to i64
  %i.c = udiv i64 -1, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %3) ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = sub i32 %0, %2
  %i.f = zext i32 %i.e to i64
  %i.g = mul i64 %i.d, %i.f
  %i.h = zext nneg i32 %1 to i64
  %i.i = lshr i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 1
  ret i64 %i.j
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @clocksource_done_booting() #7 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %i.a = tail call ptr @clocksource_default_clock() #16
  store ptr %i.a, ptr @curr_clocksource, align 8
  store i1 true, ptr @finished_booting, align 4
  %i.b = tail call fastcc i32 @__clocksource_watchdog_kthread() #17, !srcloc !18 ; 0 uses
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #17, !srcloc !19
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @__clocksource_register_scale(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  tail call void @clocksource_arch_init(ptr noundef %0) #15
  %i.a = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, 6
  br i1 %i.c, label %bb.b, label %.critedge, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "475: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 475b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 475) #18, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1302, i32 2307, i64 16) #18, !srcloc !22
  tail call void asm sideeffect "476: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 476b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 476) #18, !srcloc !23
  store i32 0, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %.critedge25

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1024
  %.not31 = icmp eq i64 %i.f, 0
  br i1 %.not31, label %.critedge25, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "477: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 477b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 477) #18, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1305, i32 2307, i64 16) #18, !srcloc !25
  tail call void asm sideeffect "478: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 478b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 478) #18, !srcloc !26
  %i.g = load i64, ptr %i.d, align 8
  %i.h = and i64 %i.g, -1025
  store i64 %i.h, ptr %i.d, align 8
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %bb.c, %bb.d
  %i.i = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp ugt i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge25
  %i.l = getelementptr i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %i.m, i32 noundef %i.j) #16 ; 0 uses
  store i32 0, ptr %i.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge25
  br i1 %.not, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 16 ; 2 uses
  %.val61.pre.i = load i32, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %storemerge.in.in.in6593.i = zext i32 %.val61.pre.i to i64
  %storemerge.in.in6694.i = mul nuw nsw i64 %storemerge.in.in.in6593.i, 11
  %storemerge.in6795.i = udiv i64 %storemerge.in.in6694.i, 100
  %storemerge6896.i = trunc nuw nsw i64 %storemerge.in6795.i to i32
  br label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = zext i32 %2 to i64                       ; 4 uses
  %i.r = zext i32 %1 to i64
  %i.s = mul nuw i64 %i.q, %i.r                   ; 3 uses
  %i.t = udiv i64 %i.p, %i.s                      ; 2 uses
  %.not59.i = icmp ugt i64 %i.s, %i.p
  %i.u = icmp ugt i64 %i.p, 4294967295
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 600)
  %spec.select.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.x = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.y = udiv i32 1000000000, %1
  %i.z = trunc i64 %spec.select.i to i32
  %i.aa = select i1 %.not59.i, i32 1, i32 %i.z
  %i.ab = mul i32 %i.aa, %1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.q
  %i.ae = lshr i64 %i.ad, 32
  %i.af = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = add nuw nsw i64 %i.af, 4294967264
  %i.ah = and i64 %i.ag, 4294967295               ; 2 uses
  %i.ai = zext nneg i32 %i.y to i64               ; 2 uses
  %i.aj = lshr i32 %2, 1
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.02228.i.i = phi i32 [ 32, %bb.g ], [ %6, %bb.j ] ; 4 uses
  %3 = zext nneg i32 %.02228.i.i to i64
  %i.al = shl i64 %i.ai, %3
  %i.am = add i64 %i.al, %i.ak
  %i.an = udiv i64 %i.am, %i.q                    ; 2 uses
  %i.ao = lshr i64 %i.an, %i.ah
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %4 = add nsw i32 %.02228.i.i, -1                ; 2 uses
  %5 = zext nneg i32 %4 to i64
  %i.aq = shl i64 %i.ai, %5
  %i.ar = add i64 %i.aq, %i.ak
  %i.as = udiv i64 %i.ar, %i.q                    ; 3 uses
  %i.at = lshr i64 %i.as, %i.ah
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %6 = add nsw i32 %.02228.i.i, -2                ; 2 uses
  %.not24.i.i.1 = icmp eq i32 %6, 0
  br i1 %.not24.i.i.1, label %.loopexit.i, label %bb.h, !llvm.loop !10

.loopexit.i:                                      ; preds = %bb.j, %bb.i, %bb.h
  %.lcssa47 = phi i64 [ %i.as, %bb.j ], [ %i.an, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %.022.lcssa.i.i = phi i32 [ 0, %bb.j ], [ %.02228.i.i, %bb.h ], [ %4, %bb.i ] ; 2 uses
  %i.av = trunc i64 %.lcssa47 to i32              ; 5 uses
  store i32 %i.av, ptr %i.w, align 8
  store i32 %.022.lcssa.i.i, ptr %i.x, align 4
  %i.aw = udiv i64 %i.s, 1000
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr i8, ptr %0, i64 80
  store i32 %i.ax, ptr %i.ay, align 8
  %storemerge.in.in.in65.i = and i64 %.lcssa47, 4294967295
  %storemerge.in.in66.i = mul nuw nsw i64 %storemerge.in.in.in65.i, 11
  %storemerge.in67.i = udiv i64 %storemerge.in.in66.i, 100
  %storemerge68.i = trunc nuw nsw i64 %storemerge.in67.i to i32 ; 3 uses
  %i.az = xor i32 %i.av, -1
  %i.ba = icmp ugt i32 %storemerge68.i, %i.az
  %i.bb = icmp ult i32 %i.av, %storemerge68.i
  %or.cond6077.i = or i1 %i.ba, %i.bb
  br i1 %or.cond6077.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %.loopexit.i, %.critedge2.i
  %i.bc = phi i32 [ %i.bf, %.critedge2.i ], [ %.022.lcssa.i.i, %.loopexit.i ]
  %i.bd = phi i32 [ %i.be, %.critedge2.i ], [ %i.av, %.loopexit.i ]
  %i.be = lshr i32 %i.bd, 1                       ; 5 uses
  %i.bf = add i32 %i.bc, -1                       ; 2 uses
  %storemerge.in.in.in.i = zext nneg i32 %i.be to i64
  %storemerge.in.in.i = mul nuw nsw i64 %storemerge.in.in.in.i, 11
  %storemerge.in.i = udiv i64 %storemerge.in.in.i, 100
  %storemerge.i = trunc nuw nsw i64 %storemerge.in.i to i32 ; 2 uses
  %i.bg = icmp samesign ult i32 %i.be, %storemerge.i
  br i1 %i.bg, label %.critedge2.i, label %...critedge_crit_edge.split_crit_edge.i

...critedge_crit_edge.split_crit_edge.i:          ; preds = %.critedge2.i
  store i32 %i.be, ptr %i.w, align 8
  store i32 %i.bf, ptr %i.x, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %...critedge_crit_edge.split_crit_edge.i, %.loopexit.i, %.thread.i
  %i.bh = phi ptr [ %.phi.trans.insert.i, %.thread.i ], [ %i.w, %.loopexit.i ], [ %i.w, %...critedge_crit_edge.split_crit_edge.i ]
  %i.bi = phi i32 [ %.val61.pre.i, %.thread.i ], [ %i.av, %.loopexit.i ], [ %i.be, %...critedge_crit_edge.split_crit_edge.i ] ; 2 uses
  %storemerge.lcssa64.i = phi i32 [ %storemerge6896.i, %.thread.i ], [ %storemerge68.i, %.loopexit.i ], [ %storemerge.i, %...critedge_crit_edge.split_crit_edge.i ] ; 3 uses
  %i.bj = getelementptr i8, ptr %0, i64 32        ; 2 uses
  store i32 %storemerge.lcssa64.i, ptr %i.bj, align 8
  %i.bk = xor i32 %i.bi, -1
  %i.bl = icmp ugt i32 %storemerge.lcssa64.i, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %.critedge.i
  %i.bm = getelementptr i8, ptr %0, i64 56
  %i.bn = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.2, i32 1277, i32 2323, i64 16) #18, !srcloc !27
  %i.bo = load ptr, ptr %i.bm, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bn, ptr noundef %i.bo) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !28
  %.pre.i = load i32, ptr %i.bh, align 8
  %.pre88.i = load i32, ptr %i.bj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i
  %i.bp = phi i32 [ %.pre88.i, %bb.k ], [ %storemerge.lcssa64.i, %.critedge.i ] ; 2 uses
  %i.bq = phi i32 [ %.pre.i, %bb.k ], [ %i.bi, %.critedge.i ] ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 20
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = getelementptr i8, ptr %0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 5 uses
  %i.bv = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bw = add i32 %i.bq, %i.bp
  %i.bx = zext i32 %i.bw to i64
  %i.by = udiv i64 -1, %i.bx
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bu) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %.clocksource_update_max_deferment.exit_crit_edge.i, label %bb.m

.clocksource_update_max_deferment.exit_crit_edge.i: ; preds = %bb.l
  %.pre89.i = load i64, ptr null, align 4294967296
  br label %__clocksource_update_freq_scale.exit

bb.m:                                             ; preds = %bb.l
  store i64 %i.bz, ptr %i.bv, align 8
  br label %__clocksource_update_freq_scale.exit

__clocksource_update_freq_scale.exit:             ; preds = %.clocksource_update_max_deferment.exit_crit_edge.i, %bb.m
  %i.ca = phi i64 [ %.pre89.i, %.clocksource_update_max_deferment.exit_crit_edge.i ], [ %i.bz, %bb.m ]
  %i.cb = sub i32 %i.bq, %i.bp
  %i.cc = zext i32 %i.cb to i64
  %i.cd = mul i64 %i.bz, %i.cc
  %i.ce = zext nneg i32 %i.bs to i64
  %i.cf = lshr i64 %i.cd, %i.ce
  %i.cg = lshr i64 %i.cf, 1                       ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = lshr i64 %i.bu, 1
  %i.cj = lshr i64 %i.bu, 2
  %i.ck = add nuw i64 %i.ci, %i.cj
  %i.cl = lshr i64 %i.bu, 3
  %i.cm = add nuw i64 %i.ck, %i.cl
  %i.cn = getelementptr i8, ptr %0, i64 48
  store i64 %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %i.cp, i64 noundef %i.bu, i64 noundef %i.ca, i64 noundef %i.cg) #16 ; 0 uses
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %i.cr = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @watchdog_lock) #15
  %i.cs = getelementptr i8, ptr %0, i64 84        ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %__clocksource_update_freq_scale.exit
  %.0.i = phi ptr [ @clocksource_list, %__clocksource_update_freq_scale.exit ], [ %.pn.i, %bb.o ] ; 3 uses
  %.pn.i = load ptr, ptr %.0.i, align 8           ; 5 uses
  %.not.i27 = icmp eq ptr %.pn.i, @clocksource_list
  br i1 %.not.i27, label %clocksource_enqueue.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr i8, ptr %.pn.i, i64 20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = load i32, ptr %i.cs, align 4
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %clocksource_enqueue.exit, label %bb.n, !llvm.loop !29

clocksource_enqueue.exit:                         ; preds = %bb.n, %bb.o
  %i.cx = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.cy = getelementptr i8, ptr %.pn.i, i64 8
  store ptr %i.cx, ptr %i.cy, align 8
  store ptr %.pn.i, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.cz, align 8
  store volatile ptr %i.cx, ptr %.0.i, align 8
  %i.da = getelementptr i8, ptr %0, i64 168       ; 6 uses
  store volatile ptr %i.da, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %0, i64 176       ; 2 uses
  store volatile ptr %i.da, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %0, i64 96        ; 4 uses
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.de = and i64 %i.dd, 2
  %.not.i28 = icmp eq i64 %i.de, 0
  br i1 %.not.i28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %clocksource_enqueue.exit
  %i.df = load ptr, ptr @watchdog_list, align 8   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.da, ptr %i.dg, align 8
  store ptr %i.df, ptr %i.da, align 8
  store ptr @watchdog_list, ptr %i.db, align 8
  store volatile ptr %i.da, ptr @watchdog_list, align 8
  %i.dh = load i64, ptr %i.dc, align 8
  %i.di = and i64 %i.dh, -17
  br label %.sink.split.i

bb.q:                                             ; preds = %clocksource_enqueue.exit
  %i.dj = and i64 %i.dd, 1
  %.not6.i = icmp eq i64 %i.dj, 0
  br i1 %.not6.i, label %clocksource_enqueue_watchdog.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = or i64 %i.dd, 32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.p
  %.sink.i = phi i64 [ %i.dk, %bb.r ], [ %i.di, %bb.p ]
  store i64 %.sink.i, ptr %i.dc, align 8
  br label %clocksource_enqueue_watchdog.exit

clocksource_enqueue_watchdog.exit:                ; preds = %bb.q, %.sink.split.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @watchdog_lock, i64 noundef %i.cr) #15
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #17, !srcloc !19
  tail call fastcc void @clocksource_select_watchdog(i1 noundef zeroext false) #17, !srcloc !30
  %i.dl = load i64, ptr %i.dc, align 8
  %i.dm = and i64 %i.dl, 128
  %.not.i29 = icmp eq i64 %i.dm, 0
  br i1 %.not.i29, label %__clocksource_suspend_select.exit, label %bb.s

bb.s:                                             ; preds = %clocksource_enqueue_watchdog.exit
  %i.dn = getelementptr i8, ptr %0, i64 136
  %i.do = load ptr, ptr %i.dn, align 8
  %.not6.i30 = icmp eq ptr %i.do, null
  br i1 %.not6.i30, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr i8, ptr %0, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not7.i = icmp eq ptr %i.dq, null
  br i1 %.not7.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dr = load ptr, ptr %i.co, align 8
  %i.ds = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %i.dr) #16 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dt = load ptr, ptr @suspend_clocksource, align 8 ; 2 uses
  %.not8.i = icmp eq ptr %i.dt, null
  br i1 %.not8.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = load i32, ptr %i.cs, align 4
  %i.dv = getelementptr i8, ptr %i.dt, i64 84
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = icmp sgt i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.x, label %__clocksource_suspend_select.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %0, ptr @suspend_clocksource, align 8
  br label %__clocksource_suspend_select.exit

__clocksource_suspend_select.exit:                ; preds = %clocksource_enqueue_watchdog.exit, %bb.w, %bb.x
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clocksource_arch_init(ptr noundef) local_unnamed_addr #3

end_hunk_1
