inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@cf2_computeDarkening:bb.a
  %i.z = lshr i64 %i.y, 16                        ; 5 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %i.ac = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.ad = add nuw nsw i32 %i.ab, %i.ac
  %7 = icmp samesign ult i32 %i.ad, 17
  br i1 %7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = shl i32 %i.p, 16
end_hunk_0
