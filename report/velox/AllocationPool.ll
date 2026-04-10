inline.NumInlined: 272
inline.NumDeleted: 160
begin_hunk_0_@_ZN8facebook5velox6memory14AllocationPool23maybeGrowLastAllocationEm:bb.a
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.b
  %i.u = add i64 %i.c, 2097151
  %4 = sub i64 %i.u, %.0.i
  %5 = and i64 %4, -2097152                       ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.g, i64 -32
  %i.w = lshr exact i64 %5, 12
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocation4growEm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76
  %i.z = add i64 %i.y, %5
  store i64 %i.z, ptr %i.x, align 8, !tbaa !76
  br label %bb.g

end_hunk_0
