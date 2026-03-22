begin_hunk_0

.loopexit:                                        ; preds = %63, %.thread78, %37
  %.05685 = phi i64 [ %.05692, %37 ], [ %.05692, %.thread78 ], [ %.258, %63 ] ; [#uses=1 type=i64]
  %.4 = phi i32 [ %31, %37 ], [ %.265.ph, %.thread78 ], [ %.366, %63 ] ; [#uses=2 type=i32]
  %64 = icmp eq i32 %.4, -1                       ; [#uses=1 type=i1]
  %65 = icmp eq i64 %.05685, %2                   ; [#uses=1 type=i1]
  %. = select i1 %65, i32 0, i32 10               ; [#uses=1 type=i32]
  %spec.select113 = select i1 %64, i32 %., i32 %.4 ; [#uses=1 type=i32]
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %3
end_hunk_0
begin_hunk_1

.loopexit:                                        ; preds = %34, %.thread
  %.02940 = phi i64 [ %.02947, %.thread ], [ %.1, %34 ] ; [#uses=1 type=i64]
  %.4 = phi i32 [ %.2.ph, %.thread ], [ %.3, %34 ] ; [#uses=2 type=i32]
  %36 = icmp eq i32 %.4, -1                       ; [#uses=1 type=i1]
  %37 = icmp eq i64 %.02940, %4                   ; [#uses=1 type=i1]
  %. = select i1 %37, i32 0, i32 10               ; [#uses=1 type=i32]
  %spec.select60 = select i1 %36, i32 %., i32 %.4 ; [#uses=1 type=i32]
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %2
end_hunk_1
