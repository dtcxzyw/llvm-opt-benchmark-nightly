inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@processCommand:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !111
  %1 = and i64 %i.gm, 2
  %2 = icmp eq i64 %1, 0
  br label %mustObeyClient.exit337

mustObeyClient.exit337:                           ; preds = %bb.az, %bb.ba
  %3 = phi i1 [ false, %bb.az ], [ %2, %bb.ba ]   ; 2 uses
  %i.gn = call i32 @authRequired(ptr noundef nonnull %0) #42
  %.not258 = icmp eq i32 %i.gn, 0
  br i1 %.not258, label %bb.bf, label %bb.bb
end_hunk_0
begin_hunk_1_@processCommand:bb.a
  br i1 %i.lo, label %bb.cr, label %writeCommandsDeniedByDiskError.exit.thread375

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %3, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7628), align 4, !tbaa !574
end_hunk_1
begin_hunk_2_@processCommand:bb.a

writeCommandsDeniedByDiskError.exit.thread375:    ; preds = %bb.cq, %bb.cz, %writeCommandsDeniedByDiskError.exit
  %i.me = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !57
  %4 = icmp ne ptr %i.me, null
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7572), align 4
  %5 = icmp ne i32 %i.mf, 0
  %or.cond8.not281.not286 = select i1 %4, i1 %5, i1 false
  %or.cond10.not283 = select i1 %or.cond8.not281.not286, i1 %3, i1 false
  %or.cond12 = select i1 %or.cond10.not283, i1 %i.ek, i1 false
  br i1 %or.cond12, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %writeCommandsDeniedByDiskError.exit.thread375
end_hunk_2
