inline.NumInlined: 926
inline.NumDeleted: 399
begin_hunk_0_@_ZN12_GLOBAL__N_19FactorialEi:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ %i.b, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind.a = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.c, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next.a, %vector.body ] ; 2 uses
  %i.c = mul <4 x i32> %vec.ind, %vec.ind.a       ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 -4)
  %vec.ind.next.a = add nuw <4 x i32> %vec.phi, splat (i32 4)
  %i.d = icmp eq i32 %index.next, %n.vec
  br i1 %i.d, label %tailrecurse._crit_edge.loopexit, label %vector.body, !llvm.loop !125

tailrecurse._crit_edge.loopexit:                  ; preds = %vector.body
  %.not = icmp ugt <4 x i32> %vec.phi, %broadcast.splat
  %i.e = select <4 x i1> %.not, <4 x i32> %vec.ind.a, <4 x i32> %i.c
  %i.f = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.e)
  br label %tailrecurse._crit_edge

end_hunk_0
