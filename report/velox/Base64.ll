inline.NumInlined: 417
inline.NumDeleted: 154
begin_hunk_0_@_ZN8facebook5velox8encoding6Base6410decodeMimeEPKcmPc:bb.a
  br label %bb.u

bb.q:                                             ; preds = %.thread, %.thread.thread, %bb.m
  %.493 = phi i64 [ %i.al, %.thread ], [ %.492, %.thread.thread ], [ %i.al, %bb.m ] ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.493, i64 %2)
  %i.be = icmp ult i64 %.493, %2
  br i1 %i.be, label %.lr.ph, label %.critedge._crit_edge

.critedge:                                        ; preds = %.lr.ph
  %i.bf = add i64 %.5136, 1                       ; 2 uses
  %exitcond113.not = icmp eq i64 %i.bf, %umax
  br i1 %exitcond113.not, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %.critedge
  %.5136 = phi i64 [ %i.bf, %.critedge ], [ %.493, %bb.q ] ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_1
