inline.NumInlined: 61
inline.NumDeleted: 7
begin_hunk_0_@__ziplistCascadeUpdate:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.080152 = phi ptr [ %i.bp, %bb.y ], [ %i.ap, %.lr.ph.preheader ] ; 6 uses
  %.081151 = phi i64 [ %i.br, %bb.y ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.083150 = phi i64 [ %i.bq, %bb.y ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.084149 = phi i64 [ %i.bl, %bb.y ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %.085.in148 = phi i32 [ %i.bo, %bb.y ], [ %i.ar, %.lr.ph.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@__ziplistCascadeUpdate:bb.a
  br i1 %.not, label %zipStorePrevEntryLength.exit.loopexitsplit, label %.lr.ph, !llvm.loop !29

zipStorePrevEntryLength.exit.loopexitsplit:       ; preds = %bb.y
  %.lcssa371 = phi i64 [ %i.br, %bb.y ]
  %.lcssa366 = phi i64 [ %i.bq, %bb.y ]
  br label %zipStorePrevEntryLength.exit.loopexit

.zipStorePrevEntryLength.exit.loopexit_crit_edge: ; preds = %bb.r
  %.081151.lcssa372 = phi i64 [ %.081151, %bb.r ]
  %.083150.lcssa367 = phi i64 [ %.083150, %bb.r ]
  br label %zipStorePrevEntryLength.exit.loopexit

zipStorePrevEntryLength.exit.loopexit:            ; preds = %zipStorePrevEntryLength.exit.loopexitsplit, %.zipStorePrevEntryLength.exit.loopexit_crit_edge
  %.pn.in138.ph = phi ptr [ %.pn.in147, %.zipStorePrevEntryLength.exit.loopexit_crit_edge ], [ %.080152, %zipStorePrevEntryLength.exit.loopexitsplit ]
  %.083128.ph = phi i64 [ %.083150.lcssa367, %.zipStorePrevEntryLength.exit.loopexit_crit_edge ], [ %.lcssa366, %zipStorePrevEntryLength.exit.loopexitsplit ]
  %.081124.ph = phi i64 [ %.081151.lcssa372, %.zipStorePrevEntryLength.exit.loopexit_crit_edge ], [ %.lcssa371, %zipStorePrevEntryLength.exit.loopexitsplit ]
  %.080120.ph = phi ptr [ %.080152, %.zipStorePrevEntryLength.exit.loopexit_crit_edge ], [ %i.bp, %zipStorePrevEntryLength.exit.loopexitsplit ]
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %zipStorePrevEntryLength.exit.loopexit, %zipStorePrevEntryLengthLarge.exit.i, %bb.v, %zipStorePrevEntryLengthLarge.exit
end_hunk_1
