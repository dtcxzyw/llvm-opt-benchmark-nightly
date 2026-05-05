inline.NumInlined: 119
inline.NumDeleted: 7
begin_hunk_0_@ldbReplParseCommand:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.v, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %bb.j ] ; 11 uses
  %.046 = phi ptr [ %i.au, %bb.v ], [ %i.y, %bb.j ] ; 3 uses
  %i.ai = load i32, ptr %0, align 4, !tbaa !9
  %i.aj = sext i32 %i.ai to i64
end_hunk_0
begin_hunk_1_@ldbReplParseCommand:bb.a

bb.u:                                             ; preds = %sdslen.exit68
  %i.bi = tail call ptr @sdsnewlen(ptr noundef nonnull %i.ao, i64 noundef %i.as) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bj = shl nuw nsw i64 %indvars.iv, 3
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.bj
  store ptr %i.bi, ptr %scevgep, align 8, !tbaa !103
end_hunk_1
begin_hunk_2_@ldbReplParseCommand:bb.a

..thread.loopexitsplit_crit_edge:                 ; preds = %bb.v
  %indvars.iv.lcssa107 = phi i64 [ %indvars.iv, %bb.v ]
  %split111 = phi i64 [ %indvars.iv.next, %bb.v ] ; 0 uses
  %i.bn = add i64 %indvars.iv.lcssa107, 1
  br label %.thread.loopexitsplit

end_hunk_2
begin_hunk_3_@ldbReplParseCommand:bb.a
  br label %.thread.loopexit

..thread.loopexit_crit_edge:                      ; preds = %bb.n
  %indvars.iv.lcssa110 = phi i64 [ %indvars.iv, %bb.n ]
  %indvars.iv.lcssa106 = phi i64 [ %indvars.iv, %bb.n ] ; 0 uses
  br label %.thread.loopexit

.thread.loopexit:                                 ; preds = %.thread.loopexitsplit, %..thread.loopexit_crit_edge
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.lcssa110, %..thread.loopexit_crit_edge ], [ %indvars.iv.next.lcssa.sink.ph, %.thread.loopexitsplit ]
  %indvars.le = trunc i64 %indvars.iv.next.lcssa.sink to i32
  br label %.thread

end_hunk_3
begin_hunk_4_@ldbReplParseCommand:bb.a
  br label %.thread73.loopexit

..thread73.loopexit_crit_edge:                    ; preds = %bb.m
  %indvars.iv.lcssa105 = phi i64 [ %indvars.iv, %bb.m ]
  %indvars.iv.lcssa105.a = phi i64 [ %indvars.iv, %bb.m ] ; 0 uses
  br label %.thread73.loopexit

.thread73.loopexit:                               ; preds = %.thread73.loopexitsplit, %..thread73.loopexit_crit_edge
  %indvars.iv.lcssa102 = phi i64 [ %indvars.iv.lcssa105, %..thread73.loopexit_crit_edge ], [ %indvars.iv.lcssa104, %.thread73.loopexitsplit ]
  %i.bo = trunc nuw nsw i64 %indvars.iv.lcssa102 to i32
  br label %.thread73

end_hunk_4
