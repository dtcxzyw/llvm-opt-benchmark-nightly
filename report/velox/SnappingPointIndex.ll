inline.NumInlined: 54
inline.NumDeleted: 45
begin_hunk_0_@_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE17_M_initialize_mapEm:bb.a
  %i.a = udiv i64 %1, 9                           ; 2 uses
  %i.b = urem i64 %1, 9
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !22
  %i.e = icmp ugt i64 %1, -8070450532247928860
  br i1 %i.e, label %.noexc3.i, label %_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE15_M_allocate_mapEm.exit, !prof !23
end_hunk_0
begin_hunk_1_@_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE17_M_initialize_mapEm:bb.a
  %i.g = shl nuw nsw i64 %.sroa.speculated, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #9 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !24
  %2 = load i64, ptr %i.d, align 8, !tbaa !22
  %i.i = sub i64 %2, %i.f
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 6 uses
  %.idx = shl nuw nsw i64 %i.f, 3
end_hunk_1
