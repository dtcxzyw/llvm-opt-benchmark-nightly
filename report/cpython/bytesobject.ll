begin_hunk_0
  br label %.thread76

bb.l:                                             ; preds = %bb.j
  %.not65 = icmp eq i64 %.046, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not65, label %bb.q, label %.thread78

.thread76:                                        ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
end_hunk_0
