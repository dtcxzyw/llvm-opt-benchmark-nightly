inline.NumInlined: 249
inline.NumDeleted: 138
begin_hunk_0_@_ZN2v86bigint20ToStringResultLengthENS0_6DigitsEib:bb.a
  %i.k = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  %i.l = add i32 %i.g, -1
  %i.m = udiv i32 %i.l, %i.k
  %4 = select i1 %3, i32 2, i32 1
  %i.n = add i32 %4, %i.m
  br label %bb.c

_ZN2v86bigint12IsPowerOfTwoEi.exit.thread:        ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN2v86bigint20ToStringResultLengthENS0_6DigitsEib:bb.a
  %i.v = zext i8 %i.r to i64
  %i.w = udiv i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %5 = add i32 %i.x, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %5, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ]
  %6 = zext i1 %3 to i32
  %i.y = add i32 %.0, %6
  ret i32 %i.y
}

end_hunk_1
