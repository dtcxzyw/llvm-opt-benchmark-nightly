begin_hunk_0
  br i1 %i.az, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %4 = and i32 %.0.i5771, 7
  %or.cond.not.i = icmp eq i32 %4, 0
  br i1 %or.cond.not.i, label %.preheader.i, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit

.preheader.i:                                     ; preds = %bb.n
  %.not24.i = icmp eq ptr %i.an, %i.w
end_hunk_0
