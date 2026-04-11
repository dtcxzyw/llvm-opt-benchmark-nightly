inline.NumInlined: 320
inline.NumDeleted: 176
begin_hunk_0_@_ZN2v88internal8temporal15IsValidDurationEPNS0_7IsolateERKNS1_14DurationRecordE:bb.a
  %i.cu = insertelement <8 x double> %i.ct, double %i.bk, i64 6
  %i.cv = insertelement <8 x double> %i.cu, double %i.bo, i64 7
  %.fr = freeze <8 x double> %i.cv
  %2 = fcmp ule <8 x double> %.fr, zeroinitializer ; 2 uses
  %3 = insertelement <4 x double> poison, double %i.bs, i64 0
  %4 = insertelement <4 x double> %3, double %.fr147, i64 1
  %5 = insertelement <4 x double> %4, double %i.ao, i64 2
  %6 = insertelement <4 x double> %5, double %i.as, i64 3 ; 2 uses
  %7 = fcmp ule <4 x double> %6, <double 0.000000e+00, double 0.000000e+00, double 0x41F0000000000000, double 0x41F0000000000000>
  %8 = fcmp ult <4 x double> %6, <double 0.000000e+00, double 0.000000e+00, double 0x41F0000000000000, double 0x41F0000000000000>
  %9 = shufflevector <4 x i1> %7, <4 x i1> %8, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.old104.old = fcmp ult double %i.aw, 0x41F0000000000000
  %10 = freeze <4 x i1> %9
  %11 = shufflevector <8 x i1> %2, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %11, %10
  %12 = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x i1> %12, <8 x i1> %2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %14 = bitcast <8 x i1> %13 to i8
  %15 = icmp eq i8 %14, -1
  %op.rdx146 = and i1 %15, %.old104.old
  br i1 %op.rdx146, label %bb.ah, label %bb.al

.thread:                                          ; preds = %bb.af
end_hunk_0
