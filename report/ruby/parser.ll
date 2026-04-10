inline.NumInlined: 234
inline.NumDeleted: 77
begin_hunk_0_@json_parse_number:bb.a
  %i.ny = trunc nuw nsw i64 %i.nx to i32
  %i.nz = mul i32 %.151, -1217359
  %i.oa = lshr i32 %i.nz, 19                      ; 2 uses
  %4 = add nuw nsw i32 %i.oa, %i.ny
  %reass.sub.a = sub nuw i32 %.151, %4
  %i.ob = add i32 %reass.sub.a, 9                 ; 2 uses
  %i.oc = zext i64 %.0138 to i128                 ; 2 uses
  %i.od = zext i64 %.val.i.i to i128
  %i.oe = mul nuw i128 %i.od, %i.oc
end_hunk_0
