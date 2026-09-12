Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/evp_extra_test?download=true
inline.NumInlined: 34
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@test_RSA_OAEP_set_null_label:bb.a
bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.18, i32 noundef 4042) #8 ; 3 uses
  %i.u = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4042, ptr noundef nonnull @.str.460, ptr noundef %i.t) #8
  %.not13 = icmp eq i32 %i.u, 0
  br i1 %.not13, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @EVP_PKEY_CTX_set0_rsa_oaep_label(ptr noundef %i.j, ptr noundef %i.t, i32 noundef 0) #8
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 4045, ptr noundef nonnull @.str.462, i32 noundef %i.x) #8
  %.not14 = icmp eq i32 %i.y, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @CRYPTO_free(ptr noundef %i.t, ptr noundef nonnull @.str.18, i32 noundef 4046) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = call i32 @EVP_PKEY_CTX_set0_rsa_oaep_label(ptr noundef %i.j, ptr noundef null, i32 noundef 0) #8
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 4050, ptr noundef nonnull @.str.463, i32 noundef %i.ab) #8
  %.not15 = icmp ne i32 %i.ac, 0
  %spec.select = zext i1 %.not15 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.g
  %.09 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.e ], [ %i.j, %bb.d ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  call void @EVP_PKEY_free(ptr noundef %i.g) #8
  call void @EVP_PKEY_CTX_free(ptr noundef %.0) #8
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define internal i32 @test_RSA_verify_recover_rejects_short_buffer() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 9 uses
  %i.f = alloca [2 x i8], align 2                 ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 0, ptr %i.e, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i16 23205, ptr %i.f, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i16 23205, ptr %i.g, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.h, align 16, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.i, align 16, !tbaa !34
  %i.j = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.k = tail call i32 @OSSL_PROVIDER_available(ptr noundef %i.j, ptr noundef nonnull @.str.464) #8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.18, i32 noundef 4080, ptr noundef nonnull @.str.465) #8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @kExampleRSAKeyDER, ptr %i.a, align 8, !tbaa !18
  store i64 608, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.m = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.n = call ptr @OSSL_DECODER_CTX_new_for_pkey(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.152, ptr noundef null, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef %i.m, ptr noundef null) #8 ; 2 uses
  %i.o = call i32 @OSSL_DECODER_from_data(ptr noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 0 uses
  call void @OSSL_DECODER_CTX_free(ptr noundef %i.n) #8
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4082, ptr noundef nonnull @.str.126, ptr noundef %i.p) #8
  %.not38 = icmp eq i32 %i.q, 0
  br i1 %.not38, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.s = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.r, ptr noundef %i.p, ptr noundef null) #8 ; 26 uses
  %i.t = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4083, ptr noundef nonnull @.str.466, ptr noundef %i.s) #8
  %.not39 = icmp eq i32 %i.t, 0
  br i1 %.not39, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @EVP_PKEY_sign_init(ptr noundef %i.s) #8
  %i.v = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4084, ptr noundef nonnull @.str.467, ptr noundef nonnull @.str.123, i32 noundef %i.u, i32 noundef 0) #8
  %.not40 = icmp eq i32 %i.v, 0
  br i1 %.not40, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @EVP_PKEY_CTX_set_rsa_padding(ptr noundef %i.s, i32 noundef 1) #8
  %i.x = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4087, ptr noundef nonnull @.str.468, ptr noundef nonnull @.str.123, i32 noundef %i.w, i32 noundef 0) #8
  %.not41 = icmp eq i32 %i.x, 0
  br i1 %.not41, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call ptr @EVP_sha256() #8
  %i.z = call i32 @EVP_PKEY_CTX_set_signature_md(ptr noundef %i.s, ptr noundef %i.y) #8
  %i.aa = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4089, ptr noundef nonnull @.str.469, ptr noundef nonnull @.str.123, i32 noundef %i.z, i32 noundef 0) #8
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call i32 @EVP_PKEY_sign(ptr noundef %i.s, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, i64 noundef 32) #8
  %i.ac = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4092, ptr noundef nonnull @.str.470, ptr noundef nonnull @.str.123, i32 noundef %i.ab, i32 noundef 0) #8
  %.not43 = icmp eq i32 %i.ac, 0
  br i1 %.not43, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !16
  %i.ae = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ad, ptr noundef nonnull @.str.18, i32 noundef 4093) #8 ; 19 uses
  %i.af = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4093, ptr noundef nonnull @.str.134, ptr noundef %i.ae) #8
  %.not44 = icmp eq i32 %i.af, 0
  br i1 %.not44, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @EVP_PKEY_sign(ptr noundef %i.s, ptr noundef %i.ae, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, i64 noundef 32) #8
  %i.ah = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4096, ptr noundef nonnull @.str.471, ptr noundef nonnull @.str.123, i32 noundef %i.ag, i32 noundef 0) #8
  %.not45 = icmp eq i32 %i.ah, 0
  br i1 %.not45, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = call i32 @EVP_PKEY_get_size(ptr noundef %i.p) #8 ; 2 uses
  %i.aj = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4097, ptr noundef nonnull @.str.472, ptr noundef nonnull @.str.123, i32 noundef %i.ai, i32 noundef 0) #8
  %.not46 = icmp eq i32 %i.aj, 0
  br i1 %.not46, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = sext i32 %i.ai to i64                   ; 2 uses
  %i.al = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ak, ptr noundef nonnull @.str.18, i32 noundef 4098) #8 ; 15 uses
  %i.am = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4098, ptr noundef nonnull @.str.473, ptr noundef %i.al) #8
  %.not47 = icmp eq i32 %i.am, 0
  br i1 %.not47, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.ao = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.an, ptr noundef %i.p, ptr noundef null) #8 ; 17 uses
  %i.ap = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4100, ptr noundef nonnull @.str.474, ptr noundef %i.ao) #8
  %.not48 = icmp eq i32 %i.ap, 0
  br i1 %.not48, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = call i32 @EVP_PKEY_verify_recover_init(ptr noundef %i.ao) #8
  %i.ar = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4101, ptr noundef nonnull @.str.475, ptr noundef nonnull @.str.123, i32 noundef %i.aq, i32 noundef 0) #8
  %.not49 = icmp eq i32 %i.ar, 0
  br i1 %.not49, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 @EVP_PKEY_CTX_set_rsa_padding(ptr noundef %i.ao, i32 noundef 1) #8
  %i.at = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4104, ptr noundef nonnull @.str.476, ptr noundef nonnull @.str.123, i32 noundef %i.as, i32 noundef 0) #8
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = call ptr @EVP_sha256() #8
  %i.av = call i32 @EVP_PKEY_CTX_set_signature_md(ptr noundef %i.ao, ptr noundef %i.au) #8
  %i.aw = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4106, ptr noundef nonnull @.str.477, ptr noundef nonnull @.str.123, i32 noundef %i.av, i32 noundef 0) #8
  %.not51 = icmp eq i32 %i.aw, 0
  br i1 %.not51, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %i.ak, ptr %i.e, align 8, !tbaa !16
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !16
  %i.ay = call i32 @EVP_PKEY_verify_recover(ptr noundef %i.ao, ptr noundef %i.al, ptr noundef nonnull %i.e, ptr noundef %i.ae, i64 noundef %i.ax) #8
  %i.az = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4112, ptr noundef nonnull @.str.478, ptr noundef nonnull @.str.123, i32 noundef %i.ay, i32 noundef 0) #8
  %.not52 = icmp eq i32 %i.az, 0
  br i1 %.not52, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !16
  %i.bb = call i32 @test_size_t_eq(ptr noundef nonnull @.str.18, i32 noundef 4113, ptr noundef nonnull @.str.479, ptr noundef nonnull @.str.480, i64 noundef %i.ba, i64 noundef 32) #8
  %.not53 = icmp eq i32 %i.bb, 0
  br i1 %.not53, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !16
  %i.bd = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 4114, ptr noundef nonnull @.str.481, ptr noundef nonnull @.str.174, ptr noundef %i.al, i64 noundef %i.bc, ptr noundef nonnull %i.h, i64 noundef 32) #8
  %.not54 = icmp eq i32 %i.bd, 0
  br i1 %.not54, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ERR_clear_error() #8
  store i64 1, ptr %i.e, align 8, !tbaa !16
  %i.be = load i64, ptr %i.d, align 8, !tbaa !16
  %i.bf = call i32 @EVP_PKEY_verify_recover(ptr noundef %i.ao, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef %i.ae, i64 noundef %i.be) #8
  %i.bg = call i32 @test_int_le(ptr noundef nonnull @.str.18, i32 noundef 4121, ptr noundef nonnull @.str.482, ptr noundef nonnull @.str.123, i32 noundef %i.bf, i32 noundef 0) #8
  %.not55 = icmp eq i32 %i.bg, 0
  br i1 %.not55, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = call i64 @ERR_peek_error() #8           ; 2 uses
  %i.bi = and i64 %i.bh, 2147483648
  %.not.i = icmp eq i64 %i.bi, 0                  ; 2 uses
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  %0 = lshr i32 %i.bj, 23
  %.0.i = select i1 %.not.i, i32 %0, i32 2
  %i.bk = call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 4125, ptr noundef nonnull @.str.483, ptr noundef nonnull @.str.484, i32 noundef %.0.i, i32 noundef 57) #8
  %.not56 = icmp eq i32 %i.bk, 0
  br i1 %.not56, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.0.v.i = select i1 %.not.i, i32 8388607, i32 2147483647
  %.0.i60 = and i32 %.0.v.i, %i.bj
  %i.bl = call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 4126, ptr noundef nonnull @.str.485, ptr noundef nonnull @.str.486, i32 noundef %.0.i60, i32 noundef 106) #8
  %.not57 = icmp eq i32 %i.bl, 0
  br i1 %.not57, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 4128, ptr noundef nonnull @.str.487, ptr noundef nonnull @.str.488, ptr noundef nonnull %i.f, i64 noundef 2, ptr noundef nonnull %i.g, i64 noundef 2) #8
  %.not58 = icmp ne i32 %i.bm, 0
  %spec.select = zext i1 %.not58 to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.v, %bb.t, %bb.q, %bb.r, %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.036 = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.035 = phi ptr [ null, %bb.c ], [ %i.s, %bb.w ], [ %i.s, %bb.v ], [ %i.s, %bb.u ], [ %i.s, %bb.t ], [ %i.s, %bb.s ], [ %i.s, %bb.r ], [ %i.s, %bb.q ], [ %i.s, %bb.p ], [ %i.s, %bb.o ], [ %i.s, %bb.n ], [ %i.s, %bb.m ], [ %i.s, %bb.l ], [ %i.s, %bb.k ], [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  %.034 = phi ptr [ null, %bb.c ], [ %i.ao, %bb.w ], [ %i.ao, %bb.v ], [ %i.ao, %bb.u ], [ %i.ao, %bb.t ], [ %i.ao, %bb.s ], [ %i.ao, %bb.r ], [ %i.ao, %bb.q ], [ %i.ao, %bb.p ], [ %i.ao, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %.033 = phi ptr [ null, %bb.c ], [ %i.ae, %bb.w ], [ %i.ae, %bb.v ], [ %i.ae, %bb.u ], [ %i.ae, %bb.t ], [ %i.ae, %bb.s ], [ %i.ae, %bb.r ], [ %i.ae, %bb.q ], [ %i.ae, %bb.p ], [ %i.ae, %bb.o ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %.032 = phi ptr [ null, %bb.c ], [ %i.al, %bb.w ], [ %i.al, %bb.v ], [ %i.al, %bb.u ], [ %i.al, %bb.t ], [ %i.al, %bb.s ], [ %i.al, %bb.r ], [ %i.al, %bb.q ], [ %i.al, %bb.p ], [ %i.al, %bb.o ], [ %i.al, %bb.n ], [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  call void @EVP_PKEY_CTX_free(ptr noundef %.035) #8
  call void @EVP_PKEY_CTX_free(ptr noundef %.034) #8
  call void @EVP_PKEY_free(ptr noundef %i.p) #8
  call void @CRYPTO_free(ptr noundef %.033, ptr noundef nonnull @.str.18, i32 noundef 4136) #8
  call void @CRYPTO_free(ptr noundef %.032, ptr noundef nonnull @.str.18, i32 noundef 4137) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.b
  %.037 = phi i32 [ %i.l, %bb.b ], [ %.036, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_RSA_encrypt() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 0, ptr %i.e, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @kExampleRSAKeyDER, ptr %i.a, align 8, !tbaa !18
  store i64 608, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.f = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.g = call ptr @OSSL_DECODER_CTX_new_for_pkey(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.152, ptr noundef null, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef %i.f, ptr noundef null) #8 ; 2 uses
  %i.h = call i32 @OSSL_DECODER_from_data(ptr noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 0 uses
  call void @OSSL_DECODER_CTX_free(ptr noundef %i.g) #8
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4149, ptr noundef nonnull @.str.126, ptr noundef %i.i) #8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.l = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.k, ptr noundef %i.i, ptr noundef null) #8 ; 21 uses
  %i.m = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4151, ptr noundef nonnull @.str.314, ptr noundef %i.l) #8
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @EVP_PKEY_encrypt_init(ptr noundef %i.l) #8
  %i.o = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4152, ptr noundef nonnull @.str.489, ptr noundef nonnull @.str.123, i32 noundef %i.n, i32 noundef 0) #8
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @EVP_PKEY_encrypt(ptr noundef %i.l, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %i.q = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4153, ptr noundef nonnull @.str.490, ptr noundef nonnull @.str.123, i32 noundef %i.p, i32 noundef 0) #8
  %.not26 = icmp eq i32 %i.q, 0
  br i1 %.not26, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.d, align 8, !tbaa !16
  %i.s = call noalias ptr @CRYPTO_malloc(i64 noundef %i.r, ptr noundef nonnull @.str.18, i32 noundef 4154) #8 ; 14 uses
  %i.t = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4154, ptr noundef nonnull @.str.491, ptr noundef %i.s) #8
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @EVP_PKEY_encrypt(ptr noundef %i.l, ptr noundef %i.s, ptr noundef nonnull %i.d, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %i.v = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4155, ptr noundef nonnull @.str.490, ptr noundef nonnull @.str.123, i32 noundef %i.u, i32 noundef 0) #8
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.d, align 8, !tbaa !16
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.e, align 8, !tbaa !16
  %i.y = call i32 @EVP_PKEY_encrypt(ptr noundef %i.l, ptr noundef %i.s, ptr noundef nonnull %i.e, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %i.z = call i32 @test_int_le(ptr noundef nonnull @.str.18, i32 noundef 4160, ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.123, i32 noundef %i.y, i32 noundef 0) #8
  %.not29 = icmp eq i32 %i.z, 0
  br i1 %.not29, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @test_openssl_errors() #8
  %i.aa = call i32 @EVP_PKEY_decrypt_init(ptr noundef %i.l) #8
  %i.ab = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4166, ptr noundef nonnull @.str.493, ptr noundef nonnull @.str.123, i32 noundef %i.aa, i32 noundef 0) #8
  %.not30 = icmp eq i32 %i.ab, 0
  br i1 %.not30, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !16
  %i.ad = call i32 @EVP_PKEY_decrypt(ptr noundef %i.l, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef %i.s, i64 noundef %i.ac) #8
  %i.ae = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4167, ptr noundef nonnull @.str.494, ptr noundef nonnull @.str.123, i32 noundef %i.ad, i32 noundef 0) #8
  %.not31 = icmp eq i32 %i.ae, 0
  br i1 %.not31, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ag = call noalias ptr @CRYPTO_malloc(i64 noundef %i.af, ptr noundef nonnull @.str.18, i32 noundef 4168) #8 ; 7 uses
  %i.ah = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4168, ptr noundef nonnull @.str.495, ptr noundef %i.ag) #8
  %.not32 = icmp eq i32 %i.ah, 0
  br i1 %.not32, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !16
  %i.aj = call i32 @EVP_PKEY_decrypt(ptr noundef %i.l, ptr noundef %i.ag, ptr noundef nonnull %i.e, ptr noundef %i.s, i64 noundef %i.ai) #8
  %i.ak = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4169, ptr noundef nonnull @.str.494, ptr noundef nonnull @.str.123, i32 noundef %i.aj, i32 noundef 0) #8
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i64, ptr %i.e, align 8, !tbaa !16
  %i.am = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 4170, ptr noundef nonnull @.str.496, ptr noundef nonnull @.str.497, ptr noundef %i.ag, i64 noundef %i.al, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %.not34 = icmp eq i32 %i.am, 0
  br i1 %.not34, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = call i32 @EVP_PKEY_encrypt_init(ptr noundef %i.l) #8
  %i.ao = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 4171, ptr noundef nonnull @.str.489, ptr noundef nonnull @.str.123, i32 noundef %i.an, i32 noundef 0) #8
  %.not35 = icmp ne i32 %i.ao, 0
  %spec.select = zext i1 %.not35 to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.023 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.022 = phi ptr [ null, %bb.a ], [ %i.l, %bb.m ], [ %i.l, %bb.l ], [ %i.l, %bb.k ], [ %i.l, %bb.j ], [ %i.l, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %bb.b ]
  %.021 = phi ptr [ null, %bb.a ], [ %i.s, %bb.m ], [ %i.s, %bb.l ], [ %i.s, %bb.k ], [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %.0 = phi ptr [ null, %bb.a ], [ %i.ag, %bb.m ], [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @EVP_PKEY_CTX_free(ptr noundef %.022) #8
  call void @EVP_PKEY_free(ptr noundef %i.i) #8
  call void @CRYPTO_free(ptr noundef %.021, ptr noundef nonnull @.str.18, i32 noundef 4178) #8
  call void @CRYPTO_free(ptr noundef %.0, ptr noundef nonnull @.str.18, i32 noundef 4179) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal i32 @test_RSA_legacy() #1 {
bb.a:
  %i.a = tail call ptr @EVP_sha256() #8
  %i.b = load ptr, ptr @nullprov, align 8, !tbaa !14
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.18, i32 noundef 4198, ptr noundef nonnull @.str.119) #8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @BN_value_one() #8
  %i.e = tail call ptr @BN_dup(ptr noundef %i.d) #8 ; 11 uses
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4200, ptr noundef nonnull @.str.498, ptr noundef %i.e) #8
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @BN_value_one() #8
  %i.h = tail call ptr @BN_dup(ptr noundef %i.g) #8 ; 10 uses
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4201, ptr noundef nonnull @.str.499, ptr noundef %i.h) #8
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @BN_value_one() #8
  %i.k = tail call ptr @BN_dup(ptr noundef %i.j) #8 ; 10 uses
  %i.l = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4202, ptr noundef nonnull @.str.500, ptr noundef %i.k) #8
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @BN_value_one() #8
  %i.n = tail call ptr @BN_dup(ptr noundef %i.m) #8 ; 9 uses
  %i.o = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 4203, ptr noundef nonnull @.str.501, ptr noundef %i.n) #8
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
