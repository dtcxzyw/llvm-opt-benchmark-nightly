begin_hunk_0
  br i1 %.not.i, label %40, label %switch.early.test._crit_edge.i

40:                                               ; preds = %skip_spaces.exit.i
  %41 = load i8, ptr %storemerge.lcssa.i.i, align 1, !tbaa !38 ; 2 uses
  %42 = add i8 %41, -48
  %or.cond.i = icmp ult i8 %42, 10
  br i1 %or.cond.i, label %.backedge.i, label %switch.early.test.i

end_hunk_0
begin_hunk_1
  br i1 %44, label %.lr.ph.i.i28.backedge, label %switch.early.test._crit_edge.i

switch.early.test.i:                              ; preds = %40
  switch i8 %41, label %switch.early.test._crit_edge.i [
    i8 102, label %.backedge.i
    i8 101, label %.backedge.i
    i8 100, label %.backedge.i
end_hunk_1
begin_hunk_2

27:                                               ; preds = %22, %24, %15
  %28 = phi ptr [ %17, %15 ], [ %20, %24 ], [ %20, %22 ] ; 7 uses
  %.095 = phi i64 [ 0, %15 ], [ %26, %24 ], [ %19, %22 ] ; 5 uses
  %.074 = phi i8 [ 0, %15 ], [ 0, %24 ], [ 1, %22 ] ; 3 uses
  %29 = ptrtoint ptr %28 to i64
  %30 = icmp ult ptr %28, %1
  br i1 %30, label %31, label %75
end_hunk_2
begin_hunk_3
  br i1 %34, label %.lr.ph, label %.loopexit128

.lr.ph:                                           ; preds = %.preheader127
  %35 = icmp eq i64 %.095, 0
  %36 = sub i64 %4, %29
  %scevgep245 = getelementptr i8, ptr %28, i64 %36 ; 2 uses
  br i1 %35, label %.lr.ph.split, label %.lr.ph.split.us
end_hunk_3
begin_hunk_4
  %.273 = phi i1 [ %86, %84 ], [ true, %79 ], [ true, %75 ]
  %.6 = phi i64 [ %.5, %84 ], [ %.3, %79 ], [ %.3, %75 ] ; 4 uses
  store ptr %90, ptr %0, align 8, !tbaa !26
  %91 = icmp ne i64 %.095, 0
  %92 = icmp ne i64 %.390, 0
  %or.cond8 = select i1 %91, i1 true, i1 %92
  br i1 %or.cond8, label %93, label %.critedge
end_hunk_4
begin_hunk_5
  %.7222 = phi i64 [ %108, %107 ], [ %.6, %.preheader126 ] ; 2 uses
  %.483221 = phi i64 [ %.584, %107 ], [ %.382, %.preheader126 ] ; 3 uses
  %.491220 = phi i64 [ %.592, %107 ], [ %.390, %.preheader126 ] ; 3 uses
  %.196219 = phi i64 [ %99, %107 ], [ %.095, %.preheader126 ] ; 2 uses
  %97 = icmp samesign ugt i64 %.196219, 214748363
  br i1 %97, label %.loopexit, label %98

end_hunk_5
begin_hunk_6
  %.8231 = phi i64 [ %111, %110 ], [ %.6, %.preheader ]
  %.685230 = phi i64 [ %.786, %110 ], [ %.382, %.preheader ] ; 3 uses
  %.693229 = phi i64 [ %.794, %110 ], [ %.390, %.preheader ] ; 2 uses
  %.297228 = phi i64 [ %112, %110 ], [ %.095, %.preheader ] ; 2 uses
  %112 = udiv i64 %.297228, 10                    ; 2 uses
  %113 = icmp slt i64 %.685230, 214748364
  br i1 %113, label %114, label %116
end_hunk_6
begin_hunk_7
  br i1 %or.cond10, label %110, label %.critedge

._crit_edge:                                      ; preds = %110, %107, %.preheader
  %.297.lcssa = phi i64 [ %.095, %.preheader ], [ %99, %107 ], [ %112, %110 ] ; 2 uses
  %.693.lcssa = phi i64 [ %.390, %.preheader ], [ %.592, %107 ], [ %.794, %110 ] ; 2 uses
  %.685.lcssa = phi i64 [ %.382, %.preheader ], [ %.584, %107 ], [ %.786, %110 ]
  %.not115 = icmp eq i64 %.693.lcssa, 0
end_hunk_7
begin_hunk_8
  ]

9:                                                ; preds = %7
  %10 = add nsw i32 %.01126, 1
  br label %skip_string.exit

11:                                               ; preds = %7
  %12 = add nsw i32 %.01126, -1                   ; 2 uses
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %.thread, label %skip_string.exit

end_hunk_8
begin_hunk_9
  br i1 %.not.i, label %28, label %switch.early.test._crit_edge.i

28:                                               ; preds = %skip_spaces.exit.i
  %29 = load i8, ptr %storemerge.lcssa.i.i, align 1, !tbaa !38 ; 2 uses
  %30 = add i8 %29, -48
  %or.cond.i = icmp ult i8 %30, 10
  br i1 %or.cond.i, label %.backedge.i, label %switch.early.test.i

end_hunk_9
begin_hunk_10
  br i1 %32, label %.lr.ph.i.i.backedge, label %switch.early.test._crit_edge.i

switch.early.test.i:                              ; preds = %28
  switch i8 %29, label %switch.early.test._crit_edge.i [
    i8 102, label %.backedge.i
    i8 101, label %.backedge.i
    i8 100, label %.backedge.i
end_hunk_10
