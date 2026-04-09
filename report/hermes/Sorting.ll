inline.NumInlined: 102
inline.NumDeleted: 55
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj:bb.a
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %2                         ; 2 uses
  %.not51 = icmp ugt i32 %3, %i.e
  br i1 %.not51, label %.thread44, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %5 = add i32 %2, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.03152 = phi i32 [ %3, %.lr.ph ], [ %.033, %bb.m ] ; 5 uses
  %i.f = sub i32 %.03152, %2
  %i.g = shl i32 %i.f, 1
  %i.h = add i32 %5, %i.g                         ; 5 uses
  %i.i = add i32 %i.h, 1                          ; 4 uses
  %i.j = icmp ult i32 %i.i, %4
  br i1 %i.j, label %bb.d, label %bb.h

end_hunk_0
