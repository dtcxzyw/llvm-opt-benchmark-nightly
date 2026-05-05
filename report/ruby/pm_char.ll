inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0_@pm_strspn_whitespace:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.0911.i = phi i64 [ %i.h, %bb.b ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
end_hunk_0
begin_hunk_1_@pm_strspn_whitespace:bb.a
  br i1 %exitcond.not.i, label %pm_strspn_char_kind.exit.loopexitsplit, label %.preheader.i, !llvm.loop !12

pm_strspn_char_kind.exit.loopexitsplit:           ; preds = %bb.b
  %.0.i.ph.ph = phi i64 [ %1, %bb.b ]
  br label %pm_strspn_char_kind.exit.loopexit

.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge: ; preds = %.preheader.i
  %.0911.i.lcssa = phi i64 [ %.0911.i, %.preheader.i ]
  %.0911.i.lcssa.a = phi i64 [ %.0911.i, %.preheader.i ] ; 0 uses
  br label %pm_strspn_char_kind.exit.loopexit

pm_strspn_char_kind.exit.loopexit:                ; preds = %pm_strspn_char_kind.exit.loopexitsplit, %.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge
  %.0.i.ph = phi i64 [ %.0911.i.lcssa, %.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge ], [ %.0.i.ph.ph, %pm_strspn_char_kind.exit.loopexitsplit ]
  br label %pm_strspn_char_kind.exit

pm_strspn_char_kind.exit:                         ; preds = %pm_strspn_char_kind.exit.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@pm_strspn_whitespace_newlines:bb.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.d
  %.01315 = phi i64 [ %i.j, %bb.d ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.01315    ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11    ; 2 uses
  %i.d = zext i8 %i.c to i64
end_hunk_2
begin_hunk_3_@pm_strspn_whitespace_newlines:bb.a
  br i1 %exitcond.not, label %.critedge.loopexitsplit, label %.preheader, !llvm.loop !14

.critedge.loopexitsplit:                          ; preds = %bb.d
  %.0.ph.ph = phi i64 [ %1, %bb.d ]
  br label %.critedge.loopexit

.preheader..critedge.loopexit_crit_edge:          ; preds = %.preheader
  %.01315.lcssa = phi i64 [ %.01315, %.preheader ]
  %.01315.lcssa.a = phi i64 [ %.01315, %.preheader ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.preheader..critedge.loopexit_crit_edge
  %.0.ph = phi i64 [ %.01315.lcssa, %.preheader..critedge.loopexit_crit_edge ], [ %.0.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
end_hunk_3
begin_hunk_4_@pm_strspn_inline_whitespace:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.0911.i = phi i64 [ %i.h, %bb.b ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
end_hunk_4
begin_hunk_5_@pm_strspn_inline_whitespace:bb.a
  br i1 %exitcond.not.i, label %pm_strspn_char_kind.exit.loopexitsplit, label %.preheader.i, !llvm.loop !12

pm_strspn_char_kind.exit.loopexitsplit:           ; preds = %bb.b
  %.0.i.ph.ph = phi i64 [ %1, %bb.b ]
  br label %pm_strspn_char_kind.exit.loopexit

.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge: ; preds = %.preheader.i
  %.0911.i.lcssa = phi i64 [ %.0911.i, %.preheader.i ]
  %.0911.i.lcssa.a = phi i64 [ %.0911.i, %.preheader.i ] ; 0 uses
  br label %pm_strspn_char_kind.exit.loopexit

pm_strspn_char_kind.exit.loopexit:                ; preds = %pm_strspn_char_kind.exit.loopexitsplit, %.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge
  %.0.i.ph = phi i64 [ %.0911.i.lcssa, %.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge ], [ %.0.i.ph.ph, %pm_strspn_char_kind.exit.loopexitsplit ]
  br label %pm_strspn_char_kind.exit

pm_strspn_char_kind.exit:                         ; preds = %pm_strspn_char_kind.exit.loopexit, %bb.a
end_hunk_5
begin_hunk_6_@pm_strspn_regexp_option:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.0911.i = phi i64 [ %i.h, %bb.b ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
end_hunk_6
begin_hunk_7_@pm_strspn_regexp_option:bb.a
  br i1 %exitcond.not.i, label %pm_strspn_char_kind.exit.loopexitsplit, label %.preheader.i, !llvm.loop !12

pm_strspn_char_kind.exit.loopexitsplit:           ; preds = %bb.b
  %.0.i.ph.ph = phi i64 [ %1, %bb.b ]
  br label %pm_strspn_char_kind.exit.loopexit

.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge: ; preds = %.preheader.i
  %.0911.i.lcssa = phi i64 [ %.0911.i, %.preheader.i ]
  %.0911.i.lcssa.a = phi i64 [ %.0911.i, %.preheader.i ] ; 0 uses
  br label %pm_strspn_char_kind.exit.loopexit

pm_strspn_char_kind.exit.loopexit:                ; preds = %pm_strspn_char_kind.exit.loopexitsplit, %.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge
  %.0.i.ph = phi i64 [ %.0911.i.lcssa, %.preheader.i.pm_strspn_char_kind.exit.loopexit_crit_edge ], [ %.0.i.ph.ph, %pm_strspn_char_kind.exit.loopexitsplit ]
  br label %pm_strspn_char_kind.exit

pm_strspn_char_kind.exit:                         ; preds = %pm_strspn_char_kind.exit.loopexit, %bb.a
end_hunk_7
begin_hunk_8_@pm_strspn_decimal_digit:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.0911.i = phi i64 [ %i.e, %bb.b ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = add i8 %i.c, -58
end_hunk_8
begin_hunk_9_@pm_strspn_decimal_digit:bb.a
  br i1 %exitcond.not.i, label %pm_strspn_number_kind.exit.loopexitsplit, label %.preheader.i, !llvm.loop !19

pm_strspn_number_kind.exit.loopexitsplit:         ; preds = %bb.b
  %.0.i.ph.ph = phi i64 [ %1, %bb.b ]
  br label %pm_strspn_number_kind.exit.loopexit

.preheader.i.pm_strspn_number_kind.exit.loopexit_crit_edge: ; preds = %.preheader.i
  %.0911.i.lcssa = phi i64 [ %.0911.i, %.preheader.i ]
  %.0911.i.lcssa.a = phi i64 [ %.0911.i, %.preheader.i ] ; 0 uses
  br label %pm_strspn_number_kind.exit.loopexit

pm_strspn_number_kind.exit.loopexit:              ; preds = %pm_strspn_number_kind.exit.loopexitsplit, %.preheader.i.pm_strspn_number_kind.exit.loopexit_crit_edge
  %.0.i.ph = phi i64 [ %.0911.i.lcssa, %.preheader.i.pm_strspn_number_kind.exit.loopexit_crit_edge ], [ %.0.i.ph.ph, %pm_strspn_number_kind.exit.loopexitsplit ]
  br label %pm_strspn_number_kind.exit

pm_strspn_number_kind.exit:                       ; preds = %pm_strspn_number_kind.exit.loopexit, %bb.a
end_hunk_9
begin_hunk_10_@pm_strspn_hexadecimal_digit:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.0911.i = phi i64 [ %i.h, %bb.b ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
end_hunk_10
begin_hunk_11_@pm_strspn_hexadecimal_digit:bb.a
  br i1 %exitcond.not.i, label %pm_strspn_number_kind.exit.loopexitsplit, label %.preheader.i, !llvm.loop !19

pm_strspn_number_kind.exit.loopexitsplit:         ; preds = %bb.b
  %.0.i.ph.ph = phi i64 [ %1, %bb.b ]
  br label %pm_strspn_number_kind.exit.loopexit

.preheader.i.pm_strspn_number_kind.exit.loopexit_crit_edge: ; preds = %.preheader.i
  %.0911.i.lcssa = phi i64 [ %.0911.i, %.preheader.i ]
  %.0911.i.lcssa.a = phi i64 [ %.0911.i, %.preheader.i ] ; 0 uses
  br label %pm_strspn_number_kind.exit.loopexit

pm_strspn_number_kind.exit.loopexit:              ; preds = %pm_strspn_number_kind.exit.loopexitsplit, %.preheader.i.pm_strspn_number_kind.exit.loopexit_crit_edge
  %.0.i.ph = phi i64 [ %.0911.i.lcssa, %.preheader.i.pm_strspn_number_kind.exit.loopexit_crit_edge ], [ %.0.i.ph.ph, %pm_strspn_number_kind.exit.loopexitsplit ]
  br label %pm_strspn_number_kind.exit

pm_strspn_number_kind.exit:                       ; preds = %pm_strspn_number_kind.exit.loopexit, %bb.a
end_hunk_11
