begin_hunk_0_@rmatmult3:bb.a
  %i.dw = add nsw i64 %wide.trip.count, %i.bu
  %scevgep271 = getelementptr i8, ptr %2, i64 -8
  %scevgep273 = getelementptr i8, ptr %2, i64 %i.dl
  %4 = xor i64 %i.dg, -8
  %scevgep275 = getelementptr i8, ptr %2, i64 %4
  %scevgep277 = getelementptr i8, ptr %2, i64 %i.du
  %i.dx = add nsw i64 %i.dg, -8
end_hunk_0
begin_hunk_1_@rmatmult3:bb.a
  %i.ea = shl nsw i64 %i.dz, 3
  %i.eb = sub nsw i64 8, %i.ea                    ; 2 uses
  %scevgep281 = getelementptr i8, ptr %2, i64 %i.eb
  %5 = xor i64 %i.dh, -8
  %scevgep283 = getelementptr i8, ptr %2, i64 %5
  %scevgep285 = getelementptr i8, ptr %2, i64 %i.eb
  %i.ec = add nsw i64 %i.dg, %i.dh
end_hunk_1
begin_hunk_2_@rmatmult3:bb.a
  %scevgep291 = getelementptr i8, ptr %2, i64 %i.ej
  %i.ek = mul nsw i64 %i.ef, -8
  %scevgep293 = getelementptr i8, ptr %2, i64 %i.ek
  %6 = xor i64 %i.dg, -8
  %i.el = sub nsw i64 %6, %i.dh
  %scevgep295 = getelementptr i8, ptr %2, i64 %i.el
  %7 = xor i64 %i.eg, -8
  %scevgep297 = getelementptr i8, ptr %2, i64 %7
  %scevgep300 = getelementptr i8, ptr %i.s, i64 %i.df
  %scevgep303 = getelementptr i8, ptr %i.u, i64 %i.df
end_hunk_2
