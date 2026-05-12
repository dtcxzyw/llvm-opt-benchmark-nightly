inline.NumInlined: 1572
inline.NumDeleted: 732
begin_hunk_0_@duckdb_fsst_decompress:bb.a
  %.0.copyload = load i32, ptr %i.i, align 1      ; 5 uses
  %i.j = and i32 %.0.copyload, -2139062144
  %i.k = and i32 %.0.copyload, 2139062143
  %5 = sub nuw i32 -16843010, %i.k
  %i.l = xor i32 %5, -2139062144
  %i.m = and i32 %i.j, %i.l                       ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c
end_hunk_0
