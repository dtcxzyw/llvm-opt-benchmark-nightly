inline.NumInlined: 425
inline.NumDeleted: 175
begin_hunk_0_@_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE17_M_initialize_mapEm:bb.a
bb.a:
  %i.a = udiv i64 %1, 10                          ; 2 uses
  %i.b = urem i64 %1, 10
  %2 = add nuw nsw i64 %i.a, 3
  %3 = icmp ugt i64 %1, 59
  %4 = select i1 %3, i64 %2, i64 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.c, align 8, !tbaa !108
  %i.d = icmp samesign ugt i64 %4, 1152921504606846975
  br i1 %i.d, label %.noexc3.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_allocate_mapEm.exit, !prof !22

.noexc3.i:                                        ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE17_M_initialize_mapEm:bb.a

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %4, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !42
  %i.h = sub nsw i64 %4, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
end_hunk_1
