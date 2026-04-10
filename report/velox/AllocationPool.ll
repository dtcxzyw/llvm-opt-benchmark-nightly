inline.NumInlined: 272
inline.NumDeleted: 160
begin_hunk_0_@_ZN8facebook5velox6memory14AllocationPool23maybeGrowLastAllocationEm:bb.a
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.b
  %4 = xor i64 %.0.i, -1
  %i.u = add i64 %i.c, %4                         ; 2 uses
  %5 = and i64 %i.u, -2097152
  %6 = add i64 %5, 2097152
  %i.v = getelementptr inbounds i8, ptr %i.g, i64 -32
  %7 = or i64 %i.u, 2097151
  %8 = add i64 %7, 1
  %i.w = lshr exact i64 %8, 12
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocation4growEm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76
  %i.z = add i64 %6, %i.y
  store i64 %i.z, ptr %i.x, align 8, !tbaa !76
  br label %bb.g

end_hunk_0
