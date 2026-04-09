inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@mi_pvalloc:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.d = icmp samesign ult i64 %i.c, 2
  %i.e = add i64 %0, -1
  %i.f = add i64 %i.e, %i.a                       ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
