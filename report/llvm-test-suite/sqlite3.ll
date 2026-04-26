inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@sqlite3WhereBegin:bb.a
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !1594
  %i.aqf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aqe, i1 false)
  %i.aqg = trunc nuw nsw i64 %i.aqf to i32
  %i.aqh = sub nsw i32 64, %i.aqg
  %.val805 = load i32, ptr %i.ajp, align 8, !tbaa !135 ; 2 uses
  %i.aqi = icmp sgt i32 %.val805, 0
  %or.cond.i865 = and i1 %i.ajt, %i.aqi
end_hunk_0
