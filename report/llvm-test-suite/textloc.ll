inline.NumInlined: 1
begin_hunk_0_@Overlap:bb.a
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = uitofp nneg i32 %i.e to float            ; 2 uses
  %2 = sitofp i32 %i.m to float
  %3 = fdiv float %i.s, %2
  %4 = sitofp i32 %i.n to float
  %5 = fdiv float %i.s, %4
  %6 = fcmp oge float %3, 5.000000e-01
  %7 = fcmp oge float %5, 5.000000e-01
  %i.t = select i1 %6, i1 %7, i1 false
  br label %bb.l

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@Overlap:bb.a
  br i1 %or.cond11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = uitofp nneg i32 %i.l to float            ; 2 uses
  %8 = sitofp i32 %i.m to float
  %9 = fdiv float %i.y, %8
  %10 = sitofp i32 %i.n to float
  %11 = fdiv float %i.y, %10
  %12 = fcmp oge float %9, 5.000000e-01
  %13 = fcmp oge float %11, 5.000000e-01
  %i.z = select i1 %12, i1 %13, i1 false
  br label %bb.l

bb.e:                                             ; preds = %bb.c
end_hunk_1
