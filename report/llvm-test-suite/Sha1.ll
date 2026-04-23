inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0_@_ZN7NCrypto5NSha18CContext5FinalEPh:bb.a
bb.c:                                             ; preds = %._crit_edge33, %bb.b
  %i.k = phi i32 [ %.pre, %._crit_edge33 ], [ 0, %bb.b ]
  %i.l = shl nuw nsw i32 %i.e, 3
  %2 = lshr exact i32 -2147483648, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  %i.o = or i32 %i.k, %2
  store i32 %i.o, ptr %i.n, align 4, !tbaa !4
  %.02627 = add nuw nsw i32 %i.f, 1               ; 2 uses
  %.not28 = icmp eq i32 %.02627, 14
end_hunk_0
