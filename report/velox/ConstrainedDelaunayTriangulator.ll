inline.NumInlined: 243
inline.NumDeleted: 192
begin_hunk_0_@_ZNSt11_Deque_baseIN4geos11triangulate3tri3TriESaIS3_EE17_M_initialize_mapEm:bb.a
  %i.a = udiv i64 %1, 5                           ; 2 uses
  %i.b = urem i64 %1, 5
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !80
  %i.e = icmp ugt i64 %1, 5764607523034234864
  br i1 %i.e, label %bb.b, label %_ZNSt11_Deque_baseIN4geos11triangulate3tri3TriESaIS3_EE15_M_allocate_mapEm.exit, !prof !81
end_hunk_0
begin_hunk_1_@_ZNSt11_Deque_baseIN4geos11triangulate3tri3TriESaIS3_EE17_M_initialize_mapEm:bb.a
  %i.h = shl nuw nsw i64 %.sroa.speculated, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #14 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !60
  %i.j = sub nsw i64 %.sroa.speculated, %i.g
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 6 uses
  %.idx = shl nuw nsw i64 %i.g, 3
end_hunk_1
