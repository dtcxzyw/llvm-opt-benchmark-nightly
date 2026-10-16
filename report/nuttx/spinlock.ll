Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/spinlock?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { %union.rspinlock_u }
%union.rspinlock_u = type { i32 }
%struct.spinlock_pub_args_s = type { ptr, i32, i32, i32 }
%struct.pthread_attr_s = type { i8, i8, i8, i8, ptr, i64, i64 }
%struct.sched_param = type { i32 }
%struct.spinlock_thread_args_s = type { i64, ptr }
%struct.timespec = type { i64, i64 }

@.str.1 = private unnamed_addr constant [33 x i8] c"Thread num: %u, Loop times: %d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"spinlock\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rspinlock\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"seqcount\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Test type: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"spinlock_test: ERROR: pthread_attr_init failed, status=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"/testing/ostest/spinlock.c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"(_Bool)0\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"spinlock_test: ERROR: pthread_attr_setschedparam failed, status=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"spinlock_test: ERROR: pthread_create failed, status=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"spinlock_test: ERROR: pthread_join failed, status=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"%s: Test Results:\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"%s: Final counter: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"%s: Average throughput : %lu op/s\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: Total execution time: %lu ns\0A \0A\00", align 1
@str = private unnamed_addr constant [17 x i8] c"Start Lock test:\00", align 1
@str.1 = private unnamed_addr constant [36 x i8] c"spinlock_test: ERROR: total_ns is 0\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @spinlock_test() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %union.anon, align 64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1, i32 noundef 10000000) #10 ; 0 uses
  store i8 0, ptr %0, align 64
  call fastcc void @run_test_thread(ptr noundef %0, ptr noundef nonnull @spinlock_t_test_thread, ptr noundef nonnull @.str.2) #10
  store i32 0, ptr %0, align 64
  call fastcc void @run_test_thread(ptr noundef %0, ptr noundef nonnull @rspinlock_t_test_thread, ptr noundef nonnull @.str.3) #10
  store i32 0, ptr %0, align 64
  call fastcc void @run_test_thread(ptr noundef %0, ptr noundef nonnull @seqcount_t_test_thread, ptr noundef nonnull @.str.4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind optsize uwtable
define internal fastcc void @run_test_thread(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %3 = alloca %struct.spinlock_pub_args_s, align 8 ; 7 uses
  %4 = alloca %struct.pthread_attr_s, align 8     ; 5 uses
  %5 = alloca %struct.sched_param, align 4        ; 4 uses
  %6 = alloca [1 x %struct.spinlock_thread_args_s], align 16 ; 6 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 1, ptr %i.b, align 4
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %2) #10 ; 0 uses
  store ptr %0, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store volatile i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  store atomic volatile i32 0, ptr %i.f release, align 4
  %i.g = call i32 @pthread_attr_init(ptr noundef nonnull %4) #11 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.g) #10 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 154, ptr noundef nonnull @.str.8) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 255, ptr %5, align 4
  %i.i = call i32 @pthread_attr_setschedparam(ptr noundef nonnull %4, ptr noundef nonnull %5) #11 ; 2 uses
  %.not41 = icmp eq i32 %i.i, 0
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.i) #10 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 163, ptr noundef nonnull @.str.8) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %7) #11 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.l, align 8
  store i64 0, ptr %6, align 16
  %i.m = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %6) #11 ; 2 uses
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %.preheader.preheader, label %9

9:                                                ; preds = %bb.e
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.m) #10 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 195, ptr noundef nonnull @.str.8) #12
  unreachable

.preheader.preheader:                             ; preds = %bb.e
  %i.n = load i32, ptr %i.a, align 4
  %i.o = call i32 @pthread_join(i32 noundef %i.n, ptr noundef null) #11 ; 2 uses
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %.preheader, label %bb.f

bb.f:                                             ; preds = %.preheader.preheader
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.o) #10 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 206, ptr noundef nonnull @.str.8) #12
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.q = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %8) #11 ; 0 uses
  %i.r = load i64, ptr %6, align 16               ; 2 uses
  %.not42 = icmp eq i64 %i.r, 0
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %2) #10 ; 0 uses
  %i.t = load volatile i32, ptr %i.d, align 8
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %2, i32 noundef %i.t) #10 ; 0 uses
  %i.v = udiv i64 10000000000000000, %i.r
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %2, i64 noundef %i.v) #10 ; 0 uses
  %.val = load i64, ptr %7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val45 = load i64, ptr %i.x, align 8
  %.val46 = load i64, ptr %8, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val47 = load i64, ptr %i.y, align 8
  %i.z = sub i64 %.val46, %.val
  %i.aa = sub nsw i64 %.val47, %.val45            ; 4 uses
  %i.ab = icmp slt i64 %i.aa, 0
  %i.ac = add nsw i64 %i.aa, 1000000000
  %.lobit.i = ashr i64 %i.aa, 63
  %.08.i = add i64 %i.z, %.lobit.i
  %.0.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa
  %i.ad = mul i64 %.08.i, 1000000000
  %i.ae = add i64 %i.ad, %.0.i
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %2, i64 noundef %i.ae) #10 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.preheader
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal noalias noundef ptr @spinlock_t_test_thread(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.e = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %i.f = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not16 = icmp eq i32 %i.f, %i.h
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = tail call i32 @sched_yield() #11         ; 0 uses
  %i.j = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.k = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.l = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %1) #11 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %up_irq_restore.exit
  %.017 = phi i32 [ 0, %._crit_edge ], [ %i.r, %up_irq_restore.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !8
  %i.n = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  %i.o = load volatile i32, ptr %i.m, align 8
  %i.p = add i32 %i.o, 1
  store volatile i32 %i.p, ptr %i.m, align 8
  %i.q = and i64 %i.n, 512
  %.not15 = icmp eq i64 %i.q, 0
  br i1 %.not15, label %up_irq_restore.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %bb.b, %bb.c
  %i.r = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, 10000000
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !12

bb.d:                                             ; preds = %up_irq_restore.exit
  %i.s = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %2) #11 ; 0 uses
  %.val = load i64, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load i64, ptr %i.t, align 8
  %.val13 = load i64, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val14 = load i64, ptr %i.u, align 8
  %i.v = sub i64 %.val13, %.val
  %i.w = sub nsw i64 %.val14, %.val12             ; 4 uses
  %i.x = icmp slt i64 %i.w, 0
  %i.y = add nsw i64 %i.w, 1000000000
  %.lobit.i = ashr i64 %i.w, 63
  %.08.i = add i64 %i.v, %.lobit.i
  %.0.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = mul i64 %.08.i, 1000000000
  %i.aa = add i64 %i.z, %.0.i
  store i64 %i.aa, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret ptr null
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal noalias noundef ptr @rspinlock_t_test_thread(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.e = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %i.f = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not16 = icmp eq i32 %i.f, %i.h
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = tail call i32 @sched_yield() #11         ; 0 uses
  %i.j = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.k = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.l = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %1) #11 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %up_irq_restore.exit
  %.017 = phi i32 [ 0, %._crit_edge ], [ %i.r, %up_irq_restore.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !8
  %i.n = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  %i.o = load volatile i32, ptr %i.m, align 8
  %i.p = add i32 %i.o, 1
  store volatile i32 %i.p, ptr %i.m, align 8
  %i.q = and i64 %i.n, 512
  %.not15 = icmp eq i64 %i.q, 0
  br i1 %.not15, label %up_irq_restore.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %bb.b, %bb.c
  %i.r = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, 10000000
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !14

bb.d:                                             ; preds = %up_irq_restore.exit
  %i.s = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %2) #11 ; 0 uses
  %.val = load i64, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load i64, ptr %i.t, align 8
  %.val13 = load i64, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val14 = load i64, ptr %i.u, align 8
  %i.v = sub i64 %.val13, %.val
  %i.w = sub nsw i64 %.val14, %.val12             ; 4 uses
  %i.x = icmp slt i64 %i.w, 0
  %i.y = add nsw i64 %i.w, 1000000000
  %.lobit.i = ashr i64 %i.w, 63
  %.08.i = add i64 %i.v, %.lobit.i
  %.0.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = mul i64 %.08.i, 1000000000
  %i.aa = add i64 %i.z, %.0.i
  store i64 %i.aa, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret ptr null
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal noalias noundef ptr @seqcount_t_test_thread(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.f = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %i.g = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not18 = icmp eq i32 %i.g, %i.i
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.j = tail call i32 @sched_yield() #11         ; 0 uses
  %i.k = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.l = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %1) #11 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %write_sequnlock_irqrestore.exit
  %.019 = phi i32 [ 0, %._crit_edge ], [ %i.u, %write_sequnlock_irqrestore.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !8
  %i.o = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  %i.p = load i32, ptr %i.d, align 4
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.d, align 4
  %i.r = load volatile i32, ptr %i.n, align 8
  %i.s = add i32 %i.r, 1
  store volatile i32 %i.s, ptr %i.n, align 8
  %i.t = and i64 %i.o, 512
  %.not17 = icmp eq i64 %i.t, 0
  br i1 %.not17, label %write_sequnlock_irqrestore.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  br label %write_sequnlock_irqrestore.exit

write_sequnlock_irqrestore.exit:                  ; preds = %bb.b, %bb.c
  %i.u = add nuw nsw i32 %.019, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, 10000000
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !16

bb.d:                                             ; preds = %write_sequnlock_irqrestore.exit
  %i.v = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %2) #11 ; 0 uses
  %.val = load i64, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load i64, ptr %i.w, align 8
  %.val15 = load i64, ptr %2, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val16 = load i64, ptr %i.x, align 8
  %i.y = sub i64 %.val15, %.val
  %i.z = sub nsw i64 %.val16, %.val14             ; 4 uses
  %i.aa = icmp slt i64 %i.z, 0
  %i.ab = add nsw i64 %i.z, 1000000000
  %.lobit.i = ashr i64 %i.z, 63
  %.08.i = add i64 %i.y, %.lobit.i
  %.0.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = mul i64 %.08.i, 1000000000
  %i.ad = add i64 %i.ac, %.0.i
  store i64 %i.ad, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret ptr null
}

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_join(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @sched_yield() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { noredzone optsize }
attributes #11 = { noredzone nounwind optsize }
attributes #12 = { noredzone noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 506713, i64 506731}
!9 = !{i64 507363}
!10 = !{i64 507497}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
end_hunk_0
