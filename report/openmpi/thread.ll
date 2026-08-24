Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/thread?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@pmix_debug_threads = local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [14 x i8] c"pmix_thread_t\00", align 1
@pmix_object_t_class = external global %struct.pmix_class_t, align 8
@pmix_thread_t_class = global %struct.pmix_class_t { ptr @.str, ptr @pmix_object_t_class, ptr @pmix_thread_construct, ptr null, i32 0, i32 0, ptr null, ptr null, i64 144 }, align 8
@pmix_main_thread = internal unnamed_addr global i64 0, align 8
@pmix_tsd_key_values = internal unnamed_addr global ptr null, align 8
@pmix_tsd_key_values_count = internal unnamed_addr global i32 0, align 4
@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @pmix_thread_construct(ptr nofree noundef writeonly captures(none) initializes((120, 128), (136, 144)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 -1, ptr %i.b, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @pmix_thread_start(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = tail call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %i.c, ptr noundef %0) #11
  %i.e = icmp ne i32 %i.d, 0
  %i.f = sext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @pmix_thread_join(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 @pthread_join(i64 noundef %i.b, ptr noundef %1) #11
  store i64 -1, ptr %i.a, align 8, !tbaa !16
  %i.d = icmp ne i32 %i.c, 0
  %i.e = sext i1 %i.d to i32
  ret i32 %i.e
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @pmix_thread_self_compare(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i64 @pthread_self() #12
  %i.d = icmp eq i64 %i.b, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @pmix_thread_get_self() local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_thread_t_class, i64 56), align 8, !tbaa !17
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef %i.a) #13 ; 9 uses
  %i.c = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !20
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_thread_t_class, i64 32), align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.c, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_thread_t_class) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not22.i = icmp eq ptr %i.b, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.b, ptr noundef null) #11 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @pmix_thread_t_class, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 1, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_thread_t_class, i64 40), align 8, !tbaa !24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.d ]
  tail call void %i.l(ptr noundef nonnull %i.b) #11, !inline_history !26
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !27

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.c, %bb.d
  %i.o = tail call i64 @pthread_self() #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @pmix_thread_kill(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 @pthread_kill(i64 noundef %i.b, i32 noundef %1) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_kill(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @pmix_tsd_key_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pthread_key_create(ptr noundef %0, ptr noundef %1) #11 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @pthread_self() #12
  %i.d = load i64, ptr @pmix_main_thread, align 8, !tbaa !29
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @pmix_tsd_key_values, align 8, !tbaa !30
  %i.g = load i32, ptr @pmix_tsd_key_values_count, align 4, !tbaa !20 ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 4
  %i.k = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.j) #14 ; 2 uses
  store ptr %i.k, ptr @pmix_tsd_key_values, align 8, !tbaa !30
  %i.l = load i32, ptr %0, align 4, !tbaa !20
  %i.m = sext i32 %i.g to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.m ; 2 uses
  store i32 %i.l, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !34
  store i32 %i.h, ptr @pmix_tsd_key_values_count, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_tsd_keys_destruct() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @pmix_tsd_key_values_count, align 4, !tbaa !20
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre11 = load ptr, ptr @pmix_tsd_key_values, align 8, !tbaa !30
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.c = phi ptr [ %.pre11, %.lr.ph.preheader ], [ %i.o, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32
  %i.f = tail call ptr @pthread_getspecific(i32 noundef %i.e) #11
  %i.g = load ptr, ptr @pmix_tsd_key_values, align 8, !tbaa !30 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void %i.j(ptr noundef %i.f) #11
  %i.k = load ptr, ptr @pmix_tsd_key_values, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  %i.n = tail call i32 @pthread_setspecific(i32 noundef %i.m, ptr noundef null) #11 ; 0 uses
  %.pre = load ptr, ptr @pmix_tsd_key_values, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.g, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr @pmix_tsd_key_values_count, align 4, !tbaa !20 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.c
  %i.s = icmp sgt i32 %i.p, 0
  br i1 %i.s, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr @pmix_tsd_key_values, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.t) #11
  store i32 0, ptr @pmix_tsd_key_values_count, align 4, !tbaa !20
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @pmix_thread_set_main() local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @pthread_self() #12
  store i64 %i.a, ptr @pmix_main_thread, align 8, !tbaa !29
  ret void
}

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 120}
!9 = !{!"pmix_thread_t", !10, i64 0, !12, i64 120, !12, i64 128, !15, i64 136}
!10 = !{!"pmix_object_t", !6, i64 0, !11, i64 40, !5, i64 48, !13, i64 56}
!11 = !{!"p1 _ZTS12pmix_class_t", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"pmix_tma", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !14, i64 56}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!9, !15, i64 136}
!17 = !{!18, !15, i64 56}
!18 = !{!"pmix_class_t", !19, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 48, !15, i64 56}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!18, !5, i64 32}
!22 = !{!10, !11, i64 40}
!23 = !{!10, !5, i64 48}
!24 = !{!18, !14, i64 40}
!25 = !{!12, !12, i64 0}
!26 = distinct !{null, null}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!15, !15, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS18pmix_tsd_key_value", !12, i64 0}
!32 = !{!33, !5, i64 0}
!33 = !{!"pmix_tsd_key_value", !5, i64 0, !12, i64 8}
!34 = !{!33, !12, i64 8}
!35 = distinct !{!35, !28}
end_hunk_0
