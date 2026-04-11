inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCommandImport:bb.a
  %i.bc = tail call ptr (ptr, ptr, ...) @reconnectingRedisCommand(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.204) ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !41
  %i.be = icmp eq i32 %i.bd, 6
  br i1 %i.be, label %bb.bb, label %bb.s

bb.s:                                             ; preds = %cliAuth.exit.thread193
  %3 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bf = load ptr, ptr %3, align 8, !tbaa !42
  %i.bg = tail call fastcc i64 @getLongInfoField(ptr noundef %i.bf, ptr noundef nonnull @.str.203)
  %.not136 = icmp eq i64 %i.bg, 0
end_hunk_0
begin_hunk_1_@clusterManagerCommandImport:bb.a

bb.t:                                             ; preds = %bb.s
  tail call void @freeReplyObject(ptr noundef nonnull %i.bc) #34
  %i.bh = tail call ptr (ptr, ptr, ...) @reconnectingRedisCommand(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.397) ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %bb.bb, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
end_hunk_1
begin_hunk_2_@clusterManagerCommandImport:bb.a
  %.0109281 = phi i32 [ -999, %bb.ah ], [ %.1110, %.loopexit ]
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.0109281, i32 0) ; 2 uses
  call void @freeReplyObject(ptr noundef nonnull %.0107282) #34
  %i.cp = call ptr (ptr, ptr, ...) @reconnectingRedisCommand(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.451, i32 noundef %spec.store.select, i32 noundef 1000) ; 7 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !41
  switch i32 %i.cq, label %bb.aj [
    i32 6, label %bb.bb
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  call void @__assert_fail(ptr noundef nonnull @.str.452, ptr noundef nonnull @.str.7, i32 noundef 8157, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerCommandImport) #39
  unreachable
end_hunk_2
begin_hunk_3_@clusterManagerCommandImport:bb.a
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count
  br i1 %exitcond299.not, label %.loopexit, label %.lr.ph280, !llvm.loop !188

bb.bb:                                            ; preds = %bb.ai, %bb.t, %cliAuth.exit.thread193
  %.1108 = phi ptr [ %i.bh, %bb.t ], [ %i.bc, %cliAuth.exit.thread193 ], [ %i.cp, %bb.ai ] ; 3 uses
  %.3106.in.a = phi ptr [ null, %bb.t ], [ null, %cliAuth.exit.thread193 ], [ %.298, %bb.ai ] ; 2 uses
  %.3106.in = getelementptr inbounds nuw i8, ptr %.1108, i64 32
  %.3106 = load ptr, ptr %.3106.in, align 8, !tbaa !42 ; 2 uses
  %.not150 = icmp eq ptr %.3106, null
  br i1 %.not150, label %.thread241, label %bb.bc

end_hunk_3
begin_hunk_4_@clusterManagerCommandImport:bb.a

.thread241:                                       ; preds = %.loopexit, %bb.bb, %bb.bc, %.thread198
  %.4220 = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ 0, %.thread198 ], [ 1, %.loopexit ] ; 2 uses
  %.399219 = phi ptr [ %.3106.in.a, %bb.bb ], [ %.3106.in.a, %bb.bc ], [ %.298, %.thread198 ], [ %.298, %.loopexit ] ; 2 uses
  %.1108218 = phi ptr [ %.1108, %bb.bb ], [ %.1108, %bb.bc ], [ %i.cp, %.thread198 ], [ %i.cp, %.loopexit ]
  call void @redisFree(ptr noundef nonnull %i.ah) #34
  call void @freeReplyObject(ptr noundef nonnull %.1108218) #34
end_hunk_4
