Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dtopen?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef ptr @dtopen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #4 ; 10 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.e = tail call ptr @dtdisc(ptr noundef nonnull %i.c, ptr noundef nonnull %0) #5 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !16
  store i32 %3, ptr %i.h, align 8, !tbaa !18
  %i.j = load ptr, ptr %1, align 8, !tbaa !19
  store ptr %i.j, ptr %i.c, align 8, !tbaa !20
  store ptr %1, ptr %i.d, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare ptr @dtdisc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
!8 = !{!9, !10, i64 56}
!9 = !{!"dt_s_", !10, i64 0, !11, i64 8, !12, i64 16, !10, i64 56, !5, i64 64, !14, i64 72, !14, i64 80, !10, i64 88}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS9dtdisc_s_", !10, i64 0}
!12 = !{!"", !5, i64 0, !13, i64 8, !6, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!13 = !{!"p1 _ZTS9dtlink_s_", !10, i64 0}
!14 = !{!"p1 _ZTS5dt_s_", !10, i64 0}
!15 = !{!9, !5, i64 64}
!16 = !{!17, !5, i64 8}
!17 = !{!"", !10, i64 0, !5, i64 8}
!18 = !{!5, !5, i64 0}
!19 = !{!17, !10, i64 0}
!20 = !{!9, !10, i64 0}
end_hunk_0
