begin_hunk_0
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = sext i32 %.pre106 to i64                 ; 10 uses
  %i.m = sext i32 %2 to i64                       ; 4 uses
  %6 = add nsw i64 %i.l, -1
  %i.n = add nsw i64 %i.l, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %reorder_short_term.exit
end_hunk_0
begin_hunk_1
  %.04894 = phi i32 [ %.050, %.lr.ph ], [ %.1, %reorder_short_term.exit ] ; 4 uses
  %smin130 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.n)
  %i.q = sub i64 %i.l, %smin130                   ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %6)
  %i.r = sub i64 %i.l, %smin                      ; 3 uses
  %i.s = icmp sgt i32 %i.o, 3
  br i1 %i.s, label %bb.c, label %bb.d
end_hunk_1
