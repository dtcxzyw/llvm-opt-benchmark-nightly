inline.NumInlined: 72
inline.NumDeleted: 12
begin_hunk_0_@png_build_gamma_table:bb.a
  %.fr37.i = freeze i16 %i.gd
  %i.ge = zext i16 %.fr37.i to i32                ; 2 uses
  %mulshl.i = shl nuw i32 %i.ge, %i.fa
  %reass.sub = sub nuw i32 %mulshl.i, %i.ge
  %i.gf = add nuw i32 %reass.sub, 32768
  %i.gg = udiv i32 %i.gf, 65535                   ; 5 uses
  %.not40.i = icmp ugt i32 %.03442.i, %i.gg
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i.preheader
end_hunk_0
