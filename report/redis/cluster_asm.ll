inline.NumInlined: 160
inline.NumDeleted: 30
begin_hunk_0_@asmSendSlotRangesSync:bb.a
  br i1 %i.cl, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %bb.t
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 5)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph61

._crit_edge62:                                    ; preds = %.lr.ph61, %bb.t
end_hunk_0
