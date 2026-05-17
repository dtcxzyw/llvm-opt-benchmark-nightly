inline.NumInlined: 70
inline.NumDeleted: 33
begin_hunk_0_@cmp_main:bb.a
bb.gh:                                            ; preds = %.lr.ph.i223
  %i.li = call fastcc ptr @opt_str()
  store ptr %i.li, ptr @opt_srv_key, align 8, !tbaa !9
  br label %bb.hi

bb.gi:                                            ; preds = %.lr.ph.i223
  %i.lj = call fastcc ptr @opt_str()
  store ptr %i.lj, ptr @opt_srv_keypass, align 8, !tbaa !9
  br label %bb.hi

bb.gj:                                            ; preds = %.lr.ph.i223
  %i.lk = call fastcc ptr @opt_str()
  store ptr %i.lk, ptr @opt_srv_trusted, align 8, !tbaa !9
  br label %bb.hi

bb.gk:                                            ; preds = %.lr.ph.i223
  %i.ll = call fastcc ptr @opt_str()
  store ptr %i.ll, ptr @opt_srv_untrusted, align 8, !tbaa !9
  br label %bb.hi

bb.gl:                                            ; preds = %.lr.ph.i223
  %i.lm = call fastcc ptr @opt_str()
  store ptr %i.lm, ptr @opt_ref_cert, align 8, !tbaa !9
  br label %bb.hi

bb.gm:                                            ; preds = %.lr.ph.i223
  %i.ln = call fastcc ptr @opt_str()
  store ptr %i.ln, ptr @opt_rsp_cert, align 8, !tbaa !9
  br label %bb.hi

bb.gn:                                            ; preds = %.lr.ph.i223
  %i.lo = call fastcc ptr @opt_str()
  store ptr %i.lo, ptr @opt_rsp_key, align 8, !tbaa !9
  br label %bb.hi

bb.go:                                            ; preds = %.lr.ph.i223
  %i.lp = call fastcc ptr @opt_str()
  store ptr %i.lp, ptr @opt_rsp_keypass, align 8, !tbaa !9
  br label %bb.hi

bb.gp:                                            ; preds = %.lr.ph.i223
  %i.lq = call fastcc ptr @opt_str()
  store ptr %i.lq, ptr @opt_rsp_crl, align 8, !tbaa !9
  br label %bb.hi

bb.gq:                                            ; preds = %.lr.ph.i223
  %i.lr = call fastcc ptr @opt_str()
  store ptr %i.lr, ptr @opt_rsp_extracerts, align 8, !tbaa !9
  br label %bb.hi

bb.gr:                                            ; preds = %.lr.ph.i223
  %i.ls = call fastcc ptr @opt_str()
  store ptr %i.ls, ptr @opt_rsp_capubs, align 8, !tbaa !9
  br label %bb.hi

bb.gs:                                            ; preds = %.lr.ph.i223
  %i.lt = call fastcc ptr @opt_str()
  store ptr %i.lt, ptr @opt_rsp_newwithnew, align 8, !tbaa !9
  br label %bb.hi

bb.gt:                                            ; preds = %.lr.ph.i223
  %i.lu = call fastcc ptr @opt_str()
  store ptr %i.lu, ptr @opt_rsp_newwithold, align 8, !tbaa !9
  br label %bb.hi

bb.gu:                                            ; preds = %.lr.ph.i223
  %i.lv = call fastcc ptr @opt_str()
  store ptr %i.lv, ptr @opt_rsp_oldwithnew, align 8, !tbaa !9
  br label %bb.hi

bb.gv:                                            ; preds = %.lr.ph.i223
  %i.lw = call i32 @opt_int_arg() #11
  store i32 %i.lw, ptr @opt_poll_count, align 4, !tbaa !5
  br label %bb.hi

bb.gw:                                            ; preds = %.lr.ph.i223
  %i.lx = call i32 @opt_int_arg() #11
  store i32 %i.lx, ptr @opt_check_after, align 4, !tbaa !5
  br label %bb.hi

bb.gx:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_grant_implicitconf, align 4, !tbaa !5
  br label %bb.hi

bb.gy:                                            ; preds = %.lr.ph.i223
  %i.ly = call i32 @opt_int_arg() #11
  store i32 %i.ly, ptr @opt_pkistatus, align 4, !tbaa !5
  br label %bb.hi

bb.gz:                                            ; preds = %.lr.ph.i223
  %i.lz = call i32 @opt_int_arg() #11
  store i32 %i.lz, ptr @opt_failure, align 4, !tbaa !5
  br label %bb.hi

bb.ha:                                            ; preds = %.lr.ph.i223
  %i.ma = call i32 @opt_int_arg() #11
  store i32 %i.ma, ptr @opt_failurebits, align 4, !tbaa !5
  br label %bb.hi

bb.hb:                                            ; preds = %.lr.ph.i223
  %i.mb = call fastcc ptr @opt_str()
  store ptr %i.mb, ptr @opt_statusstring, align 8, !tbaa !9
  br label %bb.hi

bb.hc:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_error, align 4, !tbaa !5
  br label %bb.hi

bb.hd:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_unprotected, align 4, !tbaa !5
  br label %bb.hi

bb.he:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_send_unprot_err, align 4, !tbaa !5
  br label %bb.hi

bb.hf:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_unprotected, align 4, !tbaa !5
  br label %bb.hi

bb.hg:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_unprot_err, align 4, !tbaa !5
  br label %bb.hi

bb.hh:                                            ; preds = %.lr.ph.i223
  store i32 1, ptr @opt_accept_raverified, align 4, !tbaa !5
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %set_verbosity.exit.i231, %.lr.ph.i223
  %i.mc = call i32 @opt_next() #11                ; 2 uses
  %.not.i224 = icmp eq i32 %i.mc, 0
  br i1 %.not.i224, label %._crit_edge.i225, label %.lr.ph.i223, !llvm.loop !40

._crit_edge.i225:                                 ; preds = %bb.hi, %bb.ch
  %i.md = call i32 @opt_check_rest_arg(ptr noundef null) #11
  %.not12.i = icmp eq i32 %i.md, 0
  br i1 %.not12.i, label %set_verbosity.exit.thread.i, label %get_opts.exit

get_opts.exit:                                    ; preds = %._crit_edge.i225
  %i.me = call i32 @app_RAND_load() #11
  %.not168 = icmp eq i32 %i.me, 0
  br i1 %.not168, label %handle_opts_upfront.exit.thread, label %bb.hj

bb.hj:                                            ; preds = %get_opts.exit
  %i.mf = load i32, ptr @opt_batch, align 4, !tbaa !5
  %.not169 = icmp eq i32 %i.mf, 0
  br i1 %.not169, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.mg = call ptr @UI_null() #11
  %i.mh = call i32 @set_base_ui_method(ptr noundef %i.mg) #11 ; 0 uses
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.mi = load ptr, ptr @opt_engine, align 8, !tbaa !9 ; 2 uses
  %.not170 = icmp eq ptr %i.mi, null
  br i1 %.not170, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.mj = call ptr @setup_engine_methods(ptr noundef nonnull %i.mi, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.ml = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.mm = icmp slt i32 %i.ml, 3
  br i1 %i.mm, label %handle_opts_upfront.exit.thread, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.mn = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.mo = load ptr, ptr @opt_engine, align 8, !tbaa !9
  %i.mp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mn, ptr noundef nonnull @.str.360, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3739, ptr noundef nonnull @.str.352, ptr noundef %i.mo, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.hp:                                            ; preds = %bb.hm, %bb.hl
  %.0126 = phi ptr [ %i.mj, %bb.hm ], [ null, %bb.hl ] ; 37 uses
  %i.mq = load ptr, ptr @cmp_ctx, align 8, !tbaa !38
  %i.mr = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.ms = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.mq, i32 noundef 0, i32 noundef %i.mr) #11 ; 0 uses
  %i.mt = load ptr, ptr @cmp_ctx, align 8, !tbaa !38
  %i.mu = call i32 @OSSL_CMP_CTX_set_log_cb(ptr noundef %i.mt, ptr noundef nonnull @print_to_bio_out) #11
  %.not171 = icmp eq i32 %i.mu, 0
  br i1 %.not171, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  %i.mv = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.mw = icmp slt i32 %i.mv, 3
  br i1 %i.mw, label %handle_opts_upfront.exit.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.mx = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.my = load ptr, ptr @prog, align 8, !tbaa !9
  %i.mz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mx, ptr noundef nonnull @.str.361, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3746, ptr noundef nonnull @.str.352, ptr noundef %i.my, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.hs:                                            ; preds = %bb.hp
  %i.na = load ptr, ptr @opt_tls_cert, align 8, !tbaa !9
  %i.nb = load ptr, ptr @opt_tls_key, align 8
  %i.nc = load ptr, ptr @opt_tls_keypass, align 8
  %i.nd = load ptr, ptr @opt_tls_extra, align 8
  %2 = insertelement <4 x ptr> poison, ptr %i.na, i64 0
  %3 = insertelement <4 x ptr> %2, ptr %i.nb, i64 1
  %4 = insertelement <4 x ptr> %3, ptr %i.nc, i64 2
  %5 = insertelement <4 x ptr> %4, ptr %i.nd, i64 3
  %.fr = freeze <4 x ptr> %5
  %6 = load ptr, ptr @opt_tls_trusted, align 8
  %.fr427 = freeze ptr %6
  %7 = icmp eq ptr %.fr427, null
  %8 = load ptr, ptr @opt_tls_host, align 8
  %9 = icmp eq ptr %8, null
  %10 = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %11 = bitcast <4 x i1> %10 to i4
  %i.ne = icmp eq i4 %11, 0
  %op.rdx = and i1 %i.ne, %7
  %op.rdx425 = select i1 %op.rdx, i1 %9, i1 false
  %i.nf = load i32, ptr @opt_tls_used, align 4, !tbaa !5 ; 2 uses
  %i.ng = load i32, ptr @opt_verbosity, align 4
  %i.nh = icmp slt i32 %i.ng, 4                   ; 2 uses
  br i1 %op.rdx425, label %bb.ht, label %bb.hv

bb.ht:                                            ; preds = %bb.hs
  %i.ni = icmp eq i32 %i.nf, 0
  %or.cond39 = select i1 %i.ni, i1 true, i1 %i.nh
  br i1 %or.cond39, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.nj = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.nk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nj, ptr noundef nonnull @.str.362, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3755, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.hx

bb.hv:                                            ; preds = %bb.hs
  %i.nl = icmp ne i32 %i.nf, 0
  %or.cond41 = select i1 %i.nl, i1 true, i1 %i.nh
  br i1 %or.cond41, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.nm = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.nn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nm, ptr noundef nonnull @.str.364, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3757, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hv, %bb.hw, %bb.ht, %bb.hu
  %i.no = load ptr, ptr @opt_port, align 8, !tbaa !9
  %.not172 = icmp eq ptr %i.no, null
  br i1 %.not172, label %bb.ik, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.np = load i32, ptr @opt_tls_used, align 4, !tbaa !5
  %.not173 = icmp eq i32 %i.np, 0
  br i1 %.not173, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.nq = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.nr = icmp slt i32 %i.nq, 3
  br i1 %i.nr, label %handle_opts_upfront.exit.thread, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ns = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.nt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ns, ptr noundef nonnull @.str.365, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3761, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ib:                                            ; preds = %bb.hy
  %i.nu = load ptr, ptr @opt_server, align 8, !tbaa !9
  %i.nv = icmp ne ptr %i.nu, null
  %i.nw = load i32, ptr @opt_use_mock_srv, align 4
  %i.nx = icmp ne i32 %i.nw, 0
  %or.cond11 = select i1 %i.nv, i1 true, i1 %i.nx
  br i1 %or.cond11, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.ny = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.nz = icmp slt i32 %i.ny, 3
  br i1 %i.nz, label %handle_opts_upfront.exit.thread, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.oa = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ob = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oa, ptr noundef nonnull @.str.366, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3765, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ie:                                            ; preds = %bb.ib
  %i.oc = load ptr, ptr @opt_reqin, align 8, !tbaa !9
  %i.od = icmp ne ptr %i.oc, null
  %i.oe = load ptr, ptr @opt_reqout, align 8
  %i.of = icmp ne ptr %i.oe, null
  %or.cond13 = select i1 %i.od, i1 true, i1 %i.of
  br i1 %or.cond13, label %bb.if, label %bb.ih

bb.if:                                            ; preds = %bb.ie
  %i.og = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.oh = icmp slt i32 %i.og, 3
  br i1 %i.oh, label %handle_opts_upfront.exit.thread, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.oi = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.oj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oi, ptr noundef nonnull @.str.367, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3769, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ih:                                            ; preds = %bb.ie
  %i.ok = load ptr, ptr @opt_rspin, align 8, !tbaa !9
  %i.ol = icmp ne ptr %i.ok, null
  %i.om = load ptr, ptr @opt_rspout, align 8
  %i.on = icmp ne ptr %i.om, null
  %or.cond15 = select i1 %i.ol, i1 true, i1 %i.on
  br i1 %or.cond15, label %bb.ii, label %.thread375

bb.ii:                                            ; preds = %bb.ih
  %i.oo = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.op = icmp slt i32 %i.oo, 3
  br i1 %i.op, label %handle_opts_upfront.exit.thread, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.oq = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.or = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oq, ptr noundef nonnull @.str.368, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3773, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ik:                                            ; preds = %bb.hx
  %.pre = load ptr, ptr @opt_server, align 8, !tbaa !9 ; 2 uses
  %.pre322 = load i32, ptr @opt_use_mock_srv, align 4
  %i.os = icmp ne i32 %.pre322, 0                 ; 2 uses
  %i.ot = icmp ne ptr %.pre, null
  %or.cond17 = select i1 %i.ot, i1 %i.os, i1 false
  br i1 %or.cond17, label %bb.il, label %.thread375

bb.il:                                            ; preds = %bb.ik
  %i.ou = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.ov = icmp slt i32 %i.ou, 3
  br i1 %i.ov, label %handle_opts_upfront.exit.thread, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.ow = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ox = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ow, ptr noundef nonnull @.str.369, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3779, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

.thread375:                                       ; preds = %bb.ih, %bb.ik
  %i.oy = phi ptr [ %.pre, %bb.ik ], [ null, %bb.ih ]
  %i.oz = phi i1 [ %i.os, %bb.ik ], [ false, %bb.ih ]
  %i.pa = icmp eq ptr %i.oy, null
  %or.cond19 = select i1 %i.pa, i1 true, i1 %i.oz
  %i.pb = load i32, ptr @opt_tls_used, align 4
  %i.pc = icmp ne i32 %i.pb, 0
  %or.cond21 = select i1 %or.cond19, i1 %i.pc, i1 false
  br i1 %or.cond21, label %bb.in, label %bb.iq

bb.in:                                            ; preds = %.thread375
  %i.pd = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.pe = icmp slt i32 %i.pd, 4
  br i1 %i.pe, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.pf = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.pg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pf, ptr noundef nonnull @.str.370, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3783, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.ip

bb.ip:                                            ; preds = %bb.in, %bb.io
  store i32 0, ptr @opt_tls_used, align 4, !tbaa !5
  br label %bb.iq

bb.iq:                                            ; preds = %.thread375, %bb.ip
  %i.ph = load i32, ptr @opt_ignore_keyusage, align 4, !tbaa !5
  %.not174 = icmp eq i32 %i.ph, 0
  br i1 %.not174, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.pi = load ptr, ptr @cmp_ctx, align 8, !tbaa !38
  %i.pj = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.pi, i32 noundef 35, i32 noundef 1) #11 ; 0 uses
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.pk = load i32, ptr @opt_no_cache_extracerts, align 4, !tbaa !5
  %.not175 = icmp eq i32 %i.pk, 0
  br i1 %.not175, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.pl = load ptr, ptr @cmp_ctx, align 8, !tbaa !38
  %i.pm = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.pl, i32 noundef 37, i32 noundef 1) #11 ; 0 uses
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is
  %i.pn = load ptr, ptr @opt_reqout_only, align 8, !tbaa !9
  %i.po = icmp eq ptr %i.pn, null
  %.pre325 = load ptr, ptr @opt_port, align 8, !tbaa !9 ; 2 uses
  br i1 %i.po, label %bb.iv, label %.thread246

bb.iv:                                            ; preds = %bb.iu
  %i.pp = load i32, ptr @opt_use_mock_srv, align 4, !tbaa !5
  %i.pq = icmp ne i32 %i.pp, 0
  %i.pr = icmp ne ptr %.pre325, null
  %or.cond23 = select i1 %i.pq, i1 true, i1 %i.pr
  br i1 %or.cond23, label %bb.iw, label %.thread377

bb.iw:                                            ; preds = %bb.iv
  %i.ps = call fastcc ptr @setup_srv_ctx(ptr noundef %.0126) ; 3 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %handle_opts_upfront.exit.thread, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.pu = load ptr, ptr @cmp_ctx, align 8, !tbaa !38
  %i.pv = call i32 @OSSL_CMP_CTX_set_transfer_cb_arg(ptr noundef %i.pu, ptr noundef nonnull %i.ps) #11 ; 0 uses
  %i.pw = call ptr @OSSL_CMP_SRV_CTX_get0_cmp_ctx(ptr noundef nonnull %i.ps) #11 ; 3 uses
  %i.px = call i32 @OSSL_CMP_CTX_set_log_cb(ptr noundef %i.pw, ptr noundef nonnull @print_to_bio_err) #11
  %.not176 = icmp eq i32 %i.px, 0
  %i.py = load i32, ptr @opt_verbosity, align 4, !tbaa !5 ; 2 uses
  br i1 %.not176, label %bb.iy, label %bb.ja

bb.iy:                                            ; preds = %bb.ix
  %i.pz = icmp slt i32 %i.py, 3
  br i1 %i.pz, label %handle_opts_upfront.exit.thread, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.qa = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.qb = load ptr, ptr @prog, align 8, !tbaa !9
  %i.qc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qa, ptr noundef nonnull @.str.361, ptr noundef nonnull @__func__.cmp_main, ptr noundef nonnull @.str.351, i32 noundef 3809, ptr noundef nonnull @.str.352, ptr noundef %i.qb, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %handle_opts_upfront.exit.thread

bb.ja:                                            ; preds = %bb.ix
  %i.qd = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.pw, i32 noundef 0, i32 noundef %i.py) #11 ; 0 uses
  %i.qe = load ptr, ptr @opt_port, align 8, !tbaa !9
  %.not177 = icmp eq ptr %i.qe, null
  br i1 %.not177, label %bb.jc, label %bb.jb

end_hunk_0
begin_hunk_1_@setup_srv_ctx:bb.a
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ez = load i32, ptr @opt_accept_raverified, align 4, !tbaa !5
  %.not94 = icmp eq i32 %i.ez, 0
  br i1 %.not94, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fa = tail call i32 @OSSL_CMP_SRV_CTX_set_accept_raverified(ptr noundef nonnull %i.c, i32 noundef 1) #11 ; 0 uses
  br label %bb.bp

setup_cert.exit.thread:                           ; preds = %bb.an, %bb.am, %bb.ac, %bb.ab, %bb.r, %bb.aj, %bb.y, %bb.u, %bb.i, %bb.bc, %bb.bb, %bb.ba, %bb.av, %bb.au, %setup_certs.exit108.thread138, %bb.ao, %bb.ap, %setup_certs.exit108, %setup_certs.exit106, %bb.ak, %bb.af, %setup_cert.exit104, %setup_certs.exit, %setup_cert.exit, %bb.q, %bb.p, %bb.l, %bb.k, %bb.f, %bb.e, %bb.d
  tail call void @ossl_cmp_mock_srv_free(ptr noundef nonnull %i.c) #11
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.a, %setup_cert.exit.thread
  %.0 = phi ptr [ null, %bb.a ], [ null, %setup_cert.exit.thread ], [ %i.c, %bb.bo ], [ %i.c, %bb.bn ]
  ret ptr %.0
}

declare i32 @OSSL_CMP_CTX_set_transfer_cb_arg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_SRV_CTX_get0_cmp_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @print_to_bio_err(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.b = tail call i32 @OSSL_CMP_print_to_bio(ptr noundef %i.a, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #11
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmp_server(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.e = load ptr, ptr @prog, align 8, !tbaa !9
  %i.f = load ptr, ptr @opt_port, align 8, !tbaa !9
  %i.g = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.h = tail call ptr @http_server_init(ptr noundef %i.e, ptr noundef %i.f, i32 noundef %i.g) #11 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.q, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %.02058 = phi i32 [ %.121, %bb.p ], [ 1, %bb.a ] ; 3 uses
  %.02257 = phi i32 [ %.224, %bb.p ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !49
  %i.j = call ptr @OSSL_CMP_MSG_it() #11
  %i.k = load ptr, ptr @prog, align 8, !tbaa !9
  %i.l = call i32 @http_server_get_asn1_req(ptr noundef %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef %i.k, i32 noundef 0, i32 noundef 0) #11
  switch i32 %i.l, label %bb.d [
    i32 0, label %bb.b
    i32 -1, label %.thread49
  ]

bb.b:                                             ; preds = %.lr.ph
  %.not34 = icmp eq i32 %.02058, 0
  br i1 %.not34, label %.thread42, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @OSSL_sleep(i64 noundef 1000) #11
  br label %bb.p, !llvm.loop !51

bb.d:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %.02257, 1                   ; 5 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !49
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %strcmpload = load i8, ptr %i.o, align 1
  %.not31 = icmp eq i8 %strcmpload, 0
  br i1 %.not31, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(6) @.str.432) #12
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @prog, align 8, !tbaa !9
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.s = call i32 @http_server_send_status(ptr noundef %i.q, ptr noundef %i.r, i32 noundef 404, ptr noundef nonnull @.str.433) #11 ; 0 uses
  %i.t = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.u = icmp slt i32 %i.t, 3
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.x = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.v, ptr noundef nonnull @.str.434, ptr noundef nonnull @__func__.cmp_server, ptr noundef nonnull @.str.351, i32 noundef 3321, ptr noundef nonnull @.str.352, ptr noundef %i.w, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.y, ptr noundef nonnull @.str.351, i32 noundef 3322) #11
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !49
  call void @OSSL_CMP_MSG_free(ptr noundef %i.z) #11
  br label %.thread42

bb.j:                                             ; preds = %bb.f, %bb.e
  call void @CRYPTO_free(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.351, i32 noundef 3326) #11
  %i.aa = load ptr, ptr @cmp_ctx, align 8, !tbaa !38
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.ac = call ptr @OSSL_CMP_CTX_server_perform(ptr noundef %i.aa, ptr noundef %i.ab) #11 ; 3 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !49
  call void @OSSL_CMP_MSG_free(ptr noundef %i.ad) #11
  %i.ae = icmp eq ptr %i.ac, null
  %i.af = load ptr, ptr @prog, align 8, !tbaa !9  ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = call i32 @http_server_send_status(ptr noundef %i.af, ptr noundef %i.ag, i32 noundef 500, ptr noundef nonnull @.str.435) #11 ; 0 uses
  br label %.thread49

bb.l:                                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !5
  %i.aj = call ptr @OSSL_CMP_MSG_it() #11
  %i.ak = call i32 @http_server_send_asn1_resp(ptr noundef %i.af, ptr noundef %i.ag, i32 noundef %i.ai, ptr noundef nonnull @.str.436, ptr noundef %i.aj, ptr noundef nonnull %i.ac) #11 ; 4 uses
  call void @OSSL_CMP_MSG_free(ptr noundef nonnull %i.ac) #11
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %.thread49, label %bb.m

.thread42:                                        ; preds = %bb.b, %bb.i, %bb.d
  %.123.ph = phi i32 [ %.02257, %bb.b ], [ %i.m, %bb.i ], [ %i.m, %bb.d ]
  %i.al = call i32 @OSSL_CMP_CTX_set1_transactionID(ptr noundef %0, ptr noundef null) #11 ; 0 uses
  %i.am = call i32 @OSSL_CMP_CTX_set1_senderNonce(ptr noundef %0, ptr noundef null) #11 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr %i.b, align 4
  %.not54 = icmp eq i32 %i.an, 0
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = call i32 @OSSL_CMP_CTX_get_status(ptr noundef %0) #11
  %.not35 = icmp eq i32 %i.ao, -2
  br i1 %.not35, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread42, %bb.n, %bb.m
  %.1233947 = phi i32 [ %.123.ph, %.thread42 ], [ %i.m, %bb.n ], [ %i.m, %bb.m ]
  %.14146 = phi i32 [ 0, %.thread42 ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ]
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @BIO_free_all(ptr noundef %i.ap) #11
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.p

.thread49:                                        ; preds = %.lr.ph, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.loopexit

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.c
  %.224 = phi i32 [ %.02257, %bb.c ], [ %i.m, %bb.n ], [ %.1233947, %bb.o ] ; 2 uses
  %.121 = phi i32 [ 0, %bb.c ], [ %.02058, %bb.n ], [ %.02058, %bb.o ]
  %.2 = phi i32 [ 0, %bb.c ], [ %i.ak, %bb.n ], [ %.14146, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aq = load i32, ptr @opt_max_msgs, align 4, !tbaa !5 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 1
  %i.as = icmp slt i32 %.224, %i.aq
  %i.at = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %i.at, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.p, %.thread49
  %.3 = phi i32 [ 0, %.thread49 ], [ %.2, %bb.p ]
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @BIO_free_all(ptr noundef %i.au) #11
  call void @BIO_free_all(ptr noundef nonnull %i.h) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %.loopexit
  %.025 = phi i32 [ %.3, %.loopexit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @setup_client_ctx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [200 x i8], align 16              ; 6 uses
  %i.g = alloca [200 x i8], align 16              ; 5 uses
  %i.h = alloca [100 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !9
  %i.i = load ptr, ptr @opt_path, align 8, !tbaa !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.f, ptr noundef nonnull align 16 dereferenceable(200) @__const.setup_client_ctx.server_buf, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.g, i8 0, i64 200, i1 false)
  %i.j = load i32, ptr @opt_use_mock_srv, align 4, !tbaa !5
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.f, ptr noundef nonnull align 1 dereferenceable(10) @.str.437, i64 10, i1 false) #11
  %i.k = load ptr, ptr @opt_rspin, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @opt_server, align 8, !tbaa !9 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = load ptr, ptr @opt_reqout_only, align 8
  %i.p = icmp eq ptr %i.o, null
  %or.cond3 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.r = icmp slt i32 %i.q, 3
  br i1 %i.r, label %transform_opts.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.t = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.s, ptr noundef nonnull @.str.438, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2225, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %transform_opts.exit.thread

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %.pr = load ptr, ptr @opt_server, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.c
  %i.u = phi ptr [ %.pr, %thread-pre-split ], [ %i.m, %bb.c ] ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr @opt_proxy, align 8, !tbaa !9
  %i.x = icmp eq ptr %i.w, null
  %i.y = load i32, ptr @opt_verbosity, align 4    ; 2 uses
  %i.z = icmp slt i32 %i.y, 4
  %or.cond27 = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.ab = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aa, ptr noundef nonnull @.str.439, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2236, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  %.pre = load i32, ptr @opt_verbosity, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i32 [ %.pre, %bb.h ], [ %i.y, %bb.g ]
  %i.ad = load ptr, ptr @opt_no_proxy, align 8, !tbaa !9
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = icmp slt i32 %i.ac, 4
  %or.cond29 = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond29, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.ah = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ag, ptr noundef nonnull @.str.440, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2238, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.aa

bb.k:                                             ; preds = %bb.f
  %i.ai = call i32 @OSSL_HTTP_parse_url(ptr noundef nonnull %i.u, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #11
  %.not116 = icmp eq i32 %i.ai, 0
  br i1 %.not116, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.ak = icmp slt i32 %i.aj, 3
  br i1 %i.ak, label %transform_opts.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.am = load ptr, ptr @opt_server, align 8, !tbaa !9
  %i.an = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.al, ptr noundef nonnull @.str.441, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2244, ptr noundef nonnull @.str.352, ptr noundef %i.am, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %transform_opts.exit.thread

bb.n:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !5
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = load i32, ptr @opt_tls_used, align 4    ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond5 = select i1 %i.ap, i1 true, i1 %i.ar
  br i1 %or.cond5, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.at = icmp slt i32 %i.as, 4
  br i1 %i.at, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.av = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.au, ptr noundef nonnull @.str.442, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2248, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  store i32 1, ptr @opt_tls_used, align 4, !tbaa !5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.aw = phi i32 [ 1, %bb.q ], [ %i.aq, %bb.n ]
  %i.ax = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 13, i32 noundef %i.aw) #11
  %.not117 = icmp eq i32 %i.ax, 0
  br i1 %.not117, label %transform_opts.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.az = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull @setup_client_ctx.server_port, i64 noundef 32, ptr noundef nonnull @.str.443, ptr noundef %i.ay) #11 ; 0 uses
  %i.ba = load ptr, ptr @opt_path, align 8, !tbaa !9
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = load ptr, ptr %i.c, align 8
  %spec.select = select i1 %i.bb, ptr %i.bc, ptr %i.i ; 4 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.be = call i32 @OSSL_CMP_CTX_set1_server(ptr noundef %0, ptr noundef %i.bd) #11
  %.not118 = icmp eq i32 %i.be, 0
  br i1 %.not118, label %bb.ei, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !5
  %i.bg = call i32 @OSSL_CMP_CTX_set_serverPort(ptr noundef %0, i32 noundef %i.bf) #11
  %.not119 = icmp eq i32 %i.bg, 0
  br i1 %.not119, label %bb.ei, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr @opt_proxy, align 8, !tbaa !9 ; 2 uses
  %.not120 = icmp eq ptr %i.bh, null
  br i1 %.not120, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = call i32 @OSSL_CMP_CTX_set1_proxy(ptr noundef %0, ptr noundef nonnull %i.bh) #11
  %.not121 = icmp eq i32 %i.bi, 0
  br i1 %.not121, label %bb.ei, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bj = load ptr, ptr @opt_no_proxy, align 8, !tbaa !9 ; 2 uses
  %.not122 = icmp eq ptr %i.bj, null
  br i1 %.not122, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = call i32 @OSSL_CMP_CTX_set1_no_proxy(ptr noundef %0, ptr noundef nonnull %i.bj) #11
  %.not123 = icmp eq i32 %i.bk, 0
  br i1 %.not123, label %bb.ei, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = load i32, ptr @opt_tls_used, align 4, !tbaa !5
  %.not124 = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not124, ptr @.str.353, ptr @.str.445
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.bp = load i8, ptr %spec.select, align 1, !tbaa !12
  %i.bq = icmp eq i8 %i.bp, 47
  %.idx = zext i1 %i.bq to i64
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx
  %i.bs = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef 200, ptr noundef nonnull @.str.444, ptr noundef nonnull %i.bm, ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef nonnull %i.br) #11 ; 0 uses
  %i.bt = load ptr, ptr @opt_proxy, align 8, !tbaa !9
  %i.bu = load ptr, ptr @opt_no_proxy, align 8, !tbaa !9
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.bw = load i32, ptr %i.e, align 4, !tbaa !5
  %i.bx = call ptr @OSSL_HTTP_adapt_proxy(ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef %i.bv, i32 noundef %i.bw) #11 ; 2 uses
  %.not125 = icmp eq ptr %i.bx, null
  br i1 %.not125, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.g, i64 noundef 200, ptr noundef nonnull @.str.446, ptr noundef nonnull %i.bx) #11 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.i, %bb.j
  %.0103 = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ 1, %bb.z ], [ 0, %bb.y ]
  %.1 = phi ptr [ %i.i, %bb.i ], [ %i.i, %bb.j ], [ %spec.select, %bb.z ], [ %spec.select, %bb.y ]
  %i.bz = call i32 @OSSL_CMP_CTX_set1_serverPath(ptr noundef %0, ptr noundef %.1) #11
  %.not126 = icmp eq i32 %i.bz, 0
  br i1 %.not126, label %bb.ei, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load ptr, ptr @opt_cmd_s, align 8, !tbaa !9 ; 15 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.ae, label %sub_0.i

sub_0.i:                                          ; preds = %bb.ab
  %i.cb = load i8, ptr %i.ca, align 1             ; 3 uses
  %.not27.i = icmp eq i8 %i.cb, 105
  br i1 %.not27.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %.not28.i = icmp eq i8 %i.cd, 114
  br i1 %.not28.i, label %.tail.i, label %.tail.thread.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.ag, label %.thread.i

.tail.thread.i:                                   ; preds = %sub_0.i
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(4) @.str.468) #12
  %.not6.i = icmp eq i32 %i.ch, 0
  br i1 %.not6.i, label %bb.ag, label %sub_018.i

.tail.thread.thread.i:                            ; preds = %sub_1.i
  %i.ci = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(4) @.str.468) #12
  %.not645.i = icmp eq i32 %i.ci, 0
  br i1 %.not645.i, label %bb.ag, label %.tail17.thread.i

.thread.i:                                        ; preds = %.tail.i
  %i.cj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(4) @.str.468) #12
  %.not638.i = icmp eq i32 %i.cj, 0
  br i1 %.not638.i, label %bb.ag, label %.tail17.thread.i

sub_018.i:                                        ; preds = %.tail.thread.i
  %.not29.i = icmp eq i8 %i.cb, 99
  br i1 %.not29.i, label %sub_119.i, label %.tail17.thread.i

sub_119.i:                                        ; preds = %sub_018.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cl = load i8, ptr %i.ck, align 1
  %.not30.i = icmp eq i8 %i.cl, 114
  br i1 %.not30.i, label %.tail17.i, label %.tail17.thread.i

.tail17.i:                                        ; preds = %sub_119.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ag, label %.thread41.i

.tail17.thread.i:                                 ; preds = %sub_119.i, %sub_018.i, %.thread.i, %.tail.thread.thread.i
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(6) @.str.470) #12
  %.not8.i = icmp eq i32 %i.cp, 0
  br i1 %.not8.i, label %bb.ag, label %sub_023.i

.thread41.i:                                      ; preds = %.tail17.i
  %i.cq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(6) @.str.470) #12
  %.not842.i = icmp eq i32 %i.cq, 0
  br i1 %.not842.i, label %bb.ag, label %.tail22.thread.i

sub_023.i:                                        ; preds = %.tail17.thread.i
  %.not31.i = icmp eq i8 %i.cb, 114
  br i1 %.not31.i, label %sub_124.i, label %.tail22.thread.i

sub_124.i:                                        ; preds = %sub_023.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cs = load i8, ptr %i.cr, align 1
  %.not32.i = icmp eq i8 %i.cs, 114
  br i1 %.not32.i, label %.tail22.i, label %.tail22.thread.i

.tail22.i:                                        ; preds = %sub_124.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.ag, label %.tail22.thread.i

.tail22.thread.i:                                 ; preds = %.tail22.i, %sub_124.i, %sub_023.i, %.thread41.i
  %i.cw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(5) @.str.472) #12
  %.not10.i = icmp eq i32 %i.cw, 0
  br i1 %.not10.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %.tail22.thread.i
  %i.cx = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.cy = icmp slt i32 %i.cx, 3
  br i1 %i.cy, label %transform_opts.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.da = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cz, ptr noundef nonnull @.str.473, ptr noundef nonnull @__func__.transform_opts, ptr noundef nonnull @.str.351, i32 noundef 1164, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %transform_opts.exit.thread

bb.ae:                                            ; preds = %bb.ab
  %i.db = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.dc = icmp slt i32 %i.db, 3
  br i1 %i.dc, label %transform_opts.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.de = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dd, ptr noundef nonnull @.str.474, ptr noundef nonnull @__func__.transform_opts, ptr noundef nonnull @.str.351, i32 noundef 1168, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %transform_opts.exit.thread

bb.ag:                                            ; preds = %.tail22.thread.i, %.tail22.i, %.thread41.i, %.tail17.thread.i, %.tail17.i, %.thread.i, %.tail.thread.thread.i, %.tail.thread.i, %.tail.i
  %.sink.i = phi i32 [ 0, %.tail.i ], [ 1, %.tail.thread.i ], [ 3, %.tail17.thread.i ], [ 4, %.tail22.i ], [ 2, %.tail17.i ], [ 1, %.tail.thread.thread.i ], [ 1, %.thread.i ], [ 3, %.thread41.i ], [ 5, %.tail22.thread.i ]
  store i32 %.sink.i, ptr @opt_cmd, align 4, !tbaa !5
  %i.df = load ptr, ptr @opt_keyform_s, align 8, !tbaa !9 ; 2 uses
  %.not11.i = icmp eq ptr %i.df, null
  br i1 %.not11.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = call i32 @opt_format(ptr noundef nonnull %i.df, i64 noundef 86, ptr noundef nonnull @opt_keyform) #11
  %.not12.i = icmp eq i32 %i.dg, 0
  br i1 %.not12.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.di = icmp slt i32 %i.dh, 3
  br i1 %i.di, label %transform_opts.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.dk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dj, ptr noundef nonnull @.str.475, ptr noundef nonnull @__func__.transform_opts, ptr noundef nonnull @.str.351, i32 noundef 1180, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %transform_opts.exit.thread

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.dl = load ptr, ptr @opt_certform_s, align 8, !tbaa !9 ; 2 uses
  %.not13.i = icmp eq ptr %i.dl, null
  br i1 %.not13.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = call i32 @opt_format(ptr noundef nonnull %i.dl, i64 noundef 6, ptr noundef nonnull @opt_certform) #11
  %.not14.i = icmp eq i32 %i.dm, 0
  br i1 %.not14.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dn = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.do = icmp slt i32 %i.dn, 3
  br i1 %i.do, label %transform_opts.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.dq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dp, ptr noundef nonnull @.str.476, ptr noundef nonnull @__func__.transform_opts, ptr noundef nonnull @.str.351, i32 noundef 1188, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %transform_opts.exit.thread

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %i.dr = load ptr, ptr @opt_crlform_s, align 8, !tbaa !9 ; 2 uses
  %.not15.i = icmp eq ptr %i.dr, null
  br i1 %.not15.i, label %transform_opts.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ds = call i32 @opt_format(ptr noundef nonnull %i.dr, i64 noundef 6, ptr noundef nonnull @opt_crlform) #11
  %.not16.i = icmp eq i32 %i.ds, 0
  br i1 %.not16.i, label %bb.aq, label %transform_opts.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dt = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.du = icmp slt i32 %i.dt, 3
  br i1 %i.du, label %transform_opts.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dv = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.dw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dv, ptr noundef nonnull @.str.477, ptr noundef nonnull @__func__.transform_opts, ptr noundef nonnull @.str.351, i32 noundef 1193, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %transform_opts.exit.thread

transform_opts.exit:                              ; preds = %bb.ap, %bb.ao
  %i.dx = load ptr, ptr @opt_infotype_s, align 8, !tbaa !9 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  %i.dz = load i32, ptr @opt_cmd, align 4, !tbaa !5 ; 2 uses
  br i1 %i.dy, label %bb.as, label %bb.au

bb.as:                                            ; preds = %transform_opts.exit
  %i.ea = icmp ne i32 %i.dz, 5
  %i.eb = load i32, ptr @opt_verbosity, align 4
  %i.ec = icmp slt i32 %i.eb, 4
  %or.cond31 = select i1 %i.ea, i1 true, i1 %i.ec
  br i1 %or.cond31, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.ee = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ed, ptr noundef nonnull @.str.447, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2282, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.bb

bb.au:                                            ; preds = %transform_opts.exit
  %.not128 = icmp eq i32 %i.dz, 5
  br i1 %.not128, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ef = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.eg = icmp slt i32 %i.ef, 4
  br i1 %i.eg, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eh = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.ei = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eh, ptr noundef nonnull @.str.448, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2284, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.bb

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.h, i8 0, i64 100, i1 false)
  store <4 x i8> <i8 105, i8 100, i8 45, i8 105>, ptr %i.h, align 16
  %2 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i8 116, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  store i8 45, ptr %3, align 1
  %i.ej = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #12
  %i.ek = sub i64 99, %i.ej
  %i.el = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull %i.dx, i64 noundef %i.ek) #11 ; 0 uses
  %i.em = call i32 @OBJ_sn2nid(ptr noundef nonnull %i.h) #11 ; 2 uses
  store i32 %i.em, ptr @opt_infotype, align 4, !tbaa !5
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.eo = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.ep = icmp slt i32 %i.eo, 3
  br i1 %i.ep, label %.thread164, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eq = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.er = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eq, ptr noundef nonnull @.str.449, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2290, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %.thread164

.thread164:                                       ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %transform_opts.exit.thread

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.av, %bb.aw, %bb.as, %bb.at
  %i.es = load i32, ptr @opt_cmd, align 4, !tbaa !5
  %i.et = icmp ne i32 %i.es, 5
  %i.eu = load i32, ptr @opt_infotype, align 4
  %i.ev = icmp ne i32 %i.eu, 1254
  %or.cond7 = select i1 %i.et, i1 true, i1 %i.ev
  br i1 %or.cond7, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load ptr, ptr @opt_oldwithold, align 8, !tbaa !9
  %i.ex = icmp eq ptr %i.ew, null
  %i.ey = load i32, ptr @opt_verbosity, align 4   ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 4
  %or.cond33 = select i1 %i.ex, i1 true, i1 %i.ez
  br i1 %or.cond33, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.fb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fa, ptr noundef nonnull @.str.451, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2298, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.450, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  %.pre175 = load i32, ptr @opt_verbosity, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fc = phi i32 [ %.pre175, %bb.bd ], [ %i.ey, %bb.bc ] ; 2 uses
  %i.fd = load ptr, ptr @opt_newwithnew, align 8, !tbaa !9
  %i.fe = icmp eq ptr %i.fd, null
  %i.ff = icmp slt i32 %i.fc, 4
  %or.cond35 = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond35, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fg = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.fh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fg, ptr noundef nonnull @.str.452, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2300, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.450, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  %.pre176 = load i32, ptr @opt_verbosity, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fi = phi i32 [ %.pre176, %bb.bf ], [ %i.fc, %bb.be ] ; 2 uses
  %i.fj = load ptr, ptr @opt_newwithold, align 8, !tbaa !9
  %i.fk = icmp eq ptr %i.fj, null
  %i.fl = icmp slt i32 %i.fi, 4
  %or.cond37 = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond37, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fm = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.fn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fm, ptr noundef nonnull @.str.453, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2302, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.450, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  %.pre177 = load i32, ptr @opt_verbosity, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fo = phi i32 [ %.pre177, %bb.bh ], [ %i.fi, %bb.bg ]
  %i.fp = load ptr, ptr @opt_oldwithnew, align 8, !tbaa !9
  %i.fq = icmp eq ptr %i.fp, null
  %i.fr = icmp slt i32 %i.fo, 4
  %or.cond39 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond39, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fs = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.ft = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fs, ptr noundef nonnull @.str.454, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2304, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.450, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bb
  %i.fu = load i32, ptr @opt_cmd, align 4, !tbaa !5
  %i.fv = icmp ne i32 %i.fu, 5
  %i.fw = load i32, ptr @opt_infotype, align 4
  %i.fx = icmp ne i32 %i.fw, 1225
  %or.cond9 = select i1 %i.fv, i1 true, i1 %i.fx
  %i.fy = load ptr, ptr @opt_template, align 8, !tbaa !9 ; 2 uses
  %i.fz = load i32, ptr @opt_verbosity, align 4   ; 3 uses
  br i1 %or.cond9, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.ga = icmp eq ptr %i.fy, null
  %i.gb = icmp slt i32 %i.fz, 4
  %or.cond41 = select i1 %i.ga, i1 true, i1 %i.gb
  br i1 %or.cond41, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gc = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.gd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gc, ptr noundef nonnull @.str.456, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2310, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.455, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  %.pre178 = load i32, ptr @opt_verbosity, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ge = phi i32 [ %.pre178, %bb.bm ], [ %i.fz, %bb.bl ]
  %i.gf = load ptr, ptr @opt_keyspec, align 8, !tbaa !9
  %i.gg = icmp eq ptr %i.gf, null
  %i.gh = icmp slt i32 %i.ge, 4
  %or.cond43 = select i1 %i.gg, i1 true, i1 %i.gh
  br i1 %or.cond43, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gi = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.gj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gi, ptr noundef nonnull @.str.457, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2312, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.455, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bk
  %i.gk = icmp ne ptr %i.fy, null
  %i.gl = icmp slt i32 %i.fz, 3
  %or.cond45 = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %or.cond45, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gm = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.gn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gm, ptr noundef nonnull @.str.458, ptr noundef nonnull @__func__.setup_client_ctx, ptr noundef nonnull @.str.351, i32 noundef 2315, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bn, %bb.bo, %bb.bp, %bb.bq
  %i.go = load ptr, ptr @opt_untrusted, align 8, !tbaa !9 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %setup_certs.exit.thread35.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gq = load ptr, ptr @opt_otherpass, align 8, !tbaa !9
  %i.gr = load ptr, ptr @vpm, align 8, !tbaa !18
  %i.gs = call ptr @load_certs_multifile(ptr noundef nonnull %i.go, ptr noundef %i.gq, ptr noundef nonnull @.str.478, ptr noundef %i.gr) #11 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %transform_opts.exit.thread, label %setup_certs.exit.i

setup_certs.exit.i:                               ; preds = %bb.bs
  %i.gu = call i32 @OSSL_CMP_CTX_set1_untrusted(ptr noundef %0, ptr noundef nonnull %i.gs) #11, !callees !47, !inline_history !48
  call void @OSSL_STACK_OF_X509_free(ptr noundef nonnull %i.gs) #11
  %.not.i148 = icmp eq i32 %i.gu, 0
  br i1 %.not.i148, label %transform_opts.exit.thread, label %setup_certs.exit.thread35.i

setup_certs.exit.thread35.i:                      ; preds = %setup_certs.exit.i, %bb.br
  %i.gv = load ptr, ptr @opt_srvcert, align 8, !tbaa !9
  %i.gw = icmp ne ptr %i.gv, null                 ; 2 uses
  %i.gx = load ptr, ptr @opt_trusted, align 8     ; 2 uses
  %i.gy = icmp ne ptr %i.gx, null                 ; 2 uses
  %or.cond.i = select i1 %i.gw, i1 true, i1 %i.gy
  br i1 %or.cond.i, label %bb.bt, label %.thread.i149

bb.bt:                                            ; preds = %setup_certs.exit.thread35.i
  br i1 %i.gw, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.gy, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.gz = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.ha = icmp slt i32 %i.gz, 4
  br i1 %i.ha, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hb = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.hc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hb, ptr noundef nonnull @.str.479, ptr noundef nonnull @__func__.setup_verification_ctx, ptr noundef nonnull @.str.351, i32 noundef 1382, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store ptr null, ptr @opt_trusted, align 8, !tbaa !9
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %i.hd = load ptr, ptr @opt_recipient, align 8, !tbaa !9
  %.not22.i = icmp eq ptr %i.hd, null
  br i1 %.not22.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.he = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.hf = icmp slt i32 %i.he, 4
  br i1 %i.hf, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hg = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.hh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hg, ptr noundef nonnull @.str.480, ptr noundef nonnull @__func__.setup_verification_ctx, ptr noundef nonnull @.str.351, i32 noundef 1386, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr null, ptr @opt_recipient, align 8, !tbaa !9
  br label %bb.cc

end_hunk_1
