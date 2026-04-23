inline.NumInlined: 10829
inline.NumDeleted: 3307
begin_hunk_0_@_ZN2v88internal17ConcurrentMarking16TotalMarkedBytesEv:bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr11 = freeze i64 %i.g
  %i.h = ashr i64 %.fr11, 3                       ; 3 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

end_hunk_0
