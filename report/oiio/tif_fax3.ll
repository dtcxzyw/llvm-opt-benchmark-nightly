inline.NumInlined: 37
inline.NumDeleted: 6
begin_hunk_0_@Fax3PreEncode:bb.a
  %i.q = icmp eq i16 %i.p, 3
  %i.r = fmul float %i.n, 2.540000e+00
  %.0 = select i1 %i.q, float %i.r, float %i.n
  %i.s = fcmp ogt float %.0, 1.500000e+02         ; 2 uses
  %i.t = select i1 %i.s, i32 4, i32 2
  %2 = select i1 %i.s, i32 3, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
end_hunk_0
