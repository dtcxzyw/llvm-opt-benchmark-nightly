begin_hunk_0
  br i1 %i.az, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %4 = add nsw i32 %.0.i5771, -8
  %5 = icmp ult i32 %4, -7
  br i1 %5, label %.preheader.i, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit

.preheader.i:                                     ; preds = %bb.n
  %.not24.i = icmp eq ptr %i.an, %i.w
end_hunk_0
