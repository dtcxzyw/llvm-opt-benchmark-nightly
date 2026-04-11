begin_hunk_0_@dfilter:bb.a
bb.a:
  %i.a = mul nsw i32 %6, %5
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #9 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %.preheader115

end_hunk_0
begin_hunk_1_@dfilter:bb.a
  %.184138.us = phi i16 [ %i.by, %._crit_edge137.split.us143 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = sext i32 %i.bb to i64
  %9 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bc
  %i.bd = sext i16 %.184138.us to i64             ; 2 uses
  %10 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bd
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ar, i64 %i.bd
  br label %.lr.ph.us140

end_hunk_1
begin_hunk_2_@dfilter:bb.a
  %i.bl = mul nuw nsw i32 %i.bj, %i.as
  %i.bm = add nsw i32 %i.bl, %i.ba
  %i.bn = sext i32 %i.bm to i64
  %11 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bn
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.188.in.us = phi ptr [ %9, %bb.h ], [ %11, %bb.i ], [ %10, %bb.g ]
  %.188.us = load float, ptr %.188.in.us, align 4, !tbaa !11
  %i.bo = sub nsw i32 %i.au, %i.bi
  %i.bp = sext i32 %i.bo to i64
end_hunk_2
