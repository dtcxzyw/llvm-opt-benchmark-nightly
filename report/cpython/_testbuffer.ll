inline.NumInlined: 175
inline.NumDeleted: 38
begin_hunk_0_@ndarray_item:bb.a
  store ptr null, ptr %i.ar, align 8, !tbaa !55
  %i.as = getelementptr i8, ptr %i.af, i64 112
  %i.at = load i32, ptr %i.as, align 8, !tbaa !53
  %.not.i34 = icmp eq i32 %i.at, 0
  %i.au = select i1 %.not.i34, i32 2, i32 0       ; 3 uses
  %i.av = getelementptr i8, ptr %i.af, i64 64     ; 6 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !49
  %i.aw = getelementptr i8, ptr %i.af, i64 72
  store i64 0, ptr %i.aw, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@ndarray_item:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not.i36 = phi i1 [ %i.bn, %bb.q ], [ true, %bb.p ] ; 2 uses
  %2 = icmp ne i32 %i.bf, 0                       ; 2 uses
  %.not46 = and i1 %2, %.not.i36
  br i1 %.not46, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %3 = or disjoint i32 %i.au, 8
  %4 = select i1 %2, i32 %i.au, i32 %3            ; 2 uses
  %i.bo = or disjoint i32 %4, 16
  %simplifycfg.merge = select i1 %.not.i36, i32 %4, i32 %i.bo
  store i32 %simplifycfg.merge, ptr %i.av, align 8, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bp = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.aj, i8 noundef signext 67) #15
  %.not8.i = icmp eq i32 %i.bp, 0
  br i1 %.not8.i, label %bb.v, label %bb.u
end_hunk_1
