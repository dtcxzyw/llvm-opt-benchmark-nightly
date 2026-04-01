begin_hunk_0

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !2291 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %1
  br i1 %i.ai, label %bb.h, label %._crit_edge111

end_hunk_0
begin_hunk_1
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %3 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 64)
  %narrow = shl nuw i32 %3, 1
  %4 = zext i32 %narrow to i64
  %i.aj = sext i32 %1 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.077 = phi i64 [ %4, %bb.h ], [ %i.al, %bb.i ] ; 4 uses
  %i.ak = icmp slt i64 %.077, %i.aj
  %i.al = shl nuw nsw i64 %.077, 1
  br i1 %i.ak, label %bb.i, label %bb.j, !llvm.loop !2292
end_hunk_1
