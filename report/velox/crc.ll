inline.NumInlined: 37
inline.NumDeleted: 14
begin_hunk_0_@_ZN4absl12lts_2024011612crc_internal7CRCImpl15FillZeroesTableEjPA256_j:.preheader35
  %i.d = lshr i32 %.01319.i, 1
  %i.e = select i1 %.not17.i, i32 0, i32 %0
  %.1.i = xor i32 %i.e, %i.d                      ; 3 uses
  %2 = lshr i32 %.020.i, 2                        ; 2 uses
  %.not16.i.150.inv = icmp slt i32 %.020.i, 0
  %i.f = select i1 %.not16.i.150.inv, i32 %.1.i, i32 0
  %spec.select.i.151 = xor i32 %i.f, %spec.select.i ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011612crc_internal7CRCImpl15FillZeroesTableEjPA256_j:.preheader35
  %i.h = lshr i32 %.1.i, 1
  %i.i = select i1 %.not17.i.152, i32 0, i32 %0
  %.1.i.153 = xor i32 %i.i, %i.h
  %.not.i.154 = icmp eq i32 %2, 0
  br i1 %.not.i.154, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit, label %bb.a, !llvm.loop !9

end_hunk_1
