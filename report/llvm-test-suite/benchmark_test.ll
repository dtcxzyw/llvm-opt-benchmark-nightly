inline.NumInlined: 926
inline.NumDeleted: 399
begin_hunk_0_@_ZN12_GLOBAL__N_19FactorialEi:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind.a = phi <4 x i32> [ %i.b, %vector.ph ], [ %vec.ind.next.a, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.c, %vector.body ] ; 2 uses
  %i.c = mul <4 x i32> %vec.ind.a, %vec.phi       ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next.a = add nsw <4 x i32> %vec.ind.a, splat (i32 -4)
  %i.d = icmp eq i32 %index.next, %n.vec
  br i1 %i.d, label %tailrecurse._crit_edge.loopexit, label %vector.body, !llvm.loop !125

tailrecurse._crit_edge.loopexit:                  ; preds = %vector.body
  %broadcast.splatinsert7 = insertelement <4 x i32> poison, i32 %index, i64 0
  %broadcast.splat8 = shufflevector <4 x i32> %broadcast.splatinsert7, <4 x i32> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i32> %broadcast.splat8, <i32 0, i32 1, i32 2, i32 3>
  %.not = icmp ugt <4 x i32> %vec.iv, %broadcast.splat
  %i.e = select <4 x i1> %.not, <4 x i32> %vec.phi, <4 x i32> %i.c
  %i.f = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.e)
  br label %tailrecurse._crit_edge

end_hunk_0
