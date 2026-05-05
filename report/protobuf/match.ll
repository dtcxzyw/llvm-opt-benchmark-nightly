inline.NumInlined: 64
inline.NumDeleted: 23
begin_hunk_0_@_ZN4absl12lts_2025051221StrContainsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEEc:bb.a
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8:    ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8.preheader, %bb.d
  %.01116.i.i = phi i64 [ %i.w, %bb.d ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8.preheader ] ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %.01116.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %i.u = sext i8 %i.t to i32
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051221StrContainsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEEc:bb.a
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexitsplit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8, !llvm.loop !10

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexitsplit: ; preds = %bb.d
  %.2.i.i.ph.ph = phi i64 [ -1, %bb.d ]
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8._ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit_crit_edge: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8
  %.01116.i.i.lcssa = phi i64 [ %.01116.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8 ]
  %.01116.i.i.lcssa.a = phi i64 [ %.01116.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8 ] ; 0 uses
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexitsplit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8._ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit_crit_edge
  %.2.i.i.ph = phi i64 [ %.01116.i.i.lcssa, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8._ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit_crit_edge ], [ %.2.i.i.ph.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexitsplit ]
  %i.x = icmp ne i64 %.2.i.i.ph, -1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051223FindLongestCommonSuffixESt17basic_string_viewIcSt11char_traitsIcEES4_:bb.a

bb.c:                                             ; preds = %bb.b, %bb.d
  %lsr.iv = phi ptr [ %scevgep28, %bb.b ], [ %scevgep29, %bb.d ] ; 2 uses
  %.025 = phi i64 [ 0, %bb.b ], [ %i.h, %bb.d ]   ; 3 uses
  %.pn24 = phi ptr [ %i.b, %bb.b ], [ %.01027, %bb.d ] ; 2 uses
  %.01027 = getelementptr i8, ptr %.pn24, i64 -1  ; 2 uses
  %i.e = load i8, ptr %.01027, align 1, !tbaa !9
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051223FindLongestCommonSuffixESt17basic_string_viewIcSt11char_traitsIcEES4_:bb.a
  br i1 %exitcond.not, label %.critedge.loopexitsplit, label %bb.c, !llvm.loop !14

.critedge.loopexitsplit:                          ; preds = %bb.d
  %.sroa.321.0.ph.ph = phi ptr [ %scevgep, %bb.d ]
  %.sroa.020.0.ph.ph = phi i64 [ %.sroa.speculated, %bb.d ]
  br label %.critedge.loopexit

..critedge.loopexit_crit_edge:                    ; preds = %bb.c
  %.025.lcssa = phi i64 [ %.025, %bb.c ]
  %.pn24.lcssa = phi ptr [ %.pn24, %bb.c ]
  %split30 = phi i64 [ %.025, %bb.c ]             ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %..critedge.loopexit_crit_edge
  %.sroa.321.0.ph = phi ptr [ %.pn24.lcssa, %..critedge.loopexit_crit_edge ], [ %.sroa.321.0.ph.ph, %.critedge.loopexitsplit ]
  %.sroa.020.0.ph = phi i64 [ %.025.lcssa, %..critedge.loopexit_crit_edge ], [ %.sroa.020.0.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
end_hunk_3
