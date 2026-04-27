inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@CRYPTO_cfb128_1_encrypt:bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i32
  %i.e = trunc i64 %.032 to i32
  %i.f = and i32 %i.e, 7                          ; 3 uses
  %8 = lshr exact i32 128, %i.f
  %i.g = and i32 %8, %i.d
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, i8 0, i8 -128           ; 2 uses
  %i.i = load <16 x i8>, ptr %4, align 1          ; 2 uses
end_hunk_0
begin_hunk_1_@CRYPTO_cfb128_1_encrypt:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i32
  %9 = ashr i32 -129, %i.f
  %i.r = and i32 %9, %i.q
  %i.s = and i8 %i.k, -128
  %i.t = zext i8 %i.s to i32
  %i.u = lshr exact i32 %i.t, %i.f
end_hunk_1
