inline.NumInlined: 8
inline.NumDeleted: 8
begin_hunk_0_@WebPDequantizeLevels:bb.a
vector.body140:                                   ; preds = %.lr.ph57.i.preheader, %vector.body140
  %index141 = phi i64 [ %index.next144, %vector.body140 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.gh = add i64 %index141, %wide.trip.count.i34 ; 3 uses
  %5 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gh
  %wide.load142 = load <8 x i16>, ptr %5, align 2, !tbaa !12
  %6 = trunc nuw nsw i64 %i.gh to i32
  %i.gi = add i32 %6, %i.cl
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.gj
  %wide.load143 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !12
end_hunk_0
begin_hunk_1_@WebPDequantizeLevels:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ix = add i64 %index, %i.hq                   ; 2 uses
  %i.iy = trunc nsw i64 %i.ix to i32              ; 2 uses
  %i.iz = add i32 %.1, %i.iy
  %i.ja = sub i32 %i.cp, %i.iz
  %i.jb = sext i32 %i.ja to i64
end_hunk_1
