inline.NumInlined: 50
inline.NumDeleted: 14
begin_hunk_0_@kdf_hkdf:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
end_hunk_0
begin_hunk_1_@kdf_hkdf:bb.a
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.i, %bb.j
  %i.au = phi i64 [ %i.as, %bb.i ], [ %i.at, %bb.j ] ; 2 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !10
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l
end_hunk_1
begin_hunk_2_@kdf_hkdf:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.az = call ptr @ossl_evp_md_fetch(i64 noundef %i.ay, ptr noundef nonnull %i.c) #5
  %3 = load i64, ptr %i.d, align 8, !tbaa !10
  %i.ba = call i64 @rb_str_new(ptr noundef null, i64 noundef %3) #5, !callees !12 ; 3 uses
  %i.bb = call ptr @EVP_PKEY_CTX_new_id(i32 noundef 1036, ptr noundef null) #5 ; 14 uses
  %.not26 = icmp eq ptr %i.bb, null
  br i1 %.not26, label %bb.m, label %bb.n
end_hunk_2
