begin_hunk_0
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %19, %30, %41, %48
  %.0.i = phi i64 [ %33, %30 ], [ %22, %19 ], [ %55, %48 ], [ %44, %41 ] ; [#uses=1 type=i64]
  %.0.i.fr = freeze i64 %.0.i                     ; [#uses=8 type=i64]
  %56 = icmp samesign ult i64 %.0.i.fr, 128       ; [#uses=1 type=i1]
  br i1 %56, label %lpEncodeBacklenBytes.exit, label %57

57:                                               ; preds = %lpDecodeBacklen.exit
  %58 = icmp samesign ult i64 %.0.i.fr, 16383     ; [#uses=1 type=i1]
  br i1 %58, label %lpEncodeBacklenBytes.exit, label %59

59:                                               ; preds = %57
  %60 = icmp samesign ult i64 %.0.i.fr, 2097151   ; [#uses=1 type=i1]
  br i1 %60, label %lpEncodeBacklenBytes.exit, label %61

61:                                               ; preds = %59
  %62 = icmp ult i64 %.0.i.fr, 268435455          ; [#uses=1 type=i1]
  %spec.select.neg = select i1 %62, i64 -4, i64 -5 ; [#uses=1 type=i64]
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %61, %45, %lpDecodeBacklen.exit.thread, %lpDecodeBacklen.exit, %57, %59
  %.0.i17 = phi i64 [ %.0.i.fr, %59 ], [ %.0.i.fr, %lpDecodeBacklen.exit ], [ %.0.i.fr, %57 ], [ %13, %lpDecodeBacklen.exit.thread ], [ -1, %45 ], [ %.0.i.fr, %61 ] ; [#uses=1 type=i64]
  %.0.i14.neg30 = phi i64 [ -3, %59 ], [ -1, %lpDecodeBacklen.exit ], [ -2, %57 ], [ -1, %lpDecodeBacklen.exit.thread ], [ -5, %45 ], [ %spec.select.neg, %61 ] ; [#uses=1 type=i64]
  %reass.sub = sub i64 %.0.i14.neg30, %.0.i17     ; [#uses=1 type=i64]
  %63 = getelementptr i8, ptr %1, i64 %reass.sub  ; [#uses=2 type=ptr]
  %64 = load i32, ptr %0, align 1                 ; [#uses=1 type=i32]
  %65 = zext i32 %64 to i64                       ; [#uses=1 type=i64]
end_hunk_0
