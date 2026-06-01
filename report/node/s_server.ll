inline.NumInlined: 35
inline.NumDeleted: 14
begin_hunk_0_@www_body:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %.preheader359

.preheader359:                                    ; preds = %bb.y, %bb.ab
  %i.as = call i32 @SSL_read_early_data(ptr noundef nonnull %i.t, ptr noundef %i.c, i64 noundef 16384, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not302365 = icmp eq i32 %i.as, 0
  br i1 %.not302365, label %.lr.ph, label %._crit_edge

.thread329:                                       ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.backedge.preheader

.lr.ph:                                           ; preds = %.preheader359, %bb.z
  %i.at = call i32 @SSL_get_error(ptr noundef nonnull %i.t, i32 noundef 0) #13
  switch i32 %i.at, label %bb.ac [
    i32 3, label %bb.z
    i32 9, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.au = call i32 @SSL_read_early_data(ptr noundef nonnull %i.t, ptr noundef %i.c, i64 noundef 16384, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not302 = icmp eq i32 %i.au, 0
  br i1 %.not302, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z, %.preheader359
  %.lcssa = phi i32 [ %i.as, %.preheader359 ], [ %i.au, %bb.z ]
  %i.av = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %.not320 = icmp eq i64 %i.av, 0
  br i1 %.not320, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.aw = trunc i64 %i.av to i32
  %i.ax = call i32 @BIO_write(ptr noundef %i.i, ptr noundef %i.c, i32 noundef %i.aw) #13 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %.not301 = icmp eq i32 %.lcssa, 2
  br i1 %.not301, label %.thread329, label %.preheader359, !llvm.loop !75

bb.ac:                                            ; preds = %.lr.ph
  %i.ay = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.az = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ay, ptr noundef nonnull @.str.522) #13 ; 0 uses
  %i.ba = load ptr, ptr @bio_err, align 8, !tbaa !21
  call void @ERR_print_errors(ptr noundef %i.ba) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread333

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.preheader
  %i.bb = call i64 @BIO_ctrl(ptr noundef %i.i, i32 noundef 2, i64 noundef 0, ptr noundef null) #13
  %i.bc = and i64 %i.bb, 4294967295
  %.not303 = icmp eq i64 %i.bc, 0
  %i.bd = select i1 %.not303, ptr %i.i, ptr %i.e
  %i.be = call i32 @BIO_gets(ptr noundef %i.bd, ptr noundef %i.c, i32 noundef 16385) #13 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %.backedge
  %i.bg = call i32 @BIO_test_flags(ptr noundef nonnull %i.e, i32 noundef 8) #13
  %.not317 = icmp eq i32 %i.bg, 0
  br i1 %.not317, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.bh = call i32 @SSL_waiting_for_async(ptr noundef nonnull %i.t) #13
  %.not318 = icmp eq i32 %i.bh, 0
  br i1 %.not318, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.b292 = load i1, ptr @s_quiet, align 4
  br i1 %.b292, label %.thread333, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = load ptr, ptr @bio_err, align 8, !tbaa !21
  call void @ERR_print_errors(ptr noundef %i.bi) #13
  br label %.thread333

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.bj = load ptr, ptr @bio_s_out, align 8, !tbaa !21
  %i.bk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bj, ptr noundef nonnull @.str.565) #13 ; 0 uses
  %i.bl = call i32 @BIO_test_flags(ptr noundef nonnull %i.e, i32 noundef 4) #13
  %.not319 = icmp eq i32 %i.bl, 0
  br i1 %.not319, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bm = call i32 @BIO_get_retry_reason(ptr noundef nonnull %i.e) #13
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bo = load ptr, ptr @bio_s_out, align 8, !tbaa !21
  %i.bp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bo, ptr noundef nonnull @.str.535) #13 ; 0 uses
  %i.bq = load ptr, ptr @bio_s_out, align 8, !tbaa !21
  call void @lookup_srp_user(ptr noundef nonnull @srp_callback_parm, ptr noundef %i.bq) #13
  br label %.backedge.backedge

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  call void @OSSL_sleep(i64 noundef 1000) #13
  br label %.backedge.backedge

bb.al:                                            ; preds = %.backedge
  %i.br = icmp eq i32 %i.be, 0
  br i1 %i.br, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bs = load i32, ptr @www, align 4, !tbaa !5   ; 2 uses
  switch i32 %i.bs, label %bb.bq [
    i32 1, label %bb.an
    i32 2, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.bt = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(5) @.str.566, i64 noundef 4) #15
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ap, label %.backedge.backedge

bb.ao:                                            ; preds = %bb.am
  %i.bv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(12) @.str.567, i64 noundef 11) #15
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.loopexit358, label %.thread335

bb.ap:                                            ; preds = %bb.an
  %i.bx = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(11) @.str.569, i64 noundef 10) #15
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aq, label %.loopexit358

bb.aq:                                            ; preds = %bb.ap
  %i.bz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(15) @.str.570, i64 noundef 14) #15
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @SSL_set_verify(ptr noundef nonnull %i.t, i32 noundef 5, ptr noundef null) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cb = call i32 @SSL_renegotiate(ptr noundef nonnull %i.t) #13
  %i.cc = load ptr, ptr @bio_s_out, align 8, !tbaa !21
  %i.cd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cc, ptr noundef nonnull @.str.571, i32 noundef %i.cb) #13 ; 0 uses
  %i.ce = call i32 @SSL_do_handshake(ptr noundef nonnull %i.t) #13 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bb.at, label %.preheader356.preheader

.preheader356.preheader:                          ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !42
  %i.cg = srem i32 %0, 64
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch                    ; 2 uses
  %i.cj = sdiv i32 %0, 64
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ck ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !42
  %i.cn = or i64 %i.cm, %i.ci
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !42
  %i.co = call i32 @select(i32 noundef %i.b, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cq = load ptr, ptr @bio_s_out, align 8, !tbaa !21
  %i.cr = call i32 @SSL_get_error(ptr noundef nonnull %i.t, i32 noundef %i.ce) #13
  %i.cs = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cq, ptr noundef nonnull @.str.572, i32 noundef %i.cr) #13 ; 0 uses
  %i.ct = load ptr, ptr @bio_err, align 8, !tbaa !21
  call void @ERR_print_errors(ptr noundef %i.ct) #13
  br label %.thread333

bb.au:                                            ; preds = %.preheader356.preheader
  %i.cu = load i64, ptr %i.cl, align 8, !tbaa !42
  %i.cv = and i64 %i.cu, %i.ci
  %.not307 = icmp eq i64 %i.cv, 0
  br i1 %.not307, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %.preheader356.preheader
  %i.cw = load ptr, ptr @bio_s_out, align 8, !tbaa !21
  %i.cx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cw, ptr noundef nonnull @.str.573) #13 ; 0 uses
  %i.cy = load ptr, ptr @bio_err, align 8, !tbaa !21
  call void @ERR_print_errors(ptr noundef %i.cy) #13
  br label %.thread333

bb.aw:                                            ; preds = %bb.au
  %i.cz = call i32 @BIO_gets(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef 16385) #13 ; 0 uses
  br label %.loopexit358

.loopexit358:                                     ; preds = %bb.ao, %bb.aw, %bb.ap
  %i.da = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.574) #13 ; 0 uses
  %i.db = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.575) #13 ; 0 uses
  %i.dc = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.576) #13 ; 0 uses
  %i.dd = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.477) #13 ; 0 uses
  %i.de = load i32, ptr @local_argc, align 4, !tbaa !5
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph369, label %._crit_edge370

.lr.ph369:                                        ; preds = %.loopexit358, %bb.bd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bd ], [ 0, %.loopexit358 ] ; 2 uses
  %i.dg = load ptr, ptr @local_argv, align 8, !tbaa !16
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bc, %.lr.ph369
  %.0241 = phi ptr [ %i.di, %.lr.ph369 ], [ %i.do, %bb.bc ] ; 3 uses
  %i.dj = load i8, ptr %.0241, align 1, !tbaa !35 ; 2 uses
  %5 = call i8 @llvm.fshl.i8(i8 %i.dj, i8 %i.dj, i8 7)
  switch i8 %5, label %bb.bb [
    i8 0, label %bb.bd
    i8 30, label %bb.ay
    i8 31, label %bb.az
    i8 19, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.dk = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.577) #13 ; 0 uses
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.dl = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.578) #13 ; 0 uses
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.dm = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.579) #13 ; 0 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.dn = call i32 @BIO_write(ptr noundef nonnull %i.e, ptr noundef nonnull %.0241, i32 noundef 1) #13 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bb
  %i.do = getelementptr inbounds nuw i8, ptr %.0241, i64 1
  br label %bb.ax, !llvm.loop !76

bb.bd:                                            ; preds = %bb.ax
  %i.dp = call i32 @BIO_write(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.580, i32 noundef 1) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load i32, ptr @local_argc, align 4, !tbaa !5
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %.lr.ph369, label %._crit_edge370, !llvm.loop !77

._crit_edge370:                                   ; preds = %bb.bd, %.loopexit358
  %i.dt = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.477) #13 ; 0 uses
  call void @ssl_print_secure_renegotiation_notes(ptr noundef nonnull %i.e, ptr noundef nonnull %i.t) #13
  %i.du = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.581) #13 ; 0 uses
  %i.dv = call ptr @SSL_get_ciphers(ptr noundef nonnull %i.t) #13 ; 2 uses
  %i.dw = call i32 @OPENSSL_sk_num(ptr noundef %i.dv) #13 ; 3 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph373, label %._crit_edge374

.lr.ph373:                                        ; preds = %._crit_edge370, %bb.bf
  %.1249371 = phi i32 [ %i.ec, %bb.bf ], [ 0, %._crit_edge370 ] ; 3 uses
  %i.dy = call ptr @OPENSSL_sk_value(ptr noundef %i.dv, i32 noundef %.1249371) #13 ; 2 uses
  %i.dz = call ptr @SSL_CIPHER_get_version(ptr noundef %i.dy) #13
  %i.ea = call ptr @SSL_CIPHER_get_name(ptr noundef %i.dy) #13
  %i.eb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.582, ptr noundef %i.dz, ptr noundef %i.ea) #13 ; 0 uses
  %i.ec = add nuw nsw i32 %.1249371, 1            ; 3 uses
  %i.ed = and i32 %.1249371, 1
  %.not313 = icmp eq i32 %i.ed, 0
  %.not314 = icmp eq i32 %i.ec, %i.dw
  %or.cond324 = select i1 %.not313, i1 true, i1 %.not314
  br i1 %or.cond324, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph373
  %i.ee = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.477) #13 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph373, %bb.be
  %exitcond.not = icmp eq i32 %i.ec, %i.dw
  br i1 %exitcond.not, label %._crit_edge374, label %.lr.ph373, !llvm.loop !78

._crit_edge374:                                   ; preds = %bb.bf, %._crit_edge370
  %i.ef = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.477) #13 ; 0 uses
  %i.eg = call ptr @SSL_get_shared_ciphers(ptr noundef nonnull %i.t, ptr noundef %i.c, i32 noundef 16384) #13 ; 2 uses
  %.not308 = icmp eq ptr %i.eg, null
  br i1 %.not308, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge374
  %i.eh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.583) #13 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %bb.bg
  %.0251 = phi i32 [ 0, %bb.bg ], [ %.1252, %bb.bk ] ; 2 uses
  %.2250 = phi i32 [ 0, %bb.bg ], [ %.3, %bb.bk ] ; 2 uses
  %.0243 = phi ptr [ %i.eg, %bb.bg ], [ %i.er, %bb.bk ] ; 3 uses
  %i.ei = load i8, ptr %.0243, align 1, !tbaa !35
  switch i8 %i.ei, label %bb.bj [
    i8 0, label %bb.bl
    i8 58, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.ej = sub nsw i32 26, %.0251
  %i.ek = call i32 @BIO_write(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.568, i32 noundef %i.ej) #13 ; 0 uses
  %i.el = add nsw i32 %.2250, 1                   ; 2 uses
  %i.em = srem i32 %i.el, 3
  %.not312 = icmp eq i32 %i.em, 0
  %i.en = select i1 %.not312, ptr @.str.477, ptr @.str.580
  %i.eo = call i32 @BIO_write(ptr noundef nonnull %i.e, ptr noundef nonnull %i.en, i32 noundef 1) #13 ; 0 uses
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ep = call i32 @BIO_write(ptr noundef nonnull %i.e, ptr noundef nonnull %.0243, i32 noundef 1) #13 ; 0 uses
  %i.eq = add nsw i32 %.0251, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1252 = phi i32 [ 0, %bb.bi ], [ %i.eq, %bb.bj ]
  %.3 = phi i32 [ %i.el, %bb.bi ], [ %.2250, %bb.bj ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0243, i64 1
  br label %bb.bh, !llvm.loop !79

bb.bl:                                            ; preds = %bb.bh
  %i.es = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.477) #13 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge374
  %i.et = call i32 @ssl_print_sigalgs(ptr noundef nonnull %i.e, ptr noundef nonnull %i.t) #13 ; 0 uses
  %i.eu = call i32 @ssl_print_groups(ptr noundef nonnull %i.e, ptr noundef nonnull %i.t, i32 noundef 0) #13 ; 0 uses
  call void @print_ca_names(ptr noundef nonnull %i.e, ptr noundef nonnull %i.t) #13
  %i.ev = call i32 @SSL_session_reused(ptr noundef nonnull %i.t) #13
  %.not310 = icmp eq i32 %i.ev, 0
  %i.ew = select i1 %.not310, ptr @.str.585, ptr @.str.584
  %i.ex = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ew) #13 ; 0 uses
  %i.ey = call ptr @SSL_get_current_cipher(ptr noundef nonnull %i.t) #13 ; 2 uses
  %i.ez = call ptr @SSL_CIPHER_get_version(ptr noundef %i.ey) #13
  %i.fa = call ptr @SSL_CIPHER_get_name(ptr noundef %i.ey) #13
  %i.fb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.586, ptr noundef %i.ez, ptr noundef %i.fa) #13 ; 0 uses
  %i.fc = call ptr @SSL_get_session(ptr noundef nonnull %i.t) #13
  %i.fd = call i32 @SSL_SESSION_print(ptr noundef nonnull %i.e, ptr noundef %i.fc) #13 ; 0 uses
  %i.fe = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.587) #13 ; 0 uses
  %i.ff = call ptr @SSL_get_SSL_CTX(ptr noundef nonnull %i.t) #13
  call fastcc void @print_stats(ptr noundef nonnull %i.e, ptr noundef %i.ff)
  %i.fg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.587) #13 ; 0 uses
  %i.fh = call ptr @SSL_get0_peer_certificate(ptr noundef nonnull %i.t) #13 ; 3 uses
  %.not311 = icmp eq ptr %i.fh, null
  br i1 %.not311, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.540) #13 ; 0 uses
  %i.fj = call i32 @X509_print(ptr noundef nonnull %i.e, ptr noundef nonnull %i.fh) #13 ; 0 uses
  %i.fk = call i32 @PEM_write_bio_X509(ptr noundef nonnull %i.e, ptr noundef nonnull %i.fh) #13 ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.fl = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.588) #13 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.fm = call i32 @BIO_puts(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.589) #13 ; 0 uses
  br label %.preheader420

bb.bq:                                            ; preds = %bb.am
  %i.fn = and i32 %i.bs, -2
  %or.cond5 = icmp eq i32 %i.fn, 2
  br i1 %or.cond5, label %.thread335, label %.backedge.backedge

.thread335:                                       ; preds = %bb.ao, %bb.bq
  %i.fo = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(6) @.str.590, i64 noundef 5) #15
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.br, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread335, %bb.bq, %bb.an, %bb.aj, %bb.ak
  br label %.backedge

bb.br:                                            ; preds = %.thread335
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 13 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.thread342, %bb.br
  %.0255 = phi i32 [ 1, %bb.br ], [ %.2257, %.thread342 ] ; 3 uses
  %.0 = phi ptr [ %i.fq, %bb.br ], [ %i.gb, %.thread342 ] ; 4 uses
  %i.fr = load i8, ptr %.0, align 1, !tbaa !35    ; 7 uses
  switch i8 %i.fr, label %bb.bt [
    i8 58, label %.thread350
    i8 0, label %bb.by
    i8 32, label %bb.bz
  ]

.thread350:                                       ; preds = %bb.bs
  store i8 0, ptr %.0, align 1, !tbaa !35
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  switch i32 %.0255, label %bb.bx [
    i32 1, label %bb.bu
    i32 2, label %bb.bv
    i32 3, label %bb.bw
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.fs = icmp eq i8 %i.fr, 46
  br i1 %i.fs, label %.thread342, label %.thread345

bb.bv:                                            ; preds = %bb.bt
  %i.ft = icmp eq i8 %i.fr, 46
  br i1 %i.ft, label %.thread342, label %.thread345

bb.bw:                                            ; preds = %bb.bt
  %i.fu = icmp eq i8 %i.fr, 47
  %i.fv = icmp eq i8 %i.fr, 92
  %i.fw = sext i1 %i.fv to i32
  br i1 %i.fu, label %.thread342, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.1256 = phi i32 [ %.0255, %bb.bt ], [ %i.fw, %bb.bw ] ; 2 uses
  %i.fx = icmp eq i32 %.1256, 0
  br i1 %i.fx, label %.thread345, label %.thread342

.thread345:                                       ; preds = %bb.bv, %bb.bu, %bb.bx
  %i.fy = icmp eq i8 %i.fr, 47
end_hunk_0
begin_hunk_1_@add_session:bb.a
  %i.h = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.i = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.h, ptr noundef nonnull @.str.609) #13 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.412, i32 noundef 3944) #13
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @SSL_SESSION_get_id(ptr noundef %1, ptr noundef null) #13
  %i.k = load i32, ptr %i.c, align 8, !tbaa !103
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr @CRYPTO_memdup(ptr noundef %i.j, i64 noundef %i.l, ptr noundef nonnull @.str.412, i32 noundef 3948) #13
  store ptr %i.m, ptr %i.b, align 8, !tbaa !57
  %i.n = load i32, ptr %i.f, align 8, !tbaa !102
  %i.o = sext i32 %i.n to i64
  %i.p = tail call ptr @app_malloc(i64 noundef %i.o, ptr noundef nonnull @.str.610) #13 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !59
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !57
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.t = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.s, ptr noundef nonnull @.str.611) #13 ; 0 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !57
  tail call void @CRYPTO_free(ptr noundef %i.u, ptr noundef nonnull @.str.412, i32 noundef 3952) #13
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !59
  tail call void @CRYPTO_free(ptr noundef %i.v, ptr noundef nonnull @.str.412, i32 noundef 3953) #13
  tail call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.412, i32 noundef 3954) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.a, align 8, !tbaa !14
  %i.w = call i32 @i2d_SSL_SESSION(ptr noundef %1, ptr noundef nonnull %i.a) #13
  %i.x = load i32, ptr %i.f, align 8, !tbaa !102
  %.not23 = icmp eq i32 %i.w, %i.x
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.z = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.y, ptr noundef nonnull @.str.612) #13 ; 0 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !57
  call void @CRYPTO_free(ptr noundef %i.aa, ptr noundef nonnull @.str.412, i32 noundef 3962) #13
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !59
  call void @CRYPTO_free(ptr noundef %i.ab, ptr noundef nonnull @.str.412, i32 noundef 3963) #13
  call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.412, i32 noundef 3964) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr @first, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !60
  store ptr %i.b, ptr @first, align 8, !tbaa !55
  %i.ae = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.af = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ae, ptr noundef nonnull @.str.613) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0
}

declare void @SSL_CTX_sess_set_get_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @get_session(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store i32 0, ptr %3, align 4, !tbaa !5
  %.014 = load ptr, ptr @first, align 8, !tbaa !55 ; 2 uses
  %.not15 = icmp eq ptr %.014, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.016 = phi ptr [ %.014, %.lr.ph ], [ %.0, %bb.e ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  %i.e = icmp eq i32 %2, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.016, align 8, !tbaa !57
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr %1, i64 %i.b)
  %.not12 = icmp eq i32 %bcmp, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  store ptr %i.h, ptr %i.a, align 8, !tbaa !14
  %i.i = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.j = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.i, ptr noundef nonnull @.str.614) #13 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !102
  %i.m = sext i32 %i.l to i64
  %i.n = tail call ptr @app_get0_libctx() #13
  %i.o = tail call ptr @app_get0_propq() #13
  %i.p = call ptr @d2i_SSL_SESSION_ex(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.016, i64 32
  %.0 = load ptr, ptr %i.q, align 8, !tbaa !55    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.r = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.r, ptr noundef nonnull @.str.615) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %.010 = phi ptr [ %i.p, %bb.d ], [ null, %._crit_edge ]
  ret ptr %.010
}

declare void @SSL_CTX_sess_set_remove_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @del_session(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call ptr @SSL_SESSION_get_id(ptr noundef %1, ptr noundef nonnull %i.a) #13
  %.020 = load ptr, ptr @first, align 8, !tbaa !55 ; 2 uses
  %.not21 = icmp eq ptr %.020, null
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !5    ; 2 uses
  %i.d = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.023 = phi ptr [ %.020, %.lr.ph ], [ %.0, %bb.h ] ; 7 uses
  %.01422 = phi ptr [ null, %.lr.ph ], [ %.023, %bb.h ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.023, align 8, !tbaa !57  ; 2 uses
  %bcmp = call i32 @bcmp(ptr %i.h, ptr %i.b, i64 %i.d)
  %.not16 = icmp eq i32 %bcmp, 0
  br i1 %.not16, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not17 = icmp eq ptr %.01422, null
  %i.i = getelementptr inbounds nuw i8, ptr %.023, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.01422, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !60
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.j, ptr @first, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @CRYPTO_free(ptr noundef %i.h, ptr noundef nonnull @.str.412, i32 noundef 4003) #13
  %i.l = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  call void @CRYPTO_free(ptr noundef %i.m, ptr noundef nonnull @.str.412, i32 noundef 4004) #13
  call void @CRYPTO_free(ptr noundef nonnull %.023, ptr noundef nonnull @.str.412, i32 noundef 4005) #13
  br label %.loopexit

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.023, i64 32
  %.0 = load ptr, ptr %i.n, align 8, !tbaa !55    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !105

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare ptr @SSL_SESSION_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_SSL_SESSION(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @d2i_SSL_SESSION_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS13ssl_excert_st", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS13stack_st_X509", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p2 omnipotent char", !18, i64 0}
!18 = !{!"any p2 pointer", !11, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS10ssl_ctx_st", !11, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = !{!26, !6, i64 0}
!26 = !{!"verify_options_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!27 = !{!26, !6, i64 12}
!28 = !{!26, !6, i64 4}
!29 = !{!30, !6, i64 60}
!30 = !{!"tlsextstatusctx_st", !6, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !6, i64 56, !6, i64 60}
!31 = !{!30, !6, i64 0}
!32 = !{!30, !15, i64 40}
!33 = !{!30, !15, i64 48}
!34 = !{!30, !15, i64 8}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 short", !11, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !7, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !7, i64 0}
!44 = !{!45, !15, i64 0}
!45 = !{!"tlsextctx_st", !15, i64 0, !22, i64 8, !6, i64 16}
!46 = !{!45, !6, i64 16}
!47 = distinct !{!47, !39}
!48 = !{!49, !15, i64 0}
!49 = !{!"tlsextnextprotoctx_st", !15, i64 0, !43, i64 8}
!50 = !{!51, !15, i64 0}
!51 = !{!"tlsextalpnctx_st", !15, i64 0, !43, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS14ssl_session_st", !11, i64 0}
!54 = !{!45, !22, i64 8}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTS21simple_ssl_session_st", !11, i64 0}
!57 = !{!58, !15, i64 0}
!58 = !{!"simple_ssl_session_st", !15, i64 0, !6, i64 8, !15, i64 16, !6, i64 24, !56, i64 32}
!59 = !{!58, !15, i64 16}
!60 = !{!58, !56, i64 32}
!61 = distinct !{!61, !39}
!62 = !{!30, !15, i64 16}
!63 = !{!30, !15, i64 32}
!64 = !{!30, !15, i64 24}
!65 = !{!49, !43, i64 8}
!66 = distinct !{!66, !39}
!67 = !{!51, !43, i64 8}
!68 = distinct !{!68, !39}
!69 = !{!30, !6, i64 56}
!70 = distinct !{!70, !39}
!71 = !{!72, !72, i64 0}
!72 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !11, i64 0}
!73 = distinct !{!73, !39}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !39}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = distinct !{!81, !39}
!82 = !{!83, !43, i64 0}
!83 = !{!"timeval", !43, i64 0, !43, i64 8}
!84 = !{!83, !43, i64 8}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39, !87, !88}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = distinct !{!89, !39, !88, !87}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = !{!93, !15, i64 0}
!93 = !{!"srpsrvparm_st", !15, i64 0, !94, i64 8, !95, i64 16}
!94 = !{!"p1 _ZTS12SRP_VBASE_st", !11, i64 0}
!95 = !{!"p1 _ZTS15SRP_user_pwd_st", !11, i64 0}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = !{!100, !15, i64 0}
!100 = !{!"srtp_protection_profile_st", !15, i64 0, !43, i64 8}
!101 = distinct !{!101, !39}
!102 = !{!58, !6, i64 24}
!103 = !{!58, !6, i64 8}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
end_hunk_1
