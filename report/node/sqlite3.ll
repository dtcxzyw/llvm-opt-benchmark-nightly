inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3_stmt_explain:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ak = shl nuw nsw i16 %i.aj, 2
  %2 = xor i16 %i.ak, 12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@sqlite3_stmt_explain:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %narrow.sink = phi i16 [ %i.am, %bb.l ], [ %2, %bb.k ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i16 %narrow.sink, ptr %i.an, align 8, !tbaa !611
  %i.ao = load ptr, ptr %0, align 8, !tbaa !146
end_hunk_1
begin_hunk_2_@sqlite3VdbeMakeReady:bb.a
  %i.at = zext nneg i8 %i.as to i16
  %i.au = and i16 %i.ao, -13
  %i.av = or disjoint i16 %i.au, %i.at
  %2 = xor i8 %i.as, 12
  %i.aw = zext nneg i8 %2 to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i16 %i.aw, ptr %i.ax, align 8, !tbaa !611
  br label %allocSpace.exit
end_hunk_2
