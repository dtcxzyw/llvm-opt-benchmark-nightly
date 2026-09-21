Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rpktest?download=true
begin_hunk_0_@setup_tests:bb.a
  %i.q = tail call ptr @test_mk_file_path(ptr noundef %i.p, ptr noundef nonnull @.str.21) #4 ; 2 uses
  store ptr %i.q, ptr @privkey2, align 8, !tbaa !11
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @certsdir, align 8, !tbaa !11
  %i.t = tail call ptr @test_mk_file_path(ptr noundef %i.s, ptr noundef nonnull @.str.22) #4
  store ptr %i.t, ptr @cert448, align 8, !tbaa !11
  %i.u = load ptr, ptr @cert2, align 8, !tbaa !11
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr @certsdir, align 8, !tbaa !11
  %i.x = tail call ptr @test_mk_file_path(ptr noundef %i.w, ptr noundef nonnull @.str.23) #4
  store ptr %i.x, ptr @privkey448, align 8, !tbaa !11
  %i.y = load ptr, ptr @privkey2, align 8, !tbaa !11
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @certsdir, align 8, !tbaa !11
  %i.ab = tail call ptr @test_mk_file_path(ptr noundef %i.aa, ptr noundef nonnull @.str.24) #4
  store ptr %i.ab, ptr @cert25519, align 8, !tbaa !11
  %i.ac = load ptr, ptr @cert2, align 8, !tbaa !11
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr @certsdir, align 8, !tbaa !11
  %i.af = tail call ptr @test_mk_file_path(ptr noundef %i.ae, ptr noundef nonnull @.str.25) #4
  store ptr %i.af, ptr @privkey25519, align 8, !tbaa !11
  %i.ag = load ptr, ptr @privkey2, align 8, !tbaa !11
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call ptr @OSSL_LIB_CTX_new() #4    ; 2 uses
  store ptr %i.ai, ptr @libctx, align 8, !tbaa !13
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @add_test(ptr noundef nonnull @.str.26, ptr noundef nonnull @test_rpk_api) #4
  tail call void @add_all_tests(ptr noundef nonnull @.str.27, ptr noundef nonnull @test_rpk, i32 noundef 2304, i32 noundef 1) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.c, %bb.n, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.n ], [ 0, %bb.b ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @test_skip_common_options() local_unnamed_addr #2

declare void @test_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @test_get_argument(i64 noundef) local_unnamed_addr #2

declare ptr @test_mk_file_path(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_LIB_CTX_new() local_unnamed_addr #2

declare void @add_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_rpk_api() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca [3 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [3 x i8], align 1                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @__const.test_rpk_api.cert_type_dups, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i8 -1, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @__const.test_rpk_api.cert_type_extra, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i16 769, ptr %i.f, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  store i8 2, ptr %i.h, align 1
  %i.i = tail call ptr @TLS_server_method() #4
  %i.j = tail call ptr @TLS_client_method() #4
  %i.k = call i32 @create_ssl_ctx_pair(ptr noundef null, ptr noundef %i.i, ptr noundef %i.j, i32 noundef 771, i32 noundef 771, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #4
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 693, ptr noundef nonnull @.str.28, i32 noundef %i.m) #4
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.p = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.o, ptr noundef nonnull %i.c, i64 noundef 3) #4
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.29, i32 noundef %i.r) #4
  %.not1 = icmp eq i32 %i.s, 0
  br i1 %.not1, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.u = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.t, ptr noundef nonnull %i.d, i64 noundef 1) #4
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 699, ptr noundef nonnull @.str.30, i32 noundef %i.w) #4
  %.not2 = icmp eq i32 %i.x, 0
  br i1 %.not2, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.z = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.y, ptr noundef nonnull %i.e, i64 noundef 3) #4
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 702, ptr noundef nonnull @.str.31, i32 noundef %i.ab) #4
  %.not3 = icmp eq i32 %i.ac, 0
  br i1 %.not3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ae = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.ad, ptr noundef nonnull %i.f, i64 noundef 2) #4
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 705, ptr noundef nonnull @.str.32, i32 noundef %i.ag) #4
  %.not4 = icmp eq i32 %i.ah, 0
  br i1 %.not4, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.aj = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.ai, ptr noundef nonnull %i.g, i64 noundef 1) #4
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 708, ptr noundef nonnull @.str.33, i32 noundef %i.al) #4
  %.not5 = icmp eq i32 %i.am, 0
  br i1 %.not5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ao = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.an, ptr noundef nonnull %i.h, i64 noundef 1) #4
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 711, ptr noundef nonnull @.str.34, i32 noundef %i.aq) #4
  %.not6 = icmp ne i32 %i.ar, 0
  %spec.select = zext i1 %.not6 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !15
  call void @SSL_CTX_free(ptr noundef %i.as) #4
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @SSL_CTX_free(ptr noundef %i.at) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare void @add_all_tests(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @test_rpk(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 77 uses
  %i.d = alloca ptr, align 8                      ; 52 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store ptr null, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store ptr null, ptr %i.d, align 8, !tbaa !17
  %i.e = tail call i32 @test_int_le(ptr noundef nonnull @.str.14, i32 noundef 124, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %0, i32 noundef 2304) #4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.fg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i32 %0, 1152
  %i.g = srem i32 %0, 1152                        ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.g to i16         ; 2 uses
  %1 = srem i16 %.lhs.trunc, 576                  ; 3 uses
  %2 = srem i16 %1, 288                           ; 3 uses
  %i.h = srem i16 %2, 144                         ; 2 uses
  %3 = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %4 = insertelement <4 x i16> %3, i16 %1, i64 1
  %5 = insertelement <4 x i16> %4, i16 %2, i64 2
  %6 = insertelement <4 x i16> %5, i16 %i.h, i64 3
  %7 = sdiv <4 x i16> %6, <i16 576, i16 288, i16 144, i16 36> ; 4 uses
  %8 = extractelement <4 x i16> %7, i64 3         ; 5 uses
  %9 = extractelement <4 x i16> %7, i64 0
  %.sext = sext i16 %9 to i32
  %10 = extractelement <4 x i16> %7, i64 1
  %.sext340.a = sext i16 %10 to i32
  %11 = extractelement <4 x i16> %7, i64 2
  %.sext340 = sext i16 %11 to i32
  %.sext344 = sext i16 %8 to i32
  %i.i = srem i16 %i.h, 36
  %.lhs.trunc347 = trunc nsw i16 %i.i to i8       ; 2 uses
  %i.j = sdiv i8 %.lhs.trunc347, 18               ; 2 uses
  %.sext348 = sext i8 %i.j to i32
  %i.k = srem i8 %.lhs.trunc347, 18               ; 6 uses
  %.sext350 = sext i8 %i.k to i32
  %i.l = load ptr, ptr @rootcert, align 8, !tbaa !11
  %i.m = tail call ptr @load_cert_pem(ptr noundef %i.l, ptr noundef null) #4 ; 3 uses
  %i.n = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 142, ptr noundef nonnull @.str.37, ptr noundef %i.m) #4
  %.not199 = icmp eq i32 %i.n, 0
  br i1 %.not199, label %.thread329, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @X509_get0_pubkey(ptr noundef %i.m) #4 ; 3 uses
  %i.p = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 145, ptr noundef nonnull @.str.38, ptr noundef %i.o) #4
  %.not200 = icmp eq i32 %i.p, 0
  br i1 %.not200, label %.thread329, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i16 %8, 4
  br i1 %i.q, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 (ptr, i32, ptr, ...) @test_skip(ptr noundef nonnull @.str.14, i32 noundef 178, ptr noundef nonnull @.str.39) #4
  br label %.thread329

switch.lookup:                                    ; preds = %bb.d
  %i.s = zext nneg i16 %8 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.test_rpk, i64 %i.s
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.t = zext nneg i16 %8 to i64
  %switch.gep356 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.test_rpk.1, i64 %i.t
  %switch.load357 = load ptr, ptr %switch.gep356, align 8
  %i.u = zext nneg i16 %8 to i64
  %switch.gep358 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.test_rpk.2, i64 %i.u
  %switch.load359 = load ptr, ptr %switch.gep358, align 8
  %.0184 = load ptr, ptr %switch.load359, align 8, !tbaa !11
  %.0185 = load ptr, ptr %switch.load357, align 8, !tbaa !11 ; 9 uses
  %.0186 = load ptr, ptr %switch.load, align 8, !tbaa !11 ; 9 uses
  %i.v = tail call ptr @load_cert_pem(ptr noundef %.0186, ptr noundef null) #4 ; 121 uses
  %i.w = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 183, ptr noundef nonnull @.str.40, ptr noundef %i.v) #4
  %.not201 = icmp eq i32 %i.w, 0
  br i1 %.not201, label %.thread329, label %bb.f

bb.f:                                             ; preds = %switch.lookup
  %i.x = tail call ptr @X509_get0_pubkey(ptr noundef %i.v) #4 ; 19 uses
  %i.y = tail call ptr @load_cert_pem(ptr noundef %.0184, ptr noundef null) #4 ; 120 uses
  %i.z = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 188, ptr noundef nonnull @.str.41, ptr noundef %i.y) #4
  %.not202 = icmp eq i32 %i.z, 0
  br i1 %.not202, label %.thread329, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @X509_get0_pubkey(ptr noundef %i.y) #4 ; 4 uses
  switch i8 %i.j, label %.thread329 [
    i8 0, label %bb.i
    i8 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.not241 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %.0187 = phi i32 [ 771, %bb.h ], [ 772, %bb.g ] ; 2 uses
  %i.ab = icmp eq i8 %i.k, 15
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr @libctx, align 8, !tbaa !13
  %i.ad = tail call ptr @OSSL_PROVIDER_load(ptr noundef null, ptr noundef nonnull @.str.42) #4 ; 2 uses
  store ptr %i.ad, ptr @defctxnull, align 8, !tbaa !19
  %i.ae = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 224, ptr noundef nonnull @.str.43, ptr noundef %i.ad) #4
  %.not203 = icmp eq i32 %i.ae, 0
  br i1 %.not203, label %.thread329, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0173 = phi ptr [ %i.ac, %bb.j ], [ null, %bb.i ]
  %i.af = tail call ptr @TLS_server_method() #4
  %i.ag = tail call ptr @TLS_client_method() #4
  %i.ah = call i32 @create_ssl_ctx_pair(ptr noundef %.0173, ptr noundef %i.af, ptr noundef %i.ag, i32 noundef %.0187, i32 noundef %.0187, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #4
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 230, ptr noundef nonnull @.str.44, i32 noundef %i.aj) #4
  %.not204 = icmp eq i32 %i.ak, 0
  br i1 %.not204, label %.thread329, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add i32 %0, -1152                       ; 5 uses
  %i.am = icmp ult i32 %i.al, -2303               ; 7 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ao = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.an, ptr noundef nonnull @cert_type_rpk, i64 noundef 2) #4
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 234, ptr noundef nonnull @.str.45, i32 noundef %i.aq) #4
  %.not205 = icmp eq i32 %i.ar, 0
  br i1 %.not205, label %.thread329, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = add nsw i32 %i.g, -576
  %i.at = icmp ult i32 %i.as, -1151               ; 5 uses
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.av = call i32 @SSL_CTX_set1_client_cert_type(ptr noundef %i.au, ptr noundef nonnull @cert_type_rpk, i64 noundef 2) #4
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 237, ptr noundef nonnull @.str.46, i32 noundef %i.ax) #4
  %.not206 = icmp eq i32 %i.ay, 0
  br i1 %.not206, label %.thread329, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %narrow355 = add nsw i16 %1, -288               ; 5 uses
  %i.az = icmp ult i16 %narrow355, -575           ; 7 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bb = call i32 @SSL_CTX_set1_server_cert_type(ptr noundef %i.ba, ptr noundef nonnull @cert_type_rpk, i64 noundef 2) #4
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 240, ptr noundef nonnull @.str.47, i32 noundef %i.bd) #4
  %.not207 = icmp eq i32 %i.be, 0
  br i1 %.not207, label %.thread329, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %narrow = add nsw i16 %2, -144
  %i.bf = icmp ult i16 %narrow, -287              ; 5 uses
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bh = call i32 @SSL_CTX_set1_client_cert_type(ptr noundef %i.bg, ptr noundef nonnull @cert_type_rpk, i64 noundef 2) #4
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 243, ptr noundef nonnull @.str.48, i32 noundef %i.bj) #4
  %.not208 = icmp eq i32 %i.bk, 0
  br i1 %.not208, label %.thread329, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.bm = call i32 @SSL_CTX_set_session_id_context(ptr noundef %i.bl, ptr noundef nonnull @SID_CTX, i32 noundef 3) #4
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 245, ptr noundef nonnull @.str.49, i32 noundef %i.bo) #4
  %.not209 = icmp eq i32 %i.bp, 0
  br i1 %.not209, label %.thread329, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.br = call i32 @SSL_CTX_set_session_id_context(ptr noundef %i.bq, ptr noundef nonnull @SID_CTX, i32 noundef 3) #4
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 247, ptr noundef nonnull @.str.50, i32 noundef %i.bt) #4
  %.not210 = icmp eq i32 %i.bu, 0
  br i1 %.not210, label %.thread329, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.bw = call i32 @SSL_CTX_dane_enable(ptr noundef %i.bv) #4
  %i.bx = call i32 @test_int_gt(ptr noundef nonnull @.str.14, i32 noundef 250, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %i.bw, i32 noundef 0) #4
  %.not211 = icmp eq i32 %i.bx, 0
  br i1 %.not211, label %.thread329, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bz = call i32 @SSL_CTX_dane_enable(ptr noundef %i.by) #4
  %i.ca = call i32 @test_int_gt(ptr noundef nonnull @.str.14, i32 noundef 252, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %i.bz, i32 noundef 0) #4
  %.not212 = icmp eq i32 %i.ca, 0
  br i1 %.not212, label %.thread329, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @SSL_CTX_set_verify(ptr noundef %i.cb, i32 noundef 1, ptr noundef nonnull @rpk_verify_client_cb) #4
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ce = call i32 @create_ssl_objects(ptr noundef %i.cc, ptr noundef %i.cd, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #4
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 259, ptr noundef nonnull @.str.54, i32 noundef %i.cg) #4
  %.not213 = icmp eq i32 %i.ch, 0
  br i1 %.not213, label %.thread329, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.cj = call i32 @SSL_dane_enable(ptr noundef %i.ci, ptr noundef null) #4
  %i.ck = call i32 @test_int_gt(ptr noundef nonnull @.str.14, i32 noundef 262, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.52, i32 noundef %i.cj, i32 noundef 0) #4
  %.not214 = icmp eq i32 %i.ck, 0
  br i1 %.not214, label %.thread329, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.cm = call i32 @SSL_dane_enable(ptr noundef %i.cl, ptr noundef nonnull @.str.57) #4
  %i.cn = call i32 @test_int_gt(ptr noundef nonnull @.str.14, i32 noundef 264, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.52, i32 noundef %i.cm, i32 noundef 0) #4
  %.not215 = icmp eq i32 %i.cn, 0
  br i1 %.not215, label %.thread329, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.cp = call i32 @SSL_use_PrivateKey_file(ptr noundef %i.co, ptr noundef %.0185, i32 noundef 1) #4
  %i.cq = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 268, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %i.cp, i32 noundef 1) #4
  %.not216 = icmp eq i32 %i.cq, 0
  br i1 %.not216, label %.thread329, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = icmp eq i8 %i.k, 1
  br i1 %i.cr, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.ab
  %or.cond.not = and i1 %i.am, %i.az              ; 2 uses
  %spec.select = zext i1 %or.cond.not to i32
  %not.or.cond.not = xor i1 %or.cond.not, true
  %spec.select321 = zext i1 %not.or.cond.not to i32
  br label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ct = call i32 @SSL_use_certificate_file(ptr noundef %i.cs, ptr noundef %.0186, i32 noundef 1) #4
  %i.cu = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 278, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %i.ct, i32 noundef 1) #4
  %.not217 = icmp eq i32 %i.cu, 0
  br i1 %.not217, label %.thread329, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.cw = call i32 @SSL_check_private_key(ptr noundef %i.cv) #4
  %i.cx = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 280, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %i.cw, i32 noundef 1) #4
  %.not218 = icmp eq i32 %i.cx, 0
  br i1 %.not218, label %.thread329, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.k, label %bb.af [
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.ao
    i8 4, label %bb.aq
    i8 5, label %bb.as
    i8 6, label %bb.au
    i8 7, label %bb.aw
    i8 8, label %bb.ay
    i8 9, label %bb.az
    i8 10, label %bb.bh
    i8 11, label %bb.bn
    i8 12, label %bb.bq
    i8 13, label %bb.bu
    i8 14, label %bb.ce
    i8 15, label %bb.co
    i8 16, label %bb.cp
    i8 17, label %bb.cs
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cy = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 286, ptr noundef nonnull @.str.62, i32 noundef 1) #4
  %.not267 = icmp eq i32 %i.cy, 0
  br i1 %.not267, label %.thread329, label %bb.cu

bb.ag:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.da = call i32 @SSL_add_expected_rpk(ptr noundef %i.cz, ptr noundef %i.x) #4
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 290, ptr noundef nonnull @.str.63, i32 noundef %i.dc) #4
  %.not266 = icmp eq i32 %i.dd, 0
  br i1 %.not266, label %.thread329, label %bb.cu

bb.ah:                                            ; preds = %.thread, %bb.ae
  %.0175328 = phi i32 [ %spec.select321, %.thread ], [ 0, %bb.ae ]
  %.0191327 = phi i32 [ %spec.select, %.thread ], [ 1, %bb.ae ]
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.df = call i32 @SSL_add_expected_rpk(ptr noundef %i.de, ptr noundef %i.x) #4
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 294, ptr noundef nonnull @.str.63, i32 noundef %i.dh) #4
  %.not265 = icmp eq i32 %i.di, 0
  br i1 %.not265, label %.thread329, label %bb.cu

bb.ai:                                            ; preds = %bb.ae
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.dk = call i32 @SSL_add_expected_rpk(ptr noundef %i.dj, ptr noundef %i.x) #4
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 298, ptr noundef nonnull @.str.63, i32 noundef %i.dm) #4
  %.not260 = icmp eq i32 %i.dn, 0
  br i1 %.not260, label %.thread329, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.dp = call i32 @SSL_add_expected_rpk(ptr noundef %i.do, ptr noundef %i.x) #4
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 300, ptr noundef nonnull @.str.64, i32 noundef %i.dr) #4
  %.not261 = icmp eq i32 %i.ds, 0
  br i1 %.not261, label %.thread329, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.du = call i32 @SSL_use_PrivateKey_file(ptr noundef %i.dt, ptr noundef %.0185, i32 noundef 1) #4
  %i.dv = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 303, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.59, i32 noundef %i.du, i32 noundef 1) #4
  %.not262 = icmp eq i32 %i.dv, 0
  br i1 %.not262, label %.thread329, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.dx = call i32 @SSL_use_certificate_file(ptr noundef %i.dw, ptr noundef %.0186, i32 noundef 1) #4
  %i.dy = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 305, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59, i32 noundef %i.dx, i32 noundef 1) #4
  %.not263 = icmp eq i32 %i.dy, 0
  br i1 %.not263, label %.thread329, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.ea = call i32 @SSL_check_private_key(ptr noundef %i.dz) #4
  %i.eb = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 307, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59, i32 noundef %i.ea, i32 noundef 1) #4
  %.not264 = icmp eq i32 %i.eb, 0
  br i1 %.not264, label %.thread329, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !17
  call void @SSL_set_verify(ptr noundef %i.ec, i32 noundef 3, ptr noundef nonnull @rpk_verify_server_cb) #4
  br label %bb.cu

bb.ao:                                            ; preds = %bb.ae
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.ee = call i32 @SSL_add_expected_rpk(ptr noundef %i.ed, ptr noundef %i.x) #4
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 313, ptr noundef nonnull @.str.63, i32 noundef %i.eg) #4
  %.not258 = icmp eq i32 %i.eh, 0
end_hunk_0
begin_hunk_1_@test_rpk:bb.a
  br i1 %.not310, label %.thread329, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.oy = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.oz = call i64 @SSL_set_options(ptr noundef %i.oy, i64 noundef 16384) #4 ; 0 uses
  %i.pa = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.pb = call i64 @SSL_set_options(ptr noundef %i.pa, i64 noundef 16384) #4 ; 0 uses
  br label %bb.ev

bb.ej:                                            ; preds = %bb.ef
  %i.pc = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.pd = call i32 @SSL_add_expected_rpk(ptr noundef %i.pc, ptr noundef %i.nb) #4
  %i.pe = icmp ne i32 %i.pd, 0
  %i.pf = zext i1 %i.pe to i32
  %i.pg = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 593, ptr noundef nonnull @.str.99, i32 noundef %i.pf) #4
  %.not305 = icmp eq i32 %i.pg, 0
  br i1 %.not305, label %.thread329, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ph = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.pi = call i32 @SSL_add_expected_rpk(ptr noundef %i.ph, ptr noundef %.0) #4
  %i.pj = icmp ne i32 %i.pi, 0
  %i.pk = zext i1 %i.pj to i32
  %i.pl = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 595, ptr noundef nonnull @.str.100, i32 noundef %i.pk) #4
  %.not306 = icmp eq i32 %i.pl, 0
  br i1 %.not306, label %.thread329, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.pm = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.pn = call i32 @SSL_use_PrivateKey_file(ptr noundef %i.pm, ptr noundef %.0185, i32 noundef 1) #4
  %i.po = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 598, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.59, i32 noundef %i.pn, i32 noundef 1) #4
  %.not307 = icmp eq i32 %i.po, 0
  br i1 %.not307, label %.thread329, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.pp = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.pq = call i32 @SSL_use_certificate_file(ptr noundef %i.pp, ptr noundef %.0186, i32 noundef 1) #4
  %i.pr = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 600, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59, i32 noundef %i.pq, i32 noundef 1) #4
  %.not308 = icmp eq i32 %i.pr, 0
  br i1 %.not308, label %.thread329, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ps = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.pt = call i32 @SSL_check_private_key(ptr noundef %i.ps) #4
  %i.pu = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 602, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59, i32 noundef %i.pt, i32 noundef 1) #4
  %.not309 = icmp eq i32 %i.pu, 0
  br i1 %.not309, label %.thread329, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.pv = load ptr, ptr %i.d, align 8, !tbaa !17
  call void @SSL_set_verify(ptr noundef %i.pv, i32 noundef 3, ptr noundef nonnull @rpk_verify_server_cb) #4
  br label %bb.ev

bb.ep:                                            ; preds = %bb.ef
  %i.pw = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.px = call i32 @SSL_add_expected_rpk(ptr noundef %i.pw, ptr noundef %i.nb) #4
  %i.py = icmp ne i32 %i.px, 0
  %i.pz = zext i1 %i.py to i32
  %i.qa = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 607, ptr noundef nonnull @.str.99, i32 noundef %i.pz) #4
  %.not300 = icmp eq i32 %i.qa, 0
  br i1 %.not300, label %.thread329, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qb = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.qc = call i32 @SSL_add_expected_rpk(ptr noundef %i.qb, ptr noundef %.0) #4
  %i.qd = icmp ne i32 %i.qc, 0
  %i.qe = zext i1 %i.qd to i32
  %i.qf = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 609, ptr noundef nonnull @.str.100, i32 noundef %i.qe) #4
  %.not301 = icmp eq i32 %i.qf, 0
  br i1 %.not301, label %.thread329, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qg = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.qh = call i32 @SSL_use_PrivateKey_file(ptr noundef %i.qg, ptr noundef %.0185, i32 noundef 1) #4
  %i.qi = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 612, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.59, i32 noundef %i.qh, i32 noundef 1) #4
  %.not302 = icmp eq i32 %i.qi, 0
  br i1 %.not302, label %.thread329, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qj = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.qk = call i32 @SSL_use_certificate_file(ptr noundef %i.qj, ptr noundef %.0186, i32 noundef 1) #4
  %i.ql = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 614, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59, i32 noundef %i.qk, i32 noundef 1) #4
  %.not303 = icmp eq i32 %i.ql, 0
  br i1 %.not303, label %.thread329, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qm = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.qn = call i32 @SSL_check_private_key(ptr noundef %i.qm) #4
  %i.qo = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 616, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59, i32 noundef %i.qn, i32 noundef 1) #4
  %.not304 = icmp eq i32 %i.qo, 0
  br i1 %.not304, label %.thread329, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qp = load ptr, ptr %i.d, align 8, !tbaa !17
  call void @SSL_set_verify(ptr noundef %i.qp, i32 noundef 3, ptr noundef nonnull @rpk_verify_server_cb) #4
  %i.qq = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.qr = call i64 @SSL_set_options(ptr noundef %i.qq, i64 noundef 16384) #4 ; 0 uses
  %i.qs = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.qt = call i64 @SSL_set_options(ptr noundef %i.qs, i64 noundef 16384) #4 ; 0 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eg, %bb.ef, %bb.eu, %bb.eo, %bb.ei
  %i.qu = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.qv = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.qw = call i32 @create_ssl_connection(ptr noundef %i.qu, ptr noundef %i.qv, i32 noundef 0) #4
  %i.qx = icmp ne i32 %i.qw, 0
  %i.qy = zext i1 %i.qx to i32
  %i.qz = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 625, ptr noundef nonnull @.str.74, i32 noundef %i.qy) #4
  %.not312 = icmp eq i32 %i.qz, 0
  br i1 %.not312, label %.thread329, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ra = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.rb = call i64 @SSL_get_verify_result(ptr noundef %i.ra) #4
  %i.rc = trunc i64 %i.rb to i32
  %i.rd = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 628, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef %.2190, i32 noundef %i.rc) #4
  %.not313 = icmp eq i32 %i.rd, 0
  br i1 %.not313, label %.thread329, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.re = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.rf = call i32 @SSL_session_reused(ptr noundef %i.re) #4
  %i.rg = icmp ne i32 %i.rf, 0
  %i.rh = zext i1 %i.rg to i32
  %i.ri = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 630, ptr noundef nonnull @.str.103, i32 noundef %i.rh) #4
  %.not314 = icmp eq i32 %i.ri, 0
  br i1 %.not314, label %.thread329, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.rj = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.rk = call ptr @SSL_get0_peer_rpk(ptr noundef %i.rj) #4
  %i.rl = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 633, ptr noundef nonnull @.str.77, ptr noundef %i.rk) #4
  %.not315 = icmp eq i32 %i.rl, 0
  br i1 %.not315, label %.thread329, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rm = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.rn = call i32 @SSL_get_negotiated_server_cert_type(ptr noundef %i.rm) #4
  %i.ro = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 635, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %i.rn, i32 noundef 2) #4
  %.not316 = icmp eq i32 %i.ro, 0
  br i1 %.not316, label %.thread329, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rp = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.rq = call i32 @SSL_get_negotiated_server_cert_type(ptr noundef %i.rp) #4
  %i.rr = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 637, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %i.rq, i32 noundef 2) #4
  %.not317 = icmp eq i32 %i.rr, 0
  br i1 %.not317, label %.thread329, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  br i1 %.not280, label %.thread329, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.rs = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.rt = call ptr @SSL_get0_peer_rpk(ptr noundef %i.rs) #4
  %i.ru = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 641, ptr noundef nonnull @.str.89, ptr noundef %i.rt) #4
  %.not318 = icmp eq i32 %i.ru, 0
  br i1 %.not318, label %.thread329, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.rv = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.rw = call i32 @SSL_get_negotiated_client_cert_type(ptr noundef %i.rv) #4
  %i.rx = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 643, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.79, i32 noundef %i.rw, i32 noundef 2) #4
  %.not319 = icmp eq i32 %i.rx, 0
  br i1 %.not319, label %.thread329, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ry = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.rz = call i32 @SSL_get_negotiated_client_cert_type(ptr noundef %i.ry) #4
  %i.sa = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 645, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.79, i32 noundef %i.rz, i32 noundef 2) #4
  %.not320 = icmp ne i32 %i.sa, 0
  %spec.select351 = zext i1 %.not320 to i32
  br label %.thread329

.thread329:                                       ; preds = %bb.fe, %bb.dz, %bb.dx, %bb.du, %bb.dt, %bb.dw, %bb.dy, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.en, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.eh, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.eg, %bb.ee, %bb.et, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fc, %bb.fd, %bb.fb, %bb.ds, %bb.cv, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bs, %bb.bp, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.j, %bb.g, %bb.f, %switch.lookup, %bb.c, %bb.b, %bb.ch, %bb.cf, %bb.bx, %bb.bv, %bb.br, %bb.bo, %bb.ba, %bb.e
  %.0197 = phi ptr [ null, %bb.e ], [ %i.v, %bb.g ], [ null, %bb.b ], [ %i.v, %bb.cv ], [ %i.v, %bb.ds ], [ %i.v, %bb.do ], [ %i.v, %bb.dn ], [ %i.v, %bb.dm ], [ %i.v, %bb.dl ], [ %i.v, %bb.dr ], [ %i.v, %bb.dq ], [ %i.v, %bb.dp ], [ %i.v, %bb.di ], [ %i.v, %bb.dh ], [ %i.v, %bb.dg ], [ %i.v, %bb.df ], [ %i.v, %bb.da ], [ %i.v, %bb.cz ], [ %i.v, %bb.cy ], [ %i.v, %bb.cx ], [ %i.v, %bb.dd ], [ %i.v, %bb.dc ], [ %i.v, %bb.db ], [ %i.v, %bb.cu ], [ %i.v, %bb.af ], [ %i.v, %bb.ag ], [ %i.v, %bb.ah ], [ %i.v, %bb.am ], [ %i.v, %bb.al ], [ %i.v, %bb.ak ], [ %i.v, %bb.aj ], [ %i.v, %bb.ai ], [ %i.v, %bb.ap ], [ %i.v, %bb.ao ], [ %i.v, %bb.ar ], [ %i.v, %bb.aq ], [ %i.v, %bb.at ], [ %i.v, %bb.as ], [ %i.v, %bb.av ], [ %i.v, %bb.au ], [ %i.v, %bb.aw ], [ %i.v, %bb.ba ], [ %i.v, %bb.bf ], [ %i.v, %bb.be ], [ %i.v, %bb.bd ], [ %i.v, %bb.bc ], [ %i.v, %bb.bb ], [ %i.v, %bb.bj ], [ %i.v, %bb.bi ], [ %i.v, %bb.bh ], [ %i.v, %bb.bp ], [ %i.v, %bb.bo ], [ %i.v, %bb.bs ], [ %i.v, %bb.br ], [ %i.v, %bb.cc ], [ %i.v, %bb.cb ], [ %i.v, %bb.ca ], [ %i.v, %bb.bz ], [ %i.v, %bb.by ], [ %i.v, %bb.bx ], [ %i.v, %bb.bv ], [ %i.v, %bb.cm ], [ %i.v, %bb.cl ], [ %i.v, %bb.ck ], [ %i.v, %bb.cj ], [ %i.v, %bb.ci ], [ %i.v, %bb.ch ], [ %i.v, %bb.cf ], [ %i.v, %bb.co ], [ %i.v, %bb.cr ], [ %i.v, %bb.ad ], [ %i.v, %bb.ac ], [ %i.v, %bb.aa ], [ %i.v, %bb.z ], [ %i.v, %bb.y ], [ %i.v, %bb.x ], [ %i.v, %bb.w ], [ %i.v, %bb.v ], [ %i.v, %bb.u ], [ %i.v, %bb.t ], [ %i.v, %bb.s ], [ %i.v, %bb.q ], [ %i.v, %bb.o ], [ %i.v, %bb.m ], [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %i.v, %bb.f ], [ %i.v, %switch.lookup ], [ null, %bb.c ], [ %i.v, %bb.fb ], [ %i.v, %bb.fe ], [ %i.v, %bb.fd ], [ %i.v, %bb.fc ], [ %i.v, %bb.fa ], [ %i.v, %bb.ez ], [ %i.v, %bb.ey ], [ %i.v, %bb.ex ], [ %i.v, %bb.ew ], [ %i.v, %bb.ev ], [ %i.v, %bb.et ], [ %i.v, %bb.ee ], [ %i.v, %bb.eg ], [ %i.v, %bb.em ], [ %i.v, %bb.el ], [ %i.v, %bb.ek ], [ %i.v, %bb.ej ], [ %i.v, %bb.eh ], [ %i.v, %bb.es ], [ %i.v, %bb.er ], [ %i.v, %bb.eq ], [ %i.v, %bb.ep ], [ %i.v, %bb.en ], [ %i.v, %bb.ed ], [ %i.v, %bb.ec ], [ %i.v, %bb.eb ], [ %i.v, %bb.ea ], [ %i.v, %bb.dy ], [ %i.v, %bb.dw ], [ %i.v, %bb.dt ], [ %i.v, %bb.du ], [ %i.v, %bb.dx ], [ %i.v, %bb.dz ]
  %.0196 = phi ptr [ null, %bb.e ], [ %i.y, %bb.g ], [ null, %bb.b ], [ %i.y, %bb.cv ], [ %i.y, %bb.ds ], [ %i.y, %bb.do ], [ %i.y, %bb.dn ], [ %i.y, %bb.dm ], [ %i.y, %bb.dl ], [ %i.y, %bb.dr ], [ %i.y, %bb.dq ], [ %i.y, %bb.dp ], [ %i.y, %bb.di ], [ %i.y, %bb.dh ], [ %i.y, %bb.dg ], [ %i.y, %bb.df ], [ %i.y, %bb.da ], [ %i.y, %bb.cz ], [ %i.y, %bb.cy ], [ %i.y, %bb.cx ], [ %i.y, %bb.dd ], [ %i.y, %bb.dc ], [ %i.y, %bb.db ], [ %i.y, %bb.cu ], [ %i.y, %bb.af ], [ %i.y, %bb.ag ], [ %i.y, %bb.ah ], [ %i.y, %bb.am ], [ %i.y, %bb.al ], [ %i.y, %bb.ak ], [ %i.y, %bb.aj ], [ %i.y, %bb.ai ], [ %i.y, %bb.ap ], [ %i.y, %bb.ao ], [ %i.y, %bb.ar ], [ %i.y, %bb.aq ], [ %i.y, %bb.at ], [ %i.y, %bb.as ], [ %i.y, %bb.av ], [ %i.y, %bb.au ], [ %i.y, %bb.aw ], [ %i.y, %bb.ba ], [ %i.y, %bb.bf ], [ %i.y, %bb.be ], [ %i.y, %bb.bd ], [ %i.y, %bb.bc ], [ %i.y, %bb.bb ], [ %i.y, %bb.bj ], [ %i.y, %bb.bi ], [ %i.y, %bb.bh ], [ %i.y, %bb.bp ], [ %i.y, %bb.bo ], [ %i.y, %bb.bs ], [ %i.y, %bb.br ], [ %i.y, %bb.cc ], [ %i.y, %bb.cb ], [ %i.y, %bb.ca ], [ %i.y, %bb.bz ], [ %i.y, %bb.by ], [ %i.y, %bb.bx ], [ %i.y, %bb.bv ], [ %i.y, %bb.cm ], [ %i.y, %bb.cl ], [ %i.y, %bb.ck ], [ %i.y, %bb.cj ], [ %i.y, %bb.ci ], [ %i.y, %bb.ch ], [ %i.y, %bb.cf ], [ %i.y, %bb.co ], [ %i.y, %bb.cr ], [ %i.y, %bb.ad ], [ %i.y, %bb.ac ], [ %i.y, %bb.aa ], [ %i.y, %bb.z ], [ %i.y, %bb.y ], [ %i.y, %bb.x ], [ %i.y, %bb.w ], [ %i.y, %bb.v ], [ %i.y, %bb.u ], [ %i.y, %bb.t ], [ %i.y, %bb.s ], [ %i.y, %bb.q ], [ %i.y, %bb.o ], [ %i.y, %bb.m ], [ %i.y, %bb.k ], [ %i.y, %bb.j ], [ %i.y, %bb.f ], [ null, %switch.lookup ], [ null, %bb.c ], [ %i.y, %bb.fb ], [ %i.y, %bb.fe ], [ %i.y, %bb.fd ], [ %i.y, %bb.fc ], [ %i.y, %bb.fa ], [ %i.y, %bb.ez ], [ %i.y, %bb.ey ], [ %i.y, %bb.ex ], [ %i.y, %bb.ew ], [ %i.y, %bb.ev ], [ %i.y, %bb.et ], [ %i.y, %bb.ee ], [ %i.y, %bb.eg ], [ %i.y, %bb.em ], [ %i.y, %bb.el ], [ %i.y, %bb.ek ], [ %i.y, %bb.ej ], [ %i.y, %bb.eh ], [ %i.y, %bb.es ], [ %i.y, %bb.er ], [ %i.y, %bb.eq ], [ %i.y, %bb.ep ], [ %i.y, %bb.en ], [ %i.y, %bb.ed ], [ %i.y, %bb.ec ], [ %i.y, %bb.eb ], [ %i.y, %bb.ea ], [ %i.y, %bb.dy ], [ %i.y, %bb.dw ], [ %i.y, %bb.dt ], [ %i.y, %bb.du ], [ %i.y, %bb.dx ], [ %i.y, %bb.dz ]
  %.0195 = phi i32 [ %i.r, %bb.e ], [ 0, %bb.g ], [ 0, %bb.b ], [ 1, %bb.cv ], [ 1, %bb.ds ], [ 0, %bb.do ], [ 0, %bb.dn ], [ 0, %bb.dm ], [ 0, %bb.dl ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ 0, %bb.dp ], [ 0, %bb.di ], [ 0, %bb.dh ], [ 0, %bb.dg ], [ 0, %bb.df ], [ 0, %bb.da ], [ 0, %bb.cz ], [ 0, %bb.cy ], [ 0, %bb.cx ], [ 0, %bb.dd ], [ 0, %bb.dc ], [ 0, %bb.db ], [ 0, %bb.cu ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.aw ], [ %i.gc, %bb.ba ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bp ], [ %i.hm, %bb.bo ], [ 0, %bb.bs ], [ %i.hs, %bb.br ], [ 0, %bb.cc ], [ 0, %bb.cb ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.by ], [ %i.id, %bb.bx ], [ %i.ic, %bb.bv ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ci ], [ %i.iz, %bb.ch ], [ %i.iy, %bb.cf ], [ 0, %bb.co ], [ 0, %bb.cr ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %switch.lookup ], [ 0, %bb.c ], [ 1, %bb.fb ], [ %spec.select351, %bb.fe ], [ 0, %bb.fd ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ez ], [ 0, %bb.ey ], [ 0, %bb.ex ], [ 0, %bb.ew ], [ 0, %bb.ev ], [ 0, %bb.et ], [ 0, %bb.ee ], [ 0, %bb.eg ], [ 0, %bb.em ], [ 0, %bb.el ], [ 0, %bb.ek ], [ 0, %bb.ej ], [ 0, %bb.eh ], [ 0, %bb.es ], [ 0, %bb.er ], [ 0, %bb.eq ], [ 0, %bb.ep ], [ 0, %bb.en ], [ 0, %bb.ed ], [ 0, %bb.ec ], [ 0, %bb.eb ], [ 0, %bb.ea ], [ 0, %bb.dy ], [ 0, %bb.dw ], [ 0, %bb.dt ], [ 0, %bb.du ], [ 0, %bb.dx ], [ 0, %bb.dz ] ; 2 uses
  %.1183 = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.b ], [ null, %bb.cv ], [ null, %bb.ds ], [ null, %bb.do ], [ null, %bb.dn ], [ null, %bb.dm ], [ null, %bb.dl ], [ null, %bb.dr ], [ null, %bb.dq ], [ null, %bb.dp ], [ null, %bb.di ], [ null, %bb.dh ], [ null, %bb.dg ], [ null, %bb.df ], [ null, %bb.da ], [ null, %bb.cz ], [ null, %bb.cy ], [ null, %bb.cx ], [ null, %bb.dd ], [ null, %bb.dc ], [ null, %bb.db ], [ null, %bb.cu ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %bb.ai ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.aw ], [ null, %bb.ba ], [ null, %bb.bf ], [ null, %bb.be ], [ null, %bb.bd ], [ null, %bb.bc ], [ null, %bb.bb ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %bb.bp ], [ null, %bb.bo ], [ null, %bb.bs ], [ null, %bb.br ], [ null, %bb.cc ], [ null, %bb.cb ], [ null, %bb.ca ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %bb.bx ], [ null, %bb.bv ], [ null, %bb.cm ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.cj ], [ null, %bb.ci ], [ null, %bb.ch ], [ null, %bb.cf ], [ null, %bb.co ], [ null, %bb.cr ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.m ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.f ], [ null, %switch.lookup ], [ null, %bb.c ], [ %i.mz, %bb.fb ], [ %i.mz, %bb.fe ], [ %i.mz, %bb.fd ], [ %i.mz, %bb.fc ], [ %i.mz, %bb.fa ], [ %i.mz, %bb.ez ], [ %i.mz, %bb.ey ], [ %i.mz, %bb.ex ], [ %i.mz, %bb.ew ], [ %i.mz, %bb.ev ], [ %i.mz, %bb.et ], [ %i.mz, %bb.ee ], [ %i.mz, %bb.eg ], [ %i.mz, %bb.em ], [ %i.mz, %bb.el ], [ %i.mz, %bb.ek ], [ %i.mz, %bb.ej ], [ %i.mz, %bb.eh ], [ %i.mz, %bb.es ], [ %i.mz, %bb.er ], [ %i.mz, %bb.eq ], [ %i.mz, %bb.ep ], [ %i.mz, %bb.en ], [ %i.mz, %bb.ed ], [ %i.mz, %bb.ec ], [ %i.mz, %bb.eb ], [ %i.mz, %bb.ea ], [ %i.mz, %bb.dy ], [ %i.mz, %bb.dw ], [ %i.mz, %bb.dt ], [ %i.mz, %bb.du ], [ %i.mz, %bb.dx ], [ %i.mz, %bb.dz ]
  %.3181 = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.b ], [ null, %bb.cv ], [ null, %bb.ds ], [ null, %bb.do ], [ null, %bb.dn ], [ null, %bb.dm ], [ null, %bb.dl ], [ null, %bb.dr ], [ null, %bb.dq ], [ null, %bb.dp ], [ null, %bb.di ], [ null, %bb.dh ], [ null, %bb.dg ], [ null, %bb.df ], [ null, %bb.da ], [ null, %bb.cz ], [ null, %bb.cy ], [ null, %bb.cx ], [ null, %bb.dd ], [ null, %bb.dc ], [ null, %bb.db ], [ null, %bb.cu ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %bb.ai ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.aw ], [ null, %bb.ba ], [ null, %bb.bf ], [ null, %bb.be ], [ null, %bb.bd ], [ null, %bb.bc ], [ null, %bb.bb ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %bb.bp ], [ null, %bb.bo ], [ null, %bb.bs ], [ null, %bb.br ], [ null, %bb.cc ], [ null, %bb.cb ], [ null, %bb.ca ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %bb.bx ], [ null, %bb.bv ], [ null, %bb.cm ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.cj ], [ null, %bb.ci ], [ null, %bb.ch ], [ null, %bb.cf ], [ null, %bb.co ], [ null, %bb.cr ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.m ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.f ], [ null, %switch.lookup ], [ null, %bb.c ], [ %.0178, %bb.fb ], [ %.0178, %bb.fe ], [ %.0178, %bb.fd ], [ %.0178, %bb.fc ], [ %.0178, %bb.fa ], [ %.0178, %bb.ez ], [ %.0178, %bb.ey ], [ %.0178, %bb.ex ], [ %.0178, %bb.ew ], [ %.0178, %bb.ev ], [ %.0178, %bb.et ], [ %.0178, %bb.ee ], [ %.0178, %bb.eg ], [ %.0178, %bb.em ], [ %.0178, %bb.el ], [ %.0178, %bb.ek ], [ %.0178, %bb.ej ], [ %.0178, %bb.eh ], [ %.0178, %bb.es ], [ %.0178, %bb.er ], [ %.0178, %bb.eq ], [ %.0178, %bb.ep ], [ %.0178, %bb.en ], [ %.0178, %bb.ed ], [ %.0178, %bb.ec ], [ %.0178, %bb.eb ], [ %.0178, %bb.ea ], [ %.0178, %bb.dy ], [ %i.ne, %bb.dw ], [ null, %bb.dt ], [ null, %bb.du ], [ %i.ne, %bb.dx ], [ %.0178, %bb.dz ]
  %i.sb = load ptr, ptr @defctxnull, align 8, !tbaa !19
  %i.sc = call i32 @OSSL_PROVIDER_unload(ptr noundef %i.sb) #4 ; 0 uses
  store ptr null, ptr @defctxnull, align 8, !tbaa !19
  call void @SSL_SESSION_free(ptr noundef %.1183) #4
  call void @SSL_SESSION_free(ptr noundef %.3181) #4
  %i.sd = load ptr, ptr %i.d, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.sd) #4
  %i.se = load ptr, ptr %i.c, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.se) #4
  %i.sf = load ptr, ptr %i.b, align 8, !tbaa !15
  call void @SSL_CTX_free(ptr noundef %i.sf) #4
  %i.sg = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @SSL_CTX_free(ptr noundef %i.sg) #4
  call void @X509_free(ptr noundef %.0197) #4
  call void @X509_free(ptr noundef %.0196) #4
  call void @X509_free(ptr noundef %i.m) #4
  %i.sh = icmp eq i32 %.0195, 0
  br i1 %i.sh, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %.thread329
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 669, ptr noundef nonnull @.str.104, i32 noundef %i.f, i32 noundef %.sext, i32 noundef %.sext340.a, i32 noundef %.sext340, i32 noundef %.sext344, i32 noundef %.sext348, i32 noundef %.sext350) #4
  br label %bb.fg

bb.fg:                                            ; preds = %.thread329, %bb.ff, %bb.a
  %.0198 = phi i32 [ 0, %bb.a ], [ 0, %bb.ff ], [ %.0195, %.thread329 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0198
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @rootcert, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str.14, i32 noundef 782) #4
  %i.b = load ptr, ptr @cert, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str.14, i32 noundef 783) #4
  %i.c = load ptr, ptr @privkey, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.14, i32 noundef 784) #4
  %i.d = load ptr, ptr @cert2, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str.14, i32 noundef 785) #4
  %i.e = load ptr, ptr @privkey2, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str.14, i32 noundef 786) #4
  %i.f = load ptr, ptr @cert448, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.f, ptr noundef nonnull @.str.14, i32 noundef 787) #4
  %i.g = load ptr, ptr @privkey448, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.g, ptr noundef nonnull @.str.14, i32 noundef 788) #4
  %i.h = load ptr, ptr @cert25519, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.h, ptr noundef nonnull @.str.14, i32 noundef 789) #4
  %i.i = load ptr, ptr @privkey25519, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.i, ptr noundef nonnull @.str.14, i32 noundef 790) #4
  %i.j = load ptr, ptr @libctx, align 8, !tbaa !13
  tail call void @OSSL_LIB_CTX_free(ptr noundef %i.j) #4
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_LIB_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @create_ssl_ctx_pair(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @TLS_server_method() local_unnamed_addr #2

declare ptr @TLS_client_method() local_unnamed_addr #2

declare i32 @test_false(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set1_server_cert_type(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @test_int_le(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @load_cert_pem(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get0_pubkey(ptr noundef) local_unnamed_addr #2

declare i32 @test_skip(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @OSSL_PROVIDER_load(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set1_client_cert_type(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set_session_id_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @test_int_gt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_dane_enable(ptr noundef) local_unnamed_addr #2

declare void @SSL_CTX_set_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @rpk_verify_client_cb(i32 noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @X509_STORE_CTX_get_error(ptr noundef %1) #4 ; 2 uses
  %i.b = tail call ptr @X509_STORE_CTX_get0_rpk(ptr noundef %1) #4
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne i32 %i.a, 0
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 47, ptr noundef nonnull @.str.105, i32 noundef %0, i32 noundef %i.a) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @create_ssl_objects(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_dane_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_use_certificate_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_check_private_key(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_add_expected_rpk(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_set_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @rpk_verify_server_cb(i32 noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @X509_STORE_CTX_get_error(ptr noundef %1) #4 ; 2 uses
  %i.b = tail call ptr @X509_STORE_CTX_get0_rpk(ptr noundef %1) #4
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne i32 %i.a, 0
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 59, ptr noundef nonnull @.str.106, i32 noundef %0, i32 noundef %i.a) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @SSL_set_post_handshake_auth(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @SSL_set_options(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @create_ssl_connection(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @test_long_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SSL_get_verify_result(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_get0_peer_rpk(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_get_negotiated_server_cert_type(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_get0_peer_certificate(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_verify_client_post_handshake(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_do_handshake(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_get_negotiated_client_cert_type(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_get1_session(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_SESSION_get0_peer_rpk(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_shutdown(ptr noundef) local_unnamed_addr #2

declare void @SSL_free(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_set_session(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_session_reused(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PROVIDER_unload(ptr noundef) local_unnamed_addr #2

declare void @SSL_SESSION_free(ptr noundef) local_unnamed_addr #2

declare void @X509_free(ptr noundef) local_unnamed_addr #2

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error(ptr noundef) local_unnamed_addr #2

declare ptr @X509_STORE_CTX_get0_rpk(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_1
