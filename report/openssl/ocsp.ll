Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ocsp?download=true
inline.NumInlined: 32
inline.NumDeleted: 14
begin_hunk_0_@ocsp_main:bb.a
  %.0312.lcssa133214521514 = phi ptr [ %.1313, %bb.cw ], [ %.1313, %bb.cx ], [ null, %._crit_edge.thread ]
  %.0314.lcssa133114531513 = phi ptr [ %.1315, %bb.cw ], [ %.1315, %bb.cx ], [ null, %._crit_edge.thread ]
  %.0318.lcssa132914551512 = phi ptr [ %.1319, %bb.cw ], [ %.1319, %bb.cx ], [ null, %._crit_edge.thread ]
  %.0320.lcssa132814561511 = phi ptr [ %.1321, %bb.cw ], [ %.1321, %bb.cx ], [ null, %._crit_edge.thread ]
  %.0322.lcssa132714571510 = phi ptr [ %.1323, %bb.cw ], [ %.1323, %bb.cx ], [ null, %._crit_edge.thread ]
  %.0333.lcssa132514581509 = phi ptr [ %.1334, %bb.cw ], [ %.1334, %bb.cx ], [ null, %._crit_edge.thread ] ; 33 uses
  %.0338.lcssa132414591508 = phi ptr [ %.2340, %bb.cw ], [ %.2340, %bb.cx ], [ null, %._crit_edge.thread ] ; 35 uses
  %.0358.lcssa132114601507 = phi ptr [ %.2360, %bb.cw ], [ %.2360, %bb.cx ], [ null, %._crit_edge.thread ] ; 34 uses
  %i.gb = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null                 ; 3 uses
  %i.gd = icmp eq ptr %.0306.lcssa133514491517, null
  %or.cond = select i1 %i.gc, i1 %i.gd, i1 false
  %i.ge = icmp eq ptr %.0304.lcssa133614481518, null ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 %i.ge, i1 false
  br i1 %or.cond3, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread1461
  %i.gf = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.gg = icmp ne ptr %i.gf, null
  %i.gh = icmp ne ptr %.0298.lcssa133914451521, null
  %or.cond5 = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %or.cond5, label %.thread476, label %.loopexit

.thread476:                                       ; preds = %bb.cy
  %.not499 = icmp eq i32 %.0260.lcssa135814291537, 2
  %spec.store.select34478 = select i1 %.not499, i32 2, i32 0
  br label %bb.dd

bb.cz:                                            ; preds = %.thread1461
  %i.gi = icmp ne i32 %.0260.lcssa135814291537, 2
  %or.cond7 = select i1 %i.gc, i1 %i.gi, i1 false
  %spec.store.select34 = select i1 %or.cond7, i32 0, i32 %.0260.lcssa135814291537 ; 2 uses
  %i.gj = icmp ne ptr %.0306.lcssa133514491517, null
  %or.cond9 = select i1 %i.gc, i1 %i.gj, i1 false
  br i1 %or.cond9, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.gk = call ptr @bio_open_default(ptr noundef nonnull %.0306.lcssa133514491517, i8 noundef signext 114, i32 noundef 4) #10 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %add_ocsp_serial.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gm = call ptr @ASN1_d2i_bio(ptr noundef nonnull @OCSP_REQUEST_new, ptr noundef nonnull @d2i_OCSP_REQUEST, ptr noundef nonnull %i.gk, ptr noundef null) #10
  store ptr %i.gm, ptr %i.d, align 8, !tbaa !32
  %i.gn = call i32 @BIO_free(ptr noundef nonnull %i.gk) #10 ; 0 uses
  %i.go = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.dc, label %.thread1550

bb.dc:                                            ; preds = %bb.db
  %i.gq = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.gr = call i32 @BIO_puts(ptr noundef %i.gq, ptr noundef nonnull @.str.206) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dd:                                            ; preds = %.thread476, %bb.cz
  %spec.store.select34480 = phi i32 [ %spec.store.select34478, %.thread476 ], [ %spec.store.select34, %bb.cz ] ; 2 uses
  %i.gs = icmp eq ptr %i.gb, null
  %i.gt = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.gu = icmp ne ptr %i.gt, null
  %or.cond11 = select i1 %i.gs, i1 %i.gu, i1 false
  br i1 %or.cond11, label %bb.de, label %.thread1550

bb.de:                                            ; preds = %bb.dd
  %i.gv = load ptr, ptr @prog, align 8, !tbaa !15
  %i.gw = call ptr @http_server_init(ptr noundef %i.gv, ptr noundef nonnull %i.gt, i32 noundef -1) #10 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %add_ocsp_serial.exit.thread, label %.thread1550

.thread1550:                                      ; preds = %bb.db, %bb.de, %bb.dd
  %spec.store.select344801553 = phi i32 [ %spec.store.select34480, %bb.de ], [ %spec.store.select34480, %bb.dd ], [ %spec.store.select34, %bb.db ] ; 2 uses
  %.0365 = phi ptr [ %i.gw, %bb.de ], [ null, %bb.dd ], [ null, %bb.db ] ; 30 uses
  %.not420 = icmp eq ptr %.0296.lcssa134014441522, null
  br i1 %.not420, label %bb.dn, label %bb.df

bb.df:                                            ; preds = %.thread1550
  %i.gy = icmp eq ptr %.0293.lcssa134114431523, null
  %spec.select = select i1 %i.gy, ptr %.0296.lcssa134014441522, ptr %.0293.lcssa134114431523
  %i.gz = call ptr @load_cert_pass(ptr noundef nonnull %.0296.lcssa134014441522, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.207) #10 ; 6 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.hb = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.hc = call i32 @BIO_puts(ptr noundef %i.hb, ptr noundef nonnull @.str.208) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dh:                                            ; preds = %bb.df
  %i.hd = call i32 @load_certs(ptr noundef %.0308.lcssa133414501516, i32 noundef 0, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef nonnull @.str.29) #10
  %.not421 = icmp eq i32 %i.hd, 0
  br i1 %.not421, label %add_ocsp_serial.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not422 = icmp eq ptr %.0285.lcssa134514391527, null
  br i1 %.not422, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.he = call i32 @load_certs(ptr noundef nonnull %.0285.lcssa134514391527, i32 noundef 0, ptr noundef nonnull %i.i, ptr noundef null, ptr noundef nonnull @.str.209) #10
  %.not423 = icmp eq i32 %i.he, 0
  br i1 %.not423, label %add_ocsp_serial.exit.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.hf = call i32 @app_passwd(ptr noundef %.0291.lcssa134214421524, ptr noundef null, ptr noundef nonnull %i.o, ptr noundef null) #10
  %.not424 = icmp eq i32 %i.hf, 0
  br i1 %.not424, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.hg = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.hh = call i32 @BIO_puts(ptr noundef %i.hg, ptr noundef nonnull @.str.210) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dm:                                            ; preds = %bb.dk
  %i.hi = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.hj = call ptr @load_key(ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef 0, ptr noundef %i.hi, ptr noundef nonnull @.str.211) #10 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %add_ocsp_serial.exit.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.thread1550
  %.0344 = phi ptr [ %i.hj, %bb.dm ], [ null, %.thread1550 ] ; 26 uses
  %.0327 = phi ptr [ %i.gz, %bb.dm ], [ null, %.thread1550 ] ; 26 uses
  %i.hl = icmp ne ptr %.0298.lcssa133914451521, null ; 3 uses
  br i1 %i.hl, label %bb.do, label %.critedge

bb.do:                                            ; preds = %bb.dn
  %i.hm = icmp eq ptr %.0344, null
  %i.hn = icmp eq ptr %.0327, null
  %or.cond13 = or i1 %i.hm, %i.hn
  %i.ho = load ptr, ptr %i.j, align 8
  %i.hp = icmp eq ptr %i.ho, null
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.hp
  br i1 %or.cond15, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.hq = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.hr = call i32 @BIO_puts(ptr noundef %i.hq, ptr noundef nonnull @.str.212) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dq:                                            ; preds = %bb.do
  %i.hs = call ptr @load_index(ptr noundef nonnull %.0298.lcssa133914451521, ptr noundef null) #10 ; 4 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.hu = call i32 @index_index(ptr noundef nonnull %i.hs) #10
  %i.hv = icmp slt i32 %i.hu, 1
  br i1 %i.hv, label %bb.ds, label %.critedge

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.hw = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.hx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hw, ptr noundef nonnull @.str.213, ptr noundef nonnull %.0298.lcssa133914451521) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

.critedge:                                        ; preds = %bb.dn, %bb.dr
  %.0350 = phi ptr [ %i.hs, %bb.dr ], [ null, %bb.dn ]
  %i.hy = load i32, ptr @n_responders, align 4, !tbaa !16
  %i.hz = icmp ne i32 %i.hy, 0
  %i.ia = icmp ne ptr %.0365, null                ; 4 uses
  %or.cond17 = and i1 %i.ia, %i.hz
  br i1 %or.cond17, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.critedge
  %i.ib = load ptr, ptr @prog, align 8, !tbaa !15
  call void @spawn_loop(ptr noundef %i.ib) #10
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.critedge
  %i.ic = icmp sgt i32 %.0239.lcssa136714201546, 0
  %or.cond19 = select i1 %i.ia, i1 %i.ic, i1 false
  br i1 %or.cond19, label %.thread481, label %bb.dv

.thread481:                                       ; preds = %bb.du
  %i.id = call ptr @signal(i32 noundef 14, ptr noundef nonnull @socket_timeout) #10 ; 0 uses
  br label %bb.dw

bb.dv:                                            ; preds = %bb.du
  br i1 %i.ia, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.thread481, %bb.dv
  %i.ie = load ptr, ptr @prog, align 8, !tbaa !15
  call void (i32, ptr, i32, ptr, ...) @trace_log_message(i32 noundef -1, ptr noundef %i.ie, i32 noundef 6, ptr noundef nonnull @.str.214) #10
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.if = icmp ne ptr %.0283.lcssa134614381528, null
  %i.ig = icmp ne ptr %.0302.lcssa133714471519, null
  %or.cond21 = select i1 %i.if, i1 true, i1 %i.ig
  %i.ih = icmp ne i32 %spec.store.select344801553, 0
  %.not500 = icmp eq i32 %spec.store.select344801553, 0
  %.not428 = icmp eq ptr %.0283.lcssa134614381528, null
  %.not429 = icmp eq ptr %.0289.lcssa134314411525, null
  %.not432 = icmp eq ptr %.0302.lcssa133714471519, null
  %.not438 = icmp eq ptr %.0300.lcssa133814461520, null
  br label %.outer

.outer:                                           ; preds = %bb.fr, %bb.dx
  %.0362.ph = phi ptr [ %.1363, %bb.fr ], [ null, %bb.dx ] ; 9 uses
  %.1351.ph = phi ptr [ %.5355, %bb.fr ], [ %.0350, %bb.dx ] ; 4 uses
  %.0346.ph = phi ptr [ %.2348, %bb.fr ], [ null, %bb.dx ] ; 9 uses
  %.0329.ph = phi ptr [ %.2331, %bb.fr ], [ null, %bb.dx ] ; 7 uses
  %.2281.ph = phi ptr [ %.5, %bb.fr ], [ %.0279.lcssa134714371529, %bb.dx ] ; 7 uses
  %.2.ph = phi i32 [ %.3, %bb.fr ], [ %.0262.lcssa135714301536, %bb.dx ] ; 3 uses
  br i1 %i.ia, label %.outer.split.us, label %2

.outer.split.us:                                  ; preds = %.outer, %bb.ec
  %.1351.us = phi ptr [ %.3353.us, %bb.ec ], [ %.1351.ph, %.outer ] ; 4 uses
  %i.ii = call fastcc i32 @index_changed(ptr noundef %.1351.us)
  %.not425.us = icmp eq i32 %i.ii, 0
  br i1 %.not425.us, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %.outer.split.us
  %i.ij = call ptr @load_index(ptr noundef %.0298.lcssa133914451521, ptr noundef null) #10 ; 4 uses
  %.not426.us = icmp eq ptr %i.ij, null
  br i1 %.not426.us, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ik = call i32 @index_index(ptr noundef nonnull %i.ij) #10
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @free_index(ptr noundef %.1351.us) #10
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz, %bb.dy
  call void @free_index(ptr noundef %i.ij) #10
  %i.im = load ptr, ptr @prog, align 8, !tbaa !15
  call void (i32, ptr, i32, ptr, ...) @trace_log_message(i32 noundef -1, ptr noundef %i.im, i32 noundef 3, ptr noundef nonnull @.str.215, ptr noundef %.0298.lcssa133914451521) #10
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb, %.outer.split.us
  %.3353.us = phi ptr [ %.1351.us, %.outer.split.us ], [ %i.ij, %bb.ea ], [ %.1351.us, %bb.eb ] ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.in = call fastcc i32 @do_responder(ptr noundef %i.d, ptr noundef %i.a, ptr noundef %.0365, i32 noundef %.0239.lcssa136714201546) ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %.outer.split.us, label %.outer.split

.outer.split:                                     ; preds = %bb.ec
  %.pr.a = load ptr, ptr %i.d, align 8, !tbaa !32 ; 2 uses
  %i.ip = icmp eq ptr %.pr.a, null
  br i1 %i.ip, label %bb.ed, label %.thread482

bb.ed:                                            ; preds = %.outer.split
  %i.iq = icmp eq i32 %i.in, 1
  br i1 %i.iq, label %bb.ee, label %bb.fg

bb.ee:                                            ; preds = %bb.ed
  %i.ir = call ptr @OCSP_response_create(i32 noundef 1, ptr noundef null) #10 ; 3 uses
  store ptr %i.ir, ptr %i.e, align 8, !tbaa !13
  %.not437 = icmp eq ptr %i.ir, null
  br i1 %.not437, label %bb.fg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.is = load ptr, ptr %i.a, align 8, !tbaa !11
  call fastcc void @send_ocsp_response(ptr noundef %i.is, ptr noundef %i.ir)
  br label %bb.fg

2:                                                ; preds = %.outer
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %3 = icmp eq ptr %.pr, null
  br i1 %3, label %bb.eg, label %.thread482

bb.eg:                                            ; preds = %2
  %i.it = load ptr, ptr %i.l, align 8
  %i.iu = icmp ne ptr %i.it, null
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %i.iu
  %or.cond25 = select i1 %or.cond23, i1 true, i1 %i.ih
  %or.cond27 = or i1 %i.hl, %or.cond25
  br i1 %or.cond27, label %bb.eh, label %.thread489

bb.eh:                                            ; preds = %bb.eg
  %i.iv = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.iw = call i32 @BIO_puts(ptr noundef %i.iv, ptr noundef nonnull @.str.216) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

.thread482:                                       ; preds = %.outer.split, %2
  %.4354484 = phi ptr [ %.1351.ph, %2 ], [ %.3353.us, %.outer.split ] ; 7 uses
  %i.ix = phi ptr [ %.pr, %2 ], [ %.pr.a, %.outer.split ]
  br i1 %.not500, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.thread482
  %i.iy = call i32 @OCSP_request_add1_nonce(ptr noundef nonnull %i.ix, ptr noundef null, i32 noundef -1) #10
  %.not427 = icmp eq i32 %i.iy, 0
  br i1 %.not427, label %add_ocsp_serial.exit.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.thread482
  br i1 %.not428, label %.thread489, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.iz = icmp eq ptr %.2281.ph, null
  %spec.select465 = select i1 %i.iz, ptr %.0283.lcssa134614381528, ptr %.2281.ph ; 2 uses
  %i.ja = call ptr @load_cert_pass(ptr noundef nonnull %.0283.lcssa134614381528, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.217) #10 ; 6 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.jc = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.jd = call i32 @BIO_puts(ptr noundef %i.jc, ptr noundef nonnull @.str.218) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.em:                                            ; preds = %bb.ek
  br i1 %.not429, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.je = call i32 @load_certs(ptr noundef nonnull %.0289.lcssa134314411525, i32 noundef 0, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef nonnull @.str.219) #10
  %.not430 = icmp eq i32 %i.je, 0
  br i1 %.not430, label %add_ocsp_serial.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.jf = call ptr @load_key(ptr noundef nonnull %spec.select465, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.220) #10 ; 4 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %add_ocsp_serial.exit.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.jh = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.ji = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.jj = call i32 @OCSP_request_sign(ptr noundef %i.jh, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.jf, ptr noundef null, ptr noundef %i.ji, i64 noundef %.0237.lcssa136814191547) #10
  %.not431 = icmp eq i32 %i.jj, 0
  br i1 %.not431, label %bb.eq, label %.thread489

bb.eq:                                            ; preds = %bb.ep
  %i.jk = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.jl = call i32 @BIO_puts(ptr noundef %i.jk, ptr noundef nonnull @.str.221) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

.thread489:                                       ; preds = %bb.eg, %bb.ep, %bb.ej
  %.4354484488492 = phi ptr [ %.4354484, %bb.ep ], [ %.4354484, %bb.ej ], [ %.1351.ph, %bb.eg ] ; 7 uses
  %.1347 = phi ptr [ %i.jf, %bb.ep ], [ %.0346.ph, %bb.ej ], [ %.0346.ph, %bb.eg ] ; 11 uses
  %.1330 = phi ptr [ %i.ja, %bb.ep ], [ %.0329.ph, %bb.ej ], [ %.0329.ph, %bb.eg ] ; 11 uses
  %.4 = phi ptr [ %spec.select465, %bb.ep ], [ %.2281.ph, %bb.ej ], [ %.2281.ph, %bb.eg ] ; 4 uses
  %i.jm = call ptr @bio_open_default(ptr noundef %.0314.lcssa133114531513, i8 noundef signext 119, i32 noundef 32769) #10 ; 12 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %add_ocsp_serial.exit.thread, label %bb.er

bb.er:                                            ; preds = %.thread489
  %i.jo = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.jp = icmp ne ptr %i.jo, null
  %or.cond31 = select i1 %.0245.lcssa136514221544, i1 %i.jp, i1 false
  br i1 %or.cond31, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.jq = call i32 @OCSP_REQUEST_print(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.jo, i64 noundef 0) #10 ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  br i1 %.not432, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jr = call ptr @bio_open_default(ptr noundef nonnull %.0302.lcssa133714471519, i8 noundef signext 119, i32 noundef 4) #10 ; 3 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %add_ocsp_serial.exit.thread, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.ju = call i32 @ASN1_i2d_bio(ptr noundef nonnull @i2d_OCSP_REQUEST, ptr noundef nonnull %i.jr, ptr noundef %i.jt) #10 ; 0 uses
  %i.jv = call i32 @BIO_free(ptr noundef nonnull %i.jr) #10 ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.et
  %.not433 = icmp eq ptr %.4354484488492, null
  br i1 %.not433, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.jw = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.jx = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.jy = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.jz = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.ka = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.kb = load ptr, ptr %i.k, align 8, !tbaa !30
  call fastcc void @make_ocsp_response(ptr noundef %i.jw, ptr noundef %i.e, ptr noundef %i.jx, ptr noundef %.4354484488492, ptr noundef %i.jy, ptr noundef %.0327, ptr noundef %.0344, ptr noundef %i.jz, ptr noundef %.0358.lcssa132114601507, ptr noundef %i.ka, i64 noundef %.0.lcssa137014171549, i32 noundef %.0249.lcssa136314241542, i32 noundef %.0247.lcssa136414231543, i32 noundef %.0254.lcssa136114261540, ptr noundef %i.kb)
  %i.kc = load ptr, ptr %i.e, align 8, !tbaa !13  ; 2 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %add_ocsp_serial.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not436 = icmp eq ptr %i.ke, null
  br i1 %.not436, label %bb.fg, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call fastcc void @send_ocsp_response(ptr noundef nonnull %i.ke, ptr noundef %i.kc)
  br label %bb.fg

bb.fa:                                            ; preds = %bb.ew
  %i.kf = load ptr, ptr %i.l, align 8, !tbaa !15  ; 2 uses
  %.not434 = icmp eq ptr %i.kf, null
  br i1 %.not434, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.kh = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.ki = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.kj = load i32, ptr %i.p, align 4, !tbaa !16
  %i.kk = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.kl = call ptr @process_responder(ptr noundef %i.kg, ptr noundef nonnull %i.kf, ptr noundef %i.kh, ptr noundef %i.ki, ptr noundef %.0312.lcssa133214521514, ptr noundef %.0310.lcssa133314511515, i32 noundef %i.kj, ptr noundef %i.kk, i32 noundef %.0239.lcssa136714201546) ; 2 uses
  store ptr %i.kl, ptr %i.e, align 8, !tbaa !13
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %add_ocsp_serial.exit.thread, label %bb.fg

bb.fc:                                            ; preds = %bb.fa
  br i1 %i.ge, label %add_ocsp_serial.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.kn = call ptr @bio_open_default(ptr noundef nonnull %.0304.lcssa133614481518, i8 noundef signext 114, i32 noundef 4) #10 ; 3 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %add_ocsp_serial.exit.thread, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.kp = call ptr @ASN1_d2i_bio(ptr noundef nonnull @OCSP_RESPONSE_new, ptr noundef nonnull @d2i_OCSP_RESPONSE, ptr noundef nonnull %i.kn, ptr noundef null) #10 ; 2 uses
  store ptr %i.kp, ptr %i.e, align 8, !tbaa !13
  %i.kq = call i32 @BIO_free(ptr noundef nonnull %i.kn) #10 ; 0 uses
  %i.kr = icmp eq ptr %i.kp, null
  br i1 %i.kr, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.ks = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.kt = call i32 @BIO_puts(ptr noundef %i.ks, ptr noundef nonnull @.str.222) #10 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.fg:                                            ; preds = %bb.ez, %bb.ey, %bb.fe, %bb.fb, %bb.ed, %bb.ef, %bb.ee
  %.1363 = phi ptr [ %.0362.ph, %bb.ef ], [ %.0362.ph, %bb.ee ], [ %.0362.ph, %bb.ed ], [ %i.jm, %bb.ez ], [ %i.jm, %bb.ey ], [ %i.jm, %bb.fb ], [ %i.jm, %bb.fe ] ; 13 uses
  %.5355 = phi ptr [ %.3353.us, %bb.ef ], [ %.3353.us, %bb.ee ], [ %.3353.us, %bb.ed ], [ %.4354484488492, %bb.ez ], [ %.4354484488492, %bb.ey ], [ null, %bb.fb ], [ null, %bb.fe ] ; 10 uses
  %.2348 = phi ptr [ %.0346.ph, %bb.ef ], [ %.0346.ph, %bb.ee ], [ %.0346.ph, %bb.ed ], [ %.1347, %bb.ez ], [ %.1347, %bb.ey ], [ %.1347, %bb.fb ], [ %.1347, %bb.fe ] ; 10 uses
  %.2331 = phi ptr [ %.0329.ph, %bb.ef ], [ %.0329.ph, %bb.ee ], [ %.0329.ph, %bb.ed ], [ %.1330, %bb.ez ], [ %.1330, %bb.ey ], [ %.1330, %bb.fb ], [ %.1330, %bb.fe ] ; 10 uses
  %.5 = phi ptr [ %.2281.ph, %bb.ef ], [ %.2281.ph, %bb.ee ], [ %.2281.ph, %bb.ed ], [ %.4, %bb.ez ], [ %.4, %bb.ey ], [ %.4, %bb.fb ], [ %.4, %bb.fe ]
  br i1 %.not438, label %thread-pre-split493, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ku = call ptr @bio_open_default(ptr noundef nonnull %.0300.lcssa133814461520, i8 noundef signext 119, i32 noundef 4) #10 ; 3 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %add_ocsp_serial.exit.thread, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.kw = load ptr, ptr %i.e, align 8, !tbaa !13  ; 2 uses
  %i.kx = call i32 @ASN1_i2d_bio(ptr noundef nonnull @i2d_OCSP_RESPONSE, ptr noundef nonnull %i.ku, ptr noundef %i.kw) #10 ; 0 uses
  %i.ky = call i32 @BIO_free(ptr noundef nonnull %i.ku) #10 ; 0 uses
  br label %bb.fj

thread-pre-split493:                              ; preds = %bb.fg
  %.pr494 = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %bb.fj

bb.fj:                                            ; preds = %thread-pre-split493, %bb.fi
  %i.kz = phi ptr [ %.pr494, %thread-pre-split493 ], [ %i.kw, %bb.fi ] ; 2 uses
  %.not439 = icmp eq ptr %i.kz, null
  br i1 %.not439, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.la = call i32 @OCSP_response_status(ptr noundef nonnull %i.kz) #10 ; 3 uses
  %.not440 = icmp eq i32 %i.la, 0
  br i1 %.not440, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.lb = sext i32 %i.la to i64
  %i.lc = call ptr @OCSP_response_status_str(i64 noundef %i.lb) #10
  %i.ld = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %.1363, ptr noundef nonnull @.str.223, ptr noundef %i.lc, i32 noundef %i.la) #10 ; 0 uses
  br i1 %.0251.lcssa136214251541, label %add_ocsp_serial.exit.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  br i1 %.0243.lcssa136614211545, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.le = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.lf = call i32 @OCSP_RESPONSE_print(ptr noundef %.1363, ptr noundef %i.le, i64 noundef 0) #10 ; 0 uses
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fn, %bb.fj
  %i.lg = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not443 = icmp eq ptr %i.lg, null
  br i1 %.not443, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %.not451 = icmp eq i32 %.2.ph, -1
  br i1 %.not451, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.lh = add nsw i32 %.2.ph, -1
  %i.li = icmp slt i32 %.2.ph, 2
end_hunk_0
