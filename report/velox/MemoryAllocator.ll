inline.NumInlined: 1479
inline.NumDeleted: 659
begin_hunk_0_@_ZN8facebook5velox6memory15MemoryAllocator18makeSizeClassSizesEm:bb.a
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZN8facebook5velox4bits14nextPowerOfTwoEm.exit:   ; preds = %bb.a
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true) ; 2 uses
  %i.j = xor i64 %i.i, 63
  %6 = lshr exact i64 -9223372036854775808, %i.i
  %i.k = icmp eq i64 %6, %1
  %i.l = shl i64 2, %i.j                          ; 2 uses
  %.not28 = icmp eq i64 %i.l, %1
end_hunk_0
