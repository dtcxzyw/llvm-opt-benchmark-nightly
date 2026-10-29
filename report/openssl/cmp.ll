Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cmp?download=true
inline.NumInlined: 70
inline.NumDeleted: 33
begin_hunk_0_@cmp_main:bb.a

bb.ge:                                            ; preds = %.lr.ph.i223
  %i.le = call fastcc ptr @opt_str()
  store ptr %i.le, ptr @opt_srv_ref, align 8, !tbaa !15
  br label %bb.hi

bb.gf:                                            ; preds = %.lr.ph.i223
  %i.lf = call fastcc ptr @opt_str()
  store ptr %i.lf, ptr @opt_srv_secret, align 8, !tbaa !15
  br label %bb.hi

bb.gg:                                            ; preds = %.lr.ph.i223
  %i.lg = call fastcc ptr @opt_str()
  store ptr %i.lg, ptr @opt_srv_cert, align 8, !tbaa !15
  br label %bb.hi

bb.gh:                                            ; preds = %.lr.ph.i223
  %i.lh = call fastcc ptr @opt_str()
  store ptr %i.lh, ptr @opt_srv_key, align 8, !tbaa !15
  br label %bb.hi

bb.gi:                                            ; preds = %.lr.ph.i223
  %i.li = call fastcc ptr @opt_str()
  store ptr %i.li, ptr @opt_srv_keypass, align 8, !tbaa !15
  br label %bb.hi

bb.gj:                                            ; preds = %.lr.ph.i223
  %i.lj = call fastcc ptr @opt_str()
  store ptr %i.lj, ptr @opt_srv_trusted, align 8, !tbaa !15
  br label %bb.hi

bb.gk:                                            ; preds = %.lr.ph.i223
  %i.lk = call fastcc ptr @opt_str()
  store ptr %i.lk, ptr @opt_srv_untrusted, align 8, !tbaa !15
  br label %bb.hi

bb.gl:                                            ; preds = %.lr.ph.i223
  %i.ll = call fastcc ptr @opt_str()
  store ptr %i.ll, ptr @opt_ref_cert, align 8, !tbaa !15
  br label %bb.hi

bb.gm:                                            ; preds = %.lr.ph.i223
  %i.lm = call fastcc ptr @opt_str()
  store ptr %i.lm, ptr @opt_rsp_cert, align 8, !tbaa !15
  br label %bb.hi

bb.gn:                                            ; preds = %.lr.ph.i223
  %i.ln = call fastcc ptr @opt_str()
  store ptr %i.ln, ptr @opt_rsp_key, align 8, !tbaa !15
  br label %bb.hi

bb.go:                                            ; preds = %.lr.ph.i223
  %i.lo = call fastcc ptr @opt_str()
  store ptr %i.lo, ptr @opt_rsp_keypass, align 8, !tbaa !15
  br label %bb.hi

bb.gp:                                            ; preds = %.lr.ph.i223
  %i.lp = call fastcc ptr @opt_str()
  store ptr %i.lp, ptr @opt_rsp_crl, align 8, !tbaa !15
  br label %bb.hi

bb.gq:                                            ; preds = %.lr.ph.i223
  %i.lq = call fastcc ptr @opt_str()
  store ptr %i.lq, ptr @opt_rsp_extracerts, align 8, !tbaa !15
  br label %bb.hi

bb.gr:                                            ; preds = %.lr.ph.i223
  %i.lr = call fastcc ptr @opt_str()
  store ptr %i.lr, ptr @opt_rsp_capubs, align 8, !tbaa !15
  br label %bb.hi

bb.gs:                                            ; preds = %.lr.ph.i223
  %i.ls = call fastcc ptr @opt_str()
  store ptr %i.ls, ptr @opt_rsp_newwithnew, align 8, !tbaa !15
  br label %bb.hi

bb.gt:                                            ; preds = %.lr.ph.i223
  %i.lt = call fastcc ptr @opt_str()
  store ptr %i.lt, ptr @opt_rsp_newwithold, align 8, !tbaa !15
  br label %bb.hi

bb.gu:                                            ; preds = %.lr.ph.i223
  %i.lu = call fastcc ptr @opt_str()
  store ptr %i.lu, ptr @opt_rsp_oldwithnew, align 8, !tbaa !15
  br label %bb.hi

bb.gv:                                            ; preds = %.lr.ph.i223
  %i.lv = call i32 @opt_int_arg() #12
  store i32 %i.lv, ptr @opt_poll_count, align 4, !tbaa !17
  br label %bb.hi

bb.gw:                                            ; preds = %.lr.ph.i223
  %i.lw = call i32 @opt_int_arg() #12
  store i32 %i.lw, ptr @opt_check_after, align 4, !tbaa !17
  br label %bb.hi

bb.gx:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_grant_implicitconf, align 4, !tbaa !17
  br label %bb.hi

bb.gy:                                            ; preds = %.lr.ph.i223
  %i.lx = call i32 @opt_int_arg() #12
  store i32 %i.lx, ptr @opt_pkistatus, align 4, !tbaa !17
  br label %bb.hi

bb.gz:                                            ; preds = %.lr.ph.i223
  %i.ly = call i32 @opt_int_arg() #12
  store i32 %i.ly, ptr @opt_failure, align 4, !tbaa !17
  br label %bb.hi

bb.ha:                                            ; preds = %.lr.ph.i223
  %i.lz = call i32 @opt_int_arg() #12
  store i32 %i.lz, ptr @opt_failurebits, align 4, !tbaa !17
  br label %bb.hi

bb.hb:                                            ; preds = %.lr.ph.i223
  %i.ma = call fastcc ptr @opt_str()
  store ptr %i.ma, ptr @opt_statusstring, align 8, !tbaa !15
  br label %bb.hi

bb.hc:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_error, align 4, !tbaa !17
  br label %bb.hi

bb.hd:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_unprotected, align 4, !tbaa !17
  br label %bb.hi

bb.he:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_unprot_err, align 4, !tbaa !17
  br label %bb.hi

bb.hf:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_unprotected, align 4, !tbaa !17
  br label %bb.hi

bb.hg:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_unprot_err, align 4, !tbaa !17
  br label %bb.hi

bb.hh:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_raverified, align 4, !tbaa !17
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %set_verbosity.exit.i231, %.lr.ph.i223
  %i.mb = call i32 @opt_next() #12                ; 2 uses
  %.not.i224 = icmp eq i32 %i.mb, 0
  br i1 %.not.i224, label %._crit_edge.i225, label %.lr.ph.i223, !llvm.loop !50

._crit_edge.i225:                                 ; preds = %bb.hi, %bb.ch
  %i.mc = call i32 @opt_check_rest_arg(ptr noundef null) #12
  %.not12.i = icmp eq i32 %i.mc, 0
  br i1 %.not12.i, label %set_verbosity.exit.thread.i, label %get_opts.exit

get_opts.exit:                                    ; preds = %._crit_edge.i225
  %i.md = call i32 @app_RAND_load() #12
  %.not162 = icmp eq i32 %i.md, 0
  br i1 %.not162, label %handle_opts_upfront.exit.thread, label %bb.hj

bb.hj:                                            ; preds = %get_opts.exit
  %i.me = load i32, ptr @opt_batch, align 4, !tbaa !17
  %.not163 = icmp eq i32 %i.me, 0
  br i1 %.not163, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.mf = call ptr @UI_null() #12
  %i.mg = call i32 @set_base_ui_method(ptr noundef %i.mf) #12 ; 0 uses
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.mh = load ptr, ptr @cmp_ctx, align 8, !tbaa !31
  %i.mi = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.mj = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.mh, i32 noundef 0, i32 noundef %i.mi) #12 ; 0 uses
  %i.mk = load ptr, ptr @cmp_ctx, align 8, !tbaa !31
  %i.ml = call i32 @OSSL_CMP_CTX_set_log_cb(ptr noundef %i.mk, ptr noundef nonnull @print_to_bio_out) #12
  %.not164 = icmp eq i32 %i.ml, 0
  br i1 %.not164, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.mm = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.mn = icmp slt i32 %i.mm, 3
  br i1 %i.mn, label %handle_opts_upfront.exit.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.mo = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.mp = load ptr, ptr @prog, align 8, !tbaa !15
  %i.mq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mo, ptr noundef nonnull @.str.360, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3741, ptr noundef nonnull @.str.352, ptr noundef %i.mp, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ho:                                            ; preds = %bb.hl
  %i.mr = load ptr, ptr @opt_tls_cert, align 8, !tbaa !15
  %i.ms = load ptr, ptr @opt_tls_key, align 8
  %i.mt = load ptr, ptr @opt_tls_keypass, align 8
  %i.mu = load ptr, ptr @opt_tls_extra, align 8
  %i.mv = insertelement <4 x ptr> poison, ptr %i.mr, i64 0
  %i.mw = insertelement <4 x ptr> %i.mv, ptr %i.ms, i64 1
  %i.mx = insertelement <4 x ptr> %i.mw, ptr %i.mt, i64 2
  %i.my = insertelement <4 x ptr> %i.mx, ptr %i.mu, i64 3
  %.fr = freeze <4 x ptr> %i.my
  %i.mz = load ptr, ptr @opt_tls_trusted, align 8
  %i.na = icmp eq ptr %i.mz, null
  %i.nb = load ptr, ptr @opt_tls_host, align 8
  %i.nc = icmp eq ptr %i.nb, null
  %i.nd = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.ne = bitcast <4 x i1> %i.nd to i4
  %i.nf = icmp eq i4 %i.ne, 0
  %op.rdx = select i1 %i.nf, i1 %i.na, i1 false
  %op.rdx430 = select i1 %op.rdx, i1 %i.nc, i1 false
  %i.ng = load i32, ptr @opt_tls_used, align 4, !tbaa !17 ; 2 uses
  %i.nh = load i32, ptr @opt_verbosity, align 4
  %i.ni = icmp slt i32 %i.nh, 4                   ; 2 uses
  br i1 %op.rdx430, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.nj = icmp eq i32 %i.ng, 0
  %or.cond43 = select i1 %i.nj, i1 true, i1 %i.ni
  br i1 %or.cond43, label %bb.ht, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.nk = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.nl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nk, ptr noundef nonnull @.str.361, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3750, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.ht

bb.hr:                                            ; preds = %bb.ho
  %i.nm = icmp ne i32 %i.ng, 0
  %or.cond45 = select i1 %i.nm, i1 true, i1 %i.ni
  br i1 %or.cond45, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.nn = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.no = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nn, ptr noundef nonnull @.str.363, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3752, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hr, %bb.hs, %bb.hp, %bb.hq
  %i.np = load ptr, ptr @opt_port, align 8, !tbaa !15
  %.not165 = icmp eq ptr %i.np, null
  br i1 %.not165, label %bb.ig, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.nq = load i32, ptr @opt_tls_used, align 4, !tbaa !17
  %.not166 = icmp eq i32 %i.nq, 0
  br i1 %.not166, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.nr = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.ns = icmp slt i32 %i.nr, 3
  br i1 %i.ns, label %handle_opts_upfront.exit.thread, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.nt = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.nu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nt, ptr noundef nonnull @.str.364, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3756, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.hx:                                            ; preds = %bb.hu
  %i.nv = load ptr, ptr @opt_server, align 8, !tbaa !15
  %i.nw = icmp ne ptr %i.nv, null
  %i.nx = load i32, ptr @opt_use_mock_srv, align 4
  %i.ny = icmp ne i32 %i.nx, 0
  %or.cond11 = select i1 %i.nw, i1 true, i1 %i.ny
  br i1 %or.cond11, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.nz = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.oa = icmp slt i32 %i.nz, 3
  br i1 %i.oa, label %handle_opts_upfront.exit.thread, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ob = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.oc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ob, ptr noundef nonnull @.str.365, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3760, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ia:                                            ; preds = %bb.hx
  %i.od = load ptr, ptr @opt_reqin, align 8, !tbaa !15
  %i.oe = icmp ne ptr %i.od, null
  %i.of = load ptr, ptr @opt_reqout, align 8
  %i.og = icmp ne ptr %i.of, null
  %or.cond13 = select i1 %i.oe, i1 true, i1 %i.og
  br i1 %or.cond13, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.oh = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.oi = icmp slt i32 %i.oh, 3
  br i1 %i.oi, label %handle_opts_upfront.exit.thread, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.oj = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.ok = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oj, ptr noundef nonnull @.str.366, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3764, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.id:                                            ; preds = %bb.ia
  %i.ol = load ptr, ptr @opt_rspin, align 8, !tbaa !15
  %i.om = icmp ne ptr %i.ol, null
  %i.on = load ptr, ptr @opt_rspout, align 8
  %i.oo = icmp ne ptr %i.on, null
  %or.cond15 = select i1 %i.om, i1 true, i1 %i.oo
  br i1 %or.cond15, label %bb.ie, label %.thread380

bb.ie:                                            ; preds = %bb.id
  %i.op = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.oq = icmp slt i32 %i.op, 3
  br i1 %i.oq, label %handle_opts_upfront.exit.thread, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.or = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.os = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.or, ptr noundef nonnull @.str.367, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3768, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ig:                                            ; preds = %bb.ht
  %.pre = load ptr, ptr @opt_server, align 8, !tbaa !15
  %.pre322 = load i32, ptr @opt_use_mock_srv, align 4
  %i.ot = icmp ne ptr %.pre, null                 ; 2 uses
  %i.ou = icmp ne i32 %.pre322, 0                 ; 2 uses
  %or.cond17 = select i1 %i.ot, i1 %i.ou, i1 false
  br i1 %or.cond17, label %bb.ih, label %.thread380

bb.ih:                                            ; preds = %bb.ig
  %i.ov = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.ow = icmp slt i32 %i.ov, 3
  br i1 %i.ow, label %handle_opts_upfront.exit.thread, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ox = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.oy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ox, ptr noundef nonnull @.str.368, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3774, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

.thread380:                                       ; preds = %bb.id, %bb.ig
  %i.oz = phi i1 [ %i.ot, %bb.ig ], [ false, %bb.id ]
  %i.pa = phi i1 [ %i.ou, %bb.ig ], [ false, %bb.id ]
  %.not = xor i1 %i.oz, true
  %or.cond19 = select i1 %.not, i1 true, i1 %i.pa
  %i.pb = load i32, ptr @opt_tls_used, align 4
  %i.pc = icmp ne i32 %i.pb, 0
  %or.cond21 = select i1 %or.cond19, i1 %i.pc, i1 false
  br i1 %or.cond21, label %bb.ij, label %bb.im

bb.ij:                                            ; preds = %.thread380
  %i.pd = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.pe = icmp slt i32 %i.pd, 4
  br i1 %i.pe, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.pf = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.pg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pf, ptr noundef nonnull @.str.369, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3778, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.il

bb.il:                                            ; preds = %bb.ij, %bb.ik
  store i32 0, ptr @opt_tls_used, align 4, !tbaa !17
  br label %bb.im

bb.im:                                            ; preds = %.thread380, %bb.il
  %i.ph = load i32, ptr @opt_ignore_keyusage, align 4, !tbaa !17
  %.not167 = icmp eq i32 %i.ph, 0
  br i1 %.not167, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.pi = load ptr, ptr @cmp_ctx, align 8, !tbaa !31
  %i.pj = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.pi, i32 noundef 35, i32 noundef 1) #12 ; 0 uses
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.pk = load i32, ptr @opt_no_cache_extracerts, align 4, !tbaa !17
  %.not168 = icmp eq i32 %i.pk, 0
  br i1 %.not168, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.pl = load ptr, ptr @cmp_ctx, align 8, !tbaa !31
  %i.pm = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.pl, i32 noundef 37, i32 noundef 1) #12 ; 0 uses
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.pn = load ptr, ptr @opt_reqout_only, align 8, !tbaa !15
  %i.po = icmp eq ptr %i.pn, null
  %.pre325 = load ptr, ptr @opt_port, align 8     ; 2 uses
  br i1 %i.po, label %bb.ir, label %.thread246

bb.ir:                                            ; preds = %bb.iq
  %i.pp = load i32, ptr @opt_use_mock_srv, align 4, !tbaa !17
  %i.pq = icmp ne i32 %i.pp, 0
  %i.pr = icmp ne ptr %.pre325, null
  %or.cond23 = select i1 %i.pq, i1 true, i1 %i.pr
  br i1 %or.cond23, label %bb.is, label %.thread382

bb.is:                                            ; preds = %bb.ir
  %i.ps = call fastcc ptr @setup_srv_ctx()        ; 3 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %handle_opts_upfront.exit.thread, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.pu = load ptr, ptr @cmp_ctx, align 8, !tbaa !31
  %i.pv = call i32 @OSSL_CMP_CTX_set_transfer_cb_arg(ptr noundef %i.pu, ptr noundef nonnull %i.ps) #12 ; 0 uses
  %i.pw = call ptr @OSSL_CMP_SRV_CTX_get0_cmp_ctx(ptr noundef nonnull %i.ps) #12 ; 3 uses
  %i.px = call i32 @OSSL_CMP_CTX_set_log_cb(ptr noundef %i.pw, ptr noundef nonnull @print_to_bio_err) #12
  %.not169 = icmp eq i32 %i.px, 0
  %i.py = load i32, ptr @opt_verbosity, align 4, !tbaa !17 ; 2 uses
  br i1 %.not169, label %bb.iu, label %bb.iw

bb.iu:                                            ; preds = %bb.it
  %i.pz = icmp slt i32 %i.py, 3
  br i1 %i.pz, label %handle_opts_upfront.exit.thread, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.qa = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.qb = load ptr, ptr @prog, align 8, !tbaa !15
  %i.qc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qa, ptr noundef nonnull @.str.370, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3803, ptr noundef nonnull @.str.352, ptr noundef %i.qb, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.iw:                                            ; preds = %bb.it
end_hunk_0
begin_hunk_1_@setup_protection_ctx:bb.a

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !40
  %i.bl = load ptr, ptr @opt_keypass, align 8, !tbaa !15
  %i.bm = load ptr, ptr @vpm, align 8, !tbaa !22
  %i.bn = call i32 @load_cert_certs(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef %i.bl, ptr noundef nonnull @.str.523, ptr noundef %i.bm) #12
  %.not89 = icmp eq i32 %i.bn, 0
  br i1 %.not89, label %.thread110, label %bb.x

.thread110:                                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %setup_certs.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bp = call i32 @OSSL_CMP_CTX_set1_cert(ptr noundef %0, ptr noundef %i.bo) #12
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @X509_free(ptr noundef %i.bq) #12
  %.not90 = icmp eq i32 %i.bp, 0
  br i1 %.not90, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.br = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.bs = icmp slt i32 %i.br, 3
  br i1 %i.bs, label %setup_certs.exit.thread.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.bu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bt, ptr noundef nonnull @.str.350, ptr noundef nonnull @__func__.setup_protection_ctx, ptr noundef nonnull @.str.351, i32 noundef 1666, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %setup_certs.exit.thread.critedge

bb.aa:                                            ; preds = %bb.x
  %i.bv = load ptr, ptr @opt_own_trusted, align 8, !tbaa !15 ; 2 uses
  %.not91 = icmp eq ptr %i.bv, null
  br i1 %.not91, label %.thread106, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = call fastcc ptr @load_trusted(ptr noundef %i.bv, i32 noundef 0, ptr noundef nonnull @.str.524) ; 2 uses
  %.not93 = icmp eq ptr %i.bw, null
  br i1 %.not93, label %setup_certs.exit.thread.critedge, label %.thread106

.thread106:                                       ; preds = %bb.aa, %bb.ab
  %.054109 = phi ptr [ %i.bw, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.by = call i32 @OSSL_CMP_CTX_build_cert_chain(ptr noundef %0, ptr noundef %.054109, ptr noundef %i.bx) #12
  %.not95.not = icmp eq i32 %i.by, 0
  call void @X509_STORE_free(ptr noundef %.054109) #12
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @OSSL_STACK_OF_X509_free(ptr noundef %i.bz) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not95.not, label %setup_certs.exit.thread, label %bb.ae

bb.ac:                                            ; preds = %bb.v
  %i.ca = load ptr, ptr @opt_own_trusted, align 8, !tbaa !15
  %i.cb = icmp eq ptr %i.ca, null
  %i.cc = load i32, ptr @opt_verbosity, align 4
  %i.cd = icmp slt i32 %i.cc, 4
  %or.cond19 = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond19, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.cf = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ce, ptr noundef nonnull @.str.525, ptr noundef nonnull @__func__.setup_protection_ctx, ptr noundef nonnull @.str.351, i32 noundef 1680, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.thread106, %bb.ac, %bb.ad
  %i.cg = load ptr, ptr @opt_extracerts, align 8, !tbaa !15 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %setup_certs.exit.thread114, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = load ptr, ptr @opt_otherpass, align 8, !tbaa !15
  %i.cj = load ptr, ptr @vpm, align 8, !tbaa !22
  %i.ck = call ptr @load_certs_multifile(ptr noundef nonnull %i.cg, ptr noundef %i.ci, ptr noundef nonnull @.str.526, ptr noundef %i.cj) #12 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %setup_certs.exit.thread, label %setup_certs.exit

setup_certs.exit:                                 ; preds = %bb.af
  %i.cm = call i32 @OSSL_CMP_CTX_set1_extraCertsOut(ptr noundef %0, ptr noundef nonnull %i.ck) #12, !callees !37, !inline_history !2
  call void @OSSL_STACK_OF_X509_free(ptr noundef nonnull %i.ck) #12
  %.not96 = icmp eq i32 %i.cm, 0
  br i1 %.not96, label %setup_certs.exit.thread, label %setup_certs.exit.thread114

setup_certs.exit.thread114:                       ; preds = %bb.ae, %setup_certs.exit
  %i.cn = load ptr, ptr @opt_otherpass, align 8, !tbaa !15
  call void @cleanse(ptr noundef %i.cn) #12
  %i.co = load i32, ptr @opt_unprotected_requests, align 4, !tbaa !17
  %.not97 = icmp eq i32 %i.co, 0
  br i1 %.not97, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %setup_certs.exit.thread114
  %i.cp = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 30, i32 noundef 1) #12 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %setup_certs.exit.thread114
  %i.cq = load ptr, ptr @opt_digest, align 8, !tbaa !15 ; 2 uses
  %.not98 = icmp eq ptr %i.cq, null
  br i1 %.not98, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cr = call i32 @OBJ_ln2nid(ptr noundef nonnull %i.cq) #12 ; 3 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ct = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.cu = icmp slt i32 %i.ct, 3
  br i1 %i.cu, label %setup_certs.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.cw = load ptr, ptr @opt_digest, align 8, !tbaa !15
  %i.cx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cv, ptr noundef nonnull @.str.527, ptr noundef nonnull @__func__.setup_protection_ctx, ptr noundef nonnull @.str.351, i32 noundef 1695, ptr noundef nonnull @.str.352, ptr noundef %i.cw, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %setup_certs.exit.thread

bb.al:                                            ; preds = %bb.ai
  %i.cy = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 34, i32 noundef %i.cr) #12
  %.not99 = icmp eq i32 %i.cy, 0
  br i1 %.not99, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 32, i32 noundef %i.cr) #12
  %.not100 = icmp eq i32 %i.cz, 0
  br i1 %.not100, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.da = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.db = icmp slt i32 %i.da, 3
  br i1 %i.db, label %setup_certs.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dc = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.dd = load ptr, ptr @opt_digest, align 8, !tbaa !15
  %i.de = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dc, ptr noundef nonnull @.str.528, ptr noundef nonnull @__func__.setup_protection_ctx, ptr noundef nonnull @.str.351, i32 noundef 1700, ptr noundef nonnull @.str.352, ptr noundef %i.dd, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %setup_certs.exit.thread

bb.ap:                                            ; preds = %bb.am, %bb.ah
  %i.df = load ptr, ptr @opt_mac, align 8, !tbaa !15 ; 2 uses
  %.not101 = icmp eq ptr %i.df, null
  br i1 %.not101, label %setup_certs.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dg = call i32 @OBJ_ln2nid(ptr noundef nonnull %i.df) #12 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.di = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.dj = icmp slt i32 %i.di, 3
  br i1 %i.dj, label %setup_certs.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dk = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.dl = load ptr, ptr @opt_mac, align 8, !tbaa !15
  %i.dm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dk, ptr noundef nonnull @.str.529, ptr noundef nonnull @__func__.setup_protection_ctx, ptr noundef nonnull @.str.351, i32 noundef 1709, ptr noundef nonnull @.str.352, ptr noundef %i.dl, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %setup_certs.exit.thread

bb.at:                                            ; preds = %bb.aq
  %i.dn = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 33, i32 noundef %i.dg) #12 ; 0 uses
  br label %setup_certs.exit.thread

setup_certs.exit.thread.critedge:                 ; preds = %bb.ab, %bb.y, %bb.z
  call void @X509_STORE_free(ptr noundef null) #12
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @OSSL_STACK_OF_X509_free(ptr noundef %i.do) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %setup_certs.exit.thread

setup_certs.exit.thread:                          ; preds = %setup_certs.exit.thread.critedge, %bb.ar, %bb.as, %bb.an, %bb.aj, %bb.ao, %bb.ak, %bb.af, %bb.ap, %bb.at, %.thread110, %bb.s, %bb.l, %setup_certs.exit, %.thread106, %bb.o, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b
  %.9 = phi i32 [ 0, %setup_certs.exit ], [ 0, %bb.c ], [ 0, %bb.f ], [ 1, %bb.ap ], [ 0, %bb.an ], [ 0, %bb.af ], [ 0, %bb.o ], [ 0, %.thread106 ], [ 0, %bb.s ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %.thread110 ], [ 1, %bb.at ], [ 0, %bb.ak ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %setup_certs.exit.thread.critedge ]
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @setup_request_ctx(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %1 = alloca %struct.v3_ext_ctx, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = load ptr, ptr @opt_subject, align 8, !tbaa !15
  %i.c = load ptr, ptr @opt_csr, align 8
  %i.d = load ptr, ptr @opt_oldcert, align 8
  %i.e = load ptr, ptr @opt_cert, align 8
  %i.f = insertelement <4 x ptr> poison, ptr %i.b, i64 0
  %i.g = insertelement <4 x ptr> %i.f, ptr %i.c, i64 1
  %i.h = insertelement <4 x ptr> %i.g, ptr %i.d, i64 2
  %i.i = insertelement <4 x ptr> %i.h, ptr %i.e, i64 3
  %.fr = freeze <4 x ptr> %i.i
  %i.j = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.k = load i32, ptr @opt_cmd, align 4
  %i.l = and i32 %i.k, -2
  %i.m = icmp eq i32 %i.l, 4
  %i.n = load i32, ptr @opt_verbosity, align 4
  %i.o = icmp slt i32 %i.n, 4
  %i.p = bitcast <4 x i1> %i.j to i4
  %i.q = icmp ne i4 %i.p, 0
  %op.rdx427 = select i1 %i.q, i1 true, i1 %i.m
  %op.rdx428 = select i1 %op.rdx427, i1 true, i1 %i.o
  br i1 %op.rdx428, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.r, ptr noundef nonnull @.str.530, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1769, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr @opt_issuer, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %set_name.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @parse_name(ptr noundef nonnull %i.t, i32 noundef 4096, i32 noundef 1, ptr noundef nonnull @.str.72) #12 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @OSSL_CMP_CTX_set1_issuer(ptr noundef %0, ptr noundef nonnull %i.u) #12, !callees !38, !inline_history !3
  %.not13.i = icmp eq i32 %i.w, 0
  tail call void @X509_NAME_free(ptr noundef nonnull %i.u) #12
  br i1 %.not13.i, label %bb.f, label %set_name.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.y = icmp slt i32 %i.x, 3
  br i1 %i.y, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.aa = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.z, ptr noundef nonnull @.str.350, ptr noundef nonnull @__func__.set_name, ptr noundef nonnull @.str.351, i32 noundef 1038, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

set_name.exit:                                    ; preds = %bb.e, %bb.c
  %i.ab = load i32, ptr @opt_cmd, align 4, !tbaa !17
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %bb.h, label %bb.ak

bb.h:                                             ; preds = %set_name.exit
  %i.ad = load ptr, ptr @opt_reqin, align 8, !tbaa !15
  %i.ae = icmp ne ptr %i.ad, null
  %i.af = load ptr, ptr @opt_newkey, align 8      ; 2 uses
  %i.ag = icmp ne ptr %i.af, null
  %or.cond19.not260 = select i1 %i.ae, i1 true, i1 %i.ag
  %i.ah = load i32, ptr @opt_centralkeygen, align 4
  %i.ai = icmp ne i32 %i.ah, 0                    ; 3 uses
  %or.cond21 = select i1 %or.cond19.not260, i1 true, i1 %i.ai
  %or.cond21.not = xor i1 %or.cond21, true
  %i.aj = load ptr, ptr @opt_key, align 8
  %i.ak = icmp eq ptr %i.aj, null
  %or.cond23 = select i1 %or.cond21.not, i1 %i.ak, i1 false
  %i.al = load ptr, ptr @opt_csr, align 8
  %i.am = icmp eq ptr %i.al, null
  %or.cond25 = select i1 %or.cond23, i1 %i.am, i1 false
  %i.an = load ptr, ptr @opt_oldcert, align 8
  %i.ao = icmp eq ptr %i.an, null
  %or.cond27 = select i1 %or.cond25, i1 %i.ao, i1 false
  br i1 %or.cond27, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.aq = icmp slt i32 %i.ap, 3
  br i1 %i.aq, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.as = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ar, ptr noundef nonnull @.str.531, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1777, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.at = load i32, ptr @opt_popo, align 4, !tbaa !17 ; 3 uses
  %i.au = icmp ne i32 %i.at, -1
  %or.cond29 = select i1 %i.au, i1 true, i1 %i.ai
  br i1 %or.cond29, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.aw = icmp slt i32 %i.av, 6
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.ay = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ax, ptr noundef nonnull @.str.532, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1781, ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre367.pre = load i32, ptr @opt_popo, align 4, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l
  %.pre367 = phi i32 [ %.pre367.pre, %bb.m ], [ -1, %bb.l ]
  store i32 1, ptr @opt_centralkeygen, align 4, !tbaa !17
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  br i1 %i.ai, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.thread, %bb.n
  %i.az = phi i32 [ %.pre367, %.thread ], [ %i.at, %bb.n ] ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.bc = icmp slt i32 %i.bb, 3
  br i1 %i.bc, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.be = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bd, ptr noundef nonnull @.str.533, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1786, ptr noundef nonnull @.str.352, i32 noundef %i.az, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr @opt_newkeyout, align 8, !tbaa !15
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.s, label %.thread410

bb.s:                                             ; preds = %bb.r
  %i.bh = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.bi = icmp slt i32 %i.bh, 3
  br i1 %i.bi, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.bk = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bj, ptr noundef nonnull @.str.534, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1790, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

.thread410:                                       ; preds = %bb.r
  store i32 -1, ptr @opt_popo, align 4, !tbaa !17
  br label %bb.ac

bb.u:                                             ; preds = %bb.n
  %i.bl = icmp eq ptr %i.af, null
  %i.bm = add i32 %i.at, -1
  %i.bn = icmp ult i32 %i.bm, -2
  %or.cond33 = and i1 %i.bl, %i.bn
  br i1 %or.cond33, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr @opt_csr, align 8, !tbaa !15
  %.not262 = icmp eq ptr %i.bo, null
  br i1 %.not262, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.bq = icmp slt i32 %i.bp, 3
  br i1 %i.bq, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.bs = load ptr, ptr @opt_key, align 8, !tbaa !15
  %i.bt = icmp eq ptr %i.bs, null
  %i.bu = select i1 %i.bt, ptr @.str.353, ptr @.str.536
  %i.bv = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.br, ptr noundef nonnull @.str.535, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1800, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.bu, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre369 = load i32, ptr @opt_verbosity, align 4
  %i.bw = icmp slt i32 %.pre369, 6
  %i.bx = load ptr, ptr @opt_reqin, align 8, !tbaa !15
  %i.by = icmp eq ptr %i.bx, null
  %or.cond85 = select i1 %i.by, i1 true, i1 %i.bw
  br i1 %or.cond85, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.ca = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bz, ptr noundef nonnull @.str.537, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1802, ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.z:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr @opt_key, align 8, !tbaa !15
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cd = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.ce = icmp slt i32 %i.cd, 3
  br i1 %i.ce, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.cg = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cf, ptr noundef nonnull @.str.538, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1806, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.ac:                                            ; preds = %.thread410, %bb.z, %bb.u
  %i.ch = load ptr, ptr @opt_certout, align 8, !tbaa !15
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = load ptr, ptr @opt_reqout_only, align 8
  %i.ck = icmp eq ptr %i.cj, null
  %or.cond35 = select i1 %i.ci, i1 %i.ck, i1 false
  br i1 %or.cond35, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.cm = icmp slt i32 %i.cl, 3
  br i1 %i.cm, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.co = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cn, ptr noundef nonnull @.str.539, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1811, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %bb.ac
  %i.cp = load ptr, ptr @opt_subject, align 8, !tbaa !15 ; 2 uses
  %.not.i319 = icmp eq ptr %i.cp, null
  br i1 %.not.i319, label %set_name.exit322, label %bb.ag
end_hunk_1
begin_hunk_2_@setup_request_ctx:bb.a
  %i.gx = icmp slt i32 %i.gw, 3
  br i1 %i.gx, label %.critedge, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gy = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.gz = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gy, ptr noundef nonnull @.str.555, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1862, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.bv:                                            ; preds = %bb.bs
  %i.ha = load ptr, ptr @opt_subject, align 8, !tbaa !15 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  %i.hc = load i32, ptr @opt_verbosity, align 4
  %i.hd = icmp slt i32 %i.hc, 4
  %or.cond113 = select i1 %i.hb, i1 true, i1 %i.hd
  br i1 %or.cond113, label %..thread338_crit_edge, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.he = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.hf = select i1 %i.gt, ptr %i.gs, ptr %i.gu
  %i.hg = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.he, ptr noundef nonnull @.str.556, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1867, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.ha, ptr noundef %i.hf, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pr337.pre = load i32, ptr @opt_cmd, align 4, !tbaa !17
  br label %.thread336

.thread336:                                       ; preds = %bb.bw, %set_name.exit322
  %i.hh = phi i32 [ %.pr334, %set_name.exit322 ], [ %.pr337.pre, %bb.bw ]
  %i.hi = icmp eq i32 %i.hh, 4
  br i1 %i.hi, label %bb.bx, label %..thread338_crit_edge

..thread338_crit_edge:                            ; preds = %bb.bv, %.thread336
  %.pre372 = load i32, ptr @opt_verbosity, align 4
  br label %.thread338

bb.bx:                                            ; preds = %.thread336
  %i.hj = load ptr, ptr @opt_issuer, align 8, !tbaa !15
  %i.hk = icmp eq ptr %i.hj, null                 ; 2 uses
  %i.hl = load ptr, ptr @opt_serial, align 8
  %i.hm = icmp eq ptr %i.hl, null                 ; 2 uses
  %or.cond43 = select i1 %i.hk, i1 %i.hm, i1 false
  br i1 %or.cond43, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.hn = load ptr, ptr @opt_oldcert, align 8, !tbaa !15
  %i.ho = icmp eq ptr %i.hn, null                 ; 2 uses
  %i.hp = load ptr, ptr @opt_csr, align 8
  %i.hq = icmp eq ptr %i.hp, null                 ; 2 uses
  %or.cond45 = select i1 %i.ho, i1 %i.hq, i1 false
  br i1 %or.cond45, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.hr = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.hs = icmp slt i32 %i.hr, 3
  br i1 %i.hs, label %.critedge, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ht = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.hu = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ht, ptr noundef nonnull @.str.557, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1872, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.cb:                                            ; preds = %bb.by
  %or.cond47.not270 = select i1 %i.ho, i1 true, i1 %i.hq
  %i.hv = load i32, ptr @opt_verbosity, align 4
  %i.hw = icmp slt i32 %i.hv, 4
  %or.cond115 = select i1 %or.cond47.not270, i1 true, i1 %i.hw
  br i1 %or.cond115, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hx = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.hy = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hx, ptr noundef nonnull @.str.558, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1876, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.ck

bb.cd:                                            ; preds = %bb.bx
  %or.cond49 = select i1 %i.hk, i1 true, i1 %i.hm
  br i1 %or.cond49, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.hz = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.ia = icmp slt i32 %i.hz, 3
  br i1 %i.ia, label %.critedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ib = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.ic = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ib, ptr noundef nonnull @.str.559, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1880, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.cg:                                            ; preds = %bb.cd
  %i.id = load ptr, ptr @opt_oldcert, align 8, !tbaa !15
  %i.ie = icmp eq ptr %i.id, null
  %i.if = load i32, ptr @opt_verbosity, align 4   ; 2 uses
  %i.ig = icmp slt i32 %i.if, 4
  %or.cond117 = select i1 %i.ie, i1 true, i1 %i.ig
  br i1 %or.cond117, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ih = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.ii = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ih, ptr noundef nonnull @.str.560, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1884, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre374 = load i32, ptr @opt_verbosity, align 4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ij = phi i32 [ %.pre374, %bb.ch ], [ %i.if, %bb.cg ]
  %i.ik = load ptr, ptr @opt_csr, align 8, !tbaa !15
  %i.il = icmp eq ptr %i.ik, null
  %i.im = icmp slt i32 %i.ij, 4
  %or.cond119 = select i1 %i.il, i1 true, i1 %i.im
  br i1 %or.cond119, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.in = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.io = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.in, ptr noundef nonnull @.str.561, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1886, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj, %bb.cb, %bb.cc
  %i.ip = load ptr, ptr @opt_serial, align 8, !tbaa !15 ; 2 uses
  %.not271 = icmp eq ptr %i.ip, null
  br i1 %.not271, label %bb.cr, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iq = tail call ptr @s2i_ASN1_INTEGER(ptr noundef null, ptr noundef nonnull %i.ip) #12 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.is = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.it = icmp slt i32 %i.is, 3
  br i1 %i.it, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iu = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.iv = load ptr, ptr @opt_serial, align 8, !tbaa !15
  %i.iw = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.iu, ptr noundef nonnull @.str.562, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1892, ptr noundef nonnull @.str.352, ptr noundef %i.iv, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.co:                                            ; preds = %bb.cl
  %i.ix = tail call i32 @OSSL_CMP_CTX_set1_serialNumber(ptr noundef %0, ptr noundef nonnull %i.iq) #12
  %.not272 = icmp eq i32 %i.ix, 0
  tail call void @ASN1_INTEGER_free(ptr noundef nonnull %i.iq) #12
  br i1 %.not272, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.iy = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.iz = icmp slt i32 %i.iy, 3
  br i1 %i.iz, label %.critedge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ja = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.jb = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ja, ptr noundef nonnull @.str.350, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1897, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.cr:                                            ; preds = %bb.co, %bb.ck
  %i.jc = load i32, ptr @opt_revreason, align 4, !tbaa !17 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.je = tail call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 27, i32 noundef %i.jc) #12 ; 0 uses
  br label %bb.cu

.thread338:                                       ; preds = %..thread338_crit_edge, %bb.bj
  %i.jf = phi i32 [ %.pre372, %..thread338_crit_edge ], [ %.pre373, %bb.bj ]
  %i.jg = load ptr, ptr @opt_serial, align 8, !tbaa !15
  %i.jh = icmp eq ptr %i.jg, null
  %i.ji = icmp slt i32 %i.jf, 4
  %or.cond121 = select i1 %i.jh, i1 true, i1 %i.ji
  br i1 %or.cond121, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.thread338
  %i.jj = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.jk = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jj, ptr noundef nonnull @.str.563, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1907, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %.thread338, %bb.ct, %bb.cr, %bb.cs
  %i.jl = load i32, ptr @opt_cmd, align 4, !tbaa !17 ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 3
  %i.jn = load ptr, ptr @opt_csr, align 8
  %i.jo = icmp eq ptr %i.jn, null
  %or.cond51 = select i1 %i.jm, i1 %i.jo, i1 false
  br i1 %or.cond51, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.jp = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.jq = icmp slt i32 %i.jp, 3
  br i1 %i.jq, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jr = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.js = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jr, ptr noundef nonnull @.str.564, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1910, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.cx:                                            ; preds = %bb.cu
  %i.jt = load ptr, ptr @opt_recipient, align 8, !tbaa !15
  %i.ju = load ptr, ptr @opt_srvcert, align 8
  %i.jv = load ptr, ptr @opt_issuer, align 8
  %i.jw = load ptr, ptr @opt_oldcert, align 8
  %i.jx = insertelement <4 x ptr> poison, ptr %i.jt, i64 0
  %i.jy = insertelement <4 x ptr> %i.jx, ptr %i.ju, i64 1
  %i.jz = insertelement <4 x ptr> %i.jy, ptr %i.jv, i64 2
  %i.ka = insertelement <4 x ptr> %i.jz, ptr %i.jw, i64 3
  %.fr431 = freeze <4 x ptr> %i.ka
  %i.kb = icmp ne <4 x ptr> %.fr431, splat (ptr null)
  %i.kc = load ptr, ptr @opt_cert, align 8
  %i.kd = icmp ne ptr %i.kc, null
  %i.ke = load i32, ptr @opt_verbosity, align 4
  %i.kf = icmp slt i32 %i.ke, 4
  %i.kg = bitcast <4 x i1> %i.kb to i4
  %i.kh = icmp ne i4 %i.kg, 0
  %op.rdx = select i1 %i.kh, i1 true, i1 %i.kd
  %op.rdx426 = select i1 %op.rdx, i1 true, i1 %i.kf
  br i1 %op.rdx426, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ki = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.kj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ki, ptr noundef nonnull @.str.565, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1916, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre375 = load i32, ptr @opt_cmd, align 4, !tbaa !17
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.kk = phi i32 [ %.pre375, %bb.cy ], [ %i.jl, %bb.cx ]
  %i.kl = add i32 %i.kk, -3
  %or.cond63 = icmp ult i32 %i.kl, 3
  br i1 %or.cond63, label %bb.da, label %bb.dk

bb.da:                                            ; preds = %bb.cz
  %i.km = load ptr, ptr @opt_newkeypass, align 8, !tbaa !15
  %i.kn = icmp eq ptr %i.km, null
  %i.ko = load i32, ptr @opt_verbosity, align 4   ; 2 uses
  %i.kp = icmp slt i32 %i.ko, 4
  %or.cond125 = select i1 %i.kn, i1 true, i1 %i.kp
  br i1 %or.cond125, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kq = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.kr = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.kq, ptr noundef nonnull @.str.567, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1922, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.566, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre376 = load i32, ptr @opt_verbosity, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ks = phi i32 [ %.pre376, %bb.db ], [ %i.ko, %bb.da ] ; 2 uses
  %i.kt = load ptr, ptr @opt_newkey, align 8, !tbaa !15
  %i.ku = icmp eq ptr %i.kt, null
  %i.kv = icmp slt i32 %i.ks, 4
  %or.cond127 = select i1 %i.ku, i1 true, i1 %i.kv
  br i1 %or.cond127, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kw = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.kx = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.kw, ptr noundef nonnull @.str.568, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1924, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.566, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre377 = load i32, ptr @opt_verbosity, align 4
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ky = phi i32 [ %.pre377, %bb.dd ], [ %i.ks, %bb.dc ] ; 2 uses
  %i.kz = load i32, ptr @opt_days, align 4, !tbaa !17
  %i.la = icmp eq i32 %i.kz, 0
  %i.lb = icmp slt i32 %i.ky, 4
  %or.cond129 = select i1 %i.la, i1 true, i1 %i.lb
  br i1 %or.cond129, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lc = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.ld = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lc, ptr noundef nonnull @.str.569, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1926, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.566, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre378 = load i32, ptr @opt_verbosity, align 4
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.le = phi i32 [ %.pre378, %bb.df ], [ %i.ky, %bb.de ] ; 2 uses
  %i.lf = load i32, ptr @opt_popo, align 4, !tbaa !17
  %i.lg = icmp eq i32 %i.lf, -2
  %i.lh = icmp slt i32 %i.le, 4
  %or.cond131 = select i1 %i.lg, i1 true, i1 %i.lh
  br i1 %or.cond131, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.li = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.lj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.li, ptr noundef nonnull @.str.548, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1928, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.566, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  %.pre379 = load i32, ptr @opt_verbosity, align 4
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.lk = phi i32 [ %.pre379, %bb.dh ], [ %i.le, %bb.dg ]
  %i.ll = load i32, ptr @opt_cmd, align 4, !tbaa !17
  %i.lm = icmp eq i32 %i.ll, 3
  %i.ln = load ptr, ptr @opt_out_trusted, align 8
  %i.lo = icmp eq ptr %i.ln, null
  %or.cond65.not294 = select i1 %i.lm, i1 true, i1 %i.lo
  %i.lp = icmp slt i32 %i.lk, 4
  %or.cond133 = select i1 %or.cond65.not294, i1 true, i1 %i.lp
  br i1 %or.cond133, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lq = load ptr, ptr @bio_out, align 8, !tbaa !19
  %i.lr = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lq, ptr noundef nonnull @.str.570, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1930, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %bb.dp

bb.dk:                                            ; preds = %bb.cz
  %i.ls = load ptr, ptr @opt_newkey, align 8, !tbaa !15 ; 3 uses
  %.not282 = icmp eq ptr %i.ls, null
  br i1 %.not282, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lt = load i32, ptr @opt_keyform, align 4, !tbaa !17 ; 2 uses
  %i.lu = load ptr, ptr @opt_newkeypass, align 8, !tbaa !15 ; 2 uses
  %i.lv = load ptr, ptr @bio_err, align 8, !tbaa !19
  store ptr null, ptr @bio_err, align 8, !tbaa !19
  %i.lw = tail call ptr @get_passwd(ptr noundef %i.lu, ptr noundef nonnull @.str.571) #12 ; 2 uses
  %i.lx = tail call ptr @load_key(ptr noundef nonnull %i.ls, i32 noundef %i.lt, i32 noundef 0, ptr noundef %i.lw, ptr noundef nonnull @.str.571) #12 ; 2 uses
  tail call void @clear_free(ptr noundef %i.lw) #12
  store ptr %i.lv, ptr @bio_err, align 8, !tbaa !19
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.dm, label %.thread339

bb.dm:                                            ; preds = %bb.dl
  tail call void @ERR_clear_error() #12
  %i.lz = load ptr, ptr @opt_csr, align 8, !tbaa !15
  %i.ma = icmp eq ptr %i.lz, null
  %i.mb = select i1 %i.ma, ptr @.str.572, ptr @.str.573
  %i.mc = tail call fastcc ptr @load_pubkey_pwd(ptr noundef %i.ls, i32 noundef %i.lt, ptr noundef %i.lu, ptr noundef nonnull %i.mb) ; 2 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %.critedge316, label %.thread339

.thread339:                                       ; preds = %bb.dl, %bb.dm
  %.0344 = phi i32 [ 0, %bb.dm ], [ 1, %bb.dl ]
  %.0215342 = phi ptr [ %i.mc, %bb.dm ], [ %i.lx, %bb.dl ] ; 2 uses
  %i.me = tail call i32 @OSSL_CMP_CTX_set0_newPkey(ptr noundef %0, i32 noundef %.0344, ptr noundef nonnull %.0215342) #12
  %.not291 = icmp eq i32 %i.me, 0
  br i1 %.not291, label %.critedge316, label %bb.dp

.critedge316:                                     ; preds = %.thread339, %bb.dm
  %.0215343 = phi ptr [ %.0215342, %.thread339 ], [ null, %bb.dm ]
  tail call void @EVP_PKEY_free(ptr noundef %.0215343) #12
  br label %.critedge

bb.dn:                                            ; preds = %bb.dk
  %i.mf = load ptr, ptr @opt_reqin, align 8, !tbaa !15
  %i.mg = icmp eq ptr %i.mf, null
  %i.mh = load ptr, ptr @opt_key, align 8
  %i.mi = icmp ne ptr %i.mh, null
  %or.cond67.not289 = select i1 %i.mg, i1 true, i1 %i.mi
  %i.mj = load ptr, ptr @opt_csr, align 8
  %i.mk = icmp ne ptr %i.mj, null
  %or.cond69.not286 = select i1 %or.cond67.not289, i1 true, i1 %i.mk
  %i.ml = load ptr, ptr @opt_oldcert, align 8
  %i.mm = icmp ne ptr %i.ml, null
  %or.cond71.not284 = select i1 %or.cond69.not286, i1 true, i1 %i.mm
  %i.mn = load i32, ptr @opt_centralkeygen, align 4
  %i.mo = icmp ne i32 %i.mn, 0
  %or.cond73 = select i1 %or.cond71.not284, i1 true, i1 %i.mo
  br i1 %or.cond73, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mp = tail call fastcc i32 @set_fallback_pubkey(ptr noundef %0)
  %.not290 = icmp eq i32 %i.mp, 0
  br i1 %.not290, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %.thread339, %bb.di, %bb.dj, %bb.do, %bb.dn
  %i.mq = load i32, ptr @opt_days, align 4, !tbaa !17 ; 2 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.ms = tail call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 20, i32 noundef %i.mq) #12
  %.not295 = icmp eq i32 %i.ms, 0
  br i1 %.not295, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.mt = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.mu = icmp slt i32 %i.mt, 3
  br i1 %i.mu, label %.critedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.mv = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.mw = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mv, ptr noundef nonnull @.str.574, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1965, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.dt:                                            ; preds = %bb.dq, %bb.dp
  %i.mx = load ptr, ptr @opt_policies, align 8, !tbaa !15
  %i.my = icmp ne ptr %i.mx, null
  %i.mz = load ptr, ptr @opt_policy_oids, align 8
  %i.na = icmp ne ptr %i.mz, null
  %or.cond75 = select i1 %i.my, i1 %i.na, i1 false
  br i1 %or.cond75, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.nb = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.nc = icmp slt i32 %i.nb, 3
  br i1 %i.nc, label %.critedge, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nd = load ptr, ptr @bio_err, align 8, !tbaa !19
  %i.ne = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nd, ptr noundef nonnull @.str.575, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 1970, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #12 ; 0 uses
  br label %.critedge

bb.dw:                                            ; preds = %bb.dt
  %i.nf = load ptr, ptr @opt_csr, align 8, !tbaa !15 ; 2 uses
  %.not296 = icmp eq ptr %i.nf, null
  br i1 %.not296, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ng = load i32, ptr @opt_cmd, align 4, !tbaa !17
  %i.nh = icmp eq i32 %i.ng, 5
  br i1 %i.nh, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.ni = load i32, ptr @opt_verbosity, align 4, !tbaa !17
  %i.nj = icmp slt i32 %i.ni, 4
  br i1 %i.nj, label %bb.ec, label %bb.dz

end_hunk_2
