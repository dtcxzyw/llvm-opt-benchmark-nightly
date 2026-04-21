inline.NumInlined: 1185
inline.NumDeleted: 532
begin_hunk_0_@_ZN8facebook5velox6memory9MmapArena10roundBytesEm:bb.a
  br i1 %i.a, label %_ZN8facebook5velox4bits14nextPowerOfTwoEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true) ; 2 uses
  %i.c = xor i64 %i.b, 63
  %1 = lshr exact i64 -9223372036854775808, %i.b
  %i.d = icmp eq i64 %1, %0
  %i.e = shl i64 2, %i.c
  %.0.i = select i1 %i.d, i64 %0, i64 %i.e
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory9MmapArena8allocateEm:bb.a
  br i1 %i.c, label %.loopexit58, label %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit

_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit: ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true) ; 2 uses
  %i.e = xor i64 %i.d, 63
  %4 = lshr exact i64 -9223372036854775808, %i.d
  %i.f = icmp eq i64 %4, %1
  %i.g = shl i64 2, %i.e
  %.0.i.i = select i1 %i.f, i64 %1, i64 %i.g      ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory9MmapArena4freeEPvm:bb.a
  br i1 %or.cond, label %bb.u, label %_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit

_ZN8facebook5velox6memory9MmapArena10roundBytesEm.exit: ; preds = %bb.a
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.h = xor i64 %i.g, 63
  %11 = lshr exact i64 -9223372036854775808, %i.g
  %i.i = icmp eq i64 %11, %2
  %i.j = shl i64 2, %i.h
  %.0.i.i = select i1 %i.i, i64 %2, i64 %i.j      ; 8 uses
end_hunk_2
