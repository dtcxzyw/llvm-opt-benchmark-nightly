Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/s_server?download=true
inline.NumInlined: 78
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@www_body:bb.a
  %i.id = icmp eq i8 %i.hv, 92
  %narrow = or i1 %i.ic, %i.id
  %i.ie = zext i1 %narrow to i32
  br label %.thread374

.thread374:                                       ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cu, %.thread377
  %.2278 = phi i32 [ %i.ie, %.thread377 ], [ %.1277, %bb.cu ], [ 3, %bb.cs ], [ 2, %bb.cr ], [ -1, %bb.ct ]
  %i.if = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.cp, !llvm.loop !101

bb.cv:                                            ; preds = %bb.cp
  %i.ig = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.641, ptr noundef nonnull @.str.640, ptr noundef nonnull %i.hu) #15 ; 0 uses
  br label %.preheader459

bb.cw:                                            ; preds = %bb.cp
  store i8 0, ptr %.0, align 1, !tbaa !31
  switch i32 %.0276, label %bb.cy [
    i32 -1, label %bb.cx
    i32 3, label %bb.cx
  ]

bb.cx:                                            ; preds = %.thread382, %bb.cw, %bb.cw
  %i.ih = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.642, ptr noundef nonnull @.str.640, ptr noundef nonnull %i.hu) #15 ; 0 uses
  br label %.preheader459

bb.cy:                                            ; preds = %bb.cw
  %i.ii = load i8, ptr %i.hu, align 1, !tbaa !31
  switch i8 %i.ii, label %bb.da [
    i8 47, label %bb.cz
    i8 92, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.cy, %bb.cy
  %i.ij = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.643, ptr noundef nonnull @.str.640, ptr noundef nonnull %i.hu) #15 ; 0 uses
  br label %.preheader459

bb.da:                                            ; preds = %bb.cy
  %i.ik = call i32 @app_isdir(ptr noundef nonnull %i.hu) #15
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.im = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.644, ptr noundef nonnull @.str.640, ptr noundef nonnull %i.hu) #15 ; 0 uses
  br label %.preheader459

bb.dc:                                            ; preds = %bb.da
  %.b326 = load i1, ptr @http_server_binmode, align 1
  %i.in = select i1 %.b326, ptr @.str.645, ptr @.str.467 ; 2 uses
  %i.io = call ptr @BIO_new_file(ptr noundef nonnull %i.hu, ptr noundef nonnull %i.in) #15 ; 4 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.iq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.646, ptr noundef nonnull @.str.640, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.in) #15 ; 0 uses
  call void @ERR_print_errors(ptr noundef nonnull %i.g) #15
  br label %.preheader459

bb.de:                                            ; preds = %bb.dc
  %.b321 = load i1, ptr @s_quiet, align 4
  br i1 %.b321, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ir = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.is = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ir, ptr noundef nonnull @.str.647, ptr noundef nonnull %i.hu) #15 ; 0 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.it = load i32, ptr @www, align 4, !tbaa !15
  %i.iu = icmp eq i32 %i.it, 2
  br i1 %i.iu, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.iv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hu) #17 ; 3 uses
  %i.iw = trunc i64 %i.iv to i32                  ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, 5
  br i1 %i.ix, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.iy = add i64 %i.iv, 4294967291
  %i.iz = and i64 %i.iy, 4294967295
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.iz
  %i.jb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ja, ptr noundef nonnull dereferenceable(6) @.str.648) #17
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %.sink.split, label %.thread384

bb.dj:                                            ; preds = %bb.dh
  %i.jd = icmp eq i32 %i.iw, 5
  br i1 %i.jd, label %.thread384, label %.critedge

.thread384:                                       ; preds = %bb.di, %bb.dj
  %i.je = add i64 %i.iv, 4294967292
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.jf ; 2 uses
  %i.jh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(5) @.str.649) #17
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.sink.split, label %bb.dk

bb.dk:                                            ; preds = %.thread384
  %i.jj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(5) @.str.650) #17
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.dj, %bb.dk
  br label %.sink.split

.sink.split:                                      ; preds = %bb.di, %.thread384, %bb.dk, %.critedge
  %.str.651.sink = phi ptr [ @.str.640, %.critedge ], [ @.str.651, %bb.dk ], [ @.str.651, %.thread384 ], [ @.str.651, %bb.di ]
  %i.jl = call i32 @BIO_puts(ptr noundef nonnull %i.g, ptr noundef nonnull %.str.651.sink) #15 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split, %bb.dg
  %i.jm = call i32 @BIO_read(ptr noundef nonnull %i.io, ptr noundef nonnull %i.e, i32 noundef 16384) #15 ; 2 uses
  %i.jn = icmp slt i32 %i.jm, 1
  br i1 %i.jn, label %.loopexit386, label %.preheader

.loopexit385:                                     ; preds = %bb.dr
  %i.jo = call i32 @BIO_read(ptr noundef nonnull %i.io, ptr noundef nonnull %i.e, i32 noundef 16384) #15 ; 2 uses
  %i.jp = icmp slt i32 %i.jo, 1
  br i1 %i.jp, label %.loopexit386, label %.preheader

.preheader:                                       ; preds = %bb.dl, %.loopexit385
  %i.jq = phi i32 [ %i.jo, %.loopexit385 ], [ %i.jm, %bb.dl ] ; 2 uses
  br label %bb.dm

bb.dm:                                            ; preds = %.preheader, %bb.dr
  %.2281411 = phi i32 [ 0, %.preheader ], [ %.3282, %bb.dr ] ; 4 uses
  %i.jr = zext nneg i32 %.2281411 to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.jr
  %i.jt = sub nsw i32 %i.jq, %.2281411
  %i.ju = call i32 @BIO_write(ptr noundef nonnull %i.g, ptr noundef nonnull %i.js, i32 noundef %i.jt) #15 ; 2 uses
  %i.jv = icmp slt i32 %i.ju, 1
  br i1 %i.jv, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.jw = call i32 @BIO_test_flags(ptr noundef nonnull %i.g, i32 noundef 8) #15
  %.not337 = icmp eq i32 %i.jw, 0
  br i1 %.not337, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.jx = call i32 @SSL_waiting_for_async(ptr noundef nonnull %i.v) #15
  %.not338 = icmp eq i32 %i.jx, 0
  br i1 %.not338, label %.loopexit386, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.jy = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.jz = call i32 @BIO_puts(ptr noundef %i.jy, ptr noundef nonnull @.str.652) #15 ; 0 uses
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.ka = add nuw nsw i32 %i.ju, %.2281411
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.3282 = phi i32 [ %.2281411, %bb.dp ], [ %i.ka, %bb.dq ] ; 2 uses
  %i.kb = icmp slt i32 %.3282, %i.jq
  br i1 %i.kb, label %bb.dm, label %.loopexit385, !llvm.loop !102

.loopexit386:                                     ; preds = %.loopexit385, %bb.do, %bb.dl
  %i.kc = call i32 @BIO_free(ptr noundef nonnull %i.io) #15 ; 0 uses
  br label %.preheader459

.preheader459:                                    ; preds = %bb.cm, %bb.cv, %bb.cx, %bb.cz, %bb.db, %bb.dd, %.loopexit386
  br label %bb.ds

bb.ds:                                            ; preds = %.preheader459, %bb.dt
  %i.kd = call i64 @BIO_ctrl(ptr noundef nonnull %i.g, i32 noundef 11, i64 noundef 0, ptr noundef null) #15
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = icmp slt i32 %i.ke, 1
  br i1 %i.kf, label %bb.dt, label %.loopexit

bb.dt:                                            ; preds = %bb.ds
  %i.kg = call i32 @BIO_test_flags(ptr noundef nonnull %i.g, i32 noundef 8) #15
  %.not349 = icmp eq i32 %i.kg, 0
  br i1 %.not349, label %.loopexit, label %bb.ds

.loopexit:                                        ; preds = %bb.an, %bb.dt, %bb.ds
  call void @do_ssl_shutdown(ptr noundef nonnull %i.v) #15
  br label %bb.du

bb.du:                                            ; preds = %.thread365, %bb.ae, %bb.t, %bb.ah, %bb.ai, %bb.h, %bb.g, %bb.a, %.loopexit, %bb.q, %.loopexit391, %bb.m
  %.0275 = phi ptr [ %i.i, %bb.a ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ %i.i, %bb.q ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %.loopexit ], [ null, %.thread365 ], [ null, %bb.ae ], [ %i.i, %bb.t ], [ %i.i, %.loopexit391 ], [ %i.i, %bb.m ]
  call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str.424, i32 noundef 4490) #15
  %i.kh = call i32 @BIO_free(ptr noundef %.0275) #15 ; 0 uses
  call void @BIO_free_all(ptr noundef %i.g) #15
  call void @BIO_free_all(ptr noundef %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.d = icmp eq i32 %1, 2
  %i.e = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.551) #15 ; 18 uses
  %.b238 = load i1, ptr @s_nbio, align 4
  br i1 %.b238, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BIO_socket_nbio(i32 noundef %0, i32 noundef 1) #15
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @bio_err, align 8, !tbaa !22
  tail call void @ERR_print_errors(ptr noundef %i.g) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.b240 = load i1, ptr @s_quiet, align 4
  br i1 %.b240, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.i = tail call i32 @BIO_puts(ptr noundef %i.h, ptr noundef nonnull @.str.552) #15 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %i.j = load ptr, ptr @ctx, align 8, !tbaa !20
  %i.k = tail call ptr @SSL_new(ptr noundef %i.j) #15 ; 75 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread314, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.b245 = load i1, ptr @s_tlsextdebug, align 4
  br i1 %.b245, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i64 @SSL_callback_ctrl(ptr noundef nonnull %i.k, i32 noundef 56, ptr noundef nonnull @tlsext_cb) #15 ; 0 uses
  %i.n = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.o = tail call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 57, i64 noundef 0, ptr noundef %i.n) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not249 = icmp eq ptr %3, null
  br i1 %.not249, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.q = trunc i64 %i.p to i32
  %i.r = tail call i32 @SSL_set_session_id_context(ptr noundef nonnull %i.k, ptr noundef nonnull %3, i32 noundef %i.q) #15
  %.not250 = icmp eq i32 %i.r, 0
  br i1 %.not250, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.t = tail call i32 @BIO_puts(ptr noundef %i.s, ptr noundef nonnull @.str.553) #15 ; 0 uses
  br label %.thread310

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.u = tail call i32 @SSL_clear(ptr noundef nonnull %i.k) #15
  %.not251 = icmp eq i32 %i.u, 0
  br i1 %.not251, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.w = tail call i32 @BIO_puts(ptr noundef %i.v, ptr noundef nonnull @.str.554) #15 ; 0 uses
  br label %.thread310

bb.n:                                             ; preds = %bb.l
  %i.x = load ptr, ptr @rpk_files, align 8, !tbaa !43
  %.not252 = icmp eq ptr %i.x, null
  br i1 %.not252, label %rpk_enable.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = tail call i32 @SSL_dane_enable(ptr noundef nonnull %i.k, ptr noundef null) #15
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.loopexit325, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %i.z = load ptr, ptr @rpk_files, align 8, !tbaa !43
  %i.aa = tail call i32 @OPENSSL_sk_num(ptr noundef %i.z) #15
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %rpk_enable.exit

bb.p:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i32 %.0813.i, 1             ; 2 uses
  %i.ad = load ptr, ptr @rpk_files, align 8, !tbaa !43
  %i.ae = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ad) #15
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %rpk_enable.exit, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.0813.i = phi i32 [ %i.ac, %bb.p ], [ 0, %.preheader.i ] ; 2 uses
  %i.ag = load ptr, ptr @rpk_files, align 8, !tbaa !43
  %i.ah = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ag, i32 noundef %.0813.i) #15
  %i.ai = tail call i32 @load_rpk_file(ptr noundef nonnull %i.k, ptr noundef %i.ah) #15
  %.not11.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.not.i, label %.loopexit325, label %bb.p

.loopexit325:                                     ; preds = %.lr.ph.i, %bb.o
  %i.aj = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.ak = tail call i32 @BIO_puts(ptr noundef %i.aj, ptr noundef nonnull @.str.555) #15 ; 0 uses
  br label %.thread310

rpk_enable.exit:                                  ; preds = %bb.p, %.preheader.i, %bb.n
  br i1 %i.d, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %rpk_enable.exit
  %i.al = tail call ptr @BIO_new_dgram(i32 noundef %0, i32 noundef 0) #15 ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.ao = tail call i32 @BIO_puts(ptr noundef %i.an, ptr noundef nonnull @.str.556) #15 ; 0 uses
  %i.ap = load ptr, ptr @bio_err, align 8, !tbaa !22
  tail call void @ERR_print_errors(ptr noundef %i.ap) #15
  br label %.thread310

bb.s:                                             ; preds = %bb.q
  %.b247 = load i1, ptr @enable_timeouts, align 4
  br i1 %.b247, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %5, align 8, !tbaa !112
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 250000, ptr %i.aq, align 8, !tbaa !113
  %i.ar = call i64 @BIO_ctrl(ptr noundef nonnull %i.al, i32 noundef 33, i64 noundef 0, ptr noundef nonnull %5) #15 ; 0 uses
  store i64 0, ptr %5, align 8, !tbaa !112
  store i64 250000, ptr %i.aq, align 8, !tbaa !113
  %i.as = call i64 @BIO_ctrl(ptr noundef nonnull %i.al, i32 noundef 35, i64 noundef 0, ptr noundef nonnull %5) #15 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.at = load i64, ptr @socket_mtu, align 8, !tbaa !38 ; 2 uses
  %.not254 = icmp eq i64 %i.at, 0
  br i1 %.not254, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 121, i64 noundef 0, ptr noundef null) #15
  %i.av = icmp slt i64 %i.at, %i.au
  br i1 %i.av, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aw = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.ax = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 121, i64 noundef 0, ptr noundef null) #15
  %i.ay = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aw, ptr noundef nonnull @.str.557, i64 noundef %i.ax) #15 ; 0 uses
  %i.az = call i32 @BIO_free(ptr noundef nonnull %i.al) #15 ; 0 uses
  br label %.thread310

bb.x:                                             ; preds = %bb.v
  %i.ba = call i64 @SSL_set_options(ptr noundef nonnull %i.k, i64 noundef 4096) #15 ; 0 uses
  %i.bb = load i64, ptr @socket_mtu, align 8, !tbaa !38
  %i.bc = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 120, i64 noundef %i.bb, ptr noundef null) #15
  %.not255 = icmp eq i64 %i.bc, 0
  br i1 %.not255, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.be = call i32 @BIO_puts(ptr noundef %i.bd, ptr noundef nonnull @.str.558) #15 ; 0 uses
  %i.bf = call i32 @BIO_free(ptr noundef nonnull %i.al) #15 ; 0 uses
  br label %.thread310

bb.z:                                             ; preds = %bb.u
  %i.bg = call i64 @BIO_ctrl(ptr noundef nonnull %i.al, i32 noundef 39, i64 noundef 0, ptr noundef null) #15 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.x
  %i.bh = call i64 @SSL_set_options(ptr noundef nonnull %i.k, i64 noundef 8192) #15 ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %rpk_enable.exit
  %i.bi = tail call ptr @BIO_new_socket(i32 noundef %0, i32 noundef 0) #15 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.bl = tail call i32 @BIO_puts(ptr noundef %i.bk, ptr noundef nonnull @.str.556) #15 ; 0 uses
  %i.bm = load ptr, ptr @bio_err, align 8, !tbaa !22
  tail call void @ERR_print_errors(ptr noundef %i.bm) #15
  br label %.thread310

bb.ac:                                            ; preds = %.thread, %bb.aa
  %.0206288 = phi ptr [ %i.al, %.thread ], [ %i.bi, %bb.aa ] ; 3 uses
  %.b = load i1, ptr @s_nbio_test, align 4
  br i1 %.b, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bn = call ptr @BIO_f_nbio_test() #15
  %i.bo = call ptr @BIO_new(ptr noundef %i.bn) #15 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ae, label %.thread289

.thread289:                                       ; preds = %bb.ad
  %i.bq = call ptr @BIO_push(ptr noundef nonnull %i.bo, ptr noundef nonnull %.0206288) #15
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.br = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.bs = call i32 @BIO_puts(ptr noundef %i.br, ptr noundef nonnull @.str.556) #15 ; 0 uses
  %i.bt = call i32 @BIO_free(ptr noundef nonnull %.0206288) #15 ; 0 uses
  br label %.thread310

end_hunk_0
begin_hunk_1_@sv_body:bb.a
  br label %.preheader324

.preheader324:                                    ; preds = %.preheader324.outer, %bb.ap
  %i.cd = call i32 @SSL_read_early_data(ptr noundef nonnull %i.k, ptr noundef %i.e, i64 noundef 16384, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not261336 = icmp eq i32 %i.cd, 0
  br i1 %.not261336, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader324, %bb.am
  %i.ce = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef 0) #15
  switch i32 %i.ce, label %bb.aw [
    i32 3, label %bb.am
    i32 9, label %bb.am
    i32 2, label %bb.am
  ]

bb.am:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.cf = call i32 @SSL_read_early_data(ptr noundef nonnull %i.k, ptr noundef %i.e, i64 noundef 16384, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not261 = icmp eq i32 %i.cf, 0
  br i1 %.not261, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am, %.preheader324
  %.lcssa = phi i32 [ %i.cd, %.preheader324 ], [ %i.cf, %bb.am ] ; 2 uses
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %.not273 = icmp eq i64 %i.cg, 0
  br i1 %.not273, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  br i1 %.not274, label %.thread403, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ch = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.ci = call i32 @BIO_puts(ptr noundef %i.ch, ptr noundef nonnull @.str.560) #15 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !38
  br label %.thread403

bb.ap:                                            ; preds = %._crit_edge
  %.not258 = icmp eq i32 %.lcssa, 2
  br i1 %.not258, label %bb.aq, label %.preheader324, !llvm.loop !103

.thread403:                                       ; preds = %bb.an, %bb.ao
  %i.cj = phi i64 [ %.pre, %bb.ao ], [ %i.cg, %bb.an ]
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = call i32 @raw_write_stdout(ptr noundef %i.e, i32 noundef %i.ck) #15 ; 0 uses
  %i.cm = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.cn = call i64 @BIO_ctrl(ptr noundef %i.cm, i32 noundef 11, i64 noundef 0, ptr noundef null) #15 ; 0 uses
  %.not258405 = icmp eq i32 %.lcssa, 2
  br i1 %.not258405, label %.thread407, label %.preheader324.outer, !llvm.loop !103

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not274, label %.thread407, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.co = call i32 @SSL_get_early_data_status(ptr noundef nonnull %i.k) #15
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = load ptr, ptr @bio_s_out, align 8, !tbaa !22 ; 2 uses
  br i1 %i.cp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cr = call i32 @BIO_puts(ptr noundef %i.cq, ptr noundef nonnull @.str.561) #15 ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.cs = call i32 @BIO_puts(ptr noundef %i.cq, ptr noundef nonnull @.str.562) #15 ; 0 uses
  br label %bb.au

.thread407:                                       ; preds = %.thread403, %bb.aq
  %i.ct = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.cu = call i32 @BIO_puts(ptr noundef %i.ct, ptr noundef nonnull @.str.563) #15 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %.thread407
  %i.cv = call i32 @SSL_is_init_finished(ptr noundef nonnull %i.k) #15
  %.not260 = icmp eq i32 %i.cv, 0
  br i1 %.not260, label %.thread293, label %bb.av

bb.av:                                            ; preds = %bb.au
  call fastcc void @print_connection_info(ptr noundef %i.k)
  br label %.thread293

.thread293:                                       ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.ax

bb.aw:                                            ; preds = %.lr.ph
  %i.cw = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.cx = call i32 @BIO_puts(ptr noundef %i.cw, ptr noundef nonnull @.str.559) #15 ; 0 uses
  %i.cy = load ptr, ptr @bio_err, align 8, !tbaa !22
  call void @ERR_print_errors(ptr noundef %i.cy) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.thread310

bb.ax:                                            ; preds = %.thread293, %bb.ak
  %i.cz = call i32 @fileno_stdin() #15
  %i.da = icmp sgt i32 %i.cz, %0
  br i1 %i.da, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.db = call i32 @fileno_stdin() #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.0212.in = phi i32 [ %i.db, %bb.ay ], [ %0, %bb.ax ]
  %.0212 = add nsw i32 %.0212.in, 1
  %i.dc = srem i32 %0, 64
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl nuw i64 1, %i.dd                    ; 2 uses
  %i.df = sdiv i32 %0, 64
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.az
  %i.dj = call i32 @SSL_has_pending(ptr noundef nonnull %i.k) #15
  %.not262 = icmp eq i32 %i.dj, 0
  br i1 %.not262, label %bb.ba, label %.thread297.thread

bb.ba:                                            ; preds = %.backedge
  %.b243 = load i1, ptr @async, align 4
  br i1 %.b243, label %.split, label %.preheader323

.split:                                           ; preds = %bb.ba
  %i.dk = call i32 @SSL_waiting_for_async(ptr noundef nonnull %i.k) #15
  %.not318 = icmp eq i32 %i.dk, 0
  br i1 %.not318, label %.preheader323, label %.thread297.thread

.preheader323:                                    ; preds = %.split, %bb.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !38
  %i.dl = call i32 @fileno_stdin() #15
  %i.dm = srem i32 %i.dl, 64
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = call i32 @fileno_stdin() #15
  %i.dq = sdiv i32 %i.dp, 64
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dr ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.du = or i64 %i.do, %i.dt
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !38
  %i.dv = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.dw = or i64 %i.dv, %i.de
  store i64 %i.dw, ptr %i.dh, align 8, !tbaa !38
  %i.dx = call i32 @SSL_is_dtls(ptr noundef nonnull %i.k) #15
  %.not263 = icmp eq i32 %i.dx, 0
  br i1 %.not263, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.preheader323
  %i.dy = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 73, i64 noundef 0, ptr noundef nonnull %5) #15
  %.not264 = icmp eq i64 %i.dy, 0
  br i1 %.not264, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %.preheader323
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.0205 = phi ptr [ null, %bb.bc ], [ %5, %bb.bb ]
  %i.dz = call i32 @select(i32 noundef %.0212, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %.0205) #15
  %i.ea = call i32 @SSL_is_dtls(ptr noundef nonnull %i.k) #15
  %.not265 = icmp eq i32 %i.ea, 0
  br i1 %.not265, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eb = call i64 @SSL_ctrl(ptr noundef nonnull %i.k, i32 noundef 74, i64 noundef 0, ptr noundef null) #15
  %i.ec = icmp sgt i64 %i.eb, 0
  br i1 %i.ec, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ed = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.ee = call i32 @BIO_puts(ptr noundef %i.ed, ptr noundef nonnull @.str.564) #15 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ef = icmp slt i32 %i.dz, 1
  br i1 %i.ef, label %.backedge.backedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eg = call i32 @fileno_stdin() #15
  %i.eh = sdiv i32 %i.eg, 64
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !38
  %i.el = call i32 @fileno_stdin() #15
  %i.em = srem i32 %i.el, 64
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = and i64 %i.eo, %i.ek
  %.not266 = icmp eq i64 %i.ep, 0
  %i.eq = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.er = and i64 %i.eq, %i.de
  %.not267.not = icmp eq i64 %i.er, 0             ; 2 uses
  br i1 %.not266, label %.thread297, label %bb.bi

.thread297:                                       ; preds = %bb.bh
  br i1 %.not267.not, label %.backedge.backedge, label %.thread297.thread

bb.bi:                                            ; preds = %bb.bh
  %.b246 = load i1, ptr @s_crlf, align 4
  br i1 %.b246, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.es = call i32 @raw_read_stdin(ptr noundef %i.e, i32 noundef 8192) #15 ; 6 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph342.preheader, label %.loopexit

.lr.ph342.preheader:                              ; preds = %bb.bj
  %wide.trip.count = zext nneg i32 %i.es to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.es, 8
  br i1 %min.iters.check, label %.lr.ph342.preheader447, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph342.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fa, %vector.body ]
  %vec.phi444 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fb, %vector.body ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %wide.load = load <4 x i8>, ptr %i.eu, align 1, !tbaa !31
  %wide.load445 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !31
  %i.ew = icmp eq <4 x i8> %wide.load, splat (i8 10)
  %i.ex = icmp eq <4 x i8> %wide.load445, splat (i8 10)
  %i.ey = zext <4 x i1> %i.ew to <4 x i32>
  %i.ez = zext <4 x i1> %i.ex to <4 x i32>
  %i.fa = add <4 x i32> %vec.phi, %i.ey           ; 2 uses
  %i.fb = add <4 x i32> %vec.phi444, %i.ez        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fb, %i.fa
  %i.fd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph348.preheader, label %.lr.ph342.preheader447

.lr.ph342.preheader447:                           ; preds = %.lr.ph342.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph342.preheader ], [ %n.vec, %middle.block ]
  %.0340.ph = phi i32 [ 0, %.lr.ph342.preheader ], [ %i.fd, %middle.block ]
  br label %.lr.ph342

.lr.ph348.preheader:                              ; preds = %.lr.ph342, %middle.block
  %spec.select277.lcssa = phi i32 [ %i.fd, %middle.block ], [ %spec.select277, %.lr.ph342 ]
  %i.fe = zext nneg i32 %i.es to i64
  br label %.lr.ph348

.lr.ph342:                                        ; preds = %.lr.ph342.preheader447, %.lr.ph342
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph342 ], [ %indvars.iv.ph, %.lr.ph342.preheader447 ] ; 2 uses
  %.0340 = phi i32 [ %spec.select277, %.lr.ph342 ], [ %.0340.ph, %.lr.ph342.preheader447 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !31
  %i.fh = icmp eq i8 %i.fg, 10
  %i.fi = zext i1 %i.fh to i32
  %spec.select277 = add nuw nsw i32 %.0340, %i.fi ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph348.preheader, label %.lr.ph342, !llvm.loop !105

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %bb.bl
  %indvars.iv379 = phi i64 [ %i.fe, %.lr.ph348.preheader ], [ %indvars.iv.next380, %bb.bl ] ; 2 uses
  %.2346 = phi i32 [ %spec.select277.lcssa, %.lr.ph348.preheader ], [ %.3.a, %bb.bl ] ; 3 uses
  %.0193345 = phi i32 [ %i.es, %.lr.ph348.preheader ], [ %.1194.a, %bb.bl ] ; 2 uses
  %indvars.iv.next380 = add nsw i64 %indvars.iv379, -1 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next380
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !31  ; 2 uses
  %i.fl = sext i32 %.2346 to i64
  %i.fm = getelementptr i8, ptr %i.e, i64 %indvars.iv.next380
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !31
  %i.fo = icmp eq i8 %i.fk, 10
  br i1 %i.fo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph348
  %i.fp = add nsw i32 %.2346, -1                  ; 2 uses
  %i.fq = add nuw nsw i32 %.0193345, 1
  %i.fr = sext i32 %i.fp to i64
  %i.fs = getelementptr i8, ptr %i.e, i64 %indvars.iv.next380
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fr
  store i8 13, ptr %i.ft, align 1, !tbaa !31
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph348, %bb.bk
  %.1194.a = phi i32 [ %i.fq, %bb.bk ], [ %.0193345, %.lr.ph348 ] ; 2 uses
  %.3.a = phi i32 [ %i.fp, %bb.bk ], [ %.2346, %.lr.ph348 ]
  %6 = icmp samesign ugt i64 %indvars.iv379, 1
  br i1 %6, label %.lr.ph348, label %.loopexit, !llvm.loop !106

bb.bm:                                            ; preds = %bb.bi
  %i.fu = call i32 @raw_read_stdin(ptr noundef %i.e, i32 noundef 16384) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bl, %bb.bj, %bb.bm
  %.2195 = phi i32 [ %i.fu, %bb.bm ], [ %i.es, %bb.bj ], [ %.1194.a, %bb.bl ] ; 2 uses
  %.b239 = load i1, ptr @s_quiet, align 4
  %.b241 = load i1, ptr @s_brief, align 4
  %or.cond = select i1 %.b239, i1 true, i1 %.b241
  br i1 %or.cond, label %.thread305.thread.preheader, label %bb.bn

bb.bn:                                            ; preds = %.loopexit
  %i.fv = icmp slt i32 %.2195, 1
  br i1 %i.fv, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fw = load i8, ptr %i.e, align 1, !tbaa !31   ; 5 uses
  switch i8 %i.fw, label %.thread305 [
    i8 81, label %bb.bp
    i8 113, label %bb.br
    i8 114, label %bb.bt
    i8 82, label %bb.bv
    i8 75, label %bb.bx
    i8 107, label %bb.bx
    i8 99, label %._crit_edge382
    i8 80, label %bb.cb
  ]

._crit_edge382:                                   ; preds = %bb.bo
  %.pre383 = load i8, ptr %i.di, align 1, !tbaa !31
  br label %bb.bz

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fx = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.fy = call i32 @BIO_puts(ptr noundef %i.fx, ptr noundef nonnull @.str.565) #15 ; 0 uses
  %i.fz = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.ga = call i64 @BIO_ctrl(ptr noundef %i.fz, i32 noundef 11, i64 noundef 0, ptr noundef null) #15 ; 0 uses
  %i.gb = call i32 @BIO_closesocket(i32 noundef %0) #15 ; 0 uses
  %i.gc = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.gd = call i32 @BIO_puts(ptr noundef %i.gc, ptr noundef nonnull @.str.593) #15 ; 0 uses
  %i.ge = load i32, ptr @accept_socket, align 4, !tbaa !15 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  br i1 %i.gf, label %bb.bq, label %.thread310

bb.bq:                                            ; preds = %bb.bp
  %i.gg = call i32 @BIO_closesocket(i32 noundef %i.ge) #15 ; 0 uses
  br label %.thread310

bb.br:                                            ; preds = %bb.bo
  %i.gh = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.gi = call i32 @BIO_puts(ptr noundef %i.gh, ptr noundef nonnull @.str.565) #15 ; 0 uses
  %i.gj = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.gk = call i64 @BIO_ctrl(ptr noundef %i.gj, i32 noundef 11, i64 noundef 0, ptr noundef null) #15 ; 0 uses
  %i.gl = call i32 @SSL_version(ptr noundef nonnull %i.k) #15
  %.not269 = icmp eq i32 %i.gl, 65279
  br i1 %.not269, label %.thread310, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gm = call i32 @BIO_closesocket(i32 noundef %0) #15 ; 0 uses
  br label %.thread310

bb.bt:                                            ; preds = %bb.bo
  %i.gn = load i8, ptr %i.di, align 1, !tbaa !31
  switch i8 %i.gn, label %.thread305.thread.preheader [
    i8 10, label %bb.bu
    i8 13, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  %i.go = call i32 @SSL_renegotiate(ptr noundef nonnull %i.k) #15 ; 0 uses
  %i.gp = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #15
  %i.gq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.566, i32 noundef %i.gp) ; 0 uses
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %._crit_edge356, %bb.de, %bb.bu, %bb.bw, %bb.by, %bb.bg, %bb.dg, %bb.df, %bb.ci, %.thread297, %.split414, %.split416, %.split417.critedge
  br label %.backedge

bb.bv:                                            ; preds = %bb.bo
  %i.gr = load i8, ptr %i.di, align 1, !tbaa !31
  switch i8 %i.gr, label %.thread305.thread.preheader [
    i8 10, label %bb.bw
    i8 13, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  call void @SSL_set_verify(ptr noundef nonnull %i.k, i32 noundef 5, ptr noundef null) #15
  %i.gs = call i32 @SSL_renegotiate(ptr noundef nonnull %i.k) #15 ; 0 uses
  %i.gt = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #15
  %i.gu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.566, i32 noundef %i.gt) ; 0 uses
  br label %.backedge.backedge

bb.bx:                                            ; preds = %bb.bo, %bb.bo
  %i.gv = load i8, ptr %i.di, align 1, !tbaa !31  ; 2 uses
  switch i8 %i.gv, label %.thread304 [
    i8 10, label %bb.by
    i8 13, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.gw = icmp eq i8 %i.fw, 75
  %i.gx = zext i1 %i.gw to i32
  %i.gy = call i32 @SSL_key_update(ptr noundef nonnull %i.k, i32 noundef %i.gx) #15 ; 0 uses
  %i.gz = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #15
  %i.ha = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.566, i32 noundef %i.gz) ; 0 uses
  br label %.backedge.backedge

.thread304:                                       ; preds = %bb.bx
  switch i8 %i.fw, label %.thread305 [
    i8 99, label %bb.bz
    i8 80, label %bb.cb
  ]

bb.bz:                                            ; preds = %._crit_edge382, %.thread304
  %i.hb = phi i8 [ %.pre383, %._crit_edge382 ], [ %i.gv, %.thread304 ]
  switch i8 %i.hb, label %.thread305.thread.preheader [
    i8 10, label %bb.ca
    i8 13, label %bb.ca
  ]

bb.ca:                                            ; preds = %bb.bz, %bb.bz
  call void @SSL_set_verify(ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef null) #15
  %i.hc = call i32 @SSL_verify_client_post_handshake(ptr noundef nonnull %i.k) #15
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.split414, label %.split416

.split414:                                        ; preds = %bb.ca
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.he = load ptr, ptr @bio_err, align 8, !tbaa !22
  call void @ERR_print_errors(ptr noundef %i.he) #15
  br label %.backedge.backedge

.split416:                                        ; preds = %bb.ca
  %i.hf = call i32 @SSL_do_handshake(ptr noundef nonnull %i.k) #15
  %i.hg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.566, i32 noundef %i.hf) ; 0 uses
  br label %.backedge.backedge

bb.cb:                                            ; preds = %bb.bo, %.thread304
  %i.hh = call ptr @SSL_get_wbio(ptr noundef nonnull %i.k) #15
  %i.hi = call i32 @BIO_write(ptr noundef %i.hh, ptr noundef nonnull @sv_body.str, i32 noundef 27) #15 ; 0 uses
  %.pr.pre = load i8, ptr %i.e, align 1, !tbaa !31
  br label %.thread305

.thread305:                                       ; preds = %bb.bo, %.thread304, %bb.cb
  %.pr = phi i8 [ %i.fw, %bb.bo ], [ %i.fw, %.thread304 ], [ %.pr.pre, %bb.cb ]
  %i.hj = icmp eq i8 %.pr, 83
  br i1 %i.hj, label %bb.cc, label %.thread305.thread.preheader

bb.cc:                                            ; preds = %.thread305
  %i.hk = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.hl = call ptr @SSL_get_SSL_CTX(ptr noundef nonnull %i.k) #15
  call fastcc void @print_stats(ptr noundef %i.hk, ptr noundef %i.hl)
  br label %.thread305.thread.preheader

.thread305.thread.preheader:                      ; preds = %bb.bz, %bb.bv, %bb.bt, %.thread305, %bb.cc, %.loopexit
  br label %.thread305.thread

.thread305.thread:                                ; preds = %.thread305.thread.preheader, %bb.ch
  %.0209 = phi i64 [ %.1210, %bb.ch ], [ 0, %.thread305.thread.preheader ] ; 2 uses
  %.3196 = phi i32 [ %.4, %bb.ch ], [ %.2195, %.thread305.thread.preheader ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0209 ; 2 uses
  %i.hn = call i32 @SSL_write(ptr noundef nonnull %i.k, ptr noundef %i.hm, i32 noundef %.3196) #15 ; 2 uses
  %i.ho = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef %i.hn) #15
  %i.hp = icmp eq i32 %i.ho, 4
  br i1 %i.hp, label %.lr.ph351, label %._crit_edge352

.lr.ph351:                                        ; preds = %.thread305.thread, %.lr.ph351
  %i.hq = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.hr = call i32 @BIO_puts(ptr noundef %i.hq, ptr noundef nonnull @.str.568) #15 ; 0 uses
  %i.hs = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  call void @lookup_srp_user(ptr noundef nonnull @srp_callback_parm, ptr noundef %i.hs) #15
  %i.ht = call i32 @SSL_write(ptr noundef nonnull %i.k, ptr noundef %i.hm, i32 noundef %.3196) #15 ; 2 uses
  %i.hu = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef %i.ht) #15
  %i.hv = icmp eq i32 %i.hu, 4
  br i1 %i.hv, label %.lr.ph351, label %._crit_edge352, !llvm.loop !107

._crit_edge352:                                   ; preds = %.lr.ph351, %.thread305.thread
  %.0211.lcssa = phi i32 [ %i.hn, %.thread305.thread ], [ %i.ht, %.lr.ph351 ] ; 2 uses
  %i.hw = call i32 @SSL_get_error(ptr noundef nonnull %i.k, i32 noundef %.0211.lcssa) #15
  switch i32 %i.hw, label %bb.ch [
    i32 6, label %bb.cg
    i32 9, label %bb.cd
    i32 3, label %bb.ce
    i32 2, label %bb.ce
    i32 4, label %bb.ce
    i32 10, label %bb.cf
    i32 5, label %bb.cf
    i32 1, label %bb.cf
  ]

bb.cd:                                            ; preds = %._crit_edge352
  %i.hx = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.hy = call i32 @BIO_puts(ptr noundef %i.hx, ptr noundef nonnull @.str.569) #15 ; 0 uses
  %i.hz = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.ia = call i64 @BIO_ctrl(ptr noundef %i.hz, i32 noundef 11, i64 noundef 0, ptr noundef null) #15 ; 0 uses
  call void @wait_for_async(ptr noundef nonnull %i.k) #15
  br label %bb.ch

bb.ce:                                            ; preds = %._crit_edge352, %._crit_edge352, %._crit_edge352
  %i.ib = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.ic = call i32 @BIO_puts(ptr noundef %i.ib, ptr noundef nonnull @.str.570) #15 ; 0 uses
  %i.id = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.ie = call i64 @BIO_ctrl(ptr noundef %i.id, i32 noundef 11, i64 noundef 0, ptr noundef null) #15 ; 0 uses
  br label %bb.ch

bb.cf:                                            ; preds = %._crit_edge352, %._crit_edge352, %._crit_edge352
  %i.if = load ptr, ptr @bio_s_out, align 8, !tbaa !22
end_hunk_1
