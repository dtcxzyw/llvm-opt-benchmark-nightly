inline.NumInlined: 3028
inline.NumDeleted: 1097
begin_hunk_0_@_ZN8facebook5velox10raw_vectorIiE4growEl:bb.a
  br i1 %i.c, label %_ZN8facebook5velox10raw_vectorIiE10paddedSizeEl.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.e = xor i64 %i.d, 63                         ; 2 uses
  %2 = shl nuw i64 1, %i.e
  %i.f = icmp eq i64 %2, %i.b
  %i.g = shl i64 2, %i.e
  %.0.i.i.i = select i1 %i.f, i64 %i.b, i64 %i.g
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10raw_vectorIiE4growEl:bb.a
  br i1 %i.c, label %_ZN8facebook5velox10raw_vectorIiE17calculateCapacityEl.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox10raw_vectorIiE12allocateDataEl.exit
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.q = xor i64 %i.p, 63                         ; 2 uses
  %3 = shl nuw i64 1, %i.q
  %i.r = icmp eq i64 %3, %i.b
  %i.s = shl i64 2, %i.q
  %i.t = add nsw i64 %i.s, -64
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10raw_vectorIPhE4growEl:bb.a
  br i1 %i.c, label %_ZN8facebook5velox10raw_vectorIPhE10paddedSizeEl.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.e = xor i64 %i.d, 63                         ; 2 uses
  %2 = shl nuw i64 1, %i.e
  %i.f = icmp eq i64 %2, %i.b
  %i.g = shl i64 2, %i.e
  %.0.i.i.i = select i1 %i.f, i64 %i.b, i64 %i.g
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10raw_vectorIPhE4growEl:bb.a
  br i1 %i.c, label %_ZN8facebook5velox10raw_vectorIPhE17calculateCapacityEl.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox10raw_vectorIPhE12allocateDataEl.exit
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.q = xor i64 %i.p, 63                         ; 2 uses
  %3 = shl nuw i64 1, %i.q
  %i.r = icmp eq i64 %3, %i.b
  %i.s = shl i64 2, %i.q
  %i.t = add nsw i64 %i.s, -64
end_hunk_3
