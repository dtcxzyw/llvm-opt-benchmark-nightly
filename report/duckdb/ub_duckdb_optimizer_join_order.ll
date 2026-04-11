inline.NumInlined: 7873
inline.NumDeleted: 3418
begin_hunk_0_@_ZN6duckdb9SortTdomsERKNS_19RelationsSetToStatsES2_
define noundef zeroext i1 @_ZN6duckdb9SortTdomsERKNS_19RelationsSetToStatsES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !557, !range !434, !noundef !362
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2 = load i8, ptr %i.d, align 8, !range !434
  %3 = trunc nuw i8 %2 to i1                      ; 2 uses
  %or.cond = select i1 %i.c, i1 %3, i1 false
  br i1 %or.cond, label %4, label %6

4:                                                ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %11

6:                                                ; preds = %bb.a
  br i1 %i.c, label %7, label %9

7:                                                ; preds = %6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %11

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %. = select i1 %3, i64 56, i64 64
  br label %11

11:                                               ; preds = %9, %7, %4
  %.sink17 = phi i64 [ 56, %4 ], [ %., %9 ], [ 64, %7 ]
  %.sink.in = phi ptr [ %5, %4 ], [ %10, %9 ], [ %8, %7 ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink17
  %13 = load i64, ptr %12, align 8, !tbaa !19
  %14 = icmp ugt i64 %.sink, %13
  ret i1 %14
}

; Function Attrs: mustprogress uwtable
end_hunk_0
