begin_hunk_0
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %6, %1                    ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.d, label %bb.c

end_hunk_0
begin_hunk_1
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %6, %1                    ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.d, label %bb.c

end_hunk_1
