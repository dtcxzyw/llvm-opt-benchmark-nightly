inline.NumInlined: 1116
inline.NumDeleted: 605
begin_hunk_0_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g)
  %.sroa.03.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 3 uses
  %i.w = icmp ult i64 %.sroa.03.0, %5
  br i1 %i.w, label %.lr.ph92, label %._crit_edge93

end_hunk_0
begin_hunk_1_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.aa, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.ab = add nuw nsw i64 %.sroa.04.090, 1        ; 2 uses
  %7 = icmp ult i64 %i.ab, %5
  br i1 %7, label %.lr.ph92, label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.g, %bb.e
  %.sroa.07.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
end_hunk_1
