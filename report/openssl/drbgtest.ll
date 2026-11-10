Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/drbgtest?download=true
inline.NumInlined: 30
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.58 = private unnamed_addr constant [53 x i8] c"ERROR: %d duplicate prefixes in public random output\00", align 1
@.str.59 = private unnamed_addr constant [54 x i8] c"ERROR: %d duplicate prefixes in private random output\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"ERROR: %d duplicate chunks in random output\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"    random: %s, pid: %d (%s, %s)\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"pipe(fd)\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"pid = fork()\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"waitpid(pid, &status, 0)\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.67 = private unnamed_addr constant [58 x i8] c"read(fd[0], &random[0], sizeof(random)) == sizeof(random)\00", align 1
@.str.68 = private unnamed_addr constant [92 x i8] c"test_drbg_reseed(1, primary, public, private, &random[0], &random[RANDOM_SIZE], 1, 1, 1, 0)\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"write(fd[1], random, sizeof(random)) == sizeof(random)\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"x = new_drbg(NULL)\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"disable_crngt(x)\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"EVP_RAND_instantiate(x, 0, 0, NULL, 0, NULL)\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"y = new_drbg(x)\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"EVP_RAND_instantiate(y, 0, 0, NULL, 0, NULL)\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"z = new_drbg(y)\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"EVP_RAND_instantiate(z, 0, 0, NULL, 0, NULL)\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"EVP_RAND_reseed(z, 0, NULL, 0, NULL, 0)\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"reseed_counter(x)\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"xreseed\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"reseed_counter(y)\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"yreseed\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"reseed_counter(z)\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"zreseed\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"EVP_RAND_reseed(z, 1, NULL, 0, NULL, 0)\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"EVP_RAND_generate(z, buf1, sizeof(buf1), 0, 0, NULL, 0)\00", align 1
@.str.86 = private unnamed_addr constant [56 x i8] c"EVP_RAND_generate(z, buf2, sizeof(buf2), 0, 1, NULL, 0)\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"buf1\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"buf2\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"AES-256-CTR\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"rand = EVP_RAND_fetch(NULL, \22CTR-DRBG\22, NULL)\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"CTR-DRBG\00", align 1
@.str.93 = private unnamed_addr constant [38 x i8] c"drbg = EVP_RAND_CTX_new(rand, parent)\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"EVP_RAND_CTX_set_params(drbg, params)\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"multi_thread_rand_bytes_succeeded\00", align 1
@multi_thread_rand_bytes_succeeded = internal unnamed_addr global i1 false, align 4
@.str.96 = private unnamed_addr constant [39 x i8] c"multi_thread_rand_priv_bytes_succeeded\00", align 1
@multi_thread_rand_priv_bytes_succeeded = internal unnamed_addr global i1 false, align 4
@.str.97 = private unnamed_addr constant [37 x i8] c"set_reseed_time_interval(private, 1)\00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"set_reseed_time_interval(public, 1)\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"reseed_time_interval\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setup_tests() local_unnamed_addr #0 {
bb.a:
  tail call void @add_test(ptr noundef nonnull @.str, ptr noundef nonnull @test_rand_reseed) #13
  tail call void @add_all_tests(ptr noundef nonnull @.str.1, ptr noundef nonnull @test_rand_fork_safety, i32 noundef 16, i32 noundef 1) #13
  tail call void @add_test(ptr noundef nonnull @.str.2, ptr noundef nonnull @test_rand_prediction_resistance) #13
  tail call void @add_test(ptr noundef nonnull @.str.3, ptr noundef nonnull @test_multi_thread) #13
  ret i32 1
}

declare void @add_test(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @test_rand_reseed() #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call fastcc i32 @using_fips_rng()
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.4, i32 noundef 553, ptr noundef nonnull @.str.5) #13
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @RAND_get_rand_method() #13
  %i.e = tail call ptr @RAND_OpenSSL() #13
  %i.f = tail call i32 @test_ptr_eq(ptr noundef nonnull @.str.4, i32 noundef 557, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %i.d, ptr noundef %i.e) #13
  %.not40 = icmp eq i32 %i.f, 0
  br i1 %.not40, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @RAND_get0_primary(ptr noundef null) #13 ; 14 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 562, ptr noundef nonnull @.str.8, ptr noundef %i.g) #13
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @RAND_get0_public(ptr noundef null) #13 ; 12 uses
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 563, ptr noundef nonnull @.str.9, ptr noundef %i.i) #13
  %.not42 = icmp eq i32 %i.j, 0
  br i1 %.not42, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @RAND_get0_private(ptr noundef null) #13 ; 12 uses
  %i.l = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 564, ptr noundef nonnull @.str.10, ptr noundef %i.k) #13
  %.not43 = icmp eq i32 %i.l, 0
  br i1 %.not43, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @test_ptr_ne(ptr noundef nonnull @.str.4, i32 noundef 568, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %i.i, ptr noundef %i.k) #13
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @test_ptr_ne(ptr noundef nonnull @.str.4, i32 noundef 569, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, ptr noundef %i.i, ptr noundef %i.g) #13
  %.not45 = icmp eq i32 %i.n, 0
  br i1 %.not45, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @test_ptr_ne(ptr noundef nonnull @.str.4, i32 noundef 570, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %i.k, ptr noundef %i.g) #13
  %.not46 = icmp eq i32 %i.o, 0
  br i1 %.not46, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %i.i, i64 8
  %.val58 = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %.val58, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %.val57 = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.t = tail call i32 @test_ptr_eq(ptr noundef nonnull @.str.4, i32 noundef 571, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %i.r, ptr noundef %.val57) #13
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr i8, ptr %i.k, i64 8
  %.val56 = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %.val56, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %.val = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.x = tail call i32 @test_ptr_eq(ptr noundef nonnull @.str.4, i32 noundef 572, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %i.w, ptr noundef %.val) #13
  %.not48 = icmp eq i32 %i.x, 0
  br i1 %.not48, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 576, ptr noundef nonnull @.str.17, i32 noundef 1) #13
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @EVP_RAND_uninstantiate(ptr noundef nonnull %i.g) #13 ; 0 uses
  %i.aa = tail call i32 @EVP_RAND_uninstantiate(ptr noundef nonnull %i.k) #13 ; 0 uses
  %i.ab = tail call i32 @EVP_RAND_uninstantiate(ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.ac = tail call fastcc i32 @test_drbg_reseed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, i32 noundef 1, i64 noundef 0)
  %i.ad = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 590, ptr noundef nonnull @.str.18, i32 noundef %i.ac) #13
  %.not50 = icmp eq i32 %i.ad, 0
  br i1 %.not50, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call fastcc i32 @test_drbg_reseed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %i.af = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 599, ptr noundef nonnull @.str.19, i32 noundef %i.ae) #13
  %.not51 = icmp eq i32 %i.af, 0
  br i1 %.not51, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @inc_reseed_counter(ptr noundef nonnull %i.g)
  %i.ag = tail call fastcc i32 @test_drbg_reseed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %i.ah = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 610, ptr noundef nonnull @.str.20, i32 noundef %i.ag) #13
  %.not52 = icmp eq i32 %i.ah, 0
  br i1 %.not52, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @inc_reseed_counter(ptr noundef nonnull %i.g)
  tail call fastcc void @inc_reseed_counter(ptr noundef nonnull %i.k)
  %i.ai = tail call fastcc i32 @test_drbg_reseed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %i.aj = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 622, ptr noundef nonnull @.str.21, i32 noundef %i.ai) #13
  %.not53 = icmp eq i32 %i.aj, 0
  br i1 %.not53, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @inc_reseed_counter(ptr noundef nonnull %i.g)
  tail call fastcc void @inc_reseed_counter(ptr noundef nonnull %i.i)
  %i.ak = tail call fastcc i32 @test_drbg_reseed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %i.al = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 634, ptr noundef nonnull @.str.22, i32 noundef %i.ak) #13
  %.not54 = icmp eq i32 %i.al, 0
  br i1 %.not54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 114, i64 256, i1 false)
  %i.am = tail call i64 @time(ptr noundef null) #13
  call void @RAND_add(ptr noundef nonnull %i.a, i32 noundef 256, double noundef 2.560000e+02) #13
  %i.an = call fastcc i32 @test_drbg_reseed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, i32 noundef 1, i64 noundef %i.am)
  %i.ao = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 654, ptr noundef nonnull @.str.23, i32 noundef %i.an) #13
  %.not55 = icmp ne i32 %i.ao, 0
  %spec.select = zext i1 %.not55 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.l, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.d, %bb.e, %bb.f, %bb.c, %bb.b
  %.039 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.m ], [ %spec.select, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.039
}

declare void @add_all_tests(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_rand_fork_safety(i32 %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  %i.d = alloca [2 x i32], align 8                ; 24 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [320 x i8], align 16              ; 24 uses
  %1 = alloca [20 x %struct.drbg_fork_result_st], align 16 ; 51 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.h = tail call ptr @RAND_get0_primary(ptr noundef null) #13 ; 3 uses
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 523, ptr noundef nonnull @.str.8, ptr noundef %i.h) #13
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @RAND_get0_public(ptr noundef null) #13 ; 3 uses
  %i.k = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 524, ptr noundef nonnull @.str.9, ptr noundef %i.j) #13
  %.not5 = icmp eq i32 %i.k, 0
  br i1 %.not5, label %bb.bm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @RAND_get0_private(ptr noundef null) #13 ; 3 uses
  %i.m = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 525, ptr noundef nonnull @.str.10, ptr noundef %i.l) #13
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %bb.bm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @getpid() #13              ; 2 uses
  %i.o = tail call ptr @getenv(ptr noundef nonnull @.str.53) #13
  %.not56.i = icmp eq ptr %i.o, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %1, i8 0, i64 800, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %test_drbg_reseed_in_child.exit.i
  %i.r = add nuw nsw i32 %.05062.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.r, 10
  br i1 %exitcond.not.i, label %bb.r, label %bb.f, !llvm.loop !34

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn5963.i = phi ptr [ %1, %bb.d ], [ %.04664.i, %bb.e ] ; 10 uses
  %.05062.i = phi i32 [ 1, %bb.d ], [ %i.r, %bb.e ] ; 4 uses
  %.04664.i = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 136
  store i32 %.05062.i, ptr %i.s, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 96
  store i32 %.05062.i, ptr %i.t, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 108 ; 2 uses
  %i.v = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.u, i64 noundef 10, ptr noundef nonnull @.str.54, i32 noundef %.05062.i) #13 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 148
  %i.x = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) %i.u) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.y = call i32 @pipe(ptr noundef nonnull %i.b) #13
  %i.z = call i32 @test_int_ge(ptr noundef nonnull @.str.4, i32 noundef 338, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.27, i32 noundef %i.y, i32 noundef 0) #13
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %test_drbg_reseed_in_child.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = call i32 @fork() #13                    ; 6 uses
  %i.ab = call i32 @test_int_ge(ptr noundef nonnull @.str.4, i32 noundef 341, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.27, i32 noundef %i.aa, i32 noundef 0) #13
  %.not18.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not18.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !24
  %i.ad = call i32 @close(i32 noundef %i.ac) #13  ; 0 uses
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !24
  br label %.sink.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = icmp sgt i32 %i.aa, 0
  br i1 %i.af, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !24
  %i.ah = call i32 @close(i32 noundef %i.ag) #13  ; 0 uses
  %i.ai = call i32 @waitpid(i32 noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 0) #13
  %i.aj = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 351, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %i.ai, i32 noundef %i.aa) #13
  %.not21.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not21.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !24
  %i.al = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 352, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.27, i32 noundef %i.ak, i32 noundef 0) #13
  %.not22.i.i = icmp eq i32 %i.al, 0
  br i1 %.not22.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.b, align 4, !tbaa !24
  %i.an = call i64 @read(i32 noundef %i.am, ptr noundef nonnull %i.c, i64 noundef 32) #13
  %i.ao = icmp eq i64 %i.an, 32
  %i.ap = zext i1 %i.ao to i32
  %i.aq = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 354, ptr noundef nonnull @.str.67, i32 noundef %i.ap) #13
  %.not23.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not23.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 100
  store i32 %i.aa, ptr %i.ar, align 4, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 104
  store i32 0, ptr %i.as, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.04664.i, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 140
  store i32 %i.aa, ptr %i.au, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.pn5963.i, i64 144
  store i32 1, ptr %i.av, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.0.i.i = phi i32 [ 1, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !24
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !24
  %i.ay = call i32 @close(i32 noundef %i.ax) #13  ; 0 uses
  %i.az = call fastcc i32 @test_drbg_reseed(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %i.c, ptr noundef nonnull %i.q, i32 noundef 1, i64 noundef 0)
  %i.ba = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 382, ptr noundef nonnull @.str.68, i32 noundef %i.az) #13
  %.not19.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not19.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !24
  %i.bc = call i64 @write(i32 noundef %i.bb, ptr noundef nonnull %i.c, i64 noundef 32) #13
  %i.bd = icmp eq i64 %i.bc, 32
  %i.be = zext i1 %i.bd to i32
  %i.bf = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 384, ptr noundef nonnull @.str.69, i32 noundef %i.be) #13
  %.not20.i.i = icmp eq i32 %i.bf, 0
  %spec.select.i.i = zext i1 %.not20.i.i to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = phi i32 [ 1, %bb.o ], [ %spec.select.i.i, %bb.p ]
  %i.bh = load i32, ptr %i.p, align 4, !tbaa !24
  %i.bi = call i32 @close(i32 noundef %i.bh) #13  ; 0 uses
  call void @exit(i32 noundef %i.bg) #14
  unreachable

.sink.split.i.i:                                  ; preds = %bb.n, %bb.h
  %.sink.i.i = phi i32 [ %i.aw, %bb.n ], [ %i.ae, %bb.h ]
  %.016.ph.i.i = phi i32 [ %.0.i.i, %bb.n ], [ 0, %bb.h ]
  %i.bj = call i32 @close(i32 noundef %.sink.i.i) #13 ; 0 uses
  br label %test_drbg_reseed_in_child.exit.i

test_drbg_reseed_in_child.exit.i:                 ; preds = %.sink.split.i.i, %bb.f
  %.016.i.i = phi i32 [ 0, %bb.f ], [ %.016.ph.i.i, %.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bk = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 425, ptr noundef nonnull @.str.55, i32 noundef %.016.i.i) #13
  %.not58.i = icmp eq i32 %i.bk, 0
  br i1 %.not58.i, label %test_rand_reseed_on_fork.exit, label %bb.e

bb.r:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.bm = call fastcc i32 @test_drbg_reseed(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bl, i32 noundef 0, i64 noundef 0)
  %i.bn = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 435, ptr noundef nonnull @.str.56, i32 noundef %i.bm) #13
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %test_rand_reseed_on_fork.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.bo, ptr noundef nonnull align 1 dereferenceable(7) @.str.57, i64 7, i1 false) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.bq, ptr noundef nonnull align 1 dereferenceable(7) @.str.57, i64 7, i1 false) #13
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.n, ptr %i.br, align 4, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.bs, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.n, ptr %i.bt, align 4, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i32 1, ptr %i.bu, align 16, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bw, ptr noundef nonnull align 16 dereferenceable(16) %i.bx, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 16 dereferenceable(16) %i.cf, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cm, ptr noundef nonnull align 16 dereferenceable(16) %i.cn, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cq, ptr noundef nonnull align 16 dereferenceable(16) %i.cr, i64 16, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cu, ptr noundef nonnull align 16 dereferenceable(16) %i.cv, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cy, ptr noundef nonnull align 16 dereferenceable(16) %i.cz, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dc, ptr noundef nonnull align 16 dereferenceable(16) %i.dd, i64 16, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false)
  call void @qsort(ptr noundef nonnull %1, i64 noundef 20, i64 noundef 40, ptr noundef nonnull @compare_drbg_fork_result) #13
  %i.dg = load i8, ptr %i.bp, align 8, !tbaa !38  ; 2 uses
  %i.dh = load i8, ptr %1, align 16, !tbaa !38
  %i.di = icmp eq i8 %i.dg, %i.dh
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dj = load i32, ptr %i.bu, align 16, !tbaa !25
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !24
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.do = load i8, ptr %i.bx, align 16, !tbaa !38 ; 2 uses
  %i.dp = icmp eq i8 %i.do, %i.dg
  br i1 %i.dp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !25
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !24
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dw = load i8, ptr %i.bz, align 8, !tbaa !38  ; 2 uses
  %i.dx = icmp eq i8 %i.dw, %i.do
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dz = load i32, ptr %i.dy, align 16, !tbaa !25
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ee = load i8, ptr %i.cb, align 16, !tbaa !38 ; 2 uses
  %i.ef = icmp eq i8 %i.ee, %i.dw
  br i1 %i.ef, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !25
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !24
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.em = load i8, ptr %i.cd, align 8, !tbaa !38  ; 2 uses
  %i.en = icmp eq i8 %i.em, %i.ee
  br i1 %i.en, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ep = load i32, ptr %i.eo, align 16, !tbaa !25
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !24
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eu = load i8, ptr %i.cf, align 16, !tbaa !38 ; 2 uses
  %i.ev = icmp eq i8 %i.eu, %i.em
  br i1 %i.ev, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !25
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !24
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fc = load i8, ptr %i.ch, align 8, !tbaa !38  ; 2 uses
  %i.fd = icmp eq i8 %i.fc, %i.eu
  br i1 %i.fd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ff = load i32, ptr %i.fe, align 16, !tbaa !25
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.fg ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !24
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fk = load i8, ptr %i.cj, align 16, !tbaa !38 ; 2 uses
  %i.fl = icmp eq i8 %i.fk, %i.fc
  br i1 %i.fl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !25
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !24
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fs = load i8, ptr %i.cl, align 8, !tbaa !38  ; 2 uses
  %i.ft = icmp eq i8 %i.fs, %i.fk
  br i1 %i.ft, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.fv = load i32, ptr %i.fu, align 16, !tbaa !25
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !24
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ga = load i8, ptr %i.cn, align 16, !tbaa !38 ; 2 uses
  %i.gb = icmp eq i8 %i.ga, %i.fs
  br i1 %i.gb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !25
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !24
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gi = load i8, ptr %i.cp, align 8, !tbaa !38  ; 2 uses
  %i.gj = icmp eq i8 %i.gi, %i.ga
  br i1 %i.gj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.gl = load i32, ptr %i.gk, align 16, !tbaa !25
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !24
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gq = load i8, ptr %i.cr, align 16, !tbaa !38 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, %i.gi
  br i1 %i.gr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !25
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !24
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gy = load i8, ptr %i.ct, align 8, !tbaa !38  ; 2 uses
  %i.gz = icmp eq i8 %i.gy, %i.gq
  br i1 %i.gz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.hb = load i32, ptr %i.ha, align 16, !tbaa !25
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !24
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hg = load i8, ptr %i.cv, align 16, !tbaa !38 ; 2 uses
  %i.hh = icmp eq i8 %i.hg, %i.gy
  br i1 %i.hh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !25
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.hk ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !24
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !24
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ho = load i8, ptr %i.cx, align 8, !tbaa !38  ; 2 uses
  %i.hp = icmp eq i8 %i.ho, %i.hg
  br i1 %i.hp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.hr = load i32, ptr %i.hq, align 16, !tbaa !25
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !24
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hw = load i8, ptr %i.cz, align 16, !tbaa !38 ; 2 uses
  %i.hx = icmp eq i8 %i.hw, %i.ho
  br i1 %i.hx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !25
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !24
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ie = load i8, ptr %i.db, align 8, !tbaa !38  ; 2 uses
  %i.if = icmp eq i8 %i.ie, %i.hw
  br i1 %i.if, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.ih = load i32, ptr %i.ig, align 16, !tbaa !25
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !24
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !24
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.im = load i8, ptr %i.dd, align 16, !tbaa !38 ; 2 uses
  %i.in = icmp eq i8 %i.im, %i.ie
  br i1 %i.in, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !25
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !24
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iu = load i8, ptr %i.df, align 8, !tbaa !38
  %i.iv = icmp eq i8 %i.iu, %i.im
  br i1 %i.iv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.ix = load i32, ptr %i.iw, align 16, !tbaa !25
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !24
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !24
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jc = load i32, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 7
  br i1 %i.jd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @test_note(ptr noundef nonnull @.str.58, i32 noundef %i.jc) #13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.048.i = phi i32 [ 0, %bb.bf ], [ 1, %bb.be ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !24 ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, 7
  br i1 %i.jg, label %bb.bh, label %2

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ...) @test_note(ptr noundef nonnull @.str.59, i32 noundef %i.jf) #13
  br label %2

2:                                                ; preds = %bb.bh, %bb.bg
  %.149.i = phi i32 [ 0, %bb.bh ], [ %.048.i, %bb.bg ] ; 2 uses
  call void @qsort(ptr noundef nonnull %i.f, i64 noundef 160, i64 noundef 2, ptr noundef nonnull @compare_rand_chunk) #13
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %2
  %.pn70.i = phi ptr [ %i.f, %2 ], [ %.171.i, %bb.bi ] ; 2 uses
  %.369.i = phi i32 [ 2, %2 ], [ %i.jm, %bb.bi ]  ; 2 uses
  %3 = phi i32 [ 0, %2 ], [ %spec.select.i.a, %bb.bi ]
  %.171.i = getelementptr inbounds nuw i8, ptr %.pn70.i, i64 2 ; 2 uses
  %i.jh = load i16, ptr %.pn70.i, align 1
  %i.ji = load i16, ptr %.171.i, align 1
  %4 = icmp ne i16 %i.jh, %i.ji
  %i.jj = zext i1 %4 to i32
  %i.jk = icmp eq i32 %i.jj, 0
  %i.jl = zext i1 %i.jk to i32
  %spec.select.i.a = add nuw nsw i32 %3, %i.jl    ; 3 uses
  %i.jm = add nuw nsw i32 %.369.i, 2
  %5 = icmp samesign ult i32 %.369.i, 318
  br i1 %5, label %bb.bi, label %6, !llvm.loop !35

6:                                                ; preds = %bb.bi
  %7 = icmp samesign ugt i32 %spec.select.i.a, 7
  br i1 %7, label %.thread.i, label %bb.bj

.thread.i:                                        ; preds = %6
  call void (ptr, ...) @test_note(ptr noundef nonnull @.str.60, i32 noundef %spec.select.i.a) #13
  br label %.preheader.preheader.i

bb.bj:                                            ; preds = %6
  %i.jn = icmp ne i32 %.149.i, 0
  %or.cond.i = and i1 %.not56.i, %i.jn
  br i1 %or.cond.i, label %test_rand_reseed_on_fork.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.bj, %.thread.i
  %.286.i = phi i32 [ 0, %.thread.i ], [ %.149.i, %bb.bj ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.i ; 4 uses
  %i.jp = call ptr @OPENSSL_buf2hexstr(ptr noundef nonnull %i.jo, i64 noundef 16) #13 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !37
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 28
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !25
  %.not57.i = icmp eq i32 %i.ju, 0
  %i.jv = select i1 %.not57.i, ptr @.str.11, ptr @.str.12
  call void (ptr, ...) @test_note(ptr noundef nonnull @.str.61, ptr noundef %i.jp, i32 noundef %i.jr, ptr noundef nonnull %i.js, ptr noundef nonnull %i.jv) #13
  call void @CRYPTO_free(ptr noundef %i.jp, ptr noundef nonnull @.str.4, i32 noundef 509) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next.i, 20
  br i1 %exitcond79.not.i, label %test_rand_reseed_on_fork.exit, label %.preheader.i, !llvm.loop !36

test_rand_reseed_on_fork.exit:                    ; preds = %test_drbg_reseed_in_child.exit.i, %.preheader.i, %bb.r, %bb.bj
  %.0.i = phi i32 [ %.286.i, %.preheader.i ], [ 0, %bb.r ], [ 1, %bb.bj ], [ 0, %test_drbg_reseed_in_child.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.jw = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 529, ptr noundef nonnull @.str.50, i32 noundef %.0.i) #13
  %i.jx = call i32 @RAND_bytes(ptr noundef nonnull %i.g, i32 noundef 1) #13
  %i.jy = call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 533, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.27, i32 noundef %i.jx, i32 noundef 0) #13
  %.not8 = icmp eq i32 %i.jy, 0
  br i1 %.not8, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %test_rand_reseed_on_fork.exit
  %.not7 = icmp ne i32 %i.jw, 0
  %spec.select = zext i1 %.not7 to i32
  %i.jz = call i32 @RAND_priv_bytes(ptr noundef nonnull %i.g, i32 noundef 1) #13
  %i.ka = call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 533, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.27, i32 noundef %i.jz, i32 noundef 0) #13
  %.not9 = icmp eq i32 %i.ka, 0
  br i1 %.not9, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %test_rand_reseed_on_fork.exit
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.a, %bb.b, %bb.c
  %.04 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select, %bb.bk ], [ 0, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define internal i32 @test_rand_prediction_resistance() #0 {
bb.a:
  %i.a = alloca [51 x i8], align 16               ; 4 uses
  %i.b = alloca [51 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = tail call fastcc i32 @using_fips_rng()
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.4, i32 noundef 805, ptr noundef nonnull @.str.5) #13
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @new_drbg(ptr noundef null) ; 12 uses
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 808, ptr noundef nonnull @.str.70, ptr noundef %i.e) #13
  %.not62 = icmp eq i32 %i.f, 0
  br i1 %.not62, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 809, ptr noundef nonnull @.str.71, i32 noundef 1) #13
  %.not63 = icmp eq i32 %i.g, 0
  br i1 %.not63, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @EVP_RAND_instantiate(ptr noundef %i.e, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null) #13
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 810, ptr noundef nonnull @.str.72, i32 noundef %i.j) #13
  %.not64 = icmp eq i32 %i.k, 0
  br i1 %.not64, label %bb.ae, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @new_drbg(ptr noundef %i.e) ; 39 uses
  %i.m = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 811, ptr noundef nonnull @.str.73, ptr noundef %i.l) #13
  %.not65 = icmp eq i32 %i.m, 0
  br i1 %.not65, label %bb.ae, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @EVP_RAND_instantiate(ptr noundef %i.l, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null) #13
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 812, ptr noundef nonnull @.str.74, i32 noundef %i.p) #13
  %.not66 = icmp eq i32 %i.q, 0
  br i1 %.not66, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call fastcc ptr @new_drbg(ptr noundef %i.l) ; 40 uses
  %i.s = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 813, ptr noundef nonnull @.str.75, ptr noundef %i.r) #13
  %.not67 = icmp eq i32 %i.s, 0
  br i1 %.not67, label %bb.ae, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @EVP_RAND_instantiate(ptr noundef %i.r, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null) #13
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 814, ptr noundef nonnull @.str.76, i32 noundef %i.v) #13
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @inc_reseed_counter(ptr noundef %i.l)
  %i.x = tail call fastcc i32 @reseed_counter(ptr noundef %i.e) ; 2 uses
  %i.y = tail call fastcc i32 @reseed_counter(ptr noundef %i.l) ; 2 uses
  %i.z = tail call fastcc i32 @reseed_counter(ptr noundef %i.r)
  %i.aa = tail call i32 @EVP_RAND_reseed(ptr noundef %i.r, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #13
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 825, ptr noundef nonnull @.str.77, i32 noundef %i.ac) #13
  %.not69 = icmp eq i32 %i.ad, 0
  br i1 %.not69, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call fastcc i32 @reseed_counter(ptr noundef %i.e)
  %i.af = tail call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 826, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %i.ae, i32 noundef %i.x) #13
  %.not70 = icmp eq i32 %i.af, 0
  br i1 %.not70, label %bb.ae, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call fastcc i32 @reseed_counter(ptr noundef %i.l)
  %i.ah = tail call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 827, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %i.ag, i32 noundef %i.y) #13
  %.not71 = icmp eq i32 %i.ah, 0
  br i1 %.not71, label %bb.ae, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call fastcc i32 @reseed_counter(ptr noundef %i.r)
  %i.aj = tail call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 828, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %i.ai, i32 noundef %i.z) #13
  %.not72 = icmp eq i32 %i.aj, 0
  br i1 %.not72, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call fastcc i32 @reseed_counter(ptr noundef %i.r)
  %i.al = tail call i32 @EVP_RAND_reseed(ptr noundef %i.r, i32 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #13
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = tail call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 836, ptr noundef nonnull @.str.84, i32 noundef %i.an) #13
  %.not73 = icmp eq i32 %i.ao, 0
  br i1 %.not73, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call fastcc i32 @reseed_counter(ptr noundef %i.e)
  %i.aq = tail call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 837, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %i.ap, i32 noundef %i.x) #13
  %.not74 = icmp eq i32 %i.aq, 0
  br i1 %.not74, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call fastcc i32 @reseed_counter(ptr noundef %i.l)
  %i.as = tail call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 838, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %i.ar, i32 noundef %i.y) #13
  %.not75 = icmp eq i32 %i.as, 0
  br i1 %.not75, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = tail call fastcc i32 @reseed_counter(ptr noundef %i.r)
  %i.au = tail call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 839, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %i.at, i32 noundef %i.ak) #13
  %.not76 = icmp eq i32 %i.au, 0
  br i1 %.not76, label %bb.ae, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @inc_reseed_counter(ptr noundef %i.l)
  %i.av = tail call fastcc i32 @reseed_counter(ptr noundef %i.e) ; 2 uses
  %i.aw = tail call fastcc i32 @reseed_counter(ptr noundef %i.l) ; 2 uses
  %i.ax = tail call fastcc i32 @reseed_counter(ptr noundef %i.r)
  %i.ay = call i32 @EVP_RAND_generate(ptr noundef %i.r, ptr noundef nonnull %i.a, i64 noundef 51, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #13
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 848, ptr noundef nonnull @.str.85, i32 noundef %i.ba) #13
  %.not77 = icmp eq i32 %i.bb, 0
  br i1 %.not77, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = call fastcc i32 @reseed_counter(ptr noundef %i.e)
  %i.bd = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 849, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %i.bc, i32 noundef %i.av) #13
  %.not78 = icmp eq i32 %i.bd, 0
  br i1 %.not78, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = call fastcc i32 @reseed_counter(ptr noundef %i.l)
  %i.bf = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 850, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %i.be, i32 noundef %i.aw) #13
  %.not79 = icmp eq i32 %i.bf, 0
  br i1 %.not79, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = call fastcc i32 @reseed_counter(ptr noundef %i.r)
  %i.bh = call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 851, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %i.bg, i32 noundef %i.ax) #13
  %.not80 = icmp eq i32 %i.bh, 0
  br i1 %.not80, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = call fastcc i32 @reseed_counter(ptr noundef %i.r)
  %i.bj = call i32 @EVP_RAND_generate(ptr noundef %i.r, ptr noundef nonnull %i.b, i64 noundef 51, i32 noundef 0, i32 noundef 1, ptr noundef null, i64 noundef 0) #13
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 859, ptr noundef nonnull @.str.86, i32 noundef %i.bl) #13
  %.not81 = icmp eq i32 %i.bm, 0
  br i1 %.not81, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = call fastcc i32 @reseed_counter(ptr noundef %i.e)
  %i.bo = call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 860, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %i.bn, i32 noundef %i.av) #13
  %.not82 = icmp eq i32 %i.bo, 0
  br i1 %.not82, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = call fastcc i32 @reseed_counter(ptr noundef %i.l)
  %i.bq = call i32 @test_int_gt(ptr noundef nonnull @.str.4, i32 noundef 861, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %i.bp, i32 noundef %i.aw) #13
  %.not83 = icmp eq i32 %i.bq, 0
  br i1 %.not83, label %bb.ae, label %bb.y

end_hunk_0
begin_hunk_1_@test_drbg_reseed:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.s = call i32 @test_int_ne(ptr noundef nonnull @.str.4, i32 noundef 202, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %.0.i.i68, i32 noundef 0) #13
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %6, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = call i64 @time(ptr noundef null) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.u, %bb.e ], [ %6, %bb.d ]
  %.not49 = icmp eq i32 %5, 0
  %i.v = select i1 %.not49, i64 0, i64 %.0
  %i.w = call ptr @RAND_get0_public(ptr noundef null) #13 ; 2 uses
  %i.x = call ptr @RAND_get_rand_method() #13     ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.x, null
  br i1 %.not.i.i69, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call ptr @RAND_OpenSSL() #13
  %.not13.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not13.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %.not15.i.i = icmp eq ptr %i.aa, null
  br i1 %.not15.i.i, label %rand_bytes.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 %i.aa(ptr noundef nonnull %spec.select, i32 noundef range(i32 16, 257) 16) #13, !inline_history !0
  br label %rand_bytes.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not14.i.i = icmp eq ptr %i.w, null
  br i1 %.not14.i.i, label %rand_bytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 @EVP_RAND_generate(ptr noundef nonnull %i.w, ptr noundef nonnull %spec.select, i64 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #13
  br label %rand_bytes.exit

rand_bytes.exit:                                  ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i.i70 = phi i32 [ %i.ab, %bb.i ], [ -1, %bb.h ], [ %i.ac, %bb.k ], [ 0, %bb.j ]
  %i.ad = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 216, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %.0.i.i70, i32 noundef 1) #13
  %.not50 = icmp eq i32 %i.ad, 0
  br i1 %.not50, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %rand_bytes.exit
  %i.ae = call ptr @RAND_get0_private(ptr noundef null) #13 ; 2 uses
  %i.af = call ptr @RAND_get_rand_method() #13    ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.af, null
  br i1 %.not.i.i71, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = call ptr @RAND_OpenSSL() #13
  %.not13.i.i72 = icmp eq ptr %i.af, %i.ag
  br i1 %.not13.i.i72, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %.not15.i.i73 = icmp eq ptr %i.ai, null
  br i1 %.not15.i.i73, label %rand_priv_bytes.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = call i32 %i.ai(ptr noundef nonnull %.043, i32 noundef range(i32 16, 257) 16) #13, !inline_history !1
  br label %rand_priv_bytes.exit

bb.p:                                             ; preds = %bb.m, %bb.l
  %.not14.i.i75 = icmp eq ptr %i.ae, null
  br i1 %.not14.i.i75, label %rand_priv_bytes.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = call i32 @EVP_RAND_generate(ptr noundef nonnull %i.ae, ptr noundef nonnull %.043, i64 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #13
  br label %rand_priv_bytes.exit

rand_priv_bytes.exit:                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i.i74 = phi i32 [ %i.aj, %bb.o ], [ -1, %bb.n ], [ %i.ak, %bb.q ], [ 0, %bb.p ]
  %i.al = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 219, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %.0.i.i74, i32 noundef 1) #13
  %.not51 = icmp eq i32 %i.al, 0
  br i1 %.not51, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %rand_priv_bytes.exit
  %i.am = call i64 @time(ptr noundef null) #13
  %i.an = call i32 @EVP_RAND_get_state(ptr noundef %0) #13
  %i.ao = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 228, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %i.an, i32 noundef 1) #13
  %.not52 = icmp eq i32 %i.ao, 0
  br i1 %.not52, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = call i32 @EVP_RAND_get_state(ptr noundef %1) #13
  %i.aq = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 229, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %i.ap, i32 noundef 1) #13
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = call i32 @EVP_RAND_get_state(ptr noundef %2) #13
  %i.as = call i32 @test_int_eq(ptr noundef nonnull @.str.4, i32 noundef 230, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %i.ar, i32 noundef 1) #13
  %.not54 = icmp eq i32 %i.as, 0
  br i1 %.not54, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %7, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.a) #13
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, i8 0, i64 40, i1 false)
  %i.au = call i32 @EVP_RAND_CTX_get_params(ptr noundef %0, ptr noundef nonnull %7) #13
  %.not.i.i76 = icmp eq i32 %i.au, 0
  %i.av = load i32, ptr %i.a, align 4
  %.0.i.i77 = select i1 %.not.i.i76, i32 0, i32 %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.aw = call i32 @test_int_ge(ptr noundef nonnull @.str.4, i32 noundef 235, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %.0.i.i77, i32 noundef %.0.i.i) #13
  %.not55 = icmp eq i32 %i.aw, 0
  br i1 %.not55, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = call fastcc i32 @reseed_counter(ptr noundef %1)
  %i.ay = call i32 @test_int_ge(ptr noundef nonnull @.str.4, i32 noundef 241, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %i.ax, i32 noundef %.0.i.i66) #13
  %.not56 = icmp eq i32 %i.ay, 0
  br i1 %.not56, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = call fastcc i32 @reseed_counter(ptr noundef %1)
  %i.ba = call fastcc i32 @reseed_counter(ptr noundef %0)
  %i.bb = call i32 @test_uint_ge(ptr noundef nonnull @.str.4, i32 noundef 243, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %i.az, i32 noundef %i.ba) #13
  %.not57 = icmp eq i32 %i.bb, 0
  br i1 %.not57, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = call fastcc i32 @reseed_counter(ptr noundef %2)
  %i.bd = call i32 @test_int_ge(ptr noundef nonnull @.str.4, i32 noundef 249, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %i.bc, i32 noundef %.0.i.i68) #13
  %.not58 = icmp eq i32 %i.bd, 0
  br i1 %.not58, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = call fastcc i32 @reseed_counter(ptr noundef %2)
  %i.bf = call fastcc i32 @reseed_counter(ptr noundef %0)
  %i.bg = call i32 @test_uint_ge(ptr noundef nonnull @.str.4, i32 noundef 251, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37, i32 noundef %i.be, i32 noundef %i.bf) #13
  %.not59 = icmp eq i32 %i.bg, 0
  br i1 %.not59, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = call fastcc i64 @reseed_time(ptr noundef %0)
  %i.bi = call i32 @test_time_t_le(ptr noundef nonnull @.str.4, i32 noundef 257, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i64 noundef %i.v, i64 noundef %i.bh) #13
  %.not60 = icmp eq i32 %i.bi, 0
  br i1 %.not60, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = call fastcc i64 @reseed_time(ptr noundef %0)
  %i.bk = call i32 @test_time_t_le(ptr noundef nonnull @.str.4, i32 noundef 258, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i64 noundef %i.bj, i64 noundef %i.am) #13
  %.not61 = icmp eq i32 %i.bk, 0
  br i1 %.not61, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = call fastcc i64 @reseed_time(ptr noundef %1)
  %i.bm = call fastcc i64 @reseed_time(ptr noundef %0)
  %i.bn = call i32 @test_time_t_ge(ptr noundef nonnull @.str.4, i32 noundef 262, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i64 noundef %i.bl, i64 noundef %i.bm) #13
  %.not62 = icmp eq i32 %i.bn, 0
  br i1 %.not62, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = call fastcc i64 @reseed_time(ptr noundef %2)
  %i.bp = call fastcc i64 @reseed_time(ptr noundef %0)
  %i.bq = call i32 @test_time_t_ge(ptr noundef nonnull @.str.4, i32 noundef 263, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44, i64 noundef %i.bo, i64 noundef %i.bp) #13
  %.not63 = icmp ne i32 %i.bq, 0
  %spec.select64 = zext i1 %.not63 to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.aa, %bb.x, %bb.y, %bb.v, %bb.w, %bb.u, %bb.r, %bb.s, %bb.t, %rand_bytes.exit, %rand_priv_bytes.exit, %bb.a, %bb.b, %bb.c
  %.041 = phi i32 [ 0, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %rand_bytes.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %rand_priv_bytes.exit ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.aa ], [ %spec.select64, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc void @inc_reseed_counter(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = call i32 @EVP_RAND_CTX_get_params(ptr noundef %0, ptr noundef nonnull %1) #13
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.e = add i32 %i.d, 1
  %i.f = select i1 %.not.i.i, i32 1, i32 %i.e
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 208
  store atomic i32 %i.f, ptr %i.h seq_cst, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

declare void @RAND_add(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @EVP_RAND_get0_provider(ptr noundef) local_unnamed_addr #1

declare ptr @EVP_RAND_CTX_get0_rand(ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_PROVIDER_get0_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @test_int_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reseed_counter(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = call i32 @EVP_RAND_CTX_get_params(ptr noundef %0, ptr noundef nonnull %1) #13
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr %i.a, align 4
  %.0.i = select i1 %.not.i, i32 0, i32 %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.0.i
}

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_int_ge(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_uint_ge(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_time_t_le(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @reseed_time(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @OSSL_PARAM_construct_time_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = call i32 @EVP_RAND_CTX_get_params(ptr noundef %0, ptr noundef nonnull %1) #13
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %i.a, align 8
  %.0 = select i1 %.not, i64 0, i64 %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.0
}

declare i32 @test_time_t_ge(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_uint(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @EVP_RAND_CTX_get_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_RAND_generate(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_RAND_get_state(ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_time_t(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_int_gt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RAND_priv_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_drbg_fork_result(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %loadbb, label %.thread

res_block:                                        ; preds = %loadbb13, %loadbb
  %phi.src1 = phi i64 [ %i.k, %loadbb ], [ %i.r, %loadbb13 ]
  %phi.src2 = phi i64 [ %i.l, %loadbb ], [ %i.s, %loadbb13 ]
  %i.g = icmp ult i64 %phi.src1, %phi.src2
  %i.h = select i1 %i.g, i32 -1, i32 1
  br label %endblock

loadbb:                                           ; preds = %bb.a
  %i.i = load i64, ptr %0, align 1
  %i.j = load i64, ptr %1, align 1
  %i.k = tail call i64 @llvm.bswap.i64(i64 %i.i)  ; 2 uses
  %i.l = tail call i64 @llvm.bswap.i64(i64 %i.j)  ; 2 uses
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %loadbb13, label %res_block

loadbb13:                                         ; preds = %loadbb
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.n, align 1
  %i.q = load i64, ptr %i.o, align 1
  %i.r = tail call i64 @llvm.bswap.i64(i64 %i.p)  ; 2 uses
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.q)  ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb13
  %phi.res = phi i32 [ 0, %loadbb13 ], [ %i.h, %res_block ] ; 2 uses
  %i.u = icmp eq i32 %phi.res, 0
  br i1 %i.u, label %bb.b, label %.thread

bb.b:                                             ; preds = %endblock
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23
  %i.z = sub nsw i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %endblock
  %.1 = phi i32 [ %i.z, %bb.b ], [ %phi.res, %endblock ], [ %i.e, %bb.a ]
  ret i32 %.1
}

declare void @test_note(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_rand_chunk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  %i.b = load i16, ptr %1, align 1
  %i.c = tail call i16 @llvm.bswap.i16(i16 %i.a)
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.c to i32
  %i.f = zext i16 %i.d to i32
  %i.g = sub i32 %i.e, %i.f
  ret i32 %i.g
}

declare ptr @OPENSSL_buf2hexstr(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #1

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_drbg(ptr noundef %0) unnamed_addr #0 {
end_hunk_1
begin_hunk_2_@new_drbg:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.b = call ptr @EVP_RAND_fetch(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef null) #13 ; 3 uses
  %i.c = call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 788, ptr noundef nonnull @.str.91, ptr noundef %i.b) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @EVP_RAND_CTX_new(ptr noundef %i.b, ptr noundef %0) #13 ; 5 uses
  %i.e = call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 789, ptr noundef nonnull @.str.93, ptr noundef %i.d) #13
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @EVP_RAND_CTX_set_params(ptr noundef %i.d, ptr noundef nonnull %1) #13
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 790, ptr noundef nonnull @.str.94, i32 noundef %i.h) #13
  %.not7 = icmp eq i32 %i.i, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @EVP_RAND_CTX_free(ptr noundef %.0) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.d, %bb.c ], [ null, %bb.d ]
  call void @EVP_RAND_free(ptr noundef %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret ptr %.1
}

declare i32 @EVP_RAND_instantiate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_RAND_reseed(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_mem_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @EVP_RAND_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare ptr @EVP_RAND_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EVP_RAND_CTX_new(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_RAND_CTX_set_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @EVP_RAND_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @run_multi_thread_test() unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %0 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %1 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.d = tail call i64 @time(ptr noundef null) #13
  %i.e = tail call ptr @RAND_get0_public(ptr noundef null) #13 ; 2 uses
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 683, ptr noundef nonnull @.str.9, ptr noundef %i.e) #13
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @RAND_get0_private(ptr noundef null) #13 ; 2 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 684, ptr noundef nonnull @.str.10, ptr noundef %i.g) #13
  %.not2 = icmp eq i32 %i.h, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.b) #13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.j = call i32 @EVP_RAND_CTX_set_params(ptr noundef %i.g, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 685, ptr noundef nonnull @.str.97, i32 noundef %i.l) #13
  %.not3 = icmp eq i32 %i.m, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %0, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.a) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.o = call i32 @EVP_RAND_CTX_set_params(ptr noundef %i.e, ptr noundef nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 686, ptr noundef nonnull @.str.98, i32 noundef %i.q) #13
  %.not4 = icmp eq i32 %i.r, 0
  br i1 %.not4, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  store i1 true, ptr @multi_thread_rand_bytes_succeeded, align 4
  br label %.loopexit

.preheader:                                       ; preds = %bb.d, %bb.q
  %i.s = call ptr @RAND_get0_public(ptr noundef null) #13 ; 2 uses
  %i.t = call ptr @RAND_get_rand_method() #13     ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.u = call ptr @RAND_OpenSSL() #13
  %.not13.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not13.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not15.i.i = icmp eq ptr %i.w, null
  br i1 %.not15.i.i, label %rand_bytes.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 %i.w(ptr noundef nonnull %i.c, i32 noundef range(i32 16, 257) 256) #13, !inline_history !0
  br label %rand_bytes.exit

bb.i:                                             ; preds = %bb.f, %.preheader
  %.not14.i.i = icmp eq ptr %i.s, null
  br i1 %.not14.i.i, label %rand_bytes.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call i32 @EVP_RAND_generate(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, i64 noundef 256, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #13
  br label %rand_bytes.exit

rand_bytes.exit:                                  ; preds = %bb.h, %bb.j
  %.0.i.i = phi i32 [ %i.x, %bb.h ], [ %i.y, %bb.j ]
  %i.z = icmp slt i32 %.0.i.i, 1
  br i1 %i.z, label %rand_bytes.exit.thread, label %bb.k

rand_bytes.exit.thread:                           ; preds = %bb.i, %bb.g, %rand_bytes.exit
  store i1 true, ptr @multi_thread_rand_bytes_succeeded, align 4
  br label %bb.k

bb.k:                                             ; preds = %rand_bytes.exit.thread, %rand_bytes.exit
  %i.aa = call ptr @RAND_get0_private(ptr noundef null) #13 ; 2 uses
  %i.ab = call ptr @RAND_get_rand_method() #13    ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i5, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = call ptr @RAND_OpenSSL() #13
  %.not13.i.i6 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not13.i.i6, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %.not15.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not15.i.i7, label %rand_priv_bytes.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = call i32 %i.ae(ptr noundef nonnull %i.c, i32 noundef range(i32 16, 257) 256) #13, !inline_history !1
  br label %rand_priv_bytes.exit

bb.o:                                             ; preds = %bb.l, %bb.k
  %.not14.i.i9 = icmp eq ptr %i.aa, null
  br i1 %.not14.i.i9, label %rand_priv_bytes.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = call i32 @EVP_RAND_generate(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.c, i64 noundef 256, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #13
  br label %rand_priv_bytes.exit

rand_priv_bytes.exit:                             ; preds = %bb.n, %bb.p
  %.0.i.i8 = phi i32 [ %i.af, %bb.n ], [ %i.ag, %bb.p ]
  %i.ah = icmp slt i32 %.0.i.i8, 1
  br i1 %i.ah, label %rand_priv_bytes.exit.thread, label %bb.q

rand_priv_bytes.exit.thread:                      ; preds = %bb.o, %bb.m, %rand_priv_bytes.exit
  store i1 true, ptr @multi_thread_rand_priv_bytes_succeeded, align 4
  br label %bb.q

bb.q:                                             ; preds = %rand_priv_bytes.exit, %rand_priv_bytes.exit.thread
  %i.ai = call i64 @time(ptr noundef null) #13
  %i.aj = sub nsw i64 %i.ai, %i.d
  %i.ak = icmp slt i64 %i.aj, 5
  br i1 %i.ak, label %.preheader, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %bb.q, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @thread_run(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  tail call fastcc void @run_multi_thread_test()
  tail call void @OPENSSL_thread_stop() #13
  ret ptr null
}

declare void @OPENSSL_thread_stop() local_unnamed_addr #1

declare void @OSSL_PARAM_construct_int(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11evp_rand_st", !11, i64 0}
!13 = !{!"p1 _ZTS15evp_rand_ctx_st", !11, i64 0}
!14 = !{!"", !7, i64 0}
!15 = !{!"evp_rand_ctx_st", !12, i64 0, !11, i64 8, !13, i64 16, !14, i64 24, !11, i64 32}
!16 = !{!15, !11, i64 8}
!17 = !{!"p1 _ZTS11prov_ctx_st", !11, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!"prov_drbg_st", !11, i64 0, !17, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !8, i64 112, !18, i64 116, !8, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !8, i64 184, !8, i64 188, !19, i64 192, !19, i64 200, !7, i64 208, !8, i64 212, !8, i64 216, !19, i64 224, !8, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"drbg_fork_result_st", !7, i64 0, !8, i64 16, !8, i64 20, !8, i64 24, !7, i64 28}
!23 = !{!22, !8, i64 16}
!24 = !{!8, !8, i64 0}
!25 = !{!22, !8, i64 24}
!26 = !{!19, !19, i64 0}
!27 = !{!"rand_meth_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!28 = !{!27, !11, i64 8}
!29 = !{!"p1 omnipotent char", !11, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{i64 0, i64 8, !30, i64 8, i64 4, !24, i64 16, i64 8, !31, i64 24, i64 8, !26, i64 32, i64 8, !26}
!33 = !{!20, !11, i64 48}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = !{!22, !8, i64 20}
!38 = !{!7, !7, i64 0}
!39 = !{!20, !7, i64 208}
!40 = distinct !{!40, !21}
end_hunk_2
