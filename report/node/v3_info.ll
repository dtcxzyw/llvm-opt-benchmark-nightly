inline.NumInlined: 21
inline.NumDeleted: 8
begin_hunk_0_@i2v_AUTHORITY_INFO_ACCESS:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.k = call i32 @i2t_ASN1_OBJECT(ptr noundef nonnull %i.a, i32 noundef 80, ptr noundef %i.j) #5 ; 0 uses
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #6
  %3 = add i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #6
  %i.p = add i64 %3, %i.o
  %i.q = shl i64 %i.p, 32
  %sext = add i64 %i.q, 4294967296
  %i.r = ashr exact i64 %sext, 32                 ; 2 uses
  %i.s = call noalias ptr @CRYPTO_malloc(i64 noundef %i.r, ptr noundef nonnull @.str.5, i32 noundef 83) #5 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
end_hunk_0
