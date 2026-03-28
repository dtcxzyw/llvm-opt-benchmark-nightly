begin_hunk_0
  br label %.thread76

bb.l:                                             ; preds = %bb.j
  %3 = icmp ugt i64 %.046, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %3, label %.thread78, label %bb.q

.thread76:                                        ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
end_hunk_0
