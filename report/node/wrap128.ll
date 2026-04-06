begin_hunk_0_@CRYPTO_128_unwrap_pad:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = and i64 %4, -8
  %6 = add i64 %i.c, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = icmp ult i64 %4, 16
  %i.e = and i64 %4, -2147483641
end_hunk_0
begin_hunk_1_@CRYPTO_128_unwrap_pad:bb.a
  %i.r = zext i32 %i.q to i64                     ; 5 uses
  %i.s = add nsw i64 %4, -16
  %.not50 = icmp samesign uge i64 %i.s, %i.r
  %i.t = icmp ult i64 %6, %i.r
  %or.cond = or i1 %.not50, %i.t
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_1
