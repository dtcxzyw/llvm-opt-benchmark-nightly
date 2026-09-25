Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/statem_srvr?download=true
inline.NumInlined: 150
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tls_construct_certificate_request:bb.a
  %i.h = and i32 %i.g, 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.j = icmp slt i32 %i.i, 772
  %.not45 = icmp eq i32 %i.i, 65536
  %or.cond = or i1 %i.j, %.not45
  br i1 %or.cond, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.l = load i32, ptr %i.k, align 8, !tbaa !93
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !176
  tail call void @CRYPTO_free(ptr noundef %i.o, ptr noundef nonnull @.str.1, i32 noundef 3179) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 4 uses
  store i64 32, ptr %i.p, align 8, !tbaa !177
  %i.q = tail call noalias ptr @CRYPTO_malloc(i64 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 3181) #12 ; 3 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !176
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.p, align 8, !tbaa !177
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 3183, ptr noundef nonnull @__func__.tls_construct_certificate_request) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118
  %i.v = load i64, ptr %i.p, align 8, !tbaa !177
  %i.w = tail call i32 @RAND_bytes_ex(ptr noundef %i.u, ptr noundef nonnull %i.q, i64 noundef %i.v, i32 noundef 0) #12
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !176
  %i.z = load i64, ptr %i.p, align 8, !tbaa !177
  %i.aa = tail call i32 @WPACKET_sub_memcpy__(ptr noundef %1, ptr noundef %i.y, i64 noundef %i.z, i64 noundef 1) #12
  %.not47 = icmp eq i32 %i.aa, 0
  br i1 %.not47, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 3191, ptr noundef nonnull @__func__.tls_construct_certificate_request) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call i32 @tls13_restore_handshake_digest_for_pha(ptr noundef nonnull %0) #12
  %.not48 = icmp eq i32 %i.ab, 0
  br i1 %.not48, label %bb.y, label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.ac = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef 0, i64 noundef 1) #12
  %.not46 = icmp eq i32 %i.ac, 0
  br i1 %.not46, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 3201, ptr noundef nonnull @__func__.tls_construct_certificate_request) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %bb.y

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ad = tail call i32 @tls_construct_extensions(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 16384, ptr noundef null, i64 noundef 0) #12
  %.not49 = icmp eq i32 %i.ad, 0
  br i1 %.not49, label %bb.y, label %bb.x

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.ae = tail call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 1) #12
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = tail call i32 @ssl3_get_req_cert_type(ptr noundef nonnull %0, ptr noundef %1) #12
  %.not51 = icmp eq i32 %i.af, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call i32 @WPACKET_close(ptr noundef %1) #12
  %.not52 = icmp eq i32 %i.ag, 0
  br i1 %.not52, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 3218, ptr noundef nonnull @__func__.tls_construct_certificate_request) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !80
  %i.am = and i32 %i.al, 2
  %.not53 = icmp eq i32 %i.am, 0
  br i1 %.not53, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.an = call i64 @tls12_get_psigalgs(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #12
  %i.ao = call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #12
  %.not54 = icmp eq i32 %i.ao, 0
  br i1 %.not54, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = call i32 @WPACKET_set_flags(ptr noundef %1, i32 noundef 1) #12
  %.not55 = icmp eq i32 %i.ap, 0
  br i1 %.not55, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.ar = call i32 @tls12_copy_sigalgs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.aq, i64 noundef %i.an) #12
  %.not56 = icmp eq i32 %i.ar, 0
  br i1 %.not56, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = call i32 @WPACKET_close(ptr noundef %1) #12
  %.not57 = icmp eq i32 %i.as, 0
  br i1 %.not57, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 3230, ptr noundef nonnull @__func__.tls_construct_certificate_request) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.y

bb.w:                                             ; preds = %.thread, %bb.q
  %i.at = call ptr @get_ca_names(ptr noundef nonnull %0) #12
  %i.au = call i32 @construct_ca_names(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef %1) #12
  %.not58 = icmp eq i32 %i.au, 0
  br i1 %.not58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3448 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !98
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i32 1, ptr %i.ay, align 8, !tbaa !86
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.l, %bb.i, %bb.x, %bb.p, %bb.k, %bb.h, %bb.e
  %.1 = phi i32 [ 1, %bb.x ], [ 0, %bb.l ], [ 0, %bb.v ], [ 0, %bb.p ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.w ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls_construct_server_done(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @ssl3_digest_cached_records(ptr noundef nonnull %0, i32 noundef 0) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @tls_construct_new_session_ticket(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [16 x i8], align 16               ; 9 uses
  %i.k = alloca [16 x i8], align 16               ; 8 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca [8 x i8], align 1                 ; 13 uses
  %2 = alloca %union.anon, align 4                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3392 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !240  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !80
  %i.w = and i32 %i.v, 8
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr %i.r, align 8, !tbaa !81   ; 2 uses
  %i.y = icmp slt i32 %i.x, 772
  %.not90 = icmp eq i32 %i.x, 65536
  %or.cond = or i1 %i.y, %.not90
  br i1 %or.cond, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @ssl_handshake_md(ptr noundef nonnull %0) #12 ; 2 uses
  %i.aa = tail call i32 @EVP_MD_get_size(ptr noundef %i.z) #12 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4534, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.thread116

bb.e:                                             ; preds = %bb.c
  %i.ac = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !127
  %.not91 = icmp eq i64 %i.ae, 0
  br i1 %.not91, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !124
  %.not92 = icmp eq i32 %i.ag, 0
  br i1 %.not92, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !87
  br label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  %i.aj = tail call ptr @ssl_session_dup(ptr noundef %i.ai, i32 noundef 0) #12 ; 3 uses
  %.not93 = icmp eq ptr %i.aj, null
  br i1 %.not93, label %.thread116, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !87
  tail call void @SSL_SESSION_free(ptr noundef %i.ak) #12
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.al = phi ptr [ %.pre, %._crit_edge ], [ %i.aj, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 5 uses
  %i.an = tail call i32 @ssl_generate_session_id(ptr noundef nonnull %0, ptr noundef %i.al) #12
  %.not94 = icmp eq i32 %i.an, 0
  br i1 %.not94, label %.thread116, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !118
  %i.ar = call i32 @RAND_bytes_ex(ptr noundef %i.aq, ptr noundef nonnull %2, i64 noundef 4, i32 noundef 0) #12
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4563, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.thread116

bb.l:                                             ; preds = %bb.j
  %i.at = load i32, ptr %2, align 4, !tbaa !166
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !87 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 832
  store i32 %i.at, ptr %i.av, align 8, !tbaa !241
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %3 = load i64, ptr %i.aw, align 8, !tbaa !242   ; 8 uses
  %4 = trunc i64 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store i8 %4, ptr %5, align 1, !tbaa !166
  %6 = lshr i64 %3, 8
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  store i8 %7, ptr %8, align 1, !tbaa !166
  %9 = lshr i64 %3, 16
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store i8 %10, ptr %11, align 1, !tbaa !166
  %12 = lshr i64 %3, 24
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %13, ptr %14, align 1, !tbaa !166
  %15 = lshr i64 %3, 32
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %16, ptr %17, align 1, !tbaa !166
  %18 = lshr i64 %3, 40
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %19, ptr %20, align 1, !tbaa !166
  %21 = lshr i64 %3, 48
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %22, ptr %23, align 1, !tbaa !166
  %24 = lshr i64 %3, 56
  %25 = trunc nuw i64 %24 to i8
  store i8 %25, ptr %i.n, align 1, !tbaa !166
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.az = call i32 @tls13_hkdf_expand(ptr noundef nonnull %0, ptr noundef %i.z, ptr noundef nonnull %i.ax, ptr noundef nonnull @tls_construct_new_session_ticket.nonce_label, i64 noundef 10, ptr noundef nonnull %i.n, i64 noundef 8, ptr noundef nonnull %i.ay, i64 noundef %i.ac, i32 noundef 1) #12
  %.not96 = icmp eq i32 %i.az, 0
  br i1 %.not96, label %.thread116, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !87 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.ac, ptr %i.bb, align 8, !tbaa !179
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 736
  %i.bd = call i64 @ossl_time_now() #12
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !125
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !87
  call void @ssl_session_calculate_timeout(ptr noundef %i.be) #12
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !180
  %.not97 = icmp eq ptr %i.bg, null
  %.pre137 = load ptr, ptr %i.am, align 8, !tbaa !87 ; 2 uses
  br i1 %.not97, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre137, i64 840
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !181
  call void @CRYPTO_free(ptr noundef %i.bi, ptr noundef nonnull @.str.1, i32 noundef 4589) #12
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !180
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !182
  %i.bm = call ptr @CRYPTO_memdup(ptr noundef %i.bj, i64 noundef %i.bl, ptr noundef nonnull @.str.1, i32 noundef 4590) #12 ; 2 uses
  %i.bn = load ptr, ptr %i.am, align 8, !tbaa !87 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 840
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !181
  %i.bp = icmp eq ptr %i.bm, null
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 848
  store i64 0, ptr %i.bq, align 8, !tbaa !183
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4593, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #12
  br label %.thread116

bb.p:                                             ; preds = %bb.n
  %i.br = load i64, ptr %i.bk, align 8, !tbaa !182
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 848
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !183
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.bt = phi ptr [ %.pre137, %bb.m ], [ %i.bn, %bb.p ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !243
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 836
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !244
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b, %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 1088
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !245 ; 2 uses
  %.not98 = icmp eq ptr %i.by, null
  br i1 %.not98, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !153
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 1104
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !246
  %i.cd = call i32 %i.by(ptr noundef %i.ca, ptr noundef %i.cc) #12
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4602, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.thread116

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !78
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !80
  %i.ck = and i32 %i.cj, 8
  %.not99 = icmp eq i32 %i.ck, 0
  br i1 %.not99, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %i.cf, align 8, !tbaa !81 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 772
  %.not100 = icmp eq i32 %i.cl, 65536
  %or.cond108 = or i1 %i.cm, %.not100
  br i1 %or.cond108, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !123 ; 2 uses
  %i.cp = and i64 %i.co, 16384
  %.not101 = icmp eq i64 %i.cp, 0
  br i1 %.not101, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !243
  %.not102 = icmp ne i32 %i.cr, 0
  %i.cs = and i64 %i.co, 16777216
  %i.ct = icmp eq i64 %i.cs, 0
  %or.cond110 = and i1 %i.ct, %.not102
  br i1 %or.cond110, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cu = load i32, ptr %2, align 4, !tbaa !166
  %i.cv = call fastcc i32 @create_ticket_prequel(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cu, ptr noundef nonnull %i.n)
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %.thread116, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !87 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 600
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 592
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !155
  %i.db = call i32 @WPACKET_memcpy(ptr noundef %1, ptr noundef nonnull %i.cy, i64 noundef %i.da) #12
  %.not9.i = icmp eq i32 %i.db, 0
  br i1 %.not9.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = call i32 @WPACKET_close(ptr noundef %1) #12
  %.not10.i = icmp eq i32 %i.dc, 0
  br i1 %.not10.i, label %bb.ab, label %construct_stateful_ticket.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4490, ptr noundef nonnull @__func__.construct_stateful_ticket) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.thread116

bb.ac:                                            ; preds = %bb.x, %bb.v, %bb.u
  %i.dd = load i32, ptr %2, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !240 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !153 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !102 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !87
  %i.dl = call i32 @i2d_SSL_SESSION(ptr noundef %i.dk, ptr noundef null) #12 ; 4 uses
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = icmp sgt i32 %i.dl, 65280
  %or.cond.i = or i1 %i.dm, %i.dn
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4299, ptr noundef nonnull @__func__.construct_stateless_ticket) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %construct_stateless_ticket.exit.thread123

bb.ae:                                            ; preds = %bb.ac
  %i.do = sext i32 %i.dl to i64                   ; 2 uses
  %i.dp = call noalias ptr @CRYPTO_malloc(i64 noundef %i.do, ptr noundef nonnull @.str.1, i32 noundef 4302) #12 ; 21 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4304, ptr noundef nonnull @__func__.construct_stateless_ticket) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #12
  br label %construct_stateless_ticket.exit.thread123

bb.ag:                                            ; preds = %bb.ae
  %i.dr = call ptr @EVP_CIPHER_CTX_new() #12      ; 22 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4310, ptr noundef nonnull @__func__.construct_stateless_ticket) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524294, ptr noundef null) #12
  br label %construct_stateless_ticket.exit.thread123

bb.ai:                                            ; preds = %bb.ag
  %i.dt = call ptr @ssl_hmac_new(ptr noundef %i.de) #12 ; 20 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.aj, label %bb.ak

end_hunk_0
