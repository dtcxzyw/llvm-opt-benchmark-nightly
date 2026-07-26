begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos9operation5valid19PolygonRingSelfNode10isExteriorEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call noundef zeroext i1 @_ZN4geos9operation5valid11PolygonNode17isInteriorSegmentEPKNS_4geom10CoordinateES6_S6_S6_(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %i.h = xor i1 %1, %i.g
  ret i1 %i.h
}

declare noundef zeroext i1 @_ZN4geos9operation5valid11PolygonNode17isInteriorSegmentEPKNS_4geom10CoordinateES6_S6_S6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

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
!8 = !{!9, !12, i64 24}
!9 = !{!"_ZTSN4geos9operation5valid19PolygonRingSelfNodeE", !10, i64 0, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!10 = !{!"_ZTSN4geos4geom10CoordinateE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"double", !6, i64 0}
!12 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!9, !12, i64 32}
!15 = !{!9, !12, i64 40}
end_hunk_0
