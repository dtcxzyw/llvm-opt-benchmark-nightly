Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quicapitest?download=true
inline.NumInlined: 56
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@test_client_auth:bb.a

bb.k:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %0, 0
  br i1 %i.aw, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.az = call i32 @qtest_create_quic_connection(ptr noundef %i.ax, ptr noundef %i.ay) #10
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1346, ptr noundef nonnull @.str.79, i32 noundef %i.bb) #10
  %.not35 = icmp ne i32 %i.bc, 0
  br label %bb.t

.thread:                                          ; preds = %bb.j, %bb.k
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.bf = call i32 @qtest_create_quic_connection(ptr noundef %i.bd, ptr noundef %i.be) #10
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1354, ptr noundef nonnull @.str.79, i32 noundef %i.bh) #10
  %.not27 = icmp eq i32 %i.bi, 0
  br i1 %.not27, label %bb.t, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.bk = call i32 @SSL_write_ex(ptr noundef %i.bj, ptr noundef nonnull @.str.72, i64 noundef 14, ptr noundef nonnull %i.d) #10
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1358, ptr noundef nonnull @.str.83, i32 noundef %i.bm) #10
  %.not28 = icmp eq i32 %i.bn, 0
  br i1 %.not28, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bp = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1359, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i64 noundef %i.bo, i64 noundef 14) #10
  %.not29 = icmp eq i32 %i.bp, 0
  br i1 %.not29, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.br = call i32 @ossl_quic_tserver_tick(ptr noundef %i.bq) #10 ; 0 uses
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.bt = call i32 @ossl_quic_tserver_write(ptr noundef %i.bs, i64 noundef 0, ptr noundef nonnull @.str.72, i64 noundef 14, ptr noundef nonnull %i.d) #10
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1365, ptr noundef nonnull @.str.275, i32 noundef %i.bv) #10
  %.not30 = icmp eq i32 %i.bw, 0
  br i1 %.not30, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.by = call i32 @ossl_quic_tserver_tick(ptr noundef %i.bx) #10 ; 0 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ca = call i32 @SSL_handle_events(ptr noundef %i.bz) #10 ; 0 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.cc = call i32 @SSL_read_ex(ptr noundef %i.cb, ptr noundef nonnull %i.c, i64 noundef 20, ptr noundef nonnull %i.d) #10
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1371, ptr noundef nonnull @.str.110, i32 noundef %i.ce) #10
  %.not31 = icmp eq i32 %i.cf, 0
  br i1 %.not31, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ch = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1372, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i64 noundef %i.cg, i64 noundef 14) #10
  %.not32 = icmp eq i32 %i.ch, 0
  br i1 %.not32, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cj = call i32 @test_mem_eq(ptr noundef nonnull @.str.14, i32 noundef 1373, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.c, i64 noundef %i.ci, ptr noundef nonnull @.str.72, i64 noundef 14) #10
  %.not33 = icmp eq i32 %i.cj, 0
  br i1 %.not33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.cm = call i32 @qtest_shutdown(ptr noundef %i.ck, ptr noundef %i.cl) #10
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1376, ptr noundef nonnull @.str.103, i32 noundef %i.co) #10
  %.not34 = icmp ne i32 %i.cp, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l, %bb.p, %bb.q, %bb.r, %bb.o, %bb.m, %bb.n, %.thread, %bb.i, %bb.j, %bb.g, %bb.e, %bb.f, %bb.c, %bb.a, %bb.b
  %.0.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not35, %bb.l ], [ %.not34, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %.thread ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ]
  %.0 = zext i1 %.0.shrunk to i32
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.cq) #10
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ossl_quic_tserver_free(ptr noundef %i.cr) #10
  call void @SSL_CTX_free(ptr noundef %i.j) #10
  call void @SSL_CTX_free(ptr noundef %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_alpn(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.d = tail call ptr @OSSL_QUIC_client_method() #10
  %i.e = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.c, ptr noundef null, ptr noundef %i.d) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.f = tail call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.e, ptr noundef nonnull @.str.145) #10
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1407, ptr noundef nonnull @.str.144, i32 noundef %i.h) #10
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1410, ptr noundef nonnull @.str.74, ptr noundef %i.e) #10
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.l = load ptr, ptr @cert, align 8, !tbaa !15
  %i.m = load ptr, ptr @privkey, align 8, !tbaa !15
  %i.n = call i32 @qtest_create_quic_objects(ptr noundef %i.k, ptr noundef %i.e, ptr noundef null, ptr noundef %i.l, ptr noundef %i.m, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #10
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1415, ptr noundef nonnull @.str.146, i32 noundef %i.p) #10
  %.not10 = icmp eq i32 %i.q, 0
  br i1 %.not10, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %0, 0                        ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.t = call i32 @SSL_set_alpn_protos(ptr noundef %i.s, ptr noundef null, i32 noundef 0) #10
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1423, ptr noundef nonnull @.str.276, i32 noundef %i.v) #10
  %.not11 = icmp eq i32 %i.w, 0
  br i1 %.not11, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.y = call i32 @SSL_connect(ptr noundef %i.x) #10 ; 2 uses
  %i.z = call i32 @test_int_le(ptr noundef nonnull @.str.14, i32 noundef 1428, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.82, i32 noundef %i.y, i32 noundef 0) #10
  %.not12 = icmp eq i32 %i.z, 0
  br i1 %.not12, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ab = call i32 @SSL_get_error(ptr noundef %i.aa, i32 noundef %i.y) #10 ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1432, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.244, i32 noundef %i.ab, i32 noundef 1) #10
  %.not15 = icmp eq i32 %i.ac, 0
  br i1 %.not15, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1436, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.219, i32 noundef %i.ab, i32 noundef 2) #10
  %.not13 = icmp eq i32 %i.ad, 0
  br i1 %.not13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ag = call i32 @qtest_create_quic_connection(ptr noundef %i.ae, ptr noundef %i.af) #10
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1437, ptr noundef nonnull @.str.79, i32 noundef %i.ai) #10
  %.not14 = icmp eq i32 %i.aj, 0
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.f, %bb.e, %bb.b, %bb.c, %bb.a, %bb.k
  %.0 = phi i32 [ 1, %bb.k ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ossl_quic_tserver_free(ptr noundef %i.ak) #10
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.al) #10
  call void @SSL_CTX_free(ptr noundef %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_noisy_dgram(i32 noundef %0) #1 {
bb.a:
  %.sroa.5 = alloca ptr, align 8                  ; 10 uses
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca [80 x i8], align 16               ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.h = tail call ptr @OSSL_QUIC_client_method() #10
  %i.i = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.g, ptr noundef null, ptr noundef %i.h) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5) #10
  store ptr null, ptr %.sroa.5, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store ptr null, ptr %i.f, align 8, !tbaa !27
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1576, ptr noundef nonnull @.str.74, ptr noundef %i.i) #10
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %0, 1
  %spec.select = select i1 %i.k, i32 14, i32 6
  %i.l = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.m = load ptr, ptr @cert, align 8, !tbaa !15
  %i.n = load ptr, ptr @privkey, align 8, !tbaa !15
  %i.o = call i32 @qtest_create_quic_objects(ptr noundef %i.l, ptr noundef %i.i, ptr noundef null, ptr noundef %i.m, ptr noundef %i.n, i32 noundef %spec.select, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.5, ptr noundef nonnull %i.f, ptr noundef null) #10
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1580, ptr noundef nonnull @.str.279, i32 noundef %i.q) #10
  %.not28 = icmp eq i32 %i.r, 0
  br i1 %.not28, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.t = load ptr, ptr %.sroa.5, align 8, !tbaa !17
  %i.u = call i32 @qtest_create_quic_connection(ptr noundef %i.s, ptr noundef %i.t) #10
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1583, ptr noundef nonnull @.str.79, i32 noundef %i.w) #10
  %.not29 = icmp eq i32 %i.x, 0
  br i1 %.not29, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %.sroa.5, align 8, !tbaa !17
  %i.z = call i32 @SSL_set_incoming_stream_policy(ptr noundef %i.y, i32 noundef 1, i64 noundef 0) #10
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1588, ptr noundef nonnull @.str.280, i32 noundef %i.ab) #10
  %.not30 = icmp eq i32 %i.ac, 0
  br i1 %.not30, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %.sroa.5, align 8, !tbaa !17
  %i.ae = call i32 @SSL_set_default_stream_mode(ptr noundef %i.ad, i32 noundef 0) #10
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1590, ptr noundef nonnull @.str.281, i32 noundef %i.ag) #10
  %.not31 = icmp eq i32 %i.ah, 0
  br i1 %.not31, label %.loopexit, label %.preheader45

.preheader45:                                     ; preds = %bb.e, %bb.x
  %i.ai = phi i1 [ false, %bb.x ], [ true, %bb.e ] ; 3 uses
  %.sroa.6.076 = phi ptr [ %.sroa.6.6, %bb.x ], [ null, %bb.e ] ; 2 uses
  %.02550.sroa.phi = phi ptr [ %.sroa.0.6, %bb.x ], [ null, %bb.e ] ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ak = call i32 @ossl_quic_tserver_stream_new(ptr noundef %i.aj, i32 noundef 0, ptr noundef nonnull %i.b) #10
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1594, ptr noundef nonnull @.str.107, i32 noundef %i.am) #10
  %.not32 = icmp eq i32 %i.an, 0
  br i1 %.not32, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader45
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ap = call i32 @ossl_quic_tserver_tick(ptr noundef %i.ao) #10 ; 0 uses
  call void @qtest_add_time(i64 noundef 1) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.p
  %i.aq = add nuw nsw i64 %.02648, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, 20
  br i1 %exitcond.not, label %.preheader, label %bb.h, !llvm.loop !46

.preheader:                                       ; preds = %bb.g
  %.sroa.speculated52 = select i1 %i.ai, ptr %.sroa.0.6, ptr %.sroa.6.6
  br label %.preheader.a

bb.h:                                             ; preds = %bb.f, %bb.g
  %.02648 = phi i64 [ 0, %bb.f ], [ %i.aq, %bb.g ]
  %.sroa.6.172 = phi ptr [ %.sroa.6.076, %bb.f ], [ %.sroa.6.6, %bb.g ] ; 6 uses
  %.sroa.0.171 = phi ptr [ %.02550.sroa.phi, %bb.f ], [ %.sroa.0.6, %bb.g ] ; 6 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.as = load i64, ptr %i.b, align 8, !tbaa !21
  %i.at = call i32 @ossl_quic_tserver_write(ptr noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.278, i64 noundef 12, ptr noundef nonnull %i.c) #10
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1607, ptr noundef nonnull @.str.205, i32 noundef %i.av) #10
  %.not37 = icmp eq i32 %i.aw, 0
  br i1 %.not37, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ay = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1608, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.254, i64 noundef 12, i64 noundef %i.ax) #10
  %.not38 = icmp eq i32 %i.ay, 0
  br i1 %.not38, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ba = call i32 @ossl_quic_tserver_tick(ptr noundef %i.az) #10 ; 0 uses
  call void @qtest_add_time(i64 noundef 1) #10
  %i.bb = load ptr, ptr %.sroa.5, align 8, !tbaa !17 ; 6 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  br i1 %i.ai, label %.split, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.n
  %i.bd = phi ptr [ %i.bl, %bb.n ], [ %.sroa.6.172, %bb.j ] ; 2 uses
  %.020.i.a = phi i32 [ %i.bo, %bb.n ], [ 0, %bb.j ]
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.l, label %.thread.i.a

bb.l:                                             ; preds = %bb.k
  %i.bf = call i32 @SSL_handle_events(ptr noundef %i.bb) #10 ; 0 uses
  %i.bg = call ptr @SSL_accept_stream(ptr noundef %i.bb, i64 noundef 0) #10 ; 2 uses
  %.not.i.a = icmp eq ptr %i.bg, null
  br i1 %.not.i.a, label %bb.n, label %.thread.i.a

.thread.i.a:                                      ; preds = %bb.k, %bb.l
  %i.bh = phi ptr [ %i.bg, %bb.l ], [ %i.bd, %bb.k ] ; 5 uses
  %i.bi = call i32 @SSL_read_ex(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.d) #10
  %.not17.i.a = icmp eq i32 %i.bi, 0
  br i1 %.not17.i.a, label %bb.m, label %unreliable_client_read.exit

bb.m:                                             ; preds = %.thread.i.a
  %i.bj = call i32 @SSL_get_error(ptr noundef nonnull %i.bh, i32 noundef 0) #10
  %i.bk = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1518, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.219, i32 noundef %i.bj, i32 noundef 2) #10
  %.not18.i.a = icmp eq i32 %i.bk, 0
  br i1 %.not18.i.a, label %unreliable_client_read.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bl = phi ptr [ null, %bb.l ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bm = call i32 @ossl_quic_tserver_tick(ptr noundef %i.bc) #10 ; 0 uses
  call void @qtest_add_time(i64 noundef 1) #10
  %i.bn = call i32 @qtest_wait_for_timeout(ptr noundef %i.bb, ptr noundef %i.bc) #10 ; 0 uses
  %i.bo = add nuw nsw i32 %.020.i.a, 1            ; 2 uses
  %exitcond.not.i.a = icmp eq i32 %i.bo, 2000
  br i1 %exitcond.not.i.a, label %unreliable_client_read.exit.loopexit, label %bb.k, !llvm.loop !47

.split:                                           ; preds = %bb.j, %bb.o
  %.sroa.0.3 = phi ptr [ %.sroa.0.5, %bb.o ], [ %.sroa.0.171, %bb.j ] ; 2 uses
  %.020.i = phi i32 [ %10, %bb.o ], [ 0, %bb.j ]
  %1 = icmp eq ptr %.sroa.0.3, null
  br i1 %1, label %.cont, label %.thread.i

.cont:                                            ; preds = %.split
  %2 = call i32 @SSL_handle_events(ptr noundef %i.bb) #10 ; 0 uses
  %3 = call ptr @SSL_accept_stream(ptr noundef %i.bb, i64 noundef 0) #10 ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %.cont, %.split
  %.sroa.0.4 = phi ptr [ %3, %.cont ], [ %.sroa.0.3, %.split ] ; 5 uses
  %4 = call i32 @SSL_read_ex(ptr noundef nonnull %.sroa.0.4, ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.d) #10
  %.not17.i = icmp eq i32 %4, 0
  br i1 %.not17.i, label %5, label %unreliable_client_read.exit

5:                                                ; preds = %.thread.i
  %6 = call i32 @SSL_get_error(ptr noundef nonnull %.sroa.0.4, i32 noundef 0) #10
  %7 = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1518, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.219, i32 noundef %6, i32 noundef 2) #10
  %.not18.i = icmp eq i32 %7, 0
  br i1 %.not18.i, label %unreliable_client_read.exit, label %bb.o

bb.o:                                             ; preds = %5, %.cont
  %.sroa.0.5 = phi ptr [ null, %.cont ], [ %.sroa.0.4, %5 ] ; 2 uses
  %8 = call i32 @ossl_quic_tserver_tick(ptr noundef %i.bc) #10 ; 0 uses
  call void @qtest_add_time(i64 noundef 1) #10
  %9 = call i32 @qtest_wait_for_timeout(ptr noundef %i.bb, ptr noundef %i.bc) #10 ; 0 uses
  %10 = add nuw nsw i32 %.020.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %10, 2000
  br i1 %exitcond.not.i, label %unreliable_client_read.exit.loopexit, label %.split, !llvm.loop !47

unreliable_client_read.exit.loopexit:             ; preds = %bb.n, %bb.o
  %.us-phi69 = phi ptr [ %.sroa.0.5, %bb.o ], [ %.sroa.0.171, %bb.n ]
  %.us-phi70 = phi ptr [ %.sroa.6.172, %bb.o ], [ %i.bl, %bb.n ]
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1526, ptr noundef nonnull @.str.203) #10
  br label %unreliable_client_read.exit

unreliable_client_read.exit:                      ; preds = %bb.m, %.thread.i.a, %5, %.thread.i, %unreliable_client_read.exit.loopexit
  %.sroa.0.6 = phi ptr [ %.us-phi69, %unreliable_client_read.exit.loopexit ], [ %.sroa.0.4, %5 ], [ %.sroa.0.4, %.thread.i ], [ %.sroa.0.171, %.thread.i.a ], [ %.sroa.0.171, %bb.m ] ; 10 uses
  %.sroa.6.6 = phi ptr [ %.us-phi70, %unreliable_client_read.exit.loopexit ], [ %.sroa.6.172, %5 ], [ %.sroa.6.172, %.thread.i ], [ %i.bh, %.thread.i.a ], [ %i.bh, %bb.m ] ; 10 uses
  %.015.i = phi i32 [ 0, %unreliable_client_read.exit.loopexit ], [ 0, %5 ], [ 1, %.thread.i ], [ 0, %bb.m ], [ 1, %.thread.i.a ]
  %i.bp = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1620, ptr noundef nonnull @.str.282, i32 noundef %.015.i) #10
  %.not39 = icmp eq i32 %i.bp, 0
  br i1 %.not39, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %unreliable_client_read.exit
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !21
  %i.br = call i32 @test_mem_eq(ptr noundef nonnull @.str.14, i32 noundef 1621, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.278, i64 noundef 12, ptr noundef nonnull %i.e, i64 noundef %i.bq) #10
  %.not40 = icmp eq i32 %i.br, 0
  br i1 %.not40, label %.loopexit, label %bb.g

bb.q:                                             ; preds = %bb.w
  %i.bs = add nuw nsw i64 %.149, 1                ; 2 uses
  %exitcond54.not = icmp eq i64 %i.bs, 20
  br i1 %exitcond54.not, label %bb.x, label %.preheader.a, !llvm.loop !48

.preheader.a:                                     ; preds = %.preheader, %bb.q
  %.149 = phi i64 [ 0, %.preheader ], [ %i.bs, %bb.q ]
  %i.bt = call i32 @SSL_write_ex(ptr noundef %.sroa.speculated52, ptr noundef nonnull @.str.278, i64 noundef 12, ptr noundef nonnull %i.c) #10
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1628, ptr noundef nonnull @.str.283, i32 noundef %i.bv) #10
  %.not33 = icmp eq i32 %i.bw, 0
  br i1 %.not33, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader.a
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !21
  %i.by = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1629, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.254, i64 noundef 12, i64 noundef %i.bx) #10
  %.not34 = icmp eq i32 %i.by, 0
  br i1 %.not34, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ca = call i32 @ossl_quic_tserver_tick(ptr noundef %i.bz) #10 ; 0 uses
  call void @qtest_add_time(i64 noundef 1) #10
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !21
  %i.cd = load ptr, ptr %.sroa.5, align 8, !tbaa !17 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.013.i = phi i32 [ 0, %bb.s ], [ %i.ck, %bb.u ]
  %i.ce = call i32 @ossl_quic_tserver_read(ptr noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.d) #10
  %.not.i41 = icmp ne i32 %i.ce, 0
  %i.cf = load i64, ptr %i.d, align 8
  %i.cg = icmp ugt i64 %i.cf, 1
  %or.cond = select i1 %.not.i41, i1 %i.cg, i1 false
  br i1 %or.cond, label %unreliable_server_read.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = call i32 @ossl_quic_tserver_tick(ptr noundef %i.cb) #10 ; 0 uses
  %i.ci = call i32 @SSL_handle_events(ptr noundef %i.cd) #10 ; 0 uses
  call void @qtest_add_time(i64 noundef 1) #10
  %i.cj = call i32 @qtest_wait_for_timeout(ptr noundef %i.cd, ptr noundef %i.cb) #10 ; 0 uses
  %i.ck = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %exitcond.not.i42 = icmp eq i32 %i.ck, 2000
  br i1 %exitcond.not.i42, label %bb.v, label %bb.t, !llvm.loop !49

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1548, ptr noundef nonnull @.str.203) #10
  br label %unreliable_server_read.exit

unreliable_server_read.exit:                      ; preds = %bb.t, %bb.v
  %.012.i = phi i32 [ 0, %bb.v ], [ 1, %bb.t ]
  %i.cl = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1641, ptr noundef nonnull @.str.284, i32 noundef %.012.i) #10
  %.not35 = icmp eq i32 %i.cl, 0
  br i1 %.not35, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %unreliable_server_read.exit
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cn = call i32 @test_mem_eq(ptr noundef nonnull @.str.14, i32 noundef 1642, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.278, i64 noundef 12, ptr noundef nonnull %i.e, i64 noundef %i.cm) #10
  %.not36 = icmp eq i32 %i.cn, 0
  br i1 %.not36, label %.loopexit, label %bb.q

bb.x:                                             ; preds = %bb.q
  br i1 %i.ai, label %.preheader45, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.x, %.preheader45, %unreliable_client_read.exit, %bb.p, %bb.h, %bb.i, %unreliable_server_read.exit, %bb.w, %.preheader.a, %bb.r, %bb.d, %bb.e, %bb.c, %bb.a, %bb.b
  %.sroa.0.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ %.sroa.0.171, %bb.h ], [ %.sroa.0.6, %unreliable_server_read.exit ], [ %.sroa.0.6, %bb.r ], [ %.sroa.0.6, %.preheader.a ], [ %.sroa.0.6, %bb.w ], [ %.sroa.0.6, %bb.p ], [ %.sroa.0.6, %unreliable_client_read.exit ], [ %.sroa.0.171, %bb.i ], [ %.02550.sroa.phi, %.preheader45 ], [ %.sroa.0.6, %bb.x ]
  %.sroa.6.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ %.sroa.6.172, %bb.h ], [ %.sroa.6.6, %unreliable_server_read.exit ], [ %.sroa.6.6, %bb.r ], [ %.sroa.6.6, %.preheader.a ], [ %.sroa.6.6, %bb.w ], [ %.sroa.6.6, %bb.p ], [ %.sroa.6.6, %unreliable_client_read.exit ], [ %.sroa.6.172, %bb.i ], [ %.sroa.6.076, %.preheader45 ], [ %.sroa.6.6, %bb.x ]
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %unreliable_client_read.exit ], [ 0, %unreliable_server_read.exit ], [ 0, %bb.r ], [ 0, %.preheader.a ], [ 0, %bb.w ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.p ], [ 0, %.preheader45 ], [ 1, %bb.x ]
  %.sroa.0.0..sroa.0.0. = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @ossl_quic_tserver_free(ptr noundef %.sroa.0.0..sroa.0.0.) #10
  call void @SSL_free(ptr noundef %.sroa.0.2) #10
  call void @SSL_free(ptr noundef %.sroa.6.2) #10
  %i.co = load ptr, ptr %.sroa.5, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.co) #10
  call void @SSL_CTX_free(ptr noundef %i.i) #10
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !27
  call void @qtest_fault_free(ptr noundef %i.cp) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5) #10
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bw_limit() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
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
  store ptr null, ptr %i.e, align 8, !tbaa !27
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1680, ptr noundef nonnull @.str.74, ptr noundef %i.h) #10
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.k = load ptr, ptr @cert, align 8, !tbaa !15
  %i.l = load ptr, ptr @privkey, align 8, !tbaa !15
  %i.m = call i32 @qtest_create_quic_objects(ptr noundef %i.j, ptr noundef %i.h, ptr noundef null, ptr noundef %i.k, ptr noundef %i.l, i32 noundef 6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef null) #10
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1684, ptr noundef nonnull @.str.279, i32 noundef %i.o) #10
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call noalias ptr @CRYPTO_zalloc(i64 noundef 16384, ptr noundef nonnull @.str.14, i32 noundef 1687) #10 ; 8 uses
  %i.r = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1687, ptr noundef nonnull @.str.286, ptr noundef %i.q) #10
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = call noalias ptr @CRYPTO_zalloc(i64 noundef 16384, ptr noundef nonnull @.str.14, i32 noundef 1688) #10 ; 7 uses
  %i.t = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1688, ptr noundef nonnull @.str.287, ptr noundef %i.s) #10
  %.not31 = icmp eq i32 %i.t, 0
  br i1 %.not31, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.v = call i32 @qtest_fault_set_bw_limit(ptr noundef %i.u, i64 noundef 1000, i64 noundef 1000, i32 noundef 0) #10
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1692, ptr noundef nonnull @.str.288, i32 noundef %i.x) #10
  %.not32 = icmp eq i32 %i.y, 0
  br i1 %.not32, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ab = call i32 @qtest_create_quic_connection(ptr noundef %i.z, ptr noundef %i.aa) #10
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1695, ptr noundef nonnull @.str.79, i32 noundef %i.ad) #10
  %.not33 = icmp eq i32 %i.ae, 0
  br i1 %.not33, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @qtest_start_stopwatch() #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.p
  %.040 = phi i64 [ 2097152, %bb.g ], [ %.1, %bb.p ] ; 4 uses
  %.02339 = phi i64 [ 2097152, %bb.g ], [ %.124, %bb.p ] ; 5 uses
  call void @qtest_add_time(i64 noundef 1) #10
  %.not36 = icmp eq i64 %.02339, 0
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  br i1 %.not36, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call i64 @llvm.umin.i64(i64 %.02339, i64 16384)
  %i.ah = call i32 @SSL_write_ex(ptr noundef %i.af, ptr noundef %i.q, i64 noundef %i.ag, ptr noundef nonnull %i.c) #10
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1708, ptr noundef nonnull @.str.289, i64 noundef %.02339) #10
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aj = call i32 @SSL_get_error(ptr noundef %i.ai, i32 noundef 0) #10
  %i.ak = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1709, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.290, i32 noundef %i.aj, i32 noundef 3) #10
  %.not38 = icmp eq i32 %i.ak, 0
  br i1 %.not38, label %.loopexit, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !21
  %i.am = sub i64 %.02339, %i.al                  ; 2 uses
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1713, ptr noundef nonnull @.str.291, i64 noundef %i.am) #10
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.an = call i32 @SSL_handle_events(ptr noundef %i.af) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.l
  %.124 = phi i64 [ %i.am, %bb.k ], [ %.02339, %bb.j ], [ 0, %bb.l ]
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ap = call i64 @llvm.umin.i64(i64 %.040, i64 16384)
  %i.aq = call i32 @ossl_quic_tserver_read(ptr noundef %i.ao, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.ap, ptr noundef nonnull %i.d) #10
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = load i64, ptr %i.d, align 8             ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = sub i64 %.040, %i.as                    ; 2 uses
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1725, ptr noundef nonnull @.str.292, i64 noundef %i.au) #10
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1727, ptr noundef nonnull @.str.293, i64 noundef %.040) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i64 [ %i.au, %bb.n ], [ %.040, %bb.o ] ; 2 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.aw = call i32 @ossl_quic_tserver_tick(ptr noundef %i.av) #10 ; 0 uses
  %.not34 = icmp eq i64 %.1, 0
  br i1 %.not34, label %bb.q, label %bb.h, !llvm.loop !51

bb.q:                                             ; preds = %bb.p
  %i.ax = call i64 @qtest_get_stopwatch_time() #10
  %i.ay = udiv i64 2097152, %i.ax                 ; 2 uses
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1734, ptr noundef nonnull @.str.294, i32 noundef 1000, i64 noundef %i.ay) #10
  %i.az = call i32 @test_uint64_t_lt(ptr noundef nonnull @.str.14, i32 noundef 1736, ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.296, i64 noundef %i.ay, i64 noundef 1000) #10
  %.not35 = icmp ne i32 %i.az, 0
  %spec.select = zext i1 %.not35 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.q, %bb.f, %bb.e, %bb.c, %bb.d, %bb.a, %bb.b
  %.027 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %spec.select, %bb.q ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.j ]
  %.026 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.q, %bb.q ], [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ %i.q, %bb.j ]
  %.025 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.q ], [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ null, %bb.c ], [ %i.s, %bb.j ]
  call void @CRYPTO_free(ptr noundef %.026, ptr noundef nonnull @.str.14, i32 noundef 1741) #10
  call void @CRYPTO_free(ptr noundef %.025, ptr noundef nonnull @.str.14, i32 noundef 1742) #10
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ossl_quic_tserver_free(ptr noundef %i.ba) #10
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.bb) #10
  call void @SSL_CTX_free(ptr noundef %i.h) #10
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !27
  call void @qtest_fault_free(ptr noundef %i.bc) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_get_shutdown() #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.d = tail call ptr @OSSL_QUIC_client_method() #10
  %i.e = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.c, ptr noundef null, ptr noundef %i.d) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1460, ptr noundef nonnull @.str.74, ptr noundef %i.e) #10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @libctx, align 8, !tbaa !11
  %i.h = load ptr, ptr @cert, align 8, !tbaa !15
  %i.i = load ptr, ptr @privkey, align 8, !tbaa !15
  %i.j = call i32 @qtest_create_quic_objects(ptr noundef %i.g, ptr noundef %i.e, ptr noundef null, ptr noundef %i.h, ptr noundef %i.i, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #10
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1465, ptr noundef nonnull @.str.146, i32 noundef %i.l) #10
  %.not3 = icmp eq i32 %i.m, 0
  br i1 %.not3, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.p = call i32 @qtest_create_quic_connection(ptr noundef %i.n, ptr noundef %i.o) #10
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1466, ptr noundef nonnull @.str.79, i32 noundef %i.r) #10
  %.not4 = icmp eq i32 %i.s, 0
  br i1 %.not4, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !17
end_hunk_0
