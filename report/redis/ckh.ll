inline.NumInlined: 64
inline.NumDeleted: 21
begin_hunk_0_@je_ckh_new:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !15
  %i.b = urem i64 %2, 3
  %6 = xor i64 %i.b, 3
  %7 = add i64 %6, %2
  %i.c = udiv i64 %7, 3
  %i.d = shl i64 %i.c, 2
  br label %bb.b

end_hunk_0
