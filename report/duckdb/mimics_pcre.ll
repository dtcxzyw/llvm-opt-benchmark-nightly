inline.NumInlined: 185
inline.NumDeleted: 111
begin_hunk_0_@_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIbEESaIS2_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit
_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit:
  %i.a = udiv i64 %1, 21                          ; 2 uses
  %i.b = urem i64 %1, 21
  %i.c = add nuw nsw i64 %i.a, 3
  %2 = icmp ugt i64 %1, 125
  %3 = select i1 %2, i64 %i.c, i64 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.d, align 8, !tbaa !58
  %4 = add nuw nsw i64 %i.a, 1                    ; 2 uses
  %i.e = shl nuw nsw i64 %3, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !38
  %i.g = sub nsw i64 %3, %4
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %4, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

end_hunk_0
