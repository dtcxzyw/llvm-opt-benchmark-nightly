Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_client_test?download=true
inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0_@test_get_options:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @setup_tests() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @test_skip_common_options() #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 218, ptr noundef nonnull @.str.15) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @add_test(ptr noundef nonnull @.str.16, ptr noundef nonnull @test_quic_client) #6
  tail call void @add_test(ptr noundef nonnull @.str.17, ptr noundef nonnull @test_quic_client_connect_first) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @test_skip_common_options() local_unnamed_addr #2

declare void @test_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @add_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_quic_client() #1 {
bb.a:
  %i.a = tail call fastcc i32 @test_quic_client_ex(i32 noundef -1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_quic_client_connect_first() #1 {
bb.a:
  %0 = alloca %struct.sockaddr_in, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 4
  store i16 2, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 20753, ptr %i.b, align 2, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 16777343, ptr %i.c, align 4, !tbaa !14
  %i.d = tail call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #6 ; 6 uses
  %i.e = tail call i32 @test_int_ne(ptr noundef nonnull @.str.14, i32 noundef 192, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %i.d, i32 noundef -1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @connect(i32 noundef %i.d, ptr noundef nonnull %0, i32 noundef 16) #6
  %i.g = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 195, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %i.f, i32 noundef 0) #6
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @BIO_socket_nbio(i32 noundef %i.d, i32 noundef 1) #6
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 198, ptr noundef nonnull @.str.20, i32 noundef %i.j) #6
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call fastcc i32 @test_quic_client_ex(i32 noundef %i.d)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not12 = icmp eq i32 %i.d, -1
  br i1 %.not12, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.0.ph = phi i32 [ %i.l, %bb.d ], [ 0, %bb.e ]
  %i.m = call i32 @close(i32 noundef %i.d) #6     ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_quic_client_ex(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.in_addr, align 4            ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [9 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 0, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @__const.test_quic_client_ex.alpn, i64 9, i1 false)
  %i.c = icmp eq i32 %0, -1                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @BIO_socket(i32 noundef 2, i32 noundef 2, i32 noundef 17, i32 noundef 0) #6 ; 7 uses
  %i.e = tail call i32 @test_int_ne(ptr noundef nonnull @.str.14, i32 noundef 49, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %i.d, i32 noundef -1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @BIO_socket_nbio(i32 noundef %i.d, i32 noundef 1) #6
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 52, ptr noundef nonnull @.str.20, i32 noundef %i.h) #6
  %.not80 = icmp eq i32 %i.i, 0
  br i1 %.not80, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @BIO_ADDR_new() #6         ; 5 uses
  %i.k = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 55, ptr noundef nonnull @.str.21, ptr noundef %i.j) #6
  %.not81 = icmp eq i32 %i.k, 0
  br i1 %.not81, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 16777343, ptr %1, align 4, !tbaa !17
  %i.l = call i32 @BIO_ADDR_rawmake(ptr noundef %i.j, i32 noundef 2, ptr noundef nonnull %1, i64 noundef 4, i16 noundef zeroext 20753) #6
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 60, ptr noundef nonnull @.str.22, i32 noundef %i.n) #6
  %.not82 = icmp eq i32 %i.o, 0
  br i1 %.not82, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.074 = phi ptr [ %i.j, %bb.e ], [ null, %bb.a ] ; 17 uses
  %.063 = phi i32 [ %i.d, %bb.e ], [ %0, %bb.a ]  ; 16 uses
  %i.p = call ptr @BIO_new_dgram(i32 noundef %.063, i32 noundef 0) #6 ; 10 uses
  %i.q = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 66, ptr noundef nonnull @.str.23, ptr noundef %i.p) #6
  %.not83 = icmp eq i32 %i.q, 0
  br i1 %.not83, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not84 = icmp eq ptr %.074, null
  br i1 %.not84, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i64 @BIO_ctrl(ptr noundef %i.p, i32 noundef 44, i64 noundef 0, ptr noundef nonnull %.074) #6
  %i.s = and i64 %i.r, 4294967295
  %.not85 = icmp eq i64 %i.s, 0
  br i1 %.not85, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = call ptr @OSSL_QUIC_client_method() #6
  %i.u = call ptr @SSL_CTX_new(ptr noundef %i.t) #6 ; 15 uses
  %i.v = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 73, ptr noundef nonnull @.str.24, ptr noundef %i.u) #6
  %.not86 = icmp eq i32 %i.v, 0
  br i1 %.not86, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call ptr @SSL_new(ptr noundef %i.u) #6   ; 26 uses
  %i.x = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 76, ptr noundef nonnull @.str.25, ptr noundef %i.w) #6
  %.not87 = icmp eq i32 %i.x, 0
  br i1 %.not87, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @SSL_set_alpn_protos(ptr noundef %i.w, ptr noundef nonnull %i.b, i32 noundef 9) #6
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 80, ptr noundef nonnull @.str.26, i32 noundef %i.aa) #6
  %.not88 = icmp eq i32 %i.ab, 0
  br i1 %.not88, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @SSL_set0_rbio(ptr noundef %i.w, ptr noundef %i.p) #6
  %i.ac = call i32 @BIO_up_ref(ptr noundef %i.p) #6
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 87, ptr noundef nonnull @.str.27, i32 noundef %i.ae) #6
  %.not89 = icmp eq i32 %i.af, 0
  br i1 %.not89, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @SSL_set0_wbio(ptr noundef %i.w, ptr noundef %i.p) #6
  %i.ag = call i32 @SSL_set_blocking_mode(ptr noundef %i.w, i32 noundef 0) #6
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 95, ptr noundef nonnull @.str.28, i32 noundef %i.ai) #6
  %.not90 = icmp eq i32 %i.aj, 0
  br i1 %.not90, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = call i64 @ossl_time_now() #6            ; 2 uses
  %i.al = call i64 @ossl_time_now() #6
  %..i121 = call i64 @llvm.usub.sat.i64(i64 %i.al, i64 %i.ak)
  %i.am = icmp ugt i64 %..i121, 9999999999
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread108, %bb.n
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 104, ptr noundef nonnull @.str.29) #6
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.n, %.thread108
  %.064125 = phi i64 [ %.165113, %.thread108 ], [ 0, %bb.n ] ; 7 uses
  %.066124 = phi i32 [ %.167112, %.thread108 ], [ 0, %bb.n ]
  %.068123 = phi i32 [ %.169, %.thread108 ], [ 0, %bb.n ] ; 2 uses
  %.070122 = phi i32 [ %.171107, %.thread108 ], [ 0, %bb.n ]
  %.not91 = icmp eq i32 %.070122, 0
  br i1 %.not91, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph
  %i.an = call i32 @SSL_connect(ptr noundef %i.w) #6 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ap = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 110, ptr noundef nonnull @.str.30, i32 noundef 1) #6
  %.not92 = icmp eq i32 %i.ap, 0
  br i1 %.not92, label %.loopexit, label %bb.q

.thread:                                          ; preds = %bb.o
  %i.aq = call i32 @SSL_get_error(ptr noundef %i.w, i32 noundef range(i32 2, 1) %i.an) #6
  %i.ar = and i32 %i.aq, -2
  %i.as = icmp eq i32 %i.ar, 2
  %i.at = zext i1 %i.as to i32
  %i.au = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 110, ptr noundef nonnull @.str.30, i32 noundef %i.at) #6
  %.not92102 = icmp eq i32 %i.au, 0
  br i1 %.not92102, label %.loopexit, label %.thread104

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 115, ptr noundef nonnull @.str.31) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %.not120 = icmp eq i32 %.068123, 0
  br i1 %.not120, label %bb.s, label %.thread104

bb.s:                                             ; preds = %bb.r
  %i.av = call i32 @SSL_write(ptr noundef %i.w, ptr noundef nonnull @msg1, i32 noundef 17) #6
  %i.aw = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 121, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %i.av, i32 noundef 17) #6
  %.not93 = icmp eq i32 %i.aw, 0
  br i1 %.not93, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = call i32 @SSL_stream_conclude(ptr noundef %i.w, i64 noundef 0) #6
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 124, ptr noundef nonnull @.str.34, i32 noundef %i.az) #6
  %.not94 = icmp eq i32 %i.ba, 0
  br i1 %.not94, label %.loopexit, label %.thread104

.thread104:                                       ; preds = %.thread, %bb.t, %bb.r
  %.171107 = phi i32 [ 1, %bb.r ], [ 1, %bb.t ], [ 0, %.thread ]
  %.169 = phi i32 [ 1, %bb.r ], [ 1, %bb.t ], [ %.068123, %.thread ] ; 2 uses
  %2 = icmp ne i32 %.169, 0
  %i.bb = icmp eq i32 %.066124, 0                 ; 2 uses
  %or.cond3.not97 = and i1 %i.bb, %2
  %i.bc = icmp ult i64 %.064125, 15999
  %or.cond5 = select i1 %or.cond3.not97, i1 %i.bc, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.thread104
  %i.bd = getelementptr inbounds nuw i8, ptr @msg2, i64 %.064125
  %i.be = sub nuw nsw i64 15999, %.064125
  %i.bf = call i32 @SSL_read_ex(ptr noundef %i.w, ptr noundef nonnull %i.bd, i64 noundef %i.be, ptr noundef nonnull %i.a) #6 ; 3 uses
  %.not98 = icmp eq i32 %i.bf, 1
  br i1 %.not98, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = call i32 @SSL_get_error(ptr noundef %i.w, i32 noundef %i.bf) #6
  %i.bh = icmp eq i32 %i.bg, 6
  br i1 %i.bh, label %.thread114, label %bb.w

.thread114:                                       ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 136, ptr noundef nonnull @.str.35, ptr noundef nonnull @msg2) #6
  br label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bi = call i32 @SSL_get_error(ptr noundef %i.w, i32 noundef range(i32 2, 1) %i.bf) #6
  %i.bj = and i32 %i.bi, -2
  %i.bk = icmp eq i32 %i.bj, 2
  %i.bl = zext i1 %i.bk to i32
  %i.bm = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 137, ptr noundef nonnull @.str.36, i32 noundef %i.bl) #6
  %.not100 = icmp eq i32 %i.bm, 0
  br i1 %.not100, label %.loopexit, label %.thread108

bb.x:                                             ; preds = %bb.u
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bo = add i64 %i.bn, %.064125                 ; 2 uses
  %i.bp = call i32 @test_size_t_lt(ptr noundef nonnull @.str.14, i32 noundef 143, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i64 noundef %i.bo, i64 noundef 15999) #6
  %.not99 = icmp eq i32 %i.bp, 0
  br i1 %.not99, label %.loopexit, label %.thread108

bb.y:                                             ; preds = %.thread104
  br i1 %i.bb, label %.thread108, label %bb.z

bb.z:                                             ; preds = %.thread114, %bb.y
  %i.bq = call i32 @SSL_shutdown(ptr noundef %i.w) #6
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.loopexit, label %.thread108

.thread108:                                       ; preds = %bb.x, %bb.w, %bb.z, %bb.y
  %.165113 = phi i64 [ %.064125, %bb.y ], [ %.064125, %bb.z ], [ %i.bo, %bb.x ], [ %.064125, %bb.w ]
  %.167112 = phi i32 [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %bb.x ], [ 0, %bb.w ]
  call void @OSSL_sleep(i64 noundef 0) #6
  %i.bs = call i32 @SSL_handle_events(ptr noundef %i.w) #6 ; 0 uses
  %i.bt = call i64 @ossl_time_now() #6
  %..i = call i64 @llvm.usub.sat.i64(i64 %i.bt, i64 %i.ak)
  %i.bu = icmp ugt i64 %..i, 9999999999
  br i1 %i.bu, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.thread, %bb.z, %bb.x, %bb.w, %bb.t, %bb.s, %bb.p, %bb.l, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %._crit_edge
  %.076 = phi ptr [ null, %._crit_edge ], [ null, %bb.l ], [ %i.p, %bb.h ], [ %i.p, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.m ], [ null, %bb.b ], [ %i.p, %bb.k ], [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ null, %bb.p ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.z ], [ null, %.thread ]
  %.175 = phi ptr [ %.074, %._crit_edge ], [ %.074, %bb.l ], [ %.074, %bb.h ], [ %.074, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.d ], [ null, %bb.c ], [ %.074, %bb.m ], [ null, %bb.b ], [ %.074, %bb.k ], [ %.074, %bb.j ], [ %.074, %bb.i ], [ %.074, %bb.p ], [ %.074, %bb.s ], [ %.074, %bb.t ], [ %.074, %bb.w ], [ %.074, %bb.x ], [ %.074, %bb.z ], [ %.074, %.thread ]
  %.073 = phi ptr [ %i.u, %._crit_edge ], [ %i.u, %bb.l ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ %i.u, %bb.m ], [ null, %bb.b ], [ %i.u, %bb.k ], [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.u, %bb.p ], [ %i.u, %bb.s ], [ %i.u, %bb.t ], [ %i.u, %bb.w ], [ %i.u, %bb.x ], [ %i.u, %bb.z ], [ %i.u, %.thread ]
  %.072 = phi ptr [ %i.w, %._crit_edge ], [ %i.w, %bb.l ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ %i.w, %bb.m ], [ null, %bb.b ], [ %i.w, %bb.k ], [ %i.w, %bb.j ], [ null, %bb.i ], [ %i.w, %bb.p ], [ %i.w, %bb.s ], [ %i.w, %bb.t ], [ %i.w, %bb.w ], [ %i.w, %bb.x ], [ %i.w, %bb.z ], [ %i.w, %.thread ]
  %.1 = phi i32 [ %.063, %._crit_edge ], [ %.063, %bb.l ], [ %.063, %bb.h ], [ %.063, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %.063, %bb.m ], [ %i.d, %bb.b ], [ %.063, %bb.k ], [ %.063, %bb.j ], [ %.063, %bb.i ], [ %.063, %bb.p ], [ %.063, %bb.s ], [ %.063, %bb.t ], [ %.063, %bb.w ], [ %.063, %bb.x ], [ %.063, %bb.z ], [ %.063, %.thread ] ; 2 uses
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %.thread ], [ 1, %bb.z ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.p ]
  call void @SSL_free(ptr noundef %.072) #6
  call void @SSL_CTX_free(ptr noundef %.073) #6
  call void @BIO_ADDR_free(ptr noundef %.175) #6
  %i.bv = call i32 @BIO_free(ptr noundef %.076) #6 ; 0 uses
  %i.bw = icmp ne i32 %.1, -1
  %or.cond7 = and i1 %i.c, %i.bw
  br i1 %or.cond7, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %i.bx = call i32 @BIO_closesocket(i32 noundef %.1) #6 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @BIO_socket(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @test_int_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_socket_nbio(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BIO_ADDR_new() local_unnamed_addr #2

declare i32 @BIO_ADDR_rawmake(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @BIO_new_dgram(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_QUIC_client_method() local_unnamed_addr #2

declare ptr @SSL_new(ptr noundef) local_unnamed_addr #2

declare i32 @test_false(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_set_alpn_protos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SSL_set0_rbio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_up_ref(ptr noundef) local_unnamed_addr #2

declare void @SSL_set0_wbio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_set_blocking_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ossl_time_now() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @SSL_connect(ptr noundef) local_unnamed_addr #2

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_stream_conclude(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_read_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @test_size_t_lt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_shutdown(ptr noundef) local_unnamed_addr #2

declare void @OSSL_sleep(i64 noundef) local_unnamed_addr #2

declare i32 @SSL_handle_events(ptr noundef) local_unnamed_addr #2

declare void @SSL_free(ptr noundef) local_unnamed_addr #2

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @BIO_ADDR_free(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"in_addr", !6, i64 0}
!10 = !{!"short", !5, i64 0}
!11 = !{!"sockaddr_in", !10, i64 0, !10, i64 2, !9, i64 4, !5, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 2}
!14 = !{!11, !6, i64 4}
!15 = !{!"long", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!9, !6, i64 0}
end_hunk_0
