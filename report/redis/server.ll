inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@processCommand:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !111
  %1 = trunc i64 %i.gm to i32
  %2 = lshr i32 %1, 1
  %3 = and i32 %2, 1
  br label %mustObeyClient.exit337

mustObeyClient.exit337:                           ; preds = %bb.az, %bb.ba
  %4 = phi i32 [ 1, %bb.az ], [ %3, %bb.ba ]      ; 2 uses
  %i.gn = call i32 @authRequired(ptr noundef nonnull %0) #42
  %.not258 = icmp eq i32 %i.gn, 0
  br i1 %.not258, label %bb.bf, label %bb.bb
end_hunk_0
begin_hunk_1_@processCommand:bb.a
  br i1 %i.lo, label %bb.cr, label %writeCommandsDeniedByDiskError.exit.thread375

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.not275 = icmp eq i32 %4, 0
  br i1 %.not275, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7628), align 4, !tbaa !574
end_hunk_1
begin_hunk_2_@processCommand:bb.a

writeCommandsDeniedByDiskError.exit.thread375:    ; preds = %bb.cq, %bb.cz, %writeCommandsDeniedByDiskError.exit
  %i.me = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !57
  %5 = icmp eq ptr %i.me, null
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7572), align 4
  %6 = icmp eq i32 %i.mf, 0
  %or.cond8.not281.not286 = select i1 %5, i1 true, i1 %6
  %7 = trunc nuw i32 %4 to i1
  %or.cond10.not283 = select i1 %or.cond8.not281.not286, i1 true, i1 %7
  %or.cond10.not = xor i1 %or.cond10.not283, true
  %or.cond12 = select i1 %or.cond10.not, i1 %i.ek, i1 false
  br i1 %or.cond12, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %writeCommandsDeniedByDiskError.exit.thread375
end_hunk_2
