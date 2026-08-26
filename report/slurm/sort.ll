Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/sort?download=true
inline.NumInlined: 69
inline.NumDeleted: 10
begin_hunk_0_@xstrdup
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @xstrncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @list_sort(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_cluster_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 136
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @xstrcmp(ptr noundef %i.f, ptr noundef %i.h) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.j = sub nsw i32 0, %i.i
  %spec.select = select i1 %.b, i32 %i.j, i32 %i.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_batch_host(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 96
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %spec.select = select i1 %.not, ptr @.str.5, ptr %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, null
  %.0 = select i1 %.not9, ptr @.str.5, ptr %i.h
  %i.i = tail call i32 @xstrcmp(ptr noundef nonnull %spec.select, ptr noundef nonnull %.0) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.j = sub nsw i32 0, %i.i
  %.06 = select i1 %.b, i32 %i.j, i32 %i.i
  ret i32 %.06
}

declare i32 @get_log_level() local_unnamed_addr #3

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_num_cpus(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 572
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 572
  %i.h = load i32, ptr %i.g, align 4
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_min_tmp_disk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 620
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 620
  %i.h = load i32, ptr %i.g, align 4
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_num_nodes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 576
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.h = load i32, ptr %i.g, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_time_end(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 280
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.h = load i64, ptr %i.g, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %i.f, i64 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_group_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %.val = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.c, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val.val, i64 400
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call ptr @gid_to_string(i32 noundef %i.h) #11 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call ptr @gid_to_string(i32 noundef %i.k) #11 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8
  %i.m = tail call i32 @xstrcmp(ptr noundef %i.i, ptr noundef %i.l) #11 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #11
  call void @slurm_xfree(ptr noundef nonnull %i.b) #11
  %.b = load i1, ptr @reverse_order, align 1
  %i.n = sub nsw i32 0, %i.m
  %spec.select = select i1 %.b, i32 %i.n, i32 %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_group_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 400
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.h = load i32, ptr %i.g, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_sockets(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 802
  %i.f = load i16, ptr %i.e, align 2
  %2 = zext i16 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 802
  %i.h = load i16, ptr %i.g, align 2
  %3 = zext i16 %i.h to i32
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %2, i32 %3) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8         ; 5 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 404
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not = icmp eq i32 %i.f, 0                     ; 3 uses
  br i1 %.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val.val, i64 52
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, -2
  %. = select i1 %i.i, i64 784, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.
  %i.k = load i32, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.07 = phi i32 [ %i.f, %bb.a ], [ %i.k, %.sink.split ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 404
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.o, -2
  %.0.in.v = select i1 %i.p, i64 784, i64 48
  %.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.in.v
  %.0 = load i32, ptr %.0.in, align 8             ; 2 uses
  %i.q = icmp eq i32 %.07, %.0
  br i1 %i.q, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.r = icmp eq i32 %.07, %i.m
  br i1 %i.r, label %.thread19, label %bb.e

.thread19:                                        ; preds = %.thread
  %.18.in20.v = select i1 %.not, i64 52, i64 416
  %.18.in20 = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.18.in20.v
  %.1821 = load i32, ptr %.18.in20, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.t = load i32, ptr %i.s, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.18.in.v = select i1 %.not, i64 52, i64 416
  %.18.in = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.18.in.v
  %.18 = load i32, ptr %.18.in, align 4
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.thread19, %bb.d, %bb.c
  %.2 = phi i32 [ %.1821, %.thread19 ], [ %.18, %bb.d ], [ %.07, %bb.c ], [ %.07, %.thread ]
  %.1 = phi i32 [ %i.t, %.thread19 ], [ %i.o, %bb.d ], [ %.0, %bb.c ], [ %i.m, %.thread ]
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %.2, i32 %.1) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.u = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.u, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_cores(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 196
  %i.f = load i16, ptr %i.e, align 4
  %2 = zext i16 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.h = load i16, ptr %i.g, align 4
  %3 = zext i16 %i.h to i32
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %2, i32 %3) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 520
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %spec.select = select i1 %.not, ptr @.str.5, ptr %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, null
  %.0 = select i1 %.not9, ptr @.str.5, ptr %i.h
  %i.i = tail call i32 @xstrcmp(ptr noundef nonnull %spec.select, ptr noundef nonnull %.0) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.j = sub nsw i32 0, %i.i
  %.06 = select i1 %.b, i32 %i.j, i32 %i.i
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_threads(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 912
  %i.f = load i16, ptr %i.e, align 8
  %2 = zext i16 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  %i.h = load i16, ptr %i.g, align 8
  %3 = zext i16 %i.h to i32
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %2, i32 %3) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_time_limit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 904
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  %i.h = load i32, ptr %i.g, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_time_left(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8         ; 2 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 904
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %switch = icmp ugt i32 %i.f, -3
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul i32 %i.f, 60
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i64 @job_time_used(ptr noundef nonnull %.val.val) #11
  %i.j = sub nsw i64 %i.h, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.05 = phi i64 [ %i.j, %bb.b ], [ 4294967295, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %switch10 = icmp ugt i32 %i.l, -3
  br i1 %switch10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = mul i32 %i.l, 60
  %i.n = zext i32 %i.m to i64
  %i.o = tail call i64 @job_time_used(ptr noundef nonnull %i.d) #11
  %i.p = sub nsw i64 %i.n, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.p, %bb.d ], [ 4294967295, %bb.c ]
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %.05, i64 %.0) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.q = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.q, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_min_memory(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 608 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 9223372036854775807
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 608 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 9223372036854775807        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.k = load i64, ptr %i.e, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.k, i64 %i.j) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.l = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.l, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_time_used(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @job_time_used(ptr noundef %.val.val) #11
  %i.f = tail call i64 @job_time_used(ptr noundef %i.d) #11
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.g = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.g, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_node_list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 536
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @hostlist_create(ptr noundef %i.f) #11 ; 3 uses
  tail call void @hostlist_sort(ptr noundef %i.i) #11
  %i.j = tail call ptr @hostlist_create(ptr noundef %i.h) #11 ; 3 uses
  tail call void @hostlist_sort(ptr noundef %i.j) #11
  %i.k = tail call i32 @hostlist_cmp_first(ptr noundef %i.i, ptr noundef %i.j) #11 ; 2 uses
  tail call void @hostlist_destroy(ptr noundef %i.i) #11
  tail call void @hostlist_destroy(ptr noundef %i.j) #11
  %.b.i = load i1, ptr @reverse_order, align 1
  %i.l = sub nsw i32 0, %i.k
  %spec.select.i = select i1 %.b.i, i32 %i.l, i32 %i.k
  ret i32 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_priority(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val7 = load ptr, ptr %0, align 8              ; 2 uses
  %i.a = getelementptr i8, ptr %.val7, i64 24
  %.val7.val = load i32, ptr %i.a, align 8        ; 2 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %.val7.val, i32 %i.d)
  %i.e = icmp eq i32 %.val7.val, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val7, i64 8
  %.val.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val.val, i64 648
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 648
  %i.l = load i32, ptr %i.k, align 8
  %.0.i8 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.j, i32 %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.0.i8, %bb.b ], [ %.0.i, %bb.a ] ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.m = sub nsw i32 0, %.0
  %spec.select = select i1 %.b, i32 %i.m, i32 %.0
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_partition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @xstrcmp(ptr noundef %.val.val, ptr noundef %i.d) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.f = sub nsw i32 0, %i.e
  %spec.select = select i1 %.b, i32 %i.f, i32 %i.e
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_time_start(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8         ; 2 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 808
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val, i64 440
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load i64, ptr @now, align 8              ; 2 uses
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.f, i64 %i.n)
  %.0.i = select i1 %i.m, i64 %spec.select.i, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 0
  %spec.select.i7 = tail call i64 @llvm.smax.i64(i64 %i.i, i64 %i.n)
  %.0.i8 = select i1 %i.q, i64 %spec.select.i7, i64 %i.i
  %.0.i9 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %.0.i, i64 %.0.i8) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.r = sub nsw i32 0, %.0.i9
  %spec.select = select i1 %.b, i32 %i.r, i32 %.0.i9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %spec.select, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_state_compact(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 440
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call ptr @job_state_string_compact(i32 noundef %i.f) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call ptr @job_state_string_compact(i32 noundef %i.i) #11
  %i.k = tail call i32 @xstrcmp(ptr noundef %i.g, ptr noundef %i.j) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.l = sub nsw i32 0, %i.k
  %spec.select = select i1 %.b, i32 %i.l, i32 %i.k
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 440
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call ptr @job_state_string(i32 noundef %i.f) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call ptr @job_state_string(i32 noundef %i.i) #11
  %i.k = tail call i32 @xstrcmp(ptr noundef %i.g, ptr noundef %i.j) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.l = sub nsw i32 0, %i.k
  %spec.select = select i1 %.b, i32 %i.l, i32 %i.k
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_user_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 984
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call ptr @uid_to_string_cached(i32 noundef %i.f) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 984
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call ptr @uid_to_string_cached(i32 noundef %i.i) #11
  %i.k = tail call i32 @xstrcmp(ptr noundef %i.g, ptr noundef %i.j) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.l = sub nsw i32 0, %i.k
  %spec.select = select i1 %.b, i32 %i.l, i32 %i.k
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_user_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 984
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 984
  %i.h = load i32, ptr %i.g, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_job_by_reservation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 736
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %spec.select = select i1 %.not, ptr @.str.5, ptr %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, null
  %.0 = select i1 %.not9, ptr @.str.5, ptr %i.h
  %i.i = tail call i32 @xstrcmp(ptr noundef nonnull %spec.select, ptr noundef nonnull %.0) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.j = sub nsw i32 0, %i.i
  %.06 = select i1 %.b, i32 %i.j, i32 %i.i
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_time_submit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 880
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 880
  %i.h = load i64, ptr %i.g, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %i.f, i64 %i.h) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.i, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_job_by_num_sct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8         ; 3 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 802
  %i.f = load i16, ptr %i.e, align 2
  %2 = zext i16 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 802
  %i.h = load i16, ptr %i.g, align 2
  %3 = zext i16 %i.h to i32
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %2, i32 %3) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.val, i64 196
  %i.j = load i16, ptr %i.i, align 4
  %4 = zext i16 %i.j to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.l = load i16, ptr %i.k, align 4
  %5 = zext i16 %i.l to i32
  %.0.i14 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %4, i32 %5) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.val, i64 912
  %i.n = load i16, ptr %i.m, align 8
  %6 = zext i16 %i.n to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  %i.p = load i16, ptr %i.o, align 8
  %7 = zext i16 %i.p to i32
  %.0.i15 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %6, i32 %7) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1      ; 3 uses
  %i.q = sub nsw i32 0, %.0.i
  %i.r = sub nsw i32 0, %.0.i14
  %i.s = sub nsw i32 0, %.0.i15
  %.011 = select i1 %.b, i32 %i.q, i32 %.0.i      ; 2 uses
  %.010 = select i1 %.b, i32 %i.r, i32 %.0.i14    ; 2 uses
  %.0 = select i1 %.b, i32 %i.s, i32 %.0.i15
  %.not = icmp eq i32 %.011, 0
  %.not13 = icmp eq i32 %.010, 0
  %.0..010 = select i1 %.not13, i32 %.0, i32 %.010
  %.012 = select i1 %.not, i32 %.0..010, i32 %.011
  ret i32 %.012
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @sort_jobs_by_start_time(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store i1 true, ptr @reverse_order, align 1
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_job_by_time_start) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sort_step_list(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #11
  store i64 %i.a, ptr @now, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 152), align 8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xstrdup(ptr noundef nonnull @.str.4) #11 ; 2 uses
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @params, i64 152), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #12
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %.032 = add i32 %i.g, -1                        ; 2 uses
  %i.h = icmp sgt i32 %.032, -1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.w
  %.034 = phi i32 [ %.0, %bb.w ], [ %.032, %bb.c ] ; 15 uses
  %.0.in33 = phi i32 [ %.1, %bb.w ], [ %i.g, %bb.c ] ; 4 uses
  store i1 false, ptr @reverse_order, align 1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 152), align 8 ; 3 uses
  %i.j = zext nneg i32 %.034 to i64               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1               ; 3 uses
  %.off = add i8 %i.l, -43
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.w, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %.034, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %.0.in33, -2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @reverse_order, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = icmp sgt i32 %.0.in33, 6
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.s = zext nneg i32 %.0.in33 to i64            ; 2 uses
  %i.t = getelementptr i8, ptr %i.i, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -7
  %i.v = tail call i32 @xstrncasecmp(ptr noundef %i.u, ptr noundef nonnull @.str.1, i64 noundef 7) #11
  %.not31 = icmp eq i32 %i.v, 0
  br i1 %.not31, label %bb.i, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.h
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 152), align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.j
  %.pre35 = load i8, ptr %.phi.trans.insert, align 1
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.w = icmp samesign ugt i32 %.034, 6
  br i1 %i.w, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 152), align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.s
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 45
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i1 true, ptr @reverse_order, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_cluster_name) #11
  %i.ac = add nsw i32 %.0.in33, -7
  br label %bb.w

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.g
  %i.ad = phi i8 [ %.pre35, %..thread_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %bb.g ]
  switch i8 %i.ad, label %bb.w [
    i8 98, label %bb.m
    i8 105, label %bb.o
    i8 78, label %bb.p
    i8 80, label %bb.q
    i8 108, label %bb.r
    i8 83, label %bb.s
    i8 77, label %bb.t
    i8 117, label %bb.u
    i8 85, label %bb.v
  ]

bb.m:                                             ; preds = %.thread
  %i.ae = tail call i32 @get_log_level() #11
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.2) #11
  br label %bb.w

bb.o:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_id) #11
  br label %bb.w

bb.p:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_node_list) #11
  br label %bb.w

bb.q:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_partition) #11
  br label %bb.w

bb.r:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_time_limit) #11
  br label %bb.w

bb.s:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_time_start) #11
  br label %bb.w

bb.t:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_time_used) #11
  br label %bb.w

bb.u:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_user_name) #11
  br label %bb.w

bb.v:                                             ; preds = %.thread
  tail call void @list_sort(ptr noundef %0, ptr noundef nonnull @_sort_step_by_user_id) #11
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %.thread, %bb.l, %bb.o, %bb.q, %bb.s, %bb.u, %bb.v, %bb.t, %bb.r, %bb.p, %bb.m, %bb.n
  %.1 = phi i32 [ %i.ac, %bb.l ], [ %.034, %.thread ], [ %.034, %.lr.ph ], [ %.034, %bb.n ], [ %.034, %bb.m ], [ %.034, %bb.o ], [ %.034, %bb.p ], [ %.034, %bb.q ], [ %.034, %bb.r ], [ %.034, %bb.s ], [ %.034, %bb.t ], [ %.034, %bb.u ], [ %.034, %bb.v ] ; 3 uses
  %.0 = add nsw i32 %.1, -1
  %i.ag = icmp sgt i32 %.1, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.w, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_step_by_cluster_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @xstrcmp(ptr noundef %i.c, ptr noundef %i.e) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.g = sub nsw i32 0, %i.f
  %spec.select = select i1 %.b, i32 %i.g, i32 %i.f
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_step_by_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.c, i32 %i.e)
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.j = load i32, ptr %i.i, align 8
  %.0.i5 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.h, i32 %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.0.i5, %bb.b ], [ %.0.i, %bb.a ] ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.k = sub nsw i32 0, %.0
  %spec.select = select i1 %.b, i32 %i.k, i32 %.0
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_step_by_node_list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @hostlist_create(ptr noundef %i.c) #11 ; 3 uses
  tail call void @hostlist_sort(ptr noundef %i.f) #11
  %i.g = tail call ptr @hostlist_create(ptr noundef %i.e) #11 ; 3 uses
  tail call void @hostlist_sort(ptr noundef %i.g) #11
  %i.h = tail call i32 @hostlist_cmp_first(ptr noundef %i.f, ptr noundef %i.g) #11 ; 2 uses
  tail call void @hostlist_destroy(ptr noundef %i.f) #11
  tail call void @hostlist_destroy(ptr noundef %i.g) #11
  %.b.i = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %i.h
  %spec.select.i = select i1 %.b.i, i32 %i.i, i32 %i.h
  ret i32 %spec.select.i
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_step_by_partition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %spec.select = select i1 %.not, ptr @.str.5, ptr %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  %.0 = select i1 %.not9, ptr @.str.5, ptr %i.e
  %i.f = tail call i32 @xstrcmp(ptr noundef nonnull %spec.select, ptr noundef nonnull %.0) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.g = sub nsw i32 0, %i.f
  %.06 = select i1 %.b, i32 %i.g, i32 %i.f
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_step_by_time_limit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 244
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.e = load i32, ptr %i.d, align 4
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.c, i32 %i.e) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.f = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.f, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_step_by_time_start(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load i64, ptr %i.d, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %i.c, i64 %i.e) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.f = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.f, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_step_by_time_used(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = load i64, ptr @now, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call double @difftime(i64 noundef %i.b, i64 noundef %i.d) #14
  %i.f = fptosi double %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call double @difftime(i64 noundef %i.b, i64 noundef %i.h) #14
  %i.j = fptosi double %i.i to i64
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %i.f, i64 %i.j) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.k = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.k, i32 %.0.i
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_step_by_user_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.c = load i32, ptr %i.b, align 8
  %i.d = tail call ptr @uid_to_string_cached(i32 noundef %i.c) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call ptr @uid_to_string_cached(i32 noundef %i.f) #11
  %i.h = tail call i32 @xstrcmp(ptr noundef %i.d, ptr noundef %i.g) #11 ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.i = sub nsw i32 0, %i.h
  %spec.select = select i1 %.b, i32 %i.i, i32 %i.h
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_sort_step_by_user_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.e = load i32, ptr %i.d, align 8
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.c, i32 %i.e) ; 2 uses
  %.b = load i1, ptr @reverse_order, align 1
  %i.f = sub nsw i32 0, %.0.i
  %spec.select = select i1 %.b, i32 %i.f, i32 %.0.i
  ret i32 %spec.select
}

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gid_to_string(i32 noundef) local_unnamed_addr #3

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #3

declare ptr @hostlist_create(ptr noundef) local_unnamed_addr #3

declare void @hostlist_sort(ptr noundef) local_unnamed_addr #3

declare i32 @hostlist_cmp_first(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hostlist_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @job_state_string(i32 noundef) local_unnamed_addr #3

declare ptr @job_state_string_compact(i32 noundef) local_unnamed_addr #3

declare i64 @job_time_used(ptr noundef) local_unnamed_addr #3

declare ptr @uid_to_string_cached(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
end_hunk_0
