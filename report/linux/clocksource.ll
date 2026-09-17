Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/clocksource?download=true
inline.NumInlined: 125
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
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

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @clocks_calc_mult_shift(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
.preheader:
  %i.a = zext i32 %2 to i64                       ; 32 uses
  %5 = tail call i32 @llvm.umulh.i32(i32 %4, i32 %2)
  %6 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %5, i1 false)
  %7 = zext nneg i32 %6 to i64                    ; 32 uses
  %i.b = zext i32 %3 to i64                       ; 32 uses
  %i.c = lshr i32 %2, 1
  %i.d = zext nneg i32 %i.c to i64                ; 32 uses
  %i.e = shl nuw i64 %i.b, 32
  %i.f = or disjoint i64 %i.e, %i.d
  %i.g = udiv i64 %i.f, %i.a                      ; 2 uses
  %i.h = lshr i64 %i.g, %7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.af, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.j = shl nuw nsw i64 %i.b, 31
  %i.k = or disjoint i64 %i.j, %i.d
  %i.l = udiv i64 %i.k, %i.a                      ; 2 uses
  %i.m = lshr i64 %i.l, %7
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = shl nuw nsw i64 %i.b, 30
  %i.p = add nuw nsw i64 %i.o, %i.d
  %i.q = udiv i64 %i.p, %i.a                      ; 2 uses
  %i.r = lshr i64 %i.q, %7
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = shl nuw nsw i64 %i.b, 29
  %i.u = add nuw nsw i64 %i.t, %i.d
  %i.v = udiv i64 %i.u, %i.a                      ; 2 uses
  %i.w = lshr i64 %i.v, %7
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.af, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = shl nuw nsw i64 %i.b, 28
  %i.z = add nuw nsw i64 %i.y, %i.d
  %i.aa = udiv i64 %i.z, %i.a                     ; 2 uses
  %i.ab = lshr i64 %i.aa, %7
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nuw nsw i64 %i.b, 27
  %i.ae = add nuw nsw i64 %i.ad, %i.d
  %i.af = udiv i64 %i.ae, %i.a                    ; 2 uses
  %i.ag = lshr i64 %i.af, %7
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.af, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %i.b, 26
  %i.aj = add nuw nsw i64 %i.ai, %i.d
  %i.ak = udiv i64 %i.aj, %i.a                    ; 2 uses
  %i.al = lshr i64 %i.ak, %7
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.af, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = shl nuw nsw i64 %i.b, 25
  %i.ao = add nuw nsw i64 %i.an, %i.d
  %i.ap = udiv i64 %i.ao, %i.a                    ; 2 uses
  %i.aq = lshr i64 %i.ap, %7
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = shl nuw nsw i64 %i.b, 24
  %i.at = add nuw nsw i64 %i.as, %i.d
  %i.au = udiv i64 %i.at, %i.a                    ; 2 uses
  %i.av = lshr i64 %i.au, %7
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = shl nuw nsw i64 %i.b, 23
  %i.ay = add nuw nsw i64 %i.ax, %i.d
  %i.az = udiv i64 %i.ay, %i.a                    ; 2 uses
  %i.ba = lshr i64 %i.az, %7
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.af, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = shl nuw nsw i64 %i.b, 22
  %i.bd = add nuw nsw i64 %i.bc, %i.d
  %i.be = udiv i64 %i.bd, %i.a                    ; 2 uses
  %i.bf = lshr i64 %i.be, %7
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.af, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = shl nuw nsw i64 %i.b, 21
  %i.bi = add nuw nsw i64 %i.bh, %i.d
  %i.bj = udiv i64 %i.bi, %i.a                    ; 2 uses
  %i.bk = lshr i64 %i.bj, %7
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = shl nuw nsw i64 %i.b, 20
  %i.bn = add nuw nsw i64 %i.bm, %i.d
  %i.bo = udiv i64 %i.bn, %i.a                    ; 2 uses
  %i.bp = lshr i64 %i.bo, %7
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.af, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = shl nuw nsw i64 %i.b, 19
  %i.bs = add nuw nsw i64 %i.br, %i.d
  %i.bt = udiv i64 %i.bs, %i.a                    ; 2 uses
  %i.bu = lshr i64 %i.bt, %7
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.af, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = shl nuw nsw i64 %i.b, 18
  %i.bx = add nuw nsw i64 %i.bw, %i.d
  %i.by = udiv i64 %i.bx, %i.a                    ; 2 uses
  %i.bz = lshr i64 %i.by, %7
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = shl nuw nsw i64 %i.b, 17
  %i.cc = add nuw nsw i64 %i.cb, %i.d
  %i.cd = udiv i64 %i.cc, %i.a                    ; 2 uses
  %i.ce = lshr i64 %i.cd, %7
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.af, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = shl nuw nsw i64 %i.b, 16
  %i.ch = add nuw nsw i64 %i.cg, %i.d
  %i.ci = udiv i64 %i.ch, %i.a                    ; 2 uses
  %i.cj = lshr i64 %i.ci, %7
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.af, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = shl nuw nsw i64 %i.b, 15
  %i.cm = add nuw nsw i64 %i.cl, %i.d
  %i.cn = udiv i64 %i.cm, %i.a                    ; 2 uses
  %i.co = lshr i64 %i.cn, %7
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = shl nuw nsw i64 %i.b, 14
  %i.cr = add nuw nsw i64 %i.cq, %i.d
  %i.cs = udiv i64 %i.cr, %i.a                    ; 2 uses
  %i.ct = lshr i64 %i.cs, %7
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = shl nuw nsw i64 %i.b, 13
  %i.cw = add nuw nsw i64 %i.cv, %i.d
  %i.cx = udiv i64 %i.cw, %i.a                    ; 2 uses
  %i.cy = lshr i64 %i.cx, %7
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = shl nuw nsw i64 %i.b, 12
  %i.db = add nuw nsw i64 %i.da, %i.d
  %i.dc = udiv i64 %i.db, %i.a                    ; 2 uses
  %i.dd = lshr i64 %i.dc, %7
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = shl nuw nsw i64 %i.b, 11
  %i.dg = add nuw nsw i64 %i.df, %i.d
  %i.dh = udiv i64 %i.dg, %i.a                    ; 2 uses
  %i.di = lshr i64 %i.dh, %7
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.af, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = shl nuw nsw i64 %i.b, 10
  %i.dl = add nuw nsw i64 %i.dk, %i.d
  %i.dm = udiv i64 %i.dl, %i.a                    ; 2 uses
  %i.dn = lshr i64 %i.dm, %7
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = shl nuw nsw i64 %i.b, 9
  %i.dq = add nuw nsw i64 %i.dp, %i.d
  %i.dr = udiv i64 %i.dq, %i.a                    ; 2 uses
  %i.ds = lshr i64 %i.dr, %7
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = shl nuw nsw i64 %i.b, 8
  %i.dv = add nuw nsw i64 %i.du, %i.d
  %i.dw = udiv i64 %i.dv, %i.a                    ; 2 uses
  %i.dx = lshr i64 %i.dw, %7
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = shl nuw nsw i64 %i.b, 7
  %i.ea = add nuw nsw i64 %i.dz, %i.d
  %i.eb = udiv i64 %i.ea, %i.a                    ; 2 uses
  %i.ec = lshr i64 %i.eb, %7
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = shl nuw nsw i64 %i.b, 6
  %i.ef = add nuw nsw i64 %i.ee, %i.d
  %i.eg = udiv i64 %i.ef, %i.a                    ; 2 uses
  %i.eh = lshr i64 %i.eg, %7
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = shl nuw nsw i64 %i.b, 5
  %i.ek = add nuw nsw i64 %i.ej, %i.d
  %i.el = udiv i64 %i.ek, %i.a                    ; 2 uses
  %i.em = lshr i64 %i.el, %7
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = shl nuw nsw i64 %i.b, 4
  %i.ep = add nuw nsw i64 %i.eo, %i.d
  %i.eq = udiv i64 %i.ep, %i.a                    ; 2 uses
  %i.er = lshr i64 %i.eq, %7
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = shl nuw nsw i64 %i.b, 3
  %i.eu = add nuw nsw i64 %i.et, %i.d
  %i.ev = udiv i64 %i.eu, %i.a                    ; 2 uses
  %i.ew = lshr i64 %i.ev, %7
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = shl nuw nsw i64 %i.b, 2
  %i.ez = add nuw nsw i64 %i.ey, %i.d
  %i.fa = udiv i64 %i.ez, %i.a                    ; 2 uses
  %i.fb = lshr i64 %i.fa, %7
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = shl nuw nsw i64 %i.b, 1
  %i.fe = add nuw nsw i64 %i.fd, %i.d
  %i.ff = udiv i64 %i.fe, %i.a                    ; 2 uses
  %i.fg = lshr i64 %i.ff, %7
  %i.fh = icmp eq i64 %i.fg, 0
  %spec.select = zext i1 %i.fh to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.preheader
  %.lcssa = phi i64 [ %i.g, %.preheader ], [ %i.ci, %bb.p ], [ %i.l, %bb.a ], [ %i.ff, %bb.ae ], [ %i.q, %bb.b ], [ %i.dc, %bb.t ], [ %i.v, %bb.c ], [ %i.fa, %bb.ad ], [ %i.aa, %bb.d ], [ %i.cn, %bb.q ], [ %i.af, %bb.e ], [ %i.ev, %bb.ac ], [ %i.ak, %bb.f ], [ %i.dr, %bb.w ], [ %i.ap, %bb.g ], [ %i.eq, %bb.ab ], [ %i.au, %bb.h ], [ %i.cs, %bb.r ], [ %i.az, %bb.i ], [ %i.el, %bb.aa ], [ %i.be, %bb.j ], [ %i.dh, %bb.u ], [ %i.bj, %bb.k ], [ %i.eg, %bb.z ], [ %i.bo, %bb.l ], [ %i.cx, %bb.s ], [ %i.bt, %bb.m ], [ %i.eb, %bb.y ], [ %i.by, %bb.n ], [ %i.dm, %bb.v ], [ %i.cd, %bb.o ], [ %i.dw, %bb.x ]
  %.022.lcssa = phi i32 [ 32, %.preheader ], [ 16, %bb.p ], [ 31, %bb.a ], [ %spec.select, %bb.ae ], [ 30, %bb.b ], [ 12, %bb.t ], [ 29, %bb.c ], [ 2, %bb.ad ], [ 28, %bb.d ], [ 15, %bb.q ], [ 27, %bb.e ], [ 3, %bb.ac ], [ 26, %bb.f ], [ 9, %bb.w ], [ 25, %bb.g ], [ 4, %bb.ab ], [ 24, %bb.h ], [ 14, %bb.r ], [ 23, %bb.i ], [ 5, %bb.aa ], [ 22, %bb.j ], [ 11, %bb.u ], [ 21, %bb.k ], [ 6, %bb.z ], [ 20, %bb.l ], [ 13, %bb.s ], [ 19, %bb.m ], [ 7, %bb.y ], [ 18, %bb.n ], [ 10, %bb.v ], [ 17, %bb.o ], [ 8, %bb.x ]
  %i.fi = trunc i64 %.lcssa to i32
  store i32 %i.fi, ptr %0, align 4
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
  %i.a = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @watchdog_lock) #14
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
  tail call void %i.r(ptr noundef %0) #14, !inline_history !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.b.i = load i1, ptr @finished_booting, align 4
  br i1 %.b.i, label %bb.j, label %__clocksource_unstable.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @system_percpu_wq, align 8
  %i.t = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.s, ptr noundef nonnull @watchdog_work) #14 ; 0 uses
  br label %__clocksource_unstable.exit

__clocksource_unstable.exit:                      ; preds = %bb.j, %bb.i, %bb.f, %bb.a
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @watchdog_lock, i64 noundef %i.a) #14
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
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a) #14
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr @suspend_clocksource, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %.b = load i1, ptr @clocksource_start_suspend_timing.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @clocksource_start_suspend_timing.__already_done, align 1
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %._crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef %i.g) #14
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
  %i.d = tail call i64 %i.c(ptr noundef nonnull %i.a) #14
  %.pre.pre = load ptr, ptr @suspend_clocksource, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre = phi ptr [ %.pre.pre, %bb.c ], [ %i.a, %bb.b ] ; 4 uses
  %.06 = phi i64 [ %i.d, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.e = load i64, ptr @suspend_start, align 8    ; 2 uses
  %i.f = icmp ugt i64 %.06, %i.e
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc i64 @cycles_to_nsec_safe(ptr noundef %.pre, i64 noundef %i.e, i64 noundef %.06) #16, !srcloc !19
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
  tail call void %i.j(ptr noundef %.pre) #14
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
end_hunk_0
begin_hunk_1_@watchdog_print_remote_skew:bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @watchdog_data, i64 48), align 16
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %i.e, i64 noundef %i.b, i32 noundef %i.f, i64 noundef %i.c) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @watchdog_data, i64 48), align 16
  %i.i = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #20, !srcloc !65
  %i.j = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %i.h, i64 noundef %i.c, i32 noundef %i.i, i64 noundef %i.b) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tick_clock_notify() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__devm_add_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @current_clocksource_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #14
  %i.a = load ptr, ptr @curr_clocksource, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef %i.c) #14
  %i.e = sext i32 %i.d to i64
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #14
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -22, 32) i64 @current_clocksource_store(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #14
  %i.a = add i64 %3, -32
  %or.cond.i = icmp ult i64 %i.a, -31
  br i1 %or.cond.i, label %sysfs_get_uname.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 %3
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 10
  %i.f = sext i1 %i.e to i64
  %spec.select.i = add nsw i64 %3, %i.f           ; 3 uses
  %.not.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @override_name, ptr readonly align 1 %2, i64 %spec.select.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr i8, ptr @override_name, i64 %spec.select.i
  store i8 0, ptr %i.g, align 1
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #16, !srcloc !14
  br label %sysfs_get_uname.exit

sysfs_get_uname.exit:                             ; preds = %bb.a, %bb.d
  %.014.i4 = phi i64 [ %3, %bb.d ], [ -22, %bb.a ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #14
  ret i64 %.014.i4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @unbind_clocksource_store(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = add i64 %3, -32
  %or.cond.i = icmp ult i64 %i.b, -31
  br i1 %or.cond.i, label %sysfs_get_uname.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !67
  %i.c = getelementptr i8, ptr %2, i64 %3
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 10
  %i.g = sext i1 %i.f to i64
  %spec.select.i = add nsw i64 %3, %i.g           ; 3 uses
  %.not.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %2, i64 %spec.select.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 %spec.select.i
  store i8 0, ptr %i.h, align 1
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.in = phi ptr [ @clocksource_list, %bb.d ], [ %.pn, %bb.f ]
  %.pn = load ptr, ptr %.pn.in, align 8           ; 4 uses
  %.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #14
  br label %sysfs_get_uname.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %.pn, i64 -8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i32 @strcmp(ptr noundef %i.j, ptr noundef nonnull dereferenceable(1) %i.a) #14
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.g, label %bb.e, !llvm.loop !66

bb.g:                                             ; preds = %bb.f
  %.015.le = getelementptr i8, ptr %.pn, i64 -64
  %i.l = tail call fastcc i32 @clocksource_unbind(ptr noundef %.015.le) #16, !srcloc !68
  %.fr = freeze i32 %i.l                          ; 2 uses
  %i.m = sext i32 %.fr to i64
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #14
  %.not19 = icmp eq i32 %.fr, 0
  %spec.select = select i1 %.not19, i64 %3, i64 %i.m
  br label %sysfs_get_uname.exit.thread

sysfs_get_uname.exit.thread:                      ; preds = %bb.g, %bb.a, %.thread
  %.0 = phi i64 [ -19, %.thread ], [ -22, %bb.a ], [ %spec.select, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @available_clocksource_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #14
  %.pn37 = load ptr, ptr @clocksource_list, align 8 ; 2 uses
  %.not38 = icmp eq ptr %.pn37, @clocksource_list
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.pn40 = phi ptr [ %.pn, %bb.d ], [ %.pn37, %bb.a ] ; 3 uses
  %.03439 = phi i64 [ %.1, %bb.d ], [ 0, %bb.a ]  ; 4 uses
  %i.a = tail call i32 @tick_oneshot_mode_active() #14
  %.not35 = icmp eq i32 %i.a, 0
  br i1 %.not35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr i8, ptr %.pn40, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 32
  %.not36 = icmp eq i64 %i.d, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.e = sub i64 4096, %.03439
  %i.f = getelementptr i8, ptr %2, i64 %.03439
  %i.g = tail call i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.h = getelementptr i8, ptr %.pn40, i64 -8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull @.str.31, ptr noundef %i.i) #14
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %.03439, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ %i.l, %bb.c ], [ %.03439, %bb.b ] ; 2 uses
  %.pn = load ptr, ptr %.pn40, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.034.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ] ; 3 uses
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #14
  %i.m = sub i64 4096, %.034.lcssa
  %i.n = getelementptr i8, ptr %2, i64 %.034.lcssa
  %i.o = tail call i64 @llvm.smax.i64(i64 %i.m, i64 0)
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.32) #14
  %i.q = sext i32 %i.p to i64
  %i.r = add i64 %.034.lcssa, %i.q
  ret i64 %i.r
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { noredzone "no-builtin-wcslen" }
attributes #17 = { nounwind }
attributes #18 = { cold noredzone "no-builtin-wcslen" }
attributes #19 = { nounwind memory(none) }
attributes #20 = { nounwind memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !12}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2148839235, i64 2148839274, i64 2148839295, i64 2148839332, i64 2148839355, i64 2148839226}
!14 = !{i64 32634}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i64 38939}
!17 = !{i64 2148839610, i64 2148839649, i64 2148839670, i64 2148839707, i64 2148839730, i64 2148839601}
!18 = distinct !{null}
!19 = !{i64 26533}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{i64 33212}
!23 = !{i64 2155904653, i64 2155904528}
!24 = !{i64 2155905176, i64 2155906246, i64 2155906279, i64 2155906314, i64 2155906330, i64 2155907257, i64 2155907315, i64 2155907364, i64 2155907174, i64 2155906389, i64 2155906421, i64 2155906504}
!25 = !{i64 2155907670, i64 2155907546}
!26 = !{i64 2155909091, i64 2155908966}
!27 = !{i64 2155909614, i64 2155910709, i64 2155910742, i64 2155910777, i64 2155910793, i64 2155911720, i64 2155911778, i64 2155911827, i64 2155911637, i64 2155910852, i64 2155910884, i64 2155910967}
!28 = !{i64 2155912133, i64 2155912009}
!29 = !{i64 2155901395, i64 2155901422, i64 2155901848, i64 2155901881, i64 2155901916, i64 2155901932, i64 2155902773, i64 2155902831, i64 2155902880, i64 2155902690, i64 2155901991, i64 2155902023}
!30 = !{i64 2155899688}
!31 = !{i64 37134}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = !{i64 38004}
!36 = !{i64 32715}
!37 = !{i64 21981}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{null}
!42 = distinct !{null, null}
!43 = distinct !{null, null}
!44 = distinct !{!44, !12}
!45 = !{i64 1138681}
!46 = !{i64 1138773}
!47 = !{i64 13303}
!48 = !{i64 13778}
!49 = !{i64 13839}
!50 = !{i64 949690}
!51 = !{i64 2155818059}
!52 = !{i64 2155806886}
!53 = !{i64 2155792717}
!54 = !{i64 2155808853, i64 2155808728}
!55 = !{i64 2155809376, i64 2155810459, i64 2155810492, i64 2155810527, i64 2155810543, i64 2155811470, i64 2155811528, i64 2155811577, i64 2155811387, i64 2155810602, i64 2155810634, i64 2155810717}
!56 = !{i64 2155811882, i64 2155811758}
!57 = !{i64 11601}
!58 = !{i64 17664}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = !{i64 2343181}
!62 = !{i64 2155786786}
!63 = !{i64 10306}
!64 = !{i64 2155840390}
!65 = !{i64 2155845224}
!66 = distinct !{!66, !12}
!67 = !{!"auto-init"}
!68 = !{i64 41217}
!69 = distinct !{!69, !12}
end_hunk_1
