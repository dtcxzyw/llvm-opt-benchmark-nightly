begin_hunk_0
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = udiv i64 4611686018427387904, %1
  %7 = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %7, 0
  %8 = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %6, %8             ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.d, label %bb.c

end_hunk_0
begin_hunk_1
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = udiv i64 4611686018427387904, %1
  %7 = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %7, 0
  %8 = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %6, %8             ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.d, label %bb.c

end_hunk_1
