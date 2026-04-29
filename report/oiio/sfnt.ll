inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap14_get_def_chars:bb.a
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph
  %n.vec63 = and i64 %i.by, 504                   ; 5 uses
  %.cast64 = trunc nuw nsw i64 %n.vec63 to i32
  %i.bz = sub nsw i32 %i.bw, %.cast64
  %i.ca = shl nuw nsw i64 %n.vec63, 2
  %i.cb = getelementptr i8, ptr %.02540, i64 %i.ca ; 2 uses
  %.cast65 = trunc nuw nsw i64 %n.vec63 to i32
  %i.cc = add nuw nsw i32 %i.bt, %.cast65
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
end_hunk_0
