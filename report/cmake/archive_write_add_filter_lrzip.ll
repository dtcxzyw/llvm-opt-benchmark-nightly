begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.archive_string = type { ptr, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"archive_write_add_filter_lrzip\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lrzip\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Using external lrzip program for lrzip compression\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"zpaq\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"compression-level\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"lrzip -q\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" -b\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" -g\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" -l\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" -n\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" -z\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" -L \00", align 1
@switch.table.archive_write_lrzip_open = private unnamed_addr constant [5 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -30, -19) i32 @archive_write_add_filter_lrzip(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__archive_write_allocate_filter(ptr noundef %0) #8 ; 8 uses
  %i.b = tail call i32 @__archive_check_magic(ptr noundef %0, i32 noundef -1329217314, i32 noundef 1, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.b, -30
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #9 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.1) #8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @__archive_write_program_allocate(ptr noundef nonnull @.str.2) #8 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !9
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #8
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.1) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 10, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.c, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @archive_write_lrzip_open, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @archive_write_lrzip_options, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @archive_write_lrzip_write, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @archive_write_lrzip_close, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @archive_write_lrzip_free, ptr %i.n, align 8, !tbaa !25
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.3) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.1 = phi i32 [ -30, %bb.c ], [ -30, %bb.e ], [ -20, %bb.f ], [ -30, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @__archive_write_allocate_filter(ptr noundef) local_unnamed_addr #2

declare i32 @__archive_check_magic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @archive_set_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @__archive_write_program_allocate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @archive_write_lrzip_open(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.archive_string, align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = call ptr @archive_strncat(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i64 noundef 8) #8 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %switch.tableidx = add i32 %i.e, -1             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 5
  br i1 %i.f, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.archive_write_lrzip_open, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = call ptr @archive_strcat(ptr noundef nonnull %1, ptr noundef nonnull %switch.load) #8 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call ptr @archive_strcat(ptr noundef nonnull %1, ptr noundef nonnull @.str.17) #8 ; 0 uses
  %i.m = load i32, ptr %i.i, align 8, !tbaa !27
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.n, 48
  %i.p = call ptr @archive_strappend_char(ptr noundef nonnull %1, i8 noundef signext %i.o) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.r = load ptr, ptr %1, align 8, !tbaa !28
  %i.s = call i32 @__archive_write_program_open(ptr noundef nonnull %0, ptr noundef %i.q, ptr noundef %i.r) #8
  call void @archive_string_free(ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -20, 1) i32 @archive_write_lrzip_options(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.4) #10
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.5) #10
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %3, label %bb.d

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %4, align 4, !tbaa !26
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.6) #10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %5, label %bb.e

5:                                                ; preds = %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 2, ptr %6, align 4, !tbaa !26
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.7) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %7, label %bb.f

7:                                                ; preds = %bb.e
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 3, ptr %8, align 4, !tbaa !26
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.8) #10
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %9, label %bb.g

9:                                                ; preds = %bb.f
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 4, ptr %10, align 4, !tbaa !26
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.9) #10
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %11, label %bb.l

11:                                               ; preds = %bb.g
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 5, ptr %12, align 4, !tbaa !26
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.10) #10
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp eq ptr %2, null
  %or.cond22 = or i1 %i.r, %i.q
  br i1 %or.cond22, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %2, align 1, !tbaa !30      ; 2 uses
  %i.t = add i8 %i.s, -49
  %or.cond = icmp ult i8 %i.t, 9
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %narrow = add nsw i8 %i.s, -48
  %13 = zext nneg i8 %narrow to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %13, ptr %i.w, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %5, %9, %11, %7, %3, %bb.g, %bb.b, %bb.k
  %.0 = phi i32 [ -20, %bb.h ], [ -20, %bb.g ], [ -20, %bb.b ], [ 0, %5 ], [ 0, %bb.k ], [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ 0, %9 ], [ -20, %bb.j ], [ -20, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @archive_write_lrzip_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call i32 @__archive_write_program_write(ptr noundef %0, ptr noundef %i.c, ptr noundef %1, i64 noundef %2) #8
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @archive_write_lrzip_close(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call i32 @__archive_write_program_close(ptr noundef %0, ptr noundef %i.c) #8
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @archive_write_lrzip_free(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call i32 @__archive_write_program_free(ptr noundef %i.c) #8 ; 0 uses
  tail call void @free(ptr noundef %i.b) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @archive_strncat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @archive_strcat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @archive_strappend_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @__archive_write_program_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_string_free(ptr noundef) local_unnamed_addr #2

declare i32 @__archive_write_program_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__archive_write_program_close(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__archive_write_program_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"write_lrzip", !11, i64 0, !6, i64 8, !6, i64 12}
!11 = !{!"p1 _ZTS26archive_write_program_data", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !18, i64 80}
!14 = !{!"archive_write_filter", !15, i64 0, !16, i64 8, !17, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTS7archive", !12, i64 0}
!17 = !{!"p1 _ZTS20archive_write_filter", !12, i64 0}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!14, !6, i64 88}
!20 = !{!14, !12, i64 72}
!21 = !{!14, !12, i64 32}
!22 = !{!14, !12, i64 24}
!23 = !{!14, !12, i64 40}
!24 = !{!14, !12, i64 56}
!25 = !{!14, !12, i64 64}
!26 = !{!10, !6, i64 12}
!27 = !{!10, !6, i64 8}
!28 = !{!29, !18, i64 0}
!29 = !{!"archive_string", !18, i64 0, !15, i64 8, !15, i64 16}
!30 = !{!7, !7, i64 0}
end_hunk_0
