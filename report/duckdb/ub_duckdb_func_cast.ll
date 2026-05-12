inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdb19HugeintCastToBignum9OperationINS_9hugeint_tEEENS_8bignum_tET_RNS_6VectorE:bb.a

vector.ph191:                                     ; preds = %vector.memcheck
  %n.vec193 = and i64 %i.eh, 8589934588           ; 4 uses
  %7 = load <2 x i64>, ptr %4, align 16
  %broadcast.splat200 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %8 = sub nsw i64 %i.ea, %n.vec193
  %9 = add nuw nsw i64 %.053.lcssa119126, %n.vec193
  %broadcast.splatinsert194 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat195 = shufflevector <2 x i64> %broadcast.splatinsert194, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.en = add nsw <2 x i64> %broadcast.splat195, <i64 0, i64 -1>
end_hunk_0
begin_hunk_1_@_ZN6duckdb19HugeintCastToBignum9OperationINS_9hugeint_tEEENS_8bignum_tET_RNS_6VectorE:bb.a
  br i1 %cmp.n203, label %._crit_edge78, label %.lr.ph77.split.us.preheader208

.lr.ph77.split.us.preheader208:                   ; preds = %vector.memcheck, %.lr.ph77.split.us.preheader, %middle.block202
  %indvars.iv99.ph = phi i64 [ %i.ea, %vector.memcheck ], [ %i.ea, %.lr.ph77.split.us.preheader ], [ %8, %middle.block202 ]
  %.274.us.ph = phi i64 [ %.053.lcssa119126, %vector.memcheck ], [ %.053.lcssa119126, %.lr.ph77.split.us.preheader ], [ %9, %middle.block202 ]
  br label %.lr.ph77.split.us

.lr.ph77.split.us:                                ; preds = %.lr.ph77.split.us.preheader208, %.lr.ph77.split.us
end_hunk_1
