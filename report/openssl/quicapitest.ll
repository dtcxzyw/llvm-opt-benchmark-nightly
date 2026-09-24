Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quicapitest?download=true
inline.NumInlined: 56
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@test_ssl_listen_ex:bb.a
  tail call void @SSL_free(ptr noundef %i.bp) #10
  tail call void @SSL_CTX_free(ptr noundef %i.c) #10
  tail call void @SSL_CTX_free(ptr noundef %.021) #10
  tail call void @SSL_CTX_free(ptr noundef %.020) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ssl_client_as_ossl_quic_method() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = tail call fastcc ptr @create_server_ctx() ; 3 uses
  %i.d = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2776, ptr noundef nonnull @.str.213, ptr noundef %i.c) #10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.f = tail call ptr @OSSL_QUIC_method() #10
  %i.g = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.e, ptr noundef null, ptr noundef %i.f) #10 ; 18 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2777, ptr noundef nonnull @.str.242, ptr noundef %i.g) #10
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call fastcc i32 @create_quic_ssl_objects(ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.b, ptr noundef %i.a)
  %.not23 = icmp eq i32 %i.i, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !17  ; 20 uses
  br i1 %.not23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @SSL_accept(ptr noundef %.pre) #10 ; 2 uses
  %i.k = tail call i32 @test_int_le(ptr noundef nonnull @.str.14, i32 noundef 2785, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.82, i32 noundef %i.j, i32 noundef 0) #10
  %.not24 = icmp eq i32 %i.k, 0
  br i1 %.not24, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @SSL_get_error(ptr noundef %.pre, i32 noundef %i.j) #10
  %i.m = tail call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 2786, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.244, i32 noundef %i.l, i32 noundef 1) #10
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %i.o = tail call i32 @SSL_connect(ptr noundef %i.n) #10 ; 2 uses
  %i.p = tail call i32 @test_int_le(ptr noundef nonnull @.str.14, i32 noundef 2792, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.82, i32 noundef %i.o, i32 noundef 0) #10
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.q = tail call i32 @SSL_get_error(ptr noundef %i.n, i32 noundef %i.o) #10
  %i.r = tail call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 2793, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, i32 noundef %i.q, i32 noundef 2) #10
  %.not33 = icmp eq i32 %i.r, 0
  br i1 %.not33, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @SSL_handle_events(ptr noundef %.pre) #10 ; 0 uses
  %i.t = tail call i32 @SSL_connect(ptr noundef %i.n) #10 ; 2 uses
  %i.u = tail call i32 @test_int_le(ptr noundef nonnull @.str.14, i32 noundef 2792, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.82, i32 noundef %i.t, i32 noundef 0) #10
  %.not32.1 = icmp eq i32 %i.u, 0
  br i1 %.not32.1, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @SSL_get_error(ptr noundef %i.n, i32 noundef %i.t) #10
  %i.w = tail call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 2793, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, i32 noundef %i.v, i32 noundef 2) #10
  %.not33.1 = icmp eq i32 %i.w, 0
  br i1 %.not33.1, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @SSL_handle_events(ptr noundef %.pre) #10 ; 0 uses
  %i.y = tail call ptr @SSL_accept_connection(ptr noundef %.pre, i64 noundef 0) #10 ; 10 uses
  %i.z = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2800, ptr noundef nonnull @.str.216, ptr noundef %i.y) #10
  %.not26 = icmp eq i32 %i.z, 0
  br i1 %.not26, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @SSL_is_init_finished(ptr noundef %i.y) #10
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = tail call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 2800, ptr noundef nonnull @.str.245, i32 noundef %i.ac) #10
  %.not27 = icmp eq i32 %i.ad, 0
  br i1 %.not27, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i32 @create_bare_ssl_connection(ptr noundef %i.y, ptr noundef %i.n, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2805, ptr noundef nonnull @.str.220, i32 noundef %i.ag) #10
  %.not28 = icmp eq i32 %i.ah, 0
  br i1 %.not28, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call ptr @SSL_new(ptr noundef %i.g) #10 ; 6 uses
  %i.aj = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2813, ptr noundef nonnull @.str.246, ptr noundef %i.ai) #10
  %.not29 = icmp eq i32 %i.aj, 0
  br i1 %.not29, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call i32 @SSL_listen_ex(ptr noundef %.pre, ptr noundef %i.ai) #10
  %i.al = tail call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 2815, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248, i32 noundef %i.ak, i32 noundef -1) #10
  %.not30 = icmp eq i32 %i.al, 0
  br i1 %.not30, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call i64 @ERR_get_error() #10      ; 2 uses
  %i.an = and i64 %i.am, 2147483648
  %.not.i = icmp eq i64 %i.an, 0
  %i.ao = trunc i64 %i.am to i32
  %.0.v.i = select i1 %.not.i, i32 8388607, i32 2147483647
  %.0.i = and i32 %.0.v.i, %i.ao
  %i.ap = icmp eq i32 %.0.i, 786689
  %i.aq = zext i1 %i.ap to i32
  %i.ar = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2817, ptr noundef nonnull @.str.222, i32 noundef %i.aq) #10
  %.not31 = icmp eq i32 %i.ar, 0
  br i1 %.not31, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_clear_error() #10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.f, %bb.g, %bb.h, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.j, %bb.d, %bb.e, %bb.c, %bb.a, %bb.b, %bb.o
  %i.as = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %.pre, %bb.o ], [ %.pre, %bb.n ], [ %.pre, %bb.m ], [ %.pre, %bb.l ], [ %.pre, %bb.k ], [ %.pre, %bb.j ], [ %.pre, %bb.i ], [ %.pre, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.c ], [ %.pre, %bb.h ], [ %.pre, %bb.g ], [ %.pre, %bb.f ], [ %.pre, %.preheader ]
  %.021 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ], [ %i.g, %bb.o ], [ %i.g, %bb.n ], [ %i.g, %bb.m ], [ %i.g, %bb.l ], [ %i.g, %bb.k ], [ %i.g, %bb.j ], [ %i.g, %bb.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %.preheader ]
  %.020 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.o ], [ %i.y, %bb.n ], [ %i.y, %bb.m ], [ %i.y, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %.preheader ]
  %.019 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.ai, %bb.o ], [ %i.ai, %bb.n ], [ %i.ai, %bb.m ], [ %i.ai, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %.preheader ]
  %.018 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.preheader ]
  tail call void @SSL_free(ptr noundef %.020) #10
  tail call void @SSL_free(ptr noundef %.019) #10
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @SSL_free(ptr noundef %i.at) #10
  tail call void @SSL_free(ptr noundef %i.as) #10
  tail call void @SSL_CTX_free(ptr noundef %i.c) #10
  tail call void @SSL_CTX_free(ptr noundef %.021) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_back_pressure() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.g = tail call ptr @OSSL_QUIC_client_method() #10
  %i.h = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.f, ptr noundef null, ptr noundef %i.g) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1060, ptr noundef nonnull @.str.74, ptr noundef %i.h) #10
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.k = load ptr, ptr @cert, align 8, !tbaa !15
  %i.l = load ptr, ptr @privkey, align 8, !tbaa !15
  %i.m = call i32 @qtest_create_quic_objects(ptr noundef %i.j, ptr noundef %i.h, ptr noundef null, ptr noundef %i.k, ptr noundef %i.l, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #10
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1063, ptr noundef nonnull @.str.133, i32 noundef %i.o) #10
  %.not12 = icmp eq i32 %i.p, 0
  br i1 %.not12, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = call i32 @qtest_create_quic_connection(ptr noundef %i.q, ptr noundef %i.r) #10
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1064, ptr noundef nonnull @.str.79, i32 noundef %i.u) #10
  %.not13 = icmp eq i32 %i.v, 0
  br i1 %.not13, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call noalias ptr @CRYPTO_malloc(i64 noundef 1024, ptr noundef nonnull @.str.14, i32 noundef 1067) #10 ; 9 uses
  %i.x = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1068, ptr noundef nonnull @.str.89, ptr noundef %i.w) #10
  %.not14 = icmp eq i32 %i.x, 0
  br i1 %.not14, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.z = call i32 @RAND_bytes_ex(ptr noundef %i.y, ptr noundef %i.w, i64 noundef 1024, i32 noundef 0) #10
  %i.aa = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1070, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.94, i32 noundef %i.z, i32 noundef 1) #10
  %.not15 = icmp eq i32 %i.aa, 0
  br i1 %.not15, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.e, %0
  %.020 = phi i32 [ %1, %0 ], [ 0, %bb.e ]
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ac = call i32 @SSL_write_ex(ptr noundef %i.ab, ptr noundef %i.w, i64 noundef 1024, ptr noundef nonnull %i.e) #10
  %.not16 = icmp eq i32 %i.ac, 0
  br i1 %.not16, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ae = call i32 @SSL_get_error(ptr noundef %i.ad, i32 noundef 0) #10
  %i.af = icmp eq i32 %i.ae, 3
  br i1 %i.af, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1083, ptr noundef nonnull @.str.250) #10
  br label %.thread

bb.h:                                             ; preds = %.preheader
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ah = call i32 @ossl_quic_tserver_tick(ptr noundef %i.ag) #10 ; 0 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.aj = call i32 @ossl_quic_tserver_read(ptr noundef %i.ai, i64 noundef 0, ptr noundef nonnull %i.c, i64 noundef 64, ptr noundef nonnull %i.d) #10
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1090, ptr noundef nonnull @.str.251, i32 noundef %i.al) #10
  %.not17 = icmp eq i32 %i.am, 0
  br i1 %.not17, label %.thread, label %0

0:                                                ; preds = %bb.h
  %1 = add nuw nsw i32 %.020, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %1, 10000
  br i1 %exitcond.not, label %bb.i, label %.preheader, !llvm.loop !45

bb.i:                                             ; preds = %0
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1095, ptr noundef nonnull @.str.252) #10
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.i, %bb.g
  %.011 = phi i32 [ 1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.h ]
  %.010 = phi ptr [ %i.w, %bb.f ], [ %i.w, %bb.i ], [ null, %bb.a ], [ %i.w, %bb.g ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.w, %bb.h ]
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.an) #10
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ossl_quic_tserver_free(ptr noundef %i.ao) #10
  call void @SSL_CTX_free(ptr noundef %i.h) #10
  call void @CRYPTO_free(ptr noundef %.010, ptr noundef nonnull @.str.14, i32 noundef 1104) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_multiple_dgrams() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.e = tail call ptr @OSSL_QUIC_client_method() #10
  %i.f = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.d, ptr noundef null, ptr noundef %i.e) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.g = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 1400, ptr noundef nonnull @.str.14, i32 noundef 1134) #10 ; 3 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1136, ptr noundef nonnull @.str.74, ptr noundef %i.f) #10
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1137, ptr noundef nonnull @.str.88, ptr noundef %i.g) #10
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.k = load ptr, ptr @cert, align 8, !tbaa !15
  %i.l = load ptr, ptr @privkey, align 8, !tbaa !15
  %i.m = call i32 @qtest_create_quic_objects(ptr noundef %i.j, ptr noundef %i.f, ptr noundef null, ptr noundef %i.k, ptr noundef %i.l, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #10
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1140, ptr noundef nonnull @.str.133, i32 noundef %i.o) #10
  %.not7 = icmp eq i32 %i.p, 0
  br i1 %.not7, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = call i32 @qtest_create_quic_connection(ptr noundef %i.q, ptr noundef %i.r) #10
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1141, ptr noundef nonnull @.str.79, i32 noundef %i.u) #10
  %.not8 = icmp eq i32 %i.v, 0
  br i1 %.not8, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr @dgram_ctr, align 4, !tbaa !22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @SSL_set_msg_callback(ptr noundef %i.w, ptr noundef nonnull @dgram_cb) #10
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.y = call i32 @SSL_write_ex(ptr noundef %i.x, ptr noundef %i.g, i64 noundef 1400, ptr noundef nonnull %i.c) #10
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1146, ptr noundef nonnull @.str.253, i32 noundef %i.aa) #10
  %.not9 = icmp eq i32 %i.ab, 0
  br i1 %.not9, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ad = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1147, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.255, i64 noundef %i.ac, i64 noundef 1400) #10
  %.not10 = icmp eq i32 %i.ad, 0
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr @dgram_ctr, align 4, !tbaa !22
  %i.af = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1149, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.257, i32 noundef %i.ae, i32 noundef 2) #10
  %.not11 = icmp ne i32 %i.af, 0
  %spec.select = zext i1 %.not11 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @CRYPTO_free(ptr noundef %i.g, ptr noundef nonnull @.str.14, i32 noundef 1154) #10
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.ag) #10
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ossl_quic_tserver_free(ptr noundef %i.ah) #10
  call void @SSL_CTX_free(ptr noundef %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @test_non_io_retry(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !tbaa !22
  %i.d = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @qtest_supports_blocking() #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.14, i32 noundef 1194, ptr noundef nonnull @.str.73) #10
  br label %bb.j

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.h = tail call ptr @OSSL_QUIC_client_method() #10
  %i.i = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.g, ptr noundef null, ptr noundef %i.h) #10 ; 4 uses
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1197, ptr noundef nonnull @.str.74, ptr noundef %i.i) #10
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @SSL_CTX_set_cert_verify_callback(ptr noundef %i.i, ptr noundef nonnull @non_io_retry_cert_verify_cb, ptr noundef nonnull %i.c) #10
  %i.k = zext i1 %i.d to i32
  %i.l = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.m = load ptr, ptr @cert, align 8, !tbaa !15
  %i.n = load ptr, ptr @privkey, align 8, !tbaa !15
  %i.o = call i32 @qtest_create_quic_objects(ptr noundef %i.l, ptr noundef %i.i, ptr noundef null, ptr noundef %i.m, ptr noundef %i.n, i32 noundef %i.k, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #10
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1205, ptr noundef nonnull @.str.258, i32 noundef %i.q) #10
  %.not10 = icmp eq i32 %i.r, 0
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  br i1 %.not10, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.t = call i32 @qtest_create_quic_connection_ex(ptr noundef %i.s, ptr noundef %.pre14, i32 noundef 12) #10
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1207, ptr noundef nonnull @.str.259, i32 noundef %i.v) #10
  %.not11 = icmp eq i32 %i.w, 0
  %.pre15 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  br i1 %.not11, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call i32 @SSL_want(ptr noundef %.pre15) #10
  %i.y = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1208, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.261, i32 noundef %i.x, i32 noundef 8) #10
  %.not12 = icmp eq i32 %i.y, 0
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.c, align 4, !tbaa !22
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.aa = call i32 @qtest_create_quic_connection(ptr noundef %i.z, ptr noundef %.pre16) #10
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1212, ptr noundef nonnull @.str.79, i32 noundef %i.ac) #10
  %.not13 = icmp ne i32 %i.ad, 0
  %spec.select = zext i1 %.not13 to i32
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.f, %bb.g, %bb.d
  %i.ae = phi ptr [ null, %bb.d ], [ %.pre, %bb.h ], [ %.pre16, %bb.g ], [ %.pre15, %bb.f ], [ %.pre14, %bb.e ]
  %.0 = phi i32 [ 0, %bb.d ], [ %spec.select, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  call void @SSL_free(ptr noundef %i.ae) #10
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ossl_quic_tserver_free(ptr noundef %i.af) #10
  call void @SSL_CTX_free(ptr noundef %i.i) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.08 = phi i32 [ %.0, %bb.i ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_quic_psk() #1 {
bb.a:
end_hunk_0
