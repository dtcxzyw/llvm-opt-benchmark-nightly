Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cf-socket?download=true
inline.NumInlined: 43
inline.NumDeleted: 19
begin_hunk_0_@cf_udp_connect:bb.a
  br i1 %i.bi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 308
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !132
  %i.bl = icmp eq i8 %i.bk, 5
  %i.bm = select i1 %i.bl, ptr @.str.51, ptr @.str.2
  %i.bn = load i32, ptr %i.ab, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 156
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 202
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 250
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !126
  %i.bs = zext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !131
  %i.bv = zext i16 %i.bu to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.bm, i32 noundef %i.bn, ptr noundef nonnull %i.bp, i32 noundef %i.bs, ptr noundef nonnull %i.bo, i32 noundef %i.bv) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !133
  switch i32 %i.bx, label %linux_quic_mtu.exit.i [
    i32 2, label %bb.z
    i32 10, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %i.a, align 4, !tbaa !21
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !118
  %i.bz = call i32 @setsockopt(i32 noundef %i.by, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.a, i32 noundef 4) #10 ; 0 uses
  br label %linux_quic_mtu.exit.i

bb.aa:                                            ; preds = %bb.y
  store i32 2, ptr %i.a, align 4, !tbaa !21
  %i.ca = load i32, ptr %i.ab, align 8, !tbaa !118
  %i.cb = call i32 @setsockopt(i32 noundef %i.ca, i32 noundef 41, i32 noundef 23, ptr noundef nonnull %i.a, i32 noundef 4) #10 ; 0 uses
  br label %linux_quic_mtu.exit.i

linux_quic_mtu.exit.i:                            ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

cf_udp_setup_quic.exit:                           ; preds = %bb.n, %bb.o, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 2880
  store i32 %i.ak, ptr %i.cc, align 8, !tbaa !130
  br label %bb.ai

bb.ab:                                            ; preds = %linux_quic_mtu.exit.i, %bb.m, %bb.m
  %.not50 = icmp eq ptr %1, null
  br i1 %.not50, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.ce = load i64, ptr %i.cd, align 1
  %i.cf = and i64 %i.ce, 536870912
  %.not51 = icmp eq i64 %i.cf, 0
  br i1 %.not51, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104 ; 2 uses
  %.not52 = icmp eq ptr %i.ch, null
  br i1 %.not52, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !106
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.cl = load ptr, ptr %0, align 8, !tbaa !114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !116
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cp = load i32, ptr %i.h, align 8, !tbaa !118
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 202
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 250
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !126
  %i.ct = zext i16 %i.cs to i32
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.49, i32 noundef %i.cp, ptr noundef nonnull %i.cq, i32 noundef %i.ct) #10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.k
  store i8 1, ptr %2, align 1, !tbaa !124
  %i.cu = load i8, ptr %i.e, align 4
  %i.cv = or i8 %i.cu, 1
  store i8 %i.cv, ptr %i.e, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %cf_udp_setup_quic.exit, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.ah, %bb.c, %bb.b
  %.039 = phi i32 [ 0, %bb.b ], [ %i.k, %bb.j ], [ %i.k, %bb.i ], [ %i.k, %bb.h ], [ 7, %bb.c ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ 7, %cf_udp_setup_quic.exit ], [ 0, %bb.ah ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define i32 @Curl_cf_udp_create(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, i8 noundef zeroext %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readnone captures(none) %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !137
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !109
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 312) #10 ; 9 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread18, label %bb.b

.thread18:                                        ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !137
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  tail call void %i.d(ptr noundef null) #10
  br label %cf_socket_ctx_free.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.c, i8 0, i64 312, i1 false)
  tail call void @Curl_peer_link(ptr noundef nonnull %i.c, ptr noundef %3) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 -1, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  store i8 %4, ptr %i.f, align 4, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(144) %6, i64 144, i1 false), !tbaa.struct !138
  %i.h = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_udp, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = select i1 %.not13, ptr %i.i, ptr null
  store ptr %i.j, ptr %0, align 8, !tbaa !137
  br i1 %.not13, label %cf_socket_ctx_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  call void %i.k(ptr noundef %i.i) #10
  store ptr null, ptr %i.a, align 8, !tbaa !137
  call void @Curl_peer_unlink(ptr noundef nonnull %i.c) #10
  %i.l = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  call void %i.l(ptr noundef nonnull %i.c) #10, !inline_history !1
  br label %cf_socket_ctx_free.exit

cf_socket_ctx_free.exit:                          ; preds = %bb.c, %.thread18, %bb.b
  %.017 = phi i32 [ 0, %bb.b ], [ 27, %.thread18 ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define i32 @Curl_cf_unix_create(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, i8 noundef zeroext %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readnone captures(none) %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !137
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !109
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 312) #10 ; 9 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread18, label %bb.b

.thread18:                                        ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !137
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  tail call void %i.d(ptr noundef null) #10
  br label %cf_socket_ctx_free.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.c, i8 0, i64 312, i1 false)
  tail call void @Curl_peer_link(ptr noundef nonnull %i.c, ptr noundef %3) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 -1, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  store i8 %4, ptr %i.f, align 4, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(144) %6, i64 144, i1 false), !tbaa.struct !138
  %i.h = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_unix, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = select i1 %.not13, ptr %i.i, ptr null
  store ptr %i.j, ptr %0, align 8, !tbaa !137
  br i1 %.not13, label %cf_socket_ctx_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  call void %i.k(ptr noundef %i.i) #10
  store ptr null, ptr %i.a, align 8, !tbaa !137
  call void @Curl_peer_unlink(ptr noundef nonnull %i.c) #10
  %i.l = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  call void %i.l(ptr noundef nonnull %i.c) #10, !inline_history !1
  br label %cf_socket_ctx_free.exit

cf_socket_ctx_free.exit:                          ; preds = %bb.c, %.thread18, %bb.b
  %.017 = phi i32 [ 0, %bb.b ], [ 27, %.thread18 ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 43) i32 @cf_tcp_accept_connect(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %3 = alloca %struct.Curl_sockaddr_storage, align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 3 uses
  %4 = alloca %struct.Curl_sockaddr_storage, align 8 ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !124
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.k = load i64, ptr %i.j, align 8, !tbaa !154  ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  %spec.select.i = select i1 %i.l, i64 %i.k, i64 60000 ; 3 uses
  %i.m = tail call i64 @Curl_timeleft_ms(ptr noundef %1) #10 ; 3 uses
  %.not.i = icmp ne i64 %i.m, 0
  %i.n = icmp slt i64 %i.m, %spec.select.i
  %or.cond.i = select i1 %.not.i, i1 %i.n, i1 false
  br i1 %or.cond.i, label %cf_tcp_accept_timeleft.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %1) #10
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.q = tail call i64 @curlx_ptimediff_ms(ptr noundef %i.o, ptr noundef nonnull %i.p) #10 ; 2 uses
  %i.r = sub nsw i64 %spec.select.i, %i.q
  %.not14.i = icmp eq i64 %spec.select.i, %i.q
  br i1 %.not14.i, label %cf_tcp_accept_timeleft.exit.thread, label %cf_tcp_accept_timeleft.exit

cf_tcp_accept_timeleft.exit:                      ; preds = %bb.d, %bb.c
  %.1.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ]
  %i.s = icmp slt i64 %.1.i, 0
  br i1 %i.s, label %cf_tcp_accept_timeleft.exit.thread, label %bb.e

cf_tcp_accept_timeleft.exit.thread:               ; preds = %bb.d, %cf_tcp_accept_timeleft.exit
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.52) #10
  br label %bb.as

bb.e:                                             ; preds = %cf_tcp_accept_timeleft.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 5 uses
  %i.u = load i64, ptr %i.t, align 1
  %i.v = and i64 %i.u, 536870912
  %.not115 = icmp eq i64 %i.v, 0
  br i1 %.not115, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %.not116 = icmp eq ptr %i.x, null
  br i1 %.not116, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !116
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !118
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 202
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 250
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !126
  %i.ak = zext i16 %i.aj to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.53, i32 noundef %i.ag, ptr noundef nonnull %i.ah, i32 noundef %i.ak) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 6 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !118
  %i.an = tail call i32 @Curl_socket_check(i32 noundef %i.am, i32 noundef -1, i32 noundef -1, i64 noundef 0) #10 ; 3 uses
  %i.ao = load i64, ptr %i.t, align 1
  %i.ap = and i64 %i.ao, 536870912
  %.not117 = icmp eq i64 %i.ap, 0
  br i1 %.not117, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %.not118 = icmp eq ptr %i.ar, null
  br i1 %.not118, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !106
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.av = load ptr, ptr %0, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !116
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.54, i32 noundef %i.an) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %cond = icmp eq i32 %i.an, -1
  br i1 %cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.55) #10
  br label %bb.as

bb.q:                                             ; preds = %bb.o
  %i.az = and i32 %i.an, 1
  %.not119.not = icmp eq i32 %i.az, 0
  %i.ba = load i64, ptr %i.t, align 1
  %i.bb = and i64 %i.ba, 536870912
  %.not122 = icmp eq i64 %i.bb, 0                 ; 2 uses
  br i1 %.not119.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not122, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !104 ; 2 uses
  %.not121 = icmp eq ptr %i.bd, null
  br i1 %.not121, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !106
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.56) #10
  br label %bb.z

.critedge:                                        ; preds = %bb.q
  br i1 %.not122, label %bb.as, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %.not123 = icmp eq ptr %i.bi, null
  br i1 %.not123, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !106
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.x, label %bb.as

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bm = load ptr, ptr %0, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !116
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #10
  br label %bb.as

bb.z:                                             ; preds = %bb.u, %bb.t, %bb.r
  store i32 128, ptr %i.d, align 4, !tbaa !21
  %i.bq = load i32, ptr %i.al, align 8, !tbaa !118
  %i.br = call i32 @accept4(i32 noundef %i.bq, ptr nonnull %4, ptr noundef nonnull %i.d, i32 noundef 526336) #10 ; 3 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bt = tail call ptr @__errno_location() #11
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21
  %i.bv = call ptr @curlx_strerror(i32 noundef %i.bu, ptr noundef nonnull %i.c, i64 noundef 256) #10
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.58, ptr noundef %i.bv) #10
  br label %bb.as

bb.ab:                                            ; preds = %bb.z
  %i.bw = load i64, ptr %i.t, align 1
  %i.bx = and i64 %i.bw, 536870912
  %.not124 = icmp eq i64 %i.bx, 0
  br i1 %.not124, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !104 ; 2 uses
  %.not125 = icmp eq ptr %i.bz, null
  br i1 %.not125, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !106
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.59) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 309 ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = and i8 %i.ce, -7
  %i.cg = or disjoint i8 %i.cf, 4
  store i8 %i.cg, ptr %i.cd, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !119 ; 3 uses
  %i.cj = load i32, ptr %i.al, align 8, !tbaa !118 ; 4 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %socket_close.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not136 = icmp eq ptr %i.ci, null
  br i1 %.not136, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !121
  %.not.i133 = icmp eq ptr %i.cm, null
  call void @Curl_multi_will_close(ptr noundef nonnull %1, i32 noundef %i.cj) #10
  br i1 %.not.i133, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @Curl_set_in_callback(ptr noundef nonnull %1, i1 noundef zeroext true) #10
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !121
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !122
  %i.cq = call i32 %i.cn(ptr noundef %i.cp, i32 noundef %i.cj) #10, !inline_history !0 ; 0 uses
  call void @Curl_set_in_callback(ptr noundef nonnull %1, i1 noundef zeroext false) #10
  br label %socket_close.exit

.thread.i:                                        ; preds = %bb.ah, %bb.ag
  %i.cr = call i32 @close(i32 noundef %i.cj) #10  ; 0 uses
  br label %socket_close.exit

socket_close.exit:                                ; preds = %bb.af, %bb.ai, %.thread.i
  store i32 %i.br, ptr %i.al, align 8, !tbaa !118
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !119
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 280
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !120
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cw
  store i32 %i.br, ptr %i.cx, align 4, !tbaa !21
  %.val131 = load ptr, ptr %i.e, align 8, !tbaa !113 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.cy = getelementptr inbounds nuw i8, ptr %.val131, i64 156 ; 2 uses
  store i8 0, ptr %i.cy, align 4, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %.val131, i64 248 ; 2 uses
  store i16 0, ptr %i.cz, align 4, !tbaa !131
  store i32 128, ptr %i.b, align 4, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %.val131, i64 152
  %i.db = load i32, ptr %i.da, align 8, !tbaa !118
  %i.dc = call i32 @getpeername(i32 noundef %i.db, ptr nonnull %3, ptr noundef nonnull %i.b) #10
  %.not.i134 = icmp eq i32 %i.dc, 0
  br i1 %.not.i134, label %bb.aj, label %.sink.split.i

bb.aj:                                            ; preds = %socket_close.exit
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !21
  %5 = call zeroext i1 @sockaddr2string(ptr noundef nonnull %3, i32 noundef %i.dd, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz)
  br i1 %5, label %bb.ak, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aj, %socket_close.exit
  %.str.62.sink.i = phi ptr [ @.str.61, %socket_close.exit ], [ @.str.62, %bb.aj ]
  %i.de = tail call ptr @__errno_location() #11
  %6 = load i32, ptr %i.de, align 4, !tbaa !21    ; 2 uses
  %i.df = call ptr @curlx_strerror(i32 noundef %6, ptr noundef nonnull %i.a, i64 noundef 256) #10
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull %.str.62.sink.i, i32 noundef %6, ptr noundef %i.df) #10
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.val = load ptr, ptr %i.e, align 8, !tbaa !113
  call fastcc void @set_local_ip(ptr %.val, ptr noundef nonnull %1)
  %i.dg = load i8, ptr %i.cd, align 1
  %i.dh = or i8 %i.dg, 16
  store i8 %i.dh, ptr %i.cd, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.dj = call ptr @Curl_pgrs_now(ptr noundef nonnull %1) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !129
  %i.dk = load i8, ptr %i.g, align 4
  %i.dl = or i8 %i.dk, 1
  store i8 %i.dl, ptr %i.g, align 4
  %i.dm = load i64, ptr %i.t, align 1
  %i.dn = and i64 %i.dm, 536870912
  %.not126 = icmp eq i64 %i.dn, 0
  br i1 %.not126, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !104 ; 2 uses
  %.not127 = icmp eq ptr %i.dp, null
  br i1 %.not127, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !106
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.dt = load ptr, ptr %0, align 8, !tbaa !114
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !116
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dx = load i32, ptr %i.al, align 8, !tbaa !118
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !131
  %i.eb = zext i16 %i.ea to i32
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.60, i32 noundef %i.dx, ptr noundef nonnull %i.dy, i32 noundef %i.eb) #10
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !139
  %.not128 = icmp eq ptr %i.ed, null
  br i1 %.not128, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @Curl_set_in_callback(ptr noundef nonnull %1, i1 noundef zeroext true) #10
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !139
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !140
  %i.eh = load i32, ptr %i.al, align 8, !tbaa !118
  %i.ei = call i32 %i.ee(ptr noundef %i.eg, i32 noundef %i.eh, i32 noundef 1) #10
  call void @Curl_set_in_callback(ptr noundef nonnull %1, i1 noundef zeroext false) #10
  %.not129 = icmp eq i32 %i.ei, 0
  br i1 %.not129, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i8 1, ptr %2, align 1, !tbaa !124
  br label %bb.as

bb.as:                                            ; preds = %.critedge, %bb.w, %bb.x, %bb.y, %bb.aq, %bb.ar, %bb.aa, %bb.p, %cf_tcp_accept_timeleft.exit.thread, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 12, %cf_tcp_accept_timeleft.exit.thread ], [ 10, %bb.p ], [ 10, %bb.aa ], [ 0, %bb.ar ], [ 42, %bb.aq ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %.critedge ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @Curl_conn_tcp_listen_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !137
  tail call void @Curl_conn_cf_discard_all(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !109
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 312) #10 ; 9 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  store i8 3, ptr %i.d, align 4, !tbaa !132
  %i.e = load i32, ptr %3, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 3 uses
  store i32 %i.e, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 309 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, -7
  %i.j = or disjoint i8 %i.i, 2
  store i8 %i.j, ptr %i.g, align 1
  %i.k = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_tcp_accept, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not35 = icmp eq i32 %i.k, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  br i1 %.not35, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @Curl_conn_cf_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %.pre) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.m = call ptr @Curl_pgrs_now(ptr noundef %0) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !129
  %i.n = load i32, ptr %i.f, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  store i32 %i.n, ptr %i.q, align 4, !tbaa !21
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %.val = load ptr, ptr %i.s, align 8, !tbaa !113
  call fastcc void @set_local_ip(ptr %.val, ptr noundef %0)
  %.not36 = icmp eq ptr %0, null
  br i1 %.not36, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.u = load i64, ptr %i.t, align 1
  %i.v = and i64 %i.u, 536870912
  %.not37 = icmp eq i64 %i.v, 0
  br i1 %.not37, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %.not38 = icmp eq ptr %i.x, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp ne ptr %i.ab, null
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.h, label %.thread

bb.g:                                             ; preds = %bb.e
  %.old = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  %.old1.not = icmp eq ptr %.old, null
  br i1 %.old1.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ad = phi ptr [ %i.ab, %bb.f ], [ %.old, %bb.g ] ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !116
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 202
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 250
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !126
  %i.am = zext i16 %i.al to i32
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.5, i32 noundef %i.ai, ptr noundef nonnull %i.aj, i32 noundef %i.am) #10
  br label %.thread

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.an = phi ptr [ %.pre, %bb.b ], [ null, %bb.a ]
  %.0 = phi i32 [ %i.k, %bb.b ], [ 27, %bb.a ]
  %i.ao = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  call void %i.ao(ptr noundef %i.an) #10
  store ptr null, ptr %i.a, align 8, !tbaa !137
  %i.ap = load ptr, ptr @Curl_cfree, align 8, !tbaa !109
  call void %i.ap(ptr noundef %i.c) #10
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %bb.h, %bb.i, %bb.j
  %.042 = phi i32 [ %.0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.042
}

declare void @Curl_conn_cf_discard_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Curl_conn_cf_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Curl_pgrs_now(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @set_local_ip(ptr initializes((202, 203), (250, 252)) %.16.val, ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Curl_sockaddr_storage, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 202 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 250 ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val, i64 152
  %i.f = load i32, ptr %i.e, align 8, !tbaa !118  ; 2 uses
  %.not22 = icmp eq i32 %i.f, -1
end_hunk_0
begin_hunk_1_@set_local_ip:bb.a
  %i.z = load i32, ptr %i.a, align 4, !tbaa !21
  %i.aa = call zeroext i1 @sockaddr2string(ptr noundef nonnull %1, i32 noundef %i.z, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  br i1 %i.aa, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = and i64 %i.ac, 536870912
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104 ; 2 uses
  %.not26 = icmp eq ptr %i.af, null
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !106
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = tail call ptr @__errno_location() #11
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21 ; 2 uses
  %i.al = call ptr @curlx_strerror(i32 noundef %i.ak, ptr noundef nonnull %i.b, i64 noundef 256) #10
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.64, i32 noundef %i.ak, ptr noundef %i.al) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %bb.l, %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b, %bb.a
  ret void
}

declare void @Curl_trc_cf_infof(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @Curl_conn_is_tcp_listen(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %.06 = load ptr, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %.not7.not = icmp eq ptr %.06, null
  br i1 %.not7.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.08, i64 8
  %.0 = load ptr, ptr %i.f, align 8, !tbaa !137   ; 2 uses
  %.not.not = icmp eq ptr %.0, null
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !159

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.08 = phi ptr [ %.0, %bb.b ], [ %.06, %bb.a ]  ; 2 uses
  %i.g = load ptr, ptr %.08, align 8, !tbaa !114
  %i.h = icmp eq ptr %i.g, @Curl_cft_tcp_accept   ; 3 uses
  br i1 %i.h, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ], [ %i.h, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 3) i32 @Curl_cf_socket_peek(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cf_is_socket.exit.thread, label %cf_is_socket.exit

cf_is_socket.exit:                                ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = icmp eq ptr %i.a, @Curl_cft_tcp
  %i.c = icmp eq ptr %i.a, @Curl_cft_udp
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %i.a, @Curl_cft_unix
  %or.cond6.i = or i1 %i.d, %or.cond.i
  %i.e = icmp eq ptr %i.a, @Curl_cft_tcp_accept
  %spec.select.i = or i1 %i.e, %or.cond6.i
  br i1 %spec.select.i, label %bb.b, label %cf_is_socket.exit.thread

bb.b:                                             ; preds = %cf_is_socket.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %cf_is_socket.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load i32, ptr %i.h, align 8, !tbaa !118
  store i32 %i.i, ptr %2, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %3, align 8, !tbaa !136
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %cf_is_socket.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(98) %4, ptr noundef nonnull align 4 dereferenceable(98) %i.k, i64 98, i1 false), !tbaa.struct !134
  br label %cf_is_socket.exit.thread

cf_is_socket.exit.thread:                         ; preds = %bb.a, %cf_is_socket.exit, %bb.b, %bb.g, %bb.h
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ 2, %bb.b ], [ 2, %cf_is_socket.exit ], [ 2, %bb.a ]
  ret i32 %.0
}

declare void @Curl_set_in_callback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @curlx_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #2

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #2

declare void @Curl_multi_will_close(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 46) i32 @cf_socket_open(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Curl_sockaddr_storage, align 8 ; 19 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 15 uses
  %i.d = alloca [256 x i8], align 16              ; 3 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca [256 x i8], align 16              ; 3 uses
  %i.h = alloca [256 x i8], align 16              ; 3 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca [256 x i8], align 16              ; 3 uses
  %i.k = alloca [256 x i8], align 16              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 19 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.o = tail call ptr @Curl_pgrs_now(ptr noundef %1) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !129
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !160
  %i.t = or i32 %i.s, 2048
  store i32 %i.t, ptr %i.r, align 4, !tbaa !160
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 9 uses
  %i.w = tail call fastcc i32 @socket_open(ptr noundef nonnull %1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !95
  %.not116 = icmp eq ptr %i.x, null
  br i1 %.not116, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !160
  %i.aa = and i32 %i.z, -2049
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !160
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not117 = icmp eq i32 %i.w, 0
  br i1 %.not117, label %bb.f, label %bb.cc

bb.f:                                             ; preds = %bb.e
  %.val142 = load ptr, ptr %i.l, align 8, !tbaa !113 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val142, i64 308
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !132
  %i.ad = getelementptr inbounds nuw i8, ptr %.val142, i64 156
  %i.ae = getelementptr inbounds nuw i8, ptr %.val142, i64 252
  store i8 %i.ac, ptr %i.ae, align 4, !tbaa !161
  %3 = getelementptr inbounds nuw i8, ptr %.val142, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.val142, i64 20
  %4 = load i32, ptr %i.af, align 4, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %.val142, i64 248
  %5 = tail call zeroext i1 @sockaddr2string(ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ag)
  br i1 %5, label %bb.g, label %set_remote_ip.exit

set_remote_ip.exit:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ah = tail call ptr @__errno_location() #11
  %6 = load i32, ptr %i.ah, align 4, !tbaa !21    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val142, i64 304
  store i32 %6, ptr %i.ai, align 8, !tbaa !127
  %i.aj = call ptr @curlx_strerror(i32 noundef %6, ptr noundef nonnull %i.k, i64 noundef 256) #10
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, i32 noundef %6, ptr noundef %i.aj) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %bb.cc

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.u, align 8, !tbaa !133
  %i.al = icmp eq i32 %i.ak, 10
  br i1 %i.al, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not122 = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = and i64 %i.ap, 536870912
  %.not124 = icmp eq i64 %i.aq, 0                 ; 2 uses
  br i1 %.not122, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not124, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 2 uses
  %.not128 = icmp eq ptr %i.as, null
  br i1 %.not128, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !106
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 156
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !131
  %i.az = zext i16 %i.ay to i32
  %i.ba = zext i32 %i.an to i64
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.aw, i32 noundef %i.az, i64 noundef %i.ba) #10
  br label %bb.u

bb.m:                                             ; preds = %bb.h
  br i1 %.not124, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !104 ; 2 uses
  %.not125 = icmp eq ptr %i.bc, null
  br i1 %.not125, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !106
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !131
  %i.bj = zext i16 %i.bi to i32
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.bg, i32 noundef %i.bj) #10
  br label %bb.u

bb.q:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = and i64 %i.bl, 536870912
  %.not120 = icmp eq i64 %i.bm, 0
  br i1 %.not120, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104 ; 2 uses
  %.not121 = icmp eq ptr %i.bo, null
  br i1 %.not121, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !106
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 156
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !131
  %i.bv = zext i16 %i.bu to i32
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.bs, i32 noundef %i.bv) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.p, %bb.o, %bb.m, %bb.q, %bb.s, %bb.t
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !133
  switch i32 %i.bw, label %.critedge [
    i32 2, label %bb.v
    i32 10, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !160
  %i.bz = and i32 %i.by, -526337
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 1            ; 2 uses
  %i.cd = and i64 %i.cc, 8589934592
  %.not129 = icmp eq i64 %i.cd, 0
  br i1 %.not129, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i32, ptr %i.v, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  store i32 1, ptr %i.i, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.cf = call i32 @setsockopt(i32 noundef %i.ce, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.i, i32 noundef 4) #10
  %i.cg = icmp sgt i32 %i.cf, -1
  %.pre.pre176 = load i64, ptr %i.cb, align 1     ; 4 uses
  %i.ch = and i64 %.pre.pre176, 536870912
  %.not.i = icmp eq i64 %i.ch, 0
  %or.cond197 = select i1 %i.cg, i1 true, i1 %.not.i
  br i1 %or.cond197, label %tcpnodelay.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !104 ; 2 uses
  %.not14.i = icmp eq ptr %i.cj, null
  br i1 %.not14.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !106
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.aa, label %tcpnodelay.exit

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cn = load ptr, ptr %0, align 8, !tbaa !114
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !116
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ab, label %tcpnodelay.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cr = tail call ptr @__errno_location() #11
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !21
  %i.ct = call ptr @curlx_strerror(i32 noundef %i.cs, ptr noundef nonnull %i.j, i64 noundef 256) #10
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef %i.ct) #10
  %.pre.pre = load i64, ptr %i.cb, align 1
  br label %tcpnodelay.exit

tcpnodelay.exit:                                  ; preds = %bb.x, %bb.z, %bb.aa, %bb.ab
  %.pre = phi i64 [ %.pre.pre176, %bb.x ], [ %.pre.pre, %bb.ab ], [ %.pre.pre176, %bb.z ], [ %.pre.pre176, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %tcpnodelay.exit
  %i.cu = phi i64 [ %i.cc, %bb.w ], [ %.pre, %tcpnodelay.exit ]
  %i.cv = and i64 %i.cu, 549755813888
  %.not130 = icmp eq i64 %i.cv, 0
  br i1 %.not130, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = load i32, ptr %i.v, align 8, !tbaa !118
  call fastcc void @tcpkeepalive(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.cw)
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.v, %bb.ad, %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !139
  %.not131 = icmp eq ptr %i.cy, null
  br i1 %.not131, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  call void @Curl_set_in_callback(ptr noundef nonnull %1, i1 noundef zeroext true) #10
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !139
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !140
  %i.dc = load i32, ptr %i.v, align 8, !tbaa !118
  %i.dd = call i32 %i.cz(ptr noundef %i.db, i32 noundef %i.dc, i32 noundef 0) #10
  call void @Curl_set_in_callback(ptr noundef nonnull %1, i1 noundef zeroext false) #10
  switch i32 %i.dd, label %bb.cc [
    i32 2, label %bb.af
    i32 0, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.ae
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.fold.split, %.critedge
  %.099 = phi i1 [ false, %.critedge ], [ true, %bb.ae ], [ false, %.fold.split ]
  %i.de = load i32, ptr %i.u, align 8, !tbaa !133 ; 9 uses
  switch i32 %i.de, label %bb.bz [
    i32 2, label %bb.ag
    i32 10, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !119 ; 2 uses
  %i.dh = load i32, ptr %i.v, align 8, !tbaa !118 ; 4 uses
end_hunk_1
