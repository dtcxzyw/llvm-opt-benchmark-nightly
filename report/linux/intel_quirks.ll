Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_quirks?download=true
inline.NumInlined: 32
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@__UNIQUE_ID_modinfo_549 = internal constant [19 x i8] c"i915.import_ns=PWM\00", section ".modinfo", align 1
@intel_quirks = internal unnamed_addr constant [26 x { i32, i32, i32, [4 x i8], ptr }] [{ i32, i32, i32, [4 x i8], ptr } { i32 70, i32 6058, i32 14624, [4 x i8] zeroinitializer, ptr @quirk_ssc_force_disable }, { i32, i32, i32, [4 x i8], ptr } { i32 70, i32 4173, i32 36982, [4 x i8] zeroinitializer, ptr @quirk_ssc_force_disable }, { i32, i32, i32, [4 x i8], ptr } { i32 10818, i32 4133, i32 1113, [4 x i8] zeroinitializer, ptr @quirk_invert_brightness }, { i32, i32, i32, [4 x i8], ptr } { i32 10818, i32 4133, i32 528, [4 x i8] zeroinitializer, ptr @quirk_invert_brightness }, { i32, i32, i32, [4 x i8], ptr } { i32 10818, i32 4133, i32 530, [4 x i8] zeroinitializer, ptr @quirk_invert_brightness }, { i32, i32, i32, [4 x i8], ptr } { i32 10818, i32 4133, i32 843, [4 x i8] zeroinitializer, ptr @quirk_invert_brightness }, { i32, i32, i32, [4 x i8], ptr } { i32 10818, i32 4133, i32 608, [4 x i8] zeroinitializer, ptr @quirk_invert_brightness }, { i32, i32, i32, [4 x i8], ptr } { i32 10818, i32 4133, i32 1162, [4 x i8] zeroinitializer, ptr @quirk_invert_brightness }, { i32, i32, i32, [4 x i8], ptr } { i32 2566, i32 4133, i32 2577, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 2582, i32 4133, i32 2577, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 10146, i32 32902, i32 29296, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 10754, i32 4203, i32 161, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 2566, i32 4473, i32 2696, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 2566, i32 4156, i32 8685, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 2566, i32 4136, i32 2613, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 2582, i32 4136, i32 2613, [4 x i8] zeroinitializer, ptr @quirk_backlight_present }, { i32, i32, i32, [4 x i8], ptr } { i32 6427, i32 4473, i32 63552, [4 x i8] zeroinitializer, ptr @quirk_increase_t12_delay }, { i32, i32, i32, [4 x i8], ptr } { i32 12677, i32 32902, i32 8306, [4 x i8] zeroinitializer, ptr @quirk_increase_ddi_disabled_time }, { i32, i32, i32, [4 x i8], ptr } { i32 12676, i32 32902, i32 8306, [4 x i8] zeroinitializer, ptr @quirk_increase_ddi_disabled_time }, { i32, i32, i32, [4 x i8], ptr } { i32 12677, i32 6217, i32 8722, [4 x i8] zeroinitializer, ptr @quirk_increase_ddi_disabled_time }, { i32, i32, i32, [4 x i8], ptr } { i32 12676, i32 6217, i32 8722, [4 x i8] zeroinitializer, ptr @quirk_increase_ddi_disabled_time }, { i32, i32, i32, [4 x i8], ptr } { i32 12677, i32 4121, i32 43341, [4 x i8] zeroinitializer, ptr @quirk_increase_ddi_disabled_time }, { i32, i32, i32, [4 x i8], ptr } { i32 12676, i32 4121, i32 43341, [4 x i8] zeroinitializer, ptr @quirk_increase_ddi_disabled_time }, { i32, i32, i32, [4 x i8], ptr } { i32 3889, i32 4156, i32 8719, [4 x i8] zeroinitializer, ptr @quirk_invert_brightness }, { i32, i32, i32, [4 x i8], ptr } { i32 35410, i32 4136, i32 2224, [4 x i8] zeroinitializer, ptr @quirk_edp_limit_rate_hbr2 }, { i32, i32, i32, [4 x i8], ptr } { i32 45185, i32 7538, i32 9252, [4 x i8] zeroinitializer, ptr @quirk_disable_psr2 }], align 16
@.str = private unnamed_addr constant [39 x i8] c"[drm] applying lvds SSC disable quirk\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"[drm] applying inverted panel brightness quirk\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"[drm] applying backlight present quirk\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"[drm] Applying T12 delay quirk\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"[drm] Applying Increase DDI Disabled quirk\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"[drm] Applying eDP Limit rate to HBR2 quirk\0A\00", align 1
@.str.7 = private unnamed_addr constant [88 x i8] c"[drm] PSR2 support not currently available for this setup, applying disable PSR2 quirk\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"NCR Corporation\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Thundersoft TST178 tablet\00", align 1
@.compoundliteral = internal constant [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @intel_dmi_reverse_brightness, ptr @.str.8, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"NCR Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] zeroinitializer }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @intel_dmi_reverse_brightness, ptr @.str.9, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -115, [79 x i8] c"AMI Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Aptio CRB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"To be filled by O.E.M.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -125, [79 x i8] c"04/15/2014\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], ptr null }, %struct.dmi_system_id zeroinitializer], align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"Google Lillipup sku524294\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Google Lillipup sku524295\00", align 1
@.compoundliteral.12 = internal constant [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @intel_dmi_no_pps_backlight, ptr @.str.10, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -115, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Lindar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -117, [79 x i8] c"sku524294\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @intel_dmi_no_pps_backlight, ptr @.str.11, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -115, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Lindar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -117, [79 x i8] c"sku524295\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"\016[drm] Backlight polarity reversed on %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"[drm] Applying no pps backlight power quirk\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"\016[drm] No pps backlight support on %s\0A\00", align 1
@intel_dpcd_quirks = internal constant [3 x { i32, i32, i32, [3 x i8], [6 x i8], [3 x i8], ptr }] [{ i32, i32, i32, [3 x i8], [6 x i8], [3 x i8], ptr } { i32 32085, i32 4136, i32 3271, [3 x i8] c"8\EC\11", [6 x i8] zeroinitializer, [3 x i8] zeroinitializer, ptr @quirk_fw_sync_len }, { i32, i32, i32, [3 x i8], [6 x i8], [3 x i8], ptr } { i32 0, i32 4136, i32 3513, [3 x i8] c"\00\22\B9", [6 x i8] zeroinitializer, [3 x i8] zeroinitializer, ptr @quirk_disable_edp_panel_replay }, { i32, i32, i32, [3 x i8], [6 x i8], [3 x i8], ptr } { i32 0, i32 4136, i32 3514, [3 x i8] c"\00\22\B9", [6 x i8] zeroinitializer, [3 x i8] zeroinitializer, ptr @quirk_disable_edp_panel_replay }], align 16
@.str.17 = private unnamed_addr constant [49 x i8] c"[drm] Applying Fast Wake sync pulse count quirk\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"[drm] Applying disable Panel Replay quirk\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_modinfo_549], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_init_quirks(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -138
  %i.e = getelementptr i8, ptr %i.c, i64 -136
  %i.f = getelementptr i8, ptr %i.c, i64 -134
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.g = getelementptr [24 x i8], ptr @intel_quirks, i64 %indvars.iv ; 4 uses
  %i.h = load i16, ptr %i.d, align 2
  %i.i = zext i16 %i.h to i32
  %i.j = load i32, ptr %i.g, align 8              ; 2 uses
  %1 = icmp eq i32 %i.j, %i.i
  %i.k = icmp eq i32 %i.j, 0
  %or.cond = or i1 %1, %i.k
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.e, align 8
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr i8, ptr %i.g, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %2 = icmp eq i32 %i.o, %i.m
  %i.p = icmp eq i32 %i.o, -1
  %or.cond26 = or i1 %2, %i.p
  br i1 %or.cond26, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr %i.f, align 2
  %i.r = zext i16 %i.q to i32
  %i.s = getelementptr i8, ptr %i.g, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %3 = icmp eq i32 %i.t, %i.r
  %i.u = icmp eq i32 %i.t, -1
  %or.cond27 = or i1 %3, %i.u
  br i1 %or.cond27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.g, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.b, !llvm.loop !10

.preheader.preheader:                             ; preds = %bb.f
  %i.x = tail call i32 @dmi_check_system(ptr noundef @.compoundliteral) #5
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.tail, label %call.0

call.0:                                           ; preds = %.preheader.preheader
  %i.y = getelementptr i8, ptr %0, i64 1984       ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = or i64 %i.z, 8
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %quirk_invert_brightness.exit, label %bb.g

bb.g:                                             ; preds = %call.0
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %quirk_invert_brightness.exit

quirk_invert_brightness.exit:                     ; preds = %call.0, %bb.g
  %i.ae = phi ptr [ %i.ad, %bb.g ], [ null, %call.0 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.ae, ptr noundef @.str.2) #6
  br label %.tail

.tail:                                            ; preds = %quirk_invert_brightness.exit, %.preheader.preheader
  %i.af = tail call i32 @dmi_check_system(ptr noundef @.compoundliteral.12) #5
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %.tail.1, label %call.1.1

call.1.1:                                         ; preds = %.tail
  %i.ag = getelementptr i8, ptr %0, i64 1984      ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = or i64 %i.ah, 32
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i32, label %quirk_no_pps_backlight_power_hook.exit, label %bb.h

bb.h:                                             ; preds = %call.1.1
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %quirk_no_pps_backlight_power_hook.exit

quirk_no_pps_backlight_power_hook.exit:           ; preds = %call.1.1, %bb.h
  %i.am = phi ptr [ %i.al, %bb.h ], [ null, %call.1.1 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.am, ptr noundef @.str.14) #6
  br label %.tail.1

.tail.1:                                          ; preds = %quirk_no_pps_backlight_power_hook.exit, %.tail
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_init_dpcd_quirks(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -504       ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -138
  %i.i = getelementptr i8, ptr %i.g, i64 -136     ; 3 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -134     ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 3          ; 6 uses
  %i.l = load i16, ptr %i.h, align 2
  %i.m = icmp eq i16 %i.l, 32085
  br i1 %i.m, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr %i.i, align 8
  %i.o = icmp eq i16 %i.n, 4136
  br i1 %i.o, label %bb.e, label %.thread39

bb.e:                                             ; preds = %bb.d
  %i.p = load i16, ptr %i.j, align 2              ; 2 uses
  %i.q = icmp eq i16 %i.p, 3271
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = load i16, ptr %1, align 1
  %i.s = xor i16 -5064, %i.r
  %i.t = getelementptr i8, ptr %1, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = xor i16 17, %i.v
  %i.x = or i16 %i.s, %i.w
  %i.y = icmp ne i16 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not27 = icmp eq i32 %i.z, 0
  br i1 %.not27, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.k, align 1
  %i.ab = getelementptr i8, ptr %i.k, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = or i32 %i.aa, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not29 = icmp eq i32 %i.ag, 0
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call ptr @memchr_inv(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @intel_dpcd_quirks, i64 15), i32 noundef 0, i64 noundef 6) #5
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i40 = icmp eq ptr %i.ai, null
  br i1 %.not.i40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ai) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = phi ptr [ %i.aj, %bb.j ], [ null, %bb.i ]
  %i.al = getelementptr i8, ptr %0, i64 3608      ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.am, 64
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %quirk_fw_sync_len.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %quirk_fw_sync_len.exit

quirk_fw_sync_len.exit:                           ; preds = %bb.k, %bb.l
  %i.ar = phi ptr [ %i.aq, %bb.l ], [ null, %bb.k ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.ar, ptr noundef @.str.17) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.h, %quirk_fw_sync_len.exit, %bb.c
  %.pr = load i16, ptr %i.i, align 8
  %i.as = icmp eq i16 %.pr, 4136
  br i1 %i.as, label %thread-pre-split35, label %.thread39

thread-pre-split35:                               ; preds = %bb.m
  %.pr36 = load i16, ptr %i.j, align 2
  br label %.thread

.thread:                                          ; preds = %bb.e, %thread-pre-split35
  %i.at = phi i16 [ %.pr36, %thread-pre-split35 ], [ %i.p, %bb.e ]
  %i.au = icmp eq i16 %i.at, 3513
  br i1 %i.au, label %bb.n, label %bb.u

bb.n:                                             ; preds = %.thread
  %i.av = load i16, ptr %1, align 1
  %i.aw = xor i16 8704, %i.av
  %i.ax = getelementptr i8, ptr %1, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i16
  %i.ba = xor i16 185, %i.az
  %i.bb = or i16 %i.aw, %i.ba
  %i.bc = icmp ne i16 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not27.1 = icmp eq i32 %i.bd, 0
  br i1 %.not27.1, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr %i.k, align 1
  %i.bf = getelementptr i8, ptr %i.k, i64 4
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = zext i16 %i.bg to i32
  %i.bi = or i32 %i.be, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not29.1 = icmp eq i32 %i.bk, 0
  br i1 %.not29.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call ptr @memchr_inv(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @intel_dpcd_quirks, i64 47), i32 noundef 0, i64 noundef 6) #5
end_hunk_0
