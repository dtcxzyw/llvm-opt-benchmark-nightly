inline.NumInlined: 2352
inline.NumDeleted: 699
begin_hunk_0_@_ZN3fmt3v116detail6bigint12assign_pow10Ei:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %2 = lshr exact i32 -2147483648, %i.l
  %i.m = load ptr, ptr %0, align 8
  store i32 5, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail6bigint12assign_pow10Ei:bb.a
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 0, ptr %i.v, align 8
  %.019 = ashr i32 %2, 1                          ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

end_hunk_1
