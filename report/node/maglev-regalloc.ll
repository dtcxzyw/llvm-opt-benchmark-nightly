inline.NumInlined: 3627
inline.NumDeleted: 1327
begin_hunk_0_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator12AllocateNodeEPNS1_4NodeE:bb.a
  %i.at = sext i32 %narrow.i.i.i.i.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = ptrtoint ptr %i.au to i64
  %reass.sub58 = sub i64 %i.av, %i.ap
  %i.aw = add i64 %reass.sub58, -88
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8
end_hunk_0
