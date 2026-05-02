inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@ZSTD_safecopy:bb.a
  %i.ay = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.156, i64 %.0 ; 2 uses
  %5 = icmp ne i32 %4, 0
  %i.bb = icmp slt i64 %i.az, 16
  %or.cond.i21 = and i1 %5, %i.bb
  br i1 %or.cond.i21, label %.preheader62.preheader, label %bb.h

.preheader62.preheader:                           ; preds = %bb.g
end_hunk_0
begin_hunk_1_@ZSTD_safecopy:bb.a
  %i.cg = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.156, i64 %i.cf
  %6 = icmp ne i32 %4, 0
  %i.cj = icmp slt i64 %i.ch, 16
  %or.cond.i = and i1 %6, %i.cj
  br i1 %or.cond.i, label %.preheader60.preheader, label %bb.m

.preheader60.preheader:                           ; preds = %bb.l
end_hunk_1
