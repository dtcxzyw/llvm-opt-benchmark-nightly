inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@cf2_computeDarkening:bb.a
  %i.z = lshr i64 %i.y, 16                        ; 5 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %7 = xor i32 %i.ab, 31
  %i.ac = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %8 = xor i32 %i.ac, 31
  %i.ad = add nuw nsw i32 %7, %8
  %9 = icmp samesign ugt i32 %i.ad, 45
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = shl i32 %i.p, 16
end_hunk_0
