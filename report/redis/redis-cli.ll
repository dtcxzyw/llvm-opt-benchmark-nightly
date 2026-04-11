inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCommandImport:bb.a
  %i.bc = tail call ptr (ptr, ptr, ...) @reconnectingRedisCommand(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.204) ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !41
  %i.be = icmp eq i32 %i.bd, 6
  %3 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  br i1 %i.be, label %bb.bb, label %bb.s

bb.s:                                             ; preds = %cliAuth.exit.thread193
  %i.bf = load ptr, ptr %3, align 8, !tbaa !42
  %i.bg = tail call fastcc i64 @getLongInfoField(ptr noundef %i.bf, ptr noundef nonnull @.str.203)
  %.not136 = icmp eq i64 %i.bg, 0
end_hunk_0
begin_hunk_1_@clusterManagerCommandImport:bb.a

bb.t:                                             ; preds = %bb.s
  tail call void @freeReplyObject(ptr noundef nonnull %i.bc) #34
  %i.bh = tail call ptr (ptr, ptr, ...) @reconnectingRedisCommand(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.397) ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %4, label %bb.u

4:                                                ; preds = %bb.t
  %5 = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  br label %bb.bb

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
end_hunk_1
begin_hunk_2_@clusterManagerCommandImport:bb.a
  %.0109281 = phi i32 [ -999, %bb.ah ], [ %.1110, %.loopexit ]
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.0109281, i32 0) ; 2 uses
  call void @freeReplyObject(ptr noundef nonnull %.0107282) #34
  %i.cp = call ptr (ptr, ptr, ...) @reconnectingRedisCommand(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.451, i32 noundef %spec.store.select, i32 noundef 1000) ; 8 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !41
  switch i32 %i.cq, label %bb.aj [
    i32 6, label %6
    i32 2, label %bb.ak
  ]

6:                                                ; preds = %bb.ai
  %7 = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  br label %bb.bb

bb.aj:                                            ; preds = %bb.ai
  call void @__assert_fail(ptr noundef nonnull @.str.452, ptr noundef nonnull @.str.7, i32 noundef 8157, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerCommandImport) #39
  unreachable
end_hunk_2
begin_hunk_3_@clusterManagerCommandImport:bb.a
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count
  br i1 %exitcond299.not, label %.loopexit, label %.lr.ph280, !llvm.loop !188

bb.bb:                                            ; preds = %cliAuth.exit.thread193, %6, %4
  %.1108 = phi ptr [ %i.cp, %6 ], [ %i.bh, %4 ], [ %i.bc, %cliAuth.exit.thread193 ] ; 2 uses
  %.3106.in.a = phi ptr [ %7, %6 ], [ %5, %4 ], [ %3, %cliAuth.exit.thread193 ]
  %.399 = phi ptr [ %.298, %6 ], [ null, %4 ], [ null, %cliAuth.exit.thread193 ] ; 2 uses
  %.3106 = load ptr, ptr %.3106.in.a, align 8, !tbaa !42 ; 2 uses
  %.not150 = icmp eq ptr %.3106, null
  br i1 %.not150, label %.thread241, label %bb.bc

end_hunk_3
begin_hunk_4_@clusterManagerCommandImport:bb.a

.thread241:                                       ; preds = %.loopexit, %bb.bb, %bb.bc, %.thread198
  %.4220 = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ 0, %.thread198 ], [ 1, %.loopexit ] ; 2 uses
  %.399219 = phi ptr [ %.399, %bb.bb ], [ %.399, %bb.bc ], [ %.298, %.thread198 ], [ %.298, %.loopexit ] ; 2 uses
  %.1108218 = phi ptr [ %.1108, %bb.bb ], [ %.1108, %bb.bc ], [ %i.cp, %.thread198 ], [ %i.cp, %.loopexit ]
  call void @redisFree(ptr noundef nonnull %i.ah) #34
  call void @freeReplyObject(ptr noundef nonnull %.1108218) #34
end_hunk_4
