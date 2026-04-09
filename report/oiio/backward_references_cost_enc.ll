inline.NumInlined: 65
inline.NumDeleted: 36
begin_hunk_0_@VP8LBackwardReferencesTraceBackwards:bb.a
  br label %bb.av

bb.av:                                            ; preds = %UpdateCostAtIndex.exit138.i, %.lr.ph180.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph180.i ], [ %indvars.iv.next.i, %UpdateCostAtIndex.exit138.i ] ; 15 uses
  %.082175.i = phi i32 [ 0, %.lr.ph180.i ], [ %.2.i, %UpdateCostAtIndex.exit138.i ] ; 3 uses
  %.083174.i = phi i32 [ -1, %.lr.ph180.i ], [ %.285.i, %UpdateCostAtIndex.exit138.i ] ; 2 uses
  %.086173.i = phi i64 [ -1, %.lr.ph180.i ], [ %.187.i, %UpdateCostAtIndex.exit138.i ] ; 4 uses
  %.088172.i = phi i32 [ -1, %.lr.ph180.i ], [ %i.ri, %UpdateCostAtIndex.exit138.i ]
  %.089171.i = phi i32 [ -1, %.lr.ph180.i ], [ %i.rh, %UpdateCostAtIndex.exit138.i ] ; 2 uses
  %i.rb = load ptr, ptr %i.ky, align 8, !tbaa !27 ; 5 uses
  %i.rc = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rc
end_hunk_0
begin_hunk_1_@VP8LBackwardReferencesTraceBackwards:bb.a
  %i.tz = shl nsw i64 %i.ty, 23
  %i.ua = add nsw i64 %i.tz, %i.tx                ; 2 uses
  %i.ub = add nsw i64 %i.ua, %i.re
  %9 = trunc nuw nsw i64 %indvars.iv.i to i32
  call fastcc void @PushInterval(ptr noundef %i.m, i64 noundef %i.ub, i32 noundef %9, i32 noundef %i.ri)
  br label %bb.bn

bb.be:                                            ; preds = %bb.ba
  %.not102.i = icmp eq i32 %.083174.i, 0
  %i.uc = trunc nuw nsw i64 %i.rc to i32
  %i.ud = add i32 %.088172.i, %i.uc
  %i.ue = add i32 %i.ud, -1
  %.1.i = select i1 %.not102.i, i32 %.082175.i, i32 %i.ue ; 4 uses
  %10 = trunc nuw nsw i64 %indvars.iv.i to i32    ; 2 uses
  %i.uf = add i32 %i.ri, %10
  %i.ug = add i32 %i.uf, -1
  %i.uh = icmp sgt i32 %i.ug, %.1.i
  br i1 %i.uh, label %.preheader.i, label %bb.bn

end_hunk_1
begin_hunk_2_@VP8LBackwardReferencesTraceBackwards:bb.a
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bg, %.preheader.i
  %.0161.i = phi i32 [ %i.un, %bb.bg ], [ %10, %.preheader.i ], [ %i.uj, %.loopexit.loopexit.i ] ; 9 uses
  %.1149.i = phi i32 [ %i.ur, %bb.bg ], [ 0, %.preheader.i ], [ %i.us, %.loopexit.loopexit.i ] ; 2 uses
  %i.ut = add nsw i32 %.0161.i, -1                ; 2 uses
  %i.uu = load ptr, ptr %i.m, align 8, !tbaa !33  ; 3 uses
  %.not18.i.i = icmp eq ptr %i.uu, null
  %.pre.i = sext i32 %i.ut to i64                 ; 3 uses
end_hunk_2
begin_hunk_3_@VP8LBackwardReferencesTraceBackwards:bb.a
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !42
  %i.wg = add nsw i64 %i.wf, %.086173.i
  call fastcc void @PushInterval(ptr noundef %i.m, i64 noundef %i.wg, i32 noundef %.0161.i, i32 noundef %.1149.i)
  %11 = add i32 %.0161.i, %.1149.i
  %i.wh = add i32 %11, -1
  br label %bb.bn

bb.bn:                                            ; preds = %UpdateCostAtIndex.exit134.i, %bb.be, %GetDistanceCost.exit.i, %AddSingleLiteralWithCostModel.exit123.i
end_hunk_3
begin_hunk_4_@VP8LBackwardReferencesTraceBackwards:bb.a
  %.2.i = phi i32 [ %.082175.i, %GetDistanceCost.exit.i ], [ %i.wh, %UpdateCostAtIndex.exit134.i ], [ %.1.i, %bb.be ], [ %.082175.i, %AddSingleLiteralWithCostModel.exit123.i ]
  %i.wi = load ptr, ptr %i.m, align 8, !tbaa !33  ; 2 uses
  %.not18.i135.i = icmp eq ptr %i.wi, null
  br i1 %.not18.i135.i, label %UpdateCostAtIndex.exit138.i, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %bb.bn
  %12 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %UpdateCost.exit.i.i, %.lr.ph.split.i.preheader.i
  %.019.i.i = phi ptr [ %i.wn, %UpdateCost.exit.i.i ], [ %i.wi, %.lr.ph.split.i.preheader.i ] ; 9 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !56
  %i.wl = sext i32 %i.wk to i64
end_hunk_4
begin_hunk_5_@VP8LBackwardReferencesTraceBackwards:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.xg = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !59
  %i.xi = sub nsw i32 %12, %i.xh
  store i64 %i.xb, ptr %i.xd, align 8, !tbaa !42
  %i.xj = trunc i32 %i.xi to i16
  %i.xk = add i16 %i.xj, 1
end_hunk_5
