inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL14decUnitComparePKhiS0_ii:bb.a
.thread78:                                        ; preds = %bb.i
  %i.w = add nsw i32 %1, 1
  %i.x = icmp slt i32 %i.w, %i.q
  br i1 %i.x, label %.loopexit, label %.thread79

.thread79:                                        ; preds = %.thread78
  %5 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread79
  %.pre-phi = phi i32 [ %i.s, %bb.j ], [ %5, %.thread79 ] ; 2 uses
  %i.y = icmp samesign ugt i32 %.pre-phi, 71
  br i1 %i.y, label %bb.l, label %bb.m

end_hunk_0
