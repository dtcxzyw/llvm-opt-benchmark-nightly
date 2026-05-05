inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@SortGroup:bb.a
  br i1 %or.cond, label %.lr.ph.preheader, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %bb.b
  %.tr310357.lcssa = phi i32 [ %.tr310357, %bb.b ] ; 6 uses
  %.tr309356.lcssa = phi i32 [ %.tr309356, %bb.b ] ; 2 uses
  %accumulator.tr355.lcssa = phi i32 [ %accumulator.tr355, %bb.b ] ; 5 uses
end_hunk_0
begin_hunk_1_@SortGroup:bb.a
.lr.ph366.preheader.new:                          ; preds = %.lr.ph366.preheader
  %unroll_iter = and i64 %i.n, -2
  %scevgep719 = getelementptr i8, ptr %5, i64 4
  %i.p = zext i32 %.tr309356 to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %scevgep720 = getelementptr i8, ptr %scevgep719, i64 %i.q ; 2 uses
  %i.r = shl nuw nsw i64 %i.b, 2
end_hunk_1
begin_hunk_2_@SortGroup:bb.a
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !4
  %i.bt = lshr i32 %i.bo, %4
  %i.bu = add i32 %.tr309356, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.b, 2
  %i.bx = add nuw nsw i64 %i.bw, 4
end_hunk_2
begin_hunk_3_@SortGroup:bb.a

scalar.ph.preheader658:                           ; preds = %scalar.ph.prol.loopexit
  %scevgep760 = getelementptr i8, ptr %5, i64 12
  %i.ei = zext i32 %.tr309356 to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %scevgep761 = getelementptr i8, ptr %scevgep760, i64 %i.ej ; 4 uses
  %i.ek = shl nuw nsw i64 %i.b, 2
end_hunk_3
