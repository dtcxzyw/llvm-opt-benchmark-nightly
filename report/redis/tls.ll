Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/tls?download=true
inline.NumInlined: 33
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tlsInit:bb.a
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.4) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tlsCleanup() #0 {
bb.a:
  %i.a = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !57 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SSL_CTX_free(ptr noundef nonnull %i.a) #16
  store ptr null, ptr @redis_tls_ctx, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @redis_tls_client_ctx, align 8, !tbaa !57 ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @SSL_CTX_free(ptr noundef nonnull %i.b) #16
  store ptr null, ptr @redis_tls_client_ctx, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @OPENSSL_cleanup() #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @tlsConfigure(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = icmp eq i32 %1, 0
  %i.e = load ptr, ptr @redis_tls_ctx, align 8
  %i.f = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %.thread95, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !84
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %.thread95, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.5) #16
  br label %.thread95

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %.thread95, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.6) #16
  br label %.thread95

bb.h:                                             ; preds = %bb.e
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8496), align 8, !tbaa !86
  %i.o = icmp ne i32 %i.n, 0
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8
  %i.q = icmp ne i32 %i.p, 0
  %or.cond3 = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8492), align 4
  %i.s = icmp ne i32 %i.r, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.s
  br i1 %or.cond5, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58
  %.not68 = icmp eq ptr %i.u, null
  br i1 %.not68, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %.thread95, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.7) #16
  br label %.thread95

bb.m:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !87  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %parseProtocolsConfig.exit.thread82, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #17
  %i.ac = call ptr @sdssplitlen(ptr noundef nonnull %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %i.a) #16 ; 4 uses
  %.not25.i = icmp eq ptr %i.ac, null
  br i1 %.not25.i, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !15  ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader.i, label %parseProtocolsConfig.exit.thread82.sink.split

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ad to i64
  br label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.ag = icmp sgt i32 %i.af, 3
  br i1 %i.ag, label %parseProtocolsConfig.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.17) #16
  br label %parseProtocolsConfig.exit.thread

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %.032.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ap, %bb.v ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 4 uses
  %i.aj = call i32 @strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.18) #17
  %.not26.i = icmp eq i32 %i.aj, 0
  br i1 %.not26.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.ak = call i32 @strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.19) #17
  %.not27.i = icmp eq i32 %i.ak, 0
  br i1 %.not27.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = call i32 @strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.20) #17
  %.not28.i = icmp eq i32 %i.al, 0
  br i1 %.not28.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = call i32 @strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.21) #17
  %.not29.i = icmp eq i32 %i.am, 0
  br i1 %.not29.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %parseProtocolsConfig.exit.thread86, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.22) #16
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !15
  br label %parseProtocolsConfig.exit.thread86

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q, %.lr.ph.i
  %.sink.i = phi i32 [ 1, %.lr.ph.i ], [ 2, %bb.q ], [ 4, %bb.r ], [ 8, %bb.s ]
  %i.ap = or i32 %.sink.i, %.032.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %parseProtocolsConfig.exit.thread82.sink.split, label %.lr.ph.i, !llvm.loop !83

parseProtocolsConfig.exit.thread:                 ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread95

parseProtocolsConfig.exit.thread86:               ; preds = %bb.u, %bb.t
  %.ph = phi i32 [ %i.ad, %bb.t ], [ %.pre.i, %bb.u ]
  call void @sdsfreesplitres(ptr noundef nonnull %i.ac, i32 noundef %.ph) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread95

parseProtocolsConfig.exit.thread82.sink.split:    ; preds = %bb.v, %.preheader.i
  %.122.i84.ph = phi i32 [ 0, %.preheader.i ], [ %i.ap, %bb.v ]
  call void @sdsfreesplitres(ptr noundef nonnull %i.ac, i32 noundef %i.ad) #16
  br label %parseProtocolsConfig.exit.thread82

parseProtocolsConfig.exit.thread82:               ; preds = %parseProtocolsConfig.exit.thread82.sink.split, %bb.m
  %.122.i84 = phi i32 [ 12, %bb.m ], [ %.122.i84.ph, %parseProtocolsConfig.exit.thread82.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.aq = call fastcc ptr @createSSLContext(ptr noundef nonnull %0, i32 noundef %.122.i84, i32 noundef 0) ; 12 uses
  %.not70 = icmp eq ptr %i.aq, null
  br i1 %.not70, label %.thread95, label %bb.w

bb.w:                                             ; preds = %parseProtocolsConfig.exit.thread82
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !88
  %.not71 = icmp eq i32 %i.as, 0
  br i1 %.not71, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.aq, i32 noundef 44, i64 noundef 2, ptr noundef null) #16 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i32, ptr %i.au, align 8, !tbaa !89
  %i.aw = sext i32 %i.av to i64
  %i.ax = call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.aq, i32 noundef 42, i64 noundef %i.aw, ptr noundef null) #16 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !90
  %i.ba = sext i32 %i.az to i64
  %i.bb = call i64 @SSL_CTX_set_timeout(ptr noundef nonnull %i.aq, i64 noundef %i.ba) #16 ; 0 uses
  %i.bc = call i32 @SSL_CTX_set_session_id_context(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.8, i32 noundef 5) #16 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bd = call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.aq, i32 noundef 44, i64 noundef 0, ptr noundef null) #16 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !91
  %.not72 = icmp eq i32 %i.bf, 0
  br i1 %.not72, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.aq, i64 noundef 4194304) #16 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bh = call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.aq, i64 noundef 0) #16 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 2 uses
  %.not73 = icmp eq ptr %i.bj, null
  br i1 %.not73, label %bb.as, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = call noalias ptr @fopen64(ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.9) ; 5 uses
  %.not74 = icmp eq ptr %i.bk, null
  br i1 %.not74, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.bm = icmp sgt i32 %i.bl, 3
  br i1 %i.bm, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !92
  %i.bo = tail call ptr @__errno_location() #18
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !15
  %i.bq = call ptr @strerror(i32 noundef %i.bp) #16
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef %i.bn, ptr noundef %i.bq) #16
  br label %.thread

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !94
  %i.br = call ptr @OSSL_DECODER_CTX_new_for_pkey(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef null, ptr noundef null) #16 ; 4 uses
  %.not75 = icmp eq ptr %i.br, null
  br i1 %.not75, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.bt = icmp sgt i32 %i.bs, 3
  br i1 %i.bt, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.13) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.bu = call i32 @fclose(ptr noundef nonnull %i.bk) ; 0 uses
  br label %.thread92

bb.aj:                                            ; preds = %bb.af
  %i.bv = call i32 @OSSL_DECODER_from_fp(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bk) #16
  %.not76 = icmp eq i32 %i.bv, 0
  br i1 %.not76, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.bx = icmp sgt i32 %i.bw, 3
  br i1 %i.bx, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !92
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef %i.by) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @OSSL_DECODER_CTX_free(ptr noundef nonnull %i.br) #16
  %i.bz = call i32 @fclose(ptr noundef nonnull %i.bk) ; 0 uses
  br label %.thread92

bb.an:                                            ; preds = %bb.aj
  call void @OSSL_DECODER_CTX_free(ptr noundef nonnull %i.br) #16
  %i.ca = call i32 @fclose(ptr noundef nonnull %i.bk) ; 0 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.cc = call i32 @SSL_CTX_set0_tmp_dh_pkey(ptr noundef nonnull %i.aq, ptr noundef %i.cb) #16
  %i.cd = icmp slt i32 %i.cc, 1
  br i1 %i.cd, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ce = call i64 @ERR_get_error() #16
  call void @ERR_error_string_n(i64 noundef %i.ce, ptr noundef nonnull %i.b, i64 noundef 256) #16
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.cg = icmp sgt i32 %i.cf, 3
  br i1 %i.cg, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = load ptr, ptr %i.bi, align 8, !tbaa !92
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.15, ptr noundef %i.ch, ptr noundef nonnull %i.b) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !94
  call void @EVP_PKEY_free(ptr noundef %i.ci) #16
  br label %.thread92

.thread92:                                        ; preds = %bb.aq, %bb.ai, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.thread

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.at

bb.as:                                            ; preds = %bb.ab
  %i.cj = call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.aq, i32 noundef 118, i64 noundef 1, ptr noundef null) #16 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !95
  %.not77 = icmp eq ptr %i.cl, null
  br i1 %.not77, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !96
  %.not78 = icmp eq ptr %i.cn, null
  br i1 %.not78, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.co = call fastcc ptr @createSSLContext(ptr noundef nonnull %0, i32 noundef %.122.i84, i32 noundef 1) ; 2 uses
  %.not79 = icmp eq ptr %i.co, null
  br i1 %.not79, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.056 = phi ptr [ %i.co, %bb.av ], [ null, %bb.au ], [ null, %bb.at ]
  %i.cp = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !57
  call void @SSL_CTX_free(ptr noundef %i.cp) #16
  %i.cq = load ptr, ptr @redis_tls_client_ctx, align 8, !tbaa !57
  call void @SSL_CTX_free(ptr noundef %i.cq) #16
  store ptr %i.aq, ptr @redis_tls_ctx, align 8, !tbaa !57
  store ptr %.056, ptr @redis_tls_client_ctx, align 8, !tbaa !57
  br label %.thread95

.thread:                                          ; preds = %bb.ae, %bb.ad, %bb.av, %.thread92
  call void @SSL_CTX_free(ptr noundef nonnull %i.aq) #16
  br label %.thread95

.thread95:                                        ; preds = %parseProtocolsConfig.exit.thread86, %parseProtocolsConfig.exit.thread, %bb.d, %bb.c, %bb.g, %bb.f, %bb.l, %bb.k, %parseProtocolsConfig.exit.thread82, %.thread, %bb.a, %bb.aw
  %.0 = phi i32 [ 0, %bb.aw ], [ 0, %bb.a ], [ -1, %.thread ], [ -1, %parseProtocolsConfig.exit.thread86 ], [ -1, %parseProtocolsConfig.exit.thread82 ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %parseProtocolsConfig.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @tlsEventHandler(ptr nofree readnone captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  tail call fastcc void @tlsHandleEvent(ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tlsAcceptHandler(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [46 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6648), align 8, !tbaa !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.in = phi i32 [ %i.d, %.backedge ], [ %i.c, %bb.a ]
  %i.d = add nsw i32 %.in, -1                     ; 2 uses
  %i.e = call i32 @anetTcpAccept(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624), i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef 46, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @__errno_location() #18    ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %i.i = call i32 @anetAcceptFailureNeedsRetry(i32 noundef %i.h) #16
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.c, label %.backedge

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 11
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.m = icmp sgt i32 %i.l, 3
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.31, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624)) #16
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.a, align 4, !tbaa !15
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.b, i32 noundef %i.p) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = call ptr @connCreateAcceptedTLS(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 8496))
  call void @acceptCommonHandler(ptr noundef %i.q, i32 noundef 0, ptr noundef nonnull %i.b) #16
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.b
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !97

.loopexit:                                        ; preds = %.backedge, %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @connTLSAddr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = tail call i32 @anetFdToString(i32 noundef %i.b, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #16
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @connTLSIsLocal(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @connectionTypeTcp() #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = tail call i32 %i.c(ptr noundef %0) #16
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @connTLSListen(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @listenToPort(ptr noundef %0) #16
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @connCreateTLS(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !57
  %i.b = load ptr, ptr @redis_tls_client_ctx, align 8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select.i = select i1 %.not, ptr %i.a, ptr %i.b
  %i.c = tail call noalias dereferenceable_or_null(104) ptr @zcalloc(i64 noundef 104) #19, !inline_history !0 ; 6 uses
  store ptr @CT_TLS, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 1024, ptr %i.f, align 8, !tbaa !66
  %i.g = tail call ptr @SSL_new(ptr noundef %spec.select.i) #16, !inline_history !0
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !25
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @connCreateAcceptedTLS(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.b = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !57
  %i.c = tail call noalias dereferenceable_or_null(104) ptr @zcalloc(i64 noundef 104) #19, !inline_history !0 ; 9 uses
  store ptr @CT_TLS, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 1024, ptr %i.f, align 8, !tbaa !66
  %i.g = tail call ptr @SSL_new(ptr noundef %i.b) #16, !inline_history !0 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !25
  store i32 %1, ptr %i.d, align 8, !tbaa !64
  store ptr %0, ptr %i.e, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 2, ptr %i.i, align 8, !tbaa !67
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %updateTLSError.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @zfree(ptr noundef nonnull %i.l) #16
  br label %updateTLSError.exit

updateTLSError.exit:                              ; preds = %bb.b, %bb.c
  %i.m = tail call noalias dereferenceable_or_null(512) ptr @zmalloc(i64 noundef 512) #19 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !69
  %i.n = tail call i64 @ERR_get_error() #16
  tail call void @ERR_error_string_n(i64 noundef %i.n, ptr noundef %i.m, i64 noundef 512) #16
  store i32 5, ptr %i.i, align 8, !tbaa !67
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %i.a, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 3
  %switch.selectcmp20 = icmp eq i32 %i.a, 0
  %switch.select21 = select i1 %switch.selectcmp20, i32 0, i32 %switch.select
  tail call void @SSL_set_verify(ptr noundef nonnull %i.g, i32 noundef %switch.select21, ptr noundef null) #16
  %i.o = tail call i32 @SSL_set_fd(ptr noundef nonnull %i.g, i32 noundef %1) #16 ; 0 uses
  tail call void @SSL_set_accept_state(ptr noundef nonnull %i.g) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %updateTLSError.exit
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal void @connTLSShutdown(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @SSL_shutdown(ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @SSL_free(ptr noundef %i.g) #16
  store ptr null, ptr %i.a, align 8, !tbaa !25
  br label %bb.e
end_hunk_0
