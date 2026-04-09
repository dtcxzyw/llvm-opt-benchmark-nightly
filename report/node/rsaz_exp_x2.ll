inline.NumInlined: 17
inline.NumDeleted: 10
begin_hunk_0_@ossl_rsaz_mod_exp_avx512_x2:bb.a
  %i.m = add nsw i32 %i.l, 64
  %i.n = icmp ne i32 %i.k, 0
  %i.o = zext i1 %i.n to i32
  %i.p = lshr exact i32 %12, 8
  %i.q = add nsw i32 %i.p, -4                     ; 2 uses
  %13 = or disjoint i32 %i.q, %i.o
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr @ossl_rsaz_amm52_x1, i64 %14
  %i.r = load ptr, ptr %15, align 8, !tbaa !9     ; 4 uses
  %i.s = sext i32 %i.m to i64                     ; 2 uses
  %i.t = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.s, ptr noundef nonnull @.str, i32 noundef 248) #7 ; 11 uses
end_hunk_0
begin_hunk_1_@ossl_rsaz_mod_exp_avx512_x2:bb.a
bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.q, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @ossl_rsaz_amm52_x2, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !9  ; 39 uses
end_hunk_1
