inline.NumInlined: 41
inline.NumDeleted: 11
begin_hunk_0_@ca_main:bb.a
  br i1 %.not782, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.lb = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.lc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lb, ptr noundef nonnull @.str.188, ptr noundef nonnull %.2673) #11 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.ld = call ptr @app_conf_try_string(ptr noundef nonnull %i.cc, ptr noundef nonnull %.2680, ptr noundef nonnull @.str.48) #11
  %.not791 = icmp eq ptr %i.ld, null
  br i1 %.not791, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.le = call fastcc ptr @lookup_conf(ptr noundef %i.cc, ptr noundef nonnull %.2680, ptr noundef nonnull @.str.189) ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %.thread889, label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %.0637 = phi ptr [ %i.le, %bb.fg ], [ null, %bb.ff ] ; 5 uses
  %.2582 = phi i32 [ %.0580, %bb.fg ], [ 1, %bb.ff ]
  %i.lg = load ptr, ptr @extfile_conf, align 8, !tbaa !44
  %.not792 = icmp eq ptr %i.lg, null
  br i1 %.not792, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @X509V3_set_ctx(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #11
  %i.lh = load ptr, ptr @extfile_conf, align 8, !tbaa !44
  call void @X509V3_set_nconf(ptr noundef nonnull %3, ptr noundef %i.lh) #11
  %i.li = load ptr, ptr @extfile_conf, align 8, !tbaa !44
  %i.lj = call i32 @X509V3_EXT_add_nconf(ptr noundef %i.li, ptr noundef nonnull %3, ptr noundef %.2653, ptr noundef null) #11
  %.not795 = icmp eq i32 %i.lj, 0
  br i1 %.not795, label %bb.fj, label %.thread881

.thread881:                                       ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %i.lk = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ll = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lk, ptr noundef nonnull @.str.190, ptr noundef %.2653) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %.thread889

bb.fk:                                            ; preds = %bb.fh
  %i.lm = icmp eq ptr %.2653, null
  br i1 %i.lm, label %bb.fl, label %.thread883

bb.fl:                                            ; preds = %bb.fk
  %i.ln = call ptr @app_conf_try_string(ptr noundef nonnull %i.cc, ptr noundef nonnull %.2680, ptr noundef nonnull @.str.191) #11 ; 2 uses
  %.not793 = icmp eq ptr %i.ln, null
  br i1 %.not793, label %bb.fn, label %.thread883

.thread883:                                       ; preds = %bb.fk, %bb.fl
  %.3654886 = phi ptr [ %i.ln, %bb.fl ], [ %.2653, %bb.fk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @X509V3_set_ctx(ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #11
  call void @X509V3_set_nconf(ptr noundef nonnull %4, ptr noundef nonnull %i.cc) #11
  %i.lo = call i32 @X509V3_EXT_add_nconf(ptr noundef nonnull %i.cc, ptr noundef nonnull %4, ptr noundef nonnull %.3654886, ptr noundef null) #11
  %.not794 = icmp eq i32 %i.lo, 0
  br i1 %.not794, label %bb.fm, label %.thread887

.thread887:                                       ; preds = %.thread883
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.fn

bb.fm:                                            ; preds = %.thread883
  %i.lp = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.lq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lp, ptr noundef nonnull @.str.192, ptr noundef nonnull %.3654886) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread889

bb.fn:                                            ; preds = %.thread887, %.thread881, %bb.fl
  %.4655 = phi ptr [ %.2653, %.thread881 ], [ %.3654886, %.thread887 ], [ null, %bb.fl ] ; 4 uses
  %i.lr = icmp eq ptr %.0631, null
  br i1 %i.lr, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.ls = call ptr @app_conf_try_string(ptr noundef nonnull %i.cc, ptr noundef nonnull %.2680, ptr noundef nonnull @.str.193) #11
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.2633 = phi ptr [ %i.ls, %bb.fo ], [ %.0631, %bb.fn ] ; 4 uses
  %i.lt = icmp eq ptr %.0628, null
  br i1 %i.lt, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.lu = call ptr @app_conf_try_string(ptr noundef nonnull %i.cc, ptr noundef nonnull %.2680, ptr noundef nonnull @.str.194) #11
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.2630 = phi ptr [ %i.lu, %bb.fq ], [ %.0628, %bb.fp ] ; 6 uses
  %i.lv = load i64, ptr %i.m, align 8, !tbaa !14  ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %bb.fs, label %.thread1501

bb.fs:                                            ; preds = %bb.fr
  %i.lx = call i32 @app_conf_try_number(ptr noundef nonnull %i.cc, ptr noundef nonnull %.2680, ptr noundef nonnull @.str.195, ptr noundef nonnull %i.m) #11
  %.not796 = icmp eq i32 %i.lx, 0
  br i1 %.not796, label %bb.ft, label %._crit_edge1440

._crit_edge1440:                                  ; preds = %bb.fs
  %.pre1441 = load i64, ptr %i.m, align 8
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i64 0, ptr %i.m, align 8, !tbaa !14
  br label %bb.fu

bb.fu:                                            ; preds = %._crit_edge1440, %bb.ft
  %i.ly = phi i64 [ %.pre1441, %._crit_edge1440 ], [ 0, %bb.ft ] ; 2 uses
  %i.lz = icmp eq ptr %.2630, null
  %i.ma = icmp eq i64 %i.ly, 0
  %or.cond16 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond16, label %bb.fv, label %.thread1501

bb.fv:                                            ; preds = %bb.fu
  %i.mb = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.mc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mb, ptr noundef nonnull @.str.196) #11 ; 0 uses
  br label %.thread889

.thread1501:                                      ; preds = %bb.fr, %bb.fu
  %i.md = phi i64 [ %i.ly, %bb.fu ], [ %i.lv, %bb.fr ]
  %i.me = icmp ne i64 %i.md, 0
  %i.mf = icmp ne ptr %.2630, null
  %or.cond18 = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond18, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.thread1501
  %i.mg = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.mh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mg, ptr noundef nonnull @.str.197) #11 ; 0 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.thread1501
  %.not797 = icmp eq i32 %.2582, 0
  br i1 %.not797, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.mi = call ptr @BN_new() #11                  ; 3 uses
  store ptr %i.mi, ptr %i.a, align 8, !tbaa !9
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.mk = call i32 @rand_serial(ptr noundef nonnull %i.mi, ptr noundef null) #11
  %.not799 = icmp eq i32 %i.mk, 0
  br i1 %.not799, label %bb.ga, label %bb.gi

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.ml = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.mm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ml, ptr noundef nonnull @.str.198) #11 ; 0 uses
  br label %.thread889

bb.gb:                                            ; preds = %bb.fx
  %i.mn = call ptr @load_serial(ptr noundef %.0637, ptr noundef null, i32 noundef %.0624, ptr noundef null) #11 ; 3 uses
  store ptr %i.mn, ptr %i.a, align 8, !tbaa !9
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.mp = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.mq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mp, ptr noundef nonnull @.str.199) #11 ; 0 uses
  br label %.thread889

bb.gd:                                            ; preds = %bb.gb
  br i1 %.not782, label %bb.gi, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.mr = call i32 @BN_is_zero(ptr noundef nonnull %i.mn) #11
  %.not798 = icmp eq i32 %i.mr, 0
  br i1 %.not798, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ms = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.mt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ms, ptr noundef nonnull @.str.200) #11 ; 0 uses
  br label %bb.gi

bb.gg:                                            ; preds = %bb.ge
  %i.mu = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.mv = call ptr @BN_bn2hex(ptr noundef %i.mu) #11 ; 3 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %.thread889, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.mx = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.my = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mx, ptr noundef nonnull @.str.201, ptr noundef nonnull %i.mv) #11 ; 0 uses
  call void @CRYPTO_free(ptr noundef nonnull %i.mv, ptr noundef nonnull @.str.202, i32 noundef 957) #11
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gd, %bb.gh, %bb.gf, %bb.fz
  %i.mz = call ptr @NCONF_get_section(ptr noundef nonnull %i.cc, ptr noundef nonnull %.2673) #11 ; 5 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.nb = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.nc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nb, ptr noundef nonnull @.str.203, ptr noundef nonnull %.2673) #11 ; 0 uses
  br label %.thread889

bb.gk:                                            ; preds = %bb.gi
  %i.nd = call ptr @OPENSSL_sk_new_null() #11     ; 34 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.nf = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ng = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nf, ptr noundef nonnull @.str.204) #11 ; 0 uses
  br label %.thread889

bb.gm:                                            ; preds = %bb.gk
  br i1 %i.ec, label %bb.gn, label %bb.gs

bb.gn:                                            ; preds = %bb.gm
  %i.nh = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ni = load i64, ptr %i.m, align 8, !tbaa !14
  %i.nj = load i64, ptr %i.n, align 8, !tbaa !14
  %i.nk = call i64 @get_nameopt() #11
  %i.nl = load i32, ptr %i.i, align 4, !tbaa !5
  %i.nm = load i64, ptr %i.e, align 8, !tbaa !14
  %i.nn = call fastcc i32 @certify_spkac(ptr noundef %i.o, ptr noundef %.0658, ptr noundef %i.dy, ptr noundef %.0555, ptr noundef %.3677, ptr noundef %.0692, ptr noundef %i.mz, ptr noundef %i.fq, ptr noundef %i.nh, ptr noundef %.0635, i64 noundef %.2559, i32 noundef %.3595, ptr noundef %.2633, ptr noundef %.2630, i64 noundef %i.ni, ptr noundef %.4655, ptr noundef %i.cc, i32 noundef %.0587, i64 noundef %i.nj, i64 noundef %i.nk, i32 noundef %.1609, i32 noundef %i.nl, i64 noundef %i.nm) ; 2 uses
  %i.no = icmp slt i32 %i.nn, 0
  br i1 %i.no, label %.thread889, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.not800 = icmp eq i32 %i.nn, 0
  br i1 %.not800, label %bb.gs, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.np = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.nq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.np, ptr noundef nonnull @.str.205) #11 ; 0 uses
  %i.nr = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ns = call i32 @BN_add_word(ptr noundef %i.nr, i64 noundef 1) #11
  %.not801 = icmp eq i32 %i.ns, 0
  br i1 %.not801, label %.thread889, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.nt = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.nu = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.nd, ptr noundef %i.nt) #11
  %.not802 = icmp eq i32 %i.nu, 0
  br i1 %.not802, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.nv = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.nw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nv, ptr noundef nonnull @.str.204) #11 ; 0 uses
  br label %.thread889

bb.gs:                                            ; preds = %bb.go, %bb.gq, %bb.gm
  %.0618 = phi i32 [ 1, %bb.gq ], [ 1, %bb.go ], [ 0, %bb.gm ] ; 2 uses
  %.0613 = phi i32 [ 1, %bb.gq ], [ 0, %bb.go ], [ 0, %bb.gm ] ; 3 uses
  br i1 %i.ed, label %bb.gt, label %bb.gy

bb.gt:                                            ; preds = %bb.gs
  %i.nx = add nuw nsw i32 %.0618, 1               ; 2 uses
  %i.ny = load i32, ptr %i.c, align 4, !tbaa !5
  %i.nz = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.oa = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ob = load i64, ptr %i.m, align 8, !tbaa !14
  %i.oc = load i64, ptr %i.n, align 8, !tbaa !14
  %i.od = call i64 @get_nameopt() #11
  %i.oe = load i32, ptr %i.i, align 4, !tbaa !5
  %i.of = load i64, ptr %i.e, align 8, !tbaa !14
  %i.og = call fastcc i32 @certify_cert(ptr noundef %i.o, ptr noundef %.0656, i32 noundef %i.ny, ptr noundef %i.nz, ptr noundef %i.dy, ptr noundef %.0555, ptr noundef %.3677, ptr noundef %.0692, ptr noundef %.0688, ptr noundef %i.mz, ptr noundef %i.fq, ptr noundef %i.oa, ptr noundef %.0635, i64 noundef %.2559, i32 noundef %.3595, ptr noundef %.2633, ptr noundef %.2630, i64 noundef %i.ob, i32 noundef %.2612, ptr noundef %.4655, ptr noundef %i.cc, i32 noundef %.0587, i64 noundef %i.oc, i64 noundef %i.od, i32 noundef %.1609, i32 noundef %i.oe, i64 noundef %i.of) ; 2 uses
  %i.oh = icmp slt i32 %i.og, 0
  br i1 %i.oh, label %.thread889, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %.not803 = icmp eq i32 %i.og, 0
  br i1 %.not803, label %bb.gy, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.oi = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.oj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oi, ptr noundef nonnull @.str.205) #11 ; 0 uses
  %i.ok = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ol = call i32 @BN_add_word(ptr noundef %i.ok, i64 noundef 1) #11
  %.not804 = icmp eq i32 %i.ol, 0
  br i1 %.not804, label %.thread889, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.om = add nuw nsw i32 %.0613, 1
  %i.on = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.oo = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.nd, ptr noundef %i.on) #11
  %.not805 = icmp eq i32 %i.oo, 0
  br i1 %.not805, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.op = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.oq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.op, ptr noundef nonnull @.str.204) #11 ; 0 uses
  br label %.thread889

bb.gy:                                            ; preds = %bb.gu, %bb.gw, %bb.gs
  %.1619 = phi i32 [ %i.nx, %bb.gw ], [ %i.nx, %bb.gu ], [ %.0618, %bb.gs ] ; 2 uses
  %.1614 = phi i32 [ %i.om, %bb.gw ], [ %.0613, %bb.gu ], [ %.0613, %bb.gs ] ; 3 uses
  %.not806 = icmp eq ptr %.0660, null
  br i1 %.not806, label %bb.he, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.or = add nuw nsw i32 %.1619, 1               ; 2 uses
  %i.os = load i32, ptr %i.d, align 4, !tbaa !5
  %i.ot = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ou = load i64, ptr %i.m, align 8, !tbaa !14
  %i.ov = load i64, ptr %i.n, align 8, !tbaa !14
  %i.ow = call i64 @get_nameopt() #11
  %i.ox = load i32, ptr %i.i, align 4, !tbaa !5
  %i.oy = load i64, ptr %i.e, align 8, !tbaa !14
  %i.oz = call fastcc i32 @certify(ptr noundef %i.o, ptr noundef nonnull %.0660, i32 noundef %i.os, ptr noundef %i.dy, ptr noundef %spec.select859, ptr noundef %.3677, ptr noundef %.0692, ptr noundef %.0688, ptr noundef %i.mz, ptr noundef %i.fq, ptr noundef %i.ot, ptr noundef %.0635, i64 noundef %.2559, i32 noundef %.3595, ptr noundef %.2633, ptr noundef %.2630, i64 noundef %i.ou, i32 noundef %.2612, ptr noundef %.4655, ptr noundef %i.cc, i32 noundef %.0587, i64 noundef %i.ov, i64 noundef %i.ow, i32 noundef %.1609, i32 noundef %i.ox, i32 noundef %.0572, i64 noundef %i.oy) ; 2 uses
  %i.pa = icmp slt i32 %i.oz, 0
  br i1 %i.pa, label %.thread889, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.not807 = icmp eq i32 %i.oz, 0
  br i1 %.not807, label %bb.he, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.pb = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.pc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pb, ptr noundef nonnull @.str.205) #11 ; 0 uses
  %i.pd = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.pe = call i32 @BN_add_word(ptr noundef %i.pd, i64 noundef 1) #11
  %.not808 = icmp eq i32 %i.pe, 0
  br i1 %.not808, label %.thread889, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.pf = add nuw nsw i32 %.1614, 1
  %i.pg = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.ph = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.nd, ptr noundef %i.pg) #11
  %.not809 = icmp eq i32 %i.ph, 0
  br i1 %.not809, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.pi = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.pj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pi, ptr noundef nonnull @.str.204) #11 ; 0 uses
  br label %.thread889

bb.he:                                            ; preds = %bb.ha, %bb.hc, %bb.gy
  %.2620 = phi i32 [ %i.or, %bb.hc ], [ %i.or, %bb.ha ], [ %.1619, %bb.gy ] ; 2 uses
  %.2615 = phi i32 [ %i.pf, %bb.hc ], [ %.1614, %bb.ha ], [ %.1614, %bb.gy ] ; 2 uses
  %i.pk = icmp sgt i32 %i.ca, 0
  br i1 %i.pk, label %.lr.ph1201.preheader, label %._crit_edge1202

.lr.ph1201.preheader:                             ; preds = %bb.he
  %i.pl = add nuw i32 %i.ca, %.2620
  %wide.trip.count = zext nneg i32 %i.ca to i64
  br label %.lr.ph1201

.lr.ph1201:                                       ; preds = %.lr.ph1201.preheader, %bb.hk
  %indvars.iv = phi i64 [ 0, %.lr.ph1201.preheader ], [ %indvars.iv.next, %bb.hk ] ; 2 uses
  %.36161198 = phi i32 [ %.2615, %.lr.ph1201.preheader ], [ %.4617, %bb.hk ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !12
  %i.po = load i32, ptr %i.d, align 4, !tbaa !5
  %i.pp = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.pq = load i64, ptr %i.m, align 8, !tbaa !14
  %i.pr = load i64, ptr %i.n, align 8, !tbaa !14
  %i.ps = call i64 @get_nameopt() #11
  %i.pt = load i32, ptr %i.i, align 4, !tbaa !5
  %i.pu = load i64, ptr %i.e, align 8, !tbaa !14
  %i.pv = call fastcc i32 @certify(ptr noundef %i.o, ptr noundef %i.pn, i32 noundef %i.po, ptr noundef %i.dy, ptr noundef %spec.select859, ptr noundef %.3677, ptr noundef %.0692, ptr noundef %.0688, ptr noundef %i.mz, ptr noundef %i.fq, ptr noundef %i.pp, ptr noundef %.0635, i64 noundef %.2559, i32 noundef %.3595, ptr noundef %.2633, ptr noundef %.2630, i64 noundef %i.pq, i32 noundef %.2612, ptr noundef %.4655, ptr noundef %i.cc, i32 noundef %.0587, i64 noundef %i.pr, i64 noundef %i.ps, i32 noundef %.1609, i32 noundef %i.pt, i32 noundef %.0572, i64 noundef %i.pu) ; 2 uses
  %i.pw = icmp slt i32 %i.pv, 0
  br i1 %i.pw, label %.thread889, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph1201
  %.not839 = icmp eq i32 %i.pv, 0
  br i1 %.not839, label %bb.hk, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.px = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.py = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.px, ptr noundef nonnull @.str.205) #11 ; 0 uses
  %i.pz = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.qa = call i32 @BN_add_word(ptr noundef %i.pz, i64 noundef 1) #11
  %.not840 = icmp eq i32 %i.qa, 0
  br i1 %.not840, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.qb = load ptr, ptr %i.o, align 8, !tbaa !16
  call void @X509_free(ptr noundef %i.qb) #11
  br label %.thread889

bb.hi:                                            ; preds = %bb.hg
  %i.qc = add nsw i32 %.36161198, 1
  %i.qd = load ptr, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.qe = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.nd, ptr noundef %i.qd) #11
  %.not841 = icmp eq i32 %i.qe, 0
  br i1 %.not841, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.qf = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.qg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qf, ptr noundef nonnull @.str.204) #11 ; 0 uses
  call void @X509_free(ptr noundef %i.qd) #11
  br label %.thread889

bb.hk:                                            ; preds = %bb.hf, %bb.hi
  %.4617 = phi i32 [ %i.qc, %bb.hi ], [ %.36161198, %bb.hf ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge1202, label %.lr.ph1201, !llvm.loop !46

._crit_edge1202:                                  ; preds = %bb.hk, %bb.he
  %.3621.lcssa = phi i32 [ %.2620, %bb.he ], [ %i.pl, %bb.hk ]
  %.3616.lcssa = phi i32 [ %.2615, %bb.he ], [ %.4617, %bb.hk ]
  %i.qh = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.nd) #11
  %i.qi = icmp sgt i32 %i.qh, 0
  br i1 %i.qi, label %bb.hl, label %bb.ht

bb.hl:                                            ; preds = %._crit_edge1202
  %.not810 = icmp eq i32 %.2612, 0
  br i1 %.not810, label %bb.hm, label %bb.hq

bb.hm:                                            ; preds = %bb.hl
  %i.qj = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.qk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qj, ptr noundef nonnull @.str.206, i32 noundef %.3616.lcssa, i32 noundef %.3621.lcssa) #11 ; 0 uses
  %i.ql = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.qm = call i64 @BIO_ctrl(ptr noundef %i.ql, i32 noundef 11, i64 noundef 0, ptr noundef null) #11 ; 0 uses
  store i8 0, ptr %i.h, align 1, !tbaa !26
  %i.qn = load ptr, ptr @stdin, align 8, !tbaa !47
  %i.qo = call ptr @fgets(ptr noundef nonnull %i.h, i32 noundef 11, ptr noundef %i.qn)
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.qq = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.qr = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qq, ptr noundef nonnull @.str.207) #11 ; 0 uses
  br label %bb.ki

bb.ho:                                            ; preds = %bb.hm
  %i.qs = load i8, ptr %i.h, align 1, !tbaa !26
  %i.qt = and i8 %i.qs, -33
  %or.cond22.not = icmp eq i8 %i.qt, 89
  br i1 %or.cond22.not, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.qu = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.qv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qu, ptr noundef nonnull @.str.208) #11 ; 0 uses
  br label %bb.ki

bb.hq:                                            ; preds = %bb.ho, %bb.hl
  %i.qw = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.qx = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.nd) #11
  %i.qy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qw, ptr noundef nonnull @.str.209, i32 noundef %i.qx) #11 ; 0 uses
  %.not811 = icmp eq ptr %.0637, null
  br i1 %.not811, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.qz = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ra = call i32 @save_serial(ptr noundef nonnull %.0637, ptr noundef nonnull @.str.177, ptr noundef %i.qz, ptr noundef null) #11
  %.not812 = icmp eq i32 %i.ra, 0
  br i1 %.not812, label %.thread889, label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.rb = call i32 @save_index(ptr noundef nonnull %i.fo, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.fq) #11
  %.not813 = icmp eq i32 %i.rb, 0
  br i1 %.not813, label %.thread889, label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %._crit_edge1202
  %i.rc = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.g, ptr noundef %.2646, i64 noundef 4096) #11 ; 0 uses
  %i.rd = call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.210, i64 noundef 4096) #11 ; 2 uses
  br i1 %.not782, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.re = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.rf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.re, ptr noundef nonnull @.str.211) #11 ; 0 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.rg = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.nd) #11
  %i.rh = icmp sgt i32 %i.rg, 0
  br i1 %i.rh, label %.lr.ph1210, label %._crit_edge1211

.lr.ph1210:                                       ; preds = %bb.hv
  %i.ri = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.rd ; 5 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  %.not7.i = icmp eq i32 %.0604, 0
  br label %bb.hw

bb.hw:                                            ; preds = %.lr.ph1210, %bb.ig
  %.25781208 = phi i32 [ 0, %.lr.ph1210 ], [ %i.tu, %bb.ig ] ; 2 uses
  %i.rl = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.nd, i32 noundef %.25781208) #11 ; 4 uses
  %i.rm = call ptr @X509_get0_serialNumber(ptr noundef %i.rl) #11 ; 2 uses
  %i.rn = call ptr @ASN1_STRING_get0_data(ptr noundef %i.rm) #11 ; 2 uses
  %i.ro = call i32 @ASN1_STRING_length(ptr noundef %i.rm) #11 ; 6 uses
  %i.rp = call i32 @llvm.smax.i32(i32 %i.ro, i32 1)
  %i.rq = shl nuw i32 %i.rp, 1
  %i.rr = add i32 %i.rq, 5
  %i.rs = sext i32 %i.rr to i64
  %i.rt = add i64 %i.rd, %i.rs
  %i.ru = icmp ugt i64 %i.rt, 4096
  br i1 %i.ru, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.rv = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.rw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.rv, ptr noundef nonnull @.str.212) #11 ; 0 uses
  br label %.thread889

bb.hy:                                            ; preds = %bb.hw
  %i.rx = icmp sgt i32 %i.ro, 0
  br i1 %i.rx, label %.preheader967.preheader, label %bb.hz

.preheader967.preheader:                          ; preds = %bb.hy
  %xtraiter = and i32 %i.ro, 1
  %i.ry = icmp eq i32 %i.ro, 1
  br i1 %i.ry, label %.preheader967.epil.preheader, label %.preheader967.preheader.new

.preheader967.preheader.new:                      ; preds = %.preheader967.preheader
  %unroll_iter = and i32 %i.ro, 2147483646
  br label %.preheader967

.preheader967:                                    ; preds = %.preheader967, %.preheader967.preheader.new
  %.05341207 = phi ptr [ %i.ri, %.preheader967.preheader.new ], [ %i.sx, %.preheader967 ] ; 5 uses
  %.05361206 = phi ptr [ %i.rn, %.preheader967.preheader.new ], [ %i.sy, %.preheader967 ] ; 4 uses
  %niter = phi i32 [ 0, %.preheader967.preheader.new ], [ %niter.next.1, %.preheader967 ]
  %i.rz = load i8, ptr %.05361206, align 1, !tbaa !26
  %i.sa = lshr i8 %i.rz, 4
  %i.sb = zext nneg i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr @ca_main.HEX_DIGITS, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !26
  %i.se = getelementptr inbounds nuw i8, ptr %.05341207, i64 1
  store i8 %i.sd, ptr %.05341207, align 1, !tbaa !26
  %i.sf = load i8, ptr %.05361206, align 1, !tbaa !26
  %i.sg = and i8 %i.sf, 15
  %i.sh = zext nneg i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr @ca_main.HEX_DIGITS, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !26
  %i.sk = getelementptr inbounds nuw i8, ptr %.05341207, i64 2
  store i8 %i.sj, ptr %i.se, align 1, !tbaa !26
  %i.sl = getelementptr inbounds nuw i8, ptr %.05361206, i64 1 ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !26
  %i.sn = lshr i8 %i.sm, 4
  %i.so = zext nneg i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr @ca_main.HEX_DIGITS, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !26
  %i.sr = getelementptr inbounds nuw i8, ptr %.05341207, i64 3
  store i8 %i.sq, ptr %i.sk, align 1, !tbaa !26
  %i.ss = load i8, ptr %i.sl, align 1, !tbaa !26
  %i.st = and i8 %i.ss, 15
  %i.su = zext nneg i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr @ca_main.HEX_DIGITS, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !26
  %i.sx = getelementptr inbounds nuw i8, ptr %.05341207, i64 4 ; 3 uses
  store i8 %i.sw, ptr %i.sr, align 1, !tbaa !26
  %i.sy = getelementptr inbounds nuw i8, ptr %.05361206, i64 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader967, !llvm.loop !49

bb.hz:                                            ; preds = %bb.hy
  store i8 48, ptr %i.ri, align 1, !tbaa !26
  store i8 48, ptr %i.rj, align 1, !tbaa !26
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader967
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader967.epil.preheader

.preheader967.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader967.preheader
  %.05341207.epil.init = phi ptr [ %i.ri, %.preheader967.preheader ], [ %i.sx, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.05361206.epil.init = phi ptr [ %i.rn, %.preheader967.preheader ], [ %i.sy, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2148 = trunc i32 %i.ro to i1
  call void @llvm.assume(i1 %lcmp.mod2148)
  %i.sz = load i8, ptr %.05361206.epil.init, align 1, !tbaa !26
  %i.ta = lshr i8 %i.sz, 4
  %i.tb = zext nneg i8 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr @ca_main.HEX_DIGITS, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !26
  %i.te = getelementptr inbounds nuw i8, ptr %.05341207.epil.init, i64 1
  store i8 %i.td, ptr %.05341207.epil.init, align 1, !tbaa !26
  %i.tf = load i8, ptr %.05361206.epil.init, align 1, !tbaa !26
  %i.tg = and i8 %i.tf, 15
  %i.th = zext nneg i8 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr @ca_main.HEX_DIGITS, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !26
  %i.tk = getelementptr inbounds nuw i8, ptr %.05341207.epil.init, i64 2
  store i8 %i.tj, ptr %i.te, align 1, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader967.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.hz
  %.1535 = phi ptr [ %i.rk, %bb.hz ], [ %i.sx, %.loopexit.loopexit.unr-lcssa ], [ %i.tk, %.preheader967.epil.preheader ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.1535, i64 4
  store <4 x i8> <i8 46, i8 112, i8 101, i8 109>, ptr %.1535, align 1, !tbaa !26
  store i8 0, ptr %i.tl, align 1, !tbaa !26
  br i1 %.not782, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %.loopexit
  %i.tm = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.tn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.tm, ptr noundef nonnull @.str.213, ptr noundef nonnull %i.g) #11 ; 0 uses
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.loopexit
  %i.to = call ptr @bio_open_default(ptr noundef %.0642, i8 noundef signext 119, i32 noundef %.not830) #11 ; 4 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %.thread889, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.tq = call ptr @BIO_new_file(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.214) #11 ; 4 uses
  %i.tr = icmp eq ptr %i.tq, null
  br i1 %i.tr, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call void @perror(ptr noundef nonnull %i.g) #13
  br label %.thread889
end_hunk_0
