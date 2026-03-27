begin_hunk_0
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2)
  %i.n = mul <2 x i64> %broadcast.splat8, %vec.ind
  %i.o = mul <2 x i64> %broadcast.splat8, %step.add
  %i.p = trunc <2 x i64> %i.n to <2 x i32>
end_hunk_0
begin_hunk_1
  store <2 x i32> %i.p, ptr %i.r, align 4, !alias.scope !11293, !noalias !11295
  store <2 x i32> %i.q, ptr %i.s, align 4, !alias.scope !11293, !noalias !11295
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !11300

end_hunk_1
