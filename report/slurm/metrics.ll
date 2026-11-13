Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/metrics?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@metrics_g_init:bb.a
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.metrics_g_init) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

declare ptr @plugin_context_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @error(ptr noundef, ...) local_unnamed_addr #5

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @metrics_g_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @g_context_lock) #7 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #8
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.metrics_g_fini) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @g_context, align 8        ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @plugin_context_destroy(ptr noundef nonnull %i.c) #7 ; 0 uses
  store ptr null, ptr @g_context, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr @plugin_inited, align 4
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @g_context_lock) #7 ; 2 uses
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @__errno_location() #8
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.metrics_g_fini) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

declare i32 @plugin_context_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @metrics_create_metric(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 64, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.4, i32 noundef 170, ptr noundef nonnull @__func__.metrics_create_metric) #7 ; 8 uses
  store i32 %6, ptr %i.a, align 8
  %i.b = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.4, i32 noundef 173, ptr noundef nonnull @__func__.metrics_create_metric) #7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %2, i64 %3, i1 false)
  %i.d = tail call ptr @xstrdup(ptr noundef %5) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %_keyval_sort.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %.not9.i = icmp eq ptr %i.h, null
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not9.i, label %bb.b, label %.preheader.i, !llvm.loop !10

bb.b:                                             ; preds = %.preheader.i
  tail call void @qsort(ptr noundef nonnull %7, i64 noundef %indvars.iv.i, i64 noundef 8, ptr noundef nonnull @_keyval_cmp) #7
  br label %_keyval_sort.exit

_keyval_sort.exit:                                ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %7, ptr %i.i, align 8
  %i.j = tail call ptr @xstrdup(ptr noundef %4) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %1, ptr %i.m, align 8
  ret ptr %i.a
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @metrics_free_metric(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.e) #7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @slurm_xfree(ptr noundef nonnull %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_free_metric_keyval_array.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  store ptr %i.i, ptr %i.b, align 8
  %.not35.i = icmp eq ptr %i.i, null
  br i1 %.not35.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ]
  %i.j = phi ptr [ %i.o, %bb.d ], [ %i.i, %.preheader.i ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  call void @slurm_xfree(ptr noundef nonnull %i.b) #7
  br label %.loopexit.i

bb.d:                                             ; preds = %.lr.ph.i
  call void @slurm_xfree(ptr noundef nonnull %i.j) #7
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @slurm_xfree(ptr noundef nonnull %i.m) #7
  call void @slurm_xfree(ptr noundef nonnull %i.b) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  store ptr %i.o, ptr %i.b, align 8
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !11

.loopexit.i:                                      ; preds = %bb.d, %bb.c, %.preheader.i
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  br label %_free_metric_keyval_array.exit

_free_metric_keyval_array.exit:                   ; preds = %bb.b, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @slurm_xfree(ptr noundef nonnull %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.q, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.c) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_free_metric_keyval_array.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @metrics_serialize_struct(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  br label %bb.b

2:                                                ; preds = %bb.b
  %3 = add nuw nsw i64 %.01016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %3, 5
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !12

bb.b:                                             ; preds = %bb.a, %2
  %.01016 = phi i64 [ 0, %bb.a ], [ %3, %2 ]      ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @parse_struct_ops, i64 %.01016 ; 2 uses
  %i.c = load i32, ptr %i.b, align 16
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.c, label %2

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr %5(ptr noundef %1) #7        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr @plugin_inited, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %metrics_g_free_set.exit, label %metrics_g_dump.exit

metrics_g_dump.exit:                              ; preds = %bb.d
  %i.g = load ptr, ptr @ops, align 8
  %i.h = call i32 %i.g(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #7, !inline_history !13 ; 0 uses
  %.pr = load i32, ptr @plugin_inited, align 4
  %i.i = icmp eq i32 %.pr, 1
  br i1 %i.i, label %metrics_g_free_set.exit, label %bb.e

bb.e:                                             ; preds = %metrics_g_dump.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 8), align 8
  %i.k = call i32 %i.j(ptr noundef nonnull %6) #7, !inline_history !14 ; 0 uses
  br label %metrics_g_free_set.exit

metrics_g_free_set.exit:                          ; preds = %bb.d, %metrics_g_dump.exit, %bb.e
  %i.l = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %metrics_g_free_set.exit, %bb.c
  %.011 = phi ptr [ %i.l, %metrics_g_free_set.exit ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

.loopexit:                                        ; preds = %2, %bb.f
  %i.m = phi ptr [ %.011, %bb.f ], [ null, %2 ]
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define dso_local i32 @metrics_g_dump(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @plugin_inited, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @ops, align 8
  %i.d = tail call i32 %i.c(ptr noundef %0, ptr noundef %1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @metrics_g_free_set(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @plugin_inited, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 8), align 8
  %i.d = tail call i32 %i.c(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @metrics_g_parse_jobs_metrics(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @plugin_inited, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 16), align 8
  %i.d = tail call ptr %i.c(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @metrics_g_parse_nodes_metrics(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @plugin_inited, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 24), align 8
  %i.d = tail call ptr %i.c(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @metrics_g_parse_parts_metrics(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @plugin_inited, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 32), align 8
  %i.d = tail call ptr %i.c(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @metrics_g_parse_sched_metrics(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @plugin_inited, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 40), align 8
  %i.d = tail call ptr %i.c(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @metrics_g_parse_ua_metrics(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @plugin_inited, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 48), align 8
  %i.d = tail call ptr %i.c(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @_keyval_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = tail call i32 @xstrcmp(ptr noundef %i.c, ptr noundef %i.d) #7
  ret i32 %i.e
}

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { noreturn nounwind }

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
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !8, !9}
!12 = distinct !{!12, !8, !9}
!13 = !{ptr @metrics_g_dump}
!14 = !{ptr @metrics_g_free_set}
end_hunk_0
