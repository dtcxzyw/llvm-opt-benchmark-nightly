Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test-crypto-tlssession?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0_@main:bb.a
  call void @test_tls_generate_cert(ptr noundef nonnull @main.clientcertlevel2breq, ptr noundef %i.fr) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.fs = load ptr, ptr @main.cacertrootreq, align 8
  store ptr %i.fs, ptr %i.i, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fu = load ptr, ptr @main.cacertlevel1areq, align 8
  store ptr %i.fu, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fw = load ptr, ptr @main.cacertlevel1breq, align 8
  store ptr %i.fw, ptr %i.fv, align 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fy = load ptr, ptr @main.cacertlevel2areq, align 8
  store ptr %i.fy, ptr %i.fx, align 8
  call void @test_tls_write_cert_chain(ptr noundef nonnull @.str.57, ptr noundef nonnull %i.i, i64 noundef 4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  store ptr @.str.57, ptr %18, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.57, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @main.servercertlevel3areq, i64 8), align 8
  store ptr %i.gb, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @main.clientcertlevel2breq, i64 8), align 8
  store ptr %i.gd, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 0, ptr %i.ge, align 8
  store ptr @.str.13, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr null, ptr %i.gg, align 8
  call void @g_test_add_data_func(ptr noundef nonnull @.str.58, ptr noundef nonnull %18, ptr noundef nonnull @test_crypto_tls_session_x509) #10
  %i.gh = call i32 @g_test_run() #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.clientcertreq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.clientcertaltreq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.servercertreq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.servercertalt1req) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.servercertalt2req) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.cacertreq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.altcacertreq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.cacertrootreq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.cacertlevel1areq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.cacertlevel1breq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.cacertlevel2areq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.servercertlevel3areq) #10
  call void @test_tls_discard_cert(ptr noundef nonnull @main.clientcertlevel2breq) #10
  %i.gi = call i32 @unlink(ptr noundef nonnull @.str.57) #10 ; 0 uses
  call void @test_tls_psk_cleanup(ptr noundef nonnull @.str.4) #10
  call void @test_tls_cleanup(ptr noundef nonnull @.str.3) #10
  %i.gj = call i32 @rmdir(ptr noundef nonnull @.str.2) #10 ; 0 uses
  %i.gk = icmp ne i32 %i.gh, 0
  %i.gl = zext i1 %i.gk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %i.gl
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @module_call_init(i32 noundef) local_unnamed_addr #2

declare void @g_test_init(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @g_setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @g_mkdir_with_parents(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @test_tls_init(ptr noundef) local_unnamed_addr #2

declare void @test_tls_psk_init(ptr noundef) local_unnamed_addr #2

declare void @g_test_add_func(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_crypto_tls_session_psk() #3 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !annotation !7
  %i.b = call i32 @qemu_socketpair(i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 109, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.60) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8
  %i.d = call zeroext i1 @qemu_set_blocking(i32 noundef %i.c, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = call zeroext i1 @qemu_set_blocking(i32 noundef %i.f, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #10 ; 0 uses
  %i.h = call ptr @object_get_objects_root() #10
  %i.i = call ptr (ptr, ptr, ptr, ptr, ...) @object_new_with_props(ptr noundef nonnull @.str.68, ptr noundef %i.h, ptr noundef nonnull @.str.70, ptr noundef nonnull @error_abort, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null) #10
  %i.j = call ptr @object_dynamic_cast_assert(ptr noundef %i.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 31, ptr noundef nonnull @__func__.QCRYPTO_TLS_CREDS) #10 ; 3 uses
  %.not53 = icmp eq ptr %i.j, null
  br i1 %.not53, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 122, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.61) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = call ptr @object_get_objects_root() #10
  %i.l = call ptr (ptr, ptr, ptr, ptr, ...) @object_new_with_props(ptr noundef nonnull @.str.68, ptr noundef %i.k, ptr noundef nonnull @.str.69, ptr noundef nonnull @error_abort, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null) #10
  %i.m = call ptr @object_dynamic_cast_assert(ptr noundef %i.l, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 31, ptr noundef nonnull @__func__.QCRYPTO_TLS_CREDS) #10 ; 3 uses
  %.not55 = icmp eq ptr %i.m, null
  br i1 %.not55, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 127, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.62) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = call ptr @qcrypto_tls_session_new(ptr noundef nonnull %i.j, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull @error_abort) #10 ; 5 uses
  %.not57 = icmp eq ptr %i.n, null
  br i1 %.not57, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 133, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.63) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = call ptr @qcrypto_tls_session_new(ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @error_abort) #10 ; 5 uses
  %.not59 = icmp eq ptr %i.o, null
  br i1 %.not59, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 138, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.64) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @qcrypto_tls_session_set_callbacks(ptr noundef nonnull %i.o, ptr noundef nonnull @testWrite, ptr noundef nonnull @testRead, ptr noundef nonnull %i.a) #10
  call void @qcrypto_tls_session_set_callbacks(ptr noundef nonnull %i.n, ptr noundef nonnull @testWrite, ptr noundef nonnull @testRead, ptr noundef nonnull %i.e) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %bb.k
  %.047 = phi i8 [ 0, %bb.k ], [ %.148, %bb.t ]
  %.045 = phi i8 [ 0, %bb.k ], [ %.1, %bb.t ]
  %i.p = trunc nuw i8 %.047 to i1
  br i1 %i.p, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call i32 @qcrypto_tls_session_handshake(ptr noundef nonnull %i.o, ptr noundef nonnull @error_abort) #10 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %bb.m
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 161, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.65) #11
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.s = icmp eq i32 %i.q, 0
  %spec.select = zext i1 %i.s to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.148 = phi i8 [ 1, %bb.l ], [ %spec.select, %bb.o ] ; 2 uses
  %i.t = trunc nuw i8 %.045 to i1
  br i1 %i.t, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = call i32 @qcrypto_tls_session_handshake(ptr noundef nonnull %i.n, ptr noundef nonnull @error_abort) #10 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.r, label %bb.s, !prof !9

bb.r:                                             ; preds = %bb.q
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 169, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.65) #11
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.w = icmp eq i32 %i.u, 0
  %spec.select68 = zext i1 %i.w to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.1 = phi i8 [ 1, %bb.p ], [ %spec.select68, %bb.s ] ; 2 uses
  %0 = icmp eq i8 %.148, 0
  %.not63 = icmp eq i8 %.1, 0
  %1 = or i1 %0, %.not63
  br i1 %1, label %bb.l, label %bb.u, !llvm.loop !11

bb.u:                                             ; preds = %bb.t
  %i.x = call i32 @qcrypto_tls_session_check_credentials(ptr noundef nonnull %i.o, ptr noundef nonnull @error_abort) #10
  %.not65 = icmp eq i32 %i.x, 0
  br i1 %.not65, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 179, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.66) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.y = call i32 @qcrypto_tls_session_check_credentials(ptr noundef nonnull %i.n, ptr noundef nonnull @error_abort) #10
  %.not67 = icmp eq i32 %i.y, 0
  br i1 %.not67, label %bb.y, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 181, ptr noundef nonnull @__func__.test_crypto_tls_session_psk, ptr noundef nonnull @.str.67) #11
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @object_unparent(ptr noundef nonnull %i.m) #10
  call void @object_unparent(ptr noundef nonnull %i.j) #10
  call void @qcrypto_tls_session_free(ptr noundef nonnull %i.o) #10
  call void @qcrypto_tls_session_free(ptr noundef nonnull %i.n) #10
  %i.z = load i32, ptr %i.a, align 8
  %i.aa = call i32 @close(i32 noundef %i.z) #10   ; 0 uses
  %i.ab = load i32, ptr %i.e, align 4
  %i.ac = call i32 @close(i32 noundef %i.ab) #10  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_crypto_tls_session_anon() #3 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !annotation !7
  %i.b = call i32 @qemu_socketpair(i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 226, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.60) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8
  %i.d = call zeroext i1 @qemu_set_blocking(i32 noundef %i.c, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = call zeroext i1 @qemu_set_blocking(i32 noundef %i.f, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #10 ; 0 uses
  %i.h = call ptr @object_get_objects_root() #10
  %i.i = call ptr (ptr, ptr, ptr, ptr, ...) @object_new_with_props(ptr noundef nonnull @.str.81, ptr noundef %i.h, ptr noundef nonnull @.str.70, ptr noundef nonnull @error_abort, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null) #10
  %i.j = call ptr @object_dynamic_cast_assert(ptr noundef %i.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 31, ptr noundef nonnull @__func__.QCRYPTO_TLS_CREDS) #10 ; 3 uses
  %.not53 = icmp eq ptr %i.j, null
  br i1 %.not53, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 238, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.61) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = call ptr @object_get_objects_root() #10
  %i.l = call ptr (ptr, ptr, ptr, ptr, ...) @object_new_with_props(ptr noundef nonnull @.str.81, ptr noundef %i.k, ptr noundef nonnull @.str.69, ptr noundef nonnull @error_abort, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null) #10
  %i.m = call ptr @object_dynamic_cast_assert(ptr noundef %i.l, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 31, ptr noundef nonnull @__func__.QCRYPTO_TLS_CREDS) #10 ; 3 uses
  %.not55 = icmp eq ptr %i.m, null
  br i1 %.not55, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 242, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.62) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = call ptr @qcrypto_tls_session_new(ptr noundef nonnull %i.j, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull @error_abort) #10 ; 5 uses
  %.not57 = icmp eq ptr %i.n, null
  br i1 %.not57, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 248, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.63) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = call ptr @qcrypto_tls_session_new(ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @error_abort) #10 ; 5 uses
  %.not59 = icmp eq ptr %i.o, null
  br i1 %.not59, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 253, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.64) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @qcrypto_tls_session_set_callbacks(ptr noundef nonnull %i.o, ptr noundef nonnull @testWrite, ptr noundef nonnull @testRead, ptr noundef nonnull %i.a) #10
  call void @qcrypto_tls_session_set_callbacks(ptr noundef nonnull %i.n, ptr noundef nonnull @testWrite, ptr noundef nonnull @testRead, ptr noundef nonnull %i.e) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %bb.k
  %.047 = phi i8 [ 0, %bb.k ], [ %.148, %bb.t ]
  %.045 = phi i8 [ 0, %bb.k ], [ %.1, %bb.t ]
  %i.p = trunc nuw i8 %.047 to i1
  br i1 %i.p, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call i32 @qcrypto_tls_session_handshake(ptr noundef nonnull %i.o, ptr noundef nonnull @error_abort) #10 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %bb.m
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 276, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.65) #11
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.s = icmp eq i32 %i.q, 0
  %spec.select = zext i1 %i.s to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.148 = phi i8 [ 1, %bb.l ], [ %spec.select, %bb.o ] ; 2 uses
  %i.t = trunc nuw i8 %.045 to i1
  br i1 %i.t, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = call i32 @qcrypto_tls_session_handshake(ptr noundef nonnull %i.n, ptr noundef nonnull @error_abort) #10 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.r, label %bb.s, !prof !9

bb.r:                                             ; preds = %bb.q
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 284, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.65) #11
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.w = icmp eq i32 %i.u, 0
  %spec.select68 = zext i1 %i.w to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.1 = phi i8 [ 1, %bb.p ], [ %spec.select68, %bb.s ] ; 2 uses
  %0 = icmp eq i8 %.148, 0
  %.not63 = icmp eq i8 %.1, 0
  %1 = or i1 %0, %.not63
  br i1 %1, label %bb.l, label %bb.u, !llvm.loop !12

bb.u:                                             ; preds = %bb.t
  %i.x = call i32 @qcrypto_tls_session_check_credentials(ptr noundef nonnull %i.o, ptr noundef nonnull @error_abort) #10
  %.not65 = icmp eq i32 %i.x, 0
  br i1 %.not65, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 294, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.66) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.y = call i32 @qcrypto_tls_session_check_credentials(ptr noundef nonnull %i.n, ptr noundef nonnull @error_abort) #10
  %.not67 = icmp eq i32 %i.y, 0
  br i1 %.not67, label %bb.y, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 296, ptr noundef nonnull @__func__.test_crypto_tls_session_anon, ptr noundef nonnull @.str.67) #11
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @object_unparent(ptr noundef nonnull %i.m) #10
  call void @object_unparent(ptr noundef nonnull %i.j) #10
  call void @qcrypto_tls_session_free(ptr noundef nonnull %i.o) #10
  call void @qcrypto_tls_session_free(ptr noundef nonnull %i.n) #10
  %i.z = load i32, ptr %i.a, align 8
  %i.aa = call i32 @close(i32 noundef %i.z) #10   ; 0 uses
  %i.ab = load i32, ptr %i.e, align 4
  %i.ac = call i32 @close(i32 noundef %i.ab) #10  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @test_tls_generate_cert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @g_test_add_data_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_crypto_tls_session_x509(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !annotation !7
  %i.b = call i32 @qemu_socketpair(i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 376, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.60) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8
  %i.d = call zeroext i1 @qemu_set_blocking(i32 noundef %i.c, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = call zeroext i1 @qemu_set_blocking(i32 noundef %i.f, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #10 ; 0 uses
  %i.h = call i32 @g_mkdir_with_parents(ptr noundef nonnull @.str.82, i32 noundef 448) #10 ; 0 uses
  %i.i = call i32 @g_mkdir_with_parents(ptr noundef nonnull @.str.83, i32 noundef 448) #10 ; 0 uses
  %i.j = call i32 @unlink(ptr noundef nonnull @.str.84) #10 ; 0 uses
  %i.k = call i32 @unlink(ptr noundef nonnull @.str.85) #10 ; 0 uses
  %i.l = call i32 @unlink(ptr noundef nonnull @.str.86) #10 ; 0 uses
  %i.m = call i32 @unlink(ptr noundef nonnull @.str.87) #10 ; 0 uses
  %i.n = call i32 @unlink(ptr noundef nonnull @.str.88) #10 ; 0 uses
  %i.o = call i32 @unlink(ptr noundef nonnull @.str.89) #10 ; 0 uses
  %i.p = load ptr, ptr %0, align 8
  %i.q = call i32 @link(ptr noundef %i.p, ptr noundef nonnull @.str.84) #10
  %.not100 = icmp eq i32 %i.q, 0
  br i1 %.not100, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 400, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.90) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i32 @link(ptr noundef %i.s, ptr noundef nonnull @.str.85) #10
  %.not102 = icmp eq i32 %i.t, 0
  br i1 %.not102, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 402, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.91) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = call i32 @link(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86) #10
  %.not104 = icmp eq i32 %i.u, 0
  br i1 %.not104, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 404, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.92) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i32 @link(ptr noundef %i.w, ptr noundef nonnull @.str.87) #10
  %.not106 = icmp eq i32 %i.x, 0
  br i1 %.not106, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 407, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.93) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i32 @link(ptr noundef %i.z, ptr noundef nonnull @.str.88) #10
  %.not108 = icmp eq i32 %i.aa, 0
  br i1 %.not108, label %bb.m, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 409, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.94) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = call i32 @link(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.89) #10
  %.not110 = icmp eq i32 %i.ab, 0
  br i1 %.not110, label %bb.o, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 411, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.95) #11
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = call ptr @object_get_objects_root() #10
  %i.ad = call ptr (ptr, ptr, ptr, ptr, ...) @object_new_with_props(ptr noundef nonnull @.str.101, ptr noundef %i.ac, ptr noundef nonnull @.str.70, ptr noundef nonnull @error_abort, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, ptr noundef null) #10
  %i.ae = call ptr @object_dynamic_cast_assert(ptr noundef %i.ad, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 31, ptr noundef nonnull @__func__.QCRYPTO_TLS_CREDS) #10 ; 3 uses
  %.not111 = icmp eq ptr %i.ae, null
  br i1 %.not111, label %bb.p, label %bb.q, !prof !9

bb.p:                                             ; preds = %bb.o
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 416, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.61) #11
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.af = call ptr @object_get_objects_root() #10
  %i.ag = call ptr (ptr, ptr, ptr, ptr, ...) @object_new_with_props(ptr noundef nonnull @.str.101, ptr noundef %i.af, ptr noundef nonnull @.str.69, ptr noundef nonnull @error_abort, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, ptr noundef null) #10
  %i.ah = call ptr @object_dynamic_cast_assert(ptr noundef %i.ag, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 31, ptr noundef nonnull @__func__.QCRYPTO_TLS_CREDS) #10 ; 3 uses
  %.not113 = icmp eq ptr %i.ah, null
  br i1 %.not113, label %bb.r, label %bb.s, !prof !9

bb.r:                                             ; preds = %bb.q
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 421, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.62) #11
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ai = call ptr @qauthz_list_new(ptr noundef nonnull @.str.96, i32 noundef 0, ptr noundef nonnull @error_abort) #10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not115130 = icmp eq ptr %i.ak, null
  br i1 %.not115130, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not116140 = icmp eq ptr %i.al, null
  br i1 %.not116140, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.am = phi ptr [ %i.ap, %.lr.ph ], [ %i.al, %.lr.ph.preheader ]
  %.083131141 = phi ptr [ %i.ao, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ]
  %i.an = call i64 @qauthz_list_append_rule(ptr noundef %i.ai, ptr noundef nonnull %i.am, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @error_abort) #10 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.083131141, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not116 = icmp eq ptr %i.ap, null
  br i1 %.not116, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call ptr @qcrypto_tls_session_new(ptr noundef nonnull %i.ae, ptr noundef %i.ar, ptr noundef null, i32 noundef 0, ptr noundef nonnull @error_abort) #10 ; 5 uses
  %.not117 = icmp eq ptr %i.as, null
  br i1 %.not117, label %bb.t, label %bb.u, !prof !9

bb.t:                                             ; preds = %.critedge
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 439, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.63) #11
  unreachable

bb.u:                                             ; preds = %.critedge
  %i.at = load ptr, ptr %i.aj, align 8
  %.not119 = icmp eq ptr %i.at, null
  %i.au = select i1 %.not119, ptr null, ptr @.str.96
  %i.av = call ptr @qcrypto_tls_session_new(ptr noundef nonnull %i.ah, ptr noundef null, ptr noundef %i.au, i32 noundef 1, ptr noundef nonnull @error_abort) #10 ; 5 uses
  %.not120 = icmp eq ptr %i.av, null
  br i1 %.not120, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %bb.u
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 445, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.64) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @qcrypto_tls_session_set_callbacks(ptr noundef nonnull %i.av, ptr noundef nonnull @testWrite, ptr noundef nonnull @testRead, ptr noundef nonnull %i.a) #10
  call void @qcrypto_tls_session_set_callbacks(ptr noundef nonnull %i.as, ptr noundef nonnull @testWrite, ptr noundef nonnull @testRead, ptr noundef nonnull %i.e) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.af, %bb.w
  %.087 = phi i8 [ 0, %bb.w ], [ %.188, %bb.af ]
  %.085 = phi i8 [ 0, %bb.w ], [ %.1, %bb.af ]
  %i.aw = trunc nuw i8 %.087 to i1
  br i1 %i.aw, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = call i32 @qcrypto_tls_session_handshake(ptr noundef nonnull %i.av, ptr noundef nonnull @error_abort) #10 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.z, label %bb.aa, !prof !9

bb.z:                                             ; preds = %bb.y
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 468, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.65) #11
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.az = icmp eq i32 %i.ax, 0
  %spec.select = zext i1 %i.az to i8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.188 = phi i8 [ 1, %bb.x ], [ %spec.select, %bb.aa ] ; 2 uses
  %i.ba = trunc nuw i8 %.085 to i1
  br i1 %i.ba, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = call i32 @qcrypto_tls_session_handshake(ptr noundef nonnull %i.as, ptr noundef nonnull @error_abort) #10 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.ad, label %bb.ae, !prof !9

bb.ad:                                            ; preds = %bb.ac
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 476, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.65) #11
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bd = icmp eq i32 %i.bb, 0
  %spec.select129 = zext i1 %i.bd to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.1 = phi i8 [ 1, %bb.ab ], [ %spec.select129, %bb.ae ] ; 2 uses
  %1 = icmp eq i8 %.188, 0
  %.not124 = icmp eq i8 %.1, 0
  %2 = or i1 %1, %.not124
  br i1 %2, label %bb.x, label %bb.ag, !llvm.loop !13

bb.ag:                                            ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !range !14, !noundef !15
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bg, ptr null, ptr @error_abort
  %i.bi = call i32 @qcrypto_tls_session_check_credentials(ptr noundef nonnull %i.av, ptr noundef %i.bh) #10
  %i.bj = icmp slt i32 %i.bi, 0
  %i.bk = load i8, ptr %i.be, align 8, !range !14, !noundef !15
  %i.bl = trunc nuw i8 %i.bk to i1                ; 2 uses
  br i1 %i.bj, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bl, label %bb.al, label %bb.ai, !prof !8

bb.ai:                                            ; preds = %bb.ah
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 489, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.97) #11
  unreachable

bb.aj:                                            ; preds = %bb.ag
  br i1 %i.bl, label %bb.ak, label %bb.al, !prof !9

bb.ak:                                            ; preds = %bb.aj
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 491, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.98) #11
  unreachable

bb.al:                                            ; preds = %bb.aj, %bb.ah
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !range !14, !noundef !15
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bo, ptr null, ptr @error_abort
  %i.bq = call i32 @qcrypto_tls_session_check_credentials(ptr noundef nonnull %i.as, ptr noundef %i.bp) #10
  %i.br = icmp slt i32 %i.bq, 0
  %i.bs = load i8, ptr %i.bm, align 1, !range !14, !noundef !15
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  br i1 %i.br, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  br i1 %i.bt, label %bb.aq, label %bb.an, !prof !8

bb.an:                                            ; preds = %bb.am
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 499, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.99) #11
  unreachable

bb.ao:                                            ; preds = %bb.al
  br i1 %i.bt, label %bb.ap, label %bb.aq, !prof !9

bb.ap:                                            ; preds = %bb.ao
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 501, ptr noundef nonnull @__func__.test_crypto_tls_session_x509, ptr noundef nonnull @.str.100) #11
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.am
  %i.bu = call i32 @unlink(ptr noundef nonnull @.str.84) #10 ; 0 uses
  %i.bv = call i32 @unlink(ptr noundef nonnull @.str.85) #10 ; 0 uses
  %i.bw = call i32 @unlink(ptr noundef nonnull @.str.86) #10 ; 0 uses
  %i.bx = call i32 @unlink(ptr noundef nonnull @.str.87) #10 ; 0 uses
  %i.by = call i32 @unlink(ptr noundef nonnull @.str.88) #10 ; 0 uses
  %i.bz = call i32 @unlink(ptr noundef nonnull @.str.89) #10 ; 0 uses
  %i.ca = call i32 @rmdir(ptr noundef nonnull @.str.82) #10 ; 0 uses
  %i.cb = call i32 @rmdir(ptr noundef nonnull @.str.83) #10 ; 0 uses
  call void @object_unparent(ptr noundef nonnull %i.ah) #10
  call void @object_unparent(ptr noundef nonnull %i.ae) #10
  call void @object_unparent(ptr noundef %i.ai) #10
  call void @qcrypto_tls_session_free(ptr noundef nonnull %i.av) #10
  call void @qcrypto_tls_session_free(ptr noundef nonnull %i.as) #10
  %i.cc = load i32, ptr %i.a, align 8
  %i.cd = call i32 @close(i32 noundef %i.cc) #10  ; 0 uses
  %i.ce = load i32, ptr %i.e, align 4
  %i.cf = call i32 @close(i32 noundef %i.ce) #10  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @test_tls_write_cert_chain(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @g_test_run() local_unnamed_addr #2

declare void @test_tls_discard_cert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #5

declare void @test_tls_psk_cleanup(ptr noundef) local_unnamed_addr #2

declare void @test_tls_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @qemu_socketpair(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @qemu_set_blocking(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @qcrypto_tls_session_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @qcrypto_tls_session_set_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2, 2147483648) i64 @testWrite(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = tail call i64 @write(i32 noundef %i.a, ptr noundef %0, i64 noundef %1) #10 ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 11
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef 50, ptr noundef nonnull @__func__.testWrite, i32 noundef %i.e, ptr noundef nonnull @.str.79) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 2147483647
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i64 [ %i.g, %bb.d ], [ -1, %bb.c ], [ -2, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2, 2147483648) i64 @testRead(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = tail call i64 @read(i32 noundef %i.a, ptr noundef %0, i64 noundef %1) #10 ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 11
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef 68, ptr noundef nonnull @__func__.testRead, i32 noundef %i.e, ptr noundef nonnull @.str.80) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 2147483647
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i64 [ %i.g, %bb.d ], [ -1, %bb.c ], [ -2, %bb.b ]
  ret i64 %.0
}

declare i32 @qcrypto_tls_session_handshake(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @qcrypto_tls_session_check_credentials(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @object_unparent(ptr noundef) local_unnamed_addr #2

declare void @qcrypto_tls_session_free(ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare ptr @object_get_objects_root() local_unnamed_addr #2

declare ptr @object_new_with_props(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @qauthz_list_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @qauthz_list_append_rule(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
end_hunk_0
