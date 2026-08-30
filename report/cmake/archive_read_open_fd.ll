Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_open_fd?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Can't stat fd %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Error reading fd %d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Error seeking\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"A file descriptor(%d) is not seekable(PIPE)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Error seeking in a file descriptor(%d)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @archive_read_open_fd(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  tail call void @archive_clear_error(ptr noundef %0) #11
  %i.a = call i32 @fstat(i32 noundef %1, ptr noundef nonnull %3) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull @.str, i32 noundef %1) #11
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #13 ; 8 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %2) #14 ; 3 uses
  %i.f = icmp eq ptr %i.d, null
  %i.g = icmp eq ptr %i.e, null
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.1) #11
  tail call void @free(ptr noundef %i.d) #11
  tail call void @free(ptr noundef %i.e) #11
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.i, align 8, !tbaa !14
  store i32 %1, ptr %i.d, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16
  %i.l = and i32 %i.k, 61440
  %i.m = icmp eq i32 %i.l, 32768
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %3, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  tail call void @archive_read_extract_set_skip_file(ptr noundef %0, i64 noundef %i.n, i64 noundef %i.p) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 1, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call i32 @archive_read_set_read_callback(ptr noundef %0, ptr noundef nonnull @file_read) #11 ; 0 uses
  %i.v = tail call i32 @archive_read_set_skip_callback(ptr noundef %0, ptr noundef nonnull @file_skip) #11 ; 0 uses
  %i.w = tail call i32 @archive_read_set_seek_callback(ptr noundef %0, ptr noundef nonnull @file_seek) #11 ; 0 uses
  %i.x = tail call i32 @archive_read_set_close_callback(ptr noundef %0, ptr noundef nonnull @file_close) #11 ; 0 uses
  %i.y = tail call i32 @archive_read_set_callback_data(ptr noundef %0, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.z = tail call i32 @archive_read_open1(ptr noundef %0) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -30, %bb.b ], [ -30, %bb.d ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @archive_clear_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare void @archive_set_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @archive_read_extract_set_skip_file(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @archive_read_set_read_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i64 @file_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  store ptr %i.b, ptr %2, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !15
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.f = load i64, ptr %i.c, align 8, !tbaa !10
  %i.g = tail call i64 @read(i32 noundef %i.d, ptr noundef %i.e, i64 noundef %i.f) #11 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9    ; 2 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %1, align 8, !tbaa !15
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.j, ptr noundef nonnull @.str.2, i32 noundef %i.l) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  ret i64 %i.g
}

declare i32 @archive_read_set_skip_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i64 -9223372036854775806, -9223372036854775808) i64 @file_skip(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = urem i64 %2, %i.d
  %i.f = sub nuw i64 %2, %i.e                     ; 2 uses
  %3 = icmp ult i64 %2, %i.d
  br i1 %3, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !15
  %i.h = tail call i64 @lseek(i32 noundef %i.g, i64 noundef 0, i32 noundef 1) #11 ; 4 uses
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not24 = icmp sge i64 %i.h, %i.k
  %i.l = sub nsw i64 %i.k, %i.h
  %i.m = icmp sgt i64 %i.f, %i.l
  %or.cond = select i1 %.not24, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #12
  store i32 29, ptr %i.n, align 4, !tbaa !9
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %1, align 8, !tbaa !15
  %i.p = tail call i64 @lseek(i32 noundef %i.o, i64 noundef %i.f, i32 noundef 1) #11 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sub nsw i64 %i.p, %i.h
  br label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.s = tail call ptr @__errno_location() #12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9    ; 2 uses
  %i.u = icmp eq i32 %i.t, 29
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.t, ptr noundef nonnull @.str.3) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.b, %bb.a, %bb.i, %bb.g
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %bb.i ], [ %i.r, %bb.g ], [ 0, %bb.h ]
  ret i64 %.0
}

declare i32 @archive_read_set_seek_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i64 -30, -9223372036854775808) i64 @file_seek(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !15
  %i.b = tail call i64 @lseek(i32 noundef %i.a, i64 noundef %2, i32 noundef %3) #11 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = icmp eq i32 %i.e, 29
  %i.g = load i32, ptr %1, align 8, !tbaa !15     ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 29, ptr noundef nonnull @.str.4, i32 noundef %i.g) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull @.str.5, i32 noundef %i.g) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i64 [ -30, %bb.d ], [ -25, %bb.c ], [ %i.b, %bb.a ]
  ret i64 %.0
}

declare i32 @archive_read_set_close_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef i32 @file_close(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.b) #11
  tail call void @free(ptr noundef %1) #11
  ret i32 0
}

declare i32 @archive_read_set_callback_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @archive_read_open1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"read_fd_data", !6, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !13, i64 32}
!12 = !{!"long", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!11, !13, i64 32}
!15 = !{!11, !6, i64 0}
!16 = !{!17, !6, i64 24}
!17 = !{!"stat", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !18, i64 72, !18, i64 88, !18, i64 104, !7, i64 120}
!18 = !{!"timespec", !12, i64 0, !12, i64 8}
!19 = !{!17, !12, i64 0}
!20 = !{!17, !12, i64 8}
!21 = !{!11, !7, i64 24}
!22 = !{!17, !12, i64 48}
!23 = !{!11, !12, i64 16}
!24 = !{!13, !13, i64 0}
end_hunk_0
