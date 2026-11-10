Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ca?download=true
inline.NumInlined: 41
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ca_main:bb.a
  %i.am = call ptr @opt_arg() #11
  %i.an = call i32 @opt_format(ptr noundef %i.am, i64 noundef 4094, ptr noundef nonnull %i.j) #11
  %.not854 = icmp eq i32 %i.an, 0
  br i1 %.not854, label %bb.c, label %.backedge

bb.x:                                             ; preds = %bb.b
  %i.ao = call ptr @opt_arg() #11
  br label %.backedge

bb.y:                                             ; preds = %bb.b, %bb.b
  %i.ap = call i32 @opt_rand(i32 noundef %i.r) #11
  %.not853 = icmp eq i32 %i.ap, 0
  br i1 %.not853, label %.thread884, label %.backedge

bb.z:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aq = call i32 @opt_provider(i32 noundef %i.r) #11
  %.not852 = icmp eq i32 %i.aq, 0
  br i1 %.not852, label %.thread884, label %.backedge

bb.aa:                                            ; preds = %bb.b
  %i.ar = call ptr @opt_arg() #11
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !361
  br label %.backedge

bb.ab:                                            ; preds = %bb.b
  %i.as = call ptr @opt_arg() #11
  br label %.backedge

bb.ac:                                            ; preds = %bb.b
  %i.at = call ptr @opt_arg() #11
  %i.au = call i32 @opt_format(ptr noundef %i.at, i64 noundef 4094, ptr noundef nonnull %i.c) #11
  %.not851 = icmp eq i32 %i.au, 0
  br i1 %.not851, label %bb.c, label %.backedge

bb.ad:                                            ; preds = %bb.b
  br label %.backedge

bb.ae:                                            ; preds = %bb.b
  %i.av = call ptr @opt_arg() #11
  br label %.backedge

bb.af:                                            ; preds = %bb.b
  %i.aw = icmp eq ptr %.0676, null
  br i1 %i.aw, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.ax = call ptr @OPENSSL_sk_new_null() #11     ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread884, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ag
  %.1677871 = phi ptr [ %i.ax, %bb.ag ], [ %.0676, %bb.af ] ; 3 uses
  %i.az = call ptr @opt_arg() #11
  %i.ba = call i32 @OPENSSL_sk_push(ptr noundef nonnull %.1677871, ptr noundef %i.az) #11
  %.not850 = icmp eq i32 %i.ba, 0
  br i1 %.not850, label %.thread884, label %.backedge

bb.ah:                                            ; preds = %bb.b
  %i.bb = icmp eq ptr %.0672, null
  br i1 %i.bb, label %bb.ai, label %.thread872

bb.ai:                                            ; preds = %bb.ah
  %i.bc = call ptr @OPENSSL_sk_new_null() #11     ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread884, label %.thread872

.thread872:                                       ; preds = %bb.ah, %bb.ai
  %.1673874 = phi ptr [ %i.bc, %bb.ai ], [ %.0672, %bb.ah ] ; 3 uses
  %i.be = call ptr @opt_arg() #11
  %i.bf = call i32 @OPENSSL_sk_push(ptr noundef nonnull %.1673874, ptr noundef %i.be) #11
  %.not849 = icmp eq i32 %i.bf, 0
  br i1 %.not849, label %.thread884, label %.backedge

bb.aj:                                            ; preds = %bb.b
  br label %.backedge

bb.ak:                                            ; preds = %bb.b
  br label %.backedge

bb.al:                                            ; preds = %bb.b
  store i1 true, ptr @preserve, align 4
  br label %.backedge

bb.am:                                            ; preds = %bb.b
  br label %.backedge

bb.an:                                            ; preds = %bb.b
  br label %.backedge

bb.ao:                                            ; preds = %bb.b
  store i1 true, ptr @msie_hack, align 4
  br label %.backedge

bb.ap:                                            ; preds = %bb.b
  %i.bg = call ptr @opt_arg() #11
  br label %.backedge

bb.aq:                                            ; preds = %bb.b
  %i.bh = call ptr @opt_arg() #11
  br label %.backedge

bb.ar:                                            ; preds = %bb.b
  %i.bi = call ptr @opt_arg() #11
  %i.bj = call i64 @strtol(ptr noundef nonnull captures(none) %i.bi, ptr noundef null, i32 noundef 10) #11, !inline_history !400
  store i64 %i.bj, ptr %i.k, align 8, !tbaa !364
  br label %.backedge

bb.as:                                            ; preds = %bb.b
  %i.bk = call ptr @opt_arg() #11
  %i.bl = call i64 @strtol(ptr noundef nonnull captures(none) %i.bk, ptr noundef null, i32 noundef 10) #11, !inline_history !400
  store i64 %i.bl, ptr %i.l, align 8, !tbaa !364
  br label %.backedge

bb.at:                                            ; preds = %bb.b
  %i.bm = call ptr @opt_arg() #11
  %i.bn = call i64 @strtol(ptr noundef nonnull captures(none) %i.bm, ptr noundef null, i32 noundef 10) #11, !inline_history !400
  br label %.backedge

bb.au:                                            ; preds = %bb.b
  %i.bo = call ptr @opt_arg() #11
  br label %.backedge

bb.av:                                            ; preds = %bb.b
  %i.bp = call ptr @opt_arg() #11
  br label %.backedge

bb.aw:                                            ; preds = %bb.b
  %i.bq = call ptr @opt_arg() #11
  br label %.backedge

bb.ax:                                            ; preds = %bb.b
  %i.br = call ptr @opt_arg() #11
  br label %.backedge

bb.ay:                                            ; preds = %bb.b
  %i.bs = call ptr @opt_arg() #11
  br label %.backedge

bb.az:                                            ; preds = %bb.b
  %i.bt = call ptr @opt_arg() #11
  br label %.backedge

bb.ba:                                            ; preds = %bb.b
  %i.bu = call ptr @opt_arg() #11
  br label %.backedge

bb.bb:                                            ; preds = %bb.b
  br label %.backedge

bb.bc:                                            ; preds = %bb.b
  %i.bv = call ptr @opt_arg() #11
  br label %.backedge

bb.bd:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bw = call ptr @opt_arg() #11
  %i.bx = add nsw i32 %i.r, -1605
  br label %.backedge

bb.be:                                            ; preds = %bb.b
  %i.by = call ptr @opt_arg() #11
  %i.bz = call ptr @setup_engine_methods(ptr noundef %i.by, i32 noundef -1, i32 noundef 0) #11
  br label %.backedge

.loopexit967:                                     ; preds = %bb.b
  %i.ca = icmp ne i32 %.0574, 0
  br label %.fold.split

.fold.split:                                      ; preds = %bb.b, %.loopexit967
  %.2576 = phi i1 [ %i.ca, %.loopexit967 ], [ true, %bb.b ] ; 3 uses
  %i.cb = call i32 @opt_num_rest() #11            ; 3 uses
  %i.cc = call ptr @opt_rest() #11
  %i.cd = call ptr @app_load_config_verbose(ptr noundef %.0665, i32 noundef 1) #11 ; 135 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.thread884, label %bb.bf

bb.bf:                                            ; preds = %.fold.split
  %i.cf = load ptr, ptr @default_config_file, align 8, !tbaa !361
  %.not760 = icmp eq ptr %.0665, %i.cf
  br i1 %.not760, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cg = call i32 @app_load_modules(ptr noundef nonnull %i.cd) #11
  %.not761 = icmp eq i32 %i.cg, 0
  br i1 %.not761, label %.thread884, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ch = icmp eq ptr %.0662, null
  br i1 %i.ch, label %bb.bi, label %lookup_conf.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ci = call ptr @NCONF_get_string(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #11 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %lookup_conf.exit.thread, label %lookup_conf.exit

lookup_conf.exit.thread:                          ; preds = %bb.bi
  %i.ck = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.cl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ck, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #11 ; 0 uses
  br label %.thread884

lookup_conf.exit:                                 ; preds = %bb.bi, %bb.bh
  %.2664 = phi ptr [ %.0662, %bb.bh ], [ %i.ci, %bb.bi ] ; 25 uses
  %i.cm = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef null, ptr noundef nonnull @.str.142) #11 ; 2 uses
  %.not762 = icmp eq ptr %i.cm, null
  br i1 %.not762, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %lookup_conf.exit
  %i.cn = call ptr @BIO_new_file(ptr noundef nonnull %i.cm, ptr noundef nonnull @.str.143) #11 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @ERR_clear_error() #11
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.cp = call i32 @OBJ_create_objects(ptr noundef nonnull %i.cn) #11 ; 0 uses
  %i.cq = call i32 @BIO_free(ptr noundef nonnull %i.cn) #11 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %lookup_conf.exit
  %i.cr = call i32 @add_oid_section(ptr noundef nonnull %i.cd) #11
  %.not763 = icmp eq i32 %i.cr, 0
  br i1 %.not763, label %.thread884, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @app_RAND_load_conf(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.140) #11
  %i.cs = call i32 @app_RAND_load() #11
  %.not764 = icmp eq i32 %i.cs, 0
  br i1 %.not764, label %.thread884, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ct = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.144) #11 ; 3 uses
  %.not765 = icmp eq ptr %i.ct, null
  br i1 %.not765, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cu = call i32 @ASN1_STRING_set_default_mask_asc(ptr noundef nonnull %i.ct) #11
  %.not766 = icmp eq i32 %i.cu, 0
  br i1 %.not766, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.cv = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.cw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cv, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.ct) #11 ; 0 uses
  br label %.thread884

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %.not767 = icmp eq i64 %.0548, 4096
  br i1 %.not767, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cx = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.44) #11 ; 2 uses
  %.not768 = icmp eq ptr %i.cx, null
  br i1 %.not768, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(4) @.str.146) #12
  %i.cz = icmp eq i32 %i.cy, 0
  %spec.select = select i1 %i.cz, i64 4096, i64 4097
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %.2550 = phi i64 [ 4096, %bb.br ], [ %spec.select, %bb.bt ], [ 4097, %bb.bs ] ; 4 uses
  store i32 1, ptr %2, align 4, !tbaa !410
  %i.da = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.147) #11 ; 2 uses
  %.not769 = icmp eq ptr %i.da, null
  br i1 %.not769, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.db = call i32 @parse_yesno(ptr noundef nonnull %i.da, i32 noundef 1) #11
  store i32 %i.db, ptr %2, align 4, !tbaa !410
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.not770 = icmp eq ptr %.0622, null
  br i1 %.not770, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %7 = call ptr @NCONF_get_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.148) #11 ; 3 uses
  %i.dc = icmp eq ptr %7, null
  br i1 %i.dc, label %lookup_conf.exit869.thread, label %lookup_conf.exit869

lookup_conf.exit869.thread:                       ; preds = %bb.bx
  %8 = load ptr, ptr @bio_err, align 8, !tbaa !369
  %9 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %8, ptr noundef nonnull @.str.238, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.148) #11 ; 0 uses
  br label %.thread884

lookup_conf.exit869:                              ; preds = %bb.bx
  %i.dd = call ptr @load_index(ptr noundef nonnull %7, ptr noundef nonnull %2) #11 ; 6 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %lookup_conf.exit869
  %i.df = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.dg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.df, ptr noundef nonnull @.str.149, ptr noundef nonnull %7) #11 ; 0 uses
  br label %.thread884

bb.bz:                                            ; preds = %lookup_conf.exit869
  %i.dh = call i32 @index_index(ptr noundef nonnull %i.dd) #11
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %.thread884, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dj = call fastcc i32 @get_certificate_status(ptr noundef %.0622, ptr noundef %i.dd)
  %.not848 = icmp eq i32 %i.dj, 1
  br i1 %.not848, label %.thread884, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dk = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.dl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dk, ptr noundef nonnull @.str.150, ptr noundef nonnull %.0622) #11 ; 0 uses
  br label %.thread884

bb.cc:                                            ; preds = %bb.bw
  %i.dm = icmp eq ptr %.0652, null
  br i1 %i.dm, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.dn = call fastcc ptr @lookup_conf(ptr noundef %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.151) ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.thread884, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.2654 = phi ptr [ %i.dn, %bb.cd ], [ %.0652, %bb.cc ]
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !361 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.dr = call i32 @app_passwd(ptr noundef %.0631, ptr noundef null, ptr noundef nonnull %i.f, ptr noundef null) #11
  %.not771 = icmp eq i32 %i.dr, 0
  br i1 %.not771, label %bb.cg, label %._crit_edge1434

._crit_edge1434:                                  ; preds = %bb.cf
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !361
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ds = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.dt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ds, ptr noundef nonnull @.str.152) #11 ; 0 uses
  br label %.thread884

bb.ch:                                            ; preds = %._crit_edge1434, %bb.ce
  %i.du = phi ptr [ %.pre, %._crit_edge1434 ], [ %i.dp, %bb.ce ]
  %.0607 = phi i32 [ 1, %._crit_edge1434 ], [ 0, %bb.ce ] ; 80 uses
  %i.dv = load i32, ptr %i.j, align 4, !tbaa !362
  %i.dw = call ptr @load_key(ptr noundef nonnull %.2654, i32 noundef %i.dv, i32 noundef 0, ptr noundef %i.du, ptr noundef %.0692, ptr noundef nonnull @.str.153) #11 ; 87 uses
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !361
  call void @cleanse(ptr noundef %i.dx) #11
  %i.dy = icmp eq ptr %i.dw, null
  br i1 %i.dy, label %.thread884, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.dz = icmp eq i32 %.0557, 0                   ; 2 uses
  %i.ea = icmp ne ptr %.0642, null                ; 3 uses
  %or.cond = select i1 %i.dz, i1 true, i1 %i.ea
  %i.eb = icmp ne ptr %.0640, null                ; 2 uses
  %or.cond4 = select i1 %or.cond, i1 true, i1 %i.eb
  %i.ec = icmp ne i32 %.0570, 0                   ; 3 uses
  %or.cond6 = or i1 %or.cond4, %i.ec
  br i1 %or.cond6, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.ed = icmp eq ptr %.0649, null
  br i1 %i.ed, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ee = call fastcc ptr @lookup_conf(ptr noundef %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.154) ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.thread884, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.2651 = phi ptr [ %i.ee, %bb.ck ], [ %.0649, %bb.cj ]
  %i.eg = load i32, ptr %i.c, align 4, !tbaa !362
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !361
  %i.ei = call ptr @load_cert_pass(ptr noundef nonnull %.2651, i32 noundef %i.eg, i32 noundef 1, ptr noundef %i.eh, ptr noundef nonnull @.str.155) #11 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.thread884, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ek = call i32 @X509_check_private_key(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.dw) #11
  %.not772 = icmp eq i32 %i.ek, 0
  br i1 %.not772, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.el = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.em = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.el, ptr noundef nonnull @.str.156) #11 ; 0 uses
  br label %.thread884

bb.co:                                            ; preds = %bb.cm, %bb.ci
  %.0546 = phi ptr [ %i.ei, %bb.cm ], [ null, %bb.ci ] ; 81 uses
  %spec.select859 = select i1 %i.dz, ptr %.0546, ptr null ; 2 uses
  %i.en = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.157) #11 ; 2 uses
  %.not774 = icmp eq ptr %i.en, null
  br i1 %.not774, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !371
  switch i8 %i.eo, label %bb.cr [
    i8 121, label %bb.cq
    i8 89, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp, %bb.cp
  store i1 true, ptr @preserve, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq, %bb.co
  %i.ep = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.24) #11 ; 2 uses
  %.not775 = icmp eq ptr %i.ep, null
  br i1 %.not775, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !371
  switch i8 %i.eq, label %bb.cu [
    i8 121, label %bb.ct
    i8 89, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  store i1 true, ptr @msie_hack, align 4
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct, %bb.cr
  %i.er = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.158) #11 ; 3 uses
  %.not776 = icmp eq ptr %i.er, null
  br i1 %.not776, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.es = call i32 @set_nameopt(ptr noundef nonnull %i.er) #11
  %.not777 = icmp eq i32 %i.es, 0
  br i1 %.not777, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.et = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.eu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.et, ptr noundef nonnull @.str.159, ptr noundef nonnull %i.er) #11 ; 0 uses
  br label %.thread884

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %.0593 = phi i32 [ 1, %bb.cu ], [ 0, %bb.cv ]
  %i.ev = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.160) #11 ; 3 uses
  %.not778 = icmp eq ptr %i.ev, null
  br i1 %.not778, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ew = call i32 @set_cert_ex(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ev) #11
  %.not779 = icmp eq i32 %i.ew, 0
  br i1 %.not779, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ex = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.ey = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ex, ptr noundef nonnull @.str.161, ptr noundef nonnull %i.ev) #11 ; 0 uses
  br label %.thread884

bb.da:                                            ; preds = %bb.cy, %bb.cx
  %.1594 = phi i32 [ %.0593, %bb.cx ], [ 0, %bb.cy ] ; 4 uses
  %i.ez = call ptr @app_conf_try_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.162) #11 ; 3 uses
  %.not780 = icmp eq ptr %i.ez, null
  br i1 %.not780, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.fa = call i32 @set_ext_copy(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ez) #11
  %.not781 = icmp eq i32 %i.fa, 0
  br i1 %.not781, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.fb = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.fc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fb, ptr noundef nonnull @.str.163, ptr noundef nonnull %i.ez) #11 ; 0 uses
  br label %.thread884

bb.dd:                                            ; preds = %bb.db, %bb.da
  %i.fd = icmp eq ptr %.0628, null
  %or.cond8 = and i1 %i.fd, %.2576
  br i1 %or.cond8, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.fe = call ptr @NCONF_get_string(ptr noundef nonnull %i.cd, ptr noundef nonnull %.2664, ptr noundef nonnull @.str.164) #11 ; 5 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.fg = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.fh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fg, ptr noundef nonnull @.str.165) #11 ; 0 uses
  br label %.thread884

bb.dg:                                            ; preds = %bb.de
  %i.fi = call i32 @app_isdir(ptr noundef nonnull %i.fe) #11
end_hunk_0
begin_hunk_1_@ca_main:bb.a
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !382
  %i.vy = call ptr @OPENSSL_sk_value(ptr noundef %i.vx, i32 noundef %.35641207) #11 ; 3 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !361
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !371
  %i.wb = icmp eq i8 %i.wa, 82
  br i1 %i.wb, label %bb.ji, label %bb.jo

bb.ji:                                            ; preds = %.lr.ph1209
  %i.wc = call ptr @X509_REVOKED_new() #11        ; 4 uses
  %i.wd = icmp eq ptr %i.wc, null
  br i1 %i.wd, label %.thread884, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !361
  %i.wg = call fastcc i32 @make_revoked(ptr noundef nonnull %i.wc, ptr noundef %i.wf)
  switch i32 %i.wg, label %bb.jl [
    i32 0, label %.thread884
    i32 2, label %bb.jk
  ]

bb.jk:                                            ; preds = %bb.jj
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jj, %bb.jk
  %.1 = phi i32 [ 1, %bb.jk ], [ %.01208, %bb.jj ]
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !361
  %i.wj = call i32 @BN_hex2bn(ptr noundef nonnull %i.a, ptr noundef %i.wi) #11
  %.not833 = icmp eq i32 %i.wj, 0
  br i1 %.not833, label %.thread884, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.wk = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.wl = call ptr @BN_to_ASN1_INTEGER(ptr noundef %i.wk, ptr noundef null) #11 ; 3 uses
  %i.wm = load ptr, ptr %i.a, align 8, !tbaa !409
  call void @BN_free(ptr noundef %i.wm) #11
  store ptr null, ptr %i.a, align 8, !tbaa !409
  %.not834 = icmp eq ptr %i.wl, null
  br i1 %.not834, label %.thread884, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.wn = call i32 @X509_REVOKED_set_serialNumber(ptr noundef nonnull %i.wc, ptr noundef nonnull %i.wl) #11 ; 0 uses
  call void @ASN1_INTEGER_free(ptr noundef nonnull %i.wl) #11
  %i.wo = call i32 @X509_CRL_add0_revoked(ptr noundef nonnull %i.ve, ptr noundef nonnull %i.wc) #11 ; 0 uses
  br label %bb.jo

bb.jo:                                            ; preds = %.lr.ph1209, %bb.jn
  %.2 = phi i32 [ %.1, %bb.jn ], [ %.01208, %.lr.ph1209 ] ; 2 uses
  %i.wp = add nuw nsw i32 %.35641207, 1           ; 2 uses
  %i.wq = load ptr, ptr %i.fq, align 8, !tbaa !376
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !382
  %i.wt = call i32 @OPENSSL_sk_num(ptr noundef %i.ws) #11
  %i.wu = icmp slt i32 %i.wp, %i.wt
  br i1 %i.wu, label %.lr.ph1209, label %._crit_edge1210.loopexit, !llvm.loop !406

._crit_edge1210.loopexit:                         ; preds = %bb.jo
  %i.wv = icmp ne i32 %.2, 0
  br label %._crit_edge1210

._crit_edge1210:                                  ; preds = %._crit_edge1210.loopexit, %.preheader
  %.0.lcssa = phi i1 [ false, %.preheader ], [ %i.wv, %._crit_edge1210.loopexit ]
  %i.ww = call i32 @X509_CRL_sort(ptr noundef nonnull %i.ve) #11 ; 0 uses
  br i1 %.not782, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %._crit_edge1210
  %i.wx = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.wy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wx, ptr noundef nonnull @.str.226) #11 ; 0 uses
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %._crit_edge1210
  %or.cond34 = or i1 %i.uf, %i.uh
  br i1 %or.cond34, label %bb.jr, label %bb.jx

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @X509V3_set_ctx(ptr noundef nonnull %6, ptr noundef %.0546, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ve, i32 noundef 0) #11
  call void @X509V3_set_nconf(ptr noundef nonnull %6, ptr noundef nonnull %i.cd) #11
  br i1 %i.uf, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %i.wz = call i32 @X509V3_EXT_CRL_add_nconf(ptr noundef nonnull %i.cd, ptr noundef nonnull %6, ptr noundef nonnull %.2648890, ptr noundef nonnull %i.ve) #11
  %.not824 = icmp eq i32 %i.wz, 0
  br i1 %.not824, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.xa = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.xb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.xa, ptr noundef nonnull @.str.227, ptr noundef nonnull %.2648890) #11 ; 0 uses
  br label %.thread894

bb.ju:                                            ; preds = %bb.js, %bb.jr
  br i1 %i.uh, label %bb.jv, label %.thread898

.thread898:                                       ; preds = %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.xc = call ptr @BN_to_ASN1_INTEGER(ptr noundef %.0688, ptr noundef null) #11 ; 3 uses
  %.not825 = icmp eq ptr %i.xc, null
  br i1 %.not825, label %.thread894, label %bb.jw

.thread894:                                       ; preds = %bb.jv, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.thread884

bb.jw:                                            ; preds = %bb.jv
  %i.xd = call i32 @X509_CRL_add1_ext_i2d(ptr noundef nonnull %i.ve, i32 noundef 88, ptr noundef nonnull %i.xc, i32 noundef 0, i64 noundef 0) #11 ; 0 uses
  call void @ASN1_INTEGER_free(ptr noundef nonnull %i.xc) #11
  %i.xe = call i32 @BN_add_word(ptr noundef %.0688, i64 noundef 1) #11
  %.not826.not = icmp eq i32 %i.xe, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.not826.not, label %.thread884, label %.thread906

bb.jx:                                            ; preds = %.thread898, %bb.jq
  %or.cond36 = select i1 %i.uf, i1 true, i1 %.0.lcssa
  br i1 %or.cond36, label %bb.jy, label %.thread905

bb.jy:                                            ; preds = %bb.jx
  %i.xf = call i32 @X509_CRL_set_version(ptr noundef nonnull %i.ve, i64 noundef 1) #11
  %.not827 = icmp eq i32 %i.xf, 0
  br i1 %.not827, label %.thread884, label %.thread905

.thread906:                                       ; preds = %bb.jw
  %i.xg = call i32 @X509_CRL_set_version(ptr noundef nonnull %i.ve, i64 noundef 1) #11
  %.not827907 = icmp eq i32 %i.xg, 0
  br i1 %.not827907, label %.thread884, label %.thread908

.thread908:                                       ; preds = %.thread906
  %i.xh = call i32 @save_serial(ptr noundef nonnull %i.ug, ptr noundef nonnull @.str.177, ptr noundef %.0688, ptr noundef null) #11
  %.not828 = icmp eq i32 %i.xh, 0
  br i1 %.not828, label %.thread884, label %.thread905

.thread905:                                       ; preds = %bb.jy, %bb.jx, %.thread908
  call void @BN_free(ptr noundef %.0688) #11
  %i.xi = call i32 @do_X509_CRL_sign(ptr noundef nonnull %i.ve, ptr noundef %i.dw, ptr noundef %.3661, ptr noundef %.0676) #11
  %.not829 = icmp eq i32 %i.xi, 0
  br i1 %.not829, label %.thread884, label %bb.jz

bb.jz:                                            ; preds = %.thread905
  %i.xj = call ptr @bio_open_default(ptr noundef %.0626, i8 noundef signext 119, i32 noundef %.not830) #11 ; 5 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %.thread884, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.xl = call i32 @PEM_write_bio_X509_CRL(ptr noundef nonnull %i.xj, ptr noundef nonnull %i.ve) #11 ; 0 uses
  br i1 %i.uh, label %bb.kb, label %.thread915

bb.kb:                                            ; preds = %bb.ka
  %i.xm = call i32 @rotate_serial(ptr noundef nonnull %i.ug, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178) #11
  %.not831 = icmp eq i32 %i.xm, 0
  br i1 %.not831, label %.thread884, label %.thread915

.thread915:                                       ; preds = %bb.kb, %bb.ka, %bb.im
  %.4685 = phi ptr [ %i.xj, %bb.kb ], [ null, %bb.im ], [ %i.xj, %bb.ka ] ; 7 uses
  %.1668 = phi ptr [ %i.ve, %bb.kb ], [ null, %bb.im ], [ %i.ve, %bb.ka ] ; 7 uses
  %.not835 = icmp eq i32 %.0568, 0
  br i1 %.not835, label %bb.kj, label %bb.kc

bb.kc:                                            ; preds = %.thread915
  %i.xn = icmp eq ptr %.0644, null
  br i1 %i.xn, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.xo = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.xp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.xo, ptr noundef nonnull @.str.228) #11 ; 0 uses
  br label %.thread884

bb.ke:                                            ; preds = %bb.kc
  %i.xq = load i32, ptr %i.d, align 4, !tbaa !362
  %i.xr = load ptr, ptr %i.f, align 8, !tbaa !361
  %i.xs = call ptr @load_cert_pass(ptr noundef nonnull %.0644, i32 noundef %i.xq, i32 noundef 1, ptr noundef %i.xr, ptr noundef nonnull @.str.229) #11 ; 3 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %.thread884, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.xu = icmp eq i32 %.0568, 2
  %spec.select865 = select i1 %i.xu, i32 -1, i32 %.0542
  %i.xv = call fastcc i32 @do_revoke(ptr noundef %i.xs, ptr noundef %i.fo, i32 noundef %spec.select865, ptr noundef %.0624)
  %i.xw = icmp slt i32 %i.xv, 1
  br i1 %i.xw, label %.thread884, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @X509_free(ptr noundef nonnull %i.xs) #11
  %i.xx = call i32 @save_index(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.fo) #11
  %.not836 = icmp eq i32 %i.xx, 0
  br i1 %.not836, label %.thread884, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.xy = call i32 @rotate_index(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178) #11
  %.not837 = icmp eq i32 %i.xy, 0
  br i1 %.not837, label %.thread884, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.xz = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.ya = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.xz, ptr noundef nonnull @.str.215) #11 ; 0 uses
  br label %bb.kj

.thread884:                                       ; preds = %bb.y, %bb.z, %bb.ag, %.thread, %bb.ai, %.thread872, %.lr.ph1196, %bb.ic, %bb.jm, %bb.ji, %bb.jj, %bb.jl, %bb.es, %bb.jw, %bb.kh, %bb.kg, %bb.ke, %bb.kf, %.thread906, %.thread894, %bb.kb, %bb.jc, %bb.jf, %bb.jh, %bb.jy, %.thread908, %bb.jz, %.thread905, %bb.jd, %.thread891, %bb.iz, %bb.is, %bb.ie, %bb.hy, %bb.c, %.fold.split, %lookup_conf.exit.thread, %lookup_conf.exit869.thread, %bb.by, %bb.bz, %bb.cb, %bb.ca, %bb.cd, %bb.ch, %bb.ck, %bb.cl, %bb.df, %bb.dh, %bb.di, %bb.dk, %bb.dm, %bb.ds, %bb.dv, %bb.dq, %bb.do, %bb.dx, %bb.ec, %bb.bg, %bb.fc, %bb.fv, %bb.gb, %bb.gk, %bb.gm, %bb.go, %bb.gu, %bb.ha, %bb.hk, %bb.hi, %bb.kd, %bb.ik, %bb.ij, %bb.ht, %bb.hs, %bb.he, %bb.hc, %bb.gy, %bb.gw, %bb.gs, %bb.gq, %bb.gd, %bb.gh, %bb.fj, %bb.fm, %bb.fg, %bb.ew, %bb.eg, %bb.ef, %bb.dc, %bb.cz, %bb.cw, %bb.cn, %bb.cg, %bb.bq, %bb.bn, %bb.bm, %bb.ek
  %.0694.ph = phi ptr [ %i.cd, %bb.ek ], [ %i.cd, %bb.bm ], [ %i.cd, %bb.bn ], [ %i.cd, %bb.bq ], [ %i.cd, %bb.cg ], [ %i.cd, %bb.cn ], [ %i.cd, %bb.cw ], [ %i.cd, %bb.cz ], [ %i.cd, %bb.dc ], [ %i.cd, %bb.ef ], [ %i.cd, %bb.eg ], [ %i.cd, %bb.ew ], [ %i.cd, %bb.jm ], [ %i.cd, %bb.fg ], [ %i.cd, %bb.fm ], [ %i.cd, %bb.fj ], [ %i.cd, %bb.gh ], [ %i.cd, %bb.gd ], [ %i.cd, %bb.gq ], [ %i.cd, %bb.gs ], [ %i.cd, %bb.gw ], [ %i.cd, %bb.gy ], [ %i.cd, %bb.hc ], [ %i.cd, %bb.he ], [ %i.cd, %bb.hs ], [ %i.cd, %bb.ht ], [ %i.cd, %bb.ij ], [ %i.cd, %bb.ik ], [ %i.cd, %bb.kh ], [ %i.cd, %.thread906 ], [ %i.cd, %bb.es ], [ %i.cd, %bb.kd ], [ null, %bb.c ], [ %i.cd, %bb.hi ], [ %i.cd, %bb.hk ], [ %i.cd, %bb.ic ], [ %i.cd, %bb.ha ], [ %i.cd, %bb.gu ], [ %i.cd, %bb.go ], [ %i.cd, %bb.gm ], [ %i.cd, %bb.gk ], [ %i.cd, %bb.gb ], [ %i.cd, %bb.fv ], [ %i.cd, %bb.fc ], [ %i.cd, %bb.bg ], [ %i.cd, %bb.ec ], [ %i.cd, %bb.dx ], [ %i.cd, %bb.do ], [ %i.cd, %bb.dq ], [ %i.cd, %bb.dv ], [ %i.cd, %bb.ds ], [ %i.cd, %bb.dm ], [ %i.cd, %bb.dk ], [ %i.cd, %bb.di ], [ %i.cd, %bb.dh ], [ %i.cd, %bb.df ], [ %i.cd, %bb.cl ], [ %i.cd, %bb.ck ], [ %i.cd, %bb.ch ], [ %i.cd, %bb.cd ], [ %i.cd, %bb.ca ], [ %i.cd, %bb.cb ], [ %i.cd, %bb.bz ], [ %i.cd, %bb.by ], [ %i.cd, %lookup_conf.exit869.thread ], [ %i.cd, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ %i.cd, %bb.jh ], [ %i.cd, %bb.jf ], [ %i.cd, %bb.jc ], [ %i.cd, %bb.kb ], [ %i.cd, %.thread894 ], [ %i.cd, %.lr.ph1196 ], [ %i.cd, %bb.hy ], [ %i.cd, %bb.ie ], [ %i.cd, %bb.is ], [ %i.cd, %bb.iz ], [ %i.cd, %.thread891 ], [ %i.cd, %bb.jd ], [ %i.cd, %bb.kf ], [ %i.cd, %bb.ke ], [ %i.cd, %bb.kg ], [ %i.cd, %.thread905 ], [ %i.cd, %bb.jz ], [ %i.cd, %.thread908 ], [ %i.cd, %bb.jy ], [ %i.cd, %bb.jw ], [ %i.cd, %bb.jl ], [ %i.cd, %bb.jj ], [ %i.cd, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %.3691.ph = phi ptr [ null, %bb.ek ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bq ], [ null, %bb.cg ], [ null, %bb.cn ], [ null, %bb.cw ], [ null, %bb.cz ], [ null, %bb.dc ], [ null, %bb.ef ], [ null, %bb.eg ], [ null, %bb.ew ], [ %.0688, %bb.jm ], [ null, %bb.fg ], [ null, %bb.fm ], [ null, %bb.fj ], [ null, %bb.gh ], [ null, %bb.gd ], [ null, %bb.gq ], [ null, %bb.gs ], [ null, %bb.gw ], [ null, %bb.gy ], [ null, %bb.hc ], [ null, %bb.he ], [ null, %bb.hs ], [ null, %bb.ht ], [ null, %bb.ij ], [ null, %bb.ik ], [ null, %bb.kh ], [ %.0688, %.thread906 ], [ null, %bb.es ], [ null, %bb.kd ], [ null, %bb.c ], [ null, %bb.hi ], [ null, %bb.hk ], [ null, %bb.ic ], [ null, %bb.ha ], [ null, %bb.gu ], [ null, %bb.go ], [ null, %bb.gm ], [ null, %bb.gk ], [ null, %bb.gb ], [ null, %bb.fv ], [ null, %bb.fc ], [ null, %bb.bg ], [ null, %bb.ec ], [ null, %bb.dx ], [ null, %bb.do ], [ null, %bb.dq ], [ null, %bb.dv ], [ null, %bb.ds ], [ null, %bb.dm ], [ null, %bb.dk ], [ null, %bb.di ], [ null, %bb.dh ], [ null, %bb.df ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.ch ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %lookup_conf.exit869.thread ], [ null, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ %.0688, %bb.jh ], [ %.0688, %bb.jf ], [ %.0688, %bb.jc ], [ null, %bb.kb ], [ %.0688, %.thread894 ], [ null, %.lr.ph1196 ], [ null, %bb.hy ], [ null, %bb.ie ], [ null, %bb.is ], [ %.0688, %bb.iz ], [ null, %.thread891 ], [ %.0688, %bb.jd ], [ null, %bb.kf ], [ null, %bb.ke ], [ null, %bb.kg ], [ null, %.thread905 ], [ null, %bb.jz ], [ %.0688, %.thread908 ], [ %.0688, %bb.jy ], [ %.0688, %bb.jw ], [ %.0688, %bb.jl ], [ %.0688, %bb.jj ], [ %.0688, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %.0687.ph = phi ptr [ %i.dw, %bb.ek ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bq ], [ null, %bb.cg ], [ %i.dw, %bb.cn ], [ %i.dw, %bb.cw ], [ %i.dw, %bb.cz ], [ %i.dw, %bb.dc ], [ %i.dw, %bb.ef ], [ %i.dw, %bb.eg ], [ %i.dw, %bb.ew ], [ %i.dw, %bb.jm ], [ %i.dw, %bb.fg ], [ %i.dw, %bb.fm ], [ %i.dw, %bb.fj ], [ %i.dw, %bb.gh ], [ %i.dw, %bb.gd ], [ %i.dw, %bb.gq ], [ %i.dw, %bb.gs ], [ %i.dw, %bb.gw ], [ %i.dw, %bb.gy ], [ %i.dw, %bb.hc ], [ %i.dw, %bb.he ], [ %i.dw, %bb.hs ], [ %i.dw, %bb.ht ], [ %i.dw, %bb.ij ], [ %i.dw, %bb.ik ], [ %i.dw, %bb.kh ], [ %i.dw, %.thread906 ], [ %i.dw, %bb.es ], [ %i.dw, %bb.kd ], [ null, %bb.c ], [ %i.dw, %bb.hi ], [ %i.dw, %bb.hk ], [ %i.dw, %bb.ic ], [ %i.dw, %bb.ha ], [ %i.dw, %bb.gu ], [ %i.dw, %bb.go ], [ %i.dw, %bb.gm ], [ %i.dw, %bb.gk ], [ %i.dw, %bb.gb ], [ %i.dw, %bb.fv ], [ %i.dw, %bb.fc ], [ null, %bb.bg ], [ %i.dw, %bb.ec ], [ %i.dw, %bb.dx ], [ %i.dw, %bb.do ], [ %i.dw, %bb.dq ], [ %i.dw, %bb.dv ], [ %i.dw, %bb.ds ], [ %i.dw, %bb.dm ], [ %i.dw, %bb.dk ], [ %i.dw, %bb.di ], [ %i.dw, %bb.dh ], [ %i.dw, %bb.df ], [ %i.dw, %bb.cl ], [ %i.dw, %bb.ck ], [ null, %bb.ch ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %lookup_conf.exit869.thread ], [ null, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ %i.dw, %bb.jh ], [ %i.dw, %bb.jf ], [ %i.dw, %bb.jc ], [ %i.dw, %bb.kb ], [ %i.dw, %.thread894 ], [ %i.dw, %.lr.ph1196 ], [ %i.dw, %bb.hy ], [ %i.dw, %bb.ie ], [ %i.dw, %bb.is ], [ %i.dw, %bb.iz ], [ %i.dw, %.thread891 ], [ %i.dw, %bb.jd ], [ %i.dw, %bb.kf ], [ %i.dw, %bb.ke ], [ %i.dw, %bb.kg ], [ %i.dw, %.thread905 ], [ %i.dw, %bb.jz ], [ %i.dw, %.thread908 ], [ %i.dw, %bb.jy ], [ %i.dw, %bb.jw ], [ %i.dw, %bb.jl ], [ %i.dw, %bb.jj ], [ %i.dw, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %.5686.ph = phi ptr [ null, %bb.ek ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bq ], [ null, %bb.cg ], [ null, %bb.cn ], [ null, %bb.cw ], [ null, %bb.cz ], [ null, %bb.dc ], [ null, %bb.ef ], [ null, %bb.eg ], [ null, %bb.ew ], [ null, %bb.jm ], [ null, %bb.fg ], [ null, %bb.fm ], [ null, %bb.fj ], [ null, %bb.gh ], [ null, %bb.gd ], [ null, %bb.gq ], [ null, %bb.gs ], [ null, %bb.gw ], [ null, %bb.gy ], [ null, %bb.hc ], [ null, %bb.he ], [ null, %bb.hs ], [ null, %bb.ht ], [ null, %bb.ij ], [ null, %bb.ik ], [ %.4685, %bb.kh ], [ null, %.thread906 ], [ null, %bb.es ], [ %.4685, %bb.kd ], [ null, %bb.c ], [ null, %bb.hi ], [ null, %bb.hk ], [ null, %bb.ic ], [ null, %bb.ha ], [ null, %bb.gu ], [ null, %bb.go ], [ null, %bb.gm ], [ null, %bb.gk ], [ null, %bb.gb ], [ null, %bb.fv ], [ null, %bb.fc ], [ null, %bb.bg ], [ null, %bb.ec ], [ null, %bb.dx ], [ null, %bb.do ], [ null, %bb.dq ], [ null, %bb.dv ], [ null, %bb.ds ], [ null, %bb.dm ], [ null, %bb.dk ], [ null, %bb.di ], [ null, %bb.dh ], [ null, %bb.df ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.ch ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %lookup_conf.exit869.thread ], [ null, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ null, %bb.jh ], [ null, %bb.jf ], [ null, %bb.jc ], [ %i.xj, %bb.kb ], [ null, %.thread894 ], [ null, %.lr.ph1196 ], [ null, %bb.hy ], [ %i.tm, %bb.ie ], [ null, %bb.is ], [ null, %bb.iz ], [ null, %.thread891 ], [ null, %bb.jd ], [ %.4685, %bb.kf ], [ %.4685, %bb.ke ], [ %.4685, %bb.kg ], [ null, %.thread905 ], [ null, %bb.jz ], [ null, %.thread908 ], [ null, %bb.jy ], [ null, %bb.jw ], [ null, %bb.jl ], [ null, %bb.jj ], [ null, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %.0680.ph = phi ptr [ %i.fo, %bb.ek ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bq ], [ null, %bb.cg ], [ null, %bb.cn ], [ null, %bb.cw ], [ null, %bb.cz ], [ null, %bb.dc ], [ %i.fo, %bb.ef ], [ %i.fo, %bb.eg ], [ %i.fo, %bb.ew ], [ %i.fo, %bb.jm ], [ %i.fo, %bb.fg ], [ %i.fo, %bb.fm ], [ %i.fo, %bb.fj ], [ %i.fo, %bb.gh ], [ %i.fo, %bb.gd ], [ %i.fo, %bb.gq ], [ %i.fo, %bb.gs ], [ %i.fo, %bb.gw ], [ %i.fo, %bb.gy ], [ %i.fo, %bb.hc ], [ %i.fo, %bb.he ], [ %i.fo, %bb.hs ], [ %i.fo, %bb.ht ], [ %i.fo, %bb.ij ], [ %i.fo, %bb.ik ], [ %i.fo, %bb.kh ], [ %i.fo, %.thread906 ], [ %i.fo, %bb.es ], [ %i.fo, %bb.kd ], [ null, %bb.c ], [ %i.fo, %bb.hi ], [ %i.fo, %bb.hk ], [ %i.fo, %bb.ic ], [ %i.fo, %bb.ha ], [ %i.fo, %bb.gu ], [ %i.fo, %bb.go ], [ %i.fo, %bb.gm ], [ %i.fo, %bb.gk ], [ %i.fo, %bb.gb ], [ %i.fo, %bb.fv ], [ %i.fo, %bb.fc ], [ null, %bb.bg ], [ %i.fo, %bb.ec ], [ %i.fo, %bb.dx ], [ %i.fo, %bb.do ], [ %i.fo, %bb.dq ], [ %i.fo, %bb.dv ], [ %i.fo, %bb.ds ], [ %i.fo, %bb.dm ], [ null, %bb.dk ], [ null, %bb.di ], [ null, %bb.dh ], [ null, %bb.df ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.ch ], [ null, %bb.cd ], [ %i.dd, %bb.ca ], [ %i.dd, %bb.cb ], [ %i.dd, %bb.bz ], [ null, %bb.by ], [ null, %lookup_conf.exit869.thread ], [ null, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ %i.fo, %bb.jh ], [ %i.fo, %bb.jf ], [ %i.fo, %bb.jc ], [ %i.fo, %bb.kb ], [ %i.fo, %.thread894 ], [ %i.fo, %.lr.ph1196 ], [ %i.fo, %bb.hy ], [ %i.fo, %bb.ie ], [ %i.fo, %bb.is ], [ %i.fo, %bb.iz ], [ %i.fo, %.thread891 ], [ %i.fo, %bb.jd ], [ %i.fo, %bb.kf ], [ %i.fo, %bb.ke ], [ %i.fo, %bb.kg ], [ %i.fo, %.thread905 ], [ %i.fo, %bb.jz ], [ %i.fo, %.thread908 ], [ %i.fo, %bb.jy ], [ %i.fo, %bb.jw ], [ %i.fo, %bb.jl ], [ %i.fo, %bb.jj ], [ %i.fo, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %.3679.ph = phi ptr [ %.0676, %bb.ek ], [ %.0676, %bb.bm ], [ %.0676, %bb.bn ], [ %.0676, %bb.bq ], [ %.0676, %bb.cg ], [ %.0676, %bb.cn ], [ %.0676, %bb.cw ], [ %.0676, %bb.cz ], [ %.0676, %bb.dc ], [ %.0676, %bb.ef ], [ %.0676, %bb.eg ], [ %.0676, %bb.ew ], [ %.0676, %bb.jm ], [ %.0676, %bb.fg ], [ %.0676, %bb.fm ], [ %.0676, %bb.fj ], [ %.0676, %bb.gh ], [ %.0676, %bb.gd ], [ %.0676, %bb.gq ], [ %.0676, %bb.gs ], [ %.0676, %bb.gw ], [ %.0676, %bb.gy ], [ %.0676, %bb.hc ], [ %.0676, %bb.he ], [ %.0676, %bb.hs ], [ %.0676, %bb.ht ], [ %.0676, %bb.ij ], [ %.0676, %bb.ik ], [ %.0676, %bb.kh ], [ %.0676, %.thread906 ], [ %.0676, %bb.es ], [ %.0676, %bb.kd ], [ %.0676, %bb.c ], [ %.0676, %bb.hi ], [ %.0676, %bb.hk ], [ %.0676, %bb.ic ], [ %.0676, %bb.ha ], [ %.0676, %bb.gu ], [ %.0676, %bb.go ], [ %.0676, %bb.gm ], [ %.0676, %bb.gk ], [ %.0676, %bb.gb ], [ %.0676, %bb.fv ], [ %.0676, %bb.fc ], [ %.0676, %bb.bg ], [ %.0676, %bb.ec ], [ %.0676, %bb.dx ], [ %.0676, %bb.do ], [ %.0676, %bb.dq ], [ %.0676, %bb.dv ], [ %.0676, %bb.ds ], [ %.0676, %bb.dm ], [ %.0676, %bb.dk ], [ %.0676, %bb.di ], [ %.0676, %bb.dh ], [ %.0676, %bb.df ], [ %.0676, %bb.cl ], [ %.0676, %bb.ck ], [ %.0676, %bb.ch ], [ %.0676, %bb.cd ], [ %.0676, %bb.ca ], [ %.0676, %bb.cb ], [ %.0676, %bb.bz ], [ %.0676, %bb.by ], [ %.0676, %lookup_conf.exit869.thread ], [ %.0676, %lookup_conf.exit.thread ], [ %.0676, %.fold.split ], [ %.0676, %bb.jh ], [ %.0676, %bb.jf ], [ %.0676, %bb.jc ], [ %.0676, %bb.kb ], [ %.0676, %.thread894 ], [ %.0676, %.lr.ph1196 ], [ %.0676, %bb.hy ], [ %.0676, %bb.ie ], [ %.0676, %bb.is ], [ %.0676, %bb.iz ], [ %.0676, %.thread891 ], [ %.0676, %bb.jd ], [ %.0676, %bb.kf ], [ %.0676, %bb.ke ], [ %.0676, %bb.kg ], [ %.0676, %.thread905 ], [ %.0676, %bb.jz ], [ %.0676, %.thread908 ], [ %.0676, %bb.jy ], [ %.0676, %bb.jw ], [ %.0676, %bb.jl ], [ %.0676, %bb.jj ], [ %.0676, %bb.ji ], [ %.0676, %bb.ai ], [ %.0676, %.thread872 ], [ %.0676, %bb.y ], [ %.0676, %bb.z ], [ null, %bb.ag ], [ %.1677871, %.thread ]
  %.3675.ph = phi ptr [ %.0672, %bb.ek ], [ %.0672, %bb.bm ], [ %.0672, %bb.bn ], [ %.0672, %bb.bq ], [ %.0672, %bb.cg ], [ %.0672, %bb.cn ], [ %.0672, %bb.cw ], [ %.0672, %bb.cz ], [ %.0672, %bb.dc ], [ %.0672, %bb.ef ], [ %.0672, %bb.eg ], [ %.0672, %bb.ew ], [ %.0672, %bb.jm ], [ %.0672, %bb.fg ], [ %.0672, %bb.fm ], [ %.0672, %bb.fj ], [ %.0672, %bb.gh ], [ %.0672, %bb.gd ], [ %.0672, %bb.gq ], [ %.0672, %bb.gs ], [ %.0672, %bb.gw ], [ %.0672, %bb.gy ], [ %.0672, %bb.hc ], [ %.0672, %bb.he ], [ %.0672, %bb.hs ], [ %.0672, %bb.ht ], [ %.0672, %bb.ij ], [ %.0672, %bb.ik ], [ %.0672, %bb.kh ], [ %.0672, %.thread906 ], [ %.0672, %bb.es ], [ %.0672, %bb.kd ], [ %.0672, %bb.c ], [ %.0672, %bb.hi ], [ %.0672, %bb.hk ], [ %.0672, %bb.ic ], [ %.0672, %bb.ha ], [ %.0672, %bb.gu ], [ %.0672, %bb.go ], [ %.0672, %bb.gm ], [ %.0672, %bb.gk ], [ %.0672, %bb.gb ], [ %.0672, %bb.fv ], [ %.0672, %bb.fc ], [ %.0672, %bb.bg ], [ %.0672, %bb.ec ], [ %.0672, %bb.dx ], [ %.0672, %bb.do ], [ %.0672, %bb.dq ], [ %.0672, %bb.dv ], [ %.0672, %bb.ds ], [ %.0672, %bb.dm ], [ %.0672, %bb.dk ], [ %.0672, %bb.di ], [ %.0672, %bb.dh ], [ %.0672, %bb.df ], [ %.0672, %bb.cl ], [ %.0672, %bb.ck ], [ %.0672, %bb.ch ], [ %.0672, %bb.cd ], [ %.0672, %bb.ca ], [ %.0672, %bb.cb ], [ %.0672, %bb.bz ], [ %.0672, %bb.by ], [ %.0672, %lookup_conf.exit869.thread ], [ %.0672, %lookup_conf.exit.thread ], [ %.0672, %.fold.split ], [ %.0672, %bb.jh ], [ %.0672, %bb.jf ], [ %.0672, %bb.jc ], [ %.0672, %bb.kb ], [ %.0672, %.thread894 ], [ %.0672, %.lr.ph1196 ], [ %.0672, %bb.hy ], [ %.0672, %bb.ie ], [ %.0672, %bb.is ], [ %.0672, %bb.iz ], [ %.0672, %.thread891 ], [ %.0672, %bb.jd ], [ %.0672, %bb.kf ], [ %.0672, %bb.ke ], [ %.0672, %bb.kg ], [ %.0672, %.thread905 ], [ %.0672, %bb.jz ], [ %.0672, %.thread908 ], [ %.0672, %bb.jy ], [ %.0672, %bb.jw ], [ %.0672, %bb.jl ], [ %.0672, %bb.jj ], [ %.0672, %bb.ji ], [ null, %bb.ai ], [ %.1673874, %.thread872 ], [ %.0672, %bb.y ], [ %.0672, %bb.z ], [ %.0672, %bb.ag ], [ %.0672, %.thread ]
  %.1671.ph = phi ptr [ null, %bb.ek ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bq ], [ null, %bb.cg ], [ null, %bb.cn ], [ null, %bb.cw ], [ null, %bb.cz ], [ null, %bb.dc ], [ null, %bb.ef ], [ null, %bb.eg ], [ null, %bb.ew ], [ %.0670, %bb.jm ], [ null, %bb.fg ], [ null, %bb.fm ], [ null, %bb.fj ], [ null, %bb.gh ], [ null, %bb.gd ], [ %i.nb, %bb.gq ], [ %i.nb, %bb.gs ], [ %i.nb, %bb.gw ], [ %i.nb, %bb.gy ], [ %i.nb, %bb.hc ], [ %i.nb, %bb.he ], [ %i.nb, %bb.hs ], [ %i.nb, %bb.ht ], [ %i.nb, %bb.ij ], [ %i.nb, %bb.ik ], [ %.0670, %bb.kh ], [ %.0670, %.thread906 ], [ null, %bb.es ], [ %.0670, %bb.kd ], [ null, %bb.c ], [ %i.nb, %bb.hi ], [ %i.nb, %bb.hk ], [ %i.nb, %bb.ic ], [ %i.nb, %bb.ha ], [ %i.nb, %bb.gu ], [ %i.nb, %bb.go ], [ null, %bb.gm ], [ null, %bb.gk ], [ null, %bb.gb ], [ null, %bb.fv ], [ null, %bb.fc ], [ null, %bb.bg ], [ null, %bb.ec ], [ null, %bb.dx ], [ null, %bb.do ], [ null, %bb.dq ], [ null, %bb.dv ], [ null, %bb.ds ], [ null, %bb.dm ], [ null, %bb.dk ], [ null, %bb.di ], [ null, %bb.dh ], [ null, %bb.df ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.ch ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %lookup_conf.exit869.thread ], [ null, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ %.0670, %bb.jh ], [ %.0670, %bb.jf ], [ %.0670, %bb.jc ], [ %.0670, %bb.kb ], [ %.0670, %.thread894 ], [ %i.nb, %.lr.ph1196 ], [ %i.nb, %bb.hy ], [ %i.nb, %bb.ie ], [ %.0670, %bb.is ], [ %.0670, %bb.iz ], [ %.0670, %.thread891 ], [ %.0670, %bb.jd ], [ %.0670, %bb.kf ], [ %.0670, %bb.ke ], [ %.0670, %bb.kg ], [ %.0670, %.thread905 ], [ %.0670, %bb.jz ], [ %.0670, %.thread908 ], [ %.0670, %bb.jy ], [ %.0670, %bb.jw ], [ %.0670, %bb.jl ], [ %.0670, %bb.jj ], [ %.0670, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %.2669.ph = phi ptr [ null, %bb.ek ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bq ], [ null, %bb.cg ], [ null, %bb.cn ], [ null, %bb.cw ], [ null, %bb.cz ], [ null, %bb.dc ], [ null, %bb.ef ], [ null, %bb.eg ], [ null, %bb.ew ], [ %i.ve, %bb.jm ], [ null, %bb.fg ], [ null, %bb.fm ], [ null, %bb.fj ], [ null, %bb.gh ], [ null, %bb.gd ], [ null, %bb.gq ], [ null, %bb.gs ], [ null, %bb.gw ], [ null, %bb.gy ], [ null, %bb.hc ], [ null, %bb.he ], [ null, %bb.hs ], [ null, %bb.ht ], [ null, %bb.ij ], [ null, %bb.ik ], [ %.1668, %bb.kh ], [ %i.ve, %.thread906 ], [ null, %bb.es ], [ %.1668, %bb.kd ], [ null, %bb.c ], [ null, %bb.hi ], [ null, %bb.hk ], [ null, %bb.ic ], [ null, %bb.ha ], [ null, %bb.gu ], [ null, %bb.go ], [ null, %bb.gm ], [ null, %bb.gk ], [ null, %bb.gb ], [ null, %bb.fv ], [ null, %bb.fc ], [ null, %bb.bg ], [ null, %bb.ec ], [ null, %bb.dx ], [ null, %bb.do ], [ null, %bb.dq ], [ null, %bb.dv ], [ null, %bb.ds ], [ null, %bb.dm ], [ null, %bb.dk ], [ null, %bb.di ], [ null, %bb.dh ], [ null, %bb.df ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.ch ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %lookup_conf.exit869.thread ], [ null, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ %i.ve, %bb.jh ], [ %i.ve, %bb.jf ], [ null, %bb.jc ], [ %i.ve, %bb.kb ], [ %i.ve, %.thread894 ], [ null, %.lr.ph1196 ], [ null, %bb.hy ], [ null, %bb.ie ], [ null, %bb.is ], [ null, %bb.iz ], [ null, %.thread891 ], [ %i.ve, %bb.jd ], [ %.1668, %bb.kf ], [ %.1668, %bb.ke ], [ %.1668, %bb.kg ], [ %i.ve, %.thread905 ], [ %i.ve, %bb.jz ], [ %i.ve, %.thread908 ], [ %i.ve, %bb.jy ], [ %i.ve, %bb.jw ], [ %i.ve, %bb.jl ], [ %i.ve, %bb.jj ], [ %i.ve, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %.1608.ph = phi i32 [ %.0607, %bb.ek ], [ 0, %bb.bm ], [ 0, %bb.bn ], [ 0, %bb.bq ], [ 1, %bb.cg ], [ %.0607, %bb.cn ], [ %.0607, %bb.cw ], [ %.0607, %bb.cz ], [ %.0607, %bb.dc ], [ %.0607, %bb.ef ], [ %.0607, %bb.eg ], [ %.0607, %bb.ew ], [ %.0607, %bb.jm ], [ %.0607, %bb.fg ], [ %.0607, %bb.fm ], [ %.0607, %bb.fj ], [ %.0607, %bb.gh ], [ %.0607, %bb.gd ], [ %.0607, %bb.gq ], [ %.0607, %bb.gs ], [ %.0607, %bb.gw ], [ %.0607, %bb.gy ], [ %.0607, %bb.hc ], [ %.0607, %bb.he ], [ %.0607, %bb.hs ], [ %.0607, %bb.ht ], [ %.0607, %bb.ij ], [ %.0607, %bb.ik ], [ %.0607, %bb.kh ], [ %.0607, %.thread906 ], [ %.0607, %bb.es ], [ %.0607, %bb.kd ], [ 0, %bb.c ], [ %.0607, %bb.hi ], [ %.0607, %bb.hk ], [ %.0607, %bb.ic ], [ %.0607, %bb.ha ], [ %.0607, %bb.gu ], [ %.0607, %bb.go ], [ %.0607, %bb.gm ], [ %.0607, %bb.gk ], [ %.0607, %bb.gb ], [ %.0607, %bb.fv ], [ %.0607, %bb.fc ], [ 0, %bb.bg ], [ %.0607, %bb.ec ], [ %.0607, %bb.dx ], [ %.0607, %bb.do ], [ %.0607, %bb.dq ], [ %.0607, %bb.dv ], [ %.0607, %bb.ds ], [ %.0607, %bb.dm ], [ %.0607, %bb.dk ], [ %.0607, %bb.di ], [ %.0607, %bb.dh ], [ %.0607, %bb.df ], [ %.0607, %bb.cl ], [ %.0607, %bb.ck ], [ %.0607, %bb.ch ], [ 0, %bb.cd ], [ 0, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.bz ], [ 0, %bb.by ], [ 0, %lookup_conf.exit869.thread ], [ 0, %lookup_conf.exit.thread ], [ 0, %.fold.split ], [ %.0607, %bb.jh ], [ %.0607, %bb.jf ], [ %.0607, %bb.jc ], [ %.0607, %bb.kb ], [ %.0607, %.thread894 ], [ %.0607, %.lr.ph1196 ], [ %.0607, %bb.hy ], [ %.0607, %bb.ie ], [ %.0607, %bb.is ], [ %.0607, %bb.iz ], [ %.0607, %.thread891 ], [ %.0607, %bb.jd ], [ %.0607, %bb.kf ], [ %.0607, %bb.ke ], [ %.0607, %bb.kg ], [ %.0607, %.thread905 ], [ %.0607, %bb.jz ], [ %.0607, %.thread908 ], [ %.0607, %bb.jy ], [ %.0607, %bb.jw ], [ %.0607, %bb.jl ], [ %.0607, %bb.jj ], [ %.0607, %bb.ji ], [ 0, %.thread872 ], [ 0, %bb.ai ], [ 0, %.thread ], [ 0, %bb.ag ], [ 0, %bb.z ], [ 0, %bb.y ]
  %.1547.ph = phi ptr [ %.0546, %bb.ek ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bq ], [ null, %bb.cg ], [ %i.ei, %bb.cn ], [ %.0546, %bb.cw ], [ %.0546, %bb.cz ], [ %.0546, %bb.dc ], [ %.0546, %bb.ef ], [ %.0546, %bb.eg ], [ %.0546, %bb.ew ], [ %.0546, %bb.jm ], [ %.0546, %bb.fg ], [ %.0546, %bb.fm ], [ %.0546, %bb.fj ], [ %.0546, %bb.gh ], [ %.0546, %bb.gd ], [ %.0546, %bb.gq ], [ %.0546, %bb.gs ], [ %.0546, %bb.gw ], [ %.0546, %bb.gy ], [ %.0546, %bb.hc ], [ %.0546, %bb.he ], [ %.0546, %bb.hs ], [ %.0546, %bb.ht ], [ %.0546, %bb.ij ], [ %.0546, %bb.ik ], [ %.0546, %bb.kh ], [ %.0546, %.thread906 ], [ %.0546, %bb.es ], [ %.0546, %bb.kd ], [ null, %bb.c ], [ %.0546, %bb.hi ], [ %.0546, %bb.hk ], [ %.0546, %bb.ic ], [ %.0546, %bb.ha ], [ %.0546, %bb.gu ], [ %.0546, %bb.go ], [ %.0546, %bb.gm ], [ %.0546, %bb.gk ], [ %.0546, %bb.gb ], [ %.0546, %bb.fv ], [ %.0546, %bb.fc ], [ null, %bb.bg ], [ %.0546, %bb.ec ], [ %.0546, %bb.dx ], [ %.0546, %bb.do ], [ %.0546, %bb.dq ], [ %.0546, %bb.dv ], [ %.0546, %bb.ds ], [ %.0546, %bb.dm ], [ %.0546, %bb.dk ], [ %.0546, %bb.di ], [ %.0546, %bb.dh ], [ %.0546, %bb.df ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.ch ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.by ], [ null, %lookup_conf.exit869.thread ], [ null, %lookup_conf.exit.thread ], [ null, %.fold.split ], [ %.0546, %bb.jh ], [ %.0546, %bb.jf ], [ %.0546, %bb.jc ], [ %.0546, %bb.kb ], [ %.0546, %.thread894 ], [ %.0546, %.lr.ph1196 ], [ %.0546, %bb.hy ], [ %.0546, %bb.ie ], [ %.0546, %bb.is ], [ %.0546, %bb.iz ], [ %.0546, %.thread891 ], [ %.0546, %bb.jd ], [ %.0546, %bb.kf ], [ %.0546, %bb.ke ], [ %.0546, %bb.kg ], [ %.0546, %.thread905 ], [ %.0546, %bb.jz ], [ %.0546, %.thread908 ], [ %.0546, %bb.jy ], [ %.0546, %bb.jw ], [ %.0546, %bb.jl ], [ %.0546, %bb.jj ], [ %.0546, %bb.ji ], [ null, %.thread872 ], [ null, %bb.ai ], [ null, %.thread ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.y ]
  %i.yb = load ptr, ptr @bio_err, align 8, !tbaa !369
  call void @ERR_print_errors(ptr noundef %i.yb) #11
  br label %bb.kj

bb.kj:                                            ; preds = %bb.d, %bb.ho, %bb.hq, %bb.ki, %.thread915, %.thread884
  %.1547961 = phi ptr [ %.1547.ph, %.thread884 ], [ %.0546, %bb.ki ], [ null, %bb.d ], [ %.0546, %.thread915 ], [ %.0546, %bb.ho ], [ %.0546, %bb.hq ]
  %.8959 = phi i32 [ 1, %.thread884 ], [ 0, %bb.ki ], [ 0, %bb.d ], [ 0, %.thread915 ], [ 0, %bb.ho ], [ 0, %bb.hq ]
  %.1608957 = phi i32 [ %.1608.ph, %.thread884 ], [ %.0607, %bb.ki ], [ 0, %bb.d ], [ %.0607, %.thread915 ], [ %.0607, %bb.ho ], [ %.0607, %bb.hq ]
  %.2669955 = phi ptr [ %.2669.ph, %.thread884 ], [ %.1668, %bb.ki ], [ null, %bb.d ], [ %.1668, %.thread915 ], [ null, %bb.ho ], [ null, %bb.hq ]
  %.1671953 = phi ptr [ %.1671.ph, %.thread884 ], [ %.0670, %bb.ki ], [ null, %bb.d ], [ %.0670, %.thread915 ], [ %i.nb, %bb.ho ], [ %i.nb, %bb.hq ]
  %.3675951 = phi ptr [ %.3675.ph, %.thread884 ], [ %.0672, %bb.ki ], [ %.0672, %bb.d ], [ %.0672, %.thread915 ], [ %.0672, %bb.ho ], [ %.0672, %bb.hq ]
  %.3679949 = phi ptr [ %.3679.ph, %.thread884 ], [ %.0676, %bb.ki ], [ %.0676, %bb.d ], [ %.0676, %.thread915 ], [ %.0676, %bb.ho ], [ %.0676, %bb.hq ]
  %.0680947 = phi ptr [ %.0680.ph, %.thread884 ], [ %i.fo, %bb.ki ], [ null, %bb.d ], [ %i.fo, %.thread915 ], [ %i.fo, %bb.ho ], [ %i.fo, %bb.hq ]
  %.5686945 = phi ptr [ %.5686.ph, %.thread884 ], [ %.4685, %bb.ki ], [ null, %bb.d ], [ %.4685, %.thread915 ], [ null, %bb.ho ], [ null, %bb.hq ]
  %.0687943 = phi ptr [ %.0687.ph, %.thread884 ], [ %i.dw, %bb.ki ], [ null, %bb.d ], [ %i.dw, %.thread915 ], [ %i.dw, %bb.ho ], [ %i.dw, %bb.hq ]
  %.3691941 = phi ptr [ %.3691.ph, %.thread884 ], [ null, %bb.ki ], [ null, %bb.d ], [ null, %.thread915 ], [ null, %bb.ho ], [ null, %bb.hq ]
  %.0694939 = phi ptr [ %.0694.ph, %.thread884 ], [ %i.cd, %bb.ki ], [ null, %bb.d ], [ %i.cd, %.thread915 ], [ %i.cd, %bb.ho ], [ %i.cd, %bb.hq ]
  call void @BIO_free_all(ptr noundef %.5686945) #11
  call void @BIO_free_all(ptr noundef null) #11
  call void @BIO_free_all(ptr noundef null) #11
  call void @OSSL_STACK_OF_X509_free(ptr noundef %.1671953) #11
  %i.yc = load ptr, ptr %i.f, align 8, !tbaa !361
  call void @cleanse(ptr noundef %i.yc) #11
  %.not858 = icmp eq i32 %.1608957, 0
  br i1 %.not858, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.yd = load ptr, ptr %i.f, align 8, !tbaa !361
  call void @CRYPTO_free(ptr noundef %i.yd, ptr noundef nonnull @.str.202, i32 noundef 1350) #11
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %i.ye = load ptr, ptr %i.a, align 8, !tbaa !409
  call void @BN_free(ptr noundef %i.ye) #11
  call void @BN_free(ptr noundef %.3691941) #11
  call void @free_index(ptr noundef %.0680947) #11
  call void @OPENSSL_sk_free(ptr noundef %.3679949) #11
  call void @OPENSSL_sk_free(ptr noundef %.3675951) #11
  call void @EVP_PKEY_free(ptr noundef %.0687943) #11
  call void @X509_free(ptr noundef %.1547961) #11
  call void @X509_CRL_free(ptr noundef %.2669955) #11
  call void @NCONF_free(ptr noundef %.0694939) #11
  %i.yf = load ptr, ptr @extfile_conf, align 8, !tbaa !384
  call void @NCONF_free(ptr noundef %i.yf) #11
  call void @release_engine(ptr noundef %.0692) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.8959
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @opt_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @opt_next() local_unnamed_addr #3

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @opt_help(ptr noundef) local_unnamed_addr #3

declare ptr @opt_arg() local_unnamed_addr #3

declare i32 @opt_format(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @set_dateopt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @opt_rand(i32 noundef) local_unnamed_addr #3

declare i32 @opt_provider(i32 noundef) local_unnamed_addr #3

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @setup_engine_methods(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @opt_num_rest() local_unnamed_addr #3

declare ptr @opt_rest() local_unnamed_addr #3

declare ptr @app_load_config_verbose(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @app_load_modules(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lookup_conf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !guid !415 {
bb.a:
  %i.a = tail call ptr @NCONF_get_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #11 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.d = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.c, ptr noundef nonnull @.str.238, ptr noundef %1, ptr noundef %2) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @app_conf_try_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_clear_error() local_unnamed_addr #3

declare i32 @OBJ_create_objects(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @add_oid_section(ptr noundef) local_unnamed_addr #3

declare void @app_RAND_load_conf(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @app_RAND_load() local_unnamed_addr #3

declare i32 @ASN1_STRING_set_default_mask_asc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @parse_yesno(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @load_index(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @index_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @get_certificate_status(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 !guid !416 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !361
  %i.c = add i64 %i.b, 2
  %i.d = tail call ptr @app_malloc(i64 noundef %i.c, ptr noundef nonnull @.str.334) #11 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 8 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !361
  %i.f = and i64 %i.b, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 48, ptr %i.d, align 1, !tbaa !371
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  %i.h = getelementptr i8, ptr %i.d, i64 %i.b
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !371
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  store i8 0, ptr %i.j, align 1, !tbaa !371
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @make_uppercase(ptr noundef nonnull %i.d) #11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !376
  %i.m = call ptr @TXT_DB_get_by_index(ptr noundef %i.l, i32 noundef 3, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @bio_err, align 8, !tbaa !369
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !361
  %i.q = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.o, ptr noundef nonnull @.str.335, ptr noundef %i.p) #11 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !361
  %i.s = load i8, ptr %i.r, align 1, !tbaa !371   ; 2 uses
  switch i8 %i.s, label %bb.k [
    i8 86, label %bb.g
    i8 82, label %bb.h
    i8 69, label %bb.i
    i8 83, label %bb.j
end_hunk_1
