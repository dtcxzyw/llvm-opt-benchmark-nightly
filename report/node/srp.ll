inline.NumInlined: 18
inline.NumDeleted: 3
begin_hunk_0_@srp_main:bb.a
  %spec.select = select i1 %i.au, ptr %i.av, ptr %.0257 ; 2 uses
  %i.aw = call ptr @app_load_config_verbose(ptr noundef %spec.select, i32 noundef %.0285) #6 ; 9 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.thread387, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ay = load ptr, ptr @default_config_file, align 8, !tbaa !9
  %.not313 = icmp eq ptr %spec.select, %i.ay
  br i1 %.not313, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.az = call i32 @app_load_modules(ptr noundef nonnull %i.aw) #6
  %.not314 = icmp eq i32 %i.az, 0
  br i1 %.not314, label %.thread387, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ba = icmp eq ptr %.0261, null
  br i1 %i.ba, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not315 = icmp eq i32 %.0285, 0
  br i1 %.not315, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bb = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.bc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.56) #6 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bd = call fastcc ptr @lookup_conf(ptr noundef %i.aw, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.thread387, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.2263 = phi ptr [ %i.bd, %bb.ak ], [ %.0261, %bb.ah ] ; 2 uses
  call void @app_RAND_load_conf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.57) #6
  %.not316 = icmp eq i32 %.0285, 0
  br i1 %.not316, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bf = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.bg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bf, ptr noundef nonnull @.str.59, ptr noundef nonnull %.2263) #6 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bh = call fastcc ptr @lookup_conf(ptr noundef %i.aw, ptr noundef nonnull %.2263, ptr noundef nonnull @.str.22) ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread387, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ad
  %.2256 = phi ptr [ %i.bh, %bb.an ], [ %.0254, %bb.ad ] ; 7 uses
  %.0246 = phi ptr [ %i.aw, %bb.an ], [ null, %bb.ad ] ; 5 uses
  %.not317 = icmp eq i32 %.0285, 0                ; 7 uses
  br i1 %.not317, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bj = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.bk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bj, ptr noundef nonnull @.str.60, ptr noundef nonnull %.2256) #6 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bl = call ptr @load_index(ptr noundef nonnull %.2256, ptr noundef null) #6 ; 16 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ar, label %.preheader402

.preheader402:                                    ; preds = %bb.aq
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 13 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !23
  %i.br = call i32 @OPENSSL_sk_num(ptr noundef %i.bq) #6
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader402
  %i.bt = icmp ne ptr %.0266, null
  %i.bu = icmp sgt i32 %.0285, 1
  %i.bv = zext i1 %i.bu to i32
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.bw = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.bx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bw, ptr noundef nonnull @.str.61, ptr noundef nonnull %.2256) #6 ; 0 uses
  br label %.thread387

bb.as:                                            ; preds = %.lr.ph, %bb.aw
  %.0248473 = phi i32 [ -1, %.lr.ph ], [ %.2250, %bb.aw ] ; 4 uses
  %.0251472 = phi i32 [ -1, %.lr.ph ], [ %.1252, %bb.aw ]
  %.0282471 = phi i32 [ 0, %.lr.ph ], [ %i.ck, %bb.aw ] ; 5 uses
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23
  %i.cb = call ptr @OPENSSL_sk_value(ptr noundef %i.ca, i32 noundef %.0282471) #6 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.ce = icmp eq i8 %i.cd, 73
  br i1 %i.ce, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.cf = icmp slt i32 %.0248473, 0
  %or.cond14 = select i1 %i.cf, i1 %i.bt, i1 false
  br i1 %or.cond14, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9
  %i.ci = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0266, ptr noundef nonnull dereferenceable(1) %i.ch) #7
  %i.cj = icmp eq i32 %i.ci, 0
  %spec.select335 = select i1 %i.cj, i32 %.0282471, i32 %.0248473
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1249 = phi i32 [ %.0248473, %bb.at ], [ %spec.select335, %bb.au ]
  call fastcc void @print_entry(ptr noundef nonnull readonly %i.bl, i32 noundef %.0282471, i32 noundef range(i32 0, 2) %i.bv, ptr noundef nonnull @.str.91)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.av
  %.1252 = phi i32 [ %.0282471, %bb.av ], [ %.0251472, %bb.as ] ; 2 uses
  %.2250 = phi i32 [ %.1249, %bb.av ], [ %.0248473, %bb.as ] ; 2 uses
  %i.ck = add nuw nsw i32 %.0282471, 1            ; 2 uses
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23
  %i.co = call i32 @OPENSSL_sk_num(ptr noundef %i.cn) #6
  %i.cp = icmp slt i32 %i.ck, %i.co
  br i1 %i.cp, label %bb.as, label %._crit_edge.loopexit, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %bb.aw
  %i.cq = icmp sgt i32 %.1252, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader402
  %.0251.lcssa = phi i1 [ false, %.preheader402 ], [ %i.cq, %._crit_edge.loopexit ]
  %.0248.lcssa = phi i32 [ -1, %.preheader402 ], [ %.2250, %._crit_edge.loopexit ] ; 3 uses
  br i1 %.not317, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge
  %i.cr = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.cs = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cr, ptr noundef nonnull @.str.62) #6 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge
  %i.ct = icmp sgt i32 %.0248.lcssa, -1
  br i1 %i.ct, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.cu = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !23
  %i.cx = call ptr @OPENSSL_sk_value(ptr noundef %i.cw, i32 noundef %.0248.lcssa) #6
  %i.cy = icmp sgt i32 %.0285, 1
  %i.cz = zext i1 %i.cy to i32
  call fastcc void @print_entry(ptr noundef %i.bl, i32 noundef %.0248.lcssa, i32 noundef %i.cz, ptr noundef nonnull @.str.63)
  br label %bb.bf

bb.ba:                                            ; preds = %bb.ay
  br i1 %.0251.lcssa, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.da = call ptr @SRP_get_default_gN(ptr noundef %.0266) #6
  %.not318 = icmp eq ptr %i.da, null
  br i1 %.not318, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.db = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.dc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.db, ptr noundef nonnull @.str.64, ptr noundef %.0266) #6 ; 0 uses
  br label %.thread387

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.not317, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dd = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.de = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dd, ptr noundef nonnull @.str.65) #6 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.az
  %.0260 = phi ptr [ %i.cx, %bb.az ], [ null, %bb.be ] ; 2 uses
  %i.df = icmp sgt i32 %.0285, 1
  br i1 %i.df, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %bb.bf
  %i.dg = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.dh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dg, ptr noundef nonnull @.str.66) #6 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bg, %bb.bf
  %i.di = phi i1 [ false, %bb.bf ], [ true, %bb.bg ], [ false, %bb.bd ]
  %.0260340 = phi ptr [ %.0260, %bb.bf ], [ %.0260, %bb.bg ], [ null, %bb.bd ] ; 3 uses
  %i.dj = icmp eq i32 %.0275, 9                   ; 3 uses
  %i.dk = icmp sgt i32 %.0285, 0
  %i.dl = or i1 %i.dk, %i.dj
  %i.dm = zext i1 %i.dl to i32
  %.not321 = icmp eq ptr %.0260340, null          ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0260340, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0260340, i64 8 ; 2 uses
  %.not323 = icmp eq ptr %.0264, null             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit, %.thread
  %.0287 = phi i32 [ 0, %.thread ], [ %.7294, %.loopexit ] ; 23 uses
  %.0277 = phi i32 [ 0, %.thread ], [ %.5, %.loopexit ] ; 9 uses
  %.1273 = phi ptr [ %.0272, %.thread ], [ %i.jd, %.loopexit ] ; 19 uses
  %.1 = phi ptr [ %.0239, %.thread ], [ %i.jc, %.loopexit ] ; 2 uses
  %i.du = icmp ne ptr %.1273, null                ; 2 uses
  %i.dv = select i1 %i.dj, i1 true, i1 %i.du
  br i1 %i.dv, label %bb.bi, label %.thread374

bb.bi:                                            ; preds = %bb.bh
  %or.cond16 = and i1 %i.di, %i.du
  br i1 %or.cond16, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dw = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.dx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dw, ptr noundef nonnull @.str.67, ptr noundef nonnull %.1273) #6 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.dy = call fastcc i32 @get_index(ptr noundef %i.bl, ptr noundef %.1273, i8 noundef signext 85) ; 9 uses
  %i.dz = icmp sgt i32 %i.dy, -1                  ; 2 uses
  br i1 %i.dz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call fastcc void @print_user(ptr noundef %i.bl, i32 noundef %i.dy, i32 noundef %i.dm)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.dj, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.ea = icmp eq ptr %.1273, null
  br i1 %i.ea, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.eb = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.ec = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eb, ptr noundef nonnull @.str.68) #6 ; 0 uses
  %i.ed = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !23
  %i.eg = call i32 @OPENSSL_sk_num(ptr noundef %i.ef) #6
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph478, label %.loopexit

.lr.ph478:                                        ; preds = %bb.bo, %.lr.ph478
  %.1283476 = phi i32 [ %i.ei, %.lr.ph478 ], [ 0, %bb.bo ] ; 2 uses
  call fastcc void @print_user(ptr noundef %i.bl, i32 noundef %.1283476, i32 noundef 1)
  %i.ei = add nuw nsw i32 %.1283476, 1            ; 2 uses
  %i.ej = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !23
  %i.em = call i32 @OPENSSL_sk_num(ptr noundef %i.el) #6
  %i.en = icmp slt i32 %i.ei, %i.em
  br i1 %i.en, label %.lr.ph478, label %.loopexit, !llvm.loop !31

bb.bp:                                            ; preds = %bb.bn
  %i.eo = icmp slt i32 %i.dy, 0
  br i1 %i.eo, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.ep = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.eq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ep, ptr noundef nonnull @.str.69, ptr noundef nonnull %.1273) #6 ; 0 uses
  %i.er = add nsw i32 %.0287, 1
  br label %.loopexit

bb.br:                                            ; preds = %bb.bm
  switch i32 %.0275, label %.loopexit [
    i32 6, label %bb.bs
    i32 8, label %bb.cd
    i32 7, label %bb.cx
  ]

bb.bs:                                            ; preds = %bb.br
  br i1 %i.dz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.es = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !23
  %i.ev = call ptr @OPENSSL_sk_value(ptr noundef %i.eu, i32 noundef %i.dy) #6
  %i.ew = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.ex = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ew, ptr noundef nonnull @.str.70, ptr noundef %.1273) #6 ; 0 uses
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !9
  store i8 86, ptr %i.ey, align 1, !tbaa !29
  br label %.loopexit

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.dr, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  br i1 %.not321, label %.thread341, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ez = load ptr, ptr %i.dn, align 8, !tbaa !9
  %i.fa = load ptr, ptr %i.do, align 8, !tbaa !9
  br label %.thread341

.thread341:                                       ; preds = %bb.bu, %bb.bv
  %i.fb = phi ptr [ %i.ez, %bb.bv ], [ %.0266, %bb.bu ]
  %i.fc = phi ptr [ %i.fa, %bb.bv ], [ null, %bb.bu ]
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.fe = call fastcc ptr @srp_create_user(ptr noundef %.1273, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dq, ptr noundef %i.fb, ptr noundef %i.fc, ptr noundef %i.fd, i32 noundef %.0285) ; 2 uses
  %.not325 = icmp eq ptr %i.fe, null
  br i1 %.not325, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.thread341
  %i.ff = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.fg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ff, ptr noundef nonnull @.str.71, ptr noundef %.1273) #6 ; 0 uses
  %i.fh = add nsw i32 %.0287, 1
  br label %.thread342

bb.bx:                                            ; preds = %.thread341
  %i.fi = call ptr @CRYPTO_strdup(ptr noundef %.1273, ptr noundef nonnull @.str.72, i32 noundef 473) #6
  store ptr %i.fi, ptr %i.ds, align 8, !tbaa !9
  %i.fj = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef 474) #6
  store ptr %i.fj, ptr %i.c, align 16, !tbaa !9
  %i.fk = call ptr @CRYPTO_strdup(ptr noundef nonnull %i.fe, ptr noundef nonnull @.str.72, i32 noundef 475) #6 ; 2 uses
  store ptr %i.fk, ptr %i.dt, align 16, !tbaa !9
  %i.fl = load <2 x ptr>, ptr %i.c, align 16
  %2 = load <2 x ptr>, ptr %i.dq, align 16
  %3 = shufflevector <2 x ptr> %2, <2 x ptr> poison, <5 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 0>
  %4 = insertelement <5 x ptr> %3, ptr %i.fk, i64 1
  %5 = shufflevector <2 x ptr> %i.fl, <2 x ptr> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <5 x ptr> %4, <5 x ptr> %5, <5 x i32> <i32 0, i32 1, i32 5, i32 6, i32 4>
  %.fr = freeze <5 x ptr> %6
  %7 = icmp eq <5 x ptr> %.fr, splat (ptr null)
  %8 = bitcast <5 x i1> %7 to i5
  %.not665 = icmp eq i5 %8, 0
  br i1 %.not665, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  br i1 %.not323, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fm = call ptr @CRYPTO_strdup(ptr noundef nonnull %.0264, ptr noundef nonnull @.str.72, i32 noundef 483) #6 ; 2 uses
  store ptr %i.fm, ptr %i.dr, align 8, !tbaa !9
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.fo = call fastcc i32 @update_index(ptr noundef %i.bl, ptr noundef %i.c)
  %.not327 = icmp eq i32 %i.fo, 0
  br i1 %.not327, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %i.fp = load ptr, ptr %i.ds, align 8, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.fp, ptr noundef nonnull @.str.72, i32 noundef 485) #6
  %i.fq = load ptr, ptr %i.dt, align 16, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.fq, ptr noundef nonnull @.str.72, i32 noundef 486) #6
  %i.fr = load ptr, ptr %i.dr, align 8, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.fr, ptr noundef nonnull @.str.72, i32 noundef 487) #6
  %i.fs = load ptr, ptr %i.c, align 16, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.fs, ptr noundef nonnull @.str.72, i32 noundef 488) #6
  %i.ft = load ptr, ptr %i.dp, align 8, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.ft, ptr noundef nonnull @.str.72, i32 noundef 489) #6
  %i.fu = load ptr, ptr %i.dq, align 16, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.fu, ptr noundef nonnull @.str.72, i32 noundef 490) #6
  br label %.thread342

.thread342:                                       ; preds = %bb.cb, %bb.bw
  %.1288.ph = phi i32 [ %i.fh, %bb.bw ], [ %.0287, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread368

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.loopexit

bb.cd:                                            ; preds = %bb.br
  %i.fv = icmp slt i32 %i.dy, 0
  br i1 %i.fv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.fw = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.fx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fw, ptr noundef nonnull @.str.74, ptr noundef %.1273) #6 ; 0 uses
  %i.fy = add nsw i32 %.0287, 1
  br label %.loopexit

bb.cf:                                            ; preds = %bb.cd
  %i.fz = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !23
  %i.gc = call ptr @OPENSSL_sk_value(ptr noundef %i.gb, i32 noundef %i.dy) #6 ; 13 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !9
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !29
  switch i8 %i.ge, label %bb.cm [
    i8 118, label %.thread355
    i8 86, label %bb.cg
  ]

.thread355:                                       ; preds = %bb.cf
  %i.gf = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.gg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gf, ptr noundef nonnull @.str.75, ptr noundef %.1273) #6 ; 0 uses
  %i.gh = add nsw i32 %.0287, 1
  br label %.loopexit

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not317, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gi = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.gj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gi, ptr noundef nonnull @.str.76, ptr noundef %.1273) #6 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 32 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !9
  %i.gm = call fastcc i32 @get_index(ptr noundef %i.bl, ptr noundef %i.gl, i8 noundef signext 73)
  %i.gn = icmp sgt i32 %i.gm, -1
  br i1 %i.gn, label %bb.cj, label %.thread347

.thread347:                                       ; preds = %bb.ci
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !9
  %i.gs = load ptr, ptr %i.gk, align 8, !tbaa !9
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.gt = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !23
  %i.gw = call ptr @OPENSSL_sk_value(ptr noundef %i.gv, i32 noundef %i.dy) #6 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !9  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !9  ; 2 uses
  %.not319 = icmp eq ptr %i.gw, null              ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %.in = select i1 %.not319, ptr %i.gk, ptr %i.hb
  %i.hc = load ptr, ptr %.in, align 8, !tbaa !9   ; 2 uses
  br i1 %.not319, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !9
  br label %bb.cl

bb.cl:                                            ; preds = %.thread347, %bb.cj, %bb.ck
  %i.hf = phi ptr [ %i.hc, %bb.ck ], [ %i.hc, %bb.cj ], [ %i.gs, %.thread347 ]
  %i.hg = phi ptr [ %i.ha, %bb.ck ], [ %i.ha, %bb.cj ], [ %i.gr, %.thread347 ]
  %i.hh = phi ptr [ %i.gy, %bb.ck ], [ %i.gy, %bb.cj ], [ %i.gp, %.thread347 ]
  %i.hi = phi ptr [ %i.he, %bb.ck ], [ null, %bb.cj ], [ null, %.thread347 ]
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.hk = call fastcc ptr @srp_verify_user(ptr noundef %.1273, ptr noundef %i.hh, ptr noundef %i.hg, ptr noundef %i.hf, ptr noundef %i.hi, ptr noundef %i.hj, i32 noundef %.0285)
  %.not320.not = icmp eq ptr %i.hk, null
  br i1 %.not320.not, label %.thread351, label %bb.cm

.thread351:                                       ; preds = %bb.cl
  %i.hl = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.hm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hl, ptr noundef nonnull @.str.77, ptr noundef %.1273) #6 ; 0 uses
  %i.hn = add nsw i32 %.0287, 1
  br label %.thread368

bb.cm:                                            ; preds = %bb.cl, %bb.cf
  br i1 %.not317, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ho = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.hp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ho, ptr noundef nonnull @.str.78, ptr noundef %.1273) #6 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  br i1 %.not321, label %.thread354, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hs = load ptr, ptr %i.dn, align 8, !tbaa !9
  %i.ht = load ptr, ptr %i.do, align 8, !tbaa !9
  br label %.thread354

.thread354:                                       ; preds = %bb.co, %bb.cp
  %i.hu = phi ptr [ %i.hs, %bb.cp ], [ null, %bb.co ]
  %i.hv = phi ptr [ %i.ht, %bb.cp ], [ null, %bb.co ]
  %i.hw = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.hx = call fastcc ptr @srp_create_user(ptr noundef %.1273, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr, ptr noundef %i.hu, ptr noundef %i.hv, ptr noundef %i.hw, i32 noundef %.0285) ; 2 uses
  %.not322 = icmp eq ptr %i.hx, null
  br i1 %.not322, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.thread354
  %i.hy = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.hz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hy, ptr noundef nonnull @.str.79, ptr noundef %.1273) #6 ; 0 uses
  %i.ia = add nsw i32 %.0287, 1
  br label %.thread368

bb.cr:                                            ; preds = %.thread354
  %i.ib = load ptr, ptr %i.gc, align 8, !tbaa !9
  store i8 118, ptr %i.ib, align 1, !tbaa !29
  %i.ic = call ptr @CRYPTO_strdup(ptr noundef nonnull %i.hx, ptr noundef nonnull @.str.72, i32 noundef 552) #6 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !9
  %i.ig = icmp eq ptr %i.if, null
  %i.ih = icmp eq ptr %i.ic, null
  %or.cond336 = select i1 %i.ig, i1 true, i1 %i.ih
  br i1 %or.cond336, label %.thread368, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ii = load ptr, ptr %i.gc, align 8, !tbaa !9
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %.thread368, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ik = load ptr, ptr %i.hq, align 8, !tbaa !9
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %.thread368, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.im = load ptr, ptr %i.hr, align 8, !tbaa !9
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %.thread368, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %.not323, label %.loopexit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.io = call ptr @CRYPTO_strdup(ptr noundef nonnull %.0264, ptr noundef nonnull @.str.72, i32 noundef 560) #6 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !9
  %i.iq = icmp eq ptr %i.io, null
  br i1 %i.iq, label %.thread368, label %.loopexit

bb.cx:                                            ; preds = %bb.br
  %i.ir = icmp slt i32 %i.dy, 0
  br i1 %i.ir, label %bb.cy, label %bb.cz

end_hunk_0
