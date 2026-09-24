Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/speed?download=true
inline.NumInlined: 230
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@speed_main:bb.a
  store i64 %i.hz, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.hy
  store ptr %i.hx, ptr %i.ia, align 8, !tbaa !27
  %i.ib = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hz
  store i8 1, ptr %i.ib, align 1, !tbaa !32
  %i.ic = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.112, i32 noundef 2343) #13
  %i.id = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.ie = add i64 %i.id, 1                        ; 2 uses
  store i64 %i.ie, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.if = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.id
  store ptr %i.ic, ptr %i.if, align 8, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ie
  store i8 1, ptr %i.ig, align 1, !tbaa !32
  %i.ih = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.112, i32 noundef 2343) #13
  %i.ii = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.ij = add i64 %i.ii, 1                        ; 2 uses
  store i64 %i.ij, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.ii
  store ptr %i.ih, ptr %i.ik, align 8, !tbaa !27
  %i.il = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ij
  store i8 1, ptr %i.il, align 1, !tbaa !32
  %i.im = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.112, i32 noundef 2343) #13
  br label %.loopexit2561.sink.split

bb.bc:                                            ; preds = %bb.bb
  %i.in = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.io = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.in, ptr noundef nonnull @.str.117) #13 ; 0 uses
  br label %.loopexit2490

bb.bd:                                            ; preds = %.lr.ph3015
  %i.ip = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(4) @.str) #14
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.be, label %sub_02452

bb.be:                                            ; preds = %bb.bd
  %i.ir = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.is = add i64 %i.ir, -254
  %i.it = icmp ult i64 %i.is, -256
  br i1 %i.it, label %bb.bf, label %.preheader2562.preheader

.preheader2562.preheader:                         ; preds = %bb.be
  %i.iu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ir
  store i8 1, ptr %i.iu, align 1, !tbaa !32
  %i.iv = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.112, i32 noundef 2355) #13
  %i.iw = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.ix = add i64 %i.iw, 1                        ; 2 uses
  store i64 %i.ix, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.iw
  store ptr %i.iv, ptr %i.iy, align 8, !tbaa !27
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ix
  store i8 1, ptr %i.iz, align 1, !tbaa !32
  %i.ja = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.112, i32 noundef 2355) #13
  br label %.loopexit2561.sink.split

bb.bf:                                            ; preds = %bb.be
  %i.jb = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.jc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jb, ptr noundef nonnull @.str.117) #13 ; 0 uses
  br label %.loopexit2490

sub_02452:                                        ; preds = %bb.bd
  %i.jd = load i8, ptr %i.hb, align 1
  switch i8 %i.jd, label %.tail2456.thread [
    i8 82, label %sub_12453
    i8 68, label %sub_12458
  ]

sub_12453:                                        ; preds = %sub_02452
  %i.je = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.jf = load i8, ptr %i.je, align 1
  %.not3250 = icmp eq i8 %i.jf, 83
  br i1 %.not3250, label %.tail2451, label %.tail2456.thread

.tail2451:                                        ; preds = %sub_12453
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = icmp eq i8 %i.jh, 65
  br i1 %i.ji, label %.loopexit2561, label %.tail2456.thread

sub_12458:                                        ; preds = %sub_02452
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.jk = load i8, ptr %i.jj, align 1
  %.not3252 = icmp eq i8 %i.jk, 83
  br i1 %.not3252, label %.tail2456, label %.tail2456.thread

.tail2456:                                        ; preds = %sub_12458
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = icmp eq i8 %i.jm, 65
  br i1 %i.jn, label %.loopexit2561, label %.tail2456.thread

.tail2456.thread:                                 ; preds = %sub_02452, %.tail2451, %sub_12453, %sub_12458, %.tail2456
  %i.jo = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(8) @.str.118, i64 noundef 7) #14
  %.not1849 = icmp eq i32 %i.jo, 0
  br i1 %.not1849, label %.loopexit2561, label %bb.bg

bb.bg:                                            ; preds = %.tail2456.thread
  %i.jp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(6) @.str.119, i64 noundef 5) #14
  %.not1850 = icmp eq i32 %i.jp, 0
  br i1 %.not1850, label %.loopexit2561, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(6) @.str.120, i64 noundef 5) #14
  %.not1851 = icmp eq i32 %i.jq, 0
  br i1 %.not1851, label %.loopexit2561, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(5) @.str.121) #14
  %.not1852 = icmp eq i32 %i.jr, 0
  br i1 %.not1852, label %.loopexit2561, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.js = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(8) @.str.122) #14
  %.not1853 = icmp eq i32 %i.js, 0
  br i1 %.not1853, label %.loopexit2561, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(9) @.str.123) #14
  %.not1854 = icmp eq i32 %i.jt, 0
  br i1 %.not1854, label %.loopexit2561, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ju = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(5) @.str.124) #14
  %.not1855 = icmp eq i32 %i.ju, 0
  br i1 %.not1855, label %.loopexit2561, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(4) @.str.125) #14
  %.not1856 = icmp eq i32 %i.jv, 0
  br i1 %.not1856, label %.loopexit2561, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jw = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.jx = add i64 %i.jw, -255
  %i.jy = icmp ult i64 %i.jx, -256
  br i1 %i.jy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jz = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.ka = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jz, ptr noundef nonnull @.str.117) #13 ; 0 uses
  br label %.loopexit2490

bb.bp:                                            ; preds = %bb.bn
  %i.kb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.jw
  store i8 1, ptr %i.kb, align 1, !tbaa !32
  %i.kc = call ptr @CRYPTO_strdup(ptr noundef nonnull %i.hb, ptr noundef nonnull @.str.112, i32 noundef 2368) #13
  br label %.loopexit2561.sink.split

.loopexit2561.sink.split:                         ; preds = %bb.bp, %.preheader2560.preheader, %.preheader2562.preheader
  %.sink4642 = phi ptr [ %i.ja, %.preheader2562.preheader ], [ %i.im, %.preheader2560.preheader ], [ %i.kc, %bb.bp ]
  %i.kd = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.kd
  store ptr %.sink4642, ptr %i.kf, align 8, !tbaa !27
  br label %.loopexit2561

.loopexit2561:                                    ; preds = %.loopexit2561.sink.split, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %.tail2456.thread, %.tail2456, %.tail2451
  %i.kg = add nuw i32 %storemerge16443013, 1      ; 2 uses
  %i.kh = call i32 @OPENSSL_sk_num(ptr noundef %i.gx) #13
  %i.ki = icmp ult i32 %i.kg, %i.kh
  br i1 %i.ki, label %.lr.ph3015, label %._crit_edge3016, !llvm.loop !61

._crit_edge3016:                                  ; preds = %.loopexit2561, %._crit_edge
  call void @OPENSSL_sk_pop_free(ptr noundef %i.gx, ptr noundef nonnull @EVP_SIGNATURE_free) #13
  %i.kj = call i32 @opt_num_rest() #13
  %i.kk = call ptr @opt_rest() #13                ; 2 uses
  %i.kl = call i32 @app_RAND_load() #13
  %.not1645 = icmp eq i32 %i.kl, 0
  br i1 %.not1645, label %.loopexit2490, label %.preheader2559

.preheader2559:                                   ; preds = %._crit_edge3016
  %i.km = load ptr, ptr %i.kk, align 8, !tbaa !27 ; 2 uses
  %.not16463017 = icmp eq ptr %i.km, null
  br i1 %.not16463017, label %._crit_edge3022, label %.preheader2558.lr.ph

.preheader2558.lr.ph:                             ; preds = %.preheader2559
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.ko = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.kp = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.kq = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.kr = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.f, i64 21
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ku = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.kv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.kw = getelementptr inbounds nuw i8, ptr %i.f, i64 23
  %i.kx = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.ky = load i64, ptr @kems_algs_len, align 8, !tbaa !31 ; 2 uses
  %.not.i1937 = icmp eq i64 %i.ky, 0
  %i.kz = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %.not.i1938 = icmp eq i64 %i.kz, 0
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 30
  %i.lb = getelementptr inbounds nuw i8, ptr %i.f, i64 29
  br label %.preheader2558

.preheader2558:                                   ; preds = %.preheader2558.lr.ph, %.thread4164
  %i.lc = phi ptr [ %i.km, %.preheader2558.lr.ph ], [ %i.wq, %.thread4164 ] ; 128 uses
  %.213453021 = phi i8 [ %.01343, %.preheader2558.lr.ph ], [ %.31346, %.thread4164 ] ; 2 uses
  %.213513020 = phi i8 [ %.01349, %.preheader2558.lr.ph ], [ %.31352, %.thread4164 ] ; 2 uses
  %.014553019 = phi ptr [ %i.kk, %.preheader2558.lr.ph ], [ %i.wp, %.thread4164 ]
  %.sroa.0.03018 = phi i8 [ 0, %.preheader2558.lr.ph ], [ %.sroa.0.2, %.thread4164 ]
  %i.ld = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(4) @.str.346) #14
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.dc, label %bb.bq

bb.bq:                                            ; preds = %.preheader2558
  %i.lf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.347) #14
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.dc, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(4) @.str.348) #14
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.dc, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(4) @.str.349) #14
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.dc, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ll = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.31) #14
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.dc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ln = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.350) #14
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.dc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(7) @.str.333) #14
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.dc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lr = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(7) @.str.351) #14
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.dc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lt = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(10) @.str.352) #14
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.dc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(7) @.str.353) #14
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.dc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lx = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(7) @.str.354) #14
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.dc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lz = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(10) @.str.355) #14
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bb.dc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(4) @.str.356) #14
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.dc, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.md = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(8) @.str.160) #14
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.dc, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.357) #14
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.dc, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(12) @.str.334) #14
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.dc, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(12) @.str.358) #14
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %bb.dc, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ml = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(12) @.str.359) #14
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.dc, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(17) @.str.360) #14
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.dc, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(17) @.str.361) #14
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %bb.dc, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mr = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(17) @.str.362) #14
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %bb.dc, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mt = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(8) @.str.363) #14
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %bb.dc, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(4) @.str.364) #14
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %bb.dc, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mx = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(8) @.str.365) #14
  %i.my = icmp eq i32 %i.mx, 0
  br i1 %i.my, label %bb.dc, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mz = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(4) @.str.366) #14
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.dc, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.367) #14
  %i.nc = icmp eq i32 %i.nb, 0
  br i1 %i.nc, label %bb.dc, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nd = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.368) #14
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.dc, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.369) #14
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %bb.dc, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.370) #14
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.dc, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(7) @.str.371) #14
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %bb.dc, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nl = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.372) #14
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.dc, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(3) @.str.373) #14
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.dc, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.np = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.374) #14
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %bb.dc, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nr = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.375) #14
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %bb.dc, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nt = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(6) @.str.376) #14
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(6) @.str.377) #14
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nx = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.53) #14
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nz = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(8) @.str.378) #14
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ob = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(8) @.str.379) #14
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.dc, label %opt_found.exit.thread

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %.preheader2558
  %.0911.i.lcssa = phi ptr [ @doit_choices, %.preheader2558 ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 16), %bb.bq ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 32), %bb.br ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 48), %bb.bs ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 64), %bb.bt ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 80), %bb.bu ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 96), %bb.bv ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 112), %bb.bw ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 128), %bb.bx ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 144), %bb.by ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 160), %bb.bz ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 176), %bb.ca ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 192), %bb.cb ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 208), %bb.cc ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 224), %bb.cd ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 240), %bb.ce ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 256), %bb.cf ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 272), %bb.cg ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 288), %bb.ch ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 304), %bb.ci ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 320), %bb.cj ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 336), %bb.ck ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 352), %bb.cl ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 368), %bb.cm ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 384), %bb.cn ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 400), %bb.co ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 416), %bb.cp ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 432), %bb.cq ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 448), %bb.cr ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 464), %bb.cs ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 480), %bb.ct ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 496), %bb.cu ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 512), %bb.cv ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 528), %bb.cw ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 544), %bb.cx ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 560), %bb.cy ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 576), %bb.cz ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 592), %bb.da ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 608), %bb.db ]
  %i.od = getelementptr inbounds nuw i8, ptr %.0911.i.lcssa, i64 8
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !160
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.of
end_hunk_0
begin_hunk_1_@speed_main:bb.a

bb.fa:                                            ; preds = %bb.ez
  %i.so = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(14) @.str.399) #14
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.sq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(14) @.str.400) #14
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ss = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(14) @.str.401) #14
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.su = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(14) @.str.402) #14
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.sw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(14) @.str.403) #14
  %i.sx = icmp eq i32 %i.sw, 0
  br i1 %i.sx, label %bb.ff, label %opt_found.exit1921.thread

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej
  %.0911.i1918.lcssa = phi ptr [ @ecdsa_choices, %bb.ej ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 16), %bb.ek ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 32), %bb.el ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 48), %bb.em ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 64), %bb.en ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 80), %bb.eo ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 96), %bb.ep ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 112), %bb.eq ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 128), %bb.er ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 144), %bb.es ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 160), %bb.et ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 176), %bb.eu ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 192), %bb.ev ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 208), %bb.ew ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 224), %bb.ex ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 240), %bb.ey ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 256), %bb.ez ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 272), %bb.fa ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 288), %bb.fb ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 304), %bb.fc ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 320), %bb.fd ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 336), %bb.fe ]
  %i.sy = getelementptr inbounds nuw i8, ptr %.0911.i1918.lcssa, i64 8
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !160
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ta
  store i8 2, ptr %i.tb, align 1, !tbaa !32
  br label %opt_found.exit1921.thread

opt_found.exit1921.thread:                        ; preds = %bb.fe, %bb.ff, %bb.eg
  %.13 = phi i32 [ 1, %bb.ff ], [ %.11, %bb.eg ], [ %.12, %bb.fe ] ; 2 uses
  %i.tc = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.135, i64 noundef 4) #14
  %i.td = icmp eq i32 %i.tc, 0
  br i1 %i.td, label %bb.fg, label %opt_found.exit1926.thread

bb.fg:                                            ; preds = %opt_found.exit1921.thread
  %i.te = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !32
  %i.tg = icmp eq i8 %i.tf, 0
  br i1 %i.tg, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, i8 1, i64 24, i1 false)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.14 = phi i32 [ 1, %bb.fh ], [ %.13, %bb.fg ]
  %i.th = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.405) #14
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %bb.gg, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.406) #14
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.gg, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.tl = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.407) #14
  %i.tm = icmp eq i32 %i.tl, 0
  br i1 %i.tm, label %bb.gg, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.408) #14
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.gg, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.tp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.409) #14
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %bb.gg, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tr = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.410) #14
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %bb.gg, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.tt = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.411) #14
  %i.tu = icmp eq i32 %i.tt, 0
  br i1 %i.tu, label %bb.gg, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.tv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.412) #14
  %i.tw = icmp eq i32 %i.tv, 0
  br i1 %i.tw, label %bb.gg, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.tx = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.413) #14
  %i.ty = icmp eq i32 %i.tx, 0
  br i1 %i.ty, label %bb.gg, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.tz = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.414) #14
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.gg, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ub = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.415) #14
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %bb.gg, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ud = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.416) #14
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.gg, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.uf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.417) #14
  %i.ug = icmp eq i32 %i.uf, 0
  br i1 %i.ug, label %bb.gg, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.uh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.418) #14
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %bb.gg, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.uj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.419) #14
  %i.uk = icmp eq i32 %i.uj, 0
  br i1 %i.uk, label %bb.gg, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ul = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.420) #14
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %bb.gg, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.un = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(13) @.str.421) #14
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %bb.gg, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.up = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(13) @.str.422) #14
  %i.uq = icmp eq i32 %i.up, 0
  br i1 %i.uq, label %bb.gg, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ur = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(13) @.str.423) #14
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %bb.gg, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ut = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(13) @.str.424) #14
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.uv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(13) @.str.425) #14
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %bb.gg, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ux = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(13) @.str.426) #14
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.uz = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(11) @.str.427) #14
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.vb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.428) #14
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %bb.gg, label %opt_found.exit1926.thread

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi
  %.0911.i1923.lcssa = phi ptr [ @ecdh_choices, %bb.fi ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 16), %bb.fj ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 32), %bb.fk ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 48), %bb.fl ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 64), %bb.fm ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 80), %bb.fn ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 96), %bb.fo ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 112), %bb.fp ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 128), %bb.fq ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 144), %bb.fr ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 160), %bb.fs ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 176), %bb.ft ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 192), %bb.fu ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 208), %bb.fv ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 224), %bb.fw ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 240), %bb.fx ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 256), %bb.fy ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 272), %bb.fz ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 288), %bb.ga ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 304), %bb.gb ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 320), %bb.gc ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 336), %bb.gd ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 352), %bb.ge ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 368), %bb.gf ]
  %i.vd = getelementptr inbounds nuw i8, ptr %.0911.i1923.lcssa, i64 8
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !160
  %i.vf = zext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.vf
  store i8 2, ptr %i.vg, align 1, !tbaa !32
  br label %opt_found.exit1926.thread

opt_found.exit1926.thread:                        ; preds = %bb.gf, %bb.gg, %opt_found.exit1921.thread
  %.15 = phi i32 [ 1, %bb.gg ], [ %.13, %opt_found.exit1921.thread ], [ %.14, %bb.gf ]
  %i.vh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(6) @.str.136) #14
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %opt_found.exit1926.thread
  store i16 257, ptr %i.o, align 2
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %opt_found.exit1926.thread
  %.16 = phi i32 [ 1, %bb.gh ], [ %.15, %opt_found.exit1926.thread ]
  %i.vj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(8) @.str.430) #14
  %i.vk = icmp eq i32 %i.vj, 0
  br i1 %i.vk, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.vl = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(6) @.str.431) #14
  %i.vm = icmp eq i32 %i.vl, 0
  br i1 %i.vm, label %bb.gk, label %opt_found.exit1931.thread

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.0911.i1928.lcssa = phi ptr [ @eddsa_choices, %bb.gi ], [ getelementptr inbounds nuw (i8, ptr @eddsa_choices, i64 16), %bb.gj ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.0911.i1928.lcssa, i64 8
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !160
  %i.vp = zext i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vp
  store i8 2, ptr %i.vq, align 1, !tbaa !32
  br label %opt_found.exit1931.thread

opt_found.exit1931.thread:                        ; preds = %bb.gj, %bb.gk
  %.17 = phi i32 [ 1, %bb.gk ], [ %.16, %bb.gj ]
  %26 = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(9) @.str.433) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %opt_found.exit1936.thread, label %bb.gl

bb.gl:                                            ; preds = %opt_found.exit1931.thread
  %i.vr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(4) @.str.137) #14
  %i.vs = icmp eq i32 %i.vr, 0                    ; 2 uses
  %spec.select2449 = select i1 %i.vs, i32 1, i32 %.17
  %spec.select2448.a = select i1 %i.vs, i8 1, i8 %.sroa.0.03018
  br label %opt_found.exit1936.thread

opt_found.exit1936.thread:                        ; preds = %bb.gl, %opt_found.exit1931.thread
  %.sroa.0.2 = phi i8 [ %spec.select2448.a, %bb.gl ], [ 2, %opt_found.exit1931.thread ] ; 2 uses
  %.19 = phi i32 [ %spec.select2449, %bb.gl ], [ 1, %opt_found.exit1931.thread ] ; 2 uses
  br i1 %.not.i1937, label %kem_locate.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %opt_found.exit1936.thread, %bb.gm
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gm ], [ 0, %opt_found.exit1936.thread ] ; 3 uses
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr @kems_algname, i64 %indvars.iv.i
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !27
  %i.vv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vu, ptr noundef nonnull readonly dereferenceable(1) %i.lc) #14
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.ky
  br i1 %exitcond.not, label %kem_locate.exit.thread, label %.lr.ph.i, !llvm.loop !62

bb.gn:                                            ; preds = %.lr.ph.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !32
  %i.vz = add i8 %i.vy, 1
  store i8 %i.vz, ptr %i.vx, align 1, !tbaa !32
  br label %kem_locate.exit.thread

kem_locate.exit.thread:                           ; preds = %bb.gm, %opt_found.exit1936.thread, %bb.gn
  %.31352 = phi i8 [ 1, %bb.gn ], [ %.213513020, %opt_found.exit1936.thread ], [ %.213513020, %bb.gm ] ; 2 uses
  %.20 = phi i32 [ 1, %bb.gn ], [ %.19, %opt_found.exit1936.thread ], [ %.19, %bb.gm ] ; 2 uses
  br i1 %.not.i1938, label %sig_locate.exit.thread, label %.lr.ph.i1939

.lr.ph.i1939:                                     ; preds = %kem_locate.exit.thread, %bb.go
  %indvars.iv.i1940 = phi i64 [ %indvars.iv.next.i1941, %bb.go ], [ 0, %kem_locate.exit.thread ] ; 3 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %indvars.iv.i1940
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !27
  %i.wc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.wb, ptr noundef nonnull readonly dereferenceable(1) %i.lc) #14
  %i.wd = icmp eq i32 %i.wc, 0
  br i1 %i.wd, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %.lr.ph.i1939
  %indvars.iv.next.i1941 = add nuw i64 %indvars.iv.i1940, 1 ; 2 uses
  %exitcond3728.not = icmp eq i64 %indvars.iv.next.i1941, %i.kz
  br i1 %exitcond3728.not, label %sig_locate.exit.thread, label %.lr.ph.i1939, !llvm.loop !63

bb.gp:                                            ; preds = %.lr.ph.i1939
  %i.we = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i1940 ; 2 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !32
  %i.wg = add i8 %i.wf, 1
  store i8 %i.wg, ptr %i.we, align 1, !tbaa !32
  br label %sig_locate.exit.thread

sig_locate.exit.thread:                           ; preds = %bb.go, %kem_locate.exit.thread, %bb.gp
  %.31346 = phi i8 [ 1, %bb.gp ], [ %.213453021, %kem_locate.exit.thread ], [ %.213453021, %bb.go ] ; 2 uses
  %.21 = phi i32 [ 1, %bb.gp ], [ %.20, %kem_locate.exit.thread ], [ %.20, %bb.go ]
  %i.wh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.138) #14
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %.thread, label %bb.gq

bb.gq:                                            ; preds = %sig_locate.exit.thread
  %i.wj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wk = icmp eq i32 %i.wj, 0
  br i1 %i.wk, label %.thread2329, label %bb.gr

.thread:                                          ; preds = %sig_locate.exit.thread
  store i8 1, ptr %i.la, align 2, !tbaa !32
  store i8 1, ptr %i.lb, align 1, !tbaa !32
  %i.wl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %.thread2329, label %.thread4164

.thread2329:                                      ; preds = %.thread, %bb.gq
  store i8 1, ptr %i.ar, align 4, !tbaa !32
  br label %.thread4164

bb.gr:                                            ; preds = %bb.gq
  %.not1846 = icmp eq i32 %.21, 0
  br i1 %.not1846, label %bb.gs, label %.thread4164

bb.gs:                                            ; preds = %bb.gr
  %i.wn = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.wo = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wn, ptr noundef nonnull @.str.139, ptr noundef %i.aq, ptr noundef nonnull %i.lc) #13 ; 0 uses
  br label %.loopexit2490

.thread4164:                                      ; preds = %.thread, %bb.gr, %.thread2329
  %i.wp = getelementptr inbounds nuw i8, ptr %.014553019, i64 8 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !27 ; 2 uses
  %.not1646 = icmp eq ptr %i.wq, null
  br i1 %.not1646, label %._crit_edge3022, label %.preheader2558, !llvm.loop !64

._crit_edge3022:                                  ; preds = %.thread4164, %.preheader2559
  %.sroa.0.0.lcssa = phi i8 [ 0, %.preheader2559 ], [ %.sroa.0.2, %.thread4164 ] ; 2 uses
  %.21351.lcssa = phi i8 [ %.01349, %.preheader2559 ], [ %.31352, %.thread4164 ] ; 3 uses
  %.21345.lcssa = phi i8 [ %.01343, %.preheader2559 ], [ %.31346, %.thread4164 ] ; 3 uses
  %.b1641 = load i1, ptr @aead, align 4
  br i1 %.b1641, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %._crit_edge3022
  %i.wr = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ws = icmp eq ptr %i.wr, null
  br i1 %i.ws, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.wt = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.wu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wt, ptr noundef nonnull @.str.140) #13 ; 0 uses
  br label %.loopexit2490

bb.gv:                                            ; preds = %bb.gt
  %i.wv = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.wr) #13
  %i.ww = and i64 %i.wv, 2097152
  %.not1647 = icmp eq i64 %i.ww, 0
  br i1 %.not1647, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.wx = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.wy = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.wz = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.wy) #13
  %i.xa = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wx, ptr noundef nonnull @.str.141, ptr noundef %i.wz) #13 ; 0 uses
  br label %.loopexit2490

bb.gx:                                            ; preds = %bb.gv, %._crit_edge3022
  %i.xb = load i64, ptr @kems_algs_len, align 8, !tbaa !31 ; 13 uses
  %.not1648 = icmp eq i64 %i.xb, 0
  br i1 %.not1648, label %.loopexit2556, label %.preheader2557.preheader

.preheader2557.preheader:                         ; preds = %bb.gx
  %min.iters.check = icmp ult i64 %i.xb, 8
  br i1 %min.iters.check, label %.preheader2557.preheader5146, label %vector.ph

vector.ph:                                        ; preds = %.preheader2557.preheader
  %n.vec = and i64 %i.xb, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.xg, %vector.body ]
  %vec.phi5046 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.xh, %vector.body ]
  %i.xc = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %wide.load = load <4 x i8>, ptr %i.xc, align 8, !tbaa !32
  %wide.load5047 = load <4 x i8>, ptr %i.xd, align 4, !tbaa !32
  %i.xe = zext <4 x i8> %wide.load to <4 x i32>
  %i.xf = zext <4 x i8> %wide.load5047 to <4 x i32>
  %i.xg = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.xe) ; 2 uses
  %i.xh = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi5046, <4 x i32> %i.xf) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xi = icmp eq i64 %index.next, %n.vec
  br i1 %i.xi, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.xg, <4 x i32> %i.xh)
  %i.xj = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.xb, %n.vec
  br i1 %cmp.n, label %get_max.exit, label %.preheader2557.preheader5146

.preheader2557.preheader5146:                     ; preds = %.preheader2557.preheader, %middle.block
  %.011.i.ph = phi i32 [ 0, %.preheader2557.preheader ], [ %i.xj, %middle.block ]
  %.0810.i.ph = phi i64 [ 0, %.preheader2557.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader2557

.preheader2557:                                   ; preds = %.preheader2557.preheader5146, %.preheader2557
  %.011.i = phi i32 [ %spec.select.i1943, %.preheader2557 ], [ %.011.i.ph, %.preheader2557.preheader5146 ]
  %.0810.i = phi i64 [ %i.xn, %.preheader2557 ], [ %.0810.i.ph, %.preheader2557.preheader5146 ] ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0810.i
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !32
  %i.xm = zext i8 %i.xl to i32
  %spec.select.i1943 = call i32 @llvm.umax.i32(i32 %.011.i, i32 %i.xm) ; 2 uses
  %i.xn = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond.not.i1944 = icmp eq i64 %i.xn, %i.xb
  br i1 %exitcond.not.i1944, label %get_max.exit, label %.preheader2557, !llvm.loop !66

get_max.exit:                                     ; preds = %.preheader2557, %middle.block
  %spec.select.i1943.lcssa = phi i32 [ %i.xj, %middle.block ], [ %spec.select.i1943, %.preheader2557 ]
  %i.xo = icmp samesign ugt i32 %spec.select.i1943.lcssa, 1
  br i1 %i.xo, label %iter.check, label %.loopexit2556

iter.check:                                       ; preds = %get_max.exit
  %min.iters.check5049 = icmp ult i64 %i.xb, 4
  br i1 %min.iters.check5049, label %.lr.ph3026.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5050 = icmp ult i64 %i.xb, 32
  br i1 %min.iters.check5050, label %vec.epilog.ph, label %vector.ph5051

vector.ph5051:                                    ; preds = %vector.main.loop.iter.check
  %i.xp = and i64 %i.xb, 28
  %n.vec5052 = and i64 %i.xb, -32                 ; 4 uses
  br label %vector.body5053

vector.body5053:                                  ; preds = %vector.ph5051, %vector.body5053
  %index5054 = phi i64 [ 0, %vector.ph5051 ], [ %index.next5057, %vector.body5053 ] ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.p, i64 %index5054 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 16 ; 2 uses
  %wide.load5055 = load <16 x i8>, ptr %i.xq, align 16, !tbaa !32
  %wide.load5056 = load <16 x i8>, ptr %i.xr, align 16, !tbaa !32
  %i.xs = add <16 x i8> %wide.load5055, splat (i8 -1)
  %i.xt = add <16 x i8> %wide.load5056, splat (i8 -1)
  store <16 x i8> %i.xs, ptr %i.xq, align 16, !tbaa !32
  store <16 x i8> %i.xt, ptr %i.xr, align 16, !tbaa !32
  %index.next5057 = add nuw i64 %index5054, 32    ; 2 uses
  %i.xu = icmp eq i64 %index.next5057, %n.vec5052
  br i1 %i.xu, label %middle.block5058, label %vector.body5053, !llvm.loop !67

middle.block5058:                                 ; preds = %vector.body5053
  %cmp.n5059 = icmp eq i64 %i.xb, %n.vec5052
  br i1 %cmp.n5059, label %.loopexit2556, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block5058
  %min.epilog.iters.check = icmp eq i64 %i.xp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph3026.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec5052, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5060 = and i64 %i.xb, -4                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5061 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5063, %vec.epilog.vector.body ] ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.p, i64 %index5061 ; 2 uses
  %wide.load5062 = load <4 x i8>, ptr %i.xv, align 4, !tbaa !32
  %i.xw = add <4 x i8> %wide.load5062, splat (i8 -1)
  store <4 x i8> %i.xw, ptr %i.xv, align 4, !tbaa !32
  %index.next5063 = add nuw i64 %index5061, 4     ; 2 uses
  %i.xx = icmp eq i64 %index.next5063, %n.vec5060
  br i1 %i.xx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5064 = icmp eq i64 %i.xb, %n.vec5060
  br i1 %cmp.n5064, label %.loopexit2556, label %.lr.ph3026.preheader

.lr.ph3026.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec5052, %vec.epilog.iter.check ], [ %n.vec5060, %vec.epilog.middle.block ]
  br label %.lr.ph3026

.lr.ph3026:                                       ; preds = %.lr.ph3026.preheader, %.lr.ph3026
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph3026 ], [ %indvars.iv.ph, %.lr.ph3026.preheader ] ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !32
  %i.ya = add i8 %i.xz, -1
  store i8 %i.ya, ptr %i.xy, align 1, !tbaa !32
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond3730.not = icmp eq i64 %indvars.iv.next, %i.xb
  br i1 %exitcond3730.not, label %.loopexit2556, label %.lr.ph3026, !llvm.loop !69

.loopexit2556:                                    ; preds = %.lr.ph3026, %middle.block5058, %vec.epilog.middle.block, %get_max.exit, %bb.gx
  %i.yb = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 13 uses
  %.not1650 = icmp eq i64 %i.yb, 0
  br i1 %.not1650, label %.loopexit2553, label %.preheader2554.preheader

.preheader2554.preheader:                         ; preds = %.loopexit2556
  %min.iters.check5067 = icmp ult i64 %i.yb, 8
  br i1 %min.iters.check5067, label %.preheader2554.preheader5142, label %vector.ph5068

vector.ph5068:                                    ; preds = %.preheader2554.preheader
  %n.vec5069 = and i64 %i.yb, -8                  ; 3 uses
  br label %vector.body5070

vector.body5070:                                  ; preds = %vector.body5070, %vector.ph5068
  %index5071 = phi i64 [ 0, %vector.ph5068 ], [ %index.next5076, %vector.body5070 ] ; 2 uses
  %vec.phi5072 = phi <4 x i32> [ zeroinitializer, %vector.ph5068 ], [ %i.yg, %vector.body5070 ]
  %vec.phi5073 = phi <4 x i32> [ zeroinitializer, %vector.ph5068 ], [ %i.yh, %vector.body5070 ]
  %i.yc = getelementptr inbounds nuw i8, ptr %i.q, i64 %index5071 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  %wide.load5074 = load <4 x i8>, ptr %i.yc, align 8, !tbaa !32
  %wide.load5075 = load <4 x i8>, ptr %i.yd, align 4, !tbaa !32
  %i.ye = zext <4 x i8> %wide.load5074 to <4 x i32>
  %i.yf = zext <4 x i8> %wide.load5075 to <4 x i32>
  %i.yg = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi5072, <4 x i32> %i.ye) ; 2 uses
  %i.yh = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi5073, <4 x i32> %i.yf) ; 2 uses
  %index.next5076 = add nuw i64 %index5071, 8     ; 2 uses
  %i.yi = icmp eq i64 %index.next5076, %n.vec5069
  br i1 %i.yi, label %middle.block5077, label %vector.body5070, !llvm.loop !70

middle.block5077:                                 ; preds = %vector.body5070
  %rdx.minmax5078 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.yg, <4 x i32> %i.yh)
  %i.yj = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax5078) ; 2 uses
  %cmp.n5079 = icmp eq i64 %i.yb, %n.vec5069
  br i1 %cmp.n5079, label %get_max.exit1949, label %.preheader2554.preheader5142

.preheader2554.preheader5142:                     ; preds = %.preheader2554.preheader, %middle.block5077
  %.011.i1945.ph = phi i32 [ 0, %.preheader2554.preheader ], [ %i.yj, %middle.block5077 ]
  %.0810.i1946.ph = phi i64 [ 0, %.preheader2554.preheader ], [ %n.vec5069, %middle.block5077 ]
  br label %.preheader2554

.preheader2554:                                   ; preds = %.preheader2554.preheader5142, %.preheader2554
  %.011.i1945 = phi i32 [ %spec.select.i1947, %.preheader2554 ], [ %.011.i1945.ph, %.preheader2554.preheader5142 ]
  %.0810.i1946 = phi i64 [ %i.yn, %.preheader2554 ], [ %.0810.i1946.ph, %.preheader2554.preheader5142 ] ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0810.i1946
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !32
  %i.ym = zext i8 %i.yl to i32
  %spec.select.i1947 = call i32 @llvm.umax.i32(i32 %.011.i1945, i32 %i.ym) ; 2 uses
  %i.yn = add nuw nsw i64 %.0810.i1946, 1         ; 2 uses
end_hunk_1
