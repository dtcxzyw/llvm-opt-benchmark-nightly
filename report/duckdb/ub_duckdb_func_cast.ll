inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdb19HugeintCastToBignum9OperationINS_9hugeint_tEEENS_8bignum_tET_RNS_6VectorE:bb.a
  store <2 x i8> %i.es, ptr %i.ev, align 1, !tbaa !100, !alias.scope !1072, !noalias !1075
  store <2 x i8> %i.eu, ptr %i.ew, align 1, !tbaa !100, !alias.scope !1072, !noalias !1075
  %index.next207 = add nuw i64 %index202, 4       ; 2 uses
  %vec.ind.next208 = add nsw <2 x i64> %vec.ind203, splat (i64 -4)
  %i.ex = icmp eq i64 %index.next207, %n.vec197
  br i1 %i.ex, label %middle.block209, label %vector.body201, !llvm.loop !1077

end_hunk_0
