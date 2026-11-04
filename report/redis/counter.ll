Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/counter?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @je_counter_accum_init(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 !guid !11 {
bb.a:
  store atomic i64 0, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !16
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_counter_prefork(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 !guid !17 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_counter_postfork_parent(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 !guid !18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_counter_postfork_child(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 !guid !19 {
bb.a:
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i64 -1687430153874373478}
!12 = !{!"long", !8, i64 0}
!13 = !{!"", !12, i64 0}
!14 = !{!"locked_u64_s", !13, i64 0}
!15 = !{!"counter_accum_s", !14, i64 0, !12, i64 8}
!16 = !{!15, !12, i64 8}
!17 = !{i64 2318244646066078191}
!18 = !{i64 5513912442344799143}
!19 = !{i64 4830778947314130845}
end_hunk_0
