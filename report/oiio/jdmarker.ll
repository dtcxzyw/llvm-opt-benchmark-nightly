begin_hunk_0

52:                                               ; preds = %._crit_edge
  %53 = icmp ugt i32 %.060, 11
  %54 = load i32, ptr %2, align 4
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 101
  %58 = icmp eq i32 %54, 1651467329
  %59 = select i1 %53, i1 %58, i1 false
  %op.rdx100 = select i1 %59, i1 %57, i1 false
  br i1 %op.rdx100, label %60, label %98

end_hunk_0
begin_hunk_1
  %.2127.lcssa = phi i32 [ %.1126152, %89 ], [ %102, %middle.block ], [ %110, %.lr.ph ] ; 2 uses
  %.2122.lcssa = phi ptr [ %.1121153, %89 ], [ %101, %middle.block ], [ %108, %.lr.ph ]
  %.5116.lcssa = phi ptr [ %.4115, %89 ], [ %100, %middle.block ], [ %106, %.lr.ph ] ; 2 uses
  %.5.lcssa = phi i64 [ %.4, %89 ], [ %99, %middle.block ], [ %109, %.lr.ph ] ; 2 uses
  %80 = icmp ult i32 %.2127.lcssa, %.0124
  br i1 %80, label %81, label %._crit_edge.thread189, !llvm.loop !110

end_hunk_1
begin_hunk_2

89:                                               ; preds = %86, %81
  %.4115 = phi ptr [ %87, %86 ], [ %.3114154, %81 ] ; 5 uses
  %.4 = phi i64 [ %88, %86 ], [ %.3155, %81 ]     ; 5 uses
  %90 = icmp ult i32 %.1126152, %.0124
  %91 = icmp ne i64 %.4, 0
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %89
  %.4115208 = ptrtoaddr ptr %.4115 to i64
  %93 = add i64 %.4, -1
  %94 = xor i32 %.1126152, -1
  %95 = add i32 %.0124, %94
  %96 = zext i32 %95 to i64
end_hunk_2
begin_hunk_3

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %97, 8589934560                ; 6 uses
  %99 = sub i64 %.4, %n.vec                       ; 2 uses
  %100 = getelementptr i8, ptr %.4115, i64 %n.vec ; 2 uses
  %101 = getelementptr i8, ptr %.1121153, i64 %n.vec ; 2 uses
  %.cast = trunc i64 %n.vec to i32
end_hunk_3
begin_hunk_4
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader214

.lr.ph.preheader214:                              ; preds = %.lr.ph.preheader, %middle.block
  %.5148.ph = phi i64 [ %.4, %.lr.ph.preheader ], [ %99, %middle.block ]
  %.5116147.ph = phi ptr [ %.4115, %.lr.ph.preheader ], [ %100, %middle.block ]
  %.2122146.ph = phi ptr [ %.1121153, %.lr.ph.preheader ], [ %101, %middle.block ]
  %.2127145.ph = phi i32 [ %.1126152, %.lr.ph.preheader ], [ %102, %middle.block ]
end_hunk_4
