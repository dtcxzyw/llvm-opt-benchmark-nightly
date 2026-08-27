Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/threadstest?download=true
inline.NumInlined: 72
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@thread_general_worker:bb.a
  br i1 %.not35.1, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.preheader.1
  %i.ch = call i32 @EVP_EncryptUpdate(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.134, i32 noundef 11) #11
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 901, ptr noundef nonnull @.str.143, i32 noundef %i.cj) #11
  %.not36.1 = icmp eq i32 %i.ck, 0
  br i1 %.not36.1, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = call i32 @EVP_EncryptFinal(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #11
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 902, ptr noundef nonnull @.str.144, i32 noundef %i.cn) #11
  %.not37.1 = icmp eq i32 %i.co, 0
  br i1 %.not37.1, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %bb.p
  %i.cp = call i32 @EVP_EncryptInit_ex(ptr noundef %i.i, ptr noundef %i.k, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 898, ptr noundef nonnull @.str.142, i32 noundef %i.cr) #11
  %.not35.2 = icmp eq i32 %i.cs, 0
  br i1 %.not35.2, label %.critedge, label %bb.q

bb.q:                                             ; preds = %.preheader.2
  %i.ct = call i32 @EVP_EncryptUpdate(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.134, i32 noundef 11) #11
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 901, ptr noundef nonnull @.str.143, i32 noundef %i.cv) #11
  %.not36.2 = icmp eq i32 %i.cw, 0
  br i1 %.not36.2, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = call i32 @EVP_EncryptFinal(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #11
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 902, ptr noundef nonnull @.str.144, i32 noundef %i.cz) #11
  %.not37.2 = icmp eq i32 %i.da, 0
  br i1 %.not37.2, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %bb.r
  %i.db = call i32 @EVP_EncryptInit_ex(ptr noundef %i.i, ptr noundef %i.k, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 898, ptr noundef nonnull @.str.142, i32 noundef %i.dd) #11
  %.not35.3 = icmp eq i32 %i.de, 0
  br i1 %.not35.3, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.preheader.3
  %i.df = call i32 @EVP_EncryptUpdate(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.134, i32 noundef 11) #11
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 901, ptr noundef nonnull @.str.143, i32 noundef %i.dh) #11
  %.not36.3 = icmp eq i32 %i.di, 0
  br i1 %.not36.3, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = call i32 @EVP_EncryptFinal(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #11
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 902, ptr noundef nonnull @.str.144, i32 noundef %i.dl) #11
  %.not37.3 = icmp eq i32 %i.dm, 0
  br i1 %.not37.3, label %.critedge, label %.preheader.4

.preheader.4:                                     ; preds = %bb.t
  %i.dn = call i32 @EVP_EncryptInit_ex(ptr noundef %i.i, ptr noundef %i.k, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 898, ptr noundef nonnull @.str.142, i32 noundef %i.dp) #11
  %.not35.4 = icmp eq i32 %i.dq, 0
  br i1 %.not35.4, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.preheader.4
  %i.dr = call i32 @EVP_EncryptUpdate(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.134, i32 noundef 11) #11
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 901, ptr noundef nonnull @.str.143, i32 noundef %i.dt) #11
  %.not36.4 = icmp eq i32 %i.du, 0
  br i1 %.not36.4, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = call i32 @EVP_EncryptFinal(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #11
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 902, ptr noundef nonnull @.str.144, i32 noundef %i.dx) #11
  %.not37.4 = icmp eq i32 %i.dy, 0
  br i1 %.not37.4, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = load ptr, ptr @multi_libctx, align 8, !tbaa !19
  %.not33 = icmp eq i32 %i.m, 0
  %i.ea = select i1 %.not33, i64 512, i64 2048
  %i.eb = call ptr (ptr, ptr, ptr, ...) @EVP_PKEY_Q_keygen(ptr noundef %i.dz, ptr noundef null, ptr noundef nonnull @.str.145, i64 noundef %i.ea) #11 ; 2 uses
  %i.ec = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 912, ptr noundef nonnull @.str.146, ptr noundef %i.eb) #11
  %.not34 = icmp eq i32 %i.ec, 0
  call void @EVP_MD_CTX_free(ptr noundef %i.f) #11
  call void @EVP_MD_free(ptr noundef %i.h) #11
  call void @EVP_CIPHER_CTX_free(ptr noundef %i.i) #11
  call void @EVP_CIPHER_free(ptr noundef %i.k) #11
  call void @EVP_PKEY_free(ptr noundef %i.eb) #11
  br i1 %.not34, label %bb.z, label %multi_set_success.exit

bb.x:                                             ; preds = %.preheader.preheader
  %i.ed = call i32 @EVP_EncryptUpdate(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.134, i32 noundef 11) #11
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 901, ptr noundef nonnull @.str.143, i32 noundef %i.ef) #11
  %.not36 = icmp eq i32 %i.eg, 0
  br i1 %.not36, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = call i32 @EVP_EncryptFinal(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #11
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 902, ptr noundef nonnull @.str.144, i32 noundef %i.ej) #11
  %.not37 = icmp eq i32 %i.ek, 0
  br i1 %.not37, label %.critedge, label %.preheader.1

.critedge:                                        ; preds = %.preheader42.preheader, %bb.m, %bb.n, %.preheader42.1, %bb.e, %bb.f, %.preheader42.2, %bb.g, %bb.h, %.preheader42.3, %bb.i, %bb.j, %.preheader42.4, %bb.k, %bb.l, %.preheader.preheader, %bb.x, %bb.y, %.preheader.1, %bb.o, %bb.p, %.preheader.2, %bb.q, %bb.r, %.preheader.3, %bb.s, %bb.t, %.preheader.4, %bb.u, %bb.v, %bb.b, %bb.c, %bb.d, %bb.a
  call void @EVP_MD_CTX_free(ptr noundef %i.f) #11
  call void @EVP_MD_free(ptr noundef %i.h) #11
  call void @EVP_CIPHER_CTX_free(ptr noundef %i.i) #11
  call void @EVP_CIPHER_free(ptr noundef %i.k) #11
  call void @EVP_PKEY_free(ptr noundef null) #11
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.w
  %i.el = load ptr, ptr @global_lock, align 8, !tbaa !14
  %i.em = call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.el) #11
  %i.en = icmp eq i32 %i.em, 0
  store i1 false, ptr @multi_success, align 4
  br i1 %i.en, label %multi_set_success.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = load ptr, ptr @global_lock, align 8, !tbaa !14
  %i.ep = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.eo) #11 ; 0 uses
  br label %multi_set_success.exit

multi_set_success.exit:                           ; preds = %bb.aa, %bb.z, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #3

declare ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PROVIDER_available(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_EncryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_EncryptFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_PKEY_Q_keygen(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #3

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_multi_shared_pkey_common(ptr noundef %0) unnamed_addr #1 {
bb.a:
  store i1 true, ptr @multi_success, align 4
  store ptr null, ptr @multi_libctx, align 8, !tbaa !19
  store i64 0, ptr @multi_num_threads, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @multi_threads, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @multi_provider, i8 0, i64 40, i1 false)
  %.b = load i1, ptr @do_fips, align 4
  %i.a = select i1 %.b, ptr @fips_and_default_providers, ptr @default_provider
  %i.b = tail call fastcc i32 @thread_setup_libctx(i32 noundef 1, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %teardown_threads.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @privkey, align 8, !tbaa !11
  %i.d = load ptr, ptr @multi_libctx, align 8, !tbaa !19
  %i.e = tail call ptr @load_pkey_pem(ptr noundef %i.c, ptr noundef %i.d) #11 ; 2 uses
  store ptr %i.e, ptr @shared_evp_pkey, align 8, !tbaa !21
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 1022, ptr noundef nonnull @.str.148, ptr noundef %i.e) #11
  %.not2 = icmp eq i32 %i.f, 0
  br i1 %.not2, label %teardown_threads.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr @multi_num_threads, align 8, !tbaa !16
  %i.h = add i64 %i.g, 1
  %i.i = tail call i32 @test_size_t_le(ptr noundef nonnull @.str.18, i32 noundef 825, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i64 noundef %i.h, i64 noundef 10) #11
  %.not.i.a = icmp eq i32 %i.i, 0
  br i1 %.not.i.a, label %teardown_threads.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %i.j = load i64, ptr @multi_num_threads, align 8, !tbaa !16 ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr @multi_num_threads, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @multi_threads, i64 %i.j
  %i.m = tail call i32 @pthread_create(ptr noundef nonnull %i.l, ptr noundef null, ptr noundef nonnull @thread_run, ptr noundef nonnull @thread_shared_evp_pkey) #11
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 829, ptr noundef nonnull @.str.57, i32 noundef %i.o) #11
  %.not6.i = icmp eq i32 %i.p, 0
  br i1 %.not6.i, label %teardown_threads.exit, label %start_threads.exit

start_threads.exit:                               ; preds = %.preheader.i.preheader
  %1 = load i64, ptr @multi_num_threads, align 8, !tbaa !16
  %2 = add i64 %1, 1
  %3 = tail call i32 @test_size_t_le(ptr noundef nonnull @.str.18, i32 noundef 825, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i64 noundef %2, i64 noundef 10) #11
  %.not.i7 = icmp eq i32 %3, 0
  br i1 %.not.i7, label %teardown_threads.exit, label %.preheader.i8.preheader

.preheader.i8.preheader:                          ; preds = %start_threads.exit
  %i.q = load i64, ptr @multi_num_threads, align 8, !tbaa !16 ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr @multi_num_threads, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @multi_threads, i64 %i.q
  %i.t = tail call i32 @pthread_create(ptr noundef nonnull %i.s, ptr noundef null, ptr noundef nonnull @thread_run, ptr noundef %0) #11
  %i.u = icmp eq i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 829, ptr noundef nonnull @.str.57, i32 noundef %i.v) #11
  %.not6.i10 = icmp eq i32 %i.w, 0
  br i1 %.not6.i10, label %teardown_threads.exit, label %start_threads.exit13

start_threads.exit13:                             ; preds = %.preheader.i8.preheader
  tail call void @thread_shared_evp_pkey()
  %4 = load i64, ptr @multi_num_threads, align 8, !tbaa !16
  %.not8.i = icmp eq i64 %4, 0
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = add nuw i64 %.05.i14, 1                  ; 2 uses
  %i.y = load i64, ptr @multi_num_threads, align 8, !tbaa !16
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph.i, label %.loopexit, !llvm.loop !23

.lr.ph.i:                                         ; preds = %start_threads.exit13, %bb.d
  %.05.i14 = phi i64 [ %i.x, %bb.d ], [ 0, %start_threads.exit13 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @multi_threads, i64 %.05.i14
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = tail call i32 @pthread_join(i64 noundef %i.ab, ptr noundef null) #11
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 816, ptr noundef nonnull @.str.58, i32 noundef %i.ae) #11
  %.not.i15 = icmp eq i32 %i.af, 0
  br i1 %.not.i15, label %teardown_threads.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %start_threads.exit13
  %.b1 = load i1, ptr @multi_success, align 4
  %i.ag = zext i1 %.b1 to i32
  %i.ah = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 1030, ptr noundef nonnull @.str.50, i32 noundef %i.ag) #11
  %.not6 = icmp ne i32 %i.ah, 0
  %spec.select = zext i1 %.not6 to i32
  br label %teardown_threads.exit

teardown_threads.exit:                            ; preds = %.lr.ph.i, %.preheader.i.preheader, %.preheader.i8.preheader, %start_threads.exit, %bb.c, %.loopexit, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %.loopexit ], [ 0, %bb.b ], [ 0, %.preheader.i.preheader ], [ 0, %.preheader.i8.preheader ], [ 0, %bb.c ], [ 0, %start_threads.exit ], [ 0, %.lr.ph.i ]
  %i.ai = load ptr, ptr @shared_evp_pkey, align 8, !tbaa !21
  tail call void @EVP_PKEY_free(ptr noundef %i.ai) #11
  %i.aj = load ptr, ptr @multi_provider, align 16, !tbaa !25 ; 2 uses
  %.not4.i = icmp eq ptr %i.aj, null
  br i1 %.not4.i, label %thead_teardown_libctx.exit, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %teardown_threads.exit, %.lr.ph.i16
  %i.ak = phi ptr [ %i.an, %.lr.ph.i16 ], [ %i.aj, %teardown_threads.exit ]
  %.05.i17 = phi ptr [ %i.am, %.lr.ph.i16 ], [ @multi_provider, %teardown_threads.exit ]
  %i.al = tail call i32 @OSSL_PROVIDER_unload(ptr noundef nonnull %i.ak) #11 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i17, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %.not.i18 = icmp eq ptr %i.an, null
  br i1 %.not.i18, label %thead_teardown_libctx.exit, label %.lr.ph.i16, !llvm.loop !27

thead_teardown_libctx.exit:                       ; preds = %.lr.ph.i16, %teardown_threads.exit
  %i.ao = load ptr, ptr @multi_libctx, align 8, !tbaa !19
  tail call void @OSSL_LIB_CTX_free(ptr noundef %i.ao) #11
  store i1 true, ptr @multi_success, align 4
  store ptr null, ptr @multi_libctx, align 8, !tbaa !19
  store i64 0, ptr @multi_num_threads, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @multi_threads, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @multi_provider, i8 0, i64 40, i1 false)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @thread_shared_evp_pkey() #1 {
.peel.begin:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 256, ptr %i.d, align 8, !tbaa !16
  %i.e = load ptr, ptr @multi_libctx, align 8, !tbaa !19
  %i.f = load ptr, ptr @shared_evp_pkey, align 8, !tbaa !21
  %i.g = tail call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull @.str.149) #11 ; 7 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 954, ptr noundef nonnull @.str.151, ptr noundef %i.g) #11
  %.not19.peel = icmp eq i32 %i.h, 0
  br i1 %.not19.peel, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.i = tail call i32 @EVP_PKEY_encrypt_init(ptr noundef %i.g) #11
  %i.j = tail call i32 @test_int_ge(ptr noundef nonnull @.str.18, i32 noundef 957, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.118, i32 noundef %i.i, i32 noundef 0) #11
  %.not20.peel = icmp eq i32 %i.j, 0
  br i1 %.not20.peel, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @EVP_PKEY_encrypt(ptr noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.134, i64 noundef 11) #11
  %i.l = call i32 @test_int_ge(ptr noundef nonnull @.str.18, i32 noundef 960, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.118, i32 noundef %i.k, i32 noundef 0) #11
  %.not21.peel = icmp eq i32 %i.l, 0
  br i1 %.not21.peel, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @EVP_PKEY_CTX_free(ptr noundef %i.g) #11
  %i.m = load ptr, ptr @multi_libctx, align 8, !tbaa !19
  %i.n = load ptr, ptr @shared_evp_pkey, align 8, !tbaa !21
  %i.o = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.m, ptr noundef %i.n, ptr noundef null) #11 ; 9 uses
  %i.p = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 966, ptr noundef nonnull @.str.151, ptr noundef %i.o) #11
  %.not22.peel = icmp eq i32 %i.p, 0
  br i1 %.not22.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 256, ptr %i.c, align 8, !tbaa !16
  %i.q = call i32 @EVP_PKEY_decrypt_init(ptr noundef %i.o) #11
  %i.r = call i32 @test_int_ge(ptr noundef nonnull @.str.18, i32 noundef 970, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.118, i32 noundef %i.q, i32 noundef 0) #11
  %.not23.peel = icmp eq i32 %i.r, 0
  br i1 %.not23.peel, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.d, align 8, !tbaa !16
  %i.t = call i32 @EVP_PKEY_decrypt(ptr noundef %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %i.s) #11
  %i.u = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 972, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.118, i32 noundef %i.t, i32 noundef 0) #11
  %.not24.peel = icmp eq i32 %i.u, 0
  br i1 %.not24.peel, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.c, align 8, !tbaa !16
  %i.w = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 973, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.134, i64 noundef 11, ptr noundef nonnull %i.b, i64 noundef %i.v) #11
  %.not25.peel = icmp eq i32 %i.w, 0
  br i1 %.not25.peel, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.b.peel = load i1, ptr @do_fips, align 4
  br i1 %.b.peel, label %.peel.newph, label %.critedge

.peel.newph:                                      ; preds = %bb.g
  call void @EVP_PKEY_CTX_free(ptr noundef %i.o) #11
  %i.x = load ptr, ptr @multi_libctx, align 8, !tbaa !19
  %i.y = load ptr, ptr @shared_evp_pkey, align 8, !tbaa !21
  %i.z = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull @.str.150) #11 ; 7 uses
  %i.aa = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 954, ptr noundef nonnull @.str.151, ptr noundef %i.z) #11
  %.not19 = icmp eq i32 %i.aa, 0
  br i1 %.not19, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.peel.newph
  %i.ab = call i32 @EVP_PKEY_encrypt_init(ptr noundef %i.z) #11
  %i.ac = call i32 @test_int_ge(ptr noundef nonnull @.str.18, i32 noundef 957, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.118, i32 noundef %i.ab, i32 noundef 0) #11
  %.not20 = icmp eq i32 %i.ac, 0
  br i1 %.not20, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @EVP_PKEY_encrypt(ptr noundef %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.134, i64 noundef 11) #11
  %i.ae = call i32 @test_int_ge(ptr noundef nonnull @.str.18, i32 noundef 960, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.118, i32 noundef %i.ad, i32 noundef 0) #11
  %.not21 = icmp eq i32 %i.ae, 0
  br i1 %.not21, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @EVP_PKEY_CTX_free(ptr noundef %i.z) #11
  %i.af = load ptr, ptr @multi_libctx, align 8, !tbaa !19
  %i.ag = load ptr, ptr @shared_evp_pkey, align 8, !tbaa !21
  %i.ah = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef null) #11 ; 8 uses
  %i.ai = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 966, ptr noundef nonnull @.str.151, ptr noundef %i.ah) #11
  %.not22 = icmp eq i32 %i.ai, 0
  br i1 %.not22, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 256, ptr %i.c, align 8, !tbaa !16
  %i.aj = call i32 @EVP_PKEY_decrypt_init(ptr noundef %i.ah) #11
  %i.ak = call i32 @test_int_ge(ptr noundef nonnull @.str.18, i32 noundef 970, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.118, i32 noundef %i.aj, i32 noundef 0) #11
  %.not23 = icmp eq i32 %i.ak, 0
  br i1 %.not23, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i64, ptr %i.d, align 8, !tbaa !16
  %i.am = call i32 @EVP_PKEY_decrypt(ptr noundef %i.ah, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %i.al) #11
  %i.an = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 972, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.118, i32 noundef %i.am, i32 noundef 0) #11
  %.not24 = icmp eq i32 %i.an, 0
  br i1 %.not24, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ap = call i32 @test_mem_eq(ptr noundef nonnull @.str.18, i32 noundef 973, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.134, i64 noundef 11, ptr noundef nonnull %i.b, i64 noundef %i.ao) #11
  %.not25 = icmp eq i32 %i.ap, 0
  br i1 %.not25, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %.peel.newph, %bb.i, %bb.h, %bb.j, %bb.m, %bb.l, %bb.k, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.peel.begin
  %.1 = phi ptr [ %i.g, %.peel.begin ], [ %i.g, %bb.a ], [ %i.g, %bb.b ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.z, %.peel.newph ], [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %i.ah, %bb.l ], [ %i.ah, %bb.m ]
  call void @EVP_PKEY_CTX_free(ptr noundef %.1) #11
  %i.aq = load ptr, ptr @global_lock, align 8, !tbaa !14
  %i.ar = call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.aq) #11
  %i.as = icmp eq i32 %i.ar, 0
  store i1 false, ptr @multi_success, align 4
  br i1 %i.as, label %multi_set_success.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.at = load ptr, ptr @global_lock, align 8, !tbaa !14
  %i.au = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.at) #11 ; 0 uses
  br label %multi_set_success.exit

.critedge:                                        ; preds = %bb.m, %bb.g
  %.lcssa = phi ptr [ %i.o, %bb.g ], [ %i.ah, %bb.m ]
  call void @EVP_PKEY_CTX_free(ptr noundef %.lcssa) #11
  br label %multi_set_success.exit

multi_set_success.exit:                           ; preds = %bb.n, %.loopexit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare ptr @load_pkey_pem(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_PKEY_CTX_free(ptr noundef) local_unnamed_addr #3

declare ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_int_ge(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_encrypt_init(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_encrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_decrypt_init(ptr noundef) local_unnamed_addr #3

declare i32 @test_int_gt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_decrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @test_mem_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @thread_downgrade_shared_evp_pkey() #1 {
bb.a:
  %i.a = load ptr, ptr @shared_evp_pkey, align 8, !tbaa !21
  %i.b = tail call ptr @EVP_PKEY_get0_RSA(ptr noundef %i.a) #11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %multi_set_success.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @global_lock, align 8, !tbaa !14
  %i.e = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.d) #11
  %i.f = icmp eq i32 %i.e, 0
  store i1 false, ptr @multi_success, align 4
end_hunk_0
