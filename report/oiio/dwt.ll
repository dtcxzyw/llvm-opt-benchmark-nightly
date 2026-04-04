begin_hunk_0

.lr.ph325.i:                                      ; preds = %.preheader310.i
  %.not350.i = icmp eq i32 %i.dc, 0
  %wide.trip.count.i = zext i32 %i.dc to i64      ; 9 uses
  %i.dm = shl nuw nsw i64 %wide.trip.count.i, 2   ; 4 uses
  %i.dn = shl nuw nsw i64 %wide.trip.count.i, 5   ; 2 uses
  %scevgep103 = getelementptr i8, ptr %i.bi, i64 %i.dn ; 4 uses
  %i.do = shl nuw nsw i64 %wide.trip.count.i, 2   ; 4 uses
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.dn ; 4 uses
  %i.dp = getelementptr i8, ptr %i.bk, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.ck, i64 %i.do
  %i.dr = getelementptr i8, ptr %i.cm, i64 %i.do
  %i.ds = getelementptr i8, ptr %i.co, i64 %i.do
  %i.dt = getelementptr i8, ptr %i.cq, i64 %i.dm
  %i.du = getelementptr i8, ptr %i.cs, i64 %i.dm
  %i.dv = getelementptr i8, ptr %i.cu, i64 %i.dm
end_hunk_0
