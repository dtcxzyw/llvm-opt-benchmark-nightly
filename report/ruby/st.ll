inline.NumInlined: 263
inline.NumDeleted: 70
begin_hunk_0_@st_general_foreach:bb.a
  %i.p = getelementptr i8, ptr %0, i64 1          ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 2          ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %5 = trunc nuw i32 %4 to i1
  %.not87 = icmp eq i32 %4, 0
  %i.s = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.b
end_hunk_0
begin_hunk_1_@st_general_foreach:bb.a
  %.178 = phi i64 [ %i.cm, %find_table_entry_ind.exit.thread ], [ -1, %.thread ], [ %.02233.i, %find_entry.exit ], [ -1, %bb.f ] ; 2 uses
  %.072.in.in = phi i64 [ %.0.i93129, %find_table_entry_ind.exit.thread ], [ -1, %.thread ], [ %.02233.i, %find_entry.exit ], [ -1, %bb.f ]
  %.072.in = icmp eq i64 %.072.in.in, -1
  %or.cond3 = select i1 %.072.in, i1 %5, i1 false
  br i1 %or.cond3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %find_entry.exit.thread
end_hunk_1
begin_hunk_2_@set_general_foreach:bb.a
  %i.m = getelementptr i8, ptr %0, i64 1          ; 4 uses
  %i.n = getelementptr i8, ptr %0, i64 2          ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %5 = trunc nuw i32 %4 to i1
  %.not84 = icmp eq i32 %4, 0
  %i.p = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.b
end_hunk_2
begin_hunk_3_@set_general_foreach:bb.a
  %.175 = phi i64 [ %i.cj, %set_find_table_entry_ind.exit.thread ], [ -1, %.thread ], [ %.02233.i, %set_find_entry.exit ], [ -1, %bb.f ] ; 2 uses
  %.069.in.in = phi i64 [ %.0.i92136, %set_find_table_entry_ind.exit.thread ], [ -1, %.thread ], [ %.02233.i, %set_find_entry.exit ], [ -1, %bb.f ]
  %.069.in = icmp eq i64 %.069.in.in, -1
  %or.cond3 = select i1 %.069.in, i1 %5, i1 false
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %set_find_entry.exit.thread
end_hunk_3
