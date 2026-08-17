inline.NumInlined: 120
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@test_ciphersuite_change:bb.a
  %i.cy = call i32 @SSL_session_reused(ptr noundef %i.cx) #24
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 5519, ptr noundef nonnull @.str.294, i32 noundef %i.da) #24
  %.not25 = icmp eq i32 %i.db, 0
  br i1 %.not25, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @SSL_SESSION_free(ptr noundef %i.bu) #24
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.dd = call i32 @SSL_shutdown(ptr noundef %i.dc) #24 ; 0 uses
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.df = call i32 @SSL_shutdown(ptr noundef %i.de) #24 ; 0 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.dg) #24
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.dh) #24
  store ptr null, ptr %i.c, align 8, !tbaa !23
  store ptr null, ptr %i.d, align 8, !tbaa !23
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dj = call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.di, ptr noundef nonnull @.str.581) #24
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5531, ptr noundef nonnull @.str.612, i32 noundef %i.dl) #24
  %.not26 = icmp eq i32 %i.dm, 0
  br i1 %.not26, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dp = call i32 @create_ssl_objects(ptr noundef %i.dn, ptr noundef %i.do, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #24
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5533, ptr noundef nonnull @.str.171, i32 noundef %i.dr) #24
  %.not27 = icmp eq i32 %i.ds, 0
  br i1 %.not27, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.dv = call i32 @create_ssl_connection(ptr noundef %i.dt, ptr noundef %i.du, i32 noundef 0) #24
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5535, ptr noundef nonnull @.str.172, i32 noundef %i.dx) #24
  %.not28 = icmp eq i32 %i.dy, 0
  br i1 %.not28, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ea = call ptr @SSL_get1_session(ptr noundef %i.dz) #24 ; 10 uses
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ec = call i32 @SSL_shutdown(ptr noundef %i.eb) #24 ; 0 uses
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.ee = call i32 @SSL_shutdown(ptr noundef %i.ed) #24 ; 0 uses
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.ef) #24
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.eg) #24
  store ptr null, ptr %i.c, align 8, !tbaa !23
  store ptr null, ptr %i.d, align 8, !tbaa !23
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ei = call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.eh, ptr noundef nonnull @.str.614) #24
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %i.el = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5546, ptr noundef nonnull @.str.613, i32 noundef %i.ek) #24
  %.not29 = icmp eq i32 %i.el, 0
  br i1 %.not29, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.en = call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.em, ptr noundef nonnull @.str.581) #24
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %i.eq = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5548, ptr noundef nonnull @.str.615, i32 noundef %i.ep) #24
  %.not30 = icmp eq i32 %i.eq, 0
  br i1 %.not30, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.et = call i32 @create_ssl_objects(ptr noundef %i.er, ptr noundef %i.es, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #24
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5550, ptr noundef nonnull @.str.171, i32 noundef %i.ev) #24
  %.not31 = icmp eq i32 %i.ew, 0
  br i1 %.not31, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ey = call i32 @SSL_set_session(ptr noundef %i.ex, ptr noundef %i.ea) #24
  %i.ez = icmp ne i32 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5551, ptr noundef nonnull @.str.611, i32 noundef %i.fa) #24
  %.not32 = icmp eq i32 %i.fb, 0
  br i1 %.not32, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.fe = call i32 @create_ssl_connection(ptr noundef %i.fc, ptr noundef %i.fd, i32 noundef 2) #24
  %i.ff = icmp ne i32 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 5558, ptr noundef nonnull @.str.616, i32 noundef %i.fg) #24
  %.not33 = icmp eq i32 %i.fh, 0
  br i1 %.not33, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ea, i64 760
  store ptr %i.al, ptr %i.fi, align 8, !tbaa !46
  %i.fj = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !56
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ea, i64 768
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !58
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.fo = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.fp = call i32 @create_ssl_connection(ptr noundef %i.fn, ptr noundef %i.fo, i32 noundef 1) #24
  %i.fq = icmp ne i32 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 5571, ptr noundef nonnull @.str.228, i32 noundef %i.fr) #24
  %.not34 = icmp eq i32 %i.fs, 0
  br i1 %.not34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ft = call i64 @ERR_get_error() #24           ; 2 uses
  %i.fu = and i64 %i.ft, 2147483648
  %.not.i = icmp eq i64 %i.fu, 0
  %i.fv = trunc i64 %i.ft to i32
  %.0.v.i = select i1 %.not.i, i32 8388607, i32 2147483647
  %.0.i = and i32 %.0.v.i, %i.fv
  %i.fw = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 5573, ptr noundef nonnull @.str.574, ptr noundef nonnull @.str.617, i32 noundef %.0.i, i32 noundef 218) #24
  %.not35 = icmp ne i32 %i.fw, 0
  %spec.select = zext i1 %.not35 to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.p, %bb.q, %bb.r, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.011 = phi ptr [ null, %bb.a ], [ %i.ea, %bb.y ], [ %i.ea, %bb.x ], [ %i.ea, %bb.w ], [ %i.ea, %bb.v ], [ %i.ea, %bb.u ], [ %i.ea, %bb.t ], [ %i.ea, %bb.s ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ %i.bu, %bb.o ], [ %i.bu, %bb.n ], [ %i.bu, %bb.m ], [ %i.bu, %bb.l ], [ %i.bu, %bb.k ], [ %i.ak, %bb.j ], [ %i.ak, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.g ], [ %i.ak, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @SSL_SESSION_free(ptr noundef %.011) #24
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.fx) #24
  %i.fy = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.fy) #24
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.fz) #24
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.ga) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_tls13_ciphersuite(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !23
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.not41 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.e ] ; 2 uses
  %i.e = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %.036 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ @.str.620, %bb.d ], [ @.str.620, %bb.e ] ; 5 uses
  %.not38 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.e ]
  %.not45 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ]
  %.b.pre61.pre = load i1, ptr @is_fips, align 4
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.af
  %.b.pre61 = phi i1 [ %.b.pre61.pre, %bb.f ], [ %.b.pre6164, %bb.af ] ; 2 uses
  %i.f = phi i1 [ false, %bb.f ], [ true, %bb.af ] ; 2 uses
  %.03258 = phi i32 [ 771, %bb.f ], [ 772, %bb.af ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.ae
  %.b.pre6165 = phi i1 [ %.b.pre61, %.preheader ], [ %.b.pre6164, %bb.ae ]
  %.b = phi i1 [ %.b.pre61, %.preheader ], [ %.b62, %bb.ae ]
  %.057 = phi i64 [ 0, %.preheader ], [ %i.cj, %bb.ae ] ; 4 uses
  br i1 %.b, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.g = shl nuw nsw i64 1, %.057
  %i.h = and i64 %i.g, 216
  %.not.not = icmp eq i64 %i.h, 0
  br i1 %.not.not, label %bb.i, label %bb.ae

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @test_tls13_ciphersuite.t13_ciphers, i64 %.057
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !59  ; 5 uses
  %i.k = load ptr, ptr @libctx, align 8, !tbaa !9
  %i.l = call ptr @TLS_server_method() #24
  %i.m = call ptr @TLS_client_method() #24
  %i.n = load ptr, ptr @cert, align 8, !tbaa !14
  %i.o = load ptr, ptr @privkey, align 8, !tbaa !14
  %i.p = call i32 @create_ssl_ctx_pair(ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, i32 noundef 769, i32 noundef %.03258, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef %i.o) #24
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6176, ptr noundef nonnull @.str.621, i32 noundef %i.r) #24
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not37 = icmp samesign ult i64 %.057, 5
  br i1 %.not37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_set_security_level(ptr noundef %i.t, i32 noundef 0) #24
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_set_security_level(ptr noundef %i.u, i32 noundef 0) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not38, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.w = call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.v, ptr noundef %i.j) #24
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6185, ptr noundef nonnull @.str.622, i32 noundef %i.y) #24
  %.not39 = icmp eq i32 %i.z, 0
  br i1 %.not39, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ab = call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.aa, ptr noundef %i.j) #24
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6186, ptr noundef nonnull @.str.623, i32 noundef %i.ad) #24
  %.not40 = icmp eq i32 %i.ae, 0
  br i1 %.not40, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not41, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ag = call i32 @SSL_CTX_set_cipher_list(ptr noundef %i.af, ptr noundef %.036) #24
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6189, ptr noundef nonnull @.str.624, i32 noundef %i.ai) #24
  %.not42 = icmp eq i32 %i.aj, 0
  br i1 %.not42, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.al = call i32 @SSL_CTX_set_cipher_list(ptr noundef %i.ak, ptr noundef %.036) #24
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6191, ptr noundef nonnull @.str.625, i32 noundef %i.an) #24
  %.not43 = icmp eq i32 %i.ao, 0
  br i1 %.not43, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.l
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ar = call i32 @create_ssl_objects(ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #24
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6197, ptr noundef nonnull @.str.171, i32 noundef %i.at) #24
  %.not44 = icmp eq i32 %i.au, 0
  br i1 %.not44, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not45, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.aw = call i32 @SSL_set_ciphersuites(ptr noundef %i.av, ptr noundef %i.j) #24
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6201, ptr noundef nonnull @.str.626, i32 noundef %i.ay) #24
  %.not46 = icmp eq i32 %i.az, 0
  br i1 %.not46, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.bb = call i32 @SSL_set_ciphersuites(ptr noundef %i.ba, ptr noundef %i.j) #24
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6202, ptr noundef nonnull @.str.627, i32 noundef %i.bd) #24
  %.not47 = icmp eq i32 %i.be, 0
  br i1 %.not47, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not41, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.bg = call i32 @SSL_set_cipher_list(ptr noundef %i.bf, ptr noundef %.036) #24
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6205, ptr noundef nonnull @.str.628, i32 noundef %i.bi) #24
  %.not49 = icmp eq i32 %i.bj, 0
  br i1 %.not49, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.bl = call i32 @SSL_set_cipher_list(ptr noundef %i.bk, ptr noundef %.036) #24
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6207, ptr noundef nonnull @.str.629, i32 noundef %i.bn) #24
  %.not50 = icmp eq i32 %i.bo, 0
  br i1 %.not50, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.s
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.br = call i32 @create_ssl_connection(ptr noundef %i.bp, ptr noundef %i.bq, i32 noundef 0) #24
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6213, ptr noundef nonnull @.str.172, i32 noundef %i.bt) #24
  %.not51 = icmp eq i32 %i.bu, 0
  br i1 %.not51, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.bw = call ptr @SSL_get_current_cipher(ptr noundef %i.bv) #24
  %i.bx = call ptr @SSL_CIPHER_get_name(ptr noundef %i.bw) #24 ; 4 uses
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.bz = call ptr @SSL_get_current_cipher(ptr noundef %i.by) #24
  %i.ca = call ptr @SSL_CIPHER_get_name(ptr noundef %i.bz) #24
  %i.cb = call i32 @test_str_eq(ptr noundef nonnull @.str.14, i32 noundef 6220, ptr noundef nonnull @.str.630, ptr noundef nonnull @.str.631, ptr noundef %i.bx, ptr noundef %i.ca) #24
  %.not52 = icmp eq i32 %i.cb, 0
  br i1 %.not52, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.f, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #25
  %i.cd = call i32 @test_strn_eq(ptr noundef nonnull @.str.14, i32 noundef 6229, ptr noundef nonnull @.str.632, ptr noundef nonnull @.str.630, ptr noundef %i.j, ptr noundef nonnull %i.bx, i64 noundef %i.cc) #24
  %.not53 = icmp eq i32 %i.cd, 0
  br i1 %.not53, label %.loopexit, label %.thread

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.e, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ce = call i32 @test_str_eq(ptr noundef nonnull @.str.14, i32 noundef 6235, ptr noundef nonnull @.str.633, ptr noundef nonnull @.str.630, ptr noundef %.036, ptr noundef %i.bx) #24
  %.not54 = icmp eq i32 %i.ce, 0
  br i1 %.not54, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.ab, %bb.ad, %bb.ac
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.cf) #24
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.cg) #24
  store ptr null, ptr %i.d, align 8, !tbaa !23
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.ch) #24
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.ci) #24
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %.b.pre = load i1, ptr @is_fips, align 4        ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.h, %.thread
  %.b.pre6164 = phi i1 [ %.b.pre6165, %bb.h ], [ %.b.pre, %.thread ] ; 2 uses
  %.b62 = phi i1 [ true, %bb.h ], [ %.b.pre, %.thread ]
  %i.cj = add nuw nsw i64 %.057, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, 8
  br i1 %exitcond.not, label %bb.af, label %bb.g, !llvm.loop !61

bb.af:                                            ; preds = %bb.ae
  br i1 %i.f, label %.loopexit, label %.preheader, !llvm.loop !62

.loopexit:                                        ; preds = %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.w, %bb.x, %bb.t, %bb.u, %bb.r, %bb.p, %bb.q, %bb.m, %bb.n, %bb.i
  %.033 = phi i32 [ 0, %bb.ad ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 1, %bb.af ]
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.ck) #24
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.cl) #24
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.cm) #24
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.cn) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_tls13_psk(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 25 uses
  %i.d = alloca ptr, align 8                      ; 25 uses
  %i.e = alloca [48 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, ptr noundef nonnull align 16 dereferenceable(48) @__const.test_tls13_psk.key, i64 48, i1 false)
  %i.f = load ptr, ptr @libctx, align 8, !tbaa !9
  %i.g = tail call ptr @TLS_server_method() #24
  %i.h = tail call ptr @TLS_client_method() #24
  %i.i = icmp eq i32 %0, 3                        ; 5 uses
  %i.j = load ptr, ptr @cert, align 8
  %i.k = select i1 %i.i, ptr null, ptr %i.j
  %i.l = load ptr, ptr @privkey, align 8
  %i.m = select i1 %i.i, ptr null, ptr %i.l
  %i.n = call i32 @create_ssl_ctx_pair(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, i32 noundef 769, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef %i.m) #24
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6282, ptr noundef nonnull @.str.634, i32 noundef %i.p) #24
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.r, ptr noundef nonnull @.str.580) #24
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6293, ptr noundef nonnull @.str.603, i32 noundef %i.u) #24
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %bb.br, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = call i32 @SSL_CTX_set_ciphersuites(ptr noundef %i.r, ptr noundef nonnull @.str.636) #24
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6303, ptr noundef nonnull @.str.635, i32 noundef %i.y) #24
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %bb.br, label %.thread90

bb.e:                                             ; preds = %bb.c
  %or.cond = icmp ult i32 %0, 2                   ; 3 uses
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_set_psk_use_session_callback(ptr noundef %i.aa, ptr noundef nonnull @use_session_cb) #24
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_set_psk_find_session_callback(ptr noundef %i.ab, ptr noundef nonnull @find_session_cb) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ac = icmp sgt i32 %0, 0
  br i1 %i.ac, label %.thread90, label %.thread94

.thread94:                                        ; preds = %bb.g
  store ptr @.str.306, ptr @srvid, align 8, !tbaa !14
  store i32 0, ptr @use_session_cb_cnt, align 4, !tbaa !17
  store i32 0, ptr @find_session_cb_cnt, align 4, !tbaa !17
  store i32 0, ptr @psk_client_cb_cnt, align 4, !tbaa !17
  store i32 0, ptr @psk_server_cb_cnt, align 4, !tbaa !17
  br label %bb.h

.thread90:                                        ; preds = %bb.d, %bb.g
  %or.cond8993 = phi i1 [ %or.cond, %bb.g ], [ false, %bb.d ] ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_set_psk_client_callback(ptr noundef %i.ad, ptr noundef nonnull @psk_client_cb) #24
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_set_psk_server_callback(ptr noundef %i.ae, ptr noundef nonnull @psk_server_cb) #24
  store ptr @.str.306, ptr @srvid, align 8, !tbaa !14
  store i32 0, ptr @use_session_cb_cnt, align 4, !tbaa !17
  store i32 0, ptr @find_session_cb_cnt, align 4, !tbaa !17
  store i32 0, ptr @psk_client_cb_cnt, align 4, !tbaa !17
  store i32 0, ptr @psk_server_cb_cnt, align 4, !tbaa !17
  br i1 %i.i, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.thread94, %.thread90
  %or.cond899296 = phi i1 [ %or.cond, %.thread94 ], [ %or.cond8993, %.thread90 ] ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ah = call i32 @create_ssl_objects(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #24
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6334, ptr noundef nonnull @.str.171, i32 noundef %i.aj) #24
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %bb.br, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.an = call i32 @create_ssl_connection(ptr noundef %i.al, ptr noundef %i.am, i32 noundef 0) #24
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6336, ptr noundef nonnull @.str.172, i32 noundef %i.ap) #24
  %.not34 = icmp eq i32 %i.aq, 0
  br i1 %.not34, label %bb.br, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.as = call i32 @SSL_session_reused(ptr noundef %i.ar) #24
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 6337, ptr noundef nonnull @.str.294, i32 noundef %i.au) #24
  %.not35 = icmp eq i32 %i.av, 0
  br i1 %.not35, label %bb.br, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ax = call i32 @SSL_session_reused(ptr noundef %i.aw) #24
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 6338, ptr noundef nonnull @.str.456, i32 noundef %i.az) #24
  %.not36 = icmp eq i32 %i.ba, 0
  br i1 %.not36, label %bb.br, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr @use_session_cb_cnt, align 4, !tbaa !17 ; 2 uses
  br i1 %or.cond899296, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp eq i32 %i.bb, 1
  %i.bd = zext i1 %i.bc to i32
  %i.be = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6342, ptr noundef nonnull @.str.637, i32 noundef %i.bd) #24
  %.not41 = icmp eq i32 %i.be, 0
  br i1 %.not41, label %bb.br, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i32, ptr @find_session_cb_cnt, align 4, !tbaa !17
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 6343, ptr noundef nonnull @.str.638, i32 noundef %i.bh) #24
  %.not42 = icmp eq i32 %i.bi, 0
  br i1 %.not42, label %bb.br, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr @psk_client_cb_cnt, align 4, !tbaa !17
  %i.bk = icmp eq i32 %i.bj, %0
  %i.bl = zext i1 %i.bk to i32
end_hunk_0
