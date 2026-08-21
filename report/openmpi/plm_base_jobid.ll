Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/plm_base_jobid?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prte_process_info_t = type { %struct.pmix_proc, %struct.pmix_proc, ptr, %struct.pmix_proc, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i16, ptr, ptr, ptr, i8, ptr, i8 }
%struct.pmix_proc = type { [256 x i8], i32 }
%struct.prte_plm_globals_t = type { ptr, i32, %struct.timeval, %struct.pmix_data_buffer, i8, i64, %struct.pmix_list_t, i8 }
%struct.timeval = type { i64, i64 }
%struct.pmix_data_buffer = type { ptr, ptr, ptr, i64, i64 }
%struct.pmix_list_t = type { %struct.pmix_object_t, %struct.pmix_list_item_t, i64 }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_list_item_t = type { %struct.pmix_object_t, ptr, ptr, i32 }

@.str = private unnamed_addr constant [19 x i8] c"PMIX_SERVER_NSPACE\00", align 1
@prte_process_info = external global %struct.prte_process_info_t, align 8
@prte_plm_globals = external global %struct.prte_plm_globals_t, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"PMIX_SERVER_RANK\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-%s-%u\00", align 1
@prte_tool_basename = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%s@0\00", align 1
@reuse = internal unnamed_addr global i1 false, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s@%u\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"PRTE ERROR: %s in file %s at line %d\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"base/plm_base_jobid.c\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @prte_plm_base_set_hnp_name() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str) #8 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PMIx_Load_procid(ptr noundef nonnull @prte_process_info, ptr noundef nonnull %i.b, i32 noundef 0) #8
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull %i.b) #8
  store ptr %i.c, ptr @prte_plm_globals, align 8, !tbaa !11
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.1) #8 ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #8
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 256), align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 260), ptr noundef nonnull align 8 dereferenceable(260) @prte_process_info, i64 260, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @prte_plm_globals, align 8, !tbaa !11 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @prte_tool_basename, align 8, !tbaa !8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !29
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 832), align 8, !tbaa !30
  %i.l = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull @prte_plm_globals, ptr noundef nonnull @.str.2, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.k) #8 ; 0 uses
  %.pre = load ptr, ptr @prte_plm_globals, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %.pre, %bb.f ], [ %i.g, %bb.e ]
  %i.n = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, ptr noundef %i.m) #8 ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @PMIx_Load_procid(ptr noundef nonnull @prte_process_info, ptr noundef %i.o, i32 noundef 0) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 260), ptr noundef nonnull align 8 dereferenceable(260) @prte_process_info, i64 260, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @free(ptr noundef %i.p) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #2

declare void @PMIx_Load_procid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @pmix_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @prte_plm_base_create_jobid(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.d = load i16, ptr %i.c, align 4, !tbaa !31
  %i.e = and i16 %i.d, 512
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @reuse, align 1
  br i1 %.b, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_globals, i64 8), align 8, !tbaa !37
  br label %bb.d

.preheader:                                       ; preds = %bb.b, %.preheader
  %.01320 = phi i32 [ %1, %.preheader ], [ 1, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr @prte_plm_globals, align 8, !tbaa !11
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 254, ptr noundef nonnull @.str.4, ptr noundef %i.f, i32 noundef %.01320) #8 ; 0 uses
  %i.h = call ptr @prte_get_job_data_object(ptr noundef nonnull %i.a) #8
  %i.i = icmp eq ptr %i.h, null
  %1 = add nuw nsw i32 %.01320, 1
  br i1 %i.i, label %bb.c, label %.preheader

bb.c:                                             ; preds = %.preheader
  store i32 %.01320, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_globals, i64 8), align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.j = phi i32 [ %.pre, %._crit_edge ], [ %.01320, %bb.c ]
  %i.k = load ptr, ptr @prte_plm_globals, align 8, !tbaa !11
  %i.l = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4, ptr noundef %i.k, i32 noundef %i.j) #8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !8
  call void @PMIx_Load_nspace(ptr noundef nonnull %i.m, ptr noundef %i.n) #8
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !8
  call void @free(ptr noundef %i.o) #8
  %i.p = call i32 @prte_set_job_data_object(ptr noundef %0) #8 ; 4 uses
  switch i32 %i.p, label %bb.e [
    i32 0, label %bb.f
    i32 -43, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = call ptr @prte_strerror(i32 noundef %i.p) #8
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %i.q, ptr noundef nonnull @.str.7, i32 noundef 125) #8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_globals, i64 8), align 8, !tbaa !37
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_globals, i64 8), align 8, !tbaa !37
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @reuse, align 1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @prte_plm_globals, i64 8), align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d, %bb.a
  %.014 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ %i.p, %bb.e ], [ %i.p, %bb.d ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.014
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare ptr @prte_get_job_data_object(ptr noundef) local_unnamed_addr #3

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @PMIx_Load_nspace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @prte_set_job_data_object(ptr noundef) local_unnamed_addr #3

declare ptr @prte_strerror(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"", !9, i64 0, !5, i64 8, !13, i64 16, !15, i64 32, !16, i64 72, !14, i64 80, !17, i64 88, !16, i64 360}
!13 = !{!"timeval", !14, i64 0, !14, i64 8}
!14 = !{!"long", !6, i64 0}
!15 = !{!"pmix_data_buffer", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !14, i64 32}
!16 = !{!"_Bool", !6, i64 0}
!17 = !{!"pmix_list_t", !18, i64 0, !22, i64 120, !14, i64 264}
!18 = !{!"pmix_object_t", !6, i64 0, !19, i64 40, !5, i64 48, !20, i64 56}
!19 = !{!"p1 _ZTS12pmix_class_t", !10, i64 0}
!20 = !{!"pmix_tma", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !21, i64 56}
!21 = !{!"any p2 pointer", !10, i64 0}
!22 = !{!"pmix_list_item_t", !18, i64 0, !23, i64 120, !23, i64 128, !5, i64 136}
!23 = !{!"p1 _ZTS16pmix_list_item_t", !10, i64 0}
!24 = !{!25, !5, i64 256}
!25 = !{!"prte_process_info_t", !26, i64 0, !26, i64 260, !9, i64 520, !26, i64 528, !5, i64 788, !5, i64 792, !5, i64 796, !9, i64 800, !27, i64 808, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !6, i64 836, !28, i64 838, !9, i64 840, !9, i64 848, !9, i64 856, !16, i64 864, !9, i64 872, !16, i64 880}
!26 = !{!"pmix_proc", !6, i64 0, !5, i64 256}
!27 = !{!"p2 omnipotent char", !21, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!25, !9, i64 800}
!30 = !{!25, !5, i64 832}
!31 = !{!32, !28, i64 780}
!32 = !{!"", !22, i64 0, !5, i64 144, !27, i64 152, !33, i64 160, !6, i64 168, !9, i64 424, !5, i64 432, !5, i64 436, !34, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !34, i64 464, !35, i64 472, !10, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !26, i64 516, !5, i64 776, !28, i64 780, !17, i64 784, !15, i64 1056, !17, i64 1096, !6, i64 1368, !5, i64 1624, !27, i64 1632, !36, i64 1640}
!33 = !{!"p1 _ZTS25prte_schizo_base_module_t", !10, i64 0}
!34 = !{!"p1 _ZTS20pmix_pointer_array_t", !10, i64 0}
!35 = !{!"p1 _ZTS14prte_job_map_t", !10, i64 0}
!36 = !{!"", !18, i64 0, !17, i64 120, !27, i64 392}
!37 = !{!12, !5, i64 8}
end_hunk_0
