begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@bottomsite = local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden double @ngdist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = load double, ptr %0, align 8, !tbaa !8
  %3 = load double, ptr %1, align 8, !tbaa !8
  %4 = fsub double %2, %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load double, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !13
  %9 = fsub double %6, %8
  %i.a = tail call double @hypot(double noundef %4, double noundef %9) #2
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!8 = !{!9, !11, i64 0}
!9 = !{!"Site", !10, i64 0, !12, i64 16}
!10 = !{!"Point", !11, i64 0, !11, i64 8}
!11 = !{!"double", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !11, i64 8}
end_hunk_0
