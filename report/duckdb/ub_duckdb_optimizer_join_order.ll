inline.NumInlined: 7873
inline.NumDeleted: 3418
begin_hunk_0_@_ZN6duckdb9SortTdomsERKNS_19RelationsSetToStatsES2_
define noundef zeroext i1 @_ZN6duckdb9SortTdomsERKNS_19RelationsSetToStatsES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %2 = load i8, ptr %i.a, align 8, !tbaa !557, !range !434, !noundef !362
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i8, ptr %3, align 8, !range !434
  %i.c = trunc nuw i8 %i.b to i1
  %.sink17 = select i1 %i.c, i64 56, i64 64
  %4 = icmp eq i8 %2, 0
  %.pn = select i1 %4, i64 64, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  %.sink = load i64, ptr %i.d, align 8, !tbaa !19
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink17
  %6 = load i64, ptr %5, align 8, !tbaa !19
  %7 = icmp ugt i64 %.sink, %6
  ret i1 %7
}

; Function Attrs: mustprogress uwtable
end_hunk_0
