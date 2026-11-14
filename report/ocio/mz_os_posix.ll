Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/mz_os_posix?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }

@mz_os_rand.calls = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias ptr @mz_os_utf8_string_create(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @strdup(ptr noundef %0) #13
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @mz_os_utf8_string_delete(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.a) #13
  store ptr null, ptr %0, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @mz_os_rand(ptr nofree noundef writeonly captures(none) %0, i32 noundef returned %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @mz_os_rand.calls, align 4, !tbaa !8 ; 2 uses
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr @mz_os_rand.calls, align 4, !tbaa !8
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @time(ptr noundef null) #13
  %i.e = trunc i64 %i.d to i32
  %i.f = xor i32 %i.e, -1153374642
  tail call void @srand(i32 noundef %i.f) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = tail call i32 @rand() #13
  %i.i = lshr i32 %i.h, 7
  %i.j = trunc i32 %i.i to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1, !tbaa !9
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nofree nounwind uwtable
define range(i32 -107, 1) i32 @mz_os_rename(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @rename(ptr noundef %0, ptr noundef %1) #13
  %i.b = icmp eq i32 %i.a, -1
  %. = select i1 %i.b, i32 -107, i32 0
  ret i32 %.
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define range(i32 -107, 1) i32 @mz_os_unlink(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @unlink(ptr noundef %0) #13
  %i.b = icmp eq i32 %i.a, -1
  %. = select i1 %i.b, i32 -107, i32 0
  ret i32 %.
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define range(i32 -107, 1) i32 @mz_os_file_exists(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #13
  %i.b = icmp eq i32 %i.a, 0
  %. = select i1 %i.b, i32 0, i32 -107
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define i64 @mz_os_get_file_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #13
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 16384
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -104, 1) i32 @mz_os_get_file_date(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
sub_0:
  %4 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  %i.a = load i8, ptr %0, align 1
  %.not17 = icmp eq i8 %i.a, 45
  br i1 %.not17, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.e = tail call noalias ptr @strdup(ptr noundef nonnull %0) #13 ; 3 uses
  %i.f = tail call i32 @mz_path_remove_slash(ptr noundef %i.e) #13 ; 0 uses
  %i.g = call i32 @stat(ptr noundef %i.e, ptr noundef nonnull %4) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.a, label %bb.g

bb.a:                                             ; preds = %.tail.thread
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  store i64 %i.j, ptr %1, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  store i64 %i.l, ptr %2, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %3, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.tail.thread
  %.0 = phi i32 [ -104, %.tail.thread ], [ 0, %bb.f ], [ 0, %bb.e ]
  tail call void @free(ptr noundef %i.e) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.tail
  %.1 = phi i32 [ %.0, %bb.g ], [ -104, %.tail ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.1
}

declare i32 @mz_path_remove_slash(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define range(i32 -104, 1) i32 @mz_os_set_file_date(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.utimbuf, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %2, ptr %4, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  %i.b = call i32 @utime(ptr noundef %0, ptr noundef nonnull %4) #13
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i32 0, i32 -104
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.
}

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define range(i32 -104, 1) i32 @mz_os_get_file_attribs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %i.a = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %2) #13
  %i.b = icmp eq i32 %i.a, -1
  %spec.select = select i1 %i.b, i32 -104, i32 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  store i32 %i.d, ptr %1, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %spec.select
}

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define range(i32 -104, 1) i32 @mz_os_set_file_attribs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @chmod(ptr noundef %0, i32 noundef %1) #13
  %i.b = icmp eq i32 %i.a, -1
  %spec.select = select i1 %i.b, i32 -104, i32 0
  ret i32 %spec.select
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define range(i32 -104, 1) i32 @mz_os_make_dir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @mkdir(ptr noundef %0, i32 noundef 493) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #14
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not2 = icmp eq i32 %i.c, 17
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -104, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @mz_os_open_dir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias ptr @opendir(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @mz_os_read_dir(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @readdir(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @readdir(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define range(i32 -104, 1) i32 @mz_os_close_dir(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @closedir(ptr noundef nonnull %0)
  %i.b = icmp eq i32 %i.a, -1
  %. = select i1 %i.b, i32 -104, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @mz_os_is_dir_separator(i8 noundef signext %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i8 %0, 47
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -107, 1) i32 @mz_os_is_dir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = and i32 %i.c, 61440
  %i.e = icmp eq i32 %i.d, 16384
  %. = select i1 %i.e, i32 0, i32 -107
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -107, 1) i32 @mz_os_is_symlink(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.a = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = and i32 %i.c, 61440
  %i.e = icmp eq i32 %i.d, 40960
  %. = select i1 %i.e, i32 0, i32 -107
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 -104, 1) i32 @mz_os_make_symlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @symlink(ptr noundef %1, ptr noundef %0) #13
  %.not = icmp eq i32 %i.a, 0
  %. = select i1 %.not, i32 0, i32 -104
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define range(i32 -107, 1) i32 @mz_os_read_symlink(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @readlink(ptr noundef %0, ptr noundef %1, i64 noundef %i.b) #13 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -107, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i64 @mz_os_ms_time() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  %i.a = tail call i64 @sysconf(i32 noundef 149) #13
  %i.b = icmp sgt i64 %i.a, 0
  %. = zext i1 %i.b to i32
  %i.c = call i32 @clock_gettime(i32 noundef %., ptr noundef nonnull %0) #13 ; 0 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !26
  %i.e = mul i64 %i.d, 1000
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = udiv i64 %i.g, 1000000
  %i.i = add i64 %i.h, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  ret i64 %i.i
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
end_hunk_0
