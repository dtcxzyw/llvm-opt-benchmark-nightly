Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/s_server?download=true
inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@www_body:bb.a
.thread339:                                       ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bx, %.thread342
  %.2249 = phi i32 [ %i.ga, %.thread342 ], [ %.1248, %bb.bx ], [ 3, %bb.bv ], [ 2, %bb.bu ], [ -1, %bb.bw ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.bs, !llvm.loop !84

bb.by:                                            ; preds = %bb.bs
  %i.gc = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.591) #13 ; 0 uses
  %i.gd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.592, ptr noundef nonnull %i.fq) #13 ; 0 uses
  br label %.preheader416

bb.bz:                                            ; preds = %bb.bs
  store i8 0, ptr %.0, align 1, !tbaa !29
  switch i32 %.0247, label %bb.cb [
    i32 -1, label %bb.ca
    i32 3, label %bb.ca
  ]

bb.ca:                                            ; preds = %.thread347, %bb.bz, %bb.bz
  %i.ge = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.591) #13 ; 0 uses
  %i.gf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.593, ptr noundef nonnull %i.fq) #13 ; 0 uses
  br label %.preheader416

bb.cb:                                            ; preds = %bb.bz
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !29
  switch i8 %i.gg, label %bb.cd [
    i8 47, label %bb.cc
    i8 92, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.gh = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.591) #13 ; 0 uses
  %i.gi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.594, ptr noundef nonnull %i.fq) #13 ; 0 uses
  br label %.preheader416

bb.cd:                                            ; preds = %bb.cb
  %i.gj = call i32 @app_isdir(ptr noundef nonnull %i.fq) #13
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gl = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.591) #13 ; 0 uses
  %i.gm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.595, ptr noundef nonnull %i.fq) #13 ; 0 uses
  br label %.preheader416

bb.cf:                                            ; preds = %bb.cd
  %.b296 = load i1, ptr @http_server_binmode, align 1
  %i.gn = select i1 %.b296, ptr @.str.596, ptr @.str.464 ; 2 uses
  %i.go = call ptr @BIO_new_file(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.gn) #13 ; 4 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.gq = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.591) #13 ; 0 uses
  %i.gr = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.597, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.gn) #13 ; 0 uses
  call void @ERR_print_errors(ptr noundef nonnull %i.e) #13
  br label %.preheader416

bb.ch:                                            ; preds = %bb.cf
  %.b291 = load i1, ptr @s_quiet, align 4
  br i1 %.b291, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gs = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.gt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gs, ptr noundef nonnull @.str.598, ptr noundef nonnull %i.fq) #13 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.gu = load i32, ptr @www, align 4, !tbaa !15
  %i.gv = icmp eq i32 %i.gu, 2
  br i1 %i.gv, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.gw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fq) #15 ; 3 uses
  %i.gx = trunc i64 %i.gw to i32                  ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 5
  br i1 %i.gy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.gz = add i64 %i.gw, 4294967291
  %i.ha = and i64 %i.gz, 4294967295
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ha
  %i.hc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(6) @.str.599) #15
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.sink.split, label %.thread349

bb.cm:                                            ; preds = %bb.ck
  %i.he = icmp eq i32 %i.gx, 5
  br i1 %i.he, label %.thread349, label %.critedge

.thread349:                                       ; preds = %bb.cl, %bb.cm
  %i.hf = add i64 %i.gw, 4294967292
  %i.hg = and i64 %i.hf, 4294967295
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hg ; 2 uses
  %i.hi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hh, ptr noundef nonnull dereferenceable(5) @.str.600) #15
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %.sink.split, label %bb.cn

bb.cn:                                            ; preds = %.thread349
  %i.hk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hh, ptr noundef nonnull dereferenceable(5) @.str.601) #15
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.cm, %bb.cn
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cl, %.thread349, %bb.cn, %.critedge
  %.str.574.sink = phi ptr [ @.str.591, %.critedge ], [ @.str.574, %bb.cn ], [ @.str.574, %.thread349 ], [ @.str.574, %bb.cl ]
  %i.hm = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull %.str.574.sink) #13 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %.sink.split, %bb.cj
  %i.hn = call i32 @BIO_read(ptr noundef nonnull %i.go, ptr noundef nonnull %i.c, i32 noundef 16384) #13 ; 2 uses
  %i.ho = icmp slt i32 %i.hn, 1
  br i1 %i.ho, label %.loopexit351, label %.preheader

.loopexit350:                                     ; preds = %bb.cu
  %i.hp = call i32 @BIO_read(ptr noundef nonnull %i.go, ptr noundef nonnull %i.c, i32 noundef 16384) #13 ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 1
  br i1 %i.hq, label %.loopexit351, label %.preheader

.preheader:                                       ; preds = %bb.co, %.loopexit350
  %i.hr = phi i32 [ %i.hp, %.loopexit350 ], [ %i.hn, %bb.co ] ; 2 uses
  br label %bb.cp

bb.cp:                                            ; preds = %.preheader, %bb.cu
  %.2252372 = phi i32 [ 0, %.preheader ], [ %.3253, %bb.cu ] ; 4 uses
  %i.hs = zext nneg i32 %.2252372 to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hs
  %i.hu = sub nsw i32 %i.hr, %.2252372
  %i.hv = call i32 @BIO_write(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ht, i32 noundef %i.hu) #13 ; 2 uses
  %i.hw = icmp slt i32 %i.hv, 1
  br i1 %i.hw, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.hx = call i32 @BIO_test_flags(ptr noundef nonnull %i.e, i32 noundef 8) #13
  %.not305 = icmp eq i32 %i.hx, 0
  br i1 %.not305, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.hy = call i32 @SSL_waiting_for_async(ptr noundef nonnull %i.t) #13
  %.not306 = icmp eq i32 %i.hy, 0
  br i1 %.not306, label %.loopexit351, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.hz = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.ia = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hz, ptr noundef nonnull @.str.602) #13 ; 0 uses
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cp
  %i.ib = add nuw nsw i32 %i.hv, %.2252372
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.3253 = phi i32 [ %.2252372, %bb.cs ], [ %i.ib, %bb.ct ] ; 2 uses
  %i.ic = icmp slt i32 %.3253, %i.hr
  br i1 %i.ic, label %bb.cp, label %.loopexit350, !llvm.loop !85

.loopexit351:                                     ; preds = %.loopexit350, %bb.cr, %bb.co
  %i.id = call i32 @BIO_free(ptr noundef nonnull %i.go) #13 ; 0 uses
  br label %.preheader416

.preheader416:                                    ; preds = %bb.bp, %bb.by, %bb.ca, %bb.cc, %bb.ce, %bb.cg, %.loopexit351
  br label %bb.cv

bb.cv:                                            ; preds = %.preheader416, %bb.cw
  %i.ie = call i64 @BIO_ctrl(ptr noundef nonnull %i.e, i32 noundef 11, i64 noundef 0, ptr noundef null) #13
  %i.if = trunc i64 %i.ie to i32
  %i.ig = icmp slt i32 %i.if, 1
  br i1 %i.ig, label %bb.cw, label %.loopexit

bb.cw:                                            ; preds = %bb.cv
  %i.ih = call i32 @BIO_test_flags(ptr noundef nonnull %i.e, i32 noundef 8) #13
  %.not316 = icmp eq i32 %i.ih, 0
  br i1 %.not316, label %.loopexit, label %bb.cv

.loopexit:                                        ; preds = %bb.al, %bb.cw, %bb.cv
  call void @do_ssl_shutdown(ptr noundef nonnull %i.t) #13
  br label %.thread330

.thread330:                                       ; preds = %bb.av, %bb.at, %bb.ac, %bb.r, %bb.af, %bb.ag, %bb.h, %bb.g, %bb.a, %.loopexit, %bb.o, %bb.m
  %.0246 = phi ptr [ %i.g, %bb.a ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ %i.g, %bb.o ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %.loopexit ], [ %i.g, %bb.m ], [ null, %bb.ac ], [ %i.g, %bb.r ], [ null, %bb.at ], [ null, %bb.av ]
  call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.412, i32 noundef 3728) #13
  %i.ii = call i32 @BIO_free(ptr noundef %.0246) #13 ; 0 uses
  call void @BIO_free_all(ptr noundef %i.e) #13
  call void @BIO_free_all(ptr noundef %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -11, 2) i32 @sv_body(i32 noundef %0, i32 noundef %1, i32 %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.fd_set, align 8             ; 7 uses
  %5 = alloca %struct.timeval, align 8            ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.d = icmp eq i32 %1, 2
  %i.e = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.515) #13 ; 18 uses
  %.b237 = load i1, ptr @s_nbio, align 4
  br i1 %.b237, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BIO_socket_nbio(i32 noundef %0, i32 noundef 1) #13
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @bio_err, align 8, !tbaa !22
  tail call void @ERR_print_errors(ptr noundef %i.g) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.b239 = load i1, ptr @s_quiet, align 4
  br i1 %.b239, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.i = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.h, ptr noundef nonnull @.str.516) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %i.j = load ptr, ptr @ctx, align 8, !tbaa !20
  %i.k = tail call ptr @SSL_new(ptr noundef %i.j) #13 ; 73 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread306, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.b244 = load i1, ptr @s_tlsextdebug, align 4
  br i1 %.b244, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i64 @SSL_callback_ctrl(ptr noundef nonnull %i.k, i32 noundef 56, ptr noundef nonnull @tlsext_cb) #13 ; 0 uses
  %i.n = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.o = tail call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 57, i64 noundef 0, ptr noundef %i.n) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not248 = icmp eq ptr %3, null
  br i1 %.not248, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.q = trunc i64 %i.p to i32
  %i.r = tail call i32 @SSL_set_session_id_context(ptr noundef nonnull %i.k, ptr noundef nonnull %3, i32 noundef %i.q) #13
  %.not249 = icmp eq i32 %i.r, 0
  br i1 %.not249, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.t = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.s, ptr noundef nonnull @.str.517) #13 ; 0 uses
  br label %.thread302

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.u = tail call i32 @SSL_clear(ptr noundef nonnull %i.k) #13
  %.not250 = icmp eq i32 %i.u, 0
  br i1 %.not250, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.w = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.v, ptr noundef nonnull @.str.518) #13 ; 0 uses
  br label %.thread302

bb.n:                                             ; preds = %bb.l
  br i1 %i.d, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.x = tail call ptr @BIO_new_dgram(i32 noundef %0, i32 noundef 0) #13 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.aa = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.z, ptr noundef nonnull @.str.519) #13 ; 0 uses
  %i.ab = load ptr, ptr @bio_err, align 8, !tbaa !22
  tail call void @ERR_print_errors(ptr noundef %i.ab) #13
  br label %.thread302

bb.q:                                             ; preds = %bb.o
  %.b246 = load i1, ptr @enable_timeouts, align 4
  br i1 %.b246, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 0, ptr %5, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 250000, ptr %i.ac, align 8, !tbaa !96
  %i.ad = call i64 @BIO_ctrl(ptr noundef nonnull %i.x, i32 noundef 33, i64 noundef 0, ptr noundef nonnull %5) #13 ; 0 uses
  store i64 0, ptr %5, align 8, !tbaa !95
  store i64 250000, ptr %i.ac, align 8, !tbaa !96
  %i.ae = call i64 @BIO_ctrl(ptr noundef nonnull %i.x, i32 noundef 35, i64 noundef 0, ptr noundef nonnull %5) #13 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = load i64, ptr @socket_mtu, align 8, !tbaa !36 ; 2 uses
  %.not251 = icmp eq i64 %i.af, 0
  br i1 %.not251, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 121, i64 noundef 0, ptr noundef null) #13
  %i.ah = icmp slt i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ai = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.aj = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 121, i64 noundef 0, ptr noundef null) #13
  %i.ak = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ai, ptr noundef nonnull @.str.520, i64 noundef %i.aj) #13 ; 0 uses
  %i.al = call i32 @BIO_free(ptr noundef nonnull %i.x) #13 ; 0 uses
  br label %.thread302

bb.v:                                             ; preds = %bb.t
  %i.am = call i64 @SSL_set_options(ptr noundef nonnull %i.k, i64 noundef 4096) #13 ; 0 uses
  %i.an = load i64, ptr @socket_mtu, align 8, !tbaa !36
  %i.ao = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 120, i64 noundef %i.an, ptr noundef null) #13
  %.not252 = icmp eq i64 %i.ao, 0
  br i1 %.not252, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.ap = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.aq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ap, ptr noundef nonnull @.str.521) #13 ; 0 uses
  %i.ar = call i32 @BIO_free(ptr noundef nonnull %i.x) #13 ; 0 uses
  br label %.thread302

bb.x:                                             ; preds = %bb.s
  %i.as = call i64 @BIO_ctrl(ptr noundef nonnull %i.x, i32 noundef 39, i64 noundef 0, ptr noundef null) #13 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.v
  %i.at = call i64 @SSL_set_options(ptr noundef nonnull %i.k, i64 noundef 8192) #13 ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %bb.n
  %i.au = tail call ptr @BIO_new_socket(i32 noundef %0, i32 noundef 0) #13 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aw = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.ax = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aw, ptr noundef nonnull @.str.519) #13 ; 0 uses
  %i.ay = load ptr, ptr @bio_err, align 8, !tbaa !22
  tail call void @ERR_print_errors(ptr noundef %i.ay) #13
  br label %.thread302

bb.aa:                                            ; preds = %.thread, %bb.y
  %.0205280 = phi ptr [ %i.x, %.thread ], [ %i.au, %bb.y ] ; 3 uses
  %.b = load i1, ptr @s_nbio_test, align 4
  br i1 %.b, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.az = call ptr @BIO_f_nbio_test() #13
  %i.ba = call ptr @BIO_new(ptr noundef %i.az) #13 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.ac, label %.thread281

.thread281:                                       ; preds = %bb.ab
  %i.bc = call ptr @BIO_push(ptr noundef nonnull %i.ba, ptr noundef nonnull %.0205280) #13
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bd = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.be = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bd, ptr noundef nonnull @.str.519) #13 ; 0 uses
  %i.bf = call i32 @BIO_free(ptr noundef nonnull %.0205280) #13 ; 0 uses
  br label %.thread302

bb.ad:                                            ; preds = %.thread281, %bb.aa
  %.2207 = phi ptr [ %i.bc, %.thread281 ], [ %.0205280, %bb.aa ] ; 2 uses
  call void @SSL_set_bio(ptr noundef nonnull %i.k, ptr noundef %.2207, ptr noundef %.2207) #13
  call void @SSL_set_accept_state(ptr noundef nonnull %i.k) #13
  %i.bg = call ptr @SSL_get_rbio(ptr noundef nonnull %i.k) #13
  call void @BIO_set_callback_ex(ptr noundef %i.bg, ptr noundef nonnull @count_reads_callback) #13
  %i.bh = load i32, ptr @s_msg, align 4, !tbaa !15
  switch i32 %i.bh, label %bb.ae [
    i32 0, label %bb.ag
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %msg_cb.sink = phi ptr [ @msg_cb, %bb.ae ], [ @SSL_trace, %bb.ad ]
  call void @SSL_set_msg_callback(ptr noundef nonnull %i.k, ptr noundef nonnull %msg_cb.sink) #13
  %i.bi = load ptr, ptr @bio_s_msg, align 8, !tbaa !22 ; 2 uses
  %.not254 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr @bio_s_out, align 8
  %i.bk = select i1 %.not254, ptr %i.bj, ptr %i.bi
  %i.bl = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 16, i64 noundef 0, ptr noundef %i.bk) #13 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.b243 = load i1, ptr @s_tlsextdebug, align 4
  br i1 %.b243, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bm = call i64 @SSL_callback_ctrl(ptr noundef nonnull %i.k, i32 noundef 56, ptr noundef nonnull @tlsext_cb) #13 ; 0 uses
  %i.bn = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.bo = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 57, i64 noundef 0, ptr noundef %i.bn) #13 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
end_hunk_0
begin_hunk_1_@sv_body:bb.a
  br label %.preheader316

.preheader316:                                    ; preds = %.preheader316.outer, %bb.an
  %i.bp = call i32 @SSL_read_early_data(ptr noundef nonnull %i.k, ptr noundef %i.e, i64 noundef 16384, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not258327 = icmp eq i32 %i.bp, 0
  br i1 %.not258327, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader316, %bb.ak
  %i.bq = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef 0) #13
  switch i32 %i.bq, label %bb.au [
    i32 3, label %bb.ak
    i32 9, label %bb.ak
    i32 2, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.br = call i32 @SSL_read_early_data(ptr noundef nonnull %i.k, ptr noundef %i.e, i64 noundef 16384, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not258 = icmp eq i32 %i.br, 0
  br i1 %.not258, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak, %.preheader316
  %.lcssa = phi i32 [ %i.bp, %.preheader316 ], [ %i.br, %bb.ak ] ; 2 uses
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %.not270 = icmp eq i64 %i.bs, 0
  br i1 %.not270, label %bb.an, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  br i1 %.not271, label %.thread393, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bt = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.bu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bt, ptr noundef nonnull @.str.523) #13 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !36
  br label %.thread393

bb.an:                                            ; preds = %._crit_edge
  %.not255 = icmp eq i32 %.lcssa, 2
  br i1 %.not255, label %bb.ao, label %.preheader316, !llvm.loop !86

.thread393:                                       ; preds = %bb.al, %bb.am
  %i.bv = phi i64 [ %.pre, %bb.am ], [ %i.bs, %bb.al ]
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = call i32 @raw_write_stdout(ptr noundef %i.e, i32 noundef %i.bw) #13 ; 0 uses
  %i.by = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.bz = call i64 @BIO_ctrl(ptr noundef %i.by, i32 noundef 11, i64 noundef 0, ptr noundef null) #13 ; 0 uses
  %.not255395 = icmp eq i32 %.lcssa, 2
  br i1 %.not255395, label %.thread397, label %.preheader316.outer, !llvm.loop !86

bb.ao:                                            ; preds = %bb.an
  br i1 %.not271, label %.thread397, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ca = call i32 @SSL_get_early_data_status(ptr noundef nonnull %i.k) #13
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = load ptr, ptr @bio_s_out, align 8, !tbaa !22 ; 2 uses
  br i1 %i.cb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cc, ptr noundef nonnull @.str.524) #13 ; 0 uses
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ce = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cc, ptr noundef nonnull @.str.525) #13 ; 0 uses
  br label %bb.as

.thread397:                                       ; preds = %.thread393, %bb.ao
  %i.cf = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.cg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cf, ptr noundef nonnull @.str.526) #13 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %.thread397
  %i.ch = call i32 @SSL_is_init_finished(ptr noundef nonnull %i.k) #13
  %.not257 = icmp eq i32 %i.ch, 0
  br i1 %.not257, label %.thread285, label %bb.at

bb.at:                                            ; preds = %bb.as
  call fastcc void @print_connection_info(ptr noundef %i.k)
  br label %.thread285

.thread285:                                       ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph
  %i.ci = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.cj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ci, ptr noundef nonnull @.str.522) #13 ; 0 uses
  %i.ck = load ptr, ptr @bio_err, align 8, !tbaa !22
  call void @ERR_print_errors(ptr noundef %i.ck) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread302

bb.av:                                            ; preds = %.thread285, %bb.ai
  %i.cl = call i32 @fileno_stdin() #13
  %i.cm = icmp sgt i32 %i.cl, %0
  br i1 %i.cm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cn = call i32 @fileno_stdin() #13
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.0211.in = phi i32 [ %i.cn, %bb.aw ], [ %0, %bb.av ]
  %.0211 = add nsw i32 %.0211.in, 1
  %i.co = srem i32 %0, 64
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw i64 1, %i.cp                    ; 2 uses
  %i.cr = sdiv i32 %0, 64
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.ax
  %i.cv = call i32 @SSL_has_pending(ptr noundef nonnull %i.k) #13
  %.not259 = icmp eq i32 %i.cv, 0
  br i1 %.not259, label %bb.ay, label %.thread289.thread

bb.ay:                                            ; preds = %.backedge
  %.b242 = load i1, ptr @async, align 4
  br i1 %.b242, label %.split, label %.preheader315

.split:                                           ; preds = %bb.ay
  %i.cw = call i32 @SSL_waiting_for_async(ptr noundef nonnull %i.k) #13
  %.not310 = icmp eq i32 %i.cw, 0
  br i1 %.not310, label %.preheader315, label %.thread289.thread

.preheader315:                                    ; preds = %.split, %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !36
  %i.cx = call i32 @fileno_stdin() #13
  %i.cy = srem i32 %i.cx, 64
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = call i32 @fileno_stdin() #13
  %i.dc = sdiv i32 %i.db, 64
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dd ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !36
  %i.dg = or i64 %i.da, %i.df
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !36
  %i.dh = load i64, ptr %i.ct, align 8, !tbaa !36
  %i.di = or i64 %i.dh, %i.cq
  store i64 %i.di, ptr %i.ct, align 8, !tbaa !36
  %i.dj = call i32 @SSL_is_dtls(ptr noundef nonnull %i.k) #13
  %.not260 = icmp eq i32 %i.dj, 0
  br i1 %.not260, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader315
  %i.dk = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 73, i64 noundef 0, ptr noundef nonnull %5) #13
  %.not261 = icmp eq i64 %i.dk, 0
  br i1 %.not261, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %.preheader315
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.0204 = phi ptr [ null, %bb.ba ], [ %5, %bb.az ]
  %i.dl = call i32 @select(i32 noundef %.0211, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %.0204) #13
  %i.dm = call i32 @SSL_is_dtls(ptr noundef nonnull %i.k) #13
  %.not262 = icmp eq i32 %i.dm, 0
  br i1 %.not262, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dn = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 74, i64 noundef 0, ptr noundef null) #13
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dp = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.dq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dp, ptr noundef nonnull @.str.527) #13 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.dr = icmp slt i32 %i.dl, 1
  br i1 %i.dr, label %.backedge.backedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ds = call i32 @fileno_stdin() #13
  %i.dt = sdiv i32 %i.ds, 64
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !36
  %i.dx = call i32 @fileno_stdin() #13
  %i.dy = srem i32 %i.dx, 64
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dw
  %.not263 = icmp eq i64 %i.eb, 0
  %i.ec = load i64, ptr %i.ct, align 8, !tbaa !36
  %i.ed = and i64 %i.ec, %i.cq
  %.not264.not = icmp eq i64 %i.ed, 0             ; 2 uses
  br i1 %.not263, label %.thread289, label %bb.bg

.thread289:                                       ; preds = %bb.bf
  br i1 %.not264.not, label %.backedge.backedge, label %.thread289.thread

bb.bg:                                            ; preds = %bb.bf
  %.b245 = load i1, ptr @s_crlf, align 4
  br i1 %.b245, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ee = call i32 @raw_read_stdin(ptr noundef %i.e, i32 noundef 8192) #13 ; 6 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph333.preheader, label %.loopexit

.lr.ph333.preheader:                              ; preds = %bb.bh
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ee, 8
  br i1 %min.iters.check, label %.lr.ph333.preheader437, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph333.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %vec.phi434 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %wide.load = load <4 x i8>, ptr %i.eg, align 1, !tbaa !29
  %wide.load435 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !29
  %i.ei = icmp eq <4 x i8> %wide.load, splat (i8 10)
  %i.ej = icmp eq <4 x i8> %wide.load435, splat (i8 10)
  %i.ek = zext <4 x i1> %i.ei to <4 x i32>
  %i.el = zext <4 x i1> %i.ej to <4 x i32>
  %i.em = add <4 x i32> %vec.phi, %i.ek           ; 2 uses
  %i.en = add <4 x i32> %vec.phi434, %i.el        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.en, %i.em
  %i.ep = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph339.preheader, label %.lr.ph333.preheader437

.lr.ph333.preheader437:                           ; preds = %.lr.ph333.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph333.preheader ], [ %n.vec, %middle.block ]
  %.0331.ph = phi i32 [ 0, %.lr.ph333.preheader ], [ %i.ep, %middle.block ]
  br label %.lr.ph333

.lr.ph339.preheader:                              ; preds = %.lr.ph333, %middle.block
  %spec.select274.lcssa = phi i32 [ %i.ep, %middle.block ], [ %spec.select274, %.lr.ph333 ]
  %i.eq = zext nneg i32 %i.ee to i64
  br label %.lr.ph339

.lr.ph333:                                        ; preds = %.lr.ph333.preheader437, %.lr.ph333
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph333 ], [ %indvars.iv.ph, %.lr.ph333.preheader437 ] ; 2 uses
  %.0331 = phi i32 [ %spec.select274, %.lr.ph333 ], [ %.0331.ph, %.lr.ph333.preheader437 ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.es = load i8, ptr %i.er, align 1, !tbaa !29
  %i.et = icmp eq i8 %i.es, 10
  %i.eu = zext i1 %i.et to i32
  %spec.select274 = add nuw nsw i32 %.0331, %i.eu ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph339.preheader, label %.lr.ph333, !llvm.loop !88

.lr.ph339:                                        ; preds = %.lr.ph339.preheader, %bb.bj
  %indvars.iv370 = phi i64 [ %i.eq, %.lr.ph339.preheader ], [ %indvars.iv.next371, %bb.bj ] ; 2 uses
  %.2337 = phi i32 [ %spec.select274.lcssa, %.lr.ph339.preheader ], [ %.3.a, %bb.bj ] ; 3 uses
  %.0192336 = phi i32 [ %i.ee, %.lr.ph339.preheader ], [ %.1193.a, %bb.bj ] ; 2 uses
  %indvars.iv.next371 = add nsw i64 %indvars.iv370, -1 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next371
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !29  ; 2 uses
  %i.ex = sext i32 %.2337 to i64
  %i.ey = getelementptr i8, ptr %i.e, i64 %indvars.iv.next371
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ex
  store i8 %i.ew, ptr %i.ez, align 1, !tbaa !29
  %i.fa = icmp eq i8 %i.ew, 10
  br i1 %i.fa, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph339
  %i.fb = add nsw i32 %.2337, -1                  ; 2 uses
  %i.fc = add nuw nsw i32 %.0192336, 1
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr i8, ptr %i.e, i64 %indvars.iv.next371
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fd
  store i8 13, ptr %i.ff, align 1, !tbaa !29
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph339, %bb.bi
  %.1193.a = phi i32 [ %i.fc, %bb.bi ], [ %.0192336, %.lr.ph339 ] ; 2 uses
  %.3.a = phi i32 [ %i.fb, %bb.bi ], [ %.2337, %.lr.ph339 ]
  %6 = icmp samesign ugt i64 %indvars.iv370, 1
  br i1 %6, label %.lr.ph339, label %.loopexit, !llvm.loop !89

bb.bk:                                            ; preds = %bb.bg
  %i.fg = call i32 @raw_read_stdin(ptr noundef %i.e, i32 noundef 16384) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bj, %bb.bh, %bb.bk
  %.2194 = phi i32 [ %i.fg, %bb.bk ], [ %i.ee, %bb.bh ], [ %.1193.a, %bb.bj ] ; 2 uses
  %.b238 = load i1, ptr @s_quiet, align 4
  %.b240 = load i1, ptr @s_brief, align 4
  %or.cond = select i1 %.b238, i1 true, i1 %.b240
  br i1 %or.cond, label %.thread297.thread.preheader, label %bb.bl

bb.bl:                                            ; preds = %.loopexit
  %i.fh = icmp slt i32 %.2194, 1
  br i1 %i.fh, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fi = load i8, ptr %i.e, align 1, !tbaa !29   ; 5 uses
  switch i8 %i.fi, label %.thread297 [
    i8 81, label %bb.bn
    i8 113, label %bb.bp
    i8 114, label %bb.br
    i8 82, label %bb.bt
    i8 75, label %bb.bv
    i8 107, label %bb.bv
    i8 99, label %._crit_edge373
    i8 80, label %bb.bz
  ]

._crit_edge373:                                   ; preds = %bb.bm
  %.pre374 = load i8, ptr %i.cu, align 1, !tbaa !29
  br label %bb.bx

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fj = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.fk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fj, ptr noundef nonnull @.str.528) #13 ; 0 uses
  %i.fl = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.fm = call i64 @BIO_ctrl(ptr noundef %i.fl, i32 noundef 11, i64 noundef 0, ptr noundef null) #13 ; 0 uses
  %i.fn = call i32 @BIO_closesocket(i32 noundef %0) #13 ; 0 uses
  %i.fo = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.fp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fo, ptr noundef nonnull @.str.558) #13 ; 0 uses
  %i.fq = load i32, ptr @accept_socket, align 4, !tbaa !15 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  br i1 %i.fr, label %bb.bo, label %.thread302

bb.bo:                                            ; preds = %bb.bn
  %i.fs = call i32 @BIO_closesocket(i32 noundef %i.fq) #13 ; 0 uses
  br label %.thread302

bb.bp:                                            ; preds = %bb.bm
  %i.ft = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.fu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ft, ptr noundef nonnull @.str.528) #13 ; 0 uses
  %i.fv = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.fw = call i64 @BIO_ctrl(ptr noundef %i.fv, i32 noundef 11, i64 noundef 0, ptr noundef null) #13 ; 0 uses
  %i.fx = call i32 @SSL_version(ptr noundef nonnull %i.k) #13
  %.not266 = icmp eq i32 %i.fx, 65279
  br i1 %.not266, label %.thread302, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fy = call i32 @BIO_closesocket(i32 noundef %0) #13 ; 0 uses
  br label %.thread302

bb.br:                                            ; preds = %bb.bm
  %i.fz = load i8, ptr %i.cu, align 1, !tbaa !29
  switch i8 %i.fz, label %.thread297.thread.preheader [
    i8 10, label %bb.bs
    i8 13, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %i.ga = call i32 @SSL_renegotiate(ptr noundef nonnull %i.k) #13 ; 0 uses
  %i.gb = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #13
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.529, i32 noundef %i.gb) ; 0 uses
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %._crit_edge347, %bb.dc, %bb.bs, %bb.bu, %bb.bw, %bb.be, %bb.de, %bb.dd, %bb.cg, %.thread289, %.split404, %.split406, %.split407.critedge
  br label %.backedge

bb.bt:                                            ; preds = %bb.bm
  %i.gd = load i8, ptr %i.cu, align 1, !tbaa !29
  switch i8 %i.gd, label %.thread297.thread.preheader [
    i8 10, label %bb.bu
    i8 13, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  call void @SSL_set_verify(ptr noundef nonnull %i.k, i32 noundef 5, ptr noundef null) #13
  %i.ge = call i32 @SSL_renegotiate(ptr noundef nonnull %i.k) #13 ; 0 uses
  %i.gf = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #13
  %i.gg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.529, i32 noundef %i.gf) ; 0 uses
  br label %.backedge.backedge

bb.bv:                                            ; preds = %bb.bm, %bb.bm
  %i.gh = load i8, ptr %i.cu, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.gh, label %.thread296 [
    i8 10, label %bb.bw
    i8 13, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %i.gi = icmp eq i8 %i.fi, 75
  %i.gj = zext i1 %i.gi to i32
  %i.gk = call i32 @SSL_key_update(ptr noundef nonnull %i.k, i32 noundef %i.gj) #13 ; 0 uses
  %i.gl = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #13
  %i.gm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.529, i32 noundef %i.gl) ; 0 uses
  br label %.backedge.backedge

.thread296:                                       ; preds = %bb.bv
  switch i8 %i.fi, label %.thread297 [
    i8 99, label %bb.bx
    i8 80, label %bb.bz
  ]

bb.bx:                                            ; preds = %._crit_edge373, %.thread296
  %i.gn = phi i8 [ %.pre374, %._crit_edge373 ], [ %i.gh, %.thread296 ]
  switch i8 %i.gn, label %.thread297.thread.preheader [
    i8 10, label %bb.by
    i8 13, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  call void @SSL_set_verify(ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef null) #13
  %i.go = call i32 @SSL_verify_client_post_handshake(ptr noundef nonnull %i.k) #13
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %.split404, label %.split406

.split404:                                        ; preds = %bb.by
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.gq = load ptr, ptr @bio_err, align 8, !tbaa !22
  call void @ERR_print_errors(ptr noundef %i.gq) #13
  br label %.backedge.backedge

.split406:                                        ; preds = %bb.by
  %i.gr = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #13
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.529, i32 noundef %i.gr) ; 0 uses
  br label %.backedge.backedge

bb.bz:                                            ; preds = %bb.bm, %.thread296
  %i.gt = call ptr @SSL_get_wbio(ptr noundef nonnull %i.k) #13
  %i.gu = call i32 @BIO_write(ptr noundef %i.gt, ptr noundef nonnull @sv_body.str, i32 noundef 27) #13 ; 0 uses
  %.pr.pre = load i8, ptr %i.e, align 1, !tbaa !29
  br label %.thread297

.thread297:                                       ; preds = %bb.bm, %.thread296, %bb.bz
  %.pr = phi i8 [ %i.fi, %bb.bm ], [ %i.fi, %.thread296 ], [ %.pr.pre, %bb.bz ]
  %i.gv = icmp eq i8 %.pr, 83
  br i1 %i.gv, label %bb.ca, label %.thread297.thread.preheader

bb.ca:                                            ; preds = %.thread297
  %i.gw = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.gx = call ptr @SSL_get_SSL_CTX(ptr noundef nonnull %i.k) #13
  call fastcc void @print_stats(ptr noundef %i.gw, ptr noundef %i.gx)
  br label %.thread297.thread.preheader

.thread297.thread.preheader:                      ; preds = %bb.bx, %bb.bt, %bb.br, %.thread297, %bb.ca, %.loopexit
  br label %.thread297.thread

.thread297.thread:                                ; preds = %.thread297.thread.preheader, %bb.cf
  %.0208 = phi i64 [ %.1209, %bb.cf ], [ 0, %.thread297.thread.preheader ] ; 2 uses
  %.3195 = phi i32 [ %.4, %bb.cf ], [ %.2194, %.thread297.thread.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0208 ; 2 uses
  %i.gz = call i32 @SSL_write(ptr noundef nonnull %i.k, ptr noundef %i.gy, i32 noundef %.3195) #13 ; 2 uses
  %i.ha = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef %i.gz) #13
  %i.hb = icmp eq i32 %i.ha, 4
  br i1 %i.hb, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %.thread297.thread, %.lr.ph342
  %i.hc = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.hd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hc, ptr noundef nonnull @.str.531) #13 ; 0 uses
  %i.he = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  call void @lookup_srp_user(ptr noundef nonnull @srp_callback_parm, ptr noundef %i.he) #13
  %i.hf = call i32 @SSL_write(ptr noundef nonnull %i.k, ptr noundef %i.gy, i32 noundef %.3195) #13 ; 2 uses
  %i.hg = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef %i.hf) #13
  %i.hh = icmp eq i32 %i.hg, 4
  br i1 %i.hh, label %.lr.ph342, label %._crit_edge343, !llvm.loop !90

._crit_edge343:                                   ; preds = %.lr.ph342, %.thread297.thread
  %.0210.lcssa = phi i32 [ %i.gz, %.thread297.thread ], [ %i.hf, %.lr.ph342 ] ; 2 uses
  %i.hi = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef %.0210.lcssa) #13
  switch i32 %i.hi, label %bb.cf [
    i32 6, label %bb.ce
    i32 9, label %bb.cb
    i32 3, label %bb.cc
    i32 2, label %bb.cc
    i32 4, label %bb.cc
    i32 10, label %bb.cd
    i32 5, label %bb.cd
    i32 1, label %bb.cd
  ]

bb.cb:                                            ; preds = %._crit_edge343
  %i.hj = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.hk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hj, ptr noundef nonnull @.str.532) #13 ; 0 uses
  %i.hl = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.hm = call i64 @BIO_ctrl(ptr noundef %i.hl, i32 noundef 11, i64 noundef 0, ptr noundef null) #13 ; 0 uses
  call void @wait_for_async(ptr noundef nonnull %i.k) #13
  br label %bb.cf

bb.cc:                                            ; preds = %._crit_edge343, %._crit_edge343, %._crit_edge343
  %i.hn = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.ho = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hn, ptr noundef nonnull @.str.533) #13 ; 0 uses
  %i.hp = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.hq = call i64 @BIO_ctrl(ptr noundef %i.hp, i32 noundef 11, i64 noundef 0, ptr noundef null) #13 ; 0 uses
  br label %bb.cf

bb.cd:                                            ; preds = %._crit_edge343, %._crit_edge343, %._crit_edge343
  %i.hr = load ptr, ptr @bio_s_out, align 8, !tbaa !22
end_hunk_1
