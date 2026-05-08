inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL14decUnitComparePKhiS0_ii:bb.a
.thread78:                                        ; preds = %bb.i
  %i.w = add nsw i32 %1, 1
  %i.x = icmp slt i32 %i.w, %i.q
  br i1 %i.x, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.thread78, %bb.j
  %.pre-phi = phi i32 [ %i.s, %bb.j ], [ %i.q, %.thread78 ] ; 2 uses
  %i.y = icmp samesign ugt i32 %.pre-phi, 71
  br i1 %i.y, label %bb.l, label %bb.m

end_hunk_0
