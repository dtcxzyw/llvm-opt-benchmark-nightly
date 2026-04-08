inline.NumInlined: 35813
inline.NumDeleted: 7889
begin_hunk_0_@_ZN8facebook5velox12VectorFuzzer9fuzzNullsEi:bb.a

bb.r:                                             ; preds = %bb.f
  %i.hz = fptoui double %i.w to i64
  %i.ia = sext i32 %2 to i64                      ; 4 uses
  %.sroa.speculated63 = tail call i64 @llvm.umin.i64(i64 %i.ia, i64 %i.hz)
  %i.ib = tail call i64 @llvm.usub.sat.i64(i64 %i.ia, i64 %.sroa.speculated63) ; 2 uses
  %i.ic = icmp ult i64 %i.ib, %i.ia
  br i1 %i.ic, label %.lr.ph88, label %.loopexit

end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS5_E_EET1_SF_SD_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_1
