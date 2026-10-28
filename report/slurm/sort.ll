Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/sort?download=true
inline.NumInlined: 69
inline.NumDeleted: 10
begin_hunk_0_@_sort_job_by_priority:bb.a

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
  %.06 = phi i32 [ %spec.select, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.06
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
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 802
  %i.h = load i16, ptr %i.g, align 2
  %.0.i = tail call i32 @llvm.ucmp.i32.i16(i16 %i.f, i16 %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.val, i64 196
  %i.j = load i16, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.l = load i16, ptr %i.k, align 4
  %.0.i14 = tail call i32 @llvm.ucmp.i32.i16(i16 %i.j, i16 %i.l) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.val, i64 912
  %i.n = load i16, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  %i.p = load i16, ptr %i.o, align 8
  %.0.i15 = tail call i32 @llvm.ucmp.i32.i16(i16 %i.n, i16 %i.p) ; 2 uses
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
end_hunk_0
