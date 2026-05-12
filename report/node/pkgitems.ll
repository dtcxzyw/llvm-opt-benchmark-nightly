inline.NumInlined: 29
inline.NumDeleted: 13
begin_hunk_0_@_ZN6icu_787Package16enumDependenciesEPNS_4ItemEPvPFvS3_PKcS5_E:bb.a
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call ptr @getDataInfo(ptr noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull %i.l) #9 ; 5 uses
  %i.r = load i32, ptr %i.l, align 4
end_hunk_0
begin_hunk_1_@_ZN6icu_787Package16enumDependenciesEPNS_4ItemEPvPFvS3_PKcS5_E:bb.a
  %i.bg = load ptr, ptr @stderr, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = load i32, ptr %i.o, align 8             ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #12 ; 4 uses
  %i.bl = load ptr, ptr %i.m, align 8
  %i.bm = call noundef i32 @ures_swap_78(ptr noundef %i.ax, ptr noundef %i.bl, i32 noundef %i.bi, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.c) #9, !inline_history !5 ; 0 uses
  %i.bn = load i32, ptr %i.o, align 8
  %i.bo = call ptr @getDataInfo(ptr noundef nonnull %i.bk, i32 noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.c) #9
  %i.bp = load i32, ptr %i.b, align 4
end_hunk_1
