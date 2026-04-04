begin_hunk_0
  br label %._crit_edge112.thread

.lr.ph:                                           ; preds = %_ZN6duckdb3alp18AlpCompressionDataIfLb1EE17ResetCombinationsEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 1
  br label %bb.b
end_hunk_0
begin_hunk_1
  %.sroa.073.sroa.6.0.insert.shift = shl nuw nsw i16 %i.ck, 8
  %.sroa.073.sroa.0.0.insert.insert = or disjoint i16 %.sroa.073.sroa.6.0.insert.shift, %i.ab
  store i16 %.sroa.073.sroa.0.0.insert.insert, ptr %8, align 8
  store i64 0, ptr %i.m, align 8, !tbaa !158
  store i64 %.0.i, ptr %i.n, align 8, !tbaa !158
  br label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

end_hunk_1
begin_hunk_2
  br label %._crit_edge112.thread

.lr.ph:                                           ; preds = %_ZN6duckdb3alp18AlpCompressionDataIdLb1EE17ResetCombinationsEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 1
  br label %bb.b
end_hunk_2
begin_hunk_3
  %.sroa.073.sroa.6.0.insert.shift = shl nuw nsw i16 %i.ck, 8
  %.sroa.073.sroa.0.0.insert.insert = or disjoint i16 %.sroa.073.sroa.6.0.insert.shift, %i.ab
  store i16 %.sroa.073.sroa.0.0.insert.insert, ptr %8, align 8
  store i64 0, ptr %i.m, align 8, !tbaa !158
  store i64 %.0.i, ptr %i.n, align 8, !tbaa !158
  br label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

end_hunk_3
