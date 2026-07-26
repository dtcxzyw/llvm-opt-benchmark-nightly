inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos5index7strtree12EnvelopeUtil15maximumDistanceEPKNS_4geom8EnvelopeES6_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.c = fcmp olt double %i.b, %i.a
  %.sroa.speculated26 = select i1 %i.c, double %i.b, double %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.h = fcmp olt double %i.g, %i.e
  %.sroa.speculated21 = select i1 %i.h, double %i.g, double %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !12 ; 2 uses
  %i.m = fcmp olt double %i.j, %i.l
  %.sroa.speculated16 = select i1 %i.m, double %i.l, double %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  %i.r = fcmp olt double %i.o, %i.q
  %.sroa.speculated = select i1 %i.r, double %i.q, double %i.o
  %i.s = fsub double %.sroa.speculated16, %.sroa.speculated26 ; 2 uses
  %i.t = fsub double %.sroa.speculated, %.sroa.speculated21 ; 2 uses
  %i.u = fmul double %i.s, %i.s
  %i.v = fmul double %i.t, %i.t
  %i.w = fadd double %i.u, %i.v
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.w)
  ret double %sqrt.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4geos4geom8EnvelopeE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!10 = !{!"double", !6, i64 0}
!11 = !{!9, !10, i64 16}
!12 = !{!9, !10, i64 8}
!13 = !{!9, !10, i64 24}
end_hunk_0
