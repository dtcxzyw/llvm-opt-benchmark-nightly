inline.NumInlined: 1814
inline.NumDeleted: 298
begin_hunk_0_@_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE:bb.a
  %i.s = icmp ult i32 %i.r, -128
  %i.t = load ptr, ptr %i.j, align 8
  %.0.i = select i1 %i.s, ptr %i.t, ptr %i.j
  %i.u = and i32 %i.q, -64
  %i.v = add i32 %i.u, 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  %.not23.i = icmp samesign eq i64 %2, 0
end_hunk_0
begin_hunk_1_@_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE:bb.a
  %.lobit = lshr i32 %i.bq, 31
  %spec.select = add nsw i32 %.lobit, %i.bq
  %i.br = shl nsw i32 %spec.select, 2
  %4 = and i32 %i.q, 63
  %i.bs = add nuw nsw i32 %4, -65
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.041.lcssa, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18  ; 2 uses
end_hunk_1
