Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/slh_dsa_test?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@slh_dsa_digest_sign_verify_test:bb.a
  %i.m = call i32 @EVP_DigestSign(ptr noundef %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @slh_dsa_digest_sign_verify_test.msg, i64 noundef 12) #5
  %i.n = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 559, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.42, i32 noundef %i.m, i32 noundef 1) #5
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20
  %i.p = call noalias ptr @CRYPTO_zalloc(i64 noundef %i.o, ptr noundef nonnull @.str.26, i32 noundef 560) #5 ; 11 uses
  %i.q = call i32 @test_ptr(ptr noundef nonnull @.str.26, i32 noundef 560, ptr noundef nonnull @.str.155, ptr noundef %i.p) #5
  %.not33 = icmp eq i32 %i.q, 0
  br i1 %.not33, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !tbaa !20
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.a, align 8, !tbaa !20
  %i.t = call i32 @EVP_DigestSign(ptr noundef %i.e, ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull @slh_dsa_digest_sign_verify_test.msg, i64 noundef 12) #5
  %i.u = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 563, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.47, i32 noundef %i.t, i32 noundef 0) #5
  %.not34 = icmp eq i32 %i.u, 0
  br i1 %.not34, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.a, align 8, !tbaa !20
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !20
  %i.x = load ptr, ptr @lib_ctx, align 8, !tbaa !17
  %i.y = call i32 @EVP_DigestSignInit_ex(ptr noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef %i.x, ptr noundef nonnull @.str.152, ptr noundef %i.b, ptr noundef nonnull %0) #5
  %i.z = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 568, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.42, i32 noundef %i.y, i32 noundef 1) #5
  %.not35 = icmp eq i32 %i.z, 0
  br i1 %.not35, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call i32 @EVP_DigestSign(ptr noundef %i.e, ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull @slh_dsa_digest_sign_verify_test.msg, i64 noundef 12) #5
  %i.ab = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 569, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.42, i32 noundef %i.aa, i32 noundef 1) #5
  %.not36 = icmp eq i32 %i.ab, 0
  br i1 %.not36, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr @lib_ctx, align 8, !tbaa !17
  %i.ad = call i32 @EVP_DigestVerifyInit_ex(ptr noundef %i.e, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef %i.ac, ptr noundef nonnull @.str.152, ptr noundef %i.b, ptr noundef nonnull %0) #5
  %i.ae = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 573, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.47, i32 noundef %i.ad, i32 noundef 0) #5
  %.not37 = icmp eq i32 %i.ae, 0
  br i1 %.not37, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr @lib_ctx, align 8, !tbaa !17
  %i.ag = call i32 @EVP_DigestVerifyInit_ex(ptr noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef %i.af, ptr noundef nonnull @.str.152, ptr noundef %i.b, ptr noundef nonnull %0) #5
  %i.ah = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 577, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.42, i32 noundef %i.ag, i32 noundef 1) #5
  %.not38 = icmp eq i32 %i.ah, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !20
  %i.aj = call i32 @EVP_DigestVerify(ptr noundef %i.e, ptr noundef %i.p, i64 noundef %i.ai, ptr noundef nonnull @slh_dsa_digest_sign_verify_test.msg, i64 noundef 12) #5
  %i.ak = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 578, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.42, i32 noundef %i.aj, i32 noundef 1) #5
  %.not39 = icmp ne i32 %i.ak, 0
  %spec.select = zext i1 %.not39 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.i, %bb.j, %bb.k, %bb.g, %bb.e, %bb.f, %bb.b, %bb.c, %bb.d, %bb.a
  %.028 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.027 = phi ptr [ null, %bb.a ], [ %i.p, %bb.l ], [ %i.p, %bb.k ], [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.l ], [ %i.e, %bb.k ], [ %i.e, %bb.j ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  call void @EVP_PKEY_free(ptr noundef %i.b) #5
  call void @EVP_MD_CTX_free(ptr noundef %.0) #5
  call void @CRYPTO_free(ptr noundef %.027, ptr noundef nonnull @.str.26, i32 noundef 584) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_dsa_keygen_invalid_test() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %0 = alloca [2 x %struct.ossl_param_st], align 16 ; 9 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %1 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.c = load ptr, ptr @lib_ctx, align 8, !tbaa !17
  %i.d = tail call ptr @EVP_PKEY_CTX_new_from_name(ptr noundef %i.c, ptr noundef nonnull @.str.32, ptr noundef null) #5 ; 8 uses
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str.26, i32 noundef 599, ptr noundef nonnull @.str.160, ptr noundef %i.d) #5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @EVP_PKEY_keygen_init(ptr noundef %i.d) #5
  %i.g = tail call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 600, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.42, i32 noundef %i.f, i32 noundef 1) #5
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, i64 noundef 97) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.i = call i32 @EVP_PKEY_CTX_set_params(ptr noundef %i.d, ptr noundef nonnull %0) #5
  %i.j = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 607, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.47, i32 noundef %i.i, i32 noundef 0) #5
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, i64 noundef 47) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.k = call i32 @EVP_PKEY_CTX_set_params(ptr noundef %i.d, ptr noundef nonnull %0) #5
  %i.l = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 615, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.42, i32 noundef %i.k, i32 noundef 1) #5
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @EVP_PKEY_generate(ptr noundef %i.d, ptr noundef nonnull %i.a) #5
  %i.n = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 616, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.47, i32 noundef %i.m, i32 noundef 0) #5
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, i64 noundef 49) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.o = call i32 @EVP_PKEY_CTX_set_params(ptr noundef %i.d, ptr noundef nonnull %0) #5
  %i.p = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 623, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.42, i32 noundef %i.o, i32 noundef 1) #5
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @EVP_PKEY_generate(ptr noundef %i.d, ptr noundef nonnull %i.a) #5
  %i.r = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 624, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.47, i32 noundef %i.q, i32 noundef 0) #5
  %.not23 = icmp ne i32 %i.r, 0
  %spec.select = zext i1 %.not23 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @EVP_PKEY_free(ptr noundef %i.s) #5
  call void @EVP_PKEY_CTX_free(ptr noundef %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @null_prov, align 8, !tbaa !40
  %i.b = tail call i32 @OSSL_PROVIDER_unload(ptr noundef %i.a) #5 ; 0 uses
  %i.c = load ptr, ptr @lib_prov, align 8, !tbaa !40
  %i.d = tail call i32 @OSSL_PROVIDER_unload(ptr noundef %i.c) #5 ; 0 uses
  %i.e = load ptr, ptr @lib_ctx, align 8, !tbaa !17
  tail call void @OSSL_LIB_CTX_free(ptr noundef %i.e) #5
  ret void
}

declare i32 @OSSL_PROVIDER_unload(ptr noundef) local_unnamed_addr #3

declare void @OSSL_LIB_CTX_free(ptr noundef) local_unnamed_addr #3

declare i32 @test_size_t_le(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @test_ptr_null(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @slh_dsa_key_from_data(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %.not = icmp eq i32 %3, 0
  %i.b = select i1 %.not, ptr @.str.39, ptr @.str.38
  %6 = xor i32 %3, 135
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2) #5
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.d = load ptr, ptr @lib_ctx, align 8, !tbaa !17
  %i.e = call ptr @EVP_PKEY_CTX_new_from_name(ptr noundef %i.d, ptr noundef %0, ptr noundef null) #5 ; 4 uses
  %i.f = call i32 @test_ptr(ptr noundef nonnull @.str.26, i32 noundef 44, ptr noundef nonnull @.str.40, ptr noundef %i.e) #5
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @EVP_PKEY_fromdata_init(ptr noundef %i.e) #5
  %i.h = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %i.g, i32 noundef 1) #5
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @EVP_PKEY_fromdata(ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef %6, ptr noundef nonnull %4) #5
  %.not12 = icmp eq i32 %i.i, 1
  br i1 %.not12, label %bb.d, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %..critedge_crit_edge ], [ null, %bb.b ], [ null, %bb.a ]
  call void @EVP_PKEY_free(ptr noundef %i.j) #5
  store ptr null, ptr %i.a, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  call void @EVP_PKEY_CTX_free(ptr noundef %i.e) #5
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %i.k
}

declare void @test_note(ptr noundef, ...) local_unnamed_addr #3

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_PKEY_CTX_new_from_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_fromdata_init(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_fromdata(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_PKEY_CTX_free(ptr noundef) local_unnamed_addr #3

declare ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_public_check(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_private_check(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_pairwise_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @EVP_PKEY_dup(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_int_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @EVP_PKEY_Q_keygen(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @EVP_PKEY_keygen_init(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_keygen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #3

declare ptr @BIO_s_mem() local_unnamed_addr #3

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @PEM_write_bio_PUBKEY_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PEM_write_bio_PrivateKey_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PEM_read_bio_PrivateKey_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_SIGNATURE_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_sign_message_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_sign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PEM_read_bio_PUBKEY_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_verify_message_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_verify(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #3

declare void @EVP_SIGNATURE_free(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_gen_key(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca [2 x %struct.ossl_param_st], align 16 ; 6 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.12, ptr noundef %1, i64 noundef %2) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.c = load ptr, ptr @lib_ctx, align 8, !tbaa !17
  %i.d = call ptr @EVP_PKEY_CTX_new_from_name(ptr noundef %i.c, ptr noundef %0, ptr noundef null) #5 ; 5 uses
  %i.e = call i32 @test_ptr(ptr noundef nonnull @.str.26, i32 noundef 318, ptr noundef nonnull @.str.40, ptr noundef %i.d) #5
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @EVP_PKEY_keygen_init(ptr noundef %i.d) #5
  %i.g = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 319, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.42, i32 noundef %i.f, i32 noundef 1) #5
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @EVP_PKEY_CTX_set_params(ptr noundef %i.d, ptr noundef nonnull %3) #5
  %i.i = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 320, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.42, i32 noundef %i.h, i32 noundef 1) #5
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @EVP_PKEY_generate(ptr noundef %i.d, ptr noundef nonnull %i.a) #5
  %i.k = call i32 @test_int_eq(ptr noundef nonnull @.str.26, i32 noundef 321, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.42, i32 noundef %i.j, i32 noundef 1) #5
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @EVP_PKEY_CTX_free(ptr noundef %i.d) #5
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %i.l
}

declare void @OSSL_PARAM_construct_int(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_PKEY_CTX_dup(ptr noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_calloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @test_size_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_generate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_size_t_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_Q_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_mem_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
end_hunk_0
