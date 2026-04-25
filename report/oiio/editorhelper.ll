inline.NumInlined: 328
inline.NumDeleted: 123
begin_hunk_0_@_ZN8ultrahdr19bicubic_interpolateEddddd:bb.a
bb.a:
  %i.a = insertelement <2 x double> <double 1.000000e+00, double poison>, double %4, i64 1
  %i.b = insertelement <2 x double> <double poison, double 0.000000e+00>, double %4, i64 0
  %i.c = fsub contract <2 x double> %i.a, %i.b    ; 3 uses
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.e = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.f = fmul contract <4 x double> %i.e, <double 1.000000e+00, double 3.000000e+00, double 3.000000e+00, double 1.000000e+00>
  %5 = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.g = fmul contract <4 x double> %5, %i.f
  %i.h = fmul contract <4 x double> %i.d, %i.g
  %i.i = insertelement <4 x double> poison, double %0, i64 0
  %i.j = insertelement <4 x double> %i.i, double %2, i64 1
  %i.k = insertelement <4 x double> %i.j, double %1, i64 2
  %i.l = insertelement <4 x double> %i.k, double %3, i64 3
  %i.m = fmul contract <4 x double> %i.l, %i.h    ; 4 uses
  %i.n = extractelement <4 x double> %i.m, i64 0
  %i.o = extractelement <4 x double> %i.m, i64 2
  %i.p = fadd contract double %i.n, %i.o
  %i.q = extractelement <4 x double> %i.m, i64 1
  %i.r = fadd contract double %i.q, %i.p
  %i.s = extractelement <4 x double> %i.m, i64 3
  %i.t = fadd contract double %i.s, %i.r
end_hunk_0
