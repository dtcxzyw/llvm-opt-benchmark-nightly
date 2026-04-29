inline.NumInlined: 48
inline.NumDeleted: 21
begin_hunk_0_@utrie2_freeze_78:bb.a
  br i1 %min.iters.check1647, label %.lr.ph.i32.i.preheader, label %vector.ph1648

vector.ph1648:                                    ; preds = %_ZL17findSameDataBlockPKjiii.exit.i.i
  %n.vec1650 = and i64 %i.ko, 8589934584          ; 5 uses
  %i.kp = add nsw i64 %n.vec1650, %i.jt
  %.cast1651 = trunc i64 %n.vec1650 to i32
  %i.kq = sub i32 %spec.select110.i.i, %.cast1651
  %.cast1652 = trunc i64 %n.vec1650 to i32
  %i.kr = shl i32 %.cast1652, 5
  %i.ks = add i32 %i.kr, %i.kl
  %broadcast.splatinsert1653 = insertelement <4 x i32> poison, i32 %i.kl, i64 0
  %broadcast.splat1654 = shufflevector <4 x i32> %broadcast.splatinsert1653, <4 x i32> poison, <4 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@utrie2_freeze_78:bb.a
  br i1 %min.iters.check1624, label %.lr.ph147.i.i.preheader1798, label %vector.ph1625

vector.ph1625:                                    ; preds = %.lr.ph147.i.i.preheader
  %n.vec1627 = and i64 %i.lr, 8589934584          ; 5 uses
  %i.ls = add nsw i64 %n.vec1627, %i.jt
  %.cast1628 = trunc i64 %n.vec1627 to i32
  %i.lt = sub i32 %spec.select110.i.i, %.cast1628
  %.cast1629 = trunc i64 %n.vec1627 to i32
  %i.lu = shl i32 %.cast1629, 5
  %i.lv = add i32 %.1104135.i.i, %i.lu            ; 3 uses
  %broadcast.splatinsert1630 = insertelement <4 x i32> poison, i32 %.1104135.i.i, i64 0
  %broadcast.splat1631 = shufflevector <4 x i32> %broadcast.splatinsert1630, <4 x i32> poison, <4 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@utrie2_freeze_78:bb.a
  br i1 %min.iters.check, label %.lr.ph152.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph152.preheader.i.i
  %n.vec = and i64 %i.mb, 8589934584              ; 5 uses
  %i.mc = add nsw i64 %n.vec, %i.jt
  %.cast = trunc i64 %n.vec to i32
  %i.md = sub i32 %spec.select110.i.i, %.cast
  %.cast1619 = trunc i64 %n.vec to i32
  %i.me = shl i32 %.cast1619, 5
  %i.mf = add i32 %i.ly, %i.me
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ly, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
end_hunk_2
