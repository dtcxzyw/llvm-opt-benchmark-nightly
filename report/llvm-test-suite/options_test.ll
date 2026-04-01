begin_hunk_0
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %.not16 = icmp ne i32 %i.g, 0
end_hunk_0
begin_hunk_1

.lr.ph:                                           ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.j = icmp slt i64 %i.e, 1
  %i.k = mul nsw i64 %i.e, 1000000                ; 2 uses
  %i.l = udiv i64 %i.k, 1000000000                ; 2 uses
  %.neg.i.i = mul nsw i64 %i.l, -1000000000
  %i.m = add nsw i64 %.neg.i.i, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
