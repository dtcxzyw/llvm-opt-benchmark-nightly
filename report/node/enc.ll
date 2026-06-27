inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@enc_main:bb.a
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = call i32 @BIO_gets(ptr noundef nonnull %i.bc, ptr noundef nonnull @enc_main.buf, i32 noundef 128) #9 ; 3 uses
  %i.bf = call i32 @BIO_free(ptr noundef nonnull %i.bc) #9 ; 0 uses
  %i.bg = icmp slt i32 %i.be, 1
  br i1 %i.bg, label %bb.ad, label %.preheader474

.preheader474:                                    ; preds = %bb.ac
  %.not662 = icmp eq i32 %i.be, 1
  br i1 %.not662, label %.preheader474._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader474
  %i.bh = zext nneg i32 %i.be to i64
  br label %.lr.ph

bb.ad:                                            ; preds = %bb.ac
  %i.bi = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.bj = call ptr @opt_arg() #9
  %i.bk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bi, ptr noundef nonnull @.str.92, ptr noundef %i.q, ptr noundef %i.bj) #9 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge5
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge5 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr @enc_main.buf, i64 %indvars.iv.next ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25
  switch i8 %i.bm, label %.critedge.backedge [
    i8 13, label %.critedge5
    i8 10, label %.critedge5
  ], !llvm.loop !18

.critedge5:                                       ; preds = %.lr.ph, %.lr.ph
  store i8 0, ptr %i.bl, align 1, !tbaa !25
  %i.bn = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.bn, label %.lr.ph, label %.preheader474._crit_edge, !llvm.loop !28

.preheader474._crit_edge:                         ; preds = %.preheader474, %.critedge5
  %i.bo = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.bp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bo, ptr noundef nonnull @.str.93, ptr noundef %i.q) #9 ; 0 uses
  br label %.loopexit

bb.ae:                                            ; preds = %.critedge
  %i.bq = call ptr @opt_arg() #9
  br label %.critedge.backedge

bb.af:                                            ; preds = %.critedge
  %i.br = call ptr @opt_arg() #9
  br label %.critedge.backedge

bb.ag:                                            ; preds = %.critedge
  %i.bs = call ptr @opt_arg() #9
  br label %.critedge.backedge

bb.ah:                                            ; preds = %.critedge
  %i.bt = call ptr @opt_arg() #9
  br label %.critedge.backedge

bb.ai:                                            ; preds = %.critedge
  %i.bu = call ptr @opt_unknown() #9
  br label %.critedge.backedge

bb.aj:                                            ; preds = %.critedge
  %i.bv = call i32 @opt_int_arg() #9
  br label %.critedge.backedge

bb.ak:                                            ; preds = %.critedge
  %i.bw = call ptr @opt_arg() #9
  %i.bx = call i32 @opt_int(ptr noundef %i.bw, ptr noundef nonnull %i.i) #9
  %.not420 = icmp eq i32 %i.bx, 0
  br i1 %.not420, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.by = load i32, ptr %i.i, align 4, !tbaa !5
  %i.bz = icmp sgt i32 %i.by, 16
  br i1 %i.bz, label %bb.am, label %.critedge.backedge

bb.am:                                            ; preds = %bb.al
  store i32 16, ptr %i.i, align 4, !tbaa !5
  br label %.critedge.backedge

bb.an:                                            ; preds = %.critedge
  %i.ca = icmp eq i32 %.0281, 0
  %spec.store.select = select i1 %i.ca, i32 10000, i32 %.0281
  br label %.critedge.backedge

bb.ao:                                            ; preds = %.critedge
  store ptr null, ptr %i.b, align 8, !tbaa !12
  br label %.critedge.backedge

bb.ap:                                            ; preds = %.critedge
  %i.cb = icmp eq ptr %.0267, null
  br i1 %i.cb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cc = call ptr @OPENSSL_sk_new_null() #9      ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1268 = phi ptr [ %i.cc, %bb.aq ], [ %.0267, %bb.ap ] ; 3 uses
  %i.ce = call ptr @opt_arg() #9
  %i.cf = call i32 @OPENSSL_sk_push(ptr noundef nonnull %.1268, ptr noundef %i.ce) #9
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.as, label %.critedge.backedge

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.2269 = phi ptr [ null, %bb.aq ], [ %.1268, %bb.ar ]
  %i.ch = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ci = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ch, ptr noundef nonnull @.str.94, ptr noundef %i.q) #9 ; 0 uses
  br label %.thread446

bb.at:                                            ; preds = %.critedge
  %i.cj = call ptr @opt_arg() #9
  br label %.critedge.backedge

bb.au:                                            ; preds = %.critedge, %.critedge
  %i.ck = call i32 @opt_rand(i32 noundef %i.r) #9
  %.not419 = icmp eq i32 %i.ck, 0
  br i1 %.not419, label %.thread446, label %.critedge.backedge

bb.av:                                            ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %i.cl = call i32 @opt_provider(i32 noundef %i.r) #9
  %.not421 = icmp eq i32 %i.cl, 0
  br i1 %.not421, label %.thread446, label %.critedge.backedge

bb.aw:                                            ; preds = %.critedge
  %i.cm = call i32 @opt_check_rest_arg(ptr noundef null) #9
  %.not369 = icmp eq i32 %i.cm, 0
  br i1 %.not369, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cn = call i32 @app_RAND_load() #9
  %.not370 = icmp eq i32 %i.cn, 0
  br i1 %.not370, label %.thread446, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.co = load i32, ptr %i.i, align 4, !tbaa !5
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = icmp eq i32 %.0283, 0
  %or.cond7 = or i1 %i.cp, %i.cq
  br i1 %or.cond7, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 8, ptr %i.i, align 4, !tbaa !5
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.cr = call i32 @opt_cipher(ptr noundef %.1329, ptr noundef nonnull %i.b) #9
  %.not371 = icmp eq i32 %i.cr, 0
  br i1 %.not371, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %.not372 = icmp eq ptr %i.cs, null
  br i1 %.not372, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ct = call i32 @EVP_CIPHER_get_mode(ptr noundef nonnull %i.cs) #9
  %.fr663 = freeze i32 %i.ct
  %i.cu = icmp eq i32 %.fr663, 65538              ; 2 uses
  %not. = xor i1 %i.cu, true
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.fr = phi i1 [ false, %bb.bb ], [ %i.cu, %bb.bc ] ; 5 uses
  %i.cv = phi i1 [ true, %bb.bb ], [ %not., %bb.bc ]
  %.not373 = icmp eq ptr %.0277, null
  br i1 %.not373, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cw = call i32 @opt_md(ptr noundef nonnull %.0277, ptr noundef nonnull %i.c) #9
  %.not374 = icmp eq i32 %i.cw, 0
  br i1 %.not374, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.cz = call ptr @EVP_sha256() #9
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !14
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %spec.store.select8 = call i32 @llvm.umax.i32(i32 %.0281, i32 1)
  %.not375 = icmp eq i32 %.1302, 0                ; 4 uses
  %i.da = call i32 @llvm.smax.i32(i32 %.0324, i32 80)
  %spec.store.select33 = select i1 %.not375, i32 %.0324, i32 %i.da ; 5 uses
  %.not376 = icmp eq i32 %.0322, 0                ; 2 uses
  br i1 %.not376, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.db = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.dc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.db, ptr noundef nonnull @.str.95, i32 noundef %spec.store.select33) #9 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.not378 = trunc nuw i32 %.0314 to i1           ; 6 uses
  %i.dd = or i1 %.not375, %.not378
  %.0300 = select i1 %i.dd, i32 2, i32 32771      ; 2 uses
  %i.de = xor i1 %.not378, true
  %3 = select i1 %.not375, i1 true, i1 %i.de
  %.0299 = select i1 %3, i32 2, i32 32771
  %i.df = call ptr @app_malloc(i64 noundef 512, ptr noundef nonnull @.str.96) #9 ; 38 uses
  %i.dg = add nuw nsw i32 %spec.store.select33, 2
  %i.dh = udiv i32 %i.dg, 3
  %i.di = shl nsw i32 %i.dh, 2
  %i.dj = udiv i32 %spec.store.select33, 48
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = add nuw nsw i32 %i.dk, 82
  %i.dm = add nuw i32 %i.dl, %i.di
  %i.dn = sext i32 %i.dm to i64
  %i.do = call ptr @app_malloc(i64 noundef %i.dn, ptr noundef nonnull @.str.97) #9 ; 35 uses
  %i.dp = icmp eq ptr %.0339, null
  br i1 %i.dp, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.dq = icmp ne i32 %.0312, 2
  %or.cond12 = and i1 %.fr, %i.dq
  br i1 %or.cond12, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.dr = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ds = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dr, ptr noundef nonnull @.str.98) #9 ; 0 uses
  br label %.thread446

bb.bm:                                            ; preds = %bb.bk
  %i.dt = call ptr @dup_bio_in(i32 noundef %.0300) #9
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.du = call ptr @bio_open_default(ptr noundef nonnull %.0339, i8 noundef signext 114, i32 noundef %.0300) #9
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.3 = phi ptr [ %i.dt, %bb.bm ], [ %i.du, %bb.bn ] ; 36 uses
  %i.dv = icmp eq ptr %.3, null
  br i1 %i.dv, label %.thread446, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dw = icmp eq ptr %.0334, null
  %i.dx = icmp ne ptr %.0332, null
  %or.cond14 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond14, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.dy = call i32 @app_passwd(ptr noundef nonnull %.0332, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef null) #9
  %.not379 = icmp eq i32 %i.dy, 0
  br i1 %.not379, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.dz = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ea = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dz, ptr noundef nonnull @.str.99) #9 ; 0 uses
  br label %.thread446

bb.bs:                                            ; preds = %bb.bq
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  %.2336 = phi ptr [ %i.eb, %bb.bs ], [ %.0334, %bb.bp ] ; 2 uses
  %i.ec = icmp eq ptr %.2336, null
  %i.ed = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ee = icmp ne ptr %i.ed, null
  %or.cond16 = select i1 %i.ec, i1 %i.ee, i1 false
  %i.ef = icmp eq ptr %.0293, null                ; 2 uses
  %or.cond18 = select i1 %or.cond16, i1 %i.ef, i1 false
  %i.eg = icmp eq ptr %.0267, null
  %or.cond20 = select i1 %or.cond18, i1 %i.eg, i1 false
  br i1 %or.cond20, label %.preheader, label %bb.bw

.preheader:                                       ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.eh = call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %i.ed) #9
  %i.ei = select i1 %.not378, ptr @.str.101, ptr @.str.102 ; 2 uses
  %i.ej = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.k, i64 noundef 200, ptr noundef nonnull @.str.100, ptr noundef %i.eh, ptr noundef nonnull %i.ei) #9 ; 0 uses
  store i8 0, ptr %i.df, align 1, !tbaa !25
  %i.ek = call i32 @EVP_read_pw_string(ptr noundef nonnull %i.df, i32 noundef 512, ptr noundef nonnull %i.k, i32 noundef %.0314) #9 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %._crit_edge645, label %.lr.ph644

._crit_edge645:                                   ; preds = %bb.bv, %.preheader
  %i.em = load i8, ptr %i.df, align 1, !tbaa !25
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %.thread433, label %.thread436

.thread436:                                       ; preds = %._crit_edge645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.bw

.lr.ph644:                                        ; preds = %.preheader, %bb.bv
  %i.eo = phi i32 [ %i.ev, %bb.bv ], [ %i.ek, %.preheader ]
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph644
  %i.eq = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.er = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eq, ptr noundef nonnull @.str.103) #9 ; 0 uses
  br label %.thread433

.thread433:                                       ; preds = %bb.bu, %._crit_edge645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %.thread446

bb.bv:                                            ; preds = %.lr.ph644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.et = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.es) #9
  %i.eu = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.k, i64 noundef 200, ptr noundef nonnull @.str.100, ptr noundef %i.et, ptr noundef nonnull %i.ei) #9 ; 0 uses
  store i8 0, ptr %i.df, align 1, !tbaa !25
  %i.ev = call i32 @EVP_read_pw_string(ptr noundef nonnull %i.df, i32 noundef 512, ptr noundef nonnull %i.k, i32 noundef %.0314) #9 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %._crit_edge645, label %.lr.ph644

bb.bw:                                            ; preds = %.thread436, %bb.bt
  %.5 = phi ptr [ %i.df, %.thread436 ], [ %.2336, %bb.bt ] ; 6 uses
  %i.ex = call ptr @bio_open_default(ptr noundef %.0341, i8 noundef signext 119, i32 noundef %.0299) #9 ; 33 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.thread446, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not381 = icmp eq i32 %.0320, 0                ; 3 uses
  br i1 %.not381, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @BIO_set_callback_ex(ptr noundef %.3, ptr noundef nonnull @BIO_debug_callback_ex) #9
  call void @BIO_set_callback_ex(ptr noundef nonnull %i.ex, ptr noundef nonnull @BIO_debug_callback_ex) #9
  %i.ez = load ptr, ptr @bio_err, align 8, !tbaa !20
  call void @BIO_set_callback_arg(ptr noundef %.3, ptr noundef %i.ez) #9
  %i.fa = load ptr, ptr @bio_err, align 8, !tbaa !20
  call void @BIO_set_callback_arg(ptr noundef nonnull %i.ex, ptr noundef %i.fa) #9
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %.not375, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fb = call ptr @BIO_f_base64() #9
  %i.fc = call ptr @BIO_new(ptr noundef %i.fb) #9 ; 8 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.thread446, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not381, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @BIO_set_callback_ex(ptr noundef nonnull %i.fc, ptr noundef nonnull @BIO_debug_callback_ex) #9
  %i.fe = load ptr, ptr @bio_err, align 8, !tbaa !20
  call void @BIO_set_callback_arg(ptr noundef nonnull %i.fc, ptr noundef %i.fe) #9
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not382 = icmp eq i32 %.0318, 0
  br i1 %.not382, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @BIO_set_flags(ptr noundef nonnull %i.fc, i32 noundef 256) #9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br i1 %.not378, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ff = call ptr @BIO_push(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ex) #9
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.fg = call ptr @BIO_push(ptr noundef nonnull %i.fc, ptr noundef %.3) #9
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.bz
  %.0275 = phi ptr [ %i.ff, %bb.cg ], [ %i.ex, %bb.ch ], [ %i.ex, %bb.bz ] ; 4 uses
  %.0274 = phi ptr [ %.3, %bb.cg ], [ %i.fg, %bb.ch ], [ %.3, %bb.bz ] ; 9 uses
  %.0250 = phi ptr [ %i.fc, %bb.cg ], [ %i.fc, %bb.ch ], [ null, %bb.bz ] ; 25 uses
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !12
  %.not384 = icmp eq ptr %i.fh, null
  br i1 %.not384, label %.thread458, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.not385 = icmp eq ptr %.5, null
  br i1 %.not385, label %.thread882, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.5) #10 ; 3 uses
  %.not386 = icmp eq i32 %.0316, 0
  br i1 %.not386, label %bb.cl, label %.thread441

bb.cl:                                            ; preds = %bb.ck
  %.not387 = icmp eq ptr %.0326, null
  br i1 %.not387, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fj = load i32, ptr %i.i, align 4, !tbaa !5
  %i.fk = call fastcc i32 @set_hex(ptr noundef %.0326, ptr noundef %i.h, i32 noundef %i.fj)
  %.not388 = icmp eq i32 %i.fk, 0
  br i1 %.not388, label %bb.cn, label %.thread441

bb.cn:                                            ; preds = %bb.cm
  %i.fl = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.fm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fl, ptr noundef nonnull @.str.104) #9 ; 0 uses
  br label %.thread446
end_hunk_0
