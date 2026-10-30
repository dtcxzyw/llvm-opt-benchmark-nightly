Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/backup?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.persist_conn_s = type { ptr, i32, i32, i8, ptr, ptr, ptr, i64, i16, i16, i8, i32, i32, ptr, i16, ptr, i64, i32, ptr, i32, i8, %struct.slurm_trigger_callbacks_t, i16 }
%struct.slurm_trigger_callbacks_t = type { ptr, ptr, ptr, ptr, ptr }

@primary_resumed = dso_local local_unnamed_addr global i8 0, align 1
@backup = dso_local local_unnamed_addr global i8 0, align 1
@have_control = dso_local local_unnamed_addr global i8 0, align 1
@slurmdbd_conf = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"backup_slurmdbd\00", align 1
@shutdown_time = external global i64, align 8
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Primary has come back\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Taking Control\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @run_dbd_backup() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.persist_conn_s, align 8     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, i8 0, i64 176, i1 false)
  store i8 0, ptr @primary_resumed, align 1
  %i.a = load ptr, ptr @slurmdbd_conf, align 8    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load i16, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @.str, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @shutdown_time, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 17, ptr %i.j, align 2
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.k, ptr %i.l, align 4
  %i.m = call i32 @slurm_persist_conn_open(ptr noundef nonnull %0) #4 ; 0 uses
  %.old = load i64, ptr @shutdown_time, align 8
  %.not7.old = icmp eq i64 %.old, 0
  br i1 %.not7.old, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a, %bb.j
  %i.n = call i32 @slurm_persist_conn_writeable(ptr noundef nonnull %0) #4 ; 2 uses
  %i.o = load i8, ptr @have_control, align 1, !range !8, !noundef !9
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = icmp eq i32 %i.n, 1
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.preheader
  %i.r = call i32 @get_log_level() #4
  %i.s = icmp sgt i32 %i.r, 2
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.1) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 1, ptr @primary_resumed, align 1
  call void @shutdown_threads() #4
  store i8 0, ptr @have_control, align 1
  br label %.thread

bb.e:                                             ; preds = %.preheader
  %i.t = icmp sgt i32 %i.n, 0                     ; 2 uses
  %or.cond3.not = select i1 %i.p, i1 true, i1 %i.t
  br i1 %or.cond3.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr @have_control, align 1
  %i.u = call i32 @get_log_level() #4
  %i.v = icmp sgt i32 %i.u, 2
  br i1 %i.v, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.2) #4
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %i.w = call i32 @sleep(i32 noundef 1) #4        ; 0 uses
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @slurm_persist_conn_reopen(ptr noundef nonnull %0) #4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.y = load i64, ptr @shutdown_time, align 8
  %.not7 = icmp eq i64 %i.y, 0
  br i1 %.not7, label %.preheader, label %.thread

.thread:                                          ; preds = %bb.j, %bb.g, %bb.f, %bb.d, %bb.a
  call void @slurm_persist_conn_close(ptr noundef nonnull %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @slurm_persist_conn_open(ptr noundef) local_unnamed_addr #3

declare i32 @slurm_persist_conn_writeable(ptr noundef) local_unnamed_addr #3

declare i32 @get_log_level() local_unnamed_addr #3

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @shutdown_threads() local_unnamed_addr #3

declare i32 @sleep(i32 noundef) local_unnamed_addr #3

declare i32 @slurm_persist_conn_reopen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @slurm_persist_conn_close(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{i8 0, i8 2}
!9 = !{}
end_hunk_0
