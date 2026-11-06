Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/statem_srvr?download=true
inline.NumInlined: 146
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tls_construct_certificate_request:bb.a
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 2907, ptr noundef nonnull @__func__.tls_construct_certificate_request) #11
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !130
  %i.am = and i32 %i.al, 2
  %.not53 = icmp eq i32 %i.am, 0
  br i1 %.not53, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.an = call i64 @tls12_get_psigalgs(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #11
  %i.ao = call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #11
  %.not54 = icmp eq i32 %i.ao, 0
  br i1 %.not54, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = call i32 @WPACKET_set_flags(ptr noundef %1, i32 noundef 1) #11
  %.not55 = icmp eq i32 %i.ap, 0
  br i1 %.not55, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.ar = call i32 @tls12_copy_sigalgs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.aq, i64 noundef %i.an) #11
  %.not56 = icmp eq i32 %i.ar, 0
  br i1 %.not56, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = call i32 @WPACKET_close(ptr noundef %1) #11
  %.not57 = icmp eq i32 %i.as, 0
  br i1 %.not57, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 2919, ptr noundef nonnull @__func__.tls_construct_certificate_request) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.y

bb.w:                                             ; preds = %.thread, %bb.q
  %i.at = call ptr @get_ca_names(ptr noundef nonnull %0) #11
  %i.au = call i32 @construct_ca_names(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef %1) #11
  %.not58 = icmp eq i32 %i.au, 0
  br i1 %.not58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !149
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i32 1, ptr %i.ay, align 8, !tbaa !136
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.l, %bb.i, %bb.x, %bb.p, %bb.k, %bb.h, %bb.e
  %.1 = phi i32 [ 1, %bb.x ], [ 0, %bb.l ], [ 0, %bb.v ], [ 0, %bb.p ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.w ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tls_construct_server_done(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 !guid !288 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ssl3_digest_cached_records(ptr noundef nonnull %0, i32 noundef 0) #11
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @tls_construct_new_session_ticket(ptr noundef %0, ptr noundef %1) #1 !guid !290 {
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
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %2 = alloca %union.anon, align 4                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2952 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !291  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !tbaa !215
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !130
  %i.w = and i32 %i.v, 8
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr %i.r, align 8, !tbaa !131  ; 2 uses
  %i.y = icmp slt i32 %i.x, 772
  %.not90 = icmp eq i32 %i.x, 65536
  %or.cond = or i1 %i.y, %.not90
  br i1 %or.cond, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @ssl_handshake_md(ptr noundef nonnull %0) #11 ; 2 uses
  %i.aa = tail call i32 @EVP_MD_get_size(ptr noundef %i.z) #11 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !216

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4227, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #11
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  br label %.thread116

bb.e:                                             ; preds = %bb.c
  %i.ac = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5464
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !158
  %.not91 = icmp eq i64 %i.ae, 0
  br i1 %.not91, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !155
  %.not92 = icmp eq i32 %i.ag, 0
  br i1 %.not92, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137
  %i.aj = tail call ptr @ssl_session_dup(ptr noundef %i.ai, i32 noundef 0) #11 ; 3 uses
  %.not93 = icmp eq ptr %i.aj, null
  br i1 %.not93, label %.thread116, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !137
  tail call void @SSL_SESSION_free(ptr noundef %i.ak) #11
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.al = phi ptr [ %.pre, %._crit_edge ], [ %i.aj, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 5 uses
  %i.an = tail call i32 @ssl_generate_session_id(ptr noundef nonnull %0, ptr noundef %i.al) #11
  %.not94 = icmp eq i32 %i.an, 0
  br i1 %.not94, label %.thread116, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !185
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !208
  %i.ar = call i32 @RAND_bytes_ex(ptr noundef %i.aq, ptr noundef nonnull %2, i64 noundef 4, i32 noundef 0) #11
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4256, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  br label %.thread116

bb.l:                                             ; preds = %bb.j
  %i.at = load i32, ptr %2, align 4, !tbaa !215
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 832
  store i32 %i.at, ptr %i.av, align 8, !tbaa !292
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5472
  %3 = load <8 x i8>, ptr %i.aw, align 8, !tbaa !293
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %i.n, align 8, !tbaa !215
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.az = call i32 @tls13_hkdf_expand(ptr noundef nonnull %0, ptr noundef %i.z, ptr noundef nonnull %i.ax, ptr noundef nonnull @tls_construct_new_session_ticket.nonce_label, i64 noundef 10, ptr noundef nonnull %i.n, i64 noundef 8, ptr noundef nonnull %i.ay, i64 noundef %i.ac, i32 noundef 1) #11
  %.not96 = icmp eq i32 %i.az, 0
  br i1 %.not96, label %.thread116, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.ac, ptr %i.bb, align 8, !tbaa !217
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 736
  %i.bd = call i64 @ossl_time_now() #11
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !156
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !137
  call void @ssl_session_calculate_timeout(ptr noundef %i.be) #11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !218
  %.not97 = icmp eq ptr %i.bg, null
  %.pre137 = load ptr, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  br i1 %.not97, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre137, i64 840
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !219
  call void @CRYPTO_free(ptr noundef %i.bi, ptr noundef nonnull @.str.1, i32 noundef 4282) #11
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !218
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !220
  %i.bm = call ptr @CRYPTO_memdup(ptr noundef %i.bj, i64 noundef %i.bl, ptr noundef nonnull @.str.1, i32 noundef 4283) #11 ; 2 uses
  %i.bn = load ptr, ptr %i.am, align 8, !tbaa !137 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 840
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !219
  %i.bp = icmp eq ptr %i.bm, null
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 848
  store i64 0, ptr %i.bq, align 8, !tbaa !221
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4286, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #11
  br label %.thread116

bb.p:                                             ; preds = %bb.n
  %i.br = load i64, ptr %i.bk, align 8, !tbaa !220
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 848
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !221
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.bt = phi ptr [ %.pre137, %bb.m ], [ %i.bn, %bb.p ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5440
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !294
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 836
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !295
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b, %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 1064
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !296 ; 2 uses
  %.not98 = icmp eq ptr %i.by, null
  br i1 %.not98, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !199
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 1080
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !297
  %i.cd = call i32 %i.by(ptr noundef %i.ca, ptr noundef %i.cc) #11
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4295, ptr noundef nonnull @__func__.tls_construct_new_session_ticket) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  br label %.thread116

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !125 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !128
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !130
  %i.ck = and i32 %i.cj, 8
  %.not99 = icmp eq i32 %i.ck, 0
  br i1 %.not99, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %i.cf, align 8, !tbaa !131 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 772
  %.not100 = icmp eq i32 %i.cl, 65536
  %or.cond108 = or i1 %i.cm, %.not100
  br i1 %or.cond108, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !154 ; 2 uses
  %i.cp = and i64 %i.co, 16384
  %.not101 = icmp eq i64 %i.cp, 0
  br i1 %.not101, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 5440
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !294
  %.not102 = icmp ne i32 %i.cr, 0
  %i.cs = and i64 %i.co, 16777216
  %i.ct = icmp eq i64 %i.cs, 0
  %or.cond110 = and i1 %i.ct, %.not102
  br i1 %or.cond110, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cu = load i32, ptr %2, align 4, !tbaa !215
  %i.cv = call fastcc i32 @create_ticket_prequel(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cu, ptr noundef nonnull %i.n)
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %.thread116, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !137 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 600
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 592
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !201
  %i.db = call i32 @WPACKET_memcpy(ptr noundef %1, ptr noundef nonnull %i.cy, i64 noundef %i.da) #11
  %.not9.i = icmp eq i32 %i.db, 0
  br i1 %.not9.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = call i32 @WPACKET_close(ptr noundef %1) #11
  %.not10.i = icmp eq i32 %i.dc, 0
  br i1 %.not10.i, label %bb.ab, label %construct_stateful_ticket.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4183, ptr noundef nonnull @__func__.construct_stateful_ticket) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  br label %.thread116

bb.ac:                                            ; preds = %bb.x, %bb.v, %bb.u
  %i.dd = load i32, ptr %2, align 4, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !291 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !199 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !185 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !137
  %i.dl = call i32 @i2d_SSL_SESSION(ptr noundef %i.dk, ptr noundef null) #11 ; 4 uses
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = icmp sgt i32 %i.dl, 65280
  %or.cond.i = or i1 %i.dm, %i.dn
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 3992, ptr noundef nonnull @__func__.construct_stateless_ticket) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  br label %construct_stateless_ticket.exit.thread123

bb.ae:                                            ; preds = %bb.ac
  %i.do = sext i32 %i.dl to i64                   ; 2 uses
  %i.dp = call noalias ptr @CRYPTO_malloc(i64 noundef %i.do, ptr noundef nonnull @.str.1, i32 noundef 3995) #11 ; 21 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 3997, ptr noundef nonnull @__func__.construct_stateless_ticket) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #11
  br label %construct_stateless_ticket.exit.thread123

bb.ag:                                            ; preds = %bb.ae
  %i.dr = call ptr @EVP_CIPHER_CTX_new() #11      ; 22 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 4003, ptr noundef nonnull @__func__.construct_stateless_ticket) #11
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524294, ptr noundef null) #11
  br label %construct_stateless_ticket.exit.thread123

bb.ai:                                            ; preds = %bb.ag
  %i.dt = call ptr @ssl_hmac_new(ptr noundef %i.de) #11 ; 20 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.aj, label %bb.ak

end_hunk_0
begin_hunk_1_@ssl_check_for_safari:bb.a
  %i.ac = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.s, ptr noundef nonnull @ssl_check_for_safari.kSafariExtensionsBlock, i64 noundef %i.t) #11
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8
  br label %PACKET_equal.exit

PACKET_equal.exit:                                ; preds = %bb.f, %bb.g
  %.0.i10 = phi i8 [ %i.ae, %bb.g ], [ 0, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1244
  store i8 %.0.i10, ptr %i.af, align 4, !tbaa !373
  br label %PACKET_forward.exit.thread

PACKET_forward.exit.thread:                       ; preds = %bb.a, %bb.c, %bb.b, %PACKET_get_length_prefixed_2.exit, %PACKET_equal.exit
  ret void
}

declare i32 @ssl_fill_hello_random(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tls1_set_server_sigalgs(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_dup(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_client_version(ptr noundef) local_unnamed_addr #2

declare i32 @ssl_srp_server_param_with_username_intern(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_strndup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt_init(ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_uint(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @EVP_PKEY_copy_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_set1_encoded_public_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl_derive(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @srp_generate_server_master_secret(ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @create_ticket_prequel(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #1 !guid !374 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = udiv i64 %i.d, 1000000000                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !130
  %i.l = and i32 %i.k, 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %i.n = icmp slt i32 %i.m, 772
  %.not22 = icmp eq i32 %i.m, 65536
  %or.cond = or i1 %i.n, %.not22
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.d, 604800000000000
  %spec.select = select i1 %i.o, i64 604800, i64 %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.q = load i32, ptr %i.p, align 8, !tbaa !155
  %.not23 = icmp eq i32 %i.q, 0
  %spec.select30 = select i1 %.not23, i64 %i.e, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.019 = phi i64 [ %spec.select, %bb.c ], [ %spec.select30, %bb.d ]
  %i.r = and i64 %.019, 4294967295
  %i.s = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.r, i64 noundef 4) #11
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !125  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !130
  %i.y = and i32 %i.x, 8
  %.not25 = icmp eq i32 %i.y, 0
  br i1 %.not25, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.t, align 8, !tbaa !131  ; 2 uses
  %i.aa = icmp slt i32 %i.z, 772
  %.not26 = icmp eq i32 %i.z, 65536
  %or.cond31 = or i1 %i.aa, %.not26
  br i1 %or.cond31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = zext i32 %2 to i64
  %i.ac = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.ab, i64 noundef 4) #11
  %.not27 = icmp eq i32 %i.ac, 0
  br i1 %.not27, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @WPACKET_sub_memcpy__(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1) #11
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.ae = tail call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #11
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.h, %bb.i, %bb.e
  %.sink = phi i32 [ 3949, %bb.h ], [ 3942, %bb.e ], [ 3949, %bb.i ], [ 3956, %bb.j ]
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef %.sink, ptr noundef nonnull @__func__.create_ticket_prequel) #11
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #11
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare i32 @i2d_SSL_SESSION(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare ptr @ssl_hmac_new(ptr noundef) local_unnamed_addr #2

declare ptr @d2i_SSL_SESSION_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ssl_hmac_get0_EVP_MAC_CTX(ptr noundef) local_unnamed_addr #2

declare ptr @ssl_hmac_get0_HMAC_CTX(ptr noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @ssl_hmac_free(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_statem_send_fatal(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ssl_hmac_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_reserve_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ssl_hmac_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl_hmac_final(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{i64 4915248638959564264}
!11 = !{i64 2486941741230810235}
!12 = !{i64 -4677064641362765780}
!13 = !{i64 5640344824540000197}
!14 = !{i64 3296451806808986648}
!15 = !{i64 -1524198304513851327}
!16 = !{i64 -6399626713083551191}
!17 = !{i64 -6897434638790406586}
!18 = !{i64 -3955265071147150150}
!19 = !{i64 -6007838995675036858}
!20 = !{i64 6033852474434141567}
!21 = !{i64 585671584432707040}
!22 = !{i64 -2065492052851097564}
!23 = !{i64 -2869579843159902157}
!24 = !{i64 -3058783157023685873}
!25 = !{i64 1900254224948976643}
!26 = !{i64 -396444276614503990}
!27 = !{i64 4667524645377756301}
!28 = !{i64 -4953280088532535379}
!29 = !{i64 -4058653883329829048}
!30 = !{i64 -6630874576519876001}
!31 = !{i64 -7482777719373092985}
!32 = !{i64 -4661061919286250640}
!33 = !{i64 4396671286468361375}
!34 = !{i64 4502150273934923810}
!35 = !{i64 3612905820773721873}
!36 = !{i64 -1379264802813624668}
!37 = !{i64 1872633453516364096}
!38 = !{i64 -3569000038437951736}
!39 = !{i64 5736234147254242616}
!40 = !{i64 -3300299276192393167}
!41 = !{i64 -6747947931755584793}
!42 = !{i64 -7753078509554192210}
!43 = !{i64 2594242352856946410}
!44 = !{i64 6003701361558137954}
!45 = !{i64 -5332409725233378235}
!46 = !{i64 -3713566240913997674}
!47 = !{i64 -5008479160861933873}
!48 = !{i64 -5145390528399635754}
!49 = !{i64 4538456231607059590}
!50 = !{i64 -8563254444602546472}
!51 = !{i64 8044673897169631253}
!52 = !{i64 750700118923121741}
!53 = !{i64 7730897490718527825}
!54 = !{i64 -3224821770519478415}
!55 = !{i64 -7310377800184330664}
!56 = !{i64 -3205423804334801710}
!57 = !{i64 7416301025450077448}
!58 = !{i64 1246979382630821516}
!59 = !{i64 -6326434937829864467}
!60 = !{i64 2400228410770466757}
!61 = !{i64 -7482732181639345489}
!62 = !{i64 -8529500809810935333}
!63 = !{!"any pointer", !6, i64 0}
!64 = !{!"p1 _ZTS10ssl_ctx_st", !63, i64 0}
!65 = !{!"p1 _ZTS13ssl_method_st", !63, i64 0}
!66 = !{!"", !6, i64 0}
!67 = !{!"p1 _ZTS15ossl_lib_ctx_st", !63, i64 0}
!68 = !{!"p1 _ZTS13stack_st_void", !63, i64 0}
!69 = !{!"crypto_ex_data_st", !67, i64 0, !68, i64 8}
!70 = !{!"ssl_st", !7, i64 0, !64, i64 8, !65, i64 16, !65, i64 24, !66, i64 32, !63, i64 40, !69, i64 48}
!71 = !{!"p1 _ZTS6ssl_st", !63, i64 0}
!72 = !{!"p1 _ZTS6bio_st", !63, i64 0}
!73 = !{!"long", !6, i64 0}
!74 = !{!"", !73, i64 0}
!75 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !7, i64 80}
!76 = !{!"p1 _ZTS10buf_mem_st", !63, i64 0}
!77 = !{!"ossl_quic_tls_callbacks_st", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40}
!78 = !{!"p1 _ZTS11quic_tls_st", !63, i64 0}
!79 = !{!"p1 _ZTS13evp_md_ctx_st", !63, i64 0}
!80 = !{!"p1 _ZTS13ssl_cipher_st", !63, i64 0}
!81 = !{!"p1 _ZTS11evp_pkey_st", !63, i64 0}
!82 = !{!"p1 omnipotent char", !63, i64 0}
!83 = !{!"p1 _ZTS18stack_st_X509_NAME", !63, i64 0}
!84 = !{!"p1 _ZTS13evp_cipher_st", !63, i64 0}
!85 = !{!"p1 _ZTS9evp_md_st", !63, i64 0}
!86 = !{!"p1 _ZTS16sigalg_lookup_st", !63, i64 0}
!87 = !{!"p1 _ZTS12cert_pkey_st", !63, i64 0}
!88 = !{!"p1 short", !63, i64 0}
!89 = !{!"p1 int", !63, i64 0}
!90 = !{!"", !6, i64 0, !73, i64 128, !6, i64 136, !73, i64 264, !73, i64 272, !7, i64 280, !80, i64 288, !81, i64 296, !6, i64 304, !6, i64 336, !73, i64 344, !7, i64 352, !82, i64 360, !73, i64 368, !83, i64 376, !73, i64 384, !82, i64 392, !84, i64 400, !85, i64 408, !7, i64 416, !73, i64 424, !82, i64 432, !7, i64 440, !82, i64 448, !73, i64 456, !82, i64 464, !73, i64 472, !82, i64 480, !73, i64 488, !86, i64 496, !87, i64 504, !88, i64 512, !88, i64 520, !73, i64 528, !73, i64 536, !86, i64 544, !89, i64 552, !7, i64 560, !7, i64 564, !7, i64 568, !7, i64 572}
!91 = !{!"short", !6, i64 0}
!92 = !{!"", !73, i64 0, !6, i64 8, !6, i64 40, !72, i64 72, !79, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !6, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !90, i64 128, !6, i64 704, !73, i64 768, !6, i64 776, !73, i64 840, !7, i64 848, !7, i64 852, !82, i64 856, !73, i64 864, !82, i64 872, !73, i64 880, !7, i64 888, !6, i64 892, !6, i64 893, !91, i64 894, !81, i64 896, !91, i64 904}
!93 = !{!"p1 _ZTS14dtls1_state_st", !63, i64 0}
!94 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !63, i64 0}
!95 = !{!"p1 _ZTS11dane_ctx_st", !63, i64 0}
!96 = !{!"p1 _ZTS23stack_st_danetls_record", !63, i64 0}
!97 = !{!"p1 _ZTS13stack_st_X509", !63, i64 0}
!98 = !{!"p1 _ZTS17danetls_record_st", !63, i64 0}
!99 = !{!"p1 _ZTS7x509_st", !63, i64 0}
!100 = !{!"ssl_dane_st", !95, i64 0, !96, i64 8, !97, i64 16, !98, i64 24, !99, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !73, i64 56}
!101 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !63, i64 0}
!102 = !{!"p1 _ZTS7cert_st", !63, i64 0}
!103 = !{!"p1 _ZTS14ssl_session_st", !63, i64 0}
!104 = !{!"p1 _ZTS20stack_st_OCSP_RESPID", !63, i64 0}
!105 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !63, i64 0}
!106 = !{!"", !104, i64 0, !105, i64 8, !82, i64 16, !73, i64 24}
!107 = !{!"p1 long", !63, i64 0}
!108 = !{!"p1 _ZTS25tls_session_ticket_ext_st", !63, i64 0}
!109 = !{!"", !6, i64 0, !63, i64 32, !63, i64 40, !82, i64 48, !7, i64 56, !82, i64 64, !91, i64 72, !7, i64 76, !106, i64 80, !7, i64 112, !7, i64 116, !73, i64 120, !82, i64 128, !73, i64 136, !82, i64 144, !73, i64 152, !88, i64 160, !73, i64 168, !88, i64 176, !73, i64 184, !88, i64 192, !73, i64 200, !107, i64 208, !108, i64 216, !63, i64 224, !63, i64 232, !63, i64 240, !63, i64 248, !82, i64 256, !73, i64 264, !82, i64 272, !73, i64 280, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !82, i64 304, !73, i64 312, !7, i64 320, !6, i64 324, !7, i64 328, !6, i64 332, !7, i64 348, !6, i64 352, !6, i64 353, !6, i64 354, !6, i64 355}
!110 = !{!"p1 _ZTS12stack_st_SCT", !63, i64 0}
!111 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !63, i64 0}
!112 = !{!"p1 _ZTS26srtp_protection_profile_st", !63, i64 0}
!113 = !{!"p1 _ZTS9bignum_st", !63, i64 0}
!114 = !{!"srp_ctx_st", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !82, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !113, i64 96, !82, i64 104, !7, i64 112, !73, i64 120}
!115 = !{!"p1 _ZTS17ssl_connection_st", !63, i64 0}
!116 = !{!"p1 _ZTS21ossl_record_method_st", !63, i64 0}
!117 = !{!"p1 _ZTS20ossl_record_layer_st", !63, i64 0}
!118 = !{!"p1 _ZTS20dtls_record_layer_st", !63, i64 0}
!119 = !{!"record_layer_st", !115, i64 0, !116, i64 8, !63, i64 16, !116, i64 24, !116, i64 32, !117, i64 40, !117, i64 48, !72, i64 56, !73, i64 64, !7, i64 72, !73, i64 80, !6, i64 88, !73, i64 96, !73, i64 104, !6, i64 112, !82, i64 120, !7, i64 128, !118, i64 136, !63, i64 144, !63, i64 152, !73, i64 160, !73, i64 168, !73, i64 176, !73, i64 184, !6, i64 192}
!120 = !{!"p1 _ZTS12async_job_st", !63, i64 0}
!121 = !{!"p1 _ZTS17async_wait_ctx_st", !63, i64 0}
!122 = !{!"any p2 pointer", !63, i64 0}
!123 = !{!"p2 _ZTS16sigalg_lookup_st", !122, i64 0}
!124 = !{!"ssl_connection_st", !70, i64 0, !71, i64 64, !7, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !7, i64 104, !63, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !74, i64 136, !74, i64 144, !75, i64 152, !7, i64 240, !76, i64 248, !63, i64 256, !73, i64 264, !73, i64 272, !73, i64 280, !77, i64 288, !63, i64 336, !78, i64 344, !92, i64 352, !93, i64 1264, !63, i64 1272, !63, i64 1280, !7, i64 1288, !94, i64 1296, !100, i64 1304, !101, i64 1368, !101, i64 1376, !101, i64 1384, !101, i64 1392, !7, i64 1400, !6, i64 1404, !6, i64 1468, !6, i64 1532, !6, i64 1596, !6, i64 1660, !6, i64 1724, !6, i64 1788, !6, i64 1852, !6, i64 1916, !6, i64 1980, !6, i64 2044, !6, i64 2108, !102, i64 2176, !6, i64 2184, !73, i64 2248, !7, i64 2256, !73, i64 2264, !6, i64 2272, !103, i64 2304, !103, i64 2312, !82, i64 2320, !73, i64 2328, !63, i64 2336, !6, i64 2344, !73, i64 2376, !7, i64 2384, !63, i64 2392, !63, i64 2400, !7, i64 2408, !7, i64 2412, !63, i64 2416, !63, i64 2424, !63, i64 2432, !63, i64 2440, !97, i64 2448, !73, i64 2456, !83, i64 2464, !83, i64 2472, !73, i64 2480, !7, i64 2488, !7, i64 2492, !7, i64 2496, !73, i64 2504, !7, i64 2512, !7, i64 2516, !73, i64 2520, !73, i64 2528, !73, i64 2536, !109, i64 2544, !63, i64 2904, !7, i64 2912, !63, i64 2920, !63, i64 2928, !110, i64 2936, !7, i64 2944, !64, i64 2952, !111, i64 2960, !112, i64 2968, !7, i64 2976, !7, i64 2980, !7, i64 2984, !7, i64 2988, !82, i64 2992, !73, i64 3000, !7, i64 3008, !79, i64 3016, !114, i64 3024, !63, i64 3152, !119, i64 3160, !63, i64 5400, !63, i64 5408, !120, i64 5416, !121, i64 5424, !73, i64 5432, !7, i64 5440, !7, i64 5444, !7, i64 5448, !73, i64 5456, !73, i64 5464, !73, i64 5472, !63, i64 5480, !63, i64 5488, !63, i64 5496, !63, i64 5504, !123, i64 5512, !73, i64 5520, !82, i64 5528, !73, i64 5536, !82, i64 5544, !73, i64 5552}
!125 = !{!124, !65, i64 24}
!126 = !{!"p1 _ZTS15ssl3_enc_method", !63, i64 0}
!127 = !{!"ssl_method_st", !7, i64 0, !7, i64 4, !73, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128, !63, i64 136, !63, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !63, i64 184, !63, i64 192, !63, i64 200, !63, i64 208, !126, i64 216, !63, i64 224, !63, i64 232, !63, i64 240}
!128 = !{!127, !126, i64 216}
!129 = !{!"ssl3_enc_method", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !82, i64 32, !73, i64 40, !82, i64 48, !73, i64 56, !63, i64 64, !63, i64 72, !7, i64 80, !63, i64 88, !63, i64 96, !63, i64 104}
!130 = !{!129, !7, i64 80}
!131 = !{!127, !7, i64 0}
!132 = !{!75, !7, i64 20}
!133 = !{!124, !7, i64 2256}
!134 = !{!124, !7, i64 2840}
!135 = !{!124, !73, i64 352}
!136 = !{!124, !7, i64 920}
!137 = !{!124, !103, i64 2304}
!138 = !{!"", !82, i64 0, !82, i64 8, !73, i64 16, !73, i64 24, !7, i64 32, !7, i64 36, !82, i64 40, !73, i64 48, !6, i64 56}
!139 = !{!"ssl_session_st", !7, i64 0, !73, i64 8, !6, i64 16, !6, i64 80, !73, i64 592, !6, i64 600, !73, i64 632, !6, i64 640, !82, i64 672, !82, i64 680, !7, i64 688, !81, i64 696, !99, i64 704, !97, i64 712, !73, i64 720, !74, i64 728, !74, i64 736, !74, i64 744, !7, i64 752, !80, i64 760, !73, i64 768, !7, i64 776, !69, i64 784, !138, i64 800, !82, i64 864, !82, i64 872, !73, i64 880, !7, i64 888, !64, i64 896, !103, i64 904, !103, i64 912, !66, i64 920}
!140 = !{!139, !81, i64 696}
!141 = !{!139, !99, i64 704}
!142 = !{!124, !7, i64 240}
!143 = !{!124, !7, i64 2984}
!144 = !{!124, !7, i64 72}
!145 = !{!124, !7, i64 2384}
!146 = !{!124, !7, i64 1204}
!147 = !{!124, !73, i64 264}
!148 = !{!124, !7, i64 104}
!149 = !{!124, !7, i64 3008}
!150 = !{!124, !80, i64 768}
!151 = !{!"ssl_cipher_st", !7, i64 0, !82, i64 8, !82, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72}
!152 = !{!151, !7, i64 32}
!153 = !{!124, !7, i64 2660}
!154 = !{!124, !73, i64 2480}
!155 = !{!124, !7, i64 1288}
!156 = !{!73, !73, i64 0}
!157 = !{!124, !7, i64 2656}
!158 = !{!124, !73, i64 5464}
!159 = !{!124, !73, i64 608}
!160 = !{!124, !73, i64 744}
!161 = !{!124, !93, i64 1264}
!162 = !{!"p1 _ZTS9pqueue_st", !63, i64 0}
!163 = !{!"dtls1_retransmit_state", !116, i64 0, !117, i64 8}
!164 = !{!"hm_header_st", !6, i64 0, !73, i64 8, !91, i64 16, !73, i64 24, !73, i64 32, !7, i64 40, !163, i64 48}
!165 = !{!"dtls1_state_st", !6, i64 0, !73, i64 256, !7, i64 264, !91, i64 268, !91, i64 270, !91, i64 272, !162, i64 280, !162, i64 288, !73, i64 296, !73, i64 304, !164, i64 312, !164, i64 376, !7, i64 440, !74, i64 448, !7, i64 456, !7, i64 460, !63, i64 464}
!166 = !{!165, !7, i64 264}
!167 = !{!124, !7, i64 2976}
!168 = !{!124, !7, i64 2620}
!169 = !{!151, !7, i64 28}
!170 = !{!124, !102, i64 2176}
!171 = !{!"p1 _ZTS13x509_store_st", !63, i64 0}
!172 = !{!"", !63, i64 0, !73, i64 8}
!173 = !{!"cert_st", !87, i64 0, !81, i64 8, !63, i64 16, !7, i64 24, !7, i64 28, !87, i64 32, !73, i64 40, !82, i64 48, !73, i64 56, !88, i64 64, !73, i64 72, !88, i64 80, !73, i64 88, !63, i64 96, !63, i64 104, !171, i64 112, !171, i64 120, !172, i64 128, !63, i64 144, !7, i64 152, !63, i64 160, !82, i64 168, !66, i64 176}
!174 = !{!173, !82, i64 168}
!175 = !{!139, !80, i64 760}
!176 = !{!129, !63, i64 0}
!177 = !{!70, !65, i64 24}
!178 = !{!129, !63, i64 16}
!179 = !{!124, !116, i64 3184}
!180 = !{!"ossl_record_method_st", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128, !63, i64 136, !63, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !63, i64 184, !63, i64 192}
end_hunk_1
