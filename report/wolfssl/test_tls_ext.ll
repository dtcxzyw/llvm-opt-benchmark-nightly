Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_tls_ext?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.test_memio_ctx = type { [65536 x i8], i32, ptr, [65536 x i8], i32, ptr, i32, i32, [32 x i32], i32, i32, [32 x i32], i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"\0AERROR - %s line %d failed with:\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/wolfssl/wolfssl/tests/api/test_tls_ext.c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\0A    expected: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%s == %s\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"test_memio_setup(&test_ctx, &ctx_c, &ctx_s, &ssl_c, &ssl_s, wolfTLSv1_2_client_method, wolfTLSv1_2_server_method)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0A    result:   \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d != %d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"test_memio_do_handshake(ssl_c, ssl_s, 10, ((void*)0))\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%s is not null\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"session = wolfSSL_get1_session(ssl_c)\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"session = wolfSSL_get1_session(ssl_c) => NULL\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"wolfSSL_set_session(ssl_c, session)\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"WOLFSSL_SUCCESS\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"wolfSSL_DisableExtendedMasterSecret(ssl_c)\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%s != %s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%d == %d\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"wolfSSL_get_error(ssl_s, 0)\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"(EXT_MASTER_SECRET_NEEDED_E)\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"test_tls_ems_resumption_server_downgrade_ex(0)\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__const.test_tls12_chacha20_poly1305_bad_tag.msg = private unnamed_addr constant [10 x i8] c"tamper me\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"ECDHE-RSA-CHACHA20-POLY1305\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"wolfSSL_write(ssl_c, msg, (int)strlen((msg)))\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"(int)strlen((msg))\00", align 1
@test_chacha_bad_tag_trigger = internal unnamed_addr global i1 false, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"%s <= %s\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%d > %d\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"wolfSSL_get_error(ssl_s, ret)\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"(VERIFY_MAC_ERROR)\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384\00", align 1
@.str.31 = private unnamed_addr constant [114 x i8] c"test_memio_setup(&test_ctx, &ctx_c, &ctx_s, &ssl_c, &ssl_s, wolfTLSv1_3_client_method, wolfTLSv1_3_server_method)\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"wolfSSL_NoKeyShares(ssl_c)\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"wolfSSL_connect(ssl_c)\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"(WOLFSSL_FATAL_ERROR)\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"wolfSSL_get_error(ssl_c, 0)\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"WOLFSSL_ERROR_WANT_READ\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"wolfSSL_accept(ssl_s)\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"TLS13-AES256-GCM-SHA384\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"wolfSSL_set_cipher_list(ssl_c, \22TLS13-AES256-GCM-SHA384\22)\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"(INVALID_PARAMETER)\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"ctx => NULL\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"ssl => NULL\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"wolfSSL_CTX_DisableExtendedMasterSecret(((void*)0))\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"wolfSSL_DisableExtendedMasterSecret(((void*)0))\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"wolfSSL_CTX_DisableExtendedMasterSecret(ctx)\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"wolfSSL_DisableExtendedMasterSecret(ssl)\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"ctx = wolfSSL_CTX_new(wolfSSLv23_client_method())\00", align 1
@.str.50 = private unnamed_addr constant [58 x i8] c"ctx = wolfSSL_CTX_new(wolfSSLv23_client_method()) => NULL\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"ssl = wolfSSL_new(ctx)\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"ssl = wolfSSL_new(ctx) => NULL\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.54 = private unnamed_addr constant [51 x i8] c"wolfSSL_UseSNI(ssl, WOLFSSL_SNI_HOST_NAME, \22a\22, 1)\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"sni_ext\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"sni_ext => NULL\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"head => NULL\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"sni\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"sni => NULL\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"sni->data.host_name\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"sni->data.host_name => NULL\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"TLSX_SNI_GetSize((SNI*)sni_ext->data)\00", align 1
@.str.64 = private unnamed_addr constant [51 x i8] c"ctx = wolfSSL_CTX_new(wolfTLSv1_2_client_method())\00", align 1
@.str.65 = private unnamed_addr constant [59 x i8] c"ctx = wolfSSL_CTX_new(wolfTLSv1_2_client_method()) => NULL\00", align 1
@.str.66 = private unnamed_addr constant [76 x i8] c"TLSX_Parse(ssl, emptyList, (word16)sizeof(emptyList), client_hello, suites)\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"(BUFFER_ERROR)\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"%s is null\00", align 1
@.str.69 = private unnamed_addr constant [50 x i8] c"TLSX_Find(ssl->extensions, TLSX_SUPPORTED_GROUPS)\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"TLSX_Find(ssl->extensions, TLSX_SUPPORTED_GROUPS) => %p\00", align 1
@.str.71 = private unnamed_addr constant [88 x i8] c"TLSX_Parse(ssl, unsupportedOnly, (word16)sizeof(unsupportedOnly), client_hello, suites)\00", align 1
@.str.72 = private unnamed_addr constant [58 x i8] c"TLSX_Find(ssl->extensions, TLSX_SUPPORTED_GROUPS) => NULL\00", align 1
@__const.test_TLSX_SupportedCurve_empty_or_unsupported.emptyListEE = private unnamed_addr constant [6 x i8] c"\00\0A\00\02\00\00", align 1
@.str.73 = private unnamed_addr constant [53 x i8] c"ctx13 = wolfSSL_CTX_new(wolfTLSv1_3_client_method())\00", align 1
@.str.74 = private unnamed_addr constant [61 x i8] c"ctx13 = wolfSSL_CTX_new(wolfTLSv1_3_client_method()) => NULL\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"ssl13 = wolfSSL_new(ctx13)\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"ssl13 = wolfSSL_new(ctx13) => NULL\00", align 1
@.str.77 = private unnamed_addr constant [94 x i8] c"TLSX_Parse(ssl13, emptyListEE, (word16)sizeof(emptyListEE), encrypted_extensions, ((void*)0))\00", align 1
@__const.test_TLSX_PointFormat_uncompressed_required.withUncomp = private unnamed_addr constant [6 x i8] c"\00\0B\00\02\01\00", align 1
@__const.test_TLSX_PointFormat_uncompressed_required.noUncomp = private unnamed_addr constant [6 x i8] c"\00\0B\00\02\01\01", align 1
@__const.test_TLSX_PointFormat_uncompressed_required.noUncomp2 = private unnamed_addr constant [7 x i8] c"\00\0B\00\03\02\01\02", align 1
@.str.78 = private unnamed_addr constant [78 x i8] c"TLSX_Parse(ssl, withUncomp, (word16)sizeof(withUncomp), client_hello, suites)\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"ssl->options.peerNoUncompPF\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"TLSX_Find(ssl->extensions, TLSX_EC_POINT_FORMATS)\00", align 1
@.str.81 = private unnamed_addr constant [58 x i8] c"TLSX_Find(ssl->extensions, TLSX_EC_POINT_FORMATS) => NULL\00", align 1
@.str.82 = private unnamed_addr constant [74 x i8] c"TLSX_Parse(ssl, noUncomp, (word16)sizeof(noUncomp), client_hello, suites)\00", align 1
@.str.83 = private unnamed_addr constant [76 x i8] c"TLSX_Parse(ssl, noUncomp2, (word16)sizeof(noUncomp2), client_hello, suites)\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"%s is true\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"session->haveEMS\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"session->haveEMS => FALSE\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"wolfSSL_get_error(ssl_c, -1)\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"wolfSSL_get_error(ssl_s, -1)\00", align 1
@.str.90 = private unnamed_addr constant [35 x i8] c"StripEmsFromServerHello(&test_ctx)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls_ems_downgrade() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls_ems_resumption_downgrade() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.test_memio_ctx, align 8     ; 7 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.e = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #8 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 124) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.h) ; 0 uses
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.l = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.e, i32 noundef 0) ; 0 uses
  br label %.critedge270.sink.split

.critedge:                                        ; preds = %bb.a
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = call i32 @test_memio_do_handshake(ptr noundef %i.n, ptr noundef %i.o, i32 noundef 10, ptr noundef null) #8 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge272, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 125) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.t = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.w = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.v) ; 0 uses
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.p, i32 noundef 0) ; 0 uses
  br label %.critedge270.sink.split

.critedge272:                                     ; preds = %.critedge
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.z = call ptr @wolfSSL_get1_session(ptr noundef %i.y) #8 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.d, label %.critedge270

bb.d:                                             ; preds = %.critedge272
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 127) ; 0 uses
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ac = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ab) ; 0 uses
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.11) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.af = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12) ; 0 uses
  br label %.critedge270.sink.split

.critedge270.sink.split:                          ; preds = %bb.d, %bb.b, %bb.c
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ai = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ah) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ak = call i32 @fflush(ptr noundef %i.aj)     ; 0 uses
  br label %.critedge270

.critedge270:                                     ; preds = %.critedge270.sink.split, %.critedge272
  %.0258 = phi ptr [ %i.z, %.critedge272 ], [ null, %.critedge270.sink.split ] ; 2 uses
  %1 = phi i1 [ true, %.critedge272 ], [ false, %.critedge270.sink.split ]
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.al) #8
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.am) #8
  store ptr null, ptr %i.d, align 8, !tbaa !12
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 0) #8
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #8
  br i1 %1, label %bb.e, label %.critedge281

bb.e:                                             ; preds = %.critedge270
  %i.an = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #8 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.critedge276, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 137) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ar = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.aq) ; 0 uses
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.au = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.at) ; 0 uses
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.an, i32 noundef 0) ; 0 uses
  br label %.critedge281.sink.split

.critedge276:                                     ; preds = %bb.e
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ax = call i32 @wolfSSL_set_session(ptr noundef %i.aw, ptr noundef %.0258) #8 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.critedge278, label %.critedge274

.critedge274:                                     ; preds = %.critedge276
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 138) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bb = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ba) ; 0 uses
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.be = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ax, i32 noundef 1) ; 0 uses
  br label %.critedge281.sink.split

.critedge278:                                     ; preds = %.critedge276
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.bh = call i32 @wolfSSL_DisableExtendedMasterSecret(ptr noundef %i.bg) #8 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.critedge280, label %.critedge277

.critedge277:                                     ; preds = %.critedge278
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 140) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bl = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bk) ; 0 uses
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bo = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bn) ; 0 uses
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bh, i32 noundef 1) ; 0 uses
  br label %.critedge281.sink.split

.critedge280:                                     ; preds = %.critedge278
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bs = call i32 @test_memio_do_handshake(ptr noundef %i.bq, ptr noundef %i.br, i32 noundef 10, ptr noundef null) #8
  %.not268.not = icmp eq i32 %i.bs, 0
  br i1 %.not268.not, label %.critedge279, label %.critedge282

.critedge279:                                     ; preds = %.critedge280
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 142) ; 0 uses
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bv = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bu) ; 0 uses
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.by = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bx) ; 0 uses
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.critedge281.sink.split

.critedge282:                                     ; preds = %.critedge280
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cb = call i32 @wolfSSL_get_error(ptr noundef %i.ca, i32 noundef 0) #8 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -414
  br i1 %i.cc, label %.critedge281, label %bb.g

bb.g:                                             ; preds = %.critedge282
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 144) ; 0 uses
  %i.ce = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.cf = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ce) ; 0 uses
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ci = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ch) ; 0 uses
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cb, i32 noundef -414) ; 0 uses
  br label %.critedge281.sink.split

.critedge281.sink.split:                          ; preds = %bb.g, %bb.f, %.critedge274, %.critedge277, %.critedge279
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.cl = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ck) ; 0 uses
  %i.cm = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.cn = call i32 @fflush(ptr noundef %i.cm)     ; 0 uses
  br label %.critedge281

.critedge281:                                     ; preds = %.critedge281.sink.split, %.critedge270, %.critedge282
  %.14 = phi i32 [ 1, %.critedge282 ], [ 0, %.critedge270 ], [ 0, %.critedge281.sink.split ]
  call void @wolfSSL_SESSION_free(ptr noundef %.0258) #8
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.co) #8
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.cp) #8
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !9
  call void @wolfSSL_CTX_free(ptr noundef %i.cq) #8
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !9
  call void @wolfSSL_CTX_free(ptr noundef %i.cr) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  ret i32 %.14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @test_memio_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @wolfTLSv1_2_client_method() #4

declare ptr @wolfTLSv1_2_server_method() #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @test_memio_do_handshake(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @wolfSSL_get1_session(ptr noundef) local_unnamed_addr #4

declare void @wolfSSL_free(ptr noundef) local_unnamed_addr #4

declare void @test_memio_clear_buffer(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wolfSSL_set_session(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wolfSSL_DisableExtendedMasterSecret(ptr noundef) local_unnamed_addr #4

declare i32 @wolfSSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @wolfSSL_SESSION_free(ptr noundef) local_unnamed_addr #4

declare void @wolfSSL_CTX_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls_ems_resumption_server_downgrade() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.test_memio_ctx, align 8     ; 10 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 17 uses
  %i.d = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.e = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #8 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 250) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.h) ; 0 uses
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.l = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.e, i32 noundef 0) ; 0 uses
  br label %.critedge434.i

.critedge.i:                                      ; preds = %bb.a
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = call i32 @test_memio_do_handshake(ptr noundef %i.n, ptr noundef %i.o, i32 noundef 10, ptr noundef null) #8 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge432.i, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 255) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.t = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.w = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.v) ; 0 uses
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.p, i32 noundef 0) ; 0 uses
  br label %.critedge434.i

.critedge432.i:                                   ; preds = %.critedge.i
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.z = call ptr @wolfSSL_get1_session(ptr noundef %i.y) #8 ; 14 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.d, label %.critedge430.i

bb.d:                                             ; preds = %.critedge432.i
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 257) ; 0 uses
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ac = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ab) ; 0 uses
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.11) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.af = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12) ; 0 uses
  br label %.critedge434.i

.critedge430.i:                                   ; preds = %.critedge432.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 150
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !16
  %.not428.i = icmp eq i16 %i.ai, 0
  br i1 %.not428.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge430.i
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 258) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.al = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ak) ; 0 uses
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull @.str.85) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ao = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.an) ; 0 uses
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86) ; 0 uses
  br label %.critedge434.i

bb.f:                                             ; preds = %.critedge430.i
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.aq) #8
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.ar) #8
  store ptr null, ptr %i.d, align 8, !tbaa !12
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 0) #8
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #8
  %i.as = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #8 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.critedge438.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 272) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.aw = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.av) ; 0 uses
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.az = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ay) ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.as, i32 noundef 0) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bc = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bb) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.be = call i32 @fflush(ptr noundef %i.bd)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge434.i:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0414457.i = phi ptr [ %i.z, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bg = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bf) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bi = call i32 @fflush(ptr noundef %i.bh)     ; 0 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.bj) #8
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !12
  call void @wolfSSL_free(ptr noundef %i.bk) #8
  store ptr null, ptr %i.d, align 8, !tbaa !12
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 0) #8
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #8
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge438.i:                                   ; preds = %bb.f
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.bm = call i32 @wolfSSL_set_session(ptr noundef %i.bl, ptr noundef nonnull %i.z) #8 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %.critedge442.i, label %bb.h

bb.h:                                             ; preds = %.critedge438.i
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 273) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bq = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bp) ; 0 uses
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bt = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bs) ; 0 uses
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bm, i32 noundef 1) ; 0 uses
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.bw = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bv) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.by = call i32 @fflush(ptr noundef %i.bx)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge442.i:                                   ; preds = %.critedge438.i
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ca = call i32 @wolfSSL_connect(ptr noundef %i.bz) #8 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %.critedge444.i, label %.critedge440.i

.critedge440.i:                                   ; preds = %.critedge442.i
end_hunk_0
begin_hunk_1_@test_TLSX_PointFormat_uncompressed_required:bb.a
  %i.dm = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.dl) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.thread459

.thread459:                                       ; preds = %bb.q, %bb.s, %bb.m, %.critedge
  %.1332424435449.ph = phi ptr [ %i.bx, %bb.s ], [ %i.bx, %bb.q ], [ null, %bb.m ], [ null, %.critedge ]
  call void @wolfSSL_free(ptr noundef %.1332424435449.ph) #8
  br label %.thread489

bb.t:                                             ; preds = %bb.r
  call void @wolfSSL_free(ptr noundef nonnull %i.bx) #8
  %i.dp = call ptr @wolfSSL_new(ptr noundef nonnull %i.e) #8 ; 8 uses
  %.not361 = icmp eq ptr %i.dp, null
  br i1 %.not361, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1530) ; 0 uses
  %i.dr = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ds = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.dr) ; 0 uses
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.51) ; 0 uses
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.dv = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.du) ; 0 uses
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) ; 0 uses
  %i.dx = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.dy = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.dx) ; 0 uses
  %i.dz = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ea = call i32 @fflush(ptr noundef %i.dz)     ; 0 uses
  br label %.thread489

bb.v:                                             ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !64 ; 2 uses
  %.not363 = icmp eq ptr %i.ec, null
  br i1 %.not363, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ed = load ptr, ptr %i.dp, align 16, !tbaa !65
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 152
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !66
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.2336.ph = phi ptr [ %i.ec, %bb.v ], [ %i.ef, %bb.w ]
  %i.eg = call i32 @TLSX_Parse(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.c, i16 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef %.2336.ph) #8 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1534) ; 0 uses
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ek = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ej) ; 0 uses
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.5) ; 0 uses
  %i.em = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.en = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.em) ; 0 uses
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.eg, i32 noundef 0) ; 0 uses
  %i.ep = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.eq = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ep) ; 0 uses
  %i.er = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.es = call i32 @fflush(ptr noundef %i.er)     ; 0 uses
  br label %.thread489

bb.z:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %i.dp, i64 1040
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = and i64 %i.eu, 35184372088832
  %.not364 = icmp eq i64 %i.ev, 0
  br i1 %.not364, label %bb.aa, label %.thread489

bb.aa:                                            ; preds = %bb.z
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1536) ; 0 uses
  %i.ex = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.ey = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ex) ; 0 uses
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.21) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.fb = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.fa) ; 0 uses
  %i.fc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.fd = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.fe = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.fd) ; 0 uses
  %i.ff = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.fg = call i32 @fflush(ptr noundef %i.ff)     ; 0 uses
  br label %.thread489

.thread489:                                       ; preds = %.thread459, %bb.u, %bb.y, %bb.z, %bb.aa
  %.2333473484495 = phi ptr [ %i.dp, %bb.z ], [ %i.dp, %bb.y ], [ %i.dp, %bb.aa ], [ null, %bb.u ], [ null, %.thread459 ]
  %.16 = phi i32 [ 1, %bb.z ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.u ], [ 0, %.thread459 ]
  call void @wolfSSL_free(ptr noundef %.2333473484495) #8
  call void @wolfSSL_CTX_free(ptr noundef %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.16
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 1) i32 @StripEmsFromServerHello(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.c = icmp slt i32 %i.b, 5
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !25
  %.not = icmp eq i8 %i.d, 22
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !25
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 3 uses
  %i.m = add nuw nsw i32 %i.l, 5                  ; 3 uses
  %i.n = icmp samesign ugt i32 %i.m, %i.b
  %i.o = icmp samesign ult i32 %i.l, 4
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25
  %.not92 = icmp eq i8 %i.q, 2
  br i1 %.not92, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25    ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %i.w, 49                 ; 3 uses
  %i.y = icmp samesign ugt i32 %i.x, %i.m
  br i1 %i.y, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.r, align 2, !tbaa !25
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = load i8, ptr %i.s, align 1, !tbaa !25
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.ab
  %i.ag = load i8, ptr %i.t, align 8, !tbaa !25
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = zext i8 %i.v to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 47 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !25
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar            ; 2 uses
  %i.at = add nuw nsw i32 %i.as, %i.x             ; 3 uses
  %i.au = icmp samesign ugt i32 %i.at, %i.m
  br i1 %i.au, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.h
  %.084 = phi i32 [ %i.bh, %bb.h ], [ %i.x, %bb.f ] ; 3 uses
  %i.av = add nuw nsw i32 %.084, 4
  %.not93 = icmp samesign ugt i32 %i.av, %i.at
  br i1 %.not93, label %.thread, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.aw = zext nneg i32 %.084 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bb, %i.be
  %i.bg = add nuw nsw i32 %i.bf, 4                ; 7 uses
  %i.bh = add nuw nsw i32 %i.bg, %.084            ; 3 uses
  %i.bi = icmp samesign ugt i32 %i.bh, %i.at
  br i1 %i.bi, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load i8, ptr %i.ax, align 1, !tbaa !25
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !25
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo
  %i.bq = icmp eq i32 %i.bp, 23
  br i1 %i.bq, label %bb.i, label %.preheader, !llvm.loop !74

bb.i:                                             ; preds = %bb.h
  %i.br = zext nneg i32 %i.bg to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.br
  %i.bt = sub nsw i32 %i.b, %i.bh
  %1 = sext i32 %i.bt to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.bs, i64 %1, i1 false)
  %i.bu = sub nsw i32 %i.l, %i.bg                 ; 2 uses
  %i.bv = sub nsw i32 %i.ai, %i.bg                ; 3 uses
  %i.bw = sub nsw i32 %i.as, %i.bg                ; 2 uses
  %i.bx = lshr i32 %i.bu, 8
  %i.by = trunc i32 %i.bx to i8
  store i8 %i.by, ptr %i.e, align 1, !tbaa !25
  %i.bz = trunc i32 %i.bu to i8
  store i8 %i.bz, ptr %i.i, align 4, !tbaa !25
  %i.ca = lshr i32 %i.bv, 16
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.r, align 2, !tbaa !25
  %i.cc = lshr i32 %i.bv, 8
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %i.s, align 1, !tbaa !25
  %i.ce = trunc i32 %i.bv to i8
  store i8 %i.ce, ptr %i.t, align 8, !tbaa !25
  %i.cf = lshr i32 %i.bw, 8
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.al, align 1, !tbaa !25
  %i.ch = trunc i32 %i.bw to i8
  store i8 %i.ch, ptr %i.ap, align 1, !tbaa !25
  %i.ci = load i32, ptr %i.a, align 8, !tbaa !73
  %i.cj = sub nsw i32 %i.ci, %i.bg
  store i32 %i.cj, ptr %i.a, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 131112 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !75
  %i.cm = sub nsw i32 %i.cl, %i.bg
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !75
  br label %.thread

.thread:                                          ; preds = %bb.g, %.preheader, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.2 = phi i32 [ -1, %bb.f ], [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %bb.i ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %.preheader ], [ -1, %bb.g ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @test_memio_read_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS11WOLFSSL_CTX", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS7WOLFSSL", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!16 = !{!17, !19, i64 150}
!17 = !{!"WOLFSSL_SESSION", !6, i64 0, !6, i64 4, !18, i64 8, !7, i64 12, !7, i64 44, !11, i64 48, !7, i64 56, !6, i64 60, !6, i64 64, !7, i64 68, !7, i64 100, !7, i64 101, !19, i64 150, !20, i64 152, !7, i64 154, !7, i64 155, !19, i64 156, !7, i64 158, !19, i64 178, !7, i64 180}
!18 = !{!"wolfSSL_Ref", !6, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = !{!"ProtocolVersion", !7, i64 0, !7, i64 1}
!21 = !{!22, !23, i64 131096}
!22 = !{!"test_memio_ctx", !7, i64 0, !6, i64 65536, !23, i64 65544, !7, i64 65552, !6, i64 131088, !23, i64 131096, !6, i64 131104, !6, i64 131108, !7, i64 131112, !6, i64 131240, !6, i64 131244, !7, i64 131248, !6, i64 131376, !6, i64 131380}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!22, !23, i64 65544}
!25 = !{!7, !7, i64 0}
!26 = !{!27, !56, i64 1384}
!27 = !{!"WOLFSSL", !10, i64 0, !28, i64 8, !28, i64 16, !29, i64 24, !7, i64 32, !7, i64 80, !30, i64 128, !11, i64 136, !11, i64 144, !31, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !32, i64 216, !11, i64 224, !6, i64 232, !33, i64 240, !11, i64 256, !34, i64 264, !34, i64 304, !37, i64 352, !42, i64 640, !43, i64 648, !44, i64 656, !45, i64 672, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !19, i64 708, !6, i64 712, !7, i64 716, !46, i64 717, !47, i64 722, !20, i64 726, !20, i64 728, !48, i64 730, !49, i64 748, !50, i64 1032, !52, i64 1088, !7, i64 1096, !7, i64 1097, !19, i64 1098, !7, i64 1100, !7, i64 1172, !19, i64 1174, !19, i64 1176, !7, i64 1178, !6, i64 1308, !6, i64 1312, !53, i64 1320, !7, i64 1328, !7, i64 1329, !53, i64 1336, !53, i64 1344, !19, i64 1352, !7, i64 1354, !6, i64 1356, !7, i64 1360, !6, i64 1364, !54, i64 1368, !56, i64 1384, !19, i64 1392, !6, i64 1396}
!28 = !{!"p1 _ZTS6Suites", !11, i64 0}
!29 = !{!"p1 _ZTS6Arrays", !11, i64 0}
!30 = !{!"p1 _ZTS9HS_Hashes", !11, i64 0}
!31 = !{!"p1 _ZTS6WC_RNG", !11, i64 0}
!32 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !11, i64 0}
!33 = !{!"WOLFSSL_CIPHER", !7, i64 0, !7, i64 1, !13, i64 8}
!34 = !{!"Ciphers", !35, i64 0, !23, i64 8, !23, i64 16, !36, i64 24, !7, i64 32, !7, i64 33}
!35 = !{!"p1 _ZTS3Aes", !11, i64 0}
!36 = !{!"p1 _ZTS6ChaCha", !11, i64 0}
!37 = !{!"Buffers", !38, i64 0, !38, i64 32, !39, i64 64, !39, i64 80, !39, i64 96, !39, i64 112, !39, i64 128, !6, i64 144, !6, i64 148, !7, i64 152, !7, i64 153, !7, i64 154, !7, i64 155, !39, i64 160, !39, i64 176, !39, i64 192, !39, i64 208, !40, i64 224, !41, i64 232, !41, i64 240, !7, i64 248, !7, i64 249, !7, i64 249, !6, i64 252, !6, i64 256, !41, i64 264, !6, i64 272, !7, i64 280}
!38 = !{!"", !7, i64 0, !23, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !7, i64 29}
!39 = !{!"WOLFSSL_BUFFER_INFO", !23, i64 0, !6, i64 8}
!40 = !{!"p1 _ZTS5DhKey", !11, i64 0}
!41 = !{!"p1 _ZTS9DerBuffer", !11, i64 0}
!42 = !{!"p1 _ZTS15WOLFSSL_SESSION", !11, i64 0}
!43 = !{!"p1 _ZTS13ClientSession", !11, i64 0}
!44 = !{!"WOLFSSL_ALERT_HISTORY", !45, i64 0, !45, i64 8}
!45 = !{!"WOLFSSL_ALERT", !6, i64 0, !6, i64 4}
!46 = !{!"RecordLayerHeader", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3}
!47 = !{!"MsgsReceived", !19, i64 0, !19, i64 0, !19, i64 0, !19, i64 0, !19, i64 0, !19, i64 0, !19, i64 0, !19, i64 1, !19, i64 1, !19, i64 1, !19, i64 1, !19, i64 1, !19, i64 1, !19, i64 1, !19, i64 1, !19, i64 2, !19, i64 2, !19, i64 2}
!48 = !{!"CipherSpecs", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!49 = !{!"Keys", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 160, !7, i64 192, !7, i64 208, !7, i64 224, !7, i64 232, !7, i64 244, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !7, i64 280, !7, i64 281, !7, i64 282, !7, i64 283}
!50 = !{!"Options", !51, i64 0, !19, i64 8, !19, i64 8, !19, i64 8, !19, i64 8, !19, i64 8, !19, i64 8, !19, i64 9, !19, i64 9, !19, i64 9, !19, i64 9, !19, i64 9, !19, i64 9, !19, i64 9, !19, i64 9, !19, i64 10, !19, i64 10, !19, i64 10, !19, i64 10, !19, i64 10, !19, i64 10, !19, i64 10, !19, i64 10, !19, i64 11, !19, i64 11, !19, i64 11, !19, i64 11, !19, i64 11, !19, i64 11, !19, i64 11, !19, i64 11, !19, i64 12, !19, i64 12, !19, i64 12, !19, i64 12, !19, i64 12, !19, i64 12, !19, i64 12, !19, i64 12, !19, i64 13, !19, i64 13, !19, i64 13, !19, i64 13, !19, i64 13, !19, i64 13, !19, i64 13, !19, i64 13, !19, i64 14, !19, i64 14, !19, i64 14, !19, i64 14, !19, i64 14, !19, i64 14, !19, i64 14, !19, i64 14, !19, i64 15, !19, i64 15, !19, i64 15, !19, i64 15, !19, i64 15, !19, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !7, i64 50}
!51 = !{!"long", !7, i64 0}
!52 = !{!"p1 _ZTS6RsaKey", !11, i64 0}
!53 = !{!"p1 _ZTS7ecc_key", !11, i64 0}
!54 = !{!"OneTimeAuth", !55, i64 0, !7, i64 8}
!55 = !{!"p1 _ZTS8Poly1305", !11, i64 0}
!56 = !{!"p1 _ZTS4TLSX", !11, i64 0}
!57 = !{!58, !11, i64 8}
!58 = !{!"TLSX", !6, i64 0, !11, i64 8, !6, i64 16, !7, i64 20, !56, i64 24}
!59 = !{!60, !61, i64 16}
!60 = !{!"SNI", !7, i64 0, !7, i64 8, !61, i64 16, !7, i64 24, !7, i64 25}
!61 = !{!"p1 _ZTS3SNI", !11, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!27, !28, i64 8}
!65 = !{!27, !10, i64 0}
!66 = !{!67, !28, i64 152}
!67 = !{!"WOLFSSL_CTX", !68, i64 0, !69, i64 8, !6, i64 56, !39, i64 64, !39, i64 80, !41, i64 96, !41, i64 104, !6, i64 112, !41, i64 120, !7, i64 128, !7, i64 129, !7, i64 129, !6, i64 132, !6, i64 136, !70, i64 144, !28, i64 152, !11, i64 160, !7, i64 168, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 171, !7, i64 171, !7, i64 171, !7, i64 172, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !19, i64 173, !19, i64 173, !19, i64 174, !19, i64 176, !19, i64 178, !7, i64 180, !19, i64 182, !51, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !6, i64 224, !6, i64 228, !19, i64 232, !6, i64 236, !7, i64 240, !7, i64 312, !11, i64 320, !11, i64 328, !6, i64 336, !56, i64 344, !7, i64 352}
!68 = !{!"p1 _ZTS14WOLFSSL_METHOD", !11, i64 0}
!69 = !{!"wolfSSL_RefWithMutex", !7, i64 0, !6, i64 40}
!70 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !11, i64 0}
!71 = !{!27, !7, i64 726}
!72 = !{!27, !7, i64 727}
!73 = !{!22, !6, i64 65536}
!74 = distinct !{!74, !63}
!75 = !{!6, !6, i64 0}
end_hunk_1
