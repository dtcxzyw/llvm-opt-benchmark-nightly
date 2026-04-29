inline.NumInlined: 239
inline.NumDeleted: 57
begin_hunk_0_@_deque_rotate:bb.a
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.1103, -4                     ; 4 uses
  %i.az = shl i64 %n.vec, 3
  %i.ba = getelementptr i8, ptr %i.aq, i64 %i.az
  %2 = shl i64 %n.vec, 3
  %i.bb = getelementptr i8, ptr %i.as, i64 %2
  %i.bc = and i64 %.1103, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %offset.idx ; 2 uses
  %offset.idx289 = shl i64 %index, 3
  %next.gep290 = getelementptr i8, ptr %i.as, i64 %offset.idx289 ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !27
  %wide.load291 = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@_deque_rotate:bb.a
  br i1 %diff.check297, label %scalar.ph298.preheader, label %vector.ph300

vector.ph300:                                     ; preds = %vector.memcheck294
  %n.vec302 = and i64 %.1, -4                     ; 4 uses
  %i.dm = shl i64 %n.vec302, 3
  %i.dn = getelementptr i8, ptr %i.dd, i64 %i.dm
  %3 = shl i64 %n.vec302, 3
  %i.do = getelementptr i8, ptr %i.df, i64 %3
  %i.dp = and i64 %.1, 3
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph300
  %index304 = phi i64 [ 0, %vector.ph300 ], [ %index.next311, %vector.body303 ] ; 3 uses
  %offset.idx305 = shl i64 %index304, 3
  %next.gep306 = getelementptr i8, ptr %i.dd, i64 %offset.idx305 ; 2 uses
  %offset.idx307 = shl i64 %index304, 3
  %next.gep308 = getelementptr i8, ptr %i.df, i64 %offset.idx307 ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep306, i64 16
  %wide.load309 = load <2 x ptr>, ptr %next.gep306, align 8, !tbaa !27
  %wide.load310 = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !27
end_hunk_1
