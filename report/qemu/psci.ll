Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/psci?download=true
inline.NumInlined: 20
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"../target/arm/tcg/psci.c\00", align 1
@__func__.arm_handle_psci_call = private unnamed_addr constant [21 x i8] c"arm_handle_psci_call\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bql_locked()\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ret == QEMU_ARM_POWERCTL_RET_SUCCESS\00", align 1
@__PRETTY_FUNCTION__.arm_handle_psci_call = private unnamed_addr constant [36 x i8] c"void arm_handle_psci_call(ARMCPU *)\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_ARM_PSCI_CALL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.3 = private unnamed_addr constant [84 x i8] c"arm_psci_call PSCI Call x0=0x%016lx x1=0x%016lx x2=0x%016lx x3=0x%016lx cpuid=0x%x\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"arm-cpu\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"../target/arm/cpu-qom.h\00", align 1
@__func__.ARM_CPU = private unnamed_addr constant [8 x i8] c"ARM_CPU\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"space != ARMSS_Root\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"../target/arm/cpu.h\00", align 1
@__PRETTY_FUNCTION__.arm_is_el2_enabled_secstate = private unnamed_addr constant [67 x i8] c"_Bool arm_is_el2_enabled_secstate(CPUARMState *, ARMSecuritySpace)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @arm_is_psci_call(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 11, label %bb.b
    i32 13, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96160
  %i.b = load i32, ptr %i.a, align 16
  %.not3 = icmp eq i32 %i.b, 2
  br i1 %.not3, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96160
  %i.d = load i32, ptr %i.c, align 16
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.d
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @arm_handle_psci_call(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 16832      ; 5 uses
  %.val47 = load i8, ptr %i.b, align 16, !range !7, !noundef !8
  %i.c = trunc nuw i8 %.val47 to i1
  %i.d = getelementptr i8, ptr %0, i64 16560      ; 3 uses
  br i1 %i.c, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 16
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16500
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16504
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16508
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  br label %.split52.us

.split.us.preheader:                              ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 16
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %0, i64 16568
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %0, i64 16576
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %0, i64 16584
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  br label %.split52.us

.split52.us:                                      ; preds = %.split.preheader, %.split.us.preheader
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %.split.us.preheader ], [ %i.f, %.split.preheader ] ; 3 uses
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload, %.split.us.preheader ], [ %i.i, %.split.preheader ] ; 6 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload, %.split.us.preheader ], [ %i.l, %.split.preheader ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %.split.us.preheader ], [ %i.o, %.split.preheader ] ; 2 uses
  %i.p = tail call i64 @arm_cpu_mp_affinity(ptr noundef nonnull %0) #5
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %trace_arm_psci_call.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %.split52.us
  %i.s = load i16, ptr @_TRACE_ARM_PSCI_CALL_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.s, 0
  br i1 %.not5.i, label %trace_arm_psci_call.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not6.i = icmp eq i32 %i.u, 0
  br i1 %.not6.i, label %trace_arm_psci_call.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, i64 noundef %.sroa.0.0, i64 noundef %.sroa.6.0, i64 noundef %.sroa.8.0, i64 noundef %.sroa.10.0, i32 noundef %i.q) #5
  br label %trace_arm_psci_call.exit

trace_arm_psci_call.exit:                         ; preds = %.split52.us, %bb.b, %bb.c, %bb.d
  %i.v = and i64 %.sroa.0.0, 1073741824
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_arm_psci_call.exit
  %.val46 = load i8, ptr %i.b, align 16, !range !7, !noundef !8
  %i.w = trunc nuw i8 %.val46 to i1
  br i1 %i.w, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %bb.e, %trace_arm_psci_call.exit
  switch i64 %.sroa.0.0, label %bb.ai [
    i64 2214592512, label %bb.aj
    i64 2214592518, label %bb.g
    i64 2214592516, label %bb.h
    i64 3288334340, label %bb.h
    i64 2214592521, label %bb.m
    i64 2214592520, label %bb.n
    i64 2512501344, label %bb.o
    i64 2214592515, label %bb.o
    i64 3288334339, label %bb.o
    i64 2512501343, label %bb.am
    i64 2214592514, label %bb.am
    i64 2512501342, label %bb.aa
    i64 2214592513, label %bb.aa
    i64 3288334337, label %bb.aa
    i64 2214592522, label %bb.af
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.aj

bb.h:                                             ; preds = %bb.f, %bb.f
  %cond = icmp eq i64 %.sroa.8.0, 0
  br i1 %cond, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @arm_get_cpu_by_id(i64 noundef %.sroa.6.0) #5 ; 2 uses
  %.not42 = icmp eq ptr %i.x, null
  br i1 %.not42, label %bb.aj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 27, ptr noundef nonnull @__func__.ARM_CPU) #5
  %i.z = tail call zeroext i1 @bql_locked() #5
  br i1 %i.z, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @__func__.arm_handle_psci_call, ptr noundef nonnull @.str.1) #6
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 96132
  %i.ab = load i32, ptr %i.aa, align 4
  br label %bb.aj

bb.m:                                             ; preds = %bb.f
  tail call void @qemu_system_reset_request(i32 noundef 7) #5
  br label %bb.am

bb.n:                                             ; preds = %bb.f
  tail call void @qemu_system_shutdown_request(i32 noundef 6) #5
  br label %bb.am

bb.o:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ac = getelementptr i8, ptr %0, i64 95424     ; 2 uses
  %.val48 = load i64, ptr %i.ac, align 16         ; 3 uses
  %1 = trunc i64 %.val48 to i32                   ; 2 uses
  %2 = lshr i32 %1, 28
  %3 = and i32 %2, 1
  %4 = add nuw nsw i32 %3, 1                      ; 2 uses
  %i.ad = lshr i32 %1, 25
  %i.ae = and i32 %i.ad, 1                        ; 2 uses
  %.not.i49 = icmp eq i32 %i.ae, 0
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = and i64 %.val48, 536870912
  %.not17.i = icmp eq i64 %i.ag, 0                ; 2 uses
  %brmerge.i = or i1 %.not17.i, %.not.i49
  %.mux.i = select i1 %.not17.i, i8 %i.af, i8 0
  br i1 %brmerge.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 17560
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = and i64 %i.ai, 1024
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %bb.q, label %arm_scr_rw_eff.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ak = and i64 %i.ai, 1
  %.not8.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not8.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %5 = and i64 %.val48, 268435456
  %.not9.i.i = icmp eq i64 %5, 0
  br i1 %.not9.i.i, label %arm_scr_rw_eff.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr i8, ptr %0, i64 96264
  %.val10.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.val10.i.i, 3584
  %.not11.i.i = icmp eq i64 %i.am, 0
  br label %arm_scr_rw_eff.exit.i

bb.t:                                             ; preds = %bb.q
  %i.an = and i64 %i.ai, 262144
  %i.ao = icmp ne i64 %i.an, 0
  br label %arm_scr_rw_eff.exit.i

arm_scr_rw_eff.exit.i:                            ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %.0.i.i = phi i1 [ %i.ao, %bb.t ], [ true, %bb.p ], [ false, %bb.r ], [ %.not11.i.i, %bb.s ]
  %i.ap = zext i1 %.0.i.i to i8
  br label %bb.u

bb.u:                                             ; preds = %arm_scr_rw_eff.exit.i, %bb.o
  %.0.i = phi i8 [ %.mux.i, %bb.o ], [ %i.ap, %arm_scr_rw_eff.exit.i ] ; 4 uses
  %6 = icmp eq i32 %4, 2
  br i1 %6, label %arm_el_is_aa64.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call i32 @arm_security_space_below_el3(ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 2
  br i1 %.not.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 2257, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_is_el2_enabled_secstate) #6
  unreachable

bb.x:                                             ; preds = %bb.v
  %.val.i.i.i = load i64, ptr %i.ac, align 16
  %i.ar = and i64 %.val.i.i.i, 268435456
  %.not3.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not3.i.i.i, label %arm_el_is_aa64.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not4.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not4.i.i.i, label %arm_is_el2_enabled.exit.i, label %arm_is_el2_enabled.exit.thread.i

arm_is_el2_enabled.exit.i:                        ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 17560
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, 262144
  %.not20.i = icmp eq i64 %i.au, 0
  br i1 %.not20.i, label %arm_el_is_aa64.exit, label %arm_is_el2_enabled.exit.thread.i

arm_is_el2_enabled.exit.thread.i:                 ; preds = %arm_is_el2_enabled.exit.i, %bb.y
  %i.av = trunc nuw i8 %.0.i to i1
  br i1 %i.av, label %bb.z, label %arm_el_is_aa64.exit

bb.z:                                             ; preds = %arm_is_el2_enabled.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 17544
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 31
  %i.az = trunc i64 %i.ay to i8
  br label %arm_el_is_aa64.exit

arm_el_is_aa64.exit:                              ; preds = %bb.u, %bb.x, %arm_is_el2_enabled.exit.i, %arm_is_el2_enabled.exit.thread.i, %bb.z
  %.015.in.i = phi i8 [ %.0.i, %bb.u ], [ %.0.i, %arm_is_el2_enabled.exit.i ], [ 0, %arm_is_el2_enabled.exit.thread.i ], [ %i.az, %bb.z ], [ %.0.i, %bb.x ]
  %.015.i = trunc i8 %.015.in.i to i1
  %i.ba = tail call i32 @arm_set_cpu_on(i64 noundef %.sroa.6.0, i64 noundef %.sroa.8.0, i64 noundef %.sroa.10.0, i32 noundef %4, i1 noundef zeroext %.015.i) #5
  br label %bb.aj

bb.aa:                                            ; preds = %bb.f, %bb.f, %bb.f
  %i.bb = and i64 %.sroa.6.0, 4294836224
  %.not40 = icmp eq i64 %i.bb, 0
  br i1 %.not40, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %.val45 = load i8, ptr %i.b, align 16, !range !7, !noundef !8
  %i.bc = trunc nuw i8 %.val45 to i1
  br i1 %i.bc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i64 0, ptr %i.d, align 16
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %i.a, align 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @helper_wfi(ptr noundef nonnull %i.a, i32 noundef 4) #5
  br label %bb.aj

bb.af:                                            ; preds = %bb.f
  switch i64 %.sroa.6.0, label %bb.ai [
    i64 2214592512, label %bb.ag
    i64 2214592518, label %bb.ag
    i64 2214592516, label %bb.ag
    i64 3288334340, label %bb.ag
    i64 2214592521, label %bb.ag
    i64 2214592520, label %bb.ag
    i64 2512501344, label %bb.ag
    i64 2214592515, label %bb.ag
    i64 3288334339, label %bb.ag
    i64 2512501343, label %bb.ag
    i64 2214592514, label %bb.ag
    i64 2512501342, label %bb.ag
    i64 2214592513, label %bb.ag
    i64 3288334337, label %bb.ag
    i64 2214592522, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  %i.bd = and i64 %.sroa.6.0, 1073741824
  %.not39 = icmp eq i64 %i.bd, 0
  br i1 %.not39, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val44 = load i8, ptr %i.b, align 16, !range !7, !noundef !8
  %i.be = trunc nuw i8 %.val44 to i1
  br i1 %i.be, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah, %bb.f
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.aa, %bb.h, %bb.i, %bb.f, %bb.e, %bb.g, %arm_el_is_aa64.exit, %bb.ae, %bb.ai, %bb.l
  %.036 = phi i32 [ -1, %bb.ai ], [ -1, %bb.e ], [ 2, %bb.g ], [ %i.ab, %bb.l ], [ 65537, %bb.f ], [ -2, %bb.i ], [ %i.ba, %arm_el_is_aa64.exit ], [ 0, %bb.h ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ -2, %bb.aa ], [ 0, %bb.ah ] ; 2 uses
  %.val = load i8, ptr %i.b, align 16, !range !7, !noundef !8
  %i.bf = trunc nuw i8 %.val to i1
  br i1 %i.bf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bg = sext i32 %.036 to i64
  store i64 %i.bg, ptr %i.d, align 16
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  store i32 %.036, ptr %i.a, align 16
  br label %bb.ao

bb.am:                                            ; preds = %bb.f, %bb.f, %bb.n, %bb.m
  %i.bh = tail call i64 @arm_cpu_mp_affinity(ptr noundef nonnull %0) #5
  %i.bi = tail call i32 @arm_set_cpu_off(i64 noundef %i.bh) #5
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_handle_psci_call) #6
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.ak, %bb.al
  ret void
}

declare i64 @arm_cpu_mp_affinity(ptr noundef) local_unnamed_addr #2

declare ptr @arm_get_cpu_by_id(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @bql_locked() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @qemu_system_reset_request(i32 noundef) local_unnamed_addr #2

declare void @qemu_system_shutdown_request(i32 noundef) local_unnamed_addr #2

declare i32 @arm_set_cpu_on(i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @helper_wfi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @arm_set_cpu_off(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arm_security_space_below_el3(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
