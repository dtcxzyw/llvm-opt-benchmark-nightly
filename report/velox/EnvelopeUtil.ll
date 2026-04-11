inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos5index7strtree12EnvelopeUtil15maximumDistanceEPKNS_4geom8EnvelopeES6_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = load double, ptr %0, align 8, !tbaa !7     ; 2 uses
  %3 = load double, ptr %1, align 8, !tbaa !7     ; 2 uses
  %4 = fcmp olt double %3, %2
  %.sroa.speculated26 = select i1 %4, double %3, double %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load double, ptr %5, align 8, !tbaa !10    ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = load double, ptr %7, align 8, !tbaa !10    ; 2 uses
  %9 = fcmp olt double %8, %6
  %.sroa.speculated21 = select i1 %9, double %8, double %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load double, ptr %10, align 8, !tbaa !11  ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load double, ptr %12, align 8, !tbaa !11  ; 2 uses
  %14 = fcmp olt double %11, %13
  %.sroa.speculated16 = select i1 %14, double %13, double %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load double, ptr %15, align 8, !tbaa !12  ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %18 = load double, ptr %17, align 8, !tbaa !12  ; 2 uses
  %19 = fcmp olt double %16, %18
  %.sroa.speculated = select i1 %19, double %18, double %16
  %20 = fsub double %.sroa.speculated16, %.sroa.speculated26 ; 2 uses
  %21 = fsub double %.sroa.speculated, %.sroa.speculated21 ; 2 uses
  %22 = fmul double %20, %20
  %23 = fmul double %21, %21
  %24 = fadd double %22, %23
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %24)
  ret double %sqrt.i
}

end_hunk_0
begin_hunk_1_@llvm.sqrt.f64
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4geos4geom8EnvelopeE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 16}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !9, i64 24}
end_hunk_1
