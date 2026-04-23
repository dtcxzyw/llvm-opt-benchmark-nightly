inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZN8facebook5velox10raw_vectorIcE4growEl:bb.a
  br i1 %i.b, label %_ZN8facebook5velox10raw_vectorIcE10paddedSizeEl.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 true) ; 2 uses
  %i.d = xor i64 %i.c, 63
  %2 = lshr exact i64 -9223372036854775808, %i.c
  %i.e = icmp eq i64 %2, %i.a
  %i.f = shl i64 2, %i.d
  %.0.i.i.i = select i1 %i.e, i64 %i.a, i64 %i.f
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10raw_vectorIcE4growEl:bb.a
  br i1 %i.b, label %_ZN8facebook5velox10raw_vectorIcE17calculateCapacityEl.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox10raw_vectorIcE12allocateDataEl.exit
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 true) ; 2 uses
  %i.p = xor i64 %i.o, 63
  %3 = lshr exact i64 -9223372036854775808, %i.o
  %i.q = icmp eq i64 %3, %i.a
  %i.r = shl i64 2, %i.p
  %i.s = add nsw i64 %i.r, -64
end_hunk_1
