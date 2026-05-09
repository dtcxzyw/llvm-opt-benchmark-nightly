inline.NumInlined: 2896
inline.NumDeleted: 1413
begin_hunk_0_@_ZN12_GLOBAL__N_116EventBaseBackend16setEdgeTriggeredERN5folly14EventBaseEventE:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.y = load i16, ptr %i.x, align 8, !tbaa !14204 ; 2 uses
  %i.z = and i16 %i.y, 2
  %.not12 = icmp eq i16 %i.z, 0
  %spec.store.select = select i1 %.not12, i32 -2147483648, i32 -2147483647
  %i.aa = and i16 %i.y, 4
  %4 = zext nneg i16 %i.aa to i32
  %spec.select = or disjoint i32 %spec.store.select, %4
  store i32 %spec.select, ptr %2, align 4
  %i.ab = call i32 @epoll_ctl(i32 noundef %i.s, i32 noundef 3, i32 noundef %i.v, ptr noundef nonnull %2) #32
  %i.ac = icmp ne i32 %i.ab, -1                   ; 2 uses
end_hunk_0
