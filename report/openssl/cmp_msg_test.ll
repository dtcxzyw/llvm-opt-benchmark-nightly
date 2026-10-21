Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cmp_msg_test?download=true
inline.NumInlined: 54
inline.NumDeleted: 11
begin_hunk_0_@test_cmp_create_certconf_fail_info_max:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.p) #4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.r) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ %.010.ph, %.sink.split ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define internal i32 @test_cmp_create_kur() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.32) ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 7, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr @newkey, align 8, !tbaa !11 ; 3 uses
  %i.i = tail call i32 @EVP_PKEY_up_ref(ptr noundef %i.h) #4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %set1_newPkey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @OSSL_CMP_CTX_set0_newPkey(ptr noundef %i.g, i32 noundef 1, ptr noundef %i.h) #4
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %bb.d, label %set1_newPkey.exit

bb.d:                                             ; preds = %bb.c
  tail call void @EVP_PKEY_free(ptr noundef %i.h) #4
  br label %set1_newPkey.exit

set1_newPkey.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  %i.k = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 257, ptr noundef nonnull @.str.45, i32 noundef %.0.i) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %set1_newPkey.exit
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.m = load ptr, ptr @cert, align 8, !tbaa !13
  %i.n = tail call i32 @OSSL_CMP_CTX_set1_oldCert(ptr noundef %i.l, ptr noundef %i.m) #4
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 258, ptr noundef nonnull @.str.63, i32 noundef %i.p) #4
  %.not14 = icmp eq i32 %i.q, 0
  br i1 %.not14, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call fastcc i32 @execute_certreq_create_test(ptr noundef %i.a)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %set1_newPkey.exit, %bb.f
  %.012.ph = phi i32 [ %i.r, %bb.f ], [ 0, %set1_newPkey.exit ], [ 0, %bb.e ]
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.s) #4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.u) #4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.w) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ %.012.ph, %.sink.split ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal i32 @test_cmp_create_kur_without_oldcert() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.33) ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 7, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr @newkey, align 8, !tbaa !11 ; 3 uses
  %i.i = tail call i32 @EVP_PKEY_up_ref(ptr noundef %i.h) #4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %set1_newPkey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @OSSL_CMP_CTX_set0_newPkey(ptr noundef %i.g, i32 noundef 1, ptr noundef %i.h) #4
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %bb.d, label %set1_newPkey.exit

bb.d:                                             ; preds = %bb.c
  tail call void @EVP_PKEY_free(ptr noundef %i.h) #4
  br label %set1_newPkey.exit

set1_newPkey.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  %i.k = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 272, ptr noundef nonnull @.str.45, i32 noundef %.0.i) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %set1_newPkey.exit
  %i.l = tail call fastcc i32 @execute_certreq_create_test(ptr noundef %i.a)
  br label %.sink.split

.sink.split:                                      ; preds = %set1_newPkey.exit, %bb.e
  %.011.ph = phi i32 [ %i.l, %bb.e ], [ 0, %set1_newPkey.exit ]
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.m) #4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.o) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.q) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ %.011.ph, %.sink.split ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal i32 @test_cmp_create_cr() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.34) ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 2, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr @newkey, align 8, !tbaa !11 ; 3 uses
  %i.i = tail call i32 @EVP_PKEY_up_ref(ptr noundef %i.h) #4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %set1_newPkey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @OSSL_CMP_CTX_set0_newPkey(ptr noundef %i.g, i32 noundef 1, ptr noundef %i.h) #4
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %bb.d, label %set1_newPkey.exit

bb.d:                                             ; preds = %bb.c
  tail call void @EVP_PKEY_free(ptr noundef %i.h) #4
  br label %set1_newPkey.exit

set1_newPkey.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  %i.k = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 194, ptr noundef nonnull @.str.45, i32 noundef %.0.i) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %set1_newPkey.exit
  %i.l = tail call fastcc i32 @execute_certreq_create_test(ptr noundef %i.a)
  br label %.sink.split

.sink.split:                                      ; preds = %set1_newPkey.exit, %bb.e
  %.011.ph = phi i32 [ %i.l, %bb.e ], [ 0, %set1_newPkey.exit ]
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.m) #4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.o) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.q) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ %.011.ph, %.sink.split ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal i32 @test_cmp_create_cr_without_key() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.35) ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 2, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !26
  %0 = tail call fastcc i32 @execute_certreq_create_test(ptr noundef %i.a)
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %1, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.f) #4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.h) #4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.j) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.08 = phi i32 [ %0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define internal i32 @test_cmp_create_p10cr() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.36) ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 4, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 163, ptr %i.f, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.h = load ptr, ptr @pkcs10_f, align 8, !tbaa !19
  %i.i = load ptr, ptr @libctx, align 8, !tbaa !17
  %i.j = tail call ptr @load_csr_der(ptr noundef %i.h, ptr noundef %i.i) #4 ; 4 uses
  %i.k = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 226, ptr noundef nonnull @.str.64, ptr noundef %i.j) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @newkey, align 8, !tbaa !11 ; 3 uses
  %i.m = tail call i32 @EVP_PKEY_up_ref(ptr noundef %i.l) #4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %set1_newPkey.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @OSSL_CMP_CTX_set0_newPkey(ptr noundef %i.d, i32 noundef 1, ptr noundef %i.l) #4
  %.not4.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i, label %bb.e, label %set1_newPkey.exit

bb.e:                                             ; preds = %bb.d
  tail call void @EVP_PKEY_free(ptr noundef %i.l) #4
  br label %set1_newPkey.exit

set1_newPkey.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.d ]
  %i.o = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 227, ptr noundef nonnull @.str.57, i32 noundef %.0.i) #4
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %.thread, label %bb.f

bb.f:                                             ; preds = %set1_newPkey.exit
  %i.p = tail call i32 @OSSL_CMP_CTX_set1_p10CSR(ptr noundef %i.d, ptr noundef %i.j) #4
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 228, ptr noundef nonnull @.str.65, i32 noundef %i.r) #4
  %.not18 = icmp eq i32 %i.s, 0
  br i1 %.not18, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.b, %set1_newPkey.exit, %bb.f
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.t) #4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.v) #4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.x) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  tail call void @X509_REQ_free(ptr noundef %i.j) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @X509_REQ_free(ptr noundef %i.j) #4
  %i.y = tail call fastcc i32 @execute_certreq_create_test(ptr noundef %i.a)
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.z) #4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.ab) #4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.ad) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.a
  %.015 = phi i32 [ 0, %bb.a ], [ %i.y, %bb.g ], [ 0, %.thread ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal i32 @test_cmp_create_p10cr_null() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.37) ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 4, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 163, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr @newkey, align 8, !tbaa !11 ; 3 uses
  %i.i = tail call i32 @EVP_PKEY_up_ref(ptr noundef %i.h) #4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %set1_newPkey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @OSSL_CMP_CTX_set0_newPkey(ptr noundef %i.g, i32 noundef 1, ptr noundef %i.h) #4
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %bb.d, label %set1_newPkey.exit

bb.d:                                             ; preds = %bb.c
  tail call void @EVP_PKEY_free(ptr noundef %i.h) #4
  br label %set1_newPkey.exit

set1_newPkey.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  %i.k = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 243, ptr noundef nonnull @.str.45, i32 noundef %.0.i) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %set1_newPkey.exit
  %i.l = tail call fastcc i32 @execute_certreq_create_test(ptr noundef %i.a)
  br label %.sink.split

.sink.split:                                      ; preds = %set1_newPkey.exit, %bb.e
  %.011.ph = phi i32 [ %i.l, %bb.e ], [ 0, %set1_newPkey.exit ]
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.m) #4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.o) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.q) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ %.011.ph, %.sink.split ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_cmp_create_pollreq() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.38) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = tail call ptr @ossl_cmp_pollReq_new(ptr noundef %i.e, i32 noundef 4711) #4 ; 3 uses
  %i.g = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 118, ptr noundef nonnull @.str.66, ptr noundef %i.f) #4
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %execute_pollreq_create_test.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @valid_asn1_encoding(ptr noundef %i.f) #4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 118, ptr noundef nonnull @.str.51, i32 noundef %i.j) #4
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %execute_pollreq_create_test.exit

execute_pollreq_create_test.exit:                 ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ]
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.f) #4
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !31
  tail call void @ERR_print_errors_fp(ptr noundef %i.o) #4
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !27
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.p) #4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.r) #4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.t) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 43) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %execute_pollreq_create_test.exit
  %.06 = phi i32 [ %i.n, %execute_pollreq_create_test.exit ], [ 0, %bb.a ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define internal i32 @test_cmp_create_rr() #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @.str.39) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
