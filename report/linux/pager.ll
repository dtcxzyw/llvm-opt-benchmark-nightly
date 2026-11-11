Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pager?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.subcmd_config = type { ptr, ptr, ptr, ptr, ptr }
%struct.child_process = type { ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, ptr, ptr }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fd_set = type { [16 x i64] }

@subcmd_config = external local_unnamed_addr global %struct.subcmd_config, align 8
@forced_pager = internal unnamed_addr global ptr null, align 8
@pager_columns = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/usr/bin/pager\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/usr/bin/less\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@spawned_pager = internal unnamed_addr global i1 false, align 4
@pager_argv = internal global [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr null, ptr null], align 16
@pager_process = internal global %struct.child_process zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LESS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"FRSX\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @pager_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @subcmd_config, i64 32), align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @force_pager(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @forced_pager, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @setup_pager() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.winsize, align 2            ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @subcmd_config, i64 32), align 8, !tbaa !14
  %i.b = tail call ptr @getenv(ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  %i.c = load ptr, ptr @forced_pager, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %spec.select = select i1 %.not, ptr %i.b, ptr %i.c ; 2 uses
  %i.d = tail call i32 @isatty(i32 noundef 1) #10
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load ptr, ptr @forced_pager, align 8
  %i.g = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %0) #10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !21
  %i.l = zext i16 %i.k to i32
  store i32 %i.l, ptr @pager_columns, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not9 = icmp eq ptr %spec.select, null
  br i1 %.not9, label %bb.e, label %.thread23

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @getenv(ptr noundef nonnull @.str) #10 ; 2 uses
  %.not10 = icmp eq ptr %i.m, null
  br i1 %.not10, label %bb.f, label %.thread23

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @access(ptr noundef nonnull @.str.1, i32 noundef 1) #10
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %.thread23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @access(ptr noundef nonnull @.str.2, i32 noundef 1) #10
  %.not13 = icmp eq i32 %i.o, 0
  %spec.select20 = select i1 %.not13, ptr @.str.2, ptr null
  br label %.thread23

.thread23:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %.3 = phi ptr [ %spec.select20, %bb.g ], [ %spec.select, %bb.d ], [ %i.m, %bb.e ], [ @.str.1, %bb.f ] ; 2 uses
  %.not14 = icmp eq ptr %.3, null
  %spec.store.select = select i1 %.not14, ptr @.str.3, ptr %.3 ; 3 uses
  %i.p = load i8, ptr %spec.store.select, align 1, !tbaa !22
  %.not15 = icmp eq i8 %i.p, 0
  br i1 %.not15, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.thread23
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select, ptr noundef nonnull dereferenceable(4) @.str.3) #11
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @spawned_pager, align 4
  store ptr %spec.store.select, ptr getelementptr inbounds nuw (i8, ptr @pager_argv, i64 16), align 16, !tbaa !15
  store ptr @pager_argv, ptr @pager_process, align 8, !tbaa !26
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @pager_process, i64 12), align 4, !tbaa !27
  store ptr @pager_preexec, ptr getelementptr inbounds nuw (i8, ptr @pager_process, i64 48), align 8, !tbaa !28
  %i.r = call i32 @start_command(ptr noundef nonnull @pager_process) #10
  %.not17 = icmp eq i32 %i.r, 0
  br i1 %.not17, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @pager_process, i64 12), align 4, !tbaa !27
  %i.t = call i32 @dup2(i32 noundef %i.s, i32 noundef 1) #10 ; 0 uses
  %i.u = call i32 @isatty(i32 noundef 2) #10
  %.not18 = icmp eq i32 %i.u, 0
  br i1 %.not18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @pager_process, i64 12), align 4, !tbaa !27
  %i.w = call i32 @dup2(i32 noundef %i.v, i32 noundef 2) #10 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @pager_process, i64 12), align 4, !tbaa !27
  %i.y = call i32 @close(i32 noundef %i.x) #10    ; 0 uses
  call void @sigchain_push_common(ptr noundef nonnull @wait_for_pager_signal) #10
  %i.z = call i32 @atexit(ptr noundef nonnull @wait_for_pager) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %.thread23, %bb.h, %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @pager_preexec() #1 {
.preheader.preheader:
  %0 = alloca %struct.fd_set, align 8             ; 5 uses
  %1 = alloca %struct.fd_set, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false), !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i8 0, i64 120, i1 false), !tbaa !30
  store i64 1, ptr %0, align 8, !tbaa !30
  store i64 1, ptr %1, align 8, !tbaa !30
  %i.c = call i32 @select(i32 noundef 1, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %1, ptr noundef null) #10 ; 0 uses
  %i.d = call i32 @setenv(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret void
}

declare i32 @start_command(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #7

declare void @sigchain_push_common(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @wait_for_pager_signal(i32 noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  %i.e = tail call i32 @close(i32 noundef 1) #10  ; 0 uses
  %i.f = tail call i32 @close(i32 noundef 2) #10  ; 0 uses
  %i.g = tail call i32 @finish_command(ptr noundef nonnull @pager_process) #10 ; 0 uses
  %i.h = tail call i32 @sigchain_pop(i32 noundef %0) #10 ; 0 uses
  %i.i = tail call i32 @raise(i32 noundef %0) #10 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @wait_for_pager() #1 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  %i.e = tail call i32 @close(i32 noundef 1) #10  ; 0 uses
  %i.f = tail call i32 @close(i32 noundef 2) #10  ; 0 uses
  %i.g = tail call i32 @finish_command(ptr noundef nonnull @pager_process) #10 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @pager_in_use() local_unnamed_addr #8 {
bb.a:
  %.b = load i1, ptr @spawned_pager, align 4
  %i.a = zext i1 %.b to i32
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @pager_get_columns() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.4) #10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #10, !inline_history !31
  %i.c = trunc i64 %i.b to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr @pager_columns, align 4, !tbaa !16 ; 2 uses
  %.not3 = icmp eq i32 %i.d, 0
  %i.e = add nsw i32 %i.d, -2
  %i.f = select i1 %.not3, i32 78, i32 %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @sigchain_pop(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @finish_command(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"subcmd_config", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!14 = !{!13, !12, i64 32}
!15 = !{!12, !12, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = !{!"winsize", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!21 = !{!20, !19, i64 2}
!22 = !{!7, !7, i64 0}
!23 = !{!"any p2 pointer", !11, i64 0}
!24 = !{!"p2 omnipotent char", !23, i64 0}
!25 = !{!"child_process", !24, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !12, i64 24, !24, i64 32, !8, i64 40, !8, i64 44, !8, i64 44, !8, i64 44, !8, i64 44, !8, i64 44, !8, i64 44, !11, i64 48, !11, i64 56}
!26 = !{!25, !24, i64 0}
!27 = !{!25, !8, i64 12}
!28 = !{!25, !11, i64 48}
!29 = !{!"long", !7, i64 0}
!30 = !{!29, !29, i64 0}
!31 = distinct !{null}
end_hunk_0
