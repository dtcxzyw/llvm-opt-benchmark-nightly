inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@fgetp:bb.a
  %n.rnd.up = add nuw nsw i32 %.0.lcssa.ph.neg, 3
  %n.vec = and i32 %n.rnd.up, 12
  %i.ag = icmp eq i32 %n.vec, 4                   ; 3 uses
  %index.lcssa = select i1 %i.ag, i32 0, i32 4
  %vec.phi.lcssa = select i1 %i.ag, <4 x i32> <i32 10, i32 1, i32 1, i32 1>, <4 x i32> <i32 100, i32 10, i32 10, i32 10>
  %.lcssa.a = select i1 %i.ag, <4 x i32> <i32 100, i32 10, i32 10, i32 10>, <4 x i32> <i32 1000, i32 100, i32 100, i32 100>
  %broadcast.splatinsert99 = insertelement <4 x i32> poison, i32 %index.lcssa, i64 0
  %broadcast.splat100 = shufflevector <4 x i32> %broadcast.splatinsert99, <4 x i32> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i32> %broadcast.splat100, <i32 0, i32 1, i32 2, i32 3>
  %.not101 = icmp ugt <4 x i32> %vec.iv, %broadcast.splat
  %i.ah = select <4 x i1> %.not101, <4 x i32> %vec.phi.lcssa, <4 x i32> %.lcssa.a
  %i.ai = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.ah)
  br label %._crit_edge58

end_hunk_0
