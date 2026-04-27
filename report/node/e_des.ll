begin_hunk_0_@des_cfb1_cipher:bb.a
  %i.h = zext i8 %i.g to i32
  %i.i = and i64 %.02936, 7                       ; 2 uses
  %i.j = trunc nuw nsw i64 %i.i to i32
  %4 = lshr exact i32 128, %i.j
  %i.k = and i32 %4, %i.h
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i8 0, i8 -128
  store i8 %i.l, ptr %i.a, align 1, !tbaa !9
end_hunk_0
