inline.NumInlined: 1084
inline.NumDeleted: 380
begin_hunk_0_@_ZNK6duckdb11ProgressBar11ShouldPrintEb:bb.a
  %storemerge.i = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.g, align 8, !tbaa !63
  %i.q = sub nsw i64 %storemerge.i, %.sroa.0.0.copyload.i2.i.i
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load i64, ptr %2, align 8, !tbaa !69
  %4 = uitofp i64 %3 to double
  %i.r = sitofp i64 %i.q to double
  %5 = insertelement <2 x double> poison, double %i.r, i64 0
  %6 = insertelement <2 x double> %5, double %4, i64 1
  %7 = fdiv <2 x double> %6, <double 1.000000e+09, double 1.000000e+03> ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = extractelement <2 x double> %7, i64 1
  %i.s = fcmp ule double %8, %9                   ; 2 uses
  %brmerge = or i1 %1, %i.s
  %not. = xor i1 %i.s, true
  br i1 %brmerge, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN6duckdb11ProgressBar6UpdateEb:bb.a
  %storemerge.i.i = phi i64 [ %i.aq, %bb.m ], [ %i.ar, %bb.n ]
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !63
  %i.as = sub nsw i64 %storemerge.i.i, %.sroa.0.0.copyload.i2.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = uitofp i64 %4 to double
  %i.at = sitofp i64 %i.as to double
  %6 = insertelement <2 x double> poison, double %i.at, i64 0
  %7 = insertelement <2 x double> %6, double %5, i64 1
  %8 = fdiv <2 x double> %7, <double 1.000000e+09, double 1.000000e+03> ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = extractelement <2 x double> %8, i64 1
  %i.au = fcmp ule double %9, %10                 ; 2 uses
  %brmerge.i = or i1 %1, %i.au
  br i1 %brmerge.i, label %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit, label %bb.o

end_hunk_1
