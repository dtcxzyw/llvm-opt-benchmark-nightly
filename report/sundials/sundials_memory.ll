Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_memory?download=true
inline.NumInlined: 5
begin_hunk_0_@SUNMemoryHelper_NewEmpty:bb.a
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNMemoryHelper_CopyOps(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SUNMemoryHelper_ImplementsRequiredOps(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = icmp ne ptr %i.i, null
  %spec.select = zext i1 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @SUNMemoryHelper_Alias(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.c, align 8, !tbaa !12
  %i.d = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @SUNMemoryHelper_Wrap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.c, align 8, !tbaa !12
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @SUNMemoryHelper_GetAllocStats(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call i32 %i.d(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @SUNMemoryHelper_Alloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = tail call i32 %i.c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) #12
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define i32 @SUNMemoryHelper_AllocStrided(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) #12
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @SUNMemoryHelper_Dealloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @SUNMemoryHelper_Copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #12
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @SUNMemoryHelper_CopyAsync(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call i32 %.sink(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #12
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define i32 @SUNMemoryHelper_Destroy(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #12
  tail call void @free(ptr noundef nonnull %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.c ], [ 0, %bb.d ]
  ret i32 %.010
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @SUNMemoryHelper_Clone(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1 = load ptr, ptr %i.a, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !30
  %.not13 = icmp ne ptr %i.f, null
  %.not13.a = icmp eq ptr %1, null
  %or.cond = select i1 %.not13, i1 true, i1 %.not13.a
  br i1 %or.cond, label %SUNMemoryHelper_NewEmpty.exit.thread, label %SUNMemoryHelper_NewEmpty.exit

SUNMemoryHelper_NewEmpty.exit:                    ; preds = %bb.b
  %i.g = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11 ; 4 uses
  %calloc.i = tail call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %calloc.i, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.i, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %calloc.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  br label %SUNMemoryHelper_NewEmpty.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr %i.e(ptr noundef nonnull %0) #12
  br label %SUNMemoryHelper_NewEmpty.exit.thread

SUNMemoryHelper_NewEmpty.exit.thread:             ; preds = %SUNMemoryHelper_NewEmpty.exit, %bb.b, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ], [ %i.g, %SUNMemoryHelper_NewEmpty.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @SUNMemoryHelper_SetDefaultQueue(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !31
  ret i32 0
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 16}
!9 = !{!"SUNMemory_", !10, i64 0, !5, i64 8, !5, i64 12, !11, i64 16, !11, i64 24}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 24}
!13 = !{!14, !15, i64 16}
!14 = !{!"SUNMemoryHelper_", !10, i64 0, !10, i64 8, !15, i64 16, !16, i64 24}
!15 = !{!"p1 _ZTS20SUNMemoryHelper_Ops_", !10, i64 0}
!16 = !{!"p1 _ZTS11SUNContext_", !10, i64 0}
!17 = !{!14, !16, i64 24}
!18 = !{!19, !10, i64 0}
!19 = !{!"SUNMemoryHelper_Ops_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!20 = !{!19, !10, i64 8}
!21 = !{!19, !10, i64 16}
!22 = !{!9, !10, i64 0}
!23 = !{!9, !5, i64 8}
!24 = !{!9, !5, i64 12}
!25 = !{!19, !10, i64 40}
!26 = !{!19, !10, i64 24}
!27 = !{!19, !10, i64 32}
!28 = !{!19, !10, i64 56}
!29 = !{!19, !10, i64 48}
!30 = !{!14, !10, i64 0}
!31 = !{!14, !10, i64 8}
end_hunk_0
