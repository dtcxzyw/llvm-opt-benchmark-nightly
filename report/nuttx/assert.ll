Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/assert?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.utsname = type { [21 x i8], [32 x i8], [21 x i8], [51 x i8], [21 x i8] }
%struct.panic_notifier_s = type { ptr, ptr, ptr, ptr, i32 }

@g_nx_initstate = external dso_local global i32, align 4
@g_running_tasks = external dso_local local_unnamed_addr global [1 x ptr], align 8
@g_last_regs = internal global [1 x [104 x i64]] zeroinitializer, align 64
@.str = private unnamed_addr constant [37 x i8] c"%s: Current Version: %s %s %s %s %s\0A\00", align 1
@__FUNCTION__.dump_assert_info = private unnamed_addr constant [17 x i8] c"dump_assert_info\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"%s: Assertion failed %s: at file: %s:%d task: %s process: %s %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"%s:    PID GROUP PRI POLICY   TYPE    NPX STATE   EVENT      SIGMASK          STACKBASE  STACKSIZE   COMMAND\0A\00", align 1
@__FUNCTION__.dump_tasks = private unnamed_addr constant [11 x i8] c"dump_tasks\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"%s:    %4d %5d %3d %-8s %-7s %-3c %-18s %08x%08x %p   %7zu   %s%s\0A\00", align 1
@__FUNCTION__.dump_task = private unnamed_addr constant [10 x i8] c"dump_task\00", align 1
@g_policy = internal unnamed_addr constant [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr null], align 16
@g_ttypenames = internal unnamed_addr constant [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"RR\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SPORADIC\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Task\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pthread\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Kthread\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @_assert(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.utsname, align 1            ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.panic_notifier_s, align 8   ; 9 uses
  %i.b = load volatile i32, ptr @g_nx_initstate, align 4
  %i.c = icmp ugt i32 %i.b, 4                     ; 2 uses
  %i.d = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #8, !srcloc !7
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @g_running_tasks, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr asm sideeffect "movq %gs:(${1:c}), $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(i64 8) #8, !srcloc !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.i = load volatile i32, ptr @g_nx_initstate, align 4
  %i.j = icmp ugt i32 %i.i, 7
  br i1 %i.j, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d, %.preheader
  tail call void @up_mdelay(i32 noundef 250) #9
  br label %.preheader

bb.e:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #8, !srcloc !9
  %i.k = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !10
  call void @sched_lock() #9
  %i.l = and i64 %i.k, 512
  %i.m = icmp eq i64 %i.l, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ %i.m, %bb.f ], [ true, %bb.e ]
  %i.n = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #8, !srcloc !7
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 3
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store volatile i32 8, ptr @g_nx_initstate, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = icmp eq ptr %3, null
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = call i32 @up_saveusercontext(ptr noundef nonnull @g_last_regs) #9 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(832) @g_last_regs, ptr noundef nonnull align 1 dereferenceable(832) %3, i64 832, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.h, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @g_last_regs, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.y, align 8
  %i.z = load volatile i32, ptr @g_nx_initstate, align 4
  %i.aa = icmp ult i32 %i.z, 8
  %i.ab = zext i1 %i.aa to i64
  call void @panic_notifier_call_chain(i64 noundef %i.ab, ptr noundef nonnull %5) #9
  %i.ac = call i32 @syslog_flush() #9             ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %dump_assert_info.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 3
  %.not14.i = icmp eq i32 %i.ah, 2
  br i1 %.not14.i, label %dump_assert_info.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %i.ae, align 8
  %i.aj = call ptr @nxsched_get_tcb(i32 noundef %i.ai) #9
  br label %dump_assert_info.exit

dump_assert_info.exit:                            ; preds = %bb.m, %bb.n, %bb.o
  %.0.i.a = phi ptr [ %i.aj, %bb.o ], [ null, %bb.n ], [ null, %bb.m ] ; 2 uses
  %i.ak = call i32 @uname(ptr noundef nonnull %4) #10 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 53
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 125
  call void (i32, ptr, ...) @syslog(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__FUNCTION__.dump_assert_info, ptr noundef nonnull %4, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) #9
  %.not15.i = icmp eq ptr %2, null
  %i.ap = select i1 %.not15.i, ptr @.str.2, ptr %2
  %.not16.i = icmp eq ptr %0, null
  %i.aq = select i1 %.not16.i, ptr @.str.2, ptr %0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %.not17.i = icmp eq ptr %.0.i.a, null
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.a, i64 312
  %i.at = select i1 %.not17.i, ptr @.str.3, ptr %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.av = load ptr, ptr %i.au, align 8
  call void (i32, ptr, ...) @syslog(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__FUNCTION__.dump_assert_info, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i32 noundef %1, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.at, ptr noundef %i.av) #9
  call void @up_dump_register(ptr noundef nonnull @g_last_regs) #9
  %i.aw = call i32 @syslog_flush() #9             ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.ax = load volatile i32, ptr @g_nx_initstate, align 4
  %i.ay = icmp ugt i32 %i.ax, 7
  br i1 %i.ay, label %bb.p, label %bb.r

bb.p:                                             ; preds = %dump_assert_info.exit
  call void (i32, ptr, ...) @syslog(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__FUNCTION__.dump_tasks) #9
  call void @nxsched_foreach(ptr noundef nonnull @dump_task, ptr noundef null) #9
  %i.az = call i32 @syslog_flush() #9             ; 0 uses
  %i.ba = call i32 @syslog_flush() #9             ; 0 uses
  call void @panic_notifier_call_chain(i64 noundef 2, ptr noundef nonnull %5) #9
  call void @reboot_notifier_call_chain(i64 noundef 2, ptr noundef null) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  call void @up_mdelay(i32 noundef 250) #9
  br label %bb.q

bb.r:                                             ; preds = %dump_assert_info.exit
  br i1 %i.c, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %.0, label %up_irq_restore.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !11
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %bb.s, %bb.t
  call void @sched_unlock() #9
  br label %bb.u

bb.u:                                             ; preds = %up_irq_restore.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone optsize
declare dso_local i32 @up_saveusercontext(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @panic_notifier_call_chain(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @syslog_flush() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @reboot_notifier_call_chain(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @up_mdelay(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @sched_lock() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @nxsched_get_tcb(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @uname(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local void @syslog(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @up_dump_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @nxsched_foreach(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal void @dump_task(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = call i64 @nxtask_argvstr(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 64) #9 ; 0 uses
  call void @nxsched_get_stateinfo(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 32) #9
  %i.d = call ptr @strchr(ptr noundef nonnull %i.b, i32 noundef 44) #10 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 32, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ -1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = load i8, ptr %i.k, align 4
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.p, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @g_policy, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = and i32 %i.o, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @g_ttypenames, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = and i32 %i.o, 256
  %.not17 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not17, i32 45, i32 80
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = load i32, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void (i32, ptr, ...) @syslog(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__FUNCTION__.dump_task, i32 noundef %i.f, i32 noundef %i.j, i32 noundef %i.m, ptr noundef %i.t, ptr noundef %i.x, i32 noundef %i.z, ptr noundef nonnull %i.b, i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i64 @nxtask_argvstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @nxsched_get_stateinfo(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone optsize
declare dso_local void @sched_unlock() local_unnamed_addr #5

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strchr" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind optsize }
attributes #10 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{i64 572248}
!8 = !{i64 2149073533}
!9 = !{i64 617095, i64 617113}
!10 = !{i64 617745}
!11 = !{i64 617879}
end_hunk_0
