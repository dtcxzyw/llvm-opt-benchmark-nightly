inline.NumInlined: 252
inline.NumDeleted: 51
begin_hunk_0_@strscan_scan_base10_integer:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.130 = phi i64 [ %i.au, %bb.h ], [ %i.ah, %.lr.ph.preheader ] ; 4 uses
  %i.ap = getelementptr i8, ptr %i.aa, i64 %.130
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !33
  %i.ar = sext i8 %i.aq to i32
end_hunk_0
begin_hunk_1_@strscan_scan_base10_integer:bb.a
  br i1 %i.av, label %.lr.ph, label %.critedge.loopexitsplit, !llvm.loop !40

.critedge.loopexitsplit:                          ; preds = %bb.h
  %.1.lcssa.ph.ph = phi i64 [ %i.ad, %bb.h ]
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.130.lcssa = phi i64 [ %.130, %.lr.ph ]
  %.130.lcssa.a = phi i64 [ %.130, %.lr.ph ]      ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.1.lcssa.ph = phi i64 [ %.130.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.1.lcssa.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.g
end_hunk_1
begin_hunk_2_@strscan_scan_base16_integer:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.261 = phi i64 [ %i.bk, %bb.m ], [ %.1, %.lr.ph.preheader ] ; 4 uses
  %i.bf = getelementptr i8, ptr %i.aa, i64 %.261
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !33
  %.fr66 = freeze i8 %i.bg                        ; 2 uses
end_hunk_2
begin_hunk_3_@strscan_scan_base16_integer:bb.a
  br i1 %i.bl, label %.lr.ph, label %.critedge.loopexitsplit, !llvm.loop !41

.critedge.loopexitsplit:                          ; preds = %bb.m
  %.2.lcssa.ph.ph = phi i64 [ %i.ad, %bb.m ]
  br label %.critedge.loopexit

switch.early.test60..critedge.loopexit_crit_edge: ; preds = %switch.early.test60
  %.261.lcssa = phi i64 [ %.261, %switch.early.test60 ]
  %.261.lcssa.a = phi i64 [ %.261, %switch.early.test60 ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %switch.early.test60..critedge.loopexit_crit_edge
  %.2.lcssa.ph = phi i64 [ %.261.lcssa, %switch.early.test60..critedge.loopexit_crit_edge ], [ %.2.lcssa.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.l
end_hunk_3
