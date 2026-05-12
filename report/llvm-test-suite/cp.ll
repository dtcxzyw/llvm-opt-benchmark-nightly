inline.NumInlined: 19
inline.NumDeleted: 3
begin_hunk_0_@_ZN9ConstPool4readEP9ClassfilePt:bb.a
  %i.f = trunc i32 %i.e to i16
  %i.g = shl i16 %i.d, 8
  %i.h = and i16 %i.f, 255
  %i.i = or disjoint i16 %i.h, %i.g               ; 3 uses
  store i16 %i.i, ptr %0, align 8, !tbaa !22
  %i.j = zext i16 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 4
end_hunk_0
begin_hunk_1_@_ZN9ConstPool4readEP9ClassfilePt:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  store i8 0, ptr %i.l, align 8, !tbaa !24
  %i.n = zext i16 %i.i to i32                     ; 2 uses
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  %.not124 = icmp eq i32 %i.o, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph
end_hunk_1
