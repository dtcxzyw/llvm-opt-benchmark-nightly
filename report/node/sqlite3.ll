inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3PagerSavepoint:bb.a
  %i.cc = zext i32 %.07.i.i.i to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 132
  %5 = load volatile i32, ptr %i.ce, align 4, !tbaa !5
  br label %walFramePgno.exit.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@sqlite3PagerSavepoint:bb.a
  %i.ck = and i32 %i.cj, 4095
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cl
  %6 = load volatile i32, ptr %i.cm, align 4, !tbaa !5
  br label %walFramePgno.exit.i.i.i

walFramePgno.exit.i.i.i:                          ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %5, %bb.q ], [ %6, %bb.r ]
  %i.cn = tail call fastcc i32 @pagerUndoCallback(ptr noundef readonly %0, i32 noundef %.0.i.i.i.i), !inline_history !2201 ; 2 uses
  %.0.i.i.i = add i32 %.07.i.i.i, 1               ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
end_hunk_1
