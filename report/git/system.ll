Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/system?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_rand() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @git_rand(i32 noundef 1) #6
  ret i32 %i.a
}

declare i32 @git_rand(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @tmpfile_from_pattern(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @mks_tempfile_sm(ptr noundef %1, i32 noundef 0, i32 noundef 384) #6 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load volatile i32, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @tmpfile_close(ptr nofree noundef captures(none) initializes((8, 12)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call i32 @close_tempfile_gently(ptr noundef %i.b) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.d, align 8, !tbaa !24
  %i.e = icmp slt i32 %i.c, 0
  %. = select i1 %i.e, i32 -2, i32 0
  ret i32 %.
}

declare i32 @close_tempfile_gently(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @tmpfile_delete(ptr nofree noundef captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = call i32 @delete_tempfile(ptr noundef nonnull %i.a) #6
  store ptr null, ptr %0, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx.a, i8 0, i64 12, i1 false)
  %i.e = icmp slt i32 %i.d, 0
  %. = select i1 %i.e, i32 -2, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.
}

declare i32 @delete_tempfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @tmpfile_rename(ptr nofree noundef captures(none) initializes((0, 16)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = call i32 @rename_tempfile(ptr noundef nonnull %i.a, ptr noundef %1) #6
  store ptr null, ptr %0, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx.a, i8 0, i64 12, i1 false)
  %i.e = icmp slt i32 %i.d, 0
  %. = select i1 %i.e, i32 -2, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.
}

declare i32 @rename_tempfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @flock_acquire(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @reftable_malloc(i64 noundef 16) #6 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 2, i64 noundef %2, i32 noundef 438) #6
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @reftable_free(ptr noundef nonnull %i.a) #6
  %i.d = tail call ptr @__errno_location() #7
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  %i.f = icmp eq i32 %i.e, 17
  %. = select i1 %i.f, i32 -5, i32 -2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.g = tail call i32 @get_tempfile_fd(ptr noundef %.val) #6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !32
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.i = tail call ptr @get_tempfile_path(ptr noundef %.val13) #6
  store ptr %i.i, ptr %0, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.j, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ %., %bb.c ], [ -13, %bb.a ], [ 0, %bb.d ]
  ret i32 %.0
}

declare ptr @reftable_malloc(i64 noundef) local_unnamed_addr #1

declare void @reftable_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @flock_close(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.c = tail call i32 @close_tempfile_gently(ptr noundef %.val) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.d, align 8, !tbaa !32
  %i.e = icmp slt i32 %i.c, 0
  %. = select i1 %i.e, i32 -2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @flock_release(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @rollback_lock_file(ptr noundef nonnull %i.b) #6
  tail call void @reftable_free(ptr noundef nonnull %i.b) #6
  store ptr null, ptr %0, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx.a, i8 0, i64 12, i1 false)
  %i.d = icmp slt i32 %i.c, 0
  %. = select i1 %i.d, i32 -2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @rollback_lock_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @flock_commit(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @commit_lock_file(ptr noundef nonnull %i.b) #6
  tail call void @reftable_free(ptr noundef nonnull %i.b) #6
  store ptr null, ptr %0, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx.a, i8 0, i64 12, i1 false)
  %i.d = icmp slt i32 %i.c, 0
  %. = select i1 %i.d, i32 -2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -6, %bb.a ]
  ret i32 %.0
}

declare i32 @commit_lock_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_fsync(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @fsync_component(i32 noundef 32, i32 noundef %0) #6
  ret i32 %i.a
}

declare i32 @fsync_component(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 18446744073710) i64 @reftable_time_ms() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @getnanotime() #6
  %i.b = udiv i64 %i.a, 1000000
  ret i64 %i.b
}

declare i64 @getnanotime() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @reftable_mmap(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xmmap_gently(ptr noundef null, i64 noundef %2, i32 noundef 1, i32 noundef 2, i32 noundef %1, i64 noundef 0) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

declare ptr @xmmap_gently(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @reftable_munmap(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = tail call i32 @munmap(ptr noundef %i.a, i64 noundef %i.c) #6
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @mks_tempfile_sm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @hold_lock_file_for_update_timeout_mode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @get_tempfile_fd(ptr noundef) local_unnamed_addr #1

declare ptr @get_tempfile_path(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !20, i64 56}
!13 = !{!"tempfile", !14, i64 0, !9, i64 16, !17, i64 24, !9, i64 32, !18, i64 40, !20, i64 64}
!14 = !{!"volatile_list_head", !15, i64 0, !15, i64 8}
!15 = !{!"p1 _ZTS18volatile_list_head", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!18 = !{!"strbuf", !19, i64 0, !19, i64 8, !20, i64 16}
!19 = !{!"long", !10, i64 0}
!20 = !{!"p1 omnipotent char", !16, i64 0}
!21 = !{!22, !20, i64 0}
!22 = !{!"reftable_tmpfile", !20, i64 0, !9, i64 8, !16, i64 16}
!23 = !{!13, !9, i64 16}
!24 = !{!22, !9, i64 8}
!25 = !{!22, !16, i64 16}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS8tempfile", !16, i64 0}
!28 = !{!20, !20, i64 0}
!29 = !{!9, !9, i64 0}
!30 = !{!31, !27, i64 0}
!31 = !{!"lock_file", !27, i64 0, !27, i64 8}
!32 = !{!33, !9, i64 8}
!33 = !{!"reftable_flock", !20, i64 0, !9, i64 8, !16, i64 16}
!34 = !{!33, !20, i64 0}
!35 = !{!33, !16, i64 16}
!36 = !{!37, !16, i64 0}
!37 = !{!"reftable_mmap", !16, i64 0, !19, i64 8, !16, i64 16}
!38 = !{!37, !19, i64 8}
end_hunk_0
