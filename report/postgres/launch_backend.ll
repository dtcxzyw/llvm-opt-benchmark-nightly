Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/launch_backend?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ConnectionTiming = type { i64, i64, i64, i64, i64, i64 }

@MyBackendType = external local_unnamed_addr global i32, align 4
@conn_timing = external local_unnamed_addr global %struct.ConnectionTiming, align 8
@TopMemoryContext = external local_unnamed_addr global ptr, align 8
@MyPMChildSlot = external local_unnamed_addr global i32, align 4
@MyClientSocket = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"unrecognized\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"client backend\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"dead-end client backend\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"autovacuum launcher\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"autovacuum worker\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"background worker\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"walsender\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"slotsync worker\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"standalone backend\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"archiver\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"background writer\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"checkpointer\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"io worker\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"startup\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"walreceiver\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"walsummarizer\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"walwriter\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"datachecksums launcher\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"datachecksums worker\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"syslogger\00", align 1
@child_process_kinds = internal unnamed_addr constant [20 x { ptr, ptr, i8, [7 x i8] }] [{ ptr, ptr, i8, [7 x i8] } { ptr @.str, ptr null, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.1, ptr @BackendMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.2, ptr @BackendMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.3, ptr @AutoVacLauncherMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.4, ptr @AutoVacWorkerMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.5, ptr @BackgroundWorkerMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.6, ptr null, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.7, ptr @ReplSlotSyncWorkerMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.8, ptr null, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.9, ptr @PgArchiverMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.10, ptr @BackgroundWriterMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.11, ptr @CheckpointerMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.12, ptr @IoWorkerMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.13, ptr @StartupProcessMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.14, ptr @WalReceiverMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.15, ptr @WalSummarizerMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.16, ptr @WalWriterMain, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.17, ptr null, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.18, ptr null, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.19, ptr @SysLoggerMain, i8 0, [7 x i8] zeroinitializer }], align 16
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @PostmasterChildName(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @child_process_kinds, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @postmaster_child_launch(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 6, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = tail call i64 @GetCurrentTimestamp() #5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.a, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call i32 @fork_process() #5         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  store i32 %0, ptr @MyBackendType, align 4
  switch i32 %0, label %bb.f [
    i32 6, label %bb.e
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr @conn_timing, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @conn_timing, i64 16), align 8
  %i.i = tail call i64 @GetCurrentTimestamp() #5
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @conn_timing, i64 24), align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = icmp eq i32 %0, 19
  tail call void @ClosePostmasterPorts(i1 noundef zeroext %i.j) #5
  tail call void @InitPostmasterChild() #5
  %i.k = zext i32 %0 to i64                       ; 2 uses
  %5 = shl nuw i64 1, %i.k
  %6 = and i64 %5, 130814
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @dsm_detach_all() #5
  tail call void @PGSharedMemoryDetach() #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = load ptr, ptr @TopMemoryContext, align 8
  store ptr %i.l, ptr @CurrentMemoryContext, align 8
  store i32 %1, ptr @MyPMChildSlot, align 4
  %.not.a = icmp eq ptr %4, null
  br i1 %.not.a, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call ptr @palloc(i64 noundef 144) #5 ; 2 uses
  store ptr %i.m, ptr @MyClientSocket, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %7 = getelementptr inbounds nuw [24 x i8], ptr @child_process_kinds, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef %2, i64 noundef %3) #5
  unreachable

bb.k:                                             ; preds = %bb.c
  ret i32 %i.c
}

declare i64 @GetCurrentTimestamp() local_unnamed_addr #2

declare i32 @fork_process() local_unnamed_addr #2

declare void @ClosePostmasterPorts(i1 noundef zeroext) local_unnamed_addr #2

declare void @InitPostmasterChild() local_unnamed_addr #2

declare void @dsm_detach_all() local_unnamed_addr #2

declare void @PGSharedMemoryDetach() local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @BackendMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @AutoVacLauncherMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @AutoVacWorkerMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @BackgroundWorkerMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @ReplSlotSyncWorkerMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @PgArchiverMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @BackgroundWriterMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @CheckpointerMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @IoWorkerMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @StartupProcessMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @WalReceiverMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @WalSummarizerMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @WalWriterMain(ptr noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @SysLoggerMain(ptr noundef, i64 noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
