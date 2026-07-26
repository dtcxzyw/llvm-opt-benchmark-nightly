begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4geos9operation9overlayng14EdgeSourceInfoC1Ehib = unnamed_addr alias void (ptr, i8, i32, i1), ptr @_ZN4geos9operation9overlayng14EdgeSourceInfoC2Ehib
@_ZN4geos9operation9overlayng14EdgeSourceInfoC1Eh = unnamed_addr alias void (ptr, i8), ptr @_ZN4geos9operation9overlayng14EdgeSourceInfoC2Eh

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng14EdgeSourceInfoC2Ehib(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 3), (4, 8)) %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  store i8 %1, ptr %0, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.b, align 1, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.a, ptr %i.c, align 2, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng14EdgeSourceInfoC2Eh(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 3), (4, 8)) %0, i8 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  store i8 %1, ptr %0, align 4, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.a, align 1, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.b, align 2, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !6, i64 0}
!9 = !{!"_ZTSN4geos9operation9overlayng14EdgeSourceInfoE", !6, i64 0, !6, i64 1, !10, i64 2, !5, i64 4}
!10 = !{!"bool", !6, i64 0}
!11 = !{!9, !6, i64 1}
!12 = !{!9, !10, i64 2}
!13 = !{!9, !5, i64 4}
end_hunk_0
