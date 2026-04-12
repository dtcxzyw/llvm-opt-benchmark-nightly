inline.NumInlined: 560
inline.NumDeleted: 278
begin_hunk_0_@_ZN6hermes2vm10mathFroundEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double
  %i.j = fptrunc double %i.i to float             ; 2 uses
  %i.k = fpext float %i.j to double
  %i.l = fcmp uno float %i.j, 0.000000e+00
  %i.m = bitcast double %i.k to i64
  %.sroa.0.0.i = select i1 %i.l, i64 9221120237041090560, i64 %i.m, !prof !13
  br label %bb.c
end_hunk_0
