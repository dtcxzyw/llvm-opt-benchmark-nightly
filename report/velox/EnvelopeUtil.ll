inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos5index7strtree12EnvelopeUtil15maximumDistanceEPKNS_4geom8EnvelopeES6_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = load <4 x double>, ptr %0, align 8, !tbaa !7 ; 2 uses
  %3 = load <4 x double>, ptr %1, align 8, !tbaa !7 ; 2 uses
  %4 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %5 = shufflevector <4 x double> %2, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %6 = fcmp olt <2 x double> %4, %5
  %7 = select <2 x i1> %6, <2 x double> %4, <2 x double> %5
  %8 = shufflevector <4 x double> %2, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %9 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %10 = fcmp olt <2 x double> %8, %9
  %11 = select <2 x i1> %10, <2 x double> %9, <2 x double> %8
  %12 = fsub <2 x double> %11, %7                 ; 2 uses
  %13 = fmul <2 x double> %12, %12                ; 2 uses
  %shift = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %13, %shift
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %14)
  ret double %sqrt.i
}

end_hunk_0
begin_hunk_1_@llvm.sqrt.f64
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
end_hunk_1
