begin_hunk_0
bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %0, 1
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %1 = icmp samesign ult i64 %spec.select.i, 4611686018427387904
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw nsw i64 %spec.select.i, 1
end_hunk_0
begin_hunk_1
bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  %spec.select.i.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %2 = icmp samesign ult i64 %spec.select.i.i, 4611686018427387904
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw nsw i64 %spec.select.i.i, 1
end_hunk_1
