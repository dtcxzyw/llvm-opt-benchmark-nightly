inline.NumInlined: 1
begin_hunk_0_@Overlap:bb.a
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = uitofp nneg i32 %i.e to float
  %2 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %3 = insertelement <2 x i32> %2, i32 %i.m, i64 1
  %4 = sitofp <2 x i32> %3 to <2 x float>
  %5 = insertelement <2 x float> poison, float %i.s, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x float> %6, %4
  %8 = fcmp oge <2 x float> %7, splat (float 5.000000e-01) ; 2 uses
  %9 = extractelement <2 x i1> %8, i64 0
  %10 = extractelement <2 x i1> %8, i64 1
  %i.t = select i1 %10, i1 %9, i1 false
  br label %bb.l

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@Overlap:bb.a
  br i1 %or.cond11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = uitofp nneg i32 %i.l to float
  %11 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %12 = insertelement <2 x i32> %11, i32 %i.m, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = insertelement <2 x float> poison, float %i.y, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fdiv <2 x float> %15, %13
  %17 = fcmp oge <2 x float> %16, splat (float 5.000000e-01) ; 2 uses
  %18 = extractelement <2 x i1> %17, i64 0
  %19 = extractelement <2 x i1> %17, i64 1
  %i.z = select i1 %19, i1 %18, i1 false
  br label %bb.l

bb.e:                                             ; preds = %bb.c
end_hunk_1
