inline.NumInlined: 56
inline.NumDeleted: 4
begin_hunk_0_@listTypeTryConversionRaw:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !62

bb.y:                                             ; preds = %._crit_edge.i, %bb.q
  %.029.i = phi i64 [ %i.av, %._crit_edge.i ], [ 0, %bb.q ]
  %.2.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.q ]
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.bx = tail call i64 @lpBytes(ptr noundef %i.bw) #8
  %i.by = add i64 %i.bx, %.2.i
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.ca = tail call i64 @lpLength(ptr noundef %i.bz) #8
  %i.cb = add i64 %i.ca, %.029.i
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = tail call i32 @quicklistNodeExceedsLimit(i32 noundef %i.bu, i64 noundef %i.by, i32 noundef %i.cc) #8
  %.not35.i = icmp eq i32 %i.cd, 0
end_hunk_0
