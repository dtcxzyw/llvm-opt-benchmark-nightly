inline.NumInlined: 160
inline.NumDeleted: 30
begin_hunk_0_@asmSendSlotRangesSync:bb.a
  br i1 %i.cl, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %bb.t
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph61

._crit_edge62:                                    ; preds = %.lr.ph61, %bb.t
end_hunk_0
