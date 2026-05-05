inline.NumInlined: 1279
inline.NumDeleted: 547
begin_hunk_0_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30
  %.02534 = phi ptr [ %.0.lcssa.i.i, %.lr.ph ], [ %i.ar, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30 ] ; 7 uses
  %i.x = icmp eq ptr %.02534, %spec.select
  %i.y = getelementptr i8, ptr %.02534, i64 -40
  %.in = select i1 %i.x, ptr %i.v, ptr %i.y
end_hunk_0
begin_hunk_1_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE:bb.a
  br i1 %.not12.i, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit_crit_edge

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30: ; preds = %bb.c, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.02534, i64 48 ; 3 uses
  %.not = icmp eq ptr %i.ar, %i.d
  br i1 %.not, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit_crit_edge, label %bb.c, !llvm.loop !223

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplitsplit: ; preds = %bb.d, %bb.e
  %.02534.lcssa = phi ptr [ %.02534, %bb.d ], [ %.02534, %bb.e ]
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit_crit_edge: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30
  %.lcssa.a = phi ptr [ %i.ar, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30 ]
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit, !llvm.loop !223

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplitsplit, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit_crit_edge
  %.025.lcssa.ph.ph = phi ptr [ %.lcssa.a, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit_crit_edge ], [ %.02534.lcssa, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplitsplit ]
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit_crit_edge: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %.02534.lcssa46.a = phi ptr [ %.02534, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit ]
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit_crit_edge
  %.025.lcssa.ph = phi ptr [ %.02534.lcssa46.a, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit_crit_edge ], [ %.025.lcssa.ph.ph, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexitsplit ]
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.loopexit, %_ZSt11upper_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit
end_hunk_1
begin_hunk_2_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge
  %.04154 = phi ptr [ %.1.i.i.lcssa, %.lr.ph ], [ %i.x, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge ] ; 6 uses
  %i.x = getelementptr i8, ptr %.04154, i64 -48   ; 3 uses
  %i.y = icmp eq ptr %i.x, %spec.select
  %i.z = getelementptr i8, ptr %.04154, i64 -88
end_hunk_2
begin_hunk_3_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE:bb.a
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread_crit_edge: ; preds = %bb.f
  %.04154.lcssa75.a = phi ptr [ %.04154, %bb.f ]
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.threadsplit, %._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread_crit_edge
  %.04154.lcssa = phi ptr [ %.04154.lcssa75.a, %._ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread_crit_edge ], [ %.04154.lcssa74, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.threadsplit ] ; 4 uses
  %.not52 = icmp eq ptr %.04154.lcssa, %spec.select
  br i1 %.not52, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %bb.g

end_hunk_3
