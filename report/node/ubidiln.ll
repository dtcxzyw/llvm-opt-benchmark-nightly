inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@ubidi_getVisualMap_78:bb.a
  br i1 %min.iters.check, label %.preheader165.preheader363, label %vector.ph

vector.ph:                                        ; preds = %.preheader165.preheader
  %n.vec = and i64 %i.ac, 8589934584              ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %.0131172, i64 %i.ad ; 2 uses
  %.cast = trunc i64 %n.vec to i32                ; 2 uses
  %i.af = add i32 %.0121173, %.cast
  %i.ag = add i32 %i.u, %.cast
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
end_hunk_0
begin_hunk_1_@ubidi_getVisualMap_78:bb.a
  br i1 %min.iters.check288, label %scalar.ph287.preheader, label %vector.ph289

vector.ph289:                                     ; preds = %bb.i
  %n.vec291 = and i64 %i.at, 8589934584           ; 4 uses
  %i.au = shl nuw nsw i64 %n.vec291, 2
  %i.av = getelementptr i8, ptr %.0131172, i64 %i.au ; 2 uses
  %.cast292 = trunc i64 %n.vec291 to i32          ; 2 uses
  %i.aw = add i32 %.0121173, %.cast292
  %i.ax = sub i32 %i.ao, %.cast292
  %broadcast.splatinsert294 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat295 = shufflevector <4 x i32> %broadcast.splatinsert294, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ay = add nsw <4 x i32> %broadcast.splat295, <i32 0, i32 -1, i32 -2, i32 -3>
end_hunk_1
