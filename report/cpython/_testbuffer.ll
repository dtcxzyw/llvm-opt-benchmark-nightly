inline.NumInlined: 175
inline.NumDeleted: 38
begin_hunk_0_@ndarray_item:bb.a
  store ptr null, ptr %i.ar, align 8, !tbaa !55
  %i.as = getelementptr i8, ptr %i.af, i64 112
  %i.at = load i32, ptr %i.as, align 8, !tbaa !53
  %.not.i34 = icmp eq i32 %i.at, 0                ; 2 uses
  %i.au = select i1 %.not.i34, i32 2, i32 0       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 64     ; 7 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !49
  %i.aw = getelementptr i8, ptr %i.af, i64 72
  store i64 0, ptr %i.aw, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@ndarray_item:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not.i36 = phi i1 [ %i.bn, %bb.q ], [ true, %bb.p ]
  %2 = icmp eq i32 %i.bf, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %bb.r
  %4 = select i1 %.not.i34, i32 10, i32 8         ; 2 uses
  store i32 %4, ptr %i.av, align 8, !tbaa !49
  br label %5

5:                                                ; preds = %3, %bb.r
  %6 = phi i32 [ %4, %3 ], [ %i.au, %bb.r ]
  br i1 %.not.i36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %5
  %i.bo = or disjoint i32 %6, 16
  store i32 %i.bo, ptr %i.av, align 8, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %5
  %i.bp = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.aj, i8 noundef signext 67) #15
  %.not8.i = icmp eq i32 %i.bp, 0
  br i1 %.not8.i, label %bb.v, label %bb.u
end_hunk_1
