Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/evp_extra_test?download=true
inline.NumInlined: 34
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@test_aes_siv_ctx_reuse:bb.a
bb.s:                                             ; preds = %bb.r
  %i.bp = call i32 @EVP_DecryptFinal_ex(ptr noundef %i.ah, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #8
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = call i32 @test_false(ptr noundef nonnull @.str.18, i32 noundef 6400, ptr noundef nonnull @.str.903, i32 noundef %i.br) #8
  %.not41 = icmp ne i32 %i.bs, 0
  %spec.select = zext i1 %.not41 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.q, %bb.r, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.i
  %.024 = phi i32 [ 0, %bb.i ], [ %spec.select, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.0 = phi ptr [ null, %bb.i ], [ %i.ah, %bb.s ], [ %i.ah, %bb.r ], [ %i.ah, %bb.q ], [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.l ], [ %i.ah, %bb.k ], [ %i.ah, %bb.j ]
  call void @EVP_CIPHER_CTX_free(ptr noundef %.0) #8
  call void @EVP_CIPHER_free(ptr noundef nonnull %i.i) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.025 = phi i32 [ %i.k, %bb.b ], [ %.024, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_invalid_ctx_for_digest() #1 {
bb.a:
  %i.a = tail call ptr @EVP_MD_CTX_new() #8       ; 3 uses
  %i.b = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6417, ptr noundef nonnull @.str.366, ptr noundef %i.a) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_DigestUpdate(ptr noundef %i.a, ptr noundef nonnull @.str.6, i64 noundef 4) #8
  %i.d = tail call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 6420, ptr noundef nonnull @.str.907, ptr noundef nonnull @.str.123, i32 noundef %i.c, i32 noundef 0) #8
  %.not5 = icmp ne i32 %i.d, 0
  %. = zext i1 %.not5 to i32
  tail call void @EVP_MD_CTX_free(ptr noundef %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.04 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_evp_cipher_negative_length() #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !26
  %i.e = tail call ptr @EVP_CIPHER_CTX_new() #8   ; 6 uses
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6440, ptr noundef nonnull @.str.226, ptr noundef %i.e) #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @testctx, align 8, !tbaa !11
  %i.h = tail call ptr @EVP_CIPHER_fetch(ptr noundef %i.g, ptr noundef nonnull @.str.673, ptr noundef null) #8 ; 8 uses
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6443, ptr noundef nonnull @.str.908, ptr noundef %i.h) #8
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @EVP_EncryptInit_ex2(ptr noundef %i.e, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #8
  %i.k = call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 6447, ptr noundef nonnull @.str.909, ptr noundef nonnull @.str.170, i32 noundef %i.j, i32 noundef 1) #8
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @EVP_EncryptUpdate(ptr noundef %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.6, i32 noundef -1) #8
  %i.m = call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 6451, ptr noundef nonnull @.str.910, ptr noundef nonnull @.str.123, i32 noundef %i.l, i32 noundef 0) #8
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @EVP_DecryptInit_ex2(ptr noundef %i.e, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #8
  %i.o = call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 6455, ptr noundef nonnull @.str.911, ptr noundef nonnull @.str.170, i32 noundef %i.n, i32 noundef 1) #8
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @EVP_DecryptUpdate(ptr noundef %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.6, i32 noundef -1) #8
  %i.q = call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 6459, ptr noundef nonnull @.str.912, ptr noundef nonnull @.str.123, i32 noundef %i.p, i32 noundef 0) #8
  %.not13 = icmp ne i32 %i.q, 0
  %spec.select = zext i1 %.not13 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.08 = phi ptr [ null, %bb.a ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @EVP_CIPHER_free(ptr noundef %.08) #8
  call void @EVP_CIPHER_CTX_free(ptr noundef %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_evp_cipher_pipeline() #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [32 x ptr], align 16              ; 9 uses
  %i.c = alloca [32 x ptr], align 16              ; 8 uses
  %i.d = alloca [32 x ptr], align 16              ; 14 uses
  %i.e = alloca [32 x ptr], align 16              ; 11 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca [32 x ptr], align 16              ; 8 uses
  %i.h = alloca [32 x i64], align 16              ; 13 uses
  %i.i = alloca [32 x i64], align 16              ; 16 uses
  %i.j = alloca [32 x i64], align 16              ; 8 uses
  %i.k = alloca [32 x i64], align 16              ; 6 uses
  %0 = alloca [2 x %struct.ossl_param_st], align 16 ; 9 uses
  %i.l = alloca i32, align 4                      ; 9 uses
  %1 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.m = load ptr, ptr @testctx, align 8, !tbaa !11
  %i.n = call ptr @fake_pipeline_start(ptr noundef %i.m) #8 ; 2 uses
  %i.o = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6819, ptr noundef nonnull @.str.913, ptr noundef %i.n) #8
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr @testctx, align 8, !tbaa !11
  %i.q = call ptr @EVP_CIPHER_fetch(ptr noundef %i.p, ptr noundef nonnull @.str.782, ptr noundef nonnull @.str.915) #8 ; 7 uses
  %i.r = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6822, ptr noundef nonnull @.str.914, ptr noundef %i.q) #8
  %.not164 = icmp eq i32 %i.r, 0
  br i1 %.not164, label %.loopexit215, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @testctx, align 8, !tbaa !11
  %i.t = call ptr @EVP_CIPHER_fetch(ptr noundef %i.s, ptr noundef nonnull @.str.782, ptr noundef nonnull @.str.917) #8 ; 10 uses
  %i.u = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6824, ptr noundef nonnull @.str.916, ptr noundef %i.t) #8
  %.not165 = icmp eq i32 %i.u, 0
  br i1 %.not165, label %.loopexit215, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call ptr @EVP_CIPHER_CTX_new() #8        ; 26 uses
  %i.w = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6825, ptr noundef nonnull @.str.226, ptr noundef %i.v) #8
  %.not166 = icmp eq i32 %i.w, 0
  br i1 %.not166, label %.loopexit215, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 1, i64 32, i1 false)
  %i.x = call i32 @EVP_CIPHER_can_pipeline(ptr noundef %i.t, i32 noundef 1) #8
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = call i32 @test_false(ptr noundef nonnull @.str.18, i32 noundef 6830, ptr noundef nonnull @.str.918, i32 noundef %i.z) #8
  %.not167 = icmp eq i32 %i.aa, 0
  br i1 %.not167, label %.loopexit215, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = call ptr @EVP_aes_256_gcm() #8
  %i.ac = call i32 @EVP_CIPHER_can_pipeline(ptr noundef %i.ab, i32 noundef 1) #8
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = call i32 @test_false(ptr noundef nonnull @.str.18, i32 noundef 6832, ptr noundef nonnull @.str.919, i32 noundef %i.ae) #8
  %.not168 = icmp eq i32 %i.af, 0
  br i1 %.not168, label %.loopexit215, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call i32 @EVP_CipherPipelineEncryptInit(ptr noundef %i.v, ptr noundef %i.q, ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 33, ptr noundef null, i64 noundef 0) #8
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @test_false(ptr noundef nonnull @.str.18, i32 noundef 6836, ptr noundef nonnull @.str.920, i32 noundef %i.ai) #8
  %.not169 = icmp eq i32 %i.aj, 0
  br i1 %.not169, label %.loopexit215, label %.preheader212

.preheader212:                                    ; preds = %bb.g, %bb.ak
  %.0154235 = phi i64 [ %i.ii, %bb.ak ], [ 1, %bb.g ] ; 25 uses
  %i.ak = shl nuw nsw i64 %.0154235, 3
  %min.iters.check332 = icmp samesign ult i64 %.0154235, 4
  %n.vec334 = and i64 %.0154235, 9223372036854775804 ; 3 uses
  %cmp.n347 = icmp eq i64 %.0154235, %n.vec334
  %min.iters.check318 = icmp samesign ult i64 %.0154235, 4
  %n.vec320 = and i64 %.0154235, 9223372036854775804 ; 3 uses
  %cmp.n329 = icmp eq i64 %.0154235, %n.vec320
  %min.iters.check308 = icmp samesign ult i64 %.0154235, 4
  %n.vec310 = and i64 %.0154235, 9223372036854775804 ; 3 uses
  %cmp.n315 = icmp eq i64 %.0154235, %n.vec310
  %min.iters.check = icmp samesign ult i64 %.0154235, 4
  %n.vec = and i64 %.0154235, 9223372036854775804 ; 3 uses
  %cmp.n = icmp eq i64 %.0154235, %n.vec
  br label %bb.h

bb.h:                                             ; preds = %.preheader212, %bb.aj
  %.0153234 = phi i64 [ 1, %.preheader212 ], [ %i.ih, %bb.aj ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  store i32 0, ptr %i.l, align 4, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.e, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.al = add nuw nsw i64 %.0153234, 32           ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.m
  %.0152227 = phi i64 [ 0, %bb.h ], [ %i.bc, %bb.m ] ; 10 uses
  %i.am = call noalias ptr @CRYPTO_malloc(i64 noundef 12, ptr noundef nonnull @.str.18, i32 noundef 6856) #8 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0152227 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !20
  %i.ao = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6856, ptr noundef nonnull @.str.921, ptr noundef %i.am) #8
  %.not196 = icmp eq i32 %i.ao, 0
  br i1 %.not196, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = call noalias ptr @CRYPTO_malloc(i64 noundef %.0153234, ptr noundef nonnull @.str.18, i32 noundef 6857) #8 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0152227 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !20
  %i.ar = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6857, ptr noundef nonnull @.str.922, ptr noundef %i.ap) #8
  %.not197 = icmp eq i32 %i.ar, 0
  br i1 %.not197, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = call noalias ptr @CRYPTO_malloc(i64 noundef %i.al, ptr noundef nonnull @.str.18, i32 noundef 6858) #8 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.0152227
  store ptr %i.as, ptr %i.at, align 8, !tbaa !20
  %i.au = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6858, ptr noundef nonnull @.str.923, ptr noundef %i.as) #8
  %.not198 = icmp eq i32 %i.au, 0
  br i1 %.not198, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef 6859) #8 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0152227
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !20
  %i.ax = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6859, ptr noundef nonnull @.str.924, ptr noundef %i.av) #8
  %.not199 = icmp eq i32 %i.ax, 0
  br i1 %.not199, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.az = trunc i64 %.0152227 to i8
  %i.ba = add i8 %i.az, 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ay, i8 %i.ba, i64 12, i1 false)
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.bc = add nuw nsw i64 %.0152227, 1            ; 3 uses
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 %i.bd, i64 %.0153234, i1 false)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0152227
  store i64 %.0153234, ptr %i.be, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0152227
  store i64 0, ptr %i.bf, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0152227
  store i64 0, ptr %i.bg, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0152227
  store i64 %i.al, ptr %i.bh, align 8, !tbaa !16
  %exitcond.not = icmp eq i64 %i.bc, %.0154235
  br i1 %exitcond.not, label %bb.n, label %bb.i, !llvm.loop !84

bb.n:                                             ; preds = %bb.m
  %i.bi = call noalias ptr @CRYPTO_malloc(i64 noundef %i.al, ptr noundef nonnull @.str.18, i32 noundef 6869) #8 ; 31 uses
  %i.bj = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6869, ptr noundef nonnull @.str.925, ptr noundef %i.bi) #8
  %.not170 = icmp eq i32 %i.bj, 0
  br i1 %.not170, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef 6870) #8 ; 29 uses
  %i.bl = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6870, ptr noundef nonnull @.str.926, ptr noundef %i.bk) #8
  %.not171 = icmp eq i32 %i.bl, 0
  br i1 %.not171, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = call noalias ptr @CRYPTO_malloc(i64 noundef %.0153234, ptr noundef nonnull @.str.18, i32 noundef 6871) #8 ; 28 uses
  %i.bn = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 6871, ptr noundef nonnull @.str.927, ptr noundef %i.bm) #8
  %.not172 = icmp eq i32 %i.bn, 0
  br i1 %.not172, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = call i32 @EVP_CIPHER_CTX_reset(ptr noundef %i.v) #8
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6875, ptr noundef nonnull @.str.928, i32 noundef %i.bq) #8
  %.not173 = icmp eq i32 %i.br, 0
  br i1 %.not173, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = call i32 @EVP_CIPHER_can_pipeline(ptr noundef %i.q, i32 noundef 1) #8
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6876, ptr noundef nonnull @.str.929, i32 noundef %i.bu) #8
  %.not174 = icmp eq i32 %i.bv, 0
  br i1 %.not174, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = call i32 @EVP_CipherPipelineEncryptInit(ptr noundef %i.v, ptr noundef %i.q, ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %.0154235, ptr noundef nonnull %i.b, i64 noundef 12) #8
  %i.bx = icmp ne i32 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6880, ptr noundef nonnull @.str.930, i32 noundef %i.by) #8
  %.not175 = icmp eq i32 %i.bz, 0
  br i1 %.not175, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = call i32 @EVP_CipherPipelineUpdate(ptr noundef %i.v, ptr noundef null, ptr noundef nonnull %i.i, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k) #8
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6884, ptr noundef nonnull @.str.931, i32 noundef %i.cc) #8
  %.not176 = icmp eq i32 %i.cd, 0
  br i1 %.not176, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = call i32 @EVP_CipherPipelineUpdate(ptr noundef %i.v, ptr noundef nonnull %i.e, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k) #8
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6888, ptr noundef nonnull @.str.932, i32 noundef %i.cg) #8
  %.not177 = icmp eq i32 %i.ch, 0
  br i1 %.not177, label %.loopexit, label %.preheader210.preheader

.preheader210.preheader:                          ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.j, ptr noundef nonnull align 16 dereferenceable(1) %i.i, i64 %i.ak, i1 false), !tbaa !16
  br i1 %min.iters.check332, label %.preheader210.preheader357, label %vector.body335

vector.body335:                                   ; preds = %.preheader210.preheader, %vector.body335
  %index336 = phi i64 [ %index.next345, %vector.body335 ], [ 0, %.preheader210.preheader ] ; 5 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index336 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load337 = load <2 x i64>, ptr %i.ci, align 16, !tbaa !16 ; 2 uses
  %wide.load338 = load <2 x i64>, ptr %i.cj, align 16, !tbaa !16 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index336 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load339 = load <2 x ptr>, ptr %i.ck, align 16, !tbaa !20
  %wide.load340 = load <2 x ptr>, ptr %i.cl, align 16, !tbaa !20
  %wide.gep341 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load339, <2 x i64> %wide.load337
  %wide.gep342 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load340, <2 x i64> %wide.load338
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index336 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x ptr> %wide.gep341, ptr %i.cm, align 16, !tbaa !20
  store <2 x ptr> %wide.gep342, ptr %i.cn, align 16, !tbaa !20
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index336 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load343 = load <2 x i64>, ptr %i.co, align 16, !tbaa !16
  %wide.load344 = load <2 x i64>, ptr %i.cp, align 16, !tbaa !16
  %i.cq = sub <2 x i64> %wide.load343, %wide.load337
  %i.cr = sub <2 x i64> %wide.load344, %wide.load338
  store <2 x i64> %i.cq, ptr %i.co, align 16, !tbaa !16
  store <2 x i64> %i.cr, ptr %i.cp, align 16, !tbaa !16
  %index.next345 = add nuw i64 %index336, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next345, %n.vec334
  br i1 %i.cs, label %middle.block346, label %vector.body335, !llvm.loop !85

middle.block346:                                  ; preds = %vector.body335
  br i1 %cmp.n347, label %.loopexit352.a, label %.preheader210.preheader357

.preheader210.preheader357:                       ; preds = %.preheader210.preheader, %middle.block346
  %.1228.ph = phi i64 [ 0, %.preheader210.preheader ], [ %n.vec334, %middle.block346 ]
  br label %.preheader210

.preheader210:                                    ; preds = %.preheader210.preheader357, %.preheader210
  %.1228 = phi i64 [ %i.dc, %.preheader210 ], [ %.1228.ph, %.preheader210.preheader357 ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.1228
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !16 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.1228
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1228
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.1228 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16
  %i.db = sub i64 %i.da, %i.cu
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !16
  %i.dc = add nuw nsw i64 %.1228, 1               ; 2 uses
  %exitcond254.not = icmp eq i64 %i.dc, %.0154235
  br i1 %exitcond254.not, label %.loopexit352.a, label %.preheader210, !llvm.loop !88

.loopexit352.a:                                   ; preds = %.preheader210, %middle.block346
  %i.dd = call i32 @EVP_CipherPipelineFinal(ptr noundef %i.v, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #8
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6897, ptr noundef nonnull @.str.933, i32 noundef %i.df) #8
  %.not178 = icmp eq i32 %i.dg, 0
  br i1 %.not178, label %.loopexit, label %.preheader209.preheader

.preheader209.preheader:                          ; preds = %.loopexit352.a
  br i1 %min.iters.check318, label %.preheader209.preheader356, label %vector.body321

vector.body321:                                   ; preds = %.preheader209.preheader, %vector.body321
  %index322 = phi i64 [ %index.next327, %vector.body321 ], [ 0, %.preheader209.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index322 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load323 = load <2 x i64>, ptr %i.dh, align 16, !tbaa !16
  %wide.load324 = load <2 x i64>, ptr %i.di, align 16, !tbaa !16
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index322 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load325 = load <2 x i64>, ptr %i.dj, align 16, !tbaa !16
  %wide.load326 = load <2 x i64>, ptr %i.dk, align 16, !tbaa !16
  %i.dl = add <2 x i64> %wide.load325, %wide.load323
  %i.dm = add <2 x i64> %wide.load326, %wide.load324
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !tbaa !16
  store <2 x i64> %i.dm, ptr %i.dk, align 16, !tbaa !16
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.dn, label %middle.block328, label %vector.body321, !llvm.loop !89

middle.block328:                                  ; preds = %vector.body321
  br i1 %cmp.n329, label %.loopexit351.a, label %.preheader209.preheader356

.preheader209.preheader356:                       ; preds = %.preheader209.preheader, %middle.block328
  %.2229.ph = phi i64 [ 0, %.preheader209.preheader ], [ %n.vec320, %middle.block328 ]
  br label %.preheader209

.preheader209:                                    ; preds = %.preheader209.preheader356, %.preheader209
  %.2229 = phi i64 [ %i.dt, %.preheader209 ], [ %.2229.ph, %.preheader209.preheader356 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2229
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.2229 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !16
  %i.ds = add i64 %i.dr, %i.dp
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !16
  %i.dt = add nuw nsw i64 %.2229, 1               ; 2 uses
  %exitcond255.not = icmp eq i64 %i.dt, %.0154235
  br i1 %exitcond255.not, label %.loopexit351.a, label %.preheader209, !llvm.loop !90

.loopexit351.a:                                   ; preds = %.preheader209, %middle.block328
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.934, ptr noundef nonnull %i.f, i64 noundef 16) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.du = call i32 @EVP_CIPHER_CTX_get_params(ptr noundef %i.v, ptr noundef nonnull %0) #8
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6905, ptr noundef nonnull @.str.519, i32 noundef %i.dw) #8
  %.not179 = icmp eq i32 %i.dx, 0
  br i1 %.not179, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.loopexit351.a
  %i.dy = call i32 @EVP_CIPHER_CTX_reset(ptr noundef %i.v) #8
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6909, ptr noundef nonnull @.str.928, i32 noundef %i.ea) #8
  %.not180 = icmp eq i32 %i.eb, 0
  br i1 %.not180, label %.loopexit, label %.preheader207

.preheader207:                                    ; preds = %bb.v
  %i.ec = trunc nuw nsw i64 %.0153234 to i32      ; 2 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.ad
  %i.ed = add nuw nsw i64 %.3230, 1               ; 2 uses
  %exitcond256.not = icmp eq i64 %i.ed, %.0154235
  br i1 %exitcond256.not, label %.preheader206.preheader, label %bb.x, !llvm.loop !91

.preheader206.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check308, label %.preheader206.preheader354, label %vector.ph309

vector.ph309:                                     ; preds = %.preheader206.preheader
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0153234, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next313, %vector.body311 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index312 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ee, align 16, !tbaa !16
  store <2 x i64> %broadcast.splat, ptr %i.ef, align 16, !tbaa !16
  %index.next313 = add nuw i64 %index312, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next313, %n.vec310
  br i1 %i.eg, label %middle.block314, label %vector.body311, !llvm.loop !92

middle.block314:                                  ; preds = %vector.body311
  br i1 %cmp.n315, label %.loopexit350.a, label %.preheader206.preheader354

.preheader206.preheader354:                       ; preds = %.preheader206.preheader, %middle.block314
  %.4231.ph = phi i64 [ 0, %.preheader206.preheader ], [ %n.vec310, %middle.block314 ]
  br label %.preheader206

bb.x:                                             ; preds = %.preheader207, %bb.w
  %.3230 = phi i64 [ 0, %.preheader207 ], [ %i.ed, %bb.w ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.3230
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !20
  %i.ej = call i32 @EVP_EncryptInit(ptr noundef %i.v, ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef %i.ei) #8
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6913, ptr noundef nonnull @.str.935, i32 noundef %i.el) #8
  %.not189 = icmp eq i32 %i.em, 0
  br i1 %.not189, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.3230 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !20
  %i.ep = call i32 @EVP_EncryptUpdate(ptr noundef %i.v, ptr noundef null, ptr noundef nonnull %i.l, ptr noundef %i.eo, i32 noundef %i.ec) #8
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  %i.es = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6916, ptr noundef nonnull @.str.936, i32 noundef %i.er) #8
  %.not190 = icmp eq i32 %i.es, 0
  br i1 %.not190, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !20
  %i.eu = call i32 @EVP_EncryptUpdate(ptr noundef %i.v, ptr noundef %i.bi, ptr noundef nonnull %i.l, ptr noundef %i.et, i32 noundef %i.ec) #8
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6919, ptr noundef nonnull @.str.937, i32 noundef %i.ew) #8
  %.not191 = icmp eq i32 %i.ex, 0
  br i1 %.not191, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = load i32, ptr %i.l, align 4, !tbaa !26
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.bi, i64 %i.ez
  %i.fb = call i32 @EVP_EncryptFinal_ex(ptr noundef %i.v, ptr noundef %i.fa, ptr noundef nonnull %i.l) #8
  %i.fc = icmp ne i32 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %i.fe = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6923, ptr noundef nonnull @.str.938, i32 noundef %i.fd) #8
  %.not192 = icmp eq i32 %i.fe, 0
  br i1 %.not192, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = load i32, ptr %i.l, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
end_hunk_0
begin_hunk_1_@test_evp_cipher_pipeline:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.fg = call i32 @EVP_CIPHER_CTX_get_params(ptr noundef %i.v, ptr noundef nonnull %0) #8
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6929, ptr noundef nonnull @.str.519, i32 noundef %i.fi) #8
  %.not193 = icmp eq i32 %i.fj, 0
  br i1 %.not193, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = sext i32 %i.ff to i64
  %i.fl = add nsw i64 %i.fk, %i.ez
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.3230
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.3230
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fq = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 6933, ptr noundef nonnull @.str.939, ptr noundef nonnull @.str.940, ptr noundef %i.fn, i64 noundef %i.fp, ptr noundef %i.bi, i64 noundef %i.fl) #8
  %.not194 = icmp eq i32 %i.fq, 0
  br i1 %.not194, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.3230
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !20
  %i.ft = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 6934, ptr noundef nonnull @.str.941, ptr noundef nonnull @.str.508, ptr noundef %i.fs, i64 noundef 16, ptr noundef %i.bk, i64 noundef 16) #8
  %.not195 = icmp eq i32 %i.ft, 0
  br i1 %.not195, label %.loopexit, label %bb.w

.preheader206:                                    ; preds = %.preheader206.preheader354, %.preheader206
  %.4231 = phi i64 [ %i.fv, %.preheader206 ], [ %.4231.ph, %.preheader206.preheader354 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.4231
  store i64 %.0153234, ptr %i.fu, align 8, !tbaa !16
  %i.fv = add nuw nsw i64 %.4231, 1               ; 2 uses
  %exitcond257.not = icmp eq i64 %i.fv, %.0154235
  br i1 %exitcond257.not, label %.loopexit350.a, label %.preheader206, !llvm.loop !93

.loopexit350.a:                                   ; preds = %.preheader206, %middle.block314
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.934, ptr noundef nonnull %i.f, i64 noundef 16) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.fw = call i32 @EVP_CIPHER_CTX_reset(ptr noundef %i.v) #8
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %i.fz = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6944, ptr noundef nonnull @.str.928, i32 noundef %i.fy) #8
  %.not181 = icmp eq i32 %i.fz, 0
  br i1 %.not181, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.loopexit350.a
  %i.ga = call i32 @EVP_CIPHER_can_pipeline(ptr noundef %i.q, i32 noundef 0) #8
  %i.gb = icmp ne i32 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6945, ptr noundef nonnull @.str.942, i32 noundef %i.gc) #8
  %.not182 = icmp eq i32 %i.gd, 0
  br i1 %.not182, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = call i32 @EVP_CipherPipelineDecryptInit(ptr noundef %i.v, ptr noundef %i.q, ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %.0154235, ptr noundef nonnull %i.b, i64 noundef 12) #8
  %i.gf = icmp ne i32 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %i.gh = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6949, ptr noundef nonnull @.str.943, i32 noundef %i.gg) #8
  %.not183 = icmp eq i32 %i.gh, 0
  br i1 %.not183, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = call i32 @EVP_CIPHER_CTX_set_params(ptr noundef %i.v, ptr noundef nonnull %0) #8
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %i.gl = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6950, ptr noundef nonnull @.str.781, i32 noundef %i.gk) #8
  %.not184 = icmp eq i32 %i.gl, 0
  br i1 %.not184, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gm = call i32 @EVP_CipherPipelineUpdate(ptr noundef %i.v, ptr noundef null, ptr noundef nonnull %i.i, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k) #8
  %i.gn = icmp ne i32 %i.gm, 0
  %i.go = zext i1 %i.gn to i32
  %i.gp = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6953, ptr noundef nonnull @.str.931, i32 noundef %i.go) #8
  %.not185 = icmp eq i32 %i.gp, 0
  br i1 %.not185, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = call i32 @EVP_CipherPipelineUpdate(ptr noundef %i.v, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) #8
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %i.gt = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6957, ptr noundef nonnull @.str.944, i32 noundef %i.gs) #8
  %.not186 = icmp eq i32 %i.gt, 0
  br i1 %.not186, label %.loopexit, label %.preheader205.preheader

.preheader205.preheader:                          ; preds = %bb.ai
  br i1 %min.iters.check, label %.preheader205.preheader353, label %vector.body

vector.body:                                      ; preds = %.preheader205.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader205.preheader ] ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gu, align 16, !tbaa !20
  %wide.load301 = load <2 x ptr>, ptr %i.gv, align 16, !tbaa !20
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load302 = load <2 x i64>, ptr %i.gw, align 16, !tbaa !16 ; 2 uses
  %wide.load303 = load <2 x i64>, ptr %i.gx, align 16, !tbaa !16 ; 2 uses
  %wide.gep = getelementptr inbounds nuw i8, <2 x ptr> %wide.load, <2 x i64> %wide.load302
  %wide.gep304 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load301, <2 x i64> %wide.load303
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <2 x ptr> %wide.gep, ptr %i.gy, align 16, !tbaa !20
  store <2 x ptr> %wide.gep304, ptr %i.gz, align 16, !tbaa !20
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %wide.load305 = load <2 x i64>, ptr %i.ha, align 16, !tbaa !16
  %wide.load306 = load <2 x i64>, ptr %i.hb, align 16, !tbaa !16
  %i.hc = sub <2 x i64> %wide.load305, %wide.load302
  %i.hd = sub <2 x i64> %wide.load306, %wide.load303
  store <2 x i64> %i.hc, ptr %i.ha, align 16, !tbaa !16
  store <2 x i64> %i.hd, ptr %i.hb, align 16, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit349, label %.preheader205.preheader353

.preheader205.preheader353:                       ; preds = %.preheader205.preheader, %middle.block
  %.5232.ph = phi i64 [ 0, %.preheader205.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.preheader353, %.preheader205
  %.5232 = phi i64 [ %i.ho, %.preheader205 ], [ %.5232.ph, %.preheader205.preheader353 ] ; 5 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.5232
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.5232
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.5232
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.5232 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !16
  %i.hn = sub i64 %i.hm, %i.hi
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !16
  %i.ho = add nuw nsw i64 %.5232, 1               ; 2 uses
  %exitcond258.not = icmp eq i64 %i.ho, %.0154235
  br i1 %exitcond258.not, label %.loopexit349, label %.preheader205, !llvm.loop !95

.loopexit349:                                     ; preds = %.preheader205, %middle.block
  %i.hp = call i32 @EVP_CipherPipelineFinal(ptr noundef %i.v, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #8
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32
  %i.hs = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 6965, ptr noundef nonnull @.str.933, i32 noundef %i.hr) #8
  %.not187 = icmp eq i32 %i.hs, 0
  br i1 %.not187, label %.loopexit, label %.preheader204.preheader

.preheader204:                                    ; preds = %.preheader204.preheader
  %exitcond259.not = icmp eq i64 %i.ht, %.0154235
  br i1 %exitcond259.not, label %.preheader, label %.preheader204.preheader, !llvm.loop !96

.preheader204.preheader:                          ; preds = %.loopexit349, %.preheader204
  %.6300 = phi i64 [ %i.ht, %.preheader204 ], [ 0, %.loopexit349 ] ; 2 uses
  %i.ht = add nuw nsw i64 %.6300, 1               ; 3 uses
  %i.hu = trunc nuw nsw i64 %i.ht to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bm, i8 %i.hu, i64 %.0153234, i1 false)
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.6300
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !20
  %i.hx = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 6971, ptr noundef nonnull @.str.945, ptr noundef nonnull @.str.946, ptr noundef %i.hw, i64 noundef %.0153234, ptr noundef nonnull %i.bm, i64 noundef %.0153234) #8
  %.not188 = icmp eq i32 %i.hx, 0
  br i1 %.not188, label %.loopexit, label %.preheader204, !llvm.loop !96

.preheader:                                       ; preds = %.preheader204, %.preheader
  %.7233 = phi i64 [ %i.ig, %.preheader ], [ 0, %.preheader204 ] ; 5 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.7233
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.hz, ptr noundef nonnull @.str.18, i32 noundef 6976) #8
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.7233
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.ib, ptr noundef nonnull @.str.18, i32 noundef 6977) #8
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.7233
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.id, ptr noundef nonnull @.str.18, i32 noundef 6978) #8
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.7233
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.if, ptr noundef nonnull @.str.18, i32 noundef 6979) #8
  %i.ig = add nuw nsw i64 %.7233, 1               ; 2 uses
  %exitcond260.not = icmp eq i64 %i.ig, %.0154235
  br i1 %exitcond260.not, label %bb.aj, label %.preheader, !llvm.loop !97

.loopexit:                                        ; preds = %.loopexit349, %.loopexit350.a, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.v, %.loopexit351.a, %.loopexit352.a, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.n, %bb.o, %bb.p, %bb.i, %bb.j, %bb.k, %bb.l, %bb.ac, %bb.ad, %bb.ab, %bb.aa, %bb.x, %bb.y, %bb.z, %.preheader204.preheader
  %.0159 = phi ptr [ %i.bi, %.preheader204.preheader ], [ %i.bi, %bb.ac ], [ null, %bb.i ], [ %i.bi, %bb.z ], [ %i.bi, %bb.y ], [ %i.bi, %bb.x ], [ %i.bi, %bb.aa ], [ %i.bi, %bb.ab ], [ %i.bi, %bb.ad ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ %i.bi, %bb.p ], [ %i.bi, %bb.o ], [ %i.bi, %bb.n ], [ %i.bi, %bb.u ], [ %i.bi, %bb.t ], [ %i.bi, %bb.s ], [ %i.bi, %bb.r ], [ %i.bi, %bb.q ], [ %i.bi, %.loopexit352.a ], [ %i.bi, %.loopexit351.a ], [ %i.bi, %bb.v ], [ %i.bi, %bb.ai ], [ %i.bi, %bb.ah ], [ %i.bi, %bb.ag ], [ %i.bi, %bb.af ], [ %i.bi, %bb.ae ], [ %i.bi, %.loopexit350.a ], [ %i.bi, %.loopexit349 ]
  %.1158 = phi ptr [ %i.bm, %.preheader204.preheader ], [ %i.bm, %bb.ac ], [ null, %bb.i ], [ %i.bm, %bb.z ], [ %i.bm, %bb.y ], [ %i.bm, %bb.x ], [ %i.bm, %bb.aa ], [ %i.bm, %bb.ab ], [ %i.bm, %bb.ad ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ %i.bm, %bb.q ], [ %i.bm, %bb.r ], [ %i.bm, %bb.s ], [ %i.bm, %bb.t ], [ %i.bm, %bb.u ], [ null, %bb.n ], [ null, %bb.o ], [ %i.bm, %bb.p ], [ %i.bm, %bb.v ], [ %i.bm, %.loopexit351.a ], [ %i.bm, %.loopexit350.a ], [ %i.bm, %bb.ae ], [ %i.bm, %bb.af ], [ %i.bm, %bb.ag ], [ %i.bm, %bb.ah ], [ %i.bm, %.loopexit352.a ], [ %i.bm, %bb.ai ], [ %i.bm, %.loopexit349 ]
  %.1156 = phi ptr [ %i.bk, %.preheader204.preheader ], [ %i.bk, %bb.ac ], [ null, %bb.i ], [ %i.bk, %bb.z ], [ %i.bk, %bb.y ], [ %i.bk, %bb.x ], [ %i.bk, %bb.aa ], [ %i.bk, %bb.ab ], [ %i.bk, %bb.ad ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ %i.bk, %bb.q ], [ %i.bk, %bb.r ], [ %i.bk, %bb.s ], [ %i.bk, %bb.t ], [ %i.bk, %bb.u ], [ null, %bb.n ], [ %i.bk, %bb.o ], [ %i.bk, %bb.p ], [ %i.bk, %bb.v ], [ %i.bk, %.loopexit351.a ], [ %i.bk, %.loopexit350.a ], [ %i.bk, %bb.ae ], [ %i.bk, %bb.af ], [ %i.bk, %bb.ag ], [ %i.bk, %bb.ah ], [ %i.bk, %.loopexit352.a ], [ %i.bk, %bb.ai ], [ %i.bk, %.loopexit349 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  br label %bb.al

bb.aj:                                            ; preds = %.preheader
  call void @CRYPTO_free(ptr noundef %i.bm, ptr noundef nonnull @.str.18, i32 noundef 6981) #8
  call void @CRYPTO_free(ptr noundef %i.bi, ptr noundef nonnull @.str.18, i32 noundef 6982) #8
  call void @CRYPTO_free(ptr noundef %i.bk, ptr noundef nonnull @.str.18, i32 noundef 6983) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  %i.ih = add nuw nsw i64 %.0153234, 1            ; 2 uses
  %exitcond261.not = icmp eq i64 %i.ih, 257
  br i1 %exitcond261.not, label %bb.ak, label %bb.h, !llvm.loop !98

bb.ak:                                            ; preds = %bb.aj
  %i.ii = add nuw nsw i64 %.0154235, 1            ; 2 uses
  %exitcond262.not = icmp eq i64 %i.ii, 33
  br i1 %exitcond262.not, label %.loopexit215, label %.preheader212, !llvm.loop !99

bb.al:                                            ; preds = %.loopexit, %bb.al
  %.8236 = phi i64 [ 0, %.loopexit ], [ %i.ir, %bb.al ] ; 5 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.8236
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.ik, ptr noundef nonnull @.str.18, i32 noundef 6992) #8
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.8236
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.im, ptr noundef nonnull @.str.18, i32 noundef 6993) #8
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.8236
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.io, ptr noundef nonnull @.str.18, i32 noundef 6994) #8
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8236
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !20
  call void @CRYPTO_free(ptr noundef %i.iq, ptr noundef nonnull @.str.18, i32 noundef 6995) #8
  %i.ir = add nuw i64 %.8236, 1                   ; 2 uses
  %exitcond263.not = icmp eq i64 %i.ir, %.0154235
  br i1 %exitcond263.not, label %bb.am, label %bb.al, !llvm.loop !100

bb.am:                                            ; preds = %bb.al
  call void @CRYPTO_free(ptr noundef %.1158, ptr noundef nonnull @.str.18, i32 noundef 6997) #8
  call void @CRYPTO_free(ptr noundef %.0159, ptr noundef nonnull @.str.18, i32 noundef 6998) #8
  call void @CRYPTO_free(ptr noundef %.1156, ptr noundef nonnull @.str.18, i32 noundef 6999) #8
  br label %.loopexit215

.loopexit215:                                     ; preds = %bb.ak, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.d, %bb.am
  %.0162 = phi i32 [ 0, %bb.am ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.ak ]
  %.0161 = phi ptr [ %i.t, %bb.am ], [ null, %bb.b ], [ %i.t, %bb.g ], [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %i.t, %bb.ak ]
  %.0160 = phi ptr [ %i.v, %bb.am ], [ null, %bb.b ], [ %i.v, %bb.g ], [ %i.v, %bb.f ], [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ null, %bb.c ], [ %i.v, %bb.ak ]
  call void @EVP_CIPHER_CTX_free(ptr noundef %.0160) #8
  call void @EVP_CIPHER_free(ptr noundef %.0161) #8
  call void @EVP_CIPHER_free(ptr noundef %i.q) #8
  call void @fake_pipeline_finish(ptr noundef %i.n) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %.loopexit215
  %.0163 = phi i32 [ 0, %bb.a ], [ %.0162, %.loopexit215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0163
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ml_kem_seed_only(i32 noundef %0) #1 {
bb.a:
  %i.a = tail call fastcc i32 @test_ml_seed_only(i32 noundef %0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ml_dsa_seed_only(i32 noundef %0) #1 {
bb.a:
  %i.a = add nsw i32 %0, 2
  %i.b = tail call fastcc i32 @test_ml_seed_only(i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @test_low_level_rsa_method() #1 {
bb.a:
  %i.a = tail call ptr @BN_new() #8               ; 4 uses
  %i.b = tail call ptr @RSA_get_default_method() #8 ; 2 uses
  %i.c = tail call ptr @RSA_meth_dup(ptr noundef %i.b) #8 ; 4 uses
  %i.d = load ptr, ptr @nullprov, align 8, !tbaa !14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.18, i32 noundef 7088, ptr noundef nonnull @.str.119) #8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 7092, ptr noundef nonnull @.str.444, ptr noundef %i.a) #8
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 7092, ptr noundef nonnull @.str.975, ptr noundef %i.c) #8
  %.not23 = icmp eq i32 %i.g, 0
  br i1 %.not23, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 9, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  store i32 %i.h, ptr @rsa_ex_idx, align 4, !tbaa !26
  %i.i = tail call i32 @BN_set_word(ptr noundef %i.a, i64 noundef 65537) #8
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 7097, ptr noundef nonnull @.str.976, i32 noundef %i.k) #8
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @RSA_new() #8              ; 12 uses
  %i.n = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 7101, ptr noundef nonnull @.str.977, ptr noundef %i.m) #8
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr @rsa_ex_idx, align 4, !tbaa !26
  %i.p = tail call i32 @RSA_set_ex_data(ptr noundef %i.m, i32 noundef %i.o, ptr noundef nonnull @.str.6) #8
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 7103, ptr noundef nonnull @.str.978, i32 noundef %i.r) #8
  %.not26 = icmp eq i32 %i.s, 0
  br i1 %.not26, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @RSA_generate_key_ex(ptr noundef %i.m, i32 noundef 1024, ptr noundef %i.a, ptr noundef null) #8
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 7105, ptr noundef nonnull @.str.979, i32 noundef %i.v) #8
  %.not27 = icmp eq i32 %i.w, 0
  br i1 %.not27, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @RSA_meth_get_priv_enc(ptr noundef %i.b) #8
  store ptr %i.x, ptr @orig_rsa_priv_enc, align 8, !tbaa !34
  %i.y = tail call i32 @RSA_meth_set_priv_enc(ptr noundef %i.c, ptr noundef nonnull @tst_rsa_priv_enc) #8
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 7109, ptr noundef nonnull @.str.980, i32 noundef %i.aa) #8
  %.not28 = icmp eq i32 %i.ab, 0
  br i1 %.not28, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i32 @RSA_set_method(ptr noundef %i.m, ptr noundef %i.c) #8
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 7111, ptr noundef nonnull @.str.981, i32 noundef %i.ae) #8
  %.not29 = icmp eq i32 %i.af, 0
  br i1 %.not29, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call ptr @EVP_PKEY_new() #8        ; 6 uses
  %i.ah = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 7115, ptr noundef nonnull @.str.155, ptr noundef %i.ag) #8
  %.not30 = icmp eq i32 %i.ah, 0
  br i1 %.not30, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @EVP_PKEY_assign(ptr noundef %i.ag, i32 noundef 6, ptr noundef %i.m) #8
  %i.aj = tail call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 7117, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.123, i32 noundef %i.ai, i32 noundef 0) #8
  %.not31 = icmp eq i32 %i.aj, 0
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call fastcc i32 @do_sign_with_method(ptr noundef %i.ag)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.d, %bb.b
  %.021 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.m ], [ %i.m, %bb.l ], [ %i.m, %bb.k ], [ %i.m, %bb.j ], [ %i.m, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %.020 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ag, %bb.m ], [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.c ], [ %i.ak, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  tail call void @BN_free(ptr noundef %i.a) #8
  tail call void @RSA_free(ptr noundef %.021) #8
  tail call void @EVP_PKEY_free(ptr noundef %.020) #8
  tail call void @RSA_meth_free(ptr noundef %i.c) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @test_low_level_rsa_kem_public_encrypt_failure(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = tail call ptr @RSA_get_default_method() #8
  %i.g = tail call ptr @RSA_meth_dup(ptr noundef %i.f) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 0, ptr %i.e, align 8, !tbaa !16
  %i.h = load ptr, ptr @nullprov, align 8, !tbaa !14
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.18, i32 noundef 7146, ptr noundef nonnull @.str.119) #8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 7150, ptr noundef nonnull @.str.975, ptr noundef %i.g) #8
  %.not31 = icmp eq i32 %i.j, 0
  br i1 %.not31, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_1
