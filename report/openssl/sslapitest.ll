inline.NumInlined: 120
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@test_extra_tickets:bb.a
  %i.fz = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ga = call i32 @SSL_do_handshake(ptr noundef %i.fz) #24
  %i.gb = icmp ne i32 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3447, ptr noundef nonnull @.str.320, i32 noundef %i.gc) #24
  %.not64 = icmp eq i32 %i.gd, 0
  br i1 %.not64, label %bb.bo, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ge = load i32, ptr @new_called, align 4, !tbaa !17
  %i.gf = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3448, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.257, i32 noundef 0, i32 noundef %i.ge) #24
  %.not65 = icmp eq i32 %i.gf, 0
  br i1 %.not65, label %bb.bo, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.gh = call i32 @SSL_write_ex(ptr noundef %i.gg, ptr noundef nonnull %i.f, i64 noundef 1, ptr noundef nonnull %i.e) #24
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  %i.gk = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3451, ptr noundef nonnull @.str.309, i32 noundef %i.gj) #24
  %.not66 = icmp eq i32 %i.gk, 0
  br i1 %.not66, label %bb.bo, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gl = load i64, ptr %i.e, align 8, !tbaa !19
  %i.gm = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 3452, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.310, i64 noundef 1, i64 noundef %i.gl) #24
  %.not67 = icmp eq i32 %i.gm, 0
  br i1 %.not67, label %bb.bo, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = load i32, ptr @new_called, align 4, !tbaa !17
  %i.go = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3453, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.257, i32 noundef 0, i32 noundef %i.gn) #24
  %.not68 = icmp eq i32 %i.go, 0
  br i1 %.not68, label %bb.bo, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gp = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.gq = call i32 @SSL_read_ex(ptr noundef %i.gp, ptr noundef nonnull %i.g, i64 noundef 1, ptr noundef nonnull %i.e) #24
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %i.gt = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3454, ptr noundef nonnull @.str.312, i32 noundef %i.gs) #24
  %.not69 = icmp eq i32 %i.gt, 0
  br i1 %.not69, label %bb.bo, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gu = load i32, ptr @new_called, align 4, !tbaa !17
  %i.gv = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3455, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.257, i32 noundef 0, i32 noundef %i.gu) #24
  %.not70 = icmp eq i32 %i.gv, 0
  br i1 %.not70, label %bb.bo, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gw = load i64, ptr %i.e, align 8, !tbaa !19
  %i.gx = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 3456, ptr noundef nonnull @.str.314, ptr noundef nonnull @.str.310, i64 noundef 1, i64 noundef %i.gw) #24
  %.not71 = icmp eq i32 %i.gx, 0
  br i1 %.not71, label %bb.bo, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gy = load i8, ptr %i.f, align 1, !tbaa !29
  %i.gz = zext i8 %i.gy to i32
  %i.ha = load i8, ptr %i.g, align 1, !tbaa !29
  %i.hb = zext i8 %i.ha to i32
  %i.hc = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3457, ptr noundef nonnull @.str.315, ptr noundef nonnull @.str.316, i32 noundef %i.gz, i32 noundef %i.hb) #24
  %.not72 = icmp eq i32 %i.hc, 0
  br i1 %.not72, label %bb.bo, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.he = call i32 @SSL_read_ex(ptr noundef %i.hd, ptr noundef nonnull %i.g, i64 noundef 1, ptr noundef nonnull %i.e) #24
  %i.hf = icmp ne i32 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 3458, ptr noundef nonnull @.str.312, i32 noundef %i.hg) #24
  %.not73 = icmp eq i32 %i.hh, 0
  br i1 %.not73, label %bb.bo, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.hj = call i32 @SSL_do_handshake(ptr noundef %i.hi) #24
  %i.hk = icmp ne i32 %i.hj, 0
  %i.hl = zext i1 %i.hk to i32
  %i.hm = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3461, ptr noundef nonnull @.str.320, i32 noundef %i.hl) #24
  %.not74 = icmp eq i32 %i.hm, 0
  br i1 %.not74, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hn = load i32, ptr @new_called, align 4, !tbaa !17
  %i.ho = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3462, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.257, i32 noundef 0, i32 noundef %i.hn) #24
  %.not75 = icmp eq i32 %i.ho, 0
  br i1 %.not75, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i8 54, ptr %i.f, align 1, !tbaa !29
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.hq = call i32 @SSL_write_ex(ptr noundef %i.hp, ptr noundef nonnull %i.f, i64 noundef 1, ptr noundef nonnull %i.e) #24
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = zext i1 %i.hr to i32
  %i.ht = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3466, ptr noundef nonnull @.str.309, i32 noundef %i.hs) #24
  %.not76 = icmp eq i32 %i.ht, 0
  br i1 %.not76, label %bb.bo, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hu = load i64, ptr %i.e, align 8, !tbaa !19
  %i.hv = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 3467, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.310, i64 noundef 1, i64 noundef %i.hu) #24
  %.not77 = icmp eq i32 %i.hv, 0
  br i1 %.not77, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hw = load i32, ptr @new_called, align 4, !tbaa !17
  %i.hx = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3468, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.257, i32 noundef 2, i32 noundef %i.hw) #24
  %.not78 = icmp eq i32 %i.hx, 0
  br i1 %.not78, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hy = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.hz = call i32 @SSL_read_ex(ptr noundef %i.hy, ptr noundef nonnull %i.g, i64 noundef 1, ptr noundef nonnull %i.e) #24
  %i.ia = icmp ne i32 %i.hz, 0
  %i.ib = zext i1 %i.ia to i32
  %i.ic = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3469, ptr noundef nonnull @.str.312, i32 noundef %i.ib) #24
  %.not79 = icmp eq i32 %i.ic, 0
  br i1 %.not79, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.id = load i32, ptr @new_called, align 4, !tbaa !17
  %i.ie = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3470, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.257, i32 noundef 4, i32 noundef %i.id) #24
  %.not80 = icmp eq i32 %i.ie, 0
  br i1 %.not80, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.if = load i64, ptr %i.e, align 8, !tbaa !19
  %i.ig = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 3471, ptr noundef nonnull @.str.314, ptr noundef nonnull @.str.310, i64 noundef 1, i64 noundef %i.if) #24
  %.not81 = icmp eq i32 %i.ig, 0
  br i1 %.not81, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ih = load i8, ptr %i.f, align 1, !tbaa !29
  %i.ii = zext i8 %i.ih to i32
  %i.ij = load i8, ptr %i.g, align 1, !tbaa !29
  %i.ik = zext i8 %i.ij to i32
  %i.il = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3472, ptr noundef nonnull @.str.315, ptr noundef nonnull @.str.316, i32 noundef %i.ii, i32 noundef %i.ik) #24
  %.not82 = icmp eq i32 %i.il, 0
  br i1 %.not82, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.im = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.in = call i32 @SSL_read_ex(ptr noundef %i.im, ptr noundef nonnull %i.g, i64 noundef 1, ptr noundef nonnull %i.e) #24
  %i.io = icmp ne i32 %i.in, 0
  %i.ip = zext i1 %i.io to i32
  %i.iq = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 3473, ptr noundef nonnull @.str.312, i32 noundef %i.ip) #24
  %.not83 = icmp eq i32 %i.iq, 0
  br i1 %.not83, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ir = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.is = call i32 @SSL_shutdown(ptr noundef %i.ir) #24 ; 0 uses
  %i.it = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.iu = call i32 @SSL_shutdown(ptr noundef %i.it) #24 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.al, %bb.am, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bd, %bb.be, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.an, %bb.ao, %bb.ap, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.c, %bb.a, %bb.b, %bb.bn
  %.017 = phi ptr [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %bb.be ], [ null, %bb.bd ], [ null, %bb.bc ], [ null, %bb.bb ], [ null, %bb.ba ], [ null, %bb.az ], [ null, %bb.ay ], [ null, %bb.ax ], [ null, %bb.aw ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.an ], [ %i.i, %bb.a ], [ %i.i, %bb.ak ], [ %i.i, %bb.aj ], [ %i.i, %bb.ai ], [ %i.i, %bb.ah ], [ %i.i, %bb.ag ], [ %i.i, %bb.af ], [ %i.i, %bb.ae ], [ %i.i, %bb.ad ], [ %i.i, %bb.ac ], [ %i.i, %bb.ab ], [ %i.i, %bb.aa ], [ %i.i, %bb.z ], [ %i.i, %bb.y ], [ %i.i, %bb.x ], [ %i.i, %bb.w ], [ %i.i, %bb.v ], [ %i.i, %bb.u ], [ %i.i, %bb.t ], [ %i.i, %bb.s ], [ %i.i, %bb.r ], [ %i.i, %bb.q ], [ %i.i, %bb.p ], [ %i.i, %bb.o ], [ %i.i, %bb.n ], [ %i.i, %bb.m ], [ %i.i, %bb.l ], [ %i.i, %bb.k ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %i.i, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.i, %bb.am ], [ %i.i, %bb.al ]
  %.016 = phi ptr [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %bb.be ], [ null, %bb.bd ], [ null, %bb.bc ], [ null, %bb.bb ], [ null, %bb.ba ], [ null, %bb.az ], [ null, %bb.ay ], [ null, %bb.ax ], [ null, %bb.aw ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ], [ %i.ev, %bb.ap ], [ %i.ev, %bb.ao ], [ %i.ev, %bb.an ], [ null, %bb.a ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %bb.ai ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.am ], [ null, %bb.al ]
  %.015 = phi i32 [ 1, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.an ], [ 0, %bb.a ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.am ], [ 0, %bb.al ]
  %i.iv = call i32 @BIO_free(ptr noundef %.017) #24 ; 0 uses
  %i.iw = call i32 @BIO_free(ptr noundef %.016) #24 ; 0 uses
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.ix) #24
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.iy) #24
  %i.iz = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.iz) #24
  %i.ja = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.ja) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ssl_set_bio(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !23
  %i.e = icmp slt i32 %0, 81
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = insertelement <4 x i32> poison, i32 %0, i64 0
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> zeroinitializer
  %3 = sdiv <4 x i32> %2, <i32 1, i32 3, i32 9, i32 27>
  %4 = srem <4 x i32> %3, splat (i32 3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %0, -81                      ; 3 uses
  %5 = lshr i32 %i.f, 1
  %6 = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %7 = insertelement <2 x i32> %6, i32 %5, i64 1
  %8 = and <2 x i32> %7, splat (i32 1)
  %i.g = lshr i32 %i.f, 2
  %i.h = and i32 %i.g, 1
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x i32> <i32 3, i32 3, i32 poison, i32 poison>, <4 x i32> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %11 = freeze <4 x i32> %10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.052 = phi i32 [ 2, %bb.b ], [ %i.h, %bb.c ]   ; 3 uses
  %.fr = phi <4 x i32> [ %4, %bb.b ], [ %11, %bb.c ] ; 6 uses
  %i.i = load ptr, ptr @libctx, align 8, !tbaa !9
  %i.j = tail call ptr @TLS_server_method() #24
  %i.k = tail call ptr @TLS_client_method() #24
  %i.l = load ptr, ptr @cert, align 8, !tbaa !14
  %i.m = load ptr, ptr @privkey, align 8, !tbaa !14
  %i.n = call i32 @create_ssl_ctx_pair(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 769, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.m) #24
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3572, ptr noundef nonnull @.str.252, i32 noundef %i.p) #24
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %.052, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.t = call i64 @SSL_CTX_ctrl(ptr noundef %i.s, i32 noundef 123, i64 noundef 772, ptr noundef null) #24 ; 0 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.v = call i64 @SSL_CTX_ctrl(ptr noundef %i.u, i32 noundef 124, i64 noundef 771, ptr noundef null) #24 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.y = call i32 @create_ssl_objects(ptr noundef %i.w, ptr noundef %i.x, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #24
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3587, ptr noundef nonnull @.str.171, i32 noundef %i.aa) #24
  %.not69 = icmp eq i32 %i.ab, 0
  br i1 %.not69, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %bb.g
  %12 = icmp eq <4 x i32> %.fr, splat (i32 1)
  %13 = bitcast <4 x i1> %12 to i4
  %i.ac = icmp eq i4 %13, 0
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call ptr @BIO_s_mem() #24
  %i.ae = call ptr @BIO_new(ptr noundef %i.ad) #24 ; 3 uses
  %i.af = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3594, ptr noundef nonnull @.str.325, ptr noundef %i.ae) #24
  %.not70 = icmp eq i32 %i.af, 0
  br i1 %.not70, label %bb.aj, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.057 = phi ptr [ %i.ae, %bb.i ], [ null, %bb.h ] ; 12 uses
  %14 = icmp eq <4 x i32> %.fr, splat (i32 2)
  %15 = bitcast <4 x i1> %14 to i4
  %i.ag = icmp eq i4 %15, 0
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call ptr @BIO_s_mem() #24
  %i.ai = call ptr @BIO_new(ptr noundef %i.ah) #24 ; 3 uses
  %i.aj = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3602, ptr noundef nonnull @.str.326, ptr noundef %i.ai) #24
  %.not71 = icmp eq i32 %i.aj, 0
  br i1 %.not71, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.056 = phi ptr [ %i.ai, %bb.k ], [ null, %bb.j ] ; 11 uses
  %16 = extractelement <4 x i32> %.fr, i64 0
  switch i32 %16, label %setupbio.exit [
    i32 3, label %bb.u
    i32 2, label %bb.n
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %setupbio.exit

bb.n:                                             ; preds = %bb.l
  br label %setupbio.exit

setupbio.exit:                                    ; preds = %bb.l, %bb.m, %bb.n
  %.1135 = phi ptr [ null, %bb.l ], [ %.056, %bb.n ], [ %.057, %bb.m ] ; 7 uses
  %17 = extractelement <4 x i32> %.fr, i64 1
  switch i32 %17, label %setupbio.exit101 [
    i32 2, label %bb.p
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %setupbio.exit
  br label %setupbio.exit101

bb.p:                                             ; preds = %setupbio.exit
  br label %setupbio.exit101

setupbio.exit101:                                 ; preds = %bb.o, %bb.p, %setupbio.exit
  %.1133 = phi ptr [ null, %setupbio.exit ], [ %.056, %bb.p ], [ %.057, %bb.o ] ; 6 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_set_bio(ptr noundef %i.ak, ptr noundef %.1135, ptr noundef %.1133) #24
  %.not73 = icmp eq ptr %.1135, null
  br i1 %.not73, label %bb.r, label %bb.q

bb.q:                                             ; preds = %setupbio.exit101
  %i.al = call i32 @BIO_up_ref(ptr noundef nonnull %.1135) #24
  %.not74 = icmp eq i32 %i.al, 0
  br i1 %.not74, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q, %setupbio.exit101
  %.not75 = icmp eq ptr %.1133, null
  %.not76 = icmp eq ptr %.1133, %.1135
  %or.cond92 = or i1 %.not75, %.not76
  br i1 %or.cond92, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = call i32 @BIO_up_ref(ptr noundef nonnull %.1133) #24
  %.not77 = icmp eq i32 %i.am, 0
  br i1 %.not77, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = call i32 @BIO_free(ptr noundef %.1135) #24 ; 0 uses
  br label %bb.aj

bb.u:                                             ; preds = %bb.l, %bb.r, %bb.s
  %.0134 = phi ptr [ null, %bb.l ], [ %.1135, %bb.r ], [ %.1135, %bb.s ] ; 2 uses
  %.0132 = phi ptr [ null, %bb.l ], [ %.1133, %bb.r ], [ %.1133, %bb.s ] ; 3 uses
  %.not78 = icmp eq i32 %.052, 2
  br i1 %.not78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.aq = call i32 @create_ssl_connection(ptr noundef %i.ao, ptr noundef %i.ap, i32 noundef 0) #24
  %i.ar = icmp eq i32 %.052, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.aq, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3627, ptr noundef nonnull @.str.327, i32 noundef %i.au) #24
  %.not79 = icmp eq i32 %i.av, 0
  br i1 %.not79, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %18 = extractelement <4 x i32> %.fr, i64 2
  switch i32 %18, label %setupbio.exit104 [
    i32 2, label %bb.y
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %setupbio.exit104

bb.y:                                             ; preds = %bb.w
  br label %setupbio.exit104

setupbio.exit104:                                 ; preds = %bb.x, %bb.y, %bb.w
  %.0131 = phi ptr [ null, %bb.w ], [ %.056, %bb.y ], [ %.057, %bb.x ] ; 7 uses
  %19 = extractelement <4 x i32> %.fr, i64 3
  switch i32 %19, label %setupbio.exit107 [
    i32 2, label %bb.aa
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %setupbio.exit104
  br label %setupbio.exit107

bb.aa:                                            ; preds = %setupbio.exit104
  br label %setupbio.exit107

setupbio.exit107:                                 ; preds = %bb.z, %bb.aa, %setupbio.exit104
  %.0130 = phi ptr [ null, %setupbio.exit104 ], [ %.056, %bb.aa ], [ %.057, %bb.z ] ; 7 uses
  %.not80 = icmp eq ptr %.0131, null
  %.not81 = icmp eq ptr %.0131, %.0134            ; 2 uses
  %or.cond93 = or i1 %.not80, %.not81
  br i1 %or.cond93, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %setupbio.exit107
  %.not82 = icmp eq ptr %.0130, %.0132
  %.not83 = icmp eq ptr %.0131, %.0130
  %or.cond94 = and i1 %.not82, %.not83
  br i1 %or.cond94, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = call i32 @BIO_up_ref(ptr noundef nonnull %.0131) #24
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3641, ptr noundef nonnull @.str.328, i32 noundef %i.ay) #24
  %.not84 = icmp eq i32 %i.az, 0
  br i1 %.not84, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %setupbio.exit107
  %.not85 = icmp eq ptr %.0130, null
  %.not86 = icmp eq ptr %.0130, %.0131
  %or.cond95 = or i1 %.not85, %.not86
  br i1 %or.cond95, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not87 = icmp ne ptr %.0130, %.0132
  %i.ba = icmp eq ptr %.0134, %.0132
  %or.cond97 = or i1 %i.ba, %.not87
  br i1 %or.cond97, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bb = call i32 @BIO_up_ref(ptr noundef nonnull %.0130) #24
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 3646, ptr noundef nonnull @.str.329, i32 noundef %i.bd) #24
  %.not88 = icmp eq i32 %i.be, 0
  br i1 %.not88, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  br i1 %.not81, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bf = call i32 @BIO_free(ptr noundef %.0131) #24 ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_set_bio(ptr noundef %i.bg, ptr noundef %.0131, ptr noundef %.0130) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.v, %bb.q, %bb.k, %bb.i, %bb.g, %bb.d, %bb.ai, %bb.t
  %.158 = phi ptr [ %.057, %bb.ai ], [ %.057, %bb.ah ], [ null, %bb.d ], [ %.057, %bb.ag ], [ %.057, %bb.ac ], [ %.057, %bb.v ], [ %.057, %bb.t ], [ %.057, %bb.q ], [ %.057, %bb.k ], [ %i.ae, %bb.i ], [ null, %bb.g ]
  %.1 = phi ptr [ %.056, %bb.ai ], [ %.056, %bb.ah ], [ null, %bb.d ], [ %.056, %bb.ag ], [ %.056, %bb.ac ], [ %.056, %bb.v ], [ %.056, %bb.t ], [ %.056, %bb.q ], [ %i.ai, %bb.k ], [ null, %bb.i ], [ null, %bb.g ]
  %.0 = phi i32 [ 1, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.d ], [ 0, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ]
  %i.bh = call i32 @BIO_free(ptr noundef %.158) #24 ; 0 uses
  %i.bi = call i32 @BIO_free(ptr noundef %.1) #24 ; 0 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.bj) #24
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @SSL_free(ptr noundef %i.bk) #24
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.bl) #24
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @SSL_CTX_free(ptr noundef %i.bm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ssl_bio_pop_next_bio() #1 {
bb.a:
  %i.a = tail call fastcc i32 @execute_test_ssl_bio(i32 noundef 0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ssl_bio_pop_ssl_bio() #1 {
bb.a:
  %i.a = tail call fastcc i32 @execute_test_ssl_bio(i32 noundef 1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ssl_bio_change_rbio() #1 {
bb.a:
  %i.a = tail call fastcc i32 @execute_test_ssl_bio(i32 noundef 0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ssl_bio_change_wbio() #1 {
bb.a:
  %i.a = tail call fastcc i32 @execute_test_ssl_bio(i32 noundef 0, i32 noundef 2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_ssl_set_wbio_chain_no_leak() #1 {
bb.a:
  %i.a = load ptr, ptr @libctx, align 8, !tbaa !9
  %i.b = tail call ptr @TLS_method() #24
  %i.c = tail call ptr @SSL_CTX_new_ex(ptr noundef %i.a, ptr noundef null, ptr noundef %i.b) #24 ; 3 uses
  %i.d = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3756, ptr noundef nonnull @.str.330, ptr noundef %i.c) #24
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @SSL_new(ptr noundef %i.c) #24 ; 8 uses
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3758, ptr noundef nonnull @.str.331, ptr noundef %i.e) #24
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @BIO_f_nbio_test() #24
  %i.h = tail call ptr @BIO_new(ptr noundef %i.g) #24 ; 5 uses
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3761, ptr noundef nonnull @.str.335, ptr noundef %i.h) #24
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @BIO_s_mem() #24
  %i.k = tail call ptr @BIO_new(ptr noundef %i.j) #24 ; 3 uses
  %i.l = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3763, ptr noundef nonnull @.str.336, ptr noundef %i.k) #24
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @BIO_free(ptr noundef %i.h) #24 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @BIO_push(ptr noundef %i.h, ptr noundef %i.k) #24 ; 3 uses
  %i.o = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3768, ptr noundef nonnull @.str.337, ptr noundef %i.n) #24
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @BIO_free_all(ptr noundef %i.h) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @SSL_set0_wbio(ptr noundef %i.e, ptr noundef %i.n) #24
  tail call void @SSL_set0_wbio(ptr noundef %i.e, ptr noundef null) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h, %bb.g, %bb.e
  %.016 = phi ptr [ %i.e, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ]
  %.015 = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ %i.k, %bb.e ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.014 = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.e ], [ %i.h, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.013 = phi ptr [ null, %bb.h ], [ %i.n, %bb.g ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.p = tail call i32 @BIO_free(ptr noundef %.014) #24 ; 0 uses
  %i.q = tail call i32 @BIO_free(ptr noundef %.015) #24 ; 0 uses
  %i.r = tail call i32 @BIO_free(ptr noundef %.013) #24 ; 0 uses
  tail call void @SSL_free(ptr noundef %.016) #24
  tail call void @SSL_CTX_free(ptr noundef %i.c) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_set_sigalgs(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !23
  %i.e = sext i32 %0 to i64                       ; 4 uses
  %i.f = tail call i32 @test_size_t_le(ptr noundef nonnull @.str.14, i32 noundef 3845, ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.339, i64 noundef %i.e, i64 noundef 30) #24
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %0, 15                      ; 3 uses
  %i.h = getelementptr [32 x i8], ptr @testsigalgs, i64 %i.e ; 8 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -480     ; 2 uses
  %i.j = select i1 %i.g, ptr %i.h, ptr %i.i
end_hunk_0
