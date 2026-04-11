inline.NumInlined: 320
inline.NumDeleted: 176
begin_hunk_0_@_ZN2v88internal8temporal15IsValidDurationEPNS0_7IsolateERKNS1_14DurationRecordE:bb.a
  %i.cu = insertelement <8 x double> %i.ct, double %i.bk, i64 6
  %i.cv = insertelement <8 x double> %i.cu, double %i.bo, i64 7
  %.fr = freeze <8 x double> %i.cv
  %2 = fcmp ule double %i.bs, 0.000000e+00
  %3 = fcmp ule double %.fr147, 0.000000e+00
  %.old = fcmp ult double %i.ao, 0x41F0000000000000
  %4 = fcmp ult double %i.as, 0x41F0000000000000
  %.old104.old = fcmp ult double %i.aw, 0x41F0000000000000
  %5 = fcmp ogt <8 x double> %.fr, zeroinitializer
  %6 = bitcast <8 x i1> %5 to i8
  %7 = icmp eq i8 %6, 0
  %op.rdx143 = and i1 %3, %.old
  %op.rdx144 = and i1 %4, %.old104.old
  %8 = and i1 %op.rdx143, %7
  %op.rdx145 = select i1 %8, i1 %2, i1 false
  %9 = freeze i1 %op.rdx145
  %op.rdx146 = and i1 %9, %op.rdx144
  br i1 %op.rdx146, label %bb.ah, label %bb.al

.thread:                                          ; preds = %bb.af
end_hunk_0
