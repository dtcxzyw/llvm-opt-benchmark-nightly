inline.NumInlined: 115
inline.NumDeleted: 35
begin_hunk_0_@af_latin_hints_compute_segments:bb.a
  %i.ea = sub nsw i64 %.0308, %.0312
  %i.eb = call i64 @llvm.abs.i64(i64 %i.ea, i1 true)
  %i.ec = sub nsw i64 %.1366, %spec.select604
  %i.ed = icmp samesign ugt i64 %i.eb, %i.ec
  %spec.select466 = call i64 @llvm.smin.i64(i64 %spec.select, i64 %.0321) ; 7 uses
  %.1317 = call i64 @llvm.smax.i64(i64 %.1382, i64 %.0316) ; 7 uses
  br i1 %i.ed, label %bb.r, label %bb.s
end_hunk_0
