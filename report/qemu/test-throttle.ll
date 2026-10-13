Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test-throttle?download=true
inline.NumInlined: 25
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ThrottleConfig = type { [6 x %struct.LeakyBucket], i64 }
%struct.LeakyBucket = type { i64, i64, double, double, i64 }
%struct.ThrottleGroupMember = type { ptr, [2 x %struct.CoQueue], i32, i32, ptr, %struct.ThrottleTimers, [2 x i32], %struct.anon.0 }
%struct.CoQueue = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.ThrottleTimers = type { [2 x ptr], i32, [2 x ptr], ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.ThrottleState = type { %struct.ThrottleConfig, i64 }

@error_fatal = external global ptr, align 8
@ctx = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [22 x i8] c"/throttle/leak_bucket\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"/throttle/compute_wait\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/throttle/init\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/throttle/init_readonly\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/throttle/init_writeonly\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"/throttle/destroy\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"/throttle/have_timer\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/throttle/detach_attach\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"/throttle/config/enabled\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"/throttle/config/conflicting\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"/throttle/config/is_valid\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/throttle/config/ranges\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"/throttle/config/max\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"/throttle/config/iops_size\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"/throttle/config_functions\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"/throttle/accounting\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"/throttle/groups\00", align 1
@cfg = internal global %struct.ThrottleConfig zeroinitializer, align 8
@bkt = internal global %struct.LeakyBucket zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [30 x i8] c"../tests/unit/test-throttle.c\00", align 1
@__func__.test_leak_bucket = private unnamed_addr constant [17 x i8] c"test_leak_bucket\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"bkt.avg == 150\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"bkt.max == 15\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"double_cmp(bkt.level, 0.5)\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"double_cmp(bkt.level, 0)\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"double_cmp(bkt.burst_level, 3.5)\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"double_cmp(bkt.burst_level, 1)\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"double_cmp(bkt.burst_level, 0)\00", align 1
@__func__.test_compute_wait = private unnamed_addr constant [18 x i8] c"test_compute_wait\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"!wait\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"wait == result\00", align 1
@.str.27 = private unnamed_addr constant [60 x i8] c"double_cmp(bkt.level, (i + 1) * (bkt.max - bkt.avg) / 10.0)\00", align 1
@tgm = internal global %struct.ThrottleGroupMember zeroinitializer, align 8
@tt = internal unnamed_addr global ptr null, align 8
@ts = internal global %struct.ThrottleState zeroinitializer, align 8
@__func__.test_init = private unnamed_addr constant [10 x i8] c"test_init\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"tt->clock_type == QEMU_CLOCK_VIRTUAL\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"tt->timers[THROTTLE_READ]\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"tt->timers[THROTTLE_WRITE]\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"!ts.previous_leak\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"!ts.cfg.op_size\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"!ts.cfg.buckets[i].avg\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"!ts.cfg.buckets[i].max\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"!ts.cfg.buckets[i].level\00", align 1
@__func__.test_init_readonly = private unnamed_addr constant [19 x i8] c"test_init_readonly\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"!tt->timers[THROTTLE_WRITE]\00", align 1
@__func__.test_init_writeonly = private unnamed_addr constant [20 x i8] c"test_init_writeonly\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"!tt->timers[THROTTLE_READ]\00", align 1
@__func__.test_destroy = private unnamed_addr constant [13 x i8] c"test_destroy\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"!tt->timers[i]\00", align 1
@__func__.test_have_timer = private unnamed_addr constant [16 x i8] c"test_have_timer\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"!throttle_timers_are_initialized(tt)\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"throttle_timers_are_initialized(tt)\00", align 1
@__func__.test_detach_attach = private unnamed_addr constant [19 x i8] c"test_detach_attach\00", align 1
@__func__.test_enabled = private unnamed_addr constant [13 x i8] c"test_enabled\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"!throttle_enabled(&cfg)\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"throttle_is_valid(&cfg, NULL)\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"throttle_enabled(&cfg)\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"!throttle_is_valid(&cfg, NULL)\00", align 1
@__func__.test_conflicts_for_one_set = private unnamed_addr constant [27 x i8] c"test_conflicts_for_one_set\00", align 1
@__func__.test_is_valid_for_value = private unnamed_addr constant [24 x i8] c"test_is_valid_for_value\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"throttle_is_valid(&cfg, NULL) == should_be_valid\00", align 1
@__func__.test_ranges = private unnamed_addr constant [12 x i8] c"test_ranges\00", align 1
@__func__.test_max_is_missing_limit = private unnamed_addr constant [26 x i8] c"test_max_is_missing_limit\00", align 1
@__func__.test_iops_size_is_missing_limit = private unnamed_addr constant [32 x i8] c"test_iops_size_is_missing_limit\00", align 1
@__func__.test_config_functions = private unnamed_addr constant [22 x i8] c"test_config_functions\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"ts.previous_leak\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"final_cfg.buckets[THROTTLE_BPS_TOTAL].avg == 153\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"final_cfg.buckets[THROTTLE_BPS_READ].avg == 56\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"final_cfg.buckets[THROTTLE_BPS_WRITE].avg == 1\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"final_cfg.buckets[THROTTLE_OPS_TOTAL].avg == 150\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"final_cfg.buckets[THROTTLE_OPS_READ].avg == 69\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"final_cfg.buckets[THROTTLE_OPS_WRITE].avg == 23\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"final_cfg.buckets[THROTTLE_BPS_TOTAL].max == 0\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"final_cfg.buckets[THROTTLE_BPS_READ].max == 56\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"final_cfg.buckets[THROTTLE_BPS_WRITE].max == 120\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"final_cfg.buckets[THROTTLE_OPS_TOTAL].max == 150\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"final_cfg.buckets[THROTTLE_OPS_READ].max == 400\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"final_cfg.buckets[THROTTLE_OPS_WRITE].max == 500\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"final_cfg.op_size == 1\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"!final_cfg.buckets[i].level\00", align 1
@__func__.test_accounting = private unnamed_addr constant [16 x i8] c"test_accounting\00", align 1
@.str.61 = private unnamed_addr constant [59 x i8] c"do_test_accounting(false, 1 * 512, 150, 0, 1024, 512, 512)\00", align 1
@.str.62 = private unnamed_addr constant [61 x i8] c"do_test_accounting(false, 2 * 512, 150, 0, 2048, 1024, 1024)\00", align 1
@.str.63 = private unnamed_addr constant [62 x i8] c"do_test_accounting(false, 2 * 512, 150, 17, 2048, 1024, 1024)\00", align 1
@.str.64 = private unnamed_addr constant [51 x i8] c"do_test_accounting(true, 1 * 512, 150, 0, 2, 1, 1)\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"do_test_accounting(true, 2 * 512, 150, 0, 2, 1, 1)\00", align 1
@.str.66 = private unnamed_addr constant [93 x i8] c"do_test_accounting(true, 64 * 512, 150, 13 * 512, (64.0 * 2) / 13, (64.0 / 13), (64.0 / 13))\00", align 1
@.str.67 = private unnamed_addr constant [93 x i8] c"do_test_accounting(true, 64 * 512, 300, 13 * 512, (64.0 * 2) / 13, (64.0 / 13), (64.0 / 13))\00", align 1
@__const.do_test_accounting.to_test = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2], [3 x i32] [i32 3, i32 4, i32 5]], align 16
@__func__.test_groups = private unnamed_addr constant [12 x i8] c"test_groups\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"tgm1->throttle_state == NULL\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"tgm2->throttle_state == NULL\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"tgm3->throttle_state == NULL\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"tgm1->throttle_state != NULL\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"tgm2->throttle_state != NULL\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"tgm3->throttle_state != NULL\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"!strcmp(throttle_group_get_name(tgm1), \22bar\22)\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"!strcmp(throttle_group_get_name(tgm2), \22foo\22)\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"tgm1->throttle_state == tgm3->throttle_state\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"!memcmp(&cfg1, &cfg2, sizeof(cfg1))\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  store ptr %1, ptr %i.b, align 8
  %i.c = tail call i32 @qemu_init_main_loop(ptr noundef nonnull @error_fatal) #10 ; 0 uses
  %i.d = tail call ptr @qemu_get_aio_context() #10
  store ptr %i.d, ptr @ctx, align 8
  tail call void @bdrv_init() #10
  tail call void @module_call_init(i32 noundef 4) #10
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @g_main_context_iteration(ptr noundef null, i32 noundef 0) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @g_test_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #10
  call void @g_test_add_func(ptr noundef nonnull @.str, ptr noundef nonnull @test_leak_bucket) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @test_compute_wait) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @test_init) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.3, ptr noundef nonnull @test_init_readonly) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.4, ptr noundef nonnull @test_init_writeonly) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.5, ptr noundef nonnull @test_destroy) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.6, ptr noundef nonnull @test_have_timer) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.7, ptr noundef nonnull @test_detach_attach) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.8, ptr noundef nonnull @test_enabled) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.9, ptr noundef nonnull @test_conflicting_config) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.10, ptr noundef nonnull @test_is_valid) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.11, ptr noundef nonnull @test_ranges) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.12, ptr noundef nonnull @test_max_is_missing_limit) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.13, ptr noundef nonnull @test_iops_size_is_missing_limit) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.14, ptr noundef nonnull @test_config_functions) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.15, ptr noundef nonnull @test_accounting) #10
  call void @g_test_add_func(ptr noundef nonnull @.str.16, ptr noundef nonnull @test_groups) #10
  %i.f = call i32 @g_test_run() #10
  ret i32 %i.f
}

declare i32 @qemu_init_main_loop(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_get_aio_context() local_unnamed_addr #1

declare void @bdrv_init() local_unnamed_addr #1

declare void @module_call_init(i32 noundef) local_unnamed_addr #1

declare i32 @g_main_context_iteration(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @g_test_init(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @g_test_add_func(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_leak_bucket() #2 {
bb.a:
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @bkt, ptr noundef nonnull align 8 dereferenceable(40) @cfg, i64 40, i1 false)
  store i64 150, ptr @bkt, align 8
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 8), align 8
  store double 1.500000e+00, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 16), align 8
  tail call void @throttle_leak_bucket(ptr noundef nonnull @bkt, i64 noundef 6666666) #10
  %i.a = load i64, ptr @bkt, align 8
  %.not = icmp eq i64 %i.a, 150
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 52, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.18) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 8), align 8
  %.not39 = icmp eq i64 %i.b, 15
  br i1 %.not39, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 53, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.19) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load double, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 16), align 8
  %i.d = fadd double %i.c, -5.000000e-01
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp olt double %i.e, f0x3EB0C6F7A0B5ED8D
  br i1 %i.f, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 54, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.20) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @throttle_leak_bucket(ptr noundef nonnull @bkt, i64 noundef 6666666) #10
  %i.g = load i64, ptr @bkt, align 8
  %.not42 = icmp eq i64 %i.g, 150
  br i1 %.not42, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 58, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.18) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 8), align 8
  %.not44 = icmp eq i64 %i.h, 15
  br i1 %.not44, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 59, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.19) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 16), align 8
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp olt double %i.j, f0x3EB0C6F7A0B5ED8D
  br i1 %i.k, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 60, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.21) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @throttle_leak_bucket(ptr noundef nonnull @bkt, i64 noundef 6666666) #10
  %i.l = load i64, ptr @bkt, align 8
  %.not47 = icmp eq i64 %i.l, 150
  br i1 %.not47, label %bb.o, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 64, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.18) #11
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 8), align 8
  %.not49 = icmp eq i64 %i.m, 15
  br i1 %.not49, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 65, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.19) #11
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.n = load double, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 16), align 8
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp olt double %i.o, f0x3EB0C6F7A0B5ED8D
  br i1 %i.p, label %bb.s, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 66, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.21) #11
  unreachable

bb.s:                                             ; preds = %bb.q
  store double 6.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 24), align 8
  store i64 250, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 8), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 32), align 8
  tail call void @throttle_leak_bucket(ptr noundef nonnull @bkt, i64 noundef 10000000) #10
  %i.q = load double, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 24), align 8
  %i.r = fadd double %i.q, -3.500000e+00
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp olt double %i.s, f0x3EB0C6F7A0B5ED8D
  br i1 %i.t, label %bb.u, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 73, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.22) #11
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @throttle_leak_bucket(ptr noundef nonnull @bkt, i64 noundef 10000000) #10
  %i.u = load double, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 24), align 8
  %i.v = fadd double %i.u, -1.000000e+00
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp olt double %i.w, f0x3EB0C6F7A0B5ED8D
  br i1 %i.x, label %bb.w, label %bb.v, !prof !9

bb.v:                                             ; preds = %bb.u
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 76, ptr noundef nonnull @__func__.test_leak_bucket, ptr noundef nonnull @.str.23) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @throttle_leak_bucket(ptr noundef nonnull @bkt, i64 noundef 10000000) #10
  %i.y = load double, ptr getelementptr inbounds nuw (i8, ptr @bkt, i64 24), align 8
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = fcmp olt double %i.z, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aa, label %bb.y, label %bb.x, !prof !9

bb.x:                                             ; preds = %bb.w
end_hunk_0
begin_hunk_1_@test_conflicts_for_one_set:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = load i64, ptr %i.n, align 8
  %i.ag = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  store i64 %i.ag, ptr %i.n, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %i.ah, align 8
  %i.ai = load i64, ptr %i.z, align 8
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  br label %set_cfg_value.exit48

set_cfg_value.exit48:                             ; preds = %set_cfg_value.exit46, %bb.j
  %.sink.i47 = phi i64 [ %i.aj, %bb.j ], [ 1, %set_cfg_value.exit46 ]
  store i64 %.sink.i47, ptr %i.z, align 8
  %i.ak = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %set_cfg_value.exit48
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 390, ptr noundef nonnull @__func__.test_conflicts_for_one_set, ptr noundef nonnull @.str.44) #11
  unreachable

bb.l:                                             ; preds = %set_cfg_value.exit48
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  br i1 %0, label %bb.m, label %set_cfg_value.exit50

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.al, align 8
  %i.am = load i64, ptr %i.c, align 8
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  br label %set_cfg_value.exit50

set_cfg_value.exit50:                             ; preds = %bb.l, %bb.m
  %.sink.i49 = phi i64 [ %i.an, %bb.m ], [ 1, %bb.l ]
  store i64 %.sink.i49, ptr %i.c, align 8
  %i.ao = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  br i1 %i.ao, label %bb.o, label %bb.n, !prof !9

bb.n:                                             ; preds = %set_cfg_value.exit50
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 394, ptr noundef nonnull @__func__.test_conflicts_for_one_set, ptr noundef nonnull @.str.42) #11
  unreachable

bb.o:                                             ; preds = %set_cfg_value.exit50
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  br i1 %0, label %bb.p, label %set_cfg_value.exit52

set_cfg_value.exit52:                             ; preds = %bb.o
  store i64 1, ptr %i.n, align 8
  br label %set_cfg_value.exit54

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.ap, align 8
  %i.aq = load i64, ptr %i.n, align 8
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  store i64 %i.ar, ptr %i.n, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %i.as, align 8
  %i.at = load i64, ptr %i.z, align 8
  %i.au = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  br label %set_cfg_value.exit54

set_cfg_value.exit54:                             ; preds = %set_cfg_value.exit52, %bb.p
  %.sink.i53 = phi i64 [ %i.au, %bb.p ], [ 1, %set_cfg_value.exit52 ]
  store i64 %.sink.i53, ptr %i.z, align 8
  %i.av = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  br i1 %i.av, label %bb.r, label %bb.q, !prof !9

bb.q:                                             ; preds = %set_cfg_value.exit54
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 399, ptr noundef nonnull @__func__.test_conflicts_for_one_set, ptr noundef nonnull @.str.42) #11
  unreachable

bb.r:                                             ; preds = %set_cfg_value.exit54
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @test_is_valid_for_value(i32 noundef range(i32 -1, 2) %0, i1 noundef zeroext %1) unnamed_addr #2 {
set_cfg_value.exit.us.preheader:
  %i.a = sext i32 %0 to i64                       ; 12 uses
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr @cfg, align 8
  %i.b = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.c = xor i1 %1, %i.b
  br i1 %i.c, label %.split14.us, label %set_cfg_value.exit.us.1, !prof !10

set_cfg_value.exit.us.1:                          ; preds = %set_cfg_value.exit.us.preheader
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 40), align 8
  %i.d = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.e = xor i1 %1, %i.d
  br i1 %i.e, label %.split14.us, label %set_cfg_value.exit.us.2, !prof !10

set_cfg_value.exit.us.2:                          ; preds = %set_cfg_value.exit.us.1
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 80), align 8
  %i.f = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.g = xor i1 %1, %i.f
  br i1 %i.g, label %.split14.us, label %set_cfg_value.exit.us.3, !prof !10

set_cfg_value.exit.us.3:                          ; preds = %set_cfg_value.exit.us.2
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 120), align 8
  %i.h = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.i = xor i1 %1, %i.h
  br i1 %i.i, label %.split14.us, label %set_cfg_value.exit.us.4, !prof !10

set_cfg_value.exit.us.4:                          ; preds = %set_cfg_value.exit.us.3
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 160), align 8
  %i.j = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.k = xor i1 %1, %i.j
  br i1 %i.k, label %.split14.us, label %set_cfg_value.exit.us.5, !prof !10

set_cfg_value.exit.us.5:                          ; preds = %set_cfg_value.exit.us.4
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 200), align 8
  %i.l = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.m = xor i1 %1, %i.l
  br i1 %i.m, label %.split14.us, label %set_cfg_value.exit.preheader.1, !prof !10

.split14.us:                                      ; preds = %set_cfg_value.exit.preheader.1, %set_cfg_value.exit.1.1, %set_cfg_value.exit.2.1, %set_cfg_value.exit.3.1, %set_cfg_value.exit.4.1, %set_cfg_value.exit.5.1, %set_cfg_value.exit.us.preheader, %set_cfg_value.exit.us.1, %set_cfg_value.exit.us.2, %set_cfg_value.exit.us.3, %set_cfg_value.exit.us.4, %set_cfg_value.exit.us.5
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 435, ptr noundef nonnull @__func__.test_is_valid_for_value, ptr noundef nonnull @.str.45) #11
  unreachable

set_cfg_value.exit.preheader.1:                   ; preds = %set_cfg_value.exit.us.5
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 8), align 8
  %i.n = load i64, ptr @cfg, align 8
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  store i64 %i.o, ptr @cfg, align 8
  %i.p = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.q = xor i1 %1, %i.p
  br i1 %i.q, label %.split14.us, label %set_cfg_value.exit.1.1, !prof !10

set_cfg_value.exit.1.1:                           ; preds = %set_cfg_value.exit.preheader.1
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 48), align 8
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 40), align 8
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 40), align 8
  %i.t = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.u = xor i1 %1, %i.t
  br i1 %i.u, label %.split14.us, label %set_cfg_value.exit.2.1, !prof !10

set_cfg_value.exit.2.1:                           ; preds = %set_cfg_value.exit.1.1
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 88), align 8
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 80), align 8
  %i.w = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 80), align 8
  %i.x = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.y = xor i1 %1, %i.x
  br i1 %i.y, label %.split14.us, label %set_cfg_value.exit.3.1, !prof !10

set_cfg_value.exit.3.1:                           ; preds = %set_cfg_value.exit.2.1
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 128), align 8
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 120), align 8
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 120), align 8
  %i.ab = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.ac = xor i1 %1, %i.ab
  br i1 %i.ac, label %.split14.us, label %set_cfg_value.exit.4.1, !prof !10

set_cfg_value.exit.4.1:                           ; preds = %set_cfg_value.exit.3.1
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 168), align 8
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 160), align 8
  %i.ae = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 160), align 8
  %i.af = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.ag = xor i1 %1, %i.af
  br i1 %i.ag, label %.split14.us, label %set_cfg_value.exit.5.1, !prof !10

set_cfg_value.exit.5.1:                           ; preds = %set_cfg_value.exit.4.1
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 208), align 8
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 200), align 8
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  store i64 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 200), align 8
  %i.aj = tail call zeroext i1 @throttle_is_valid(ptr noundef nonnull @cfg, ptr noundef null) #10
  %i.ak = xor i1 %1, %i.aj
  br i1 %i.ak, label %.split14.us, label %.split.us.1, !prof !10

.split.us.1:                                      ; preds = %set_cfg_value.exit.5.1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @throttle_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @throttle_get_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @do_test_accounting(i1 noundef zeroext %0, i32 noundef range(i32 512, 32769) %1, double noundef nofpclass(nan inf zero sub nnorm) %2, i64 noundef range(i64 0, 6657) %3, double noundef nofpclass(nan inf zero sub nnorm) %4, double noundef nofpclass(nan inf zero sub nnorm) %5, double noundef nofpclass(nan inf zero sub nnorm) %6) unnamed_addr #2 {
bb.a:
  tail call void @throttle_config_init(ptr noundef nonnull @cfg) #10
  %.sroa.sel = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @__const.do_test_accounting.to_test, i64 12), ptr @__const.do_test_accounting.to_test ; 3 uses
  %i.a = fptoui double %2 to i64                  ; 3 uses
  %7 = load i32, ptr %.sroa.sel, align 4
  %8 = zext i32 %7 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @cfg, i64 %8
  store i64 %i.a, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.sel, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @cfg, i64 %11
  store i64 %i.a, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.sel, i64 8
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %i.d = getelementptr inbounds nuw [40 x i8], ptr @cfg, i64 %14
  store i64 %i.a, ptr %i.d, align 8
  store i64 %3, ptr getelementptr inbounds nuw (i8, ptr @cfg, i64 240), align 8
  tail call void @throttle_init(ptr noundef nonnull @ts) #10
  %i.e = load ptr, ptr @tt, align 8
  %i.f = load ptr, ptr @ctx, align 8
  tail call void @throttle_timers_init(ptr noundef %i.e, ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @read_timer_cb, ptr noundef nonnull @write_timer_cb, ptr noundef nonnull @ts) #10
  tail call void @throttle_config(ptr noundef nonnull @ts, i32 noundef 1, ptr noundef nonnull @cfg) #10
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  tail call void @throttle_account(ptr noundef nonnull @ts, i32 noundef 0, i64 noundef %i.g) #10
  tail call void @throttle_account(ptr noundef nonnull @ts, i32 noundef 1, i64 noundef %i.g) #10
  %i.h = select i1 %0, i64 3, i64 0
  %i.i = getelementptr inbounds nuw [40 x i8], ptr @ts, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load double, ptr %i.j, align 8
  %i.l = fsub double %i.k, %4
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp olt double %i.m, f0x3EB0C6F7A0B5ED8D
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = select i1 %0, i64 4, i64 1
  %i.p = getelementptr inbounds nuw [40 x i8], ptr @ts, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load double, ptr %i.q, align 8
  %i.s = fsub double %i.r, %5
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = fcmp olt double %i.t, f0x3EB0C6F7A0B5ED8D
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = select i1 %0, i64 5, i64 2
  %i.w = getelementptr inbounds nuw [40 x i8], ptr @ts, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load double, ptr %i.x, align 8
  %i.z = fsub double %i.y, %6
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp olt double %i.aa, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr @tt, align 8
  tail call void @throttle_timers_destroy(ptr noundef %i.ac) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.028 = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.028
}

declare void @throttle_account(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @blk_new(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @blk_get_public(ptr noundef) local_unnamed_addr #1

declare void @throttle_group_register_tgm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @blk_get_aio_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @throttle_group_get_name(ptr noundef) local_unnamed_addr #1

declare void @throttle_group_config(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @throttle_group_get_config(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @throttle_group_unregister_tgm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = !{!"branch_weights", i32 4000000, i32 4001}
!15 = distinct !{!15, !8}
!16 = !{!"branch_weights", i32 4001, i32 4000000}
!17 = !{!"branch_weights", i32 6003000, i32 -294967296}
!18 = !{!"branch_weights", i32 7818360, i32 -388717296}
!19 = !{!"branch_weights", i32 9546283, i32 -480270031}
!20 = !{!"branch_weights", i32 11189848, i32 -569676999}
end_hunk_1
