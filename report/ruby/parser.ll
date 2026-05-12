inline.NumInlined: 234
inline.NumDeleted: 77
begin_hunk_0_@json_parse_number:bb.a
  %.066.i.i = phi i1 [ %i.oq, %multipleOfPowerOf5.exit.i.i ], [ true, %bb.ar ], [ false, %bb.as ], [ %i.nq, %bb.at ]
  %.065.i.i = phi i64 [ %i.op, %multipleOfPowerOf5.exit.i.i ], [ %i.nk, %bb.ar ], [ %i.nk, %bb.as ], [ %i.nk, %bb.at ] ; 5 uses
  %.064.i.i = phi i32 [ %i.od, %multipleOfPowerOf5.exit.i.i ], [ %i.mv, %bb.ar ], [ %i.mv, %bb.as ], [ %i.mv, %bb.at ] ; 2 uses
  %i.or = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.065.i.i, i1 true)
  %i.os = trunc nuw nsw i64 %i.or to i32
  %4 = sub i32 %.064.i.i, %i.os
  %i.ot = add i32 %4, 1086                        ; 3 uses
  %i.ou = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ot, i32 0)
  %i.ov = icmp sgt i32 %i.ot, 2046
  br i1 %i.ov, label %bb.ax, label %bb.ay
end_hunk_0
