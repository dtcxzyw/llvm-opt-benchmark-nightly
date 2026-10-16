Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/nx_start?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tcb_s = type { ptr, ptr, ptr, %struct.sq_entry_s, %struct.sq_queue_s, %struct.sq_entry_s, %struct.sem_s, ptr, i32, i8, i8, ptr, %union.entry_u, i32, i8, i8, ptr, i32, i16, i16, %struct.wdog_s, i64, ptr, ptr, ptr, ptr, %struct.sq_queue_s, %struct.sq_queue_s, %struct.sigset_s, %struct.sigset_s, ptr, %struct.xcptcontext, [32 x i8] }
%struct.sq_entry_s = type { ptr }
%struct.sem_s = type { %union.anon, i8, %struct.dq_queue_s, ptr }
%union.anon = type { i32 }
%struct.dq_queue_s = type { ptr, ptr }
%union.entry_u = type { ptr }
%struct.wdog_s = type { %struct.list_node, i64, ptr, i64 }
%struct.list_node = type { ptr, ptr }
%struct.sq_queue_s = type { ptr, ptr }
%struct.sigset_s = type { [2 x i32] }
%struct.xcptcontext = type { i64, i64, i64, ptr }
%struct.tasklist_s = type { ptr, i8 }

@g_nx_initstate = dso_local global i32 0, align 4
@g_pidhash = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [23 x i8] c"/sched/init/nx_start.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"g_pidhash\00", align 1
@g_npidhash = dso_local global i32 0, align 4
@g_lastpid = dso_local global i32 0, align 4
@g_idletcb = dso_local global [1 x %struct.tcb_s] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"group_setupidlefiles()\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nx_bringup()\00", align 1
@g_readytorun = dso_local global %struct.dq_queue_s zeroinitializer, align 8
@g_running_tasks = dso_local local_unnamed_addr global [1 x ptr] zeroinitializer, align 8
@g_pendingtasks = dso_local global %struct.dq_queue_s zeroinitializer, align 8
@g_waitingforsignal = dso_local global %struct.dq_queue_s zeroinitializer, align 8
@g_stoppedtasks = dso_local global %struct.dq_queue_s zeroinitializer, align 8
@g_inactivetasks = dso_local global %struct.dq_queue_s zeroinitializer, align 8
@g_tasklisttable = dso_local local_unnamed_addr global [10 x %struct.tasklist_s] zeroinitializer, align 16
@g_idlename = internal unnamed_addr constant [10 x i8] c"Idle_Task\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"group_allocate(tcb, tcb->flags)\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone noreturn nounwind optsize uwtable
define dso_local void @nx_start() #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store volatile i32 1, ptr @g_nx_initstate, align 4
  store ptr null, ptr @g_tasklisttable, align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 8), align 8
  store ptr @g_pendingtasks, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 16), align 16
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 24), align 8
  store ptr @g_readytorun, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 32), align 16
  store i8 5, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 40), align 8
  store ptr @g_readytorun, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 48), align 16
  store i8 5, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 56), align 8
  store ptr @g_inactivetasks, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 64), align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 72), align 8
  store ptr inttoptr (i64 8 to ptr), ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 80), align 16
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 88), align 8
  store ptr @g_waitingforsignal, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 96), align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 104), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 112), align 16
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 120), align 8
  store ptr inttoptr (i64 16 to ptr), ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 128), align 16
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 136), align 8
  store ptr @g_stoppedtasks, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 144), align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @g_tasklisttable, i64 152), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(344) @g_idletcb, i8 0, i64 344, i1 false)
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 120), align 8
  store i16 1, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 140), align 4
  store ptr @nx_start, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 104), align 8
  store ptr @nx_start, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 112), align 16
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 136), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 312), ptr noundef nonnull align 1 dereferenceable(10) @g_idlename, i64 noundef 10, i1 false) #8
  %i.c = load ptr, ptr @g_readytorun, align 8     ; 3 uses
  store ptr %i.c, ptr @g_idletcb, align 16
  %.not45.i = icmp eq ptr %i.c, null
  br i1 %.not45.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @g_idletcb, ptr @g_readytorun, align 8
  store ptr @g_idletcb, ptr getelementptr inbounds nuw (i8, ptr @g_readytorun, i64 8), align 8
  br label %idle_task_initialize.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @g_idletcb, ptr %i.d, align 8
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 120), align 8
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @g_tasklisttable, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 8
  %.not49.i = icmp eq i8 %i.j, 0
  br i1 %.not49.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 208), align 16
  %i.l = load ptr, ptr %i.g, align 16
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.g, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  store ptr @g_idletcb, ptr %i.p, align 8
  br label %idle_task_initialize.exit

idle_task_initialize.exit:                        ; preds = %bb.b, %bb.f
  store ptr @g_idletcb, ptr @g_running_tasks, align 8
  tail call void asm sideeffect "movq $0, %gs:(${1:c})", "r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @g_idletcb, i64 8) #9, !inline_history !7, !srcloc !9
  store volatile i32 2, ptr @g_nx_initstate, align 4
  tail call void @drivers_early_initialize() #8
  tail call void @nxsem_initialize() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @up_allocate_heap(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load i64, ptr %i.b, align 8
  call void @umm_initialize(ptr noundef %i.q, i64 noundef %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.s = call noalias dereferenceable_or_null(128) ptr @zalloc(i64 noundef 128) #10 ; 3 uses
  store ptr %i.s, ptr @g_pidhash, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %idle_task_initialize.exit
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 605, ptr noundef nonnull @.str.1) #11
  unreachable

bb.h:                                             ; preds = %idle_task_initialize.exit
  store volatile i32 16, ptr @g_npidhash, align 4
  %i.t = load volatile i32, ptr @g_npidhash, align 4 ; 0 uses
  store ptr @g_idletcb, ptr %i.s, align 8
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 136), align 8
  %i.v = trunc i32 %i.u to i8
  %i.w = call i32 @group_allocate(ptr noundef nonnull @g_idletcb, i8 noundef zeroext %i.v) #8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %idle_group_initialize.exit, !prof !10

bb.i:                                             ; preds = %bb.h
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 448, ptr noundef nonnull @.str.5) #11
  unreachable

idle_group_initialize.exit:                       ; preds = %bb.h
  call void @nxtask_joininit(ptr noundef nonnull @g_idletcb) #8
  call void @up_initial_state(ptr noundef nonnull @g_idletcb) #8
  %i.y = call i32 @tls_init_info(ptr noundef nonnull @g_idletcb) #8 ; 0 uses
  call void @group_initialize(ptr noundef nonnull @g_idletcb) #8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_idletcb, i64 16), align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 3, ptr %i.aa, align 8
  store volatile i32 0, ptr @g_lastpid, align 4
  store volatile i32 3, ptr @g_nx_initstate, align 4
  call void @task_initialize() #8
  call void @instrument_initialize() #8
  call void @fs_initialize() #8
  call void @irq_initialize() #8
  call void @clock_initialize() #8
  call void @timer_initialize() #8
  call void @nxsig_initialize() #8
  call void @nxmq_initialize() #8
  call void @binfmt_initialize() #8
  call void @up_initialize() #8
  call void @drivers_initialize() #8
  store volatile i32 4, ptr @g_nx_initstate, align 4
  %i.ab = call i32 @group_setupidlefiles() #8
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %0, label %bb.j, !prof !10, !llvm.loop !8

bb.j:                                             ; preds = %idle_group_initialize.exit
  store volatile i32 5, ptr @g_nx_initstate, align 4
  %i.ad = call i32 @nx_bringup() #8
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !10

0:                                                ; preds = %idle_group_initialize.exit
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.3) #11
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 747, ptr noundef nonnull @.str.4) #11
  unreachable

bb.l:                                             ; preds = %bb.j
  store volatile i32 6, ptr @g_nx_initstate, align 4
  call void @sched_unlock() #8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  call void @up_idle() #8
  br label %bb.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: noredzone optsize
declare dso_local void @drivers_early_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @nxsem_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @up_allocate_heap(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @umm_initialize(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noredzone optsize allocsize(0)
declare dso_local noalias ptr @zalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone optsize
declare dso_local void @task_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @instrument_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @fs_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @irq_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @clock_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @timer_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @nxsig_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @nxmq_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @binfmt_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @up_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @drivers_initialize() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @group_setupidlefiles() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @nx_bringup() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @sched_unlock() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @up_idle() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @group_allocate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @nxtask_joininit(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @up_initial_state(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @tls_init_info(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @group_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noredzone nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind optsize allocsize(0) }
attributes #11 = { noredzone noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{null}
!8 = distinct !{!8, !11}
!9 = !{i64 2149244261}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
