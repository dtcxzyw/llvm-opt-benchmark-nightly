inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  %n.mod.vf618 = and i64 %i.sy, 31                ; 2 uses
  %i.sz = icmp eq i64 %n.mod.vf618, 0
  %i.ta = select i1 %i.sz, i64 32, i64 %n.mod.vf618
  %n.vec619 = sub nsw i64 %i.sy, %i.ta            ; 3 uses
  %.cast = trunc i64 %n.vec619 to i32             ; 2 uses
  %i.tb = sub i32 %.0109.i.fr, %.cast
  %i.tc = getelementptr i8, ptr %.0113.i, i64 %n.vec619
  %i.td = sub i32 %.0122.i, %.cast
  %broadcast.splatinsert621 = insertelement <16 x i8> poison, i8 %.0107.i, i64 0
  %broadcast.splat622 = shufflevector <16 x i8> %broadcast.splatinsert621, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body623
end_hunk_0
