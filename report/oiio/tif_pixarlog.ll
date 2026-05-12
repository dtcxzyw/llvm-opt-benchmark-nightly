inline.NumInlined: 19
inline.NumDeleted: 13
begin_hunk_0_@PixarLogSetupDecode:bb.a
  %i.ac = icmp eq i64 %i.y, 0
  %i.ad = icmp eq i16 %i.z, 0
  %or.cond.i = or i1 %i.ac, %i.ad
  %1 = sub nuw nsw i64 9223372036854775807, %i.ab
  %i.ae = icmp sgt i64 %i.y, %1
  %or.cond11.i = select i1 %or.cond.i, i1 true, i1 %i.ae
  %i.af = add nsw i64 %i.ab, %i.y                 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %or.cond11.i, i1 true, i1 %i.ag
end_hunk_0
