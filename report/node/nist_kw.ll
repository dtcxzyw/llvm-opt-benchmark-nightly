inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@mbedtls_nist_kw_unwrap:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
end_hunk_0
begin_hunk_1_@mbedtls_nist_kw_unwrap:bb.a
  br i1 %.not65, label %bb.k, label %.thread85

bb.k:                                             ; preds = %.thread, %bb.j
  %i.v = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV2, ptr noundef nonnull %i.b, i64 noundef 4) #9 ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !4
  %.not67 = icmp eq i32 %i.v, 0
  %spec.select76.neg = select i1 %.not67, i64 0, i64 25344
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_1
