begin_hunk_0
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %19, %30, %41, %48
  %.0.i = phi i64 [ %33, %30 ], [ %22, %19 ], [ %55, %48 ], [ %44, %41 ] ; 8 uses
  %56 = icmp samesign ult i64 %.0.i, 128
  br i1 %56, label %lpEncodeBacklenBytes.exit, label %57

57:                                               ; preds = %lpDecodeBacklen.exit
  %58 = icmp samesign ult i64 %.0.i, 16383
  br i1 %58, label %lpEncodeBacklenBytes.exit, label %59

59:                                               ; preds = %57
  %60 = icmp samesign ult i64 %.0.i, 2097151
  br i1 %60, label %lpEncodeBacklenBytes.exit, label %61

61:                                               ; preds = %59
  %62 = icmp samesign ult i64 %.0.i, 268435455
  %spec.select.neg = select i1 %62, i64 -4, i64 -5
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %61, %45, %lpDecodeBacklen.exit.thread, %lpDecodeBacklen.exit, %57, %59
  %.0.i17 = phi i64 [ %.0.i, %59 ], [ %.0.i, %lpDecodeBacklen.exit ], [ %.0.i, %57 ], [ %13, %lpDecodeBacklen.exit.thread ], [ -1, %45 ], [ %.0.i, %61 ]
  %.0.i14.neg30 = phi i64 [ -3, %59 ], [ -1, %lpDecodeBacklen.exit ], [ -2, %57 ], [ -1, %lpDecodeBacklen.exit.thread ], [ -5, %45 ], [ %spec.select.neg, %61 ]
  %reass.sub = sub nsw i64 %.0.i14.neg30, %.0.i17
  %63 = getelementptr i8, ptr %1, i64 %reass.sub  ; 2 uses
  %64 = load i32, ptr %0, align 1
  %65 = zext i32 %64 to i64
end_hunk_0
