inline.NumInlined: 222
inline.NumDeleted: 105
begin_hunk_0_@upb_DecodeLengthPrefixed:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02947 = phi i64 [ %9, %bb.b ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.03046 = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ]
  %.03245 = phi ptr [ %i.d, %bb.b ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %.03245, align 1, !tbaa !22 ; 2 uses
end_hunk_0
begin_hunk_1_@upb_DecodeLengthPrefixed:bb.a
  %i.h = shl i64 %i.f, %i.g
  %i.i = add i64 %i.h, %.03046                    ; 8 uses
  %i.j = icmp slt i8 %i.c, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %9 = add nuw nsw i64 %.02947, 1
  %exitcond = icmp eq i64 %.02947, %umin
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %10 = add i64 %.02947, %i.i
  %i.k = add i64 %10, 1                           ; 2 uses
  store i64 %i.k, ptr %3, align 8, !tbaa !32
  %i.l = icmp ugt i64 %i.k, %1
  %i.m = icmp ugt i64 %i.i, 2147483647
  %or.cond34 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond34, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
