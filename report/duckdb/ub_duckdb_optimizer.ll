inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZN6duckdb19CommonSubplanFinder21ConvertSubplansToCTEsERNS_9OptimizerERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  %i.qy = sdiv i64 %.pre3457, 2560                ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.qy
  %i.ra = and i64 %.pre3459, -9223372036854775745
  %i.rb = icmp ugt i64 %i.ra, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.rb, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.qz, i64 %storemerge.idx.i.i.i.i.i.i
  %i.rc = and i64 %.pre3459, 63                   ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.qw, 3
end_hunk_0
begin_hunk_1_@_ZN6duckdb19CommonSubplanFinder21ConvertSubplansToCTEsERNS_9OptimizerERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a

.lr.ph2521:                                       ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit
  %i.rf = shl nsw i64 %i.qy, 6
  %50 = shl nsw i64 %storemerge.idx.i.i.i.i.i.i, 3
  %i.rg = add nsw i64 %i.rf, %50
  %i.rh = or disjoint i64 %i.rg, %i.rc            ; 3 uses
  %injected.cond = icmp ule i64 %i.mi, %i.rh
end_hunk_1
