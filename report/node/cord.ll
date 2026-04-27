inline.NumInlined: 2124
inline.NumDeleted: 685
begin_hunk_0_@_ZN4absl10CordBuffer25CreateWithCustomLimitImplIJEEES0_mmDpT_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated, i1 true)
  %3 = xor i64 %i.l, 63
  %4 = shl nuw nsw i64 1, %3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.e
  %.0 = phi i64 [ %.sroa.speculated21, %bb.c ], [ %2, %bb.e ], [ %i.c, %bb.d ], [ %4, %bb.g ], [ %i.j, %bb.f ]
  %i.m = add i64 %.0, -13                         ; 2 uses
  %i.n = icmp ult i64 %i.m, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 262131)
end_hunk_0
