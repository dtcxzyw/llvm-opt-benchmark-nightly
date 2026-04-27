inline.NumInlined: 1177
inline.NumDeleted: 607
begin_hunk_0_@_ZN5folly4hash20hash_combine_genericINS0_9StdHasherENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEmRKT_RKT0_DpRKT1_:bb.a
  %.1.i.i.i = phi i64 [ %i.ct, %_ZN5folly29constexprPartialLoadUnalignedImcEET_PKT0_m.exit.i.i.i ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cu = lshr i64 %.1.i.i, 47
  %i.cv = xor i64 %i.cu, %.1.i.i
  %i.cw = mul i64 %i.cv, -4132994306676758123     ; 4 uses
  %i.cx = lshr i64 %.1.i.i.i, 47
  %i.cy = xor i64 %i.cx, %.1.i.i.i
  %3 = mul i64 %i.cy, -4132994306676758123        ; 2 uses
  %i.cz = xor i64 %3, %i.cw
  %i.da = lshr i64 %i.cz, 47
  %i.db = xor i64 %i.cw, %i.da
  %i.dc = xor i64 %i.db, %3
  %i.dd = mul i64 %i.dc, -7070675565921424023     ; 2 uses
  %4 = xor i64 %i.dd, %i.cw
  %i.de = lshr i64 %4, 47
  %i.df = xor i64 %i.cw, %i.de
  %i.dg = xor i64 %i.df, %i.dd
  %i.dh = mul i64 %i.dg, -7070675565921424023     ; 2 uses
  %i.di = lshr i64 %i.dh, 47
end_hunk_0
