inline.NumInlined: 3428
inline.NumDeleted: 1768
begin_hunk_0_@_ZN6google8protobuf2io7Printer14TokenizeFormatESt17basic_string_viewIcSt11char_traitsIcEERKNS2_12PrintOptionsE:bb.a
  br label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143.preheader, %bb.x
  %.096402 = phi i64 [ %i.cs, %bb.x ], [ 0, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143.preheader ] ; 4 uses
  %.sroa.11.3401 = phi ptr [ %10, %bb.x ], [ %.sroa.11.0.copyload, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143.preheader ] ; 2 uses
  %.sroa.0211.3400 = phi i64 [ %i.cr, %bb.x ], [ %.sroa.0211.2, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143.preheader ] ; 2 uses
  %scevgep741 = getelementptr i8, ptr %.sroa.11.0.copyload, i64 %.096402
  %lhsc304 = load i8, ptr %scevgep741, align 1
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io7Printer14TokenizeFormatESt17basic_string_viewIcSt11char_traitsIcEERKNS2_12PrintOptionsE:bb.a
  br i1 %i.cq, label %bb.x, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143..critedge.loopexit_crit_edge

bb.x:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.11.3401, i64 1
  %i.cr = add i64 %.sroa.0211.3400, -1            ; 2 uses
  %i.cs = add nuw i64 %.096402, 1
  %i.ct = icmp eq i64 %i.cr, 0
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io7Printer14TokenizeFormatESt17basic_string_viewIcSt11char_traitsIcEERKNS2_12PrintOptionsE:bb.a
  br label %bb.bg

.critedge.loopexitsplit:                          ; preds = %bb.x
  %.sroa.0211.3.lcssa.ph.ph = phi i64 [ 0, %bb.x ]
  %.sroa.11.3.lcssa.ph.ph = phi ptr [ %scevgep460, %bb.x ]
  %.096.lcssa.ph.ph = phi i64 [ %.sroa.0211.2, %bb.x ]
  br label %.critedge.loopexit

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143..critedge.loopexit_crit_edge: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143
  %.096402.lcssa = phi i64 [ %.096402, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143 ]
  %.sroa.0211.3400.lcssa = phi i64 [ %.sroa.0211.3400, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143 ]
  %split740 = phi ptr [ %.sroa.11.3401, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143 ]
  %split741 = phi i64 [ %.096402, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143 ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143..critedge.loopexit_crit_edge
  %.sroa.0211.3.lcssa.ph = phi i64 [ %.sroa.0211.3400.lcssa, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143..critedge.loopexit_crit_edge ], [ %.sroa.0211.3.lcssa.ph.ph, %.critedge.loopexitsplit ]
  %.sroa.11.3.lcssa.ph = phi ptr [ %split740, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143..critedge.loopexit_crit_edge ], [ %.sroa.11.3.lcssa.ph.ph, %.critedge.loopexitsplit ]
  %.096.lcssa.ph = phi i64 [ %.096402.lcssa, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i143..critedge.loopexit_crit_edge ], [ %.096.lcssa.ph.ph, %.critedge.loopexitsplit ]
  %i.cv = call i64 @llvm.usub.sat.i64(i64 %.096.lcssa.ph, i64 %.3)
  br label %.critedge

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE:bb.a
  br label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379.preheader, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit383
  %.sroa.7560.01216 = phi ptr [ %i.pc, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit383 ], [ %.sroa.7560.0.copyload, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379.preheader ] ; 4 uses
  %.sroa.0559.01215 = phi i64 [ %i.pd, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit383 ], [ %.sroa.0559.0.copyload, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379.preheader ] ; 2 uses
  %lhsc656 = load i8, ptr %.sroa.7560.01216, align 1
  %i.pb = icmp eq i8 %lhsc656, 32
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE:bb.a
  br label %.loopexit.split-lp675

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexitsplit: ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit383
  %.sroa.0559.0.lcssa.ph.ph = phi i64 [ 0, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit383 ]
  %.sroa.7560.0.lcssa.ph.ph = phi ptr [ %scevgep, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit383 ]
  br label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit_crit_edge: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379
  %.sroa.7560.01216.lcssa = phi ptr [ %.sroa.7560.01216, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379 ]
  %.sroa.0559.01215.lcssa = phi i64 [ %.sroa.0559.01215, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379 ]
  %split3197 = phi ptr [ %.sroa.7560.01216, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379 ] ; 0 uses
  br label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexitsplit, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit_crit_edge
  %.sroa.0559.0.lcssa.ph = phi i64 [ %.sroa.0559.01215.lcssa, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit_crit_edge ], [ %.sroa.0559.0.lcssa.ph.ph, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexitsplit ]
  %.sroa.7560.0.lcssa.ph = phi ptr [ %.sroa.7560.01216.lcssa, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit_crit_edge ], [ %.sroa.7560.0.lcssa.ph.ph, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexitsplit ]
  br label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i379._crit_edge.loopexit, %bb.ce
end_hunk_4
