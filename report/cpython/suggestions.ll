inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0_@levenshtein_distance:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %lsr.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.b ] ; 7 uses
  %.095123 = phi i64 [ %i.i, %bb.b ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.0108121 = phi i64 [ %i.j, %bb.b ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %scevgep177 = getelementptr i8, ptr %0, i64 %lsr.iv
  %scevgep180.a = getelementptr i8, ptr %2, i64 %lsr.iv
end_hunk_0
begin_hunk_1_@levenshtein_distance:bb.a
  br i1 %i.h, label %bb.b, label %.lr.ph..critedge.loopexit_crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.i = add i64 %.095123, -1                     ; 2 uses
  %i.j = add i64 %.0108121, -1                    ; 2 uses
  %i.k = icmp ne i64 %i.d, %lsr.iv
  %i.l = icmp ne i64 %i.e, %lsr.iv
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  %lsr.iv.next = add nuw i64 %lsr.iv, 1           ; 3 uses
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexitsplit, !llvm.loop !27

.critedge.loopexitsplit:                          ; preds = %bb.b
  %.lcssa183 = phi i64 [ %i.i, %bb.b ]
  %.lcssa181 = phi i64 [ %i.j, %bb.b ]
  %scevgep176 = getelementptr i8, ptr %0, i64 %lsr.iv.next
  %scevgep179 = getelementptr i8, ptr %2, i64 %lsr.iv.next
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.095123.lcssa = phi i64 [ %.095123, %.lr.ph ]
  %.0108121.lcssa = phi i64 [ %.0108121, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %0, i64 %lsr.iv
  %scevgep178 = getelementptr i8, ptr %2, i64 %lsr.iv
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.0108.lcssa.ph = phi i64 [ %.0108121.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.lcssa181, %.critedge.loopexitsplit ]
  %.0106.lcssa.ph = phi ptr [ %scevgep178, %.lr.ph..critedge.loopexit_crit_edge ], [ %scevgep179, %.critedge.loopexitsplit ]
  %.095.lcssa.ph = phi i64 [ %.095123.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.lcssa183, %.critedge.loopexitsplit ]
  %.089.lcssa.ph = phi ptr [ %scevgep, %.lr.ph..critedge.loopexit_crit_edge ], [ %scevgep176, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader119
end_hunk_1
begin_hunk_2_@levenshtein_distance:bb.a
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %bb.c
  %.196135 = phi i64 [ %i.r, %bb.c ], [ %.095.lcssa, %.lr.ph136.preheader ] ; 4 uses
  %.1109134 = phi i64 [ %i.s, %bb.c ], [ %.0108.lcssa, %.lr.ph136.preheader ] ; 4 uses
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %.196135
  %i.o = load i8, ptr %scevgep186, align 1, !tbaa !26
end_hunk_2
begin_hunk_3_@levenshtein_distance:bb.a
  br i1 %or.cond4, label %.lr.ph136, label %.critedge6.loopexitsplit, !llvm.loop !28

.critedge6.loopexitsplit:                         ; preds = %bb.c
  %.lcssa191 = phi i64 [ %i.r, %bb.c ]
  %.lcssa189 = phi i64 [ %i.s, %bb.c ]
  br label %.critedge6.loopexit

.lr.ph136..critedge6.loopexit_crit_edge:          ; preds = %.lr.ph136
  %.196135.lcssa = phi i64 [ %.196135, %.lr.ph136 ]
  %.1109134.lcssa = phi i64 [ %.1109134, %.lr.ph136 ]
  br label %.critedge6.loopexit

.critedge6.loopexit:                              ; preds = %.critedge6.loopexitsplit, %.lr.ph136..critedge6.loopexit_crit_edge
  %.1109.lcssa.ph = phi i64 [ %.1109134.lcssa, %.lr.ph136..critedge6.loopexit_crit_edge ], [ %.lcssa189, %.critedge6.loopexitsplit ]
  %.196.lcssa.ph = phi i64 [ %.196135.lcssa, %.lr.ph136..critedge6.loopexit_crit_edge ], [ %.lcssa191, %.critedge6.loopexitsplit ]
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge
end_hunk_3
