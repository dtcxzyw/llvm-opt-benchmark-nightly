Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/evp_kdf_test?download=true
inline.NumInlined: 57
inline.NumDeleted: 2
begin_hunk_0_@test_kdf_pbkdf2_small_iterations_pkcs5:bb.a
  %i.g = call ptr @EVP_KDF_CTX_new(ptr noundef %i.f) #5 ; 10 uses
  call void @EVP_KDF_free(ptr noundef %i.f) #5
  %i.h = call i32 @test_ptr(ptr noundef nonnull @.str.59, i32 noundef 1114, ptr noundef nonnull @.str.186, ptr noundef %i.g) #5
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @EVP_KDF_CTX_set_params(ptr noundef %i.g, ptr noundef %i.d) #5
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = call i32 @test_true(ptr noundef nonnull @.str.59, i32 noundef 1116, ptr noundef nonnull @.str.71, i32 noundef %i.k) #5
  %.not10 = icmp eq i32 %i.l, 0
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @EVP_KDF_derive(ptr noundef %i.g, ptr noundef nonnull %i.a, i64 noundef 25, ptr noundef null) #5
  %i.n = call i32 @test_int_gt(ptr noundef nonnull @.str.59, i32 noundef 1117, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %i.m, i32 noundef 0) #5
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %0, ptr noundef nonnull @.str.187, ptr noundef nonnull %i.c) #5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.p = call i32 @EVP_KDF_CTX_set_params(ptr noundef %i.g, ptr noundef nonnull %0) #5
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = call i32 @test_true(ptr noundef nonnull @.str.59, i32 noundef 1125, ptr noundef nonnull @.str.190, i32 noundef %i.r) #5
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call i32 @EVP_KDF_derive(ptr noundef %i.g, ptr noundef nonnull %i.a, i64 noundef 25, ptr noundef null) #5
  %i.u = call i32 @test_int_eq(ptr noundef nonnull @.str.59, i32 noundef 1126, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %i.t, i32 noundef 0) #5
  %.not13 = icmp ne i32 %i.u, 0
  %spec.select = zext i1 %.not13 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.08 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  call void @EVP_KDF_CTX_free(ptr noundef %.0) #5
  call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str.59, i32 noundef 1132) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_kdf_pbkdf2_invalid_digest() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 4096, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.c = call fastcc ptr @construct_pbkdf2_params(ptr noundef nonnull @.str.102, ptr noundef nonnull @__const.test_kdf_pbkdf1_skey.salt, ptr noundef %i.a, ptr noundef %i.b) ; 3 uses
  %i.d = call i32 @test_ptr(ptr noundef nonnull @.str.59, i32 noundef 1148, ptr noundef nonnull @.str.68, ptr noundef %i.c) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @EVP_KDF_fetch(ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef null) #5 ; 2 uses
  %i.f = call ptr @EVP_KDF_CTX_new(ptr noundef %i.e) #5 ; 4 uses
  call void @EVP_KDF_free(ptr noundef %i.e) #5
  %i.g = call i32 @test_ptr(ptr noundef nonnull @.str.59, i32 noundef 1149, ptr noundef nonnull @.str.186, ptr noundef %i.f) #5
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @EVP_KDF_CTX_set_params(ptr noundef %i.f, ptr noundef %i.c) #5
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = call i32 @test_false(ptr noundef nonnull @.str.59, i32 noundef 1151, ptr noundef nonnull @.str.71, i32 noundef %i.j) #5
  %.not7 = icmp ne i32 %i.k, 0
  %spec.select = zext i1 %.not7 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.05 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  %.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  call void @EVP_KDF_CTX_free(ptr noundef %.0) #5
  call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.59, i32 noundef 1157) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_kdf_scrypt() #0 {
bb.a:
  %0 = alloca [7 x %struct.ossl_param_st], align 16 ; 11 uses
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1024, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 8, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 16, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 16, ptr %i.e, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %0, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.191, i64 noundef 8) #5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.192, i64 noundef 4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.b) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.194, ptr noundef nonnull %i.d) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.195, ptr noundef nonnull %i.e) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.l = call ptr @EVP_KDF_fetch(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef null) #5 ; 2 uses
  %i.m = call ptr @EVP_KDF_CTX_new(ptr noundef %i.l) #5 ; 9 uses
  call void @EVP_KDF_free(ptr noundef %i.l) #5
  %i.n = call i32 @test_ptr(ptr noundef nonnull @.str.59, i32 noundef 1190, ptr noundef nonnull @.str.196, ptr noundef %i.m) #5
  %.not31.a = icmp eq i32 %i.n, 0
  br i1 %.not31.a, label %._crit_edge, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %bb.a
  %i.o = call i32 @EVP_KDF_CTX_set_params(ptr noundef %i.m, ptr noundef nonnull %0) #5
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = call i32 @test_true(ptr noundef nonnull @.str.59, i32 noundef 1193, ptr noundef nonnull @.str.71, i32 noundef %i.q) #5
  %.not27.peel = icmp eq i32 %i.r, 0
  br i1 %.not27.peel, label %.critedge.thread29.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph.peel
  %i.s = call i32 @EVP_KDF_derive(ptr noundef %i.m, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef null) #5
  %i.t = call i32 @test_int_le(ptr noundef nonnull @.str.59, i32 noundef 1196, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %i.s, i32 noundef 0) #5
  %.not.peel = icmp eq i32 %i.t, 0
  br i1 %.not.peel, label %.critedge.thread29.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = call i32 @OSSL_PARAM_set_uint(ptr noundef nonnull %i.j, i32 noundef 10485760) #5
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = call i32 @test_true(ptr noundef nonnull @.str.59, i32 noundef 1197, ptr noundef nonnull @.str.198, i32 noundef %i.w) #5
  %.not24.peel = icmp eq i32 %i.x, 0
  br i1 %.not24.peel, label %.critedge.thread29.peel, label %.split.peel

.split.peel:                                      ; preds = %bb.c
  %i.y = call i32 @EVP_KDF_CTX_set_params(ptr noundef %i.m, ptr noundef nonnull %i.j) #5
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = call i32 @test_true(ptr noundef nonnull @.str.59, i32 noundef 1198, ptr noundef nonnull @.str.199, i32 noundef %i.aa) #5
  %.not26.peel = icmp eq i32 %i.ab, 0
  br i1 %.not26.peel, label %.critedge.thread29.peel, label %bb.d

bb.d:                                             ; preds = %.split.peel
  %i.ac = call i32 @EVP_KDF_derive(ptr noundef %i.m, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef null) #5
  %i.ad = call i32 @test_int_gt(ptr noundef nonnull @.str.59, i32 noundef 1200, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %i.ac, i32 noundef 0) #5
  %.not28.peel = icmp eq i32 %i.ad, 0
  br i1 %.not28.peel, label %.critedge.thread29.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call i32 @test_mem_eq(ptr noundef nonnull @.str.59, i32 noundef 1201, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @test_kdf_scrypt.expected, i64 noundef 64) #5
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  br label %.critedge.thread29.peel

.critedge.thread29.peel:                          ; preds = %bb.d, %bb.e, %.split.peel, %bb.c, %bb.b, %.lr.ph.peel
  %i.ah = phi i32 [ 0, %.lr.ph.peel ], [ 0, %.split.peel ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  call void @EVP_KDF_CTX_reset(ptr noundef %i.m) #5
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.thread29.peel
  %i.ai = call i32 @EVP_KDF_CTX_set_params(ptr noundef %i.m, ptr noundef nonnull %0) #5
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = call i32 @test_true(ptr noundef nonnull @.str.59, i32 noundef 1193, ptr noundef nonnull @.str.71, i32 noundef %i.ak) #5
  %.not27 = icmp eq i32 %i.al, 0
  br i1 %.not27, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.am = call i32 @EVP_KDF_derive(ptr noundef %i.m, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef null) #5
  %i.an = call i32 @test_int_gt(ptr noundef nonnull @.str.59, i32 noundef 1200, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %i.am, i32 noundef 0) #5
  %.not28 = icmp eq i32 %i.an, 0
  br i1 %.not28, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = call i32 @test_mem_eq(ptr noundef nonnull @.str.59, i32 noundef 1201, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @test_kdf_scrypt.expected, i64 noundef 64) #5
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge.thread29.peel, %bb.f, %bb.g, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ah, %.critedge.thread29.peel ], [ 0, %.lr.ph ], [ 0, %bb.f ], [ %i.aq, %bb.g ]
  call void @EVP_KDF_CTX_free(ptr noundef %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_kdf_ss_hash() #0 {
bb.a:
  %0 = alloca [4 x %struct.ossl_param_st], align 16 ; 7 uses
  %i.a = alloca [14 x i8], align 1                ; 4 uses
  %1 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.200, i64 noundef 0) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.94, ptr noundef nonnull @test_kdf_ss_hash.z, i64 noundef 56) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.107, ptr noundef nonnull @test_kdf_ss_hash.other, i64 noundef 47) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.e = call ptr @EVP_KDF_fetch(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef null) #5 ; 2 uses
  %i.f = call ptr @EVP_KDF_CTX_new(ptr noundef %i.e) #5 ; 3 uses
  call void @EVP_KDF_free(ptr noundef %i.e) #5
  %i.g = call i32 @test_ptr(ptr noundef nonnull @.str.59, i32 noundef 1241, ptr noundef nonnull @.str.201, ptr noundef %i.f) #5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @EVP_KDF_derive(ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 14, ptr noundef nonnull %0) #5
  %i.i = call i32 @test_int_gt(ptr noundef nonnull @.str.59, i32 noundef 1242, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.73, i32 noundef %i.h, i32 noundef 0) #5
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @test_mem_eq(ptr noundef nonnull @.str.59, i32 noundef 1243, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.a, i64 noundef 14, ptr noundef nonnull @test_kdf_ss_hash.expected, i64 noundef 14) #5
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.l, %bb.c ]
  call void @EVP_KDF_CTX_free(ptr noundef %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_kdf_ss_hmac() #0 {
bb.a:
  %0 = alloca [6 x %struct.ossl_param_st], align 16 ; 9 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %1 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.103, i64 noundef 0) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.66, i64 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.94, ptr noundef nonnull @test_kdf_ss_hmac.z, i64 noundef 14) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.107, ptr noundef nonnull @test_kdf_ss_hmac.other, i64 noundef 12) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.77, ptr noundef nonnull @test_kdf_ss_hmac.salt, i64 noundef 16) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.g = call ptr @EVP_KDF_fetch(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef null) #5 ; 2 uses
  %i.h = call ptr @EVP_KDF_CTX_new(ptr noundef %i.g) #5 ; 3 uses
  call void @EVP_KDF_free(ptr noundef %i.g) #5
  %i.i = call i32 @test_ptr(ptr noundef nonnull @.str.59, i32 noundef 1931, ptr noundef nonnull @.str.201, ptr noundef %i.h) #5
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @EVP_KDF_derive(ptr noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull %0) #5
  %i.k = call i32 @test_int_gt(ptr noundef nonnull @.str.59, i32 noundef 1932, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.73, i32 noundef %i.j, i32 noundef 0) #5
  %.not8 = icmp eq i32 %i.k, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @test_mem_eq(ptr noundef nonnull @.str.59, i32 noundef 1933, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @test_kdf_ss_hmac.expected, i64 noundef 16) #5
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.n, %bb.c ]
  call void @EVP_KDF_CTX_free(ptr noundef %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_kdf_ss_kmac() #0 {
bb.a:
  %0 = alloca [7 x %struct.ossl_param_st], align 16 ; 10 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 20, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.203, i64 noundef 0) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.204, i64 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.94, ptr noundef nonnull @test_kdf_ss_kmac.z, i64 noundef 14) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.107, ptr noundef nonnull @test_kdf_ss_kmac.other, i64 noundef 12) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.77, ptr noundef nonnull @test_kdf_ss_kmac.salt, i64 noundef 16) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.b) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.i = call ptr @EVP_KDF_fetch(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef null) #5 ; 2 uses
  %i.j = call ptr @EVP_KDF_CTX_new(ptr noundef %i.i) #5 ; 6 uses
  call void @EVP_KDF_free(ptr noundef %i.i) #5
  %i.k = call i32 @test_ptr(ptr noundef nonnull @.str.59, i32 noundef 1977, ptr noundef nonnull @.str.201, ptr noundef %i.j) #5
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i64 @EVP_KDF_CTX_get_kdf_size(ptr noundef %i.j) #5
  %i.m = call i32 @test_size_t_eq(ptr noundef nonnull @.str.59, i32 noundef 1978, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.73, i64 noundef %i.l, i64 noundef 0) #5
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @EVP_KDF_CTX_set_params(ptr noundef %i.j, ptr noundef nonnull %0) #5
  %i.o = call i32 @test_int_eq(ptr noundef nonnull @.str.59, i32 noundef 1979, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.86, i32 noundef %i.n, i32 noundef 1) #5
  %.not13 = icmp eq i32 %i.o, 0
  br i1 %.not13, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @fips_provider_version_lt(ptr noundef null, i32 noundef 3, i32 noundef 0, i32 noundef 8) #5
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
