begin_hunk_0_@_ZN4geos4util7rint_vcEd:bb.a

bb.f:                                             ; preds = %bb.d
  %i.j = fmul double %i.c, 5.000000e-01           ; 2 uses
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fcmp oeq double %i.k, %i.j
  %i.m = fadd double %i.c, 1.000000e+00
  %i.n = select i1 %i.l, double %i.c, double %i.m
end_hunk_0
begin_hunk_1_@_ZN4geos4util7rint_vcEd:bb.a

bb.k:                                             ; preds = %bb.i
  %i.r = fmul double %i.c, 5.000000e-01           ; 2 uses
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fcmp oeq double %i.s, %i.r
  %i.u = fadd double %i.c, -1.000000e+00
  %i.v = select i1 %i.t, double %i.c, double %i.u
end_hunk_1
begin_hunk_2_@_ZN4geos4util7rint_vcEd:bb.a
  ret double %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
