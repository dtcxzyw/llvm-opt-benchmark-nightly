inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0_@activeExpireCycle:bb.a
  %i.ei = phi i32 [ %i.eh, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %i.ej = and i32 %i.dd, 15                       ; 2 uses
  %i.ek = icmp ne i32 %i.ej, 0
  %4 = icmp ne i32 %i.ei, 0
  %or.cond5 = select i1 %i.ek, i1 %4, i1 false
  br i1 %or.cond5, label %bb.aj, label %bb.ac

end_hunk_0
begin_hunk_1_@parseExtendedExpireArgumentsOrReply:bb.a
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.f
  %2 = icmp ne i32 %.146, 0
  %3 = icmp ne i32 %.143, 0
  %4 = icmp ne i32 %.140, 0                       ; 2 uses
  %5 = icmp ne i32 %.137, 0                       ; 2 uses
  %i.s = select i1 %3, i1 true, i1 %4
  %i.t = select i1 %i.s, i1 true, i1 %5
  %or.cond102 = select i1 %2, i1 %i.t, i1 false
end_hunk_1
