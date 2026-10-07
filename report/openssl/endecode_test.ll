Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/endecode_test?download=true
inline.NumInlined: 265
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@test_output_memory

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @encode_EVP_PKEY_i2d(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, i32 %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @i2d_PKCS8PrivateKey(ptr noundef %4, ptr noundef null) #7 ; 4 uses
  %i.c = tail call i32 @test_int_gt(ptr noundef nonnull @.str.30, i32 noundef 296, ptr noundef nonnull @.str.452, ptr noundef nonnull @.str.428, i32 noundef %i.b, i32 noundef 0) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %i.b to i64                     ; 2 uses
  %i.e = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.d, ptr noundef nonnull @.str.30, i32 noundef 297) #7 ; 7 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !24
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 297, ptr noundef nonnull @.str.453, ptr noundef %i.e) #7
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @i2d_PKCS8PrivateKey(ptr noundef %4, ptr noundef nonnull %i.a) #7
  %i.h = call i32 @test_int_eq(ptr noundef nonnull @.str.30, i32 noundef 298, ptr noundef nonnull @.str.454, ptr noundef nonnull @.str.455, i32 noundef %i.g, i32 noundef %i.b) #7
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = call i32 @test_int_eq(ptr noundef nonnull @.str.30, i32 noundef 299, ptr noundef nonnull @.str.456, ptr noundef nonnull @.str.455, i32 noundef %i.m, i32 noundef %i.b) #7
  %.not15 = icmp eq i32 %i.n, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %2, align 8, !tbaa !27
  store i64 %i.d, ptr %3, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.012 = phi ptr [ null, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ]
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @CRYPTO_free(ptr noundef %.012, ptr noundef nonnull @.str.30, i32 noundef 307) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @i2d_PKCS8PrivateKey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_text(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @test_size_t_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.458, i64 noundef %3, i64 noundef %5) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @test_strn_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.444, ptr noundef nonnull @.str.445, ptr noundef %2, ptr noundef %4, i64 noundef %3) #7
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @check_unprotected_PKCS8_PEM(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i64 %4) #1 {
bb.a:
  %i.a = tail call i32 @test_strn_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.460, ptr noundef %3, ptr noundef nonnull @check_unprotected_PKCS8_PEM.expected_pem_header, i64 noundef 27) #7
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal void @dump_pem(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = add i64 %2, -1
  tail call void @test_output_string(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #7
  ret void
}

declare i32 @test_size_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @test_strn_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @test_output_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @check_protected_PKCS8_DER(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i64 noundef %4) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %3, ptr %i.a, align 8, !tbaa !24
  %i.b = call ptr @d2i_X509_SIG(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %4) #7 ; 2 uses
  %i.c = call i32 @test_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.464, ptr noundef %i.b) #7
  call void @X509_SIG_free(ptr noundef %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

declare ptr @d2i_X509_SIG(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @X509_SIG_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @check_protected_PKCS8_PEM(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i64 %4) #1 {
bb.a:
  %i.a = tail call i32 @test_strn_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.460, ptr noundef %3, ptr noundef nonnull @check_protected_PKCS8_PEM.expected_pem_header, i64 noundef 37) #7
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_public_DER(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %3, ptr %i.a, align 8, !tbaa !24
  %i.b = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.c = call ptr @d2i_PUBKEY_ex(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %4, ptr noundef %i.b, ptr noundef null) #7 ; 3 uses
  %i.d = call i32 @test_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.447, ptr noundef %i.c) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @EVP_PKEY_is_a(ptr noundef %i.c, ptr noundef %2) #7
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = call i32 @test_true(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.448, i32 noundef %i.g) #7
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  call void @EVP_PKEY_free(ptr noundef %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.k
}

declare ptr @d2i_PUBKEY_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @check_public_PEM(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i64 %4) #1 {
bb.a:
  %i.a = tail call i32 @test_strn_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.460, ptr noundef %3, ptr noundef nonnull @check_public_PEM.expected_pem_header, i64 noundef 26) #7
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_params_DER(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) #1 {
sub_0:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %3, ptr %i.a, align 8, !tbaa !24
  %i.b = load i8, ptr %2, align 1                 ; 2 uses
  %.not20 = icmp eq i8 %i.b, 68
  br i1 %.not20, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %.not21 = icmp eq i8 %i.d, 72
  br i1 %.not21, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.thread, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.48) #8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.a

bb.a:                                             ; preds = %.tail.thread
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.52) #8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread, label %sub_016

sub_016:                                          ; preds = %bb.a
  %.not22 = icmp eq i8 %i.b, 69
  br i1 %.not22, label %sub_117, label %.thread26

sub_117:                                          ; preds = %sub_016
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %.not23 = icmp eq i8 %i.m, 67
  br i1 %.not23, label %.tail15, label %.thread26

.tail15:                                          ; preds = %sub_117
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.thread, label %.thread26

.thread:                                          ; preds = %bb.a, %.tail.thread, %.tail, %.tail15
  %.014 = phi i32 [ 408, %.tail15 ], [ 116, %bb.a ], [ 920, %.tail.thread ], [ 28, %.tail ]
  %i.q = call ptr @d2i_KeyParams(i32 noundef %.014, ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %4) #7 ; 2 uses
  %i.r = icmp ne ptr %i.q, null
  %i.s = zext i1 %i.r to i32
  call void @EVP_PKEY_free(ptr noundef %i.q) #7
  br label %.thread26

.thread26:                                        ; preds = %sub_117, %sub_016, %.thread, %.tail15
  %.010 = phi i32 [ %i.s, %.thread ], [ 0, %.tail15 ], [ 0, %sub_016 ], [ 0, %sub_117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.010
}

declare ptr @d2i_KeyParams(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_params_PEM(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 %4) #1 {
bb.a:
  %i.a = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull @check_params_PEM.expected_pem_header, i64 noundef 80, ptr noundef nonnull @.str.467, ptr noundef %2) #7
  %i.b = tail call i32 @test_int_gt(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.466, ptr noundef nonnull @.str.428, i32 noundef %i.a, i32 noundef 0) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @check_params_PEM.expected_pem_header) #8
  %i.d = tail call i32 @test_strn_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.460, ptr noundef %3, ptr noundef nonnull @check_params_PEM.expected_pem_header, i64 noundef %i.c) #7
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i32 %i.g
}

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @test_skip(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @encode_EVP_PKEY_legacy_PEM(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, i32 %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7, ptr noundef %8, ptr noundef %9) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.b = icmp ne ptr %9, null
  %i.c = icmp ne ptr %8, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #8
  %i.e = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.f = tail call ptr @EVP_CIPHER_fetch(ptr noundef %i.e, ptr noundef nonnull %9, ptr noundef null) #7 ; 3 uses
  %i.g = tail call i32 @test_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.469, ptr noundef %i.f) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.031 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 7 uses
  %.029 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.h = tail call ptr @BIO_s_mem() #7
  %i.i = tail call ptr @BIO_new(ptr noundef %i.h) #7 ; 9 uses
  %i.j = tail call i32 @test_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.431, ptr noundef %i.i) #7
  %.not34 = icmp eq i32 %i.j, 0
  br i1 %.not34, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %.029 to i32
  %i.l = tail call i32 @PEM_write_bio_PrivateKey_traditional(ptr noundef %i.i, ptr noundef %4, ptr noundef %.031, ptr noundef %8, i32 noundef %i.k, ptr noundef null, ptr noundef null) #7
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = tail call i32 @test_true(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.470, i32 noundef %i.n) #7
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @BIO_ctrl(ptr noundef %i.i, i32 noundef 115, i64 noundef 0, ptr noundef nonnull %i.a) #7
  %i.q = icmp sgt i64 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = call i32 @test_true(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.433, i32 noundef %i.r) #7
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !27
  %i.w = call i32 @test_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.434, ptr noundef %i.v) #7
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  store i64 %i.y, ptr %3, align 8, !tbaa !26
  %i.z = call i32 @test_long_gt(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.435, ptr noundef nonnull @.str.428, i64 noundef %i.y, i64 noundef 0) #7
  %.not38 = icmp eq i32 %i.z, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.b, %bb.h
  %.1 = phi ptr [ %.031, %bb.h ], [ %.031, %bb.g ], [ %.031, %bb.f ], [ %.031, %bb.e ], [ %.031, %bb.d ], [ %.031, %bb.c ], [ %i.f, %bb.b ]
  %.030 = phi ptr [ %i.i, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ null, %bb.b ]
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.ab = call i32 @BIO_free(ptr noundef %.030) #7 ; 0 uses
  call void @EVP_CIPHER_free(ptr noundef %.1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_unprotected_legacy_PEM(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 %4) #1 {
bb.a:
  %i.a = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull @check_unprotected_legacy_PEM.expected_pem_header, i64 noundef 80, ptr noundef nonnull @.str.472, ptr noundef %2) #7
  %i.b = tail call i32 @test_int_gt(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.471, ptr noundef nonnull @.str.428, i32 noundef %i.a, i32 noundef 0) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @check_unprotected_legacy_PEM.expected_pem_header) #8
  %i.d = tail call i32 @test_strn_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.460, ptr noundef %3, ptr noundef nonnull @check_unprotected_legacy_PEM.expected_pem_header, i64 noundef %i.c) #7
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i32 %i.g
}

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PEM_write_bio_PrivateKey_traditional(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_protected_legacy_PEM(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 %4) #1 {
bb.a:
  %i.a = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull @check_protected_legacy_PEM.expected_pem_header, i64 noundef 80, ptr noundef nonnull @.str.472, ptr noundef %2) #7
  %i.b = tail call i32 @test_int_gt(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.471, ptr noundef nonnull @.str.428, i32 noundef %i.a, i32 noundef 0) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @check_protected_legacy_PEM.expected_pem_header) #8
  %i.d = tail call i32 @test_strn_eq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.460, ptr noundef %3, ptr noundef nonnull @check_protected_legacy_PEM.expected_pem_header, i64 noundef %i.c) #7
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.474) #8
  %i.f = tail call i32 @test_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.473, ptr noundef %i.e) #7
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  ret i32 %i.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @encode_EVP_PKEY_MSBLOB(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, i32 noundef %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.b = tail call ptr @BIO_s_mem() #7
  %i.c = tail call ptr @BIO_new(ptr noundef %i.b) #7 ; 5 uses
  %i.d = tail call i32 @test_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.431, ptr noundef %i.c) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %5, 1
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @i2b_PrivateKey_bio(ptr noundef %i.c, ptr noundef %4) #7
  %i.g = tail call i32 @test_int_ge(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.476, ptr noundef nonnull @.str.428, i32 noundef %i.f, i32 noundef 0) #7
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @i2b_PublicKey_bio(ptr noundef %i.c, ptr noundef %4) #7
  %i.i = tail call i32 @test_int_ge(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.477, ptr noundef nonnull @.str.428, i32 noundef %i.h, i32 noundef 0) #7
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = call i64 @BIO_ctrl(ptr noundef %i.c, i32 noundef 115, i64 noundef 0, ptr noundef nonnull %i.a) #7
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = call i32 @test_true(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.433, i32 noundef %i.l) #7
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %bb.i, label %bb.f

end_hunk_0
