Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ocsp?download=true
inline.NumInlined: 32
inline.NumDeleted: 14
begin_hunk_0_@ocsp_main:bb.a
  %.0311.lcssa126813881450 = phi ptr [ %.1312, %bb.cv ], [ %.1312, %bb.cw ], [ null, %._crit_edge.thread ]
  %.0313.lcssa126713891449 = phi ptr [ %.1314, %bb.cv ], [ %.1314, %bb.cw ], [ null, %._crit_edge.thread ]
  %.0317.lcssa126513911448 = phi ptr [ %.1318, %bb.cv ], [ %.1318, %bb.cw ], [ null, %._crit_edge.thread ]
  %.0319.lcssa126413921447 = phi ptr [ %.1320, %bb.cv ], [ %.1320, %bb.cw ], [ null, %._crit_edge.thread ]
  %.0321.lcssa126313931446 = phi ptr [ %.1322, %bb.cv ], [ %.1322, %bb.cw ], [ null, %._crit_edge.thread ]
  %.0332.lcssa126113941445 = phi ptr [ %.1333, %bb.cv ], [ %.1333, %bb.cw ], [ null, %._crit_edge.thread ] ; 33 uses
  %.0337.lcssa126013951444 = phi ptr [ %.2339, %bb.cv ], [ %.2339, %bb.cw ], [ null, %._crit_edge.thread ] ; 35 uses
  %.0357.lcssa125713961443 = phi ptr [ %.2359, %bb.cv ], [ %.2359, %bb.cw ], [ null, %._crit_edge.thread ] ; 34 uses
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null                 ; 3 uses
  %i.fz = icmp eq ptr %.0305.lcssa127113851453, null
  %or.cond = select i1 %i.fy, i1 %i.fz, i1 false
  %i.ga = icmp eq ptr %.0303.lcssa127213841454, null ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 %i.ga, i1 false
  br i1 %or.cond3, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.thread1397
  %i.gb = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.gc = icmp ne ptr %i.gb, null
  %i.gd = icmp ne ptr %.0297.lcssa127513811457, null
  %or.cond5 = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond5, label %.thread475, label %.loopexit

.thread475:                                       ; preds = %bb.cx
  %.not498 = icmp eq i32 %.0259.lcssa129413651473, 2
  %spec.store.select34477 = select i1 %.not498, i32 2, i32 0
  br label %bb.dc

bb.cy:                                            ; preds = %.thread1397
  %i.ge = icmp ne i32 %.0259.lcssa129413651473, 2
  %or.cond7 = select i1 %i.fy, i1 %i.ge, i1 false
  %spec.store.select34 = select i1 %or.cond7, i32 0, i32 %.0259.lcssa129413651473 ; 2 uses
  %i.gf = icmp ne ptr %.0305.lcssa127113851453, null
  %or.cond9 = select i1 %i.fy, i1 %i.gf, i1 false
  br i1 %or.cond9, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.gg = call ptr @bio_open_default(ptr noundef nonnull %.0305.lcssa127113851453, i8 noundef signext 114, i32 noundef 4) #9 ; 3 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %add_ocsp_serial.exit.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gi = call ptr @ASN1_d2i_bio(ptr noundef nonnull @OCSP_REQUEST_new, ptr noundef nonnull @d2i_OCSP_REQUEST, ptr noundef nonnull %i.gg, ptr noundef null) #9
  store ptr %i.gi, ptr %i.d, align 8, !tbaa !33
  %i.gj = call i32 @BIO_free(ptr noundef nonnull %i.gg) #9 ; 0 uses
  %i.gk = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.db, label %.thread1486

bb.db:                                            ; preds = %bb.da
  %i.gm = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.gn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gm, ptr noundef nonnull @.str.206) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dc:                                            ; preds = %.thread475, %bb.cy
  %spec.store.select34479 = phi i32 [ %spec.store.select34477, %.thread475 ], [ %spec.store.select34, %bb.cy ] ; 2 uses
  %i.go = icmp eq ptr %i.fx, null
  %i.gp = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.gq = icmp ne ptr %i.gp, null
  %or.cond11 = select i1 %i.go, i1 %i.gq, i1 false
  br i1 %or.cond11, label %bb.dd, label %.thread1486

bb.dd:                                            ; preds = %bb.dc
  %i.gr = load ptr, ptr @prog, align 8, !tbaa !16
  %i.gs = call ptr @http_server_init(ptr noundef %i.gr, ptr noundef nonnull %i.gp, i32 noundef -1) #9 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %add_ocsp_serial.exit.thread, label %.thread1486

.thread1486:                                      ; preds = %bb.da, %bb.dd, %bb.dc
  %spec.store.select344791489 = phi i32 [ %spec.store.select34479, %bb.dd ], [ %spec.store.select34479, %bb.dc ], [ %spec.store.select34, %bb.da ] ; 2 uses
  %.0364 = phi ptr [ %i.gs, %bb.dd ], [ null, %bb.dc ], [ null, %bb.da ] ; 30 uses
  %.not419 = icmp eq ptr %.0295.lcssa127613801458, null
  br i1 %.not419, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %.thread1486
  %i.gu = icmp eq ptr %.0292.lcssa127713791459, null
  %spec.select = select i1 %i.gu, ptr %.0295.lcssa127613801458, ptr %.0292.lcssa127713791459
  %i.gv = call ptr @load_cert_pass(ptr noundef nonnull %.0295.lcssa127613801458, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.207) #9 ; 6 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.gx = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.gy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.gx, ptr noundef nonnull @.str.208) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.gz = call i32 @load_certs(ptr noundef %.0307.lcssa127013861452, i32 noundef 0, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef nonnull @.str.29) #9
  %.not420 = icmp eq i32 %i.gz, 0
  br i1 %.not420, label %add_ocsp_serial.exit.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.not421 = icmp eq ptr %.0284.lcssa128113751463, null
  br i1 %.not421, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ha = call i32 @load_certs(ptr noundef nonnull %.0284.lcssa128113751463, i32 noundef 0, ptr noundef nonnull %i.i, ptr noundef null, ptr noundef nonnull @.str.209) #9
  %.not422 = icmp eq i32 %i.ha, 0
  br i1 %.not422, label %add_ocsp_serial.exit.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.hb = call i32 @app_passwd(ptr noundef %.0290.lcssa127813781460, ptr noundef null, ptr noundef nonnull %i.o, ptr noundef null) #9
  %.not423 = icmp eq i32 %i.hb, 0
  br i1 %.not423, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.hc = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.hd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hc, ptr noundef nonnull @.str.210) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dl:                                            ; preds = %bb.dj
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.hf = call ptr @load_key(ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef 0, ptr noundef %i.he, ptr noundef null, ptr noundef nonnull @.str.211) #9 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %add_ocsp_serial.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.thread1486
  %.0343 = phi ptr [ %i.hf, %bb.dl ], [ null, %.thread1486 ] ; 26 uses
  %.0326 = phi ptr [ %i.gv, %bb.dl ], [ null, %.thread1486 ] ; 26 uses
  %i.hh = icmp ne ptr %.0297.lcssa127513811457, null ; 3 uses
  br i1 %i.hh, label %bb.dn, label %.critedge

bb.dn:                                            ; preds = %bb.dm
  %i.hi = icmp eq ptr %.0343, null
  %i.hj = icmp eq ptr %.0326, null
  %or.cond13 = or i1 %i.hi, %i.hj
  %i.hk = load ptr, ptr %i.j, align 8
  %i.hl = icmp eq ptr %i.hk, null
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.hl
  br i1 %or.cond15, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.hm = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.hn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hm, ptr noundef nonnull @.str.212) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.dp:                                            ; preds = %bb.dn
  %i.ho = call ptr @load_index(ptr noundef nonnull %.0297.lcssa127513811457, ptr noundef null) #9 ; 4 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.hq = call i32 @index_index(ptr noundef nonnull %i.ho) #9
  %i.hr = icmp slt i32 %i.hq, 1
  br i1 %i.hr, label %bb.dr, label %.critedge

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.hs = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.ht = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.hs, ptr noundef nonnull @.str.213, ptr noundef nonnull %.0297.lcssa127513811457) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

.critedge:                                        ; preds = %bb.dm, %bb.dq
  %.0349 = phi ptr [ %i.ho, %bb.dq ], [ null, %bb.dm ]
  %i.hu = load i32, ptr @n_responders, align 4, !tbaa !17
  %i.hv = icmp ne i32 %i.hu, 0
  %i.hw = icmp ne ptr %.0364, null                ; 4 uses
  %or.cond17 = and i1 %i.hw, %i.hv
  br i1 %or.cond17, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.critedge
  %i.hx = load ptr, ptr @prog, align 8, !tbaa !16
  call void @spawn_loop(ptr noundef %i.hx) #9
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.critedge
  %i.hy = icmp sgt i32 %.0238.lcssa130313561482, 0
  %or.cond19 = select i1 %i.hw, i1 %i.hy, i1 false
  br i1 %or.cond19, label %.thread480, label %bb.du

.thread480:                                       ; preds = %bb.dt
  %i.hz = call ptr @signal(i32 noundef 14, ptr noundef nonnull @socket_timeout) #9 ; 0 uses
  br label %bb.dv

bb.du:                                            ; preds = %bb.dt
  br i1 %i.hw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.thread480, %bb.du
  %i.ia = load ptr, ptr @prog, align 8, !tbaa !16
  call void (i32, ptr, i32, ptr, ...) @trace_log_message(i32 noundef -1, ptr noundef %i.ia, i32 noundef 6, ptr noundef nonnull @.str.214) #9
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ib = icmp ne ptr %.0282.lcssa128213741464, null
  %i.ic = icmp ne ptr %.0301.lcssa127313831455, null
  %or.cond21 = select i1 %i.ib, i1 true, i1 %i.ic
  %i.id = icmp ne i32 %spec.store.select344791489, 0
  %.not499 = icmp eq i32 %spec.store.select344791489, 0
  %.not427 = icmp eq ptr %.0282.lcssa128213741464, null
  %.not428 = icmp eq ptr %.0288.lcssa127913771461, null
  %.not431 = icmp eq ptr %.0301.lcssa127313831455, null
  %.not437 = icmp eq ptr %.0299.lcssa127413821456, null
  br label %.outer

.outer:                                           ; preds = %bb.fq, %bb.dw
  %.0361.ph = phi ptr [ %.1362, %bb.fq ], [ null, %bb.dw ] ; 9 uses
  %.1350.ph = phi ptr [ %.5354, %bb.fq ], [ %.0349, %bb.dw ] ; 4 uses
  %.0345.ph = phi ptr [ %.2347, %bb.fq ], [ null, %bb.dw ] ; 9 uses
  %.0328.ph = phi ptr [ %.2330, %bb.fq ], [ null, %bb.dw ] ; 7 uses
  %.2280.ph = phi ptr [ %.5, %bb.fq ], [ %.0278.lcssa128313731465, %bb.dw ] ; 7 uses
  %.2.ph = phi i32 [ %.3, %bb.fq ], [ %.0261.lcssa129313661472, %bb.dw ] ; 3 uses
  br i1 %i.hw, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %bb.eb
  %.1350.us = phi ptr [ %.3352.us, %bb.eb ], [ %.1350.ph, %.outer ] ; 4 uses
  %i.ie = call fastcc i32 @index_changed(ptr noundef %.1350.us)
  %.not424.us = icmp eq i32 %i.ie, 0
  br i1 %.not424.us, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %.outer.split.us
  %i.if = call ptr @load_index(ptr noundef %.0297.lcssa127513811457, ptr noundef null) #9 ; 4 uses
  %.not425.us = icmp eq ptr %i.if, null
  br i1 %.not425.us, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ig = call i32 @index_index(ptr noundef nonnull %i.if) #9
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @free_index(ptr noundef %.1350.us) #9
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy, %bb.dx
  call void @free_index(ptr noundef %i.if) #9
  %i.ii = load ptr, ptr @prog, align 8, !tbaa !16
  call void (i32, ptr, i32, ptr, ...) @trace_log_message(i32 noundef -1, ptr noundef %i.ii, i32 noundef 3, ptr noundef nonnull @.str.215, ptr noundef %.0297.lcssa127513811457) #9
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %.outer.split.us
  %.3352.us = phi ptr [ %.1350.us, %.outer.split.us ], [ %i.if, %bb.dz ], [ %.1350.us, %bb.ea ] ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !33
  %i.ij = call fastcc i32 @do_responder(ptr noundef %i.d, ptr noundef %i.a, ptr noundef %.0364, i32 noundef %.0238.lcssa130313561482) ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %.outer.split.us, label %.split.us

.split.us:                                        ; preds = %bb.eb
  %2 = load ptr, ptr %i.d, align 8, !tbaa !33     ; 2 uses
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb.ec, label %.thread481

.outer.split:                                     ; preds = %.outer
  %.pr.a = load ptr, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.il = icmp eq ptr %.pr.a, null
  br i1 %i.il, label %bb.ef, label %.thread481

bb.ec:                                            ; preds = %.split.us
  %i.im = icmp eq i32 %i.ij, 1
  br i1 %i.im, label %bb.ed, label %bb.ff

bb.ed:                                            ; preds = %bb.ec
  %i.in = call ptr @OCSP_response_create(i32 noundef 1, ptr noundef null) #9 ; 3 uses
  store ptr %i.in, ptr %i.e, align 8, !tbaa !14
  %.not436 = icmp eq ptr %i.in, null
  br i1 %.not436, label %bb.ff, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !12
  call fastcc void @send_ocsp_response(ptr noundef %i.io, ptr noundef %i.in)
  br label %bb.ff

bb.ef:                                            ; preds = %.outer.split
  %i.ip = load ptr, ptr %i.l, align 8
  %i.iq = icmp ne ptr %i.ip, null
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %i.iq
  %or.cond25 = select i1 %or.cond23, i1 true, i1 %i.id
  %or.cond27 = or i1 %i.hh, %or.cond25
  br i1 %or.cond27, label %bb.eg, label %.thread488

bb.eg:                                            ; preds = %bb.ef
  %i.ir = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.is = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ir, ptr noundef nonnull @.str.216) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

.thread481:                                       ; preds = %.split.us, %.outer.split
  %.4353483 = phi ptr [ %.1350.ph, %.outer.split ], [ %.3352.us, %.split.us ] ; 7 uses
  %i.it = phi ptr [ %.pr.a, %.outer.split ], [ %2, %.split.us ]
  br i1 %.not499, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.thread481
  %i.iu = call i32 @OCSP_request_add1_nonce(ptr noundef nonnull %i.it, ptr noundef null, i32 noundef -1) #9
  %.not426 = icmp eq i32 %i.iu, 0
  br i1 %.not426, label %add_ocsp_serial.exit.thread, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.thread481
  br i1 %.not427, label %.thread488, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.iv = icmp eq ptr %.2280.ph, null
  %spec.select464 = select i1 %i.iv, ptr %.0282.lcssa128213741464, ptr %.2280.ph ; 2 uses
  %i.iw = call ptr @load_cert_pass(ptr noundef nonnull %.0282.lcssa128213741464, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.217) #9 ; 6 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.iy = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.iz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.iy, ptr noundef nonnull @.str.218) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.el:                                            ; preds = %bb.ej
  br i1 %.not428, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ja = call i32 @load_certs(ptr noundef nonnull %.0288.lcssa127913771461, i32 noundef 0, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef nonnull @.str.219) #9
  %.not429 = icmp eq i32 %i.ja, 0
  br i1 %.not429, label %add_ocsp_serial.exit.thread, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.jb = call ptr @load_key(ptr noundef nonnull %spec.select464, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.220) #9 ; 4 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %add_ocsp_serial.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.jd = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.je = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.jf = call i32 @OCSP_request_sign(ptr noundef %i.jd, ptr noundef nonnull %i.iw, ptr noundef nonnull %i.jb, ptr noundef null, ptr noundef %i.je, i64 noundef %.0236.lcssa130413551483) #9
  %.not430 = icmp eq i32 %i.jf, 0
  br i1 %.not430, label %bb.ep, label %.thread488

bb.ep:                                            ; preds = %bb.eo
  %i.jg = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.jh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.221) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

.thread488:                                       ; preds = %bb.ef, %bb.eo, %bb.ei
  %.4353483487491 = phi ptr [ %.4353483, %bb.eo ], [ %.4353483, %bb.ei ], [ %.1350.ph, %bb.ef ] ; 7 uses
  %.1346 = phi ptr [ %i.jb, %bb.eo ], [ %.0345.ph, %bb.ei ], [ %.0345.ph, %bb.ef ] ; 11 uses
  %.1329 = phi ptr [ %i.iw, %bb.eo ], [ %.0328.ph, %bb.ei ], [ %.0328.ph, %bb.ef ] ; 11 uses
  %.4 = phi ptr [ %spec.select464, %bb.eo ], [ %.2280.ph, %bb.ei ], [ %.2280.ph, %bb.ef ] ; 4 uses
  %i.ji = call ptr @bio_open_default(ptr noundef %.0313.lcssa126713891449, i8 noundef signext 119, i32 noundef 32769) #9 ; 12 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %add_ocsp_serial.exit.thread, label %bb.eq

bb.eq:                                            ; preds = %.thread488
  %i.jk = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.jl = icmp ne ptr %i.jk, null
  %or.cond31 = select i1 %.0244.lcssa130113581480, i1 %i.jl, i1 false
  br i1 %or.cond31, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.jm = call i32 @OCSP_REQUEST_print(ptr noundef nonnull %i.ji, ptr noundef nonnull %i.jk, i64 noundef 0) #9 ; 0 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  br i1 %.not431, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.jn = call ptr @bio_open_default(ptr noundef nonnull %.0301.lcssa127313831455, i8 noundef signext 119, i32 noundef 4) #9 ; 3 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %add_ocsp_serial.exit.thread, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jp = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.jq = call i32 @ASN1_i2d_bio(ptr noundef nonnull @i2d_OCSP_REQUEST, ptr noundef nonnull %i.jn, ptr noundef %i.jp) #9 ; 0 uses
  %i.jr = call i32 @BIO_free(ptr noundef nonnull %i.jn) #9 ; 0 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.es
  %.not432 = icmp eq ptr %.4353483487491, null
  br i1 %.not432, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.js = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ju = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.jv = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.jx = load ptr, ptr %i.k, align 8, !tbaa !31
  call fastcc void @make_ocsp_response(ptr noundef %i.js, ptr noundef %i.e, ptr noundef %i.jt, ptr noundef %.4353483487491, ptr noundef %i.ju, ptr noundef %.0326, ptr noundef %.0343, ptr noundef %i.jv, ptr noundef %.0357.lcssa125713961443, ptr noundef %i.jw, i64 noundef %.0.lcssa130613531485, i32 noundef %.0248.lcssa129913601478, i32 noundef %.0246.lcssa130013591479, i32 noundef %.0253.lcssa129713621476, ptr noundef %i.jx)
  %i.jy = load ptr, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %add_ocsp_serial.exit.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ka = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.not435 = icmp eq ptr %i.ka, null
  br i1 %.not435, label %bb.ff, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call fastcc void @send_ocsp_response(ptr noundef nonnull %i.ka, ptr noundef %i.jy)
  br label %bb.ff

bb.ez:                                            ; preds = %bb.ev
  %i.kb = load ptr, ptr %i.l, align 8, !tbaa !16  ; 2 uses
  %.not433 = icmp eq ptr %i.kb, null
  br i1 %.not433, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.kc = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.kd = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.ke = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.kf = load i32, ptr %i.p, align 4, !tbaa !17
  %i.kg = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.kh = call ptr @process_responder(ptr noundef %i.kc, ptr noundef nonnull %i.kb, ptr noundef %i.kd, ptr noundef %i.ke, ptr noundef %.0311.lcssa126813881450, ptr noundef %.0309.lcssa126913871451, i32 noundef %i.kf, ptr noundef %i.kg, i32 noundef %.0238.lcssa130313561482) ; 2 uses
  store ptr %i.kh, ptr %i.e, align 8, !tbaa !14
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %add_ocsp_serial.exit.thread, label %bb.ff

bb.fb:                                            ; preds = %bb.ez
  br i1 %i.ga, label %add_ocsp_serial.exit.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.kj = call ptr @bio_open_default(ptr noundef nonnull %.0303.lcssa127213841454, i8 noundef signext 114, i32 noundef 4) #9 ; 3 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %add_ocsp_serial.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.kl = call ptr @ASN1_d2i_bio(ptr noundef nonnull @OCSP_RESPONSE_new, ptr noundef nonnull @d2i_OCSP_RESPONSE, ptr noundef nonnull %i.kj, ptr noundef null) #9 ; 2 uses
  store ptr %i.kl, ptr %i.e, align 8, !tbaa !14
  %i.km = call i32 @BIO_free(ptr noundef nonnull %i.kj) #9 ; 0 uses
  %i.kn = icmp eq ptr %i.kl, null
  br i1 %i.kn, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ko = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.kp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ko, ptr noundef nonnull @.str.222) #9 ; 0 uses
  br label %add_ocsp_serial.exit.thread

bb.ff:                                            ; preds = %bb.ey, %bb.ex, %bb.fd, %bb.fa, %bb.ec, %bb.ee, %bb.ed
  %.1362 = phi ptr [ %.0361.ph, %bb.ee ], [ %.0361.ph, %bb.ed ], [ %.0361.ph, %bb.ec ], [ %i.ji, %bb.ey ], [ %i.ji, %bb.ex ], [ %i.ji, %bb.fa ], [ %i.ji, %bb.fd ] ; 13 uses
  %.5354 = phi ptr [ %.3352.us, %bb.ee ], [ %.3352.us, %bb.ed ], [ %.3352.us, %bb.ec ], [ %.4353483487491, %bb.ey ], [ %.4353483487491, %bb.ex ], [ null, %bb.fa ], [ null, %bb.fd ] ; 10 uses
  %.2347 = phi ptr [ %.0345.ph, %bb.ee ], [ %.0345.ph, %bb.ed ], [ %.0345.ph, %bb.ec ], [ %.1346, %bb.ey ], [ %.1346, %bb.ex ], [ %.1346, %bb.fa ], [ %.1346, %bb.fd ] ; 10 uses
  %.2330 = phi ptr [ %.0328.ph, %bb.ee ], [ %.0328.ph, %bb.ed ], [ %.0328.ph, %bb.ec ], [ %.1329, %bb.ey ], [ %.1329, %bb.ex ], [ %.1329, %bb.fa ], [ %.1329, %bb.fd ] ; 10 uses
  %.5 = phi ptr [ %.2280.ph, %bb.ee ], [ %.2280.ph, %bb.ed ], [ %.2280.ph, %bb.ec ], [ %.4, %bb.ey ], [ %.4, %bb.ex ], [ %.4, %bb.fa ], [ %.4, %bb.fd ]
  br i1 %.not437, label %thread-pre-split492, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.kq = call ptr @bio_open_default(ptr noundef nonnull %.0299.lcssa127413821456, i8 noundef signext 119, i32 noundef 4) #9 ; 3 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %add_ocsp_serial.exit.thread, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ks = load ptr, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.kt = call i32 @ASN1_i2d_bio(ptr noundef nonnull @i2d_OCSP_RESPONSE, ptr noundef nonnull %i.kq, ptr noundef %i.ks) #9 ; 0 uses
  %i.ku = call i32 @BIO_free(ptr noundef nonnull %i.kq) #9 ; 0 uses
  br label %bb.fi

thread-pre-split492:                              ; preds = %bb.ff
  %.pr493 = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %bb.fi

bb.fi:                                            ; preds = %thread-pre-split492, %bb.fh
  %i.kv = phi ptr [ %.pr493, %thread-pre-split492 ], [ %i.ks, %bb.fh ] ; 2 uses
  %.not438 = icmp eq ptr %i.kv, null
  br i1 %.not438, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kw = call i32 @OCSP_response_status(ptr noundef nonnull %i.kv) #9 ; 3 uses
  %.not439 = icmp eq i32 %i.kw, 0
  br i1 %.not439, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.kx = sext i32 %i.kw to i64
  %i.ky = call ptr @OCSP_response_status_str(i64 noundef %i.kx) #9
  %i.kz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %.1362, ptr noundef nonnull @.str.223, ptr noundef %i.ky, i32 noundef %i.kw) #9 ; 0 uses
  br i1 %.0250.lcssa129813611477, label %add_ocsp_serial.exit.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  br i1 %.0242.lcssa130213571481, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.la = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.lb = call i32 @OCSP_RESPONSE_print(ptr noundef %.1362, ptr noundef %i.la, i64 noundef 0) #9 ; 0 uses
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fl, %bb.fm, %bb.fi
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.not442 = icmp eq ptr %i.lc, null
  br i1 %.not442, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %.not450 = icmp eq i32 %.2.ph, -1
  br i1 %.not450, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ld = add nsw i32 %.2.ph, -1
  %i.le = icmp slt i32 %.2.ph, 2
end_hunk_0
