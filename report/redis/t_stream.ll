inline.NumInlined: 278
inline.NumDeleted: 15
begin_hunk_0_@xpendingCommand:bb.a

bb.h:                                             ; preds = %._crit_edge163, %bb.d
  %i.af = phi ptr [ %i.m, %bb.d ], [ %.pre, %._crit_edge163 ]
  %.097 = phi i64 [ 3, %bb.d ], [ 5, %._crit_edge163 ] ; 3 uses
  %5 = phi i64 [ 6, %bb.d ], [ 8, %._crit_edge163 ]
  %6 = phi i32 [ 6, %bb.d ], [ 8, %._crit_edge163 ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.097
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !144
  %i.aj = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ai, ptr noundef nonnull %i.c, ptr noundef null) #20
end_hunk_0
begin_hunk_1_@xpendingCommand:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !204
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.097
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !144
  %i.aq = call i32 @streamParseIntervalIDOrReply(ptr noundef nonnull %0, ptr noundef %i.ap, ptr noundef nonnull %1, ptr noundef nonnull %i.e, i64 noundef 0)
  %.not110 = icmp eq i32 %i.aq, 0
end_hunk_1
begin_hunk_2_@xpendingCommand:bb.a

streamIncrID.exit.thread:                         ; preds = %streamIncrID.exit.thread.sink.split, %bb.l
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !204
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.097
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !144
  %i.bd = call i32 @streamParseIntervalIDOrReply(ptr noundef nonnull %0, ptr noundef %i.bc, ptr noundef nonnull %2, ptr noundef nonnull %i.f, i64 noundef -1)
end_hunk_2
begin_hunk_3_@xpendingCommand:bb.a
  br label %streamDecrID.exit.thread

streamDecrID.exit.thread:                         ; preds = %streamDecrID.exit.thread.sink.split, %bb.r
  %i.bm = load i32, ptr %i.i, align 8, !tbaa !202
  %i.bn = icmp slt i32 %6, %i.bm
  %.pre164 = load ptr, ptr %i.l, align 8, !tbaa !204 ; 3 uses
  br i1 %i.bn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %streamDecrID.exit.thread
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.pre164, i64 %5
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !144
  br label %bb.y

end_hunk_3
