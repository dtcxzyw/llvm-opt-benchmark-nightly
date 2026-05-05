begin_hunk_0_@PyOS_mystrnicmp:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %lsr.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.d ]
  %.021 = phi ptr [ %i.n, %bb.d ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.01220 = phi ptr [ %i.m, %bb.d ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.d = load i8, ptr %.01220, align 1, !tbaa !11 ; 2 uses
  %.not = icmp eq i8 %i.d, 0
end_hunk_0
begin_hunk_1_@PyOS_mystrnicmp:bb.a
..critedge.loopexit_crit_edge:                    ; preds = %bb.c
  %.021.lcssa37 = phi ptr [ %.021, %bb.c ]
  %.01220.lcssa36 = phi ptr [ %.01220, %bb.c ]
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %..critedge.loopexit_crit_edge
end_hunk_1
begin_hunk_2_@PyOS_mystricmp:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %lsr.iv = phi ptr [ %scevgep, %.lr.ph.preheader ], [ %scevgep26, %bb.c ] ; 2 uses
  %i.b = phi i8 [ %i.l, %bb.c ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %.016 = phi ptr [ %i.k, %bb.c ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %i.c = load i8, ptr %.016, align 1, !tbaa !11   ; 2 uses
  %.not13 = icmp eq i8 %i.c, 0
  br i1 %.not13, label %.critedge.loopexitsplitsplit, label %bb.b
end_hunk_2
begin_hunk_3_@PyOS_mystricmp:bb.a
  br i1 %i.j, label %bb.c, label %..critedge.loopexit_crit_edge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.016, i64 1       ; 2 uses
  %i.l = load i8, ptr %lsr.iv, align 1, !tbaa !11 ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  %scevgep26 = getelementptr i8, ptr %lsr.iv, i64 1
end_hunk_3
begin_hunk_4_@PyOS_mystricmp:bb.a

.critedge.loopexitsplitsplit:                     ; preds = %.lr.ph
  %.016.lcssa = phi ptr [ %.016, %.lr.ph ]
  br label %.critedge.loopexitsplit

..critedge.loopexitsplit_crit_edge:               ; preds = %bb.c
  %.lcssa27 = phi ptr [ %i.k, %bb.c ]
  br label %.critedge.loopexitsplit, !llvm.loop !14

.critedge.loopexitsplit:                          ; preds = %.critedge.loopexitsplitsplit, %..critedge.loopexitsplit_crit_edge
  %.0.lcssa.ph.ph = phi ptr [ %.lcssa27, %..critedge.loopexitsplit_crit_edge ], [ %.016.lcssa, %.critedge.loopexitsplitsplit ]
  %.lcssa.ph.ph = phi i8 [ 0, %..critedge.loopexitsplit_crit_edge ], [ %i.b, %.critedge.loopexitsplitsplit ]
  br label %.critedge.loopexit

..critedge.loopexit_crit_edge:                    ; preds = %bb.b
  %.016.lcssa28 = phi ptr [ %.016, %bb.b ]
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %..critedge.loopexit_crit_edge
  %.0.lcssa.ph = phi ptr [ %.016.lcssa28, %..critedge.loopexit_crit_edge ], [ %.0.lcssa.ph.ph, %.critedge.loopexitsplit ]
  %.lcssa.ph = phi i8 [ %i.b, %..critedge.loopexit_crit_edge ], [ %.lcssa.ph.ph, %.critedge.loopexitsplit ]
  %i.m = zext i8 %.lcssa.ph to i64
  br label %.critedge

end_hunk_4
