inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75
  %.061154 = phi i32 [ %.061, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ 1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 2 uses
  %.sroa.9.0151 = phi ptr [ %i.a, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ %1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 5 uses
  %.sroa.0123.0148 = phi i64 [ %i.b, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ %0, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 2 uses
  switch i64 %.sroa.0123.0148, label %.lr.ph.i.preheader.lr.ph [
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_ZN4absl12lts_202505128DurationpLES1_.exit97
  %.sroa.0107.0213 = phi i64 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.0107.2, %_ZN4absl12lts_202505128DurationpLES1_.exit97 ] ; 5 uses
  %.sroa.12109.0212 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.12109.2, %_ZN4absl12lts_202505128DurationpLES1_.exit97 ] ; 5 uses
  %.0136211 = phi ptr [ %.sroa.9.0151, %.lr.ph.i.preheader.lr.ph ], [ %i.ba, %_ZN4absl12lts_202505128DurationpLES1_.exit97 ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i64 %i.w, %i.y                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1137, i64 1 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread, label %.lr.ph.i, !llvm.loop !28

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %.1131 = phi i64 [ %i.ak, %bb.g ], [ %.0130, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.al, %bb.g ], [ %.0, %bb.f ]  ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.2138, i64 1 ; 3 uses
  %.not52.i = icmp eq ptr %storemerge.i, %i.q
  br i1 %.not52.i, label %._crit_edge.i, label %.lr.ph66.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph66.i
  %.3139 = phi ptr [ %storemerge.i, %bb.h ], [ %.2138, %.lr.ph66.i ]
  %.2132 = phi i64 [ %.1131, %bb.h ], [ %.0130, %.lr.ph66.i ]
  %.2 = phi i64 [ %.1, %bb.h ], [ %.0, %.lr.ph66.i ] ; 2 uses
  %i.am = icmp ne i64 %.2, 1
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
  %.3129171 = phi i64 [ 1, %._crit_edge.i.thread ], [ 1, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.2, %._crit_edge.i ], [ 1, %bb.d ] ; 6 uses
  %.3133170 = phi i64 [ 0, %._crit_edge.i.thread ], [ 0, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.2132, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %.1135169 = phi i64 [ %.0134, %._crit_edge.i.thread ], [ %.0134, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.0134, %._crit_edge.i ], [ %i.ab, %bb.d ] ; 2 uses
  %.4168 = phi ptr [ %storemerge63.i, %._crit_edge.i.thread ], [ %.1137, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.3139, %._crit_edge.i ], [ %i.ac, %bb.d ] ; 7 uses
  %i.an = ptrtoint ptr %.4168 to i64
  %i.ao = sub i64 %i.r, %i.an
  switch i64 %i.ao, label %bb.i [
end_hunk_4
