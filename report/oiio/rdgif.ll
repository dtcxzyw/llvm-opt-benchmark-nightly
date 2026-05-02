inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@ReadColorMap:bb.a

bb.b:                                             ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.h ] ; 7 uses
  %.030 = phi i1 [ true, %bb.a ], [ %.1, %bb.h ]
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.f = tail call i32 @getc(ptr noundef %i.e)    ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
end_hunk_0
begin_hunk_1_@ReadColorMap:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i1 [ false, %bb.g ], [ %.030, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !89
end_hunk_1
begin_hunk_2_@ReadColorMap:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 60 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !81
  %i.au = icmp eq i32 %i.at, 2
  %or.cond = select i1 %i.au, i1 %.1, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_2
