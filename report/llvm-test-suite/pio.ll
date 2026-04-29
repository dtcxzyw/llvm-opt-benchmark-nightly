inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@fgetp:bb.a
  %n.rnd.up = add nuw nsw i32 %.0.lcssa.ph.neg, 3
  %n.vec = and i32 %n.rnd.up, 12
  %i.ag = icmp eq i32 %n.vec, 4                   ; 3 uses
  %vec.phi.lcssa = select i1 %i.ag, <4 x i32> <i32 10, i32 1, i32 1, i32 1>, <4 x i32> <i32 100, i32 10, i32 10, i32 10>
  %.lcssa.a = select i1 %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.lcssa = select i1 %i.ag, <4 x i32> <i32 100, i32 10, i32 10, i32 10>, <4 x i32> <i32 1000, i32 100, i32 100, i32 100>
  %.not101 = icmp ugt <4 x i32> %.lcssa.a, %broadcast.splat
  %i.ah = select <4 x i1> %.not101, <4 x i32> %vec.phi.lcssa, <4 x i32> %.lcssa
  %i.ai = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.ah)
  br label %._crit_edge58

end_hunk_0
