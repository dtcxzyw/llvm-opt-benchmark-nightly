inline.NumInlined: 1084
inline.NumDeleted: 380
begin_hunk_0_@_ZNK6duckdb11ProgressBar11ShouldPrintEb:bb.a
  %storemerge.i = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.g, align 8, !tbaa !63
  %i.q = sub nsw i64 %storemerge.i, %.sroa.0.0.copyload.i2.i.i
  %i.r = sitofp i64 %i.q to double
  %2 = fdiv double %i.r, 1.000000e+09
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = uitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+03
  %i.s = fcmp ule double %2, %6                   ; 2 uses
  %brmerge = or i1 %1, %i.s
  %not. = xor i1 %i.s, true
  br i1 %brmerge, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN6duckdb11ProgressBar6UpdateEb:bb.a
  %storemerge.i.i = phi i64 [ %i.aq, %bb.m ], [ %i.ar, %bb.n ]
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !63
  %i.as = sub nsw i64 %storemerge.i.i, %.sroa.0.0.copyload.i2.i.i.i
  %i.at = sitofp i64 %i.as to double
  %3 = fdiv double %i.at, 1.000000e+09
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = uitofp i64 %5 to double
  %7 = fdiv double %6, 1.000000e+03
  %i.au = fcmp ule double %3, %7                  ; 2 uses
  %brmerge.i = or i1 %1, %i.au
  br i1 %brmerge.i, label %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit, label %bb.o

end_hunk_1
