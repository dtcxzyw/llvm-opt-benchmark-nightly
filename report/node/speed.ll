Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/speed?download=true
inline.NumInlined: 230
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@speed_main:bb.a
  store i64 %i.hy, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.hx
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hy
  store i8 1, ptr %i.ia, align 1, !tbaa !28
  %i.ib = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.112, i32 noundef 2343) #13
  %i.ic = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.id = add i64 %i.ic, 1                        ; 2 uses
  store i64 %i.id, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.ic
  store ptr %i.ib, ptr %i.ie, align 8, !tbaa !26
  %i.if = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.id
  store i8 1, ptr %i.if, align 1, !tbaa !28
  %i.ig = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.112, i32 noundef 2343) #13
  %i.ih = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.ii = add i64 %i.ih, 1                        ; 2 uses
  store i64 %i.ii, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.ih
  store ptr %i.ig, ptr %i.ij, align 8, !tbaa !26
  %i.ik = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ii
  store i8 1, ptr %i.ik, align 1, !tbaa !28
  %i.il = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.112, i32 noundef 2343) #13
  br label %.loopexit2560.sink.split

bb.bc:                                            ; preds = %bb.bb
  %i.im = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.in = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.im, ptr noundef nonnull @.str.117) #13 ; 0 uses
  br label %.loopexit2489

bb.bd:                                            ; preds = %.lr.ph2981
  %i.io = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(4) @.str) #14
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.be, label %sub_02451

bb.be:                                            ; preds = %bb.bd
  %i.iq = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.ir = add i64 %i.iq, -254
  %i.is = icmp ult i64 %i.ir, -256
  br i1 %i.is, label %bb.bf, label %.preheader2561.preheader

.preheader2561.preheader:                         ; preds = %bb.be
  %i.it = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.iq
  store i8 1, ptr %i.it, align 1, !tbaa !28
  %i.iu = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.112, i32 noundef 2355) #13
  %i.iv = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.iw = add i64 %i.iv, 1                        ; 2 uses
  store i64 %i.iw, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.iv
  store ptr %i.iu, ptr %i.ix, align 8, !tbaa !26
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.iw
  store i8 1, ptr %i.iy, align 1, !tbaa !28
  %i.iz = call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.112, i32 noundef 2355) #13
  br label %.loopexit2560.sink.split

bb.bf:                                            ; preds = %bb.be
  %i.ja = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.jb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ja, ptr noundef nonnull @.str.117) #13 ; 0 uses
  br label %.loopexit2489

sub_02451:                                        ; preds = %bb.bd
  %i.jc = load i8, ptr %i.ha, align 1
  switch i8 %i.jc, label %.tail2455.thread [
    i8 82, label %sub_12452
    i8 68, label %sub_12457
  ]

sub_12452:                                        ; preds = %sub_02451
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.je = load i8, ptr %i.jd, align 1
  %.not3216 = icmp eq i8 %i.je, 83
  br i1 %.not3216, label %.tail2450, label %.tail2455.thread

.tail2450:                                        ; preds = %sub_12452
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = icmp eq i8 %i.jg, 65
  br i1 %i.jh, label %.loopexit2560, label %.tail2455.thread

sub_12457:                                        ; preds = %sub_02451
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.jj = load i8, ptr %i.ji, align 1
  %.not3218 = icmp eq i8 %i.jj, 83
  br i1 %.not3218, label %.tail2455, label %.tail2455.thread

.tail2455:                                        ; preds = %sub_12457
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = icmp eq i8 %i.jl, 65
  br i1 %i.jm, label %.loopexit2560, label %.tail2455.thread

.tail2455.thread:                                 ; preds = %sub_02451, %.tail2450, %sub_12452, %sub_12457, %.tail2455
  %i.jn = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(8) @.str.118, i64 noundef 7) #14
  %.not1849 = icmp eq i32 %i.jn, 0
  br i1 %.not1849, label %.loopexit2560, label %bb.bg

bb.bg:                                            ; preds = %.tail2455.thread
  %i.jo = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(6) @.str.119, i64 noundef 5) #14
  %.not1850 = icmp eq i32 %i.jo, 0
  br i1 %.not1850, label %.loopexit2560, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(6) @.str.120, i64 noundef 5) #14
  %.not1851 = icmp eq i32 %i.jp, 0
  br i1 %.not1851, label %.loopexit2560, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(5) @.str.121) #14
  %.not1852 = icmp eq i32 %i.jq, 0
  br i1 %.not1852, label %.loopexit2560, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(8) @.str.122) #14
  %.not1853 = icmp eq i32 %i.jr, 0
  br i1 %.not1853, label %.loopexit2560, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.js = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(9) @.str.123) #14
  %.not1854 = icmp eq i32 %i.js, 0
  br i1 %.not1854, label %.loopexit2560, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(5) @.str.124) #14
  %.not1855 = icmp eq i32 %i.jt, 0
  br i1 %.not1855, label %.loopexit2560, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ju = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(4) @.str.125) #14
  %.not1856 = icmp eq i32 %i.ju, 0
  br i1 %.not1856, label %.loopexit2560, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jv = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.jw = add i64 %i.jv, -255
  %i.jx = icmp ult i64 %i.jw, -256
  br i1 %i.jx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jy = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.jz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jy, ptr noundef nonnull @.str.117) #13 ; 0 uses
  br label %.loopexit2489

bb.bp:                                            ; preds = %bb.bn
  %i.ka = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.jv
  store i8 1, ptr %i.ka, align 1, !tbaa !28
  %i.kb = call ptr @CRYPTO_strdup(ptr noundef nonnull %i.ha, ptr noundef nonnull @.str.112, i32 noundef 2368) #13
  br label %.loopexit2560.sink.split

.loopexit2560.sink.split:                         ; preds = %bb.bp, %.preheader2559.preheader, %.preheader2561.preheader
  %.sink4586 = phi ptr [ %i.iz, %.preheader2561.preheader ], [ %i.il, %.preheader2559.preheader ], [ %i.kb, %bb.bp ]
  %i.kc = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %i.kd = add i64 %i.kc, 1
  store i64 %i.kd, ptr @sigs_algs_len, align 8, !tbaa !31
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.kc
  store ptr %.sink4586, ptr %i.ke, align 8, !tbaa !26
  br label %.loopexit2560

.loopexit2560:                                    ; preds = %.loopexit2560.sink.split, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %.tail2455.thread, %.tail2455, %.tail2450
  %i.kf = add nuw i32 %storemerge16442979, 1      ; 2 uses
  %i.kg = call i32 @OPENSSL_sk_num(ptr noundef %i.gw) #13
  %i.kh = icmp ult i32 %i.kf, %i.kg
  br i1 %i.kh, label %.lr.ph2981, label %._crit_edge2982, !llvm.loop !34

._crit_edge2982:                                  ; preds = %.loopexit2560, %._crit_edge
  call void @OPENSSL_sk_pop_free(ptr noundef %i.gw, ptr noundef nonnull @EVP_SIGNATURE_free) #13
  %i.ki = call i32 @opt_num_rest() #13
  %i.kj = call ptr @opt_rest() #13                ; 2 uses
  %i.kk = call i32 @app_RAND_load() #13
  %.not1645 = icmp eq i32 %i.kk, 0
  br i1 %.not1645, label %.loopexit2489, label %.preheader2558

.preheader2558:                                   ; preds = %._crit_edge2982
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !26 ; 2 uses
  %.not16462983 = icmp eq ptr %i.kl, null
  br i1 %.not16462983, label %._crit_edge2988, label %.preheader2557.lr.ph

.preheader2557.lr.ph:                             ; preds = %.preheader2558
  %i.km = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.ko = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.kp = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.kq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.f, i64 21
  %i.ks = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.ku = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.f, i64 23
  %i.kw = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.kx = load i64, ptr @kems_algs_len, align 8, !tbaa !31 ; 2 uses
  %.not.i1937 = icmp eq i64 %i.kx, 0
  %i.ky = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 2 uses
  %.not.i1938 = icmp eq i64 %i.ky, 0
  %i.kz = getelementptr inbounds nuw i8, ptr %i.f, i64 30
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 29
  br label %.preheader2557

.preheader2557:                                   ; preds = %.preheader2557.lr.ph, %.thread4140
  %i.lb = phi ptr [ %i.kl, %.preheader2557.lr.ph ], [ %i.wz, %.thread4140 ] ; 128 uses
  %.213452987 = phi i8 [ %.01343, %.preheader2557.lr.ph ], [ %.31346, %.thread4140 ] ; 2 uses
  %.213512986 = phi i8 [ %.01349, %.preheader2557.lr.ph ], [ %.31352, %.thread4140 ] ; 2 uses
  %.014552985 = phi ptr [ %i.kj, %.preheader2557.lr.ph ], [ %i.wy, %.thread4140 ]
  %.sroa.0.02984 = phi i8 [ 0, %.preheader2557.lr.ph ], [ %spec.select2447.a, %.thread4140 ]
  %i.lc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.346) #14
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.dc, label %bb.bq

bb.bq:                                            ; preds = %.preheader2557
  %i.le = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.347) #14
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.dc, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.348) #14
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.dc, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.li = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.349) #14
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %bb.dc, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.31) #14
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.dc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.350) #14
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.dc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lo = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(7) @.str.333) #14
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.dc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(7) @.str.351) #14
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.dc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ls = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(10) @.str.352) #14
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.dc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(7) @.str.353) #14
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %bb.dc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(7) @.str.354) #14
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.dc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ly = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(10) @.str.355) #14
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.dc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ma = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.356) #14
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.dc, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(8) @.str.160) #14
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.dc, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.me = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.357) #14
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.dc, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(12) @.str.334) #14
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.dc, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mi = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(12) @.str.358) #14
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %bb.dc, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(12) @.str.359) #14
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %bb.dc, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(17) @.str.360) #14
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.dc, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mo = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(17) @.str.361) #14
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.dc, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(17) @.str.362) #14
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %bb.dc, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ms = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(8) @.str.363) #14
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.dc, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.364) #14
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.dc, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(8) @.str.365) #14
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.dc, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.my = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.366) #14
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %bb.dc, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.na = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.367) #14
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.dc, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.368) #14
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.dc, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ne = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.369) #14
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.dc, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ng = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.370) #14
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %bb.dc, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ni = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(7) @.str.371) #14
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.dc, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.372) #14
  %i.nl = icmp eq i32 %i.nk, 0
  br i1 %i.nl, label %bb.dc, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(3) @.str.373) #14
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %bb.dc, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.no = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.374) #14
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.dc, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.375) #14
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %bb.dc, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ns = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(6) @.str.376) #14
  %i.nt = icmp eq i32 %i.ns, 0
  br i1 %i.nt, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(6) @.str.377) #14
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.53) #14
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ny = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(8) @.str.378) #14
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.oa = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(8) @.str.379) #14
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.dc, label %opt_found.exit.thread

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %.preheader2557
  %.0911.i.lcssa = phi ptr [ @doit_choices, %.preheader2557 ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 16), %bb.bq ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 32), %bb.br ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 48), %bb.bs ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 64), %bb.bt ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 80), %bb.bu ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 96), %bb.bv ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 112), %bb.bw ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 128), %bb.bx ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 144), %bb.by ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 160), %bb.bz ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 176), %bb.ca ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 192), %bb.cb ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 208), %bb.cc ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 224), %bb.cd ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 240), %bb.ce ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 256), %bb.cf ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 272), %bb.cg ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 288), %bb.ch ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 304), %bb.ci ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 320), %bb.cj ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 336), %bb.ck ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 352), %bb.cl ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 368), %bb.cm ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 384), %bb.cn ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 400), %bb.co ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 416), %bb.cp ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 432), %bb.cq ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 448), %bb.cr ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 464), %bb.cs ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 480), %bb.ct ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 496), %bb.cu ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 512), %bb.cv ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 528), %bb.cw ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 544), %bb.cx ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 560), %bb.cy ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 576), %bb.cz ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 592), %bb.da ], [ getelementptr inbounds nuw (i8, ptr @doit_choices, i64 608), %bb.db ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.0911.i.lcssa, i64 8
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !35
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.oe
end_hunk_0
begin_hunk_1_@speed_main:bb.a

bb.fa:                                            ; preds = %bb.ez
  %i.sn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(14) @.str.399) #14
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.sp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(14) @.str.400) #14
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sr = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(14) @.str.401) #14
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.st = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(14) @.str.402) #14
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.sv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(14) @.str.403) #14
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %bb.ff, label %opt_found.exit1921.thread

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej
  %.0911.i1918.lcssa = phi ptr [ @ecdsa_choices, %bb.ej ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 16), %bb.ek ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 32), %bb.el ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 48), %bb.em ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 64), %bb.en ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 80), %bb.eo ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 96), %bb.ep ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 112), %bb.eq ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 128), %bb.er ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 144), %bb.es ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 160), %bb.et ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 176), %bb.eu ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 192), %bb.ev ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 208), %bb.ew ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 224), %bb.ex ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 240), %bb.ey ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 256), %bb.ez ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 272), %bb.fa ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 288), %bb.fb ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 304), %bb.fc ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 320), %bb.fd ], [ getelementptr inbounds nuw (i8, ptr @ecdsa_choices, i64 336), %bb.fe ]
  %i.sx = getelementptr inbounds nuw i8, ptr %.0911.i1918.lcssa, i64 8
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !35
  %i.sz = zext i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.sz
  store i8 2, ptr %i.ta, align 1, !tbaa !28
  br label %opt_found.exit1921.thread

opt_found.exit1921.thread:                        ; preds = %bb.fe, %bb.ff, %bb.eg
  %.13 = phi i32 [ 1, %bb.ff ], [ %.11, %bb.eg ], [ %.12, %bb.fe ] ; 2 uses
  %i.tb = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.135, i64 noundef 4) #14
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.fg, label %opt_found.exit1926.thread

bb.fg:                                            ; preds = %opt_found.exit1921.thread
  %i.td = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.te = load i8, ptr %i.td, align 1, !tbaa !28
  %i.tf = icmp eq i8 %i.te, 0
  br i1 %i.tf, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, i8 1, i64 24, i1 false)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.14 = phi i32 [ 1, %bb.fh ], [ %.13, %bb.fg ]
  %i.tg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.405) #14
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.gg, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ti = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.406) #14
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %bb.gg, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.tk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.407) #14
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %bb.gg, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.408) #14
  %i.tn = icmp eq i32 %i.tm, 0
  br i1 %i.tn, label %bb.gg, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.to = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.409) #14
  %i.tp = icmp eq i32 %i.to, 0
  br i1 %i.tp, label %bb.gg, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.410) #14
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.gg, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ts = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.411) #14
  %i.tt = icmp eq i32 %i.ts, 0
  br i1 %i.tt, label %bb.gg, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.tu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.412) #14
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %bb.gg, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.tw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.413) #14
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %bb.gg, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ty = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.414) #14
  %i.tz = icmp eq i32 %i.ty, 0
  br i1 %i.tz, label %bb.gg, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ua = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.415) #14
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.gg, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.uc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.416) #14
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %bb.gg, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ue = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.417) #14
  %i.uf = icmp eq i32 %i.ue, 0
  br i1 %i.uf, label %bb.gg, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ug = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.418) #14
  %i.uh = icmp eq i32 %i.ug, 0
  br i1 %i.uh, label %bb.gg, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ui = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.419) #14
  %i.uj = icmp eq i32 %i.ui, 0
  br i1 %i.uj, label %bb.gg, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.uk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.420) #14
  %i.ul = icmp eq i32 %i.uk, 0
  br i1 %i.ul, label %bb.gg, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.um = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(13) @.str.421) #14
  %i.un = icmp eq i32 %i.um, 0
  br i1 %i.un, label %bb.gg, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.uo = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(13) @.str.422) #14
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %bb.gg, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.uq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(13) @.str.423) #14
  %i.ur = icmp eq i32 %i.uq, 0
  br i1 %i.ur, label %bb.gg, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.us = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(13) @.str.424) #14
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.uu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(13) @.str.425) #14
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bb.gg, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.uw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(13) @.str.426) #14
  %i.ux = icmp eq i32 %i.uw, 0
  br i1 %i.ux, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.uy = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(11) @.str.427) #14
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.va = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.428) #14
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %bb.gg, label %opt_found.exit1926.thread

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi
  %.0911.i1923.lcssa = phi ptr [ @ecdh_choices, %bb.fi ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 16), %bb.fj ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 32), %bb.fk ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 48), %bb.fl ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 64), %bb.fm ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 80), %bb.fn ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 96), %bb.fo ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 112), %bb.fp ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 128), %bb.fq ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 144), %bb.fr ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 160), %bb.fs ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 176), %bb.ft ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 192), %bb.fu ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 208), %bb.fv ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 224), %bb.fw ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 240), %bb.fx ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 256), %bb.fy ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 272), %bb.fz ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 288), %bb.ga ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 304), %bb.gb ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 320), %bb.gc ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 336), %bb.gd ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 352), %bb.ge ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 368), %bb.gf ]
  %i.vc = getelementptr inbounds nuw i8, ptr %.0911.i1923.lcssa, i64 8
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !35
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ve
  store i8 2, ptr %i.vf, align 1, !tbaa !28
  br label %opt_found.exit1926.thread

opt_found.exit1926.thread:                        ; preds = %bb.gf, %bb.gg, %opt_found.exit1921.thread
  %.15 = phi i32 [ 1, %bb.gg ], [ %.13, %opt_found.exit1921.thread ], [ %.14, %bb.gf ]
  %i.vg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(6) @.str.136) #14
  %i.vh = icmp eq i32 %i.vg, 0
  br i1 %i.vh, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %opt_found.exit1926.thread
  store i16 257, ptr %i.o, align 2
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %opt_found.exit1926.thread
  %.16 = phi i32 [ 1, %bb.gh ], [ %.15, %opt_found.exit1926.thread ]
  %i.vi = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(8) @.str.430) #14
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.vk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(6) @.str.431) #14
  %i.vl = icmp eq i32 %i.vk, 0
  br i1 %i.vl, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.0911.i1928.lcssa = phi ptr [ @eddsa_choices, %bb.gi ], [ getelementptr inbounds nuw (i8, ptr @eddsa_choices, i64 16), %bb.gj ]
  %i.vm = getelementptr inbounds nuw i8, ptr %.0911.i1928.lcssa, i64 8
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !35
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vo
  store i8 2, ptr %i.vp, align 1, !tbaa !28
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %.17 = phi i32 [ 1, %bb.gk ], [ %.16, %bb.gj ]
  %i.vq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.137) #14
  %i.vr = icmp eq i32 %i.vq, 0                    ; 2 uses
  %spec.select2447 = select i1 %i.vr, i8 1, i8 %.sroa.0.02984
  %26 = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.433) #14
  %27 = icmp eq i32 %26, 0                        ; 2 uses
  %spec.select2447.a = select i1 %27, i8 2, i8 %spec.select2447 ; 2 uses
  %28 = select i1 %27, i1 true, i1 %i.vr
  %spec.select3212 = select i1 %28, i32 1, i32 %.17 ; 2 uses
  br i1 %.not.i1937, label %kem_locate.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gl, %bb.gm
  %i.vs = phi i64 [ %i.vy, %bb.gm ], [ 0, %bb.gl ]
  %.09.i = phi i32 [ %i.vx, %bb.gm ], [ 0, %bb.gl ] ; 2 uses
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr @kems_algname, i64 %i.vs
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !26
  %i.vv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vu, ptr noundef nonnull readonly dereferenceable(1) %i.lb) #14
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %kem_locate.exit, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph.i
  %i.vx = add i32 %.09.i, 1                       ; 2 uses
  %i.vy = zext i32 %i.vx to i64                   ; 2 uses
  %i.vz = icmp ugt i64 %i.kx, %i.vy
  br i1 %i.vz, label %.lr.ph.i, label %kem_locate.exit.thread, !llvm.loop !37

kem_locate.exit:                                  ; preds = %.lr.ph.i
  %i.wa = zext i32 %.09.i to i64
  %i.wb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.wa ; 2 uses
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !28
  %i.wd = add i8 %i.wc, 1
  store i8 %i.wd, ptr %i.wb, align 1, !tbaa !28
  br label %kem_locate.exit.thread

kem_locate.exit.thread:                           ; preds = %bb.gm, %bb.gl, %kem_locate.exit
  %.31352 = phi i8 [ 1, %kem_locate.exit ], [ %.213512986, %bb.gl ], [ %.213512986, %bb.gm ] ; 2 uses
  %.20 = phi i32 [ 1, %kem_locate.exit ], [ %spec.select3212, %bb.gl ], [ %spec.select3212, %bb.gm ] ; 2 uses
  br i1 %.not.i1938, label %sig_locate.exit.thread, label %.lr.ph.i1939

.lr.ph.i1939:                                     ; preds = %kem_locate.exit.thread, %bb.gn
  %i.we = phi i64 [ %i.wk, %bb.gn ], [ 0, %kem_locate.exit.thread ]
  %.09.i1940 = phi i32 [ %i.wj, %bb.gn ], [ 0, %kem_locate.exit.thread ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.we
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !26
  %i.wh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.wg, ptr noundef nonnull readonly dereferenceable(1) %i.lb) #14
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %sig_locate.exit, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph.i1939
  %i.wj = add i32 %.09.i1940, 1                   ; 2 uses
  %i.wk = zext i32 %i.wj to i64                   ; 2 uses
  %i.wl = icmp ugt i64 %i.ky, %i.wk
  br i1 %i.wl, label %.lr.ph.i1939, label %sig_locate.exit.thread, !llvm.loop !38

sig_locate.exit:                                  ; preds = %.lr.ph.i1939
  %i.wm = zext i32 %.09.i1940 to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.wm ; 2 uses
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !28
  %i.wp = add i8 %i.wo, 1
  store i8 %i.wp, ptr %i.wn, align 1, !tbaa !28
  br label %sig_locate.exit.thread

sig_locate.exit.thread:                           ; preds = %bb.gn, %kem_locate.exit.thread, %sig_locate.exit
  %.31346 = phi i8 [ 1, %sig_locate.exit ], [ %.213452987, %kem_locate.exit.thread ], [ %.213452987, %bb.gn ] ; 2 uses
  %.21 = phi i32 [ 1, %sig_locate.exit ], [ %.20, %kem_locate.exit.thread ], [ %.20, %bb.gn ]
  %i.wq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.138) #14
  %i.wr = icmp eq i32 %i.wq, 0
  br i1 %i.wr, label %.thread, label %bb.go

bb.go:                                            ; preds = %sig_locate.exit.thread
  %i.ws = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %.thread2328, label %bb.gp

.thread:                                          ; preds = %sig_locate.exit.thread
  store i8 1, ptr %i.kz, align 2, !tbaa !28
  store i8 1, ptr %i.la, align 1, !tbaa !28
  %i.wu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wv = icmp eq i32 %i.wu, 0
  br i1 %i.wv, label %.thread2328, label %.thread4140

.thread2328:                                      ; preds = %.thread, %bb.go
  store i8 1, ptr %i.ar, align 4, !tbaa !28
  br label %.thread4140

bb.gp:                                            ; preds = %bb.go
  %.not1846 = icmp eq i32 %.21, 0
  br i1 %.not1846, label %bb.gq, label %.thread4140

bb.gq:                                            ; preds = %bb.gp
  %i.ww = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.wx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ww, ptr noundef nonnull @.str.139, ptr noundef %i.aq, ptr noundef nonnull %i.lb) #13 ; 0 uses
  br label %.loopexit2489

.thread4140:                                      ; preds = %.thread, %bb.gp, %.thread2328
  %i.wy = getelementptr inbounds nuw i8, ptr %.014552985, i64 8 ; 2 uses
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !26 ; 2 uses
  %.not1646 = icmp eq ptr %i.wz, null
  br i1 %.not1646, label %._crit_edge2988, label %.preheader2557, !llvm.loop !39

._crit_edge2988:                                  ; preds = %.thread4140, %.preheader2558
  %.sroa.0.0.lcssa = phi i8 [ 0, %.preheader2558 ], [ %spec.select2447.a, %.thread4140 ] ; 2 uses
  %.21351.lcssa = phi i8 [ %.01349, %.preheader2558 ], [ %.31352, %.thread4140 ] ; 3 uses
  %.21345.lcssa = phi i8 [ %.01343, %.preheader2558 ], [ %.31346, %.thread4140 ] ; 3 uses
  %.b1641 = load i1, ptr @aead, align 4
  br i1 %.b1641, label %bb.gr, label %bb.gv

bb.gr:                                            ; preds = %._crit_edge2988
  %i.xa = load ptr, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %i.xb = icmp eq ptr %i.xa, null
  br i1 %i.xb, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.xc = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.xd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.xc, ptr noundef nonnull @.str.140) #13 ; 0 uses
  br label %.loopexit2489

bb.gt:                                            ; preds = %bb.gr
  %i.xe = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.xa) #13
  %i.xf = and i64 %i.xe, 2097152
  %.not1647 = icmp eq i64 %i.xf, 0
  br i1 %.not1647, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.xg = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.xh = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xi = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.xh) #13
  %i.xj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.xg, ptr noundef nonnull @.str.141, ptr noundef %i.xi) #13 ; 0 uses
  br label %.loopexit2489

bb.gv:                                            ; preds = %bb.gt, %._crit_edge2988
  %i.xk = load i64, ptr @kems_algs_len, align 8, !tbaa !31 ; 14 uses
  %.not1648 = icmp eq i64 %i.xk, 0
  br i1 %.not1648, label %.loopexit2555, label %.preheader2556.preheader

.preheader2556.preheader:                         ; preds = %bb.gv
  %min.iters.check = icmp ult i64 %i.xk, 8
  br i1 %min.iters.check, label %.preheader2556.preheader5060, label %vector.ph

vector.ph:                                        ; preds = %.preheader2556.preheader
  %n.vec = and i64 %i.xk, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.xp, %vector.body ]
  %vec.phi4958 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.xq, %vector.body ]
  %i.xl = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %wide.load = load <4 x i8>, ptr %i.xl, align 8, !tbaa !28
  %wide.load4959 = load <4 x i8>, ptr %i.xm, align 4, !tbaa !28
  %i.xn = zext <4 x i8> %wide.load to <4 x i32>
  %i.xo = zext <4 x i8> %wide.load4959 to <4 x i32>
  %i.xp = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.xn) ; 2 uses
  %i.xq = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4958, <4 x i32> %i.xo) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xr = icmp eq i64 %index.next, %n.vec
  br i1 %i.xr, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.xp, <4 x i32> %i.xq)
  %i.xs = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.xk, %n.vec
  br i1 %cmp.n, label %get_max.exit, label %.preheader2556.preheader5060

.preheader2556.preheader5060:                     ; preds = %.preheader2556.preheader, %middle.block
  %.011.i.ph = phi i32 [ 0, %.preheader2556.preheader ], [ %i.xs, %middle.block ]
  %.0810.i.ph = phi i64 [ 0, %.preheader2556.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader2556

.preheader2556:                                   ; preds = %.preheader2556.preheader5060, %.preheader2556
  %.011.i = phi i32 [ %spec.select.i1942, %.preheader2556 ], [ %.011.i.ph, %.preheader2556.preheader5060 ]
  %.0810.i = phi i64 [ %i.xw, %.preheader2556 ], [ %.0810.i.ph, %.preheader2556.preheader5060 ] ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0810.i
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !28
  %i.xv = zext i8 %i.xu to i32
  %spec.select.i1942 = call i32 @llvm.umax.i32(i32 %.011.i, i32 %i.xv) ; 2 uses
  %i.xw = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond.not.i1943 = icmp eq i64 %i.xw, %i.xk
  br i1 %exitcond.not.i1943, label %get_max.exit, label %.preheader2556, !llvm.loop !43

get_max.exit:                                     ; preds = %.preheader2556, %middle.block
  %spec.select.i1942.lcssa = phi i32 [ %i.xs, %middle.block ], [ %spec.select.i1942, %.preheader2556 ]
  %i.xx = icmp samesign ugt i32 %spec.select.i1942.lcssa, 1
  br i1 %i.xx, label %iter.check, label %.loopexit2555

iter.check:                                       ; preds = %get_max.exit
  %min.iters.check4961 = icmp ult i64 %i.xk, 4
  br i1 %min.iters.check4961, label %.lr.ph2992.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.xy = add i64 %i.xk, -1                       ; 2 uses
  %i.xz = and i64 %i.xy, 4294967295
  %i.ya = icmp eq i64 %i.xz, 4294967295
  %i.yb = icmp ugt i64 %i.xy, 4294967295
  %i.yc = or i1 %i.ya, %i.yb
  br i1 %i.yc, label %.lr.ph2992.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check4962 = icmp ult i64 %i.xk, 32
  br i1 %min.iters.check4962, label %vec.epilog.ph, label %vector.ph4963

vector.ph4963:                                    ; preds = %vector.main.loop.iter.check
  %i.yd = and i64 %i.xk, 28
  %n.vec4964 = and i64 %i.xk, 8589934560          ; 4 uses
  br label %vector.body4965

vector.body4965:                                  ; preds = %vector.body4965, %vector.ph4963
  %index4966 = phi i64 [ 0, %vector.ph4963 ], [ %index.next4969, %vector.body4965 ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4966 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 2 uses
  %wide.load4967 = load <16 x i8>, ptr %i.ye, align 16, !tbaa !28
  %wide.load4968 = load <16 x i8>, ptr %i.yf, align 16, !tbaa !28
  %i.yg = add <16 x i8> %wide.load4967, splat (i8 -1)
  %i.yh = add <16 x i8> %wide.load4968, splat (i8 -1)
  store <16 x i8> %i.yg, ptr %i.ye, align 16, !tbaa !28
  store <16 x i8> %i.yh, ptr %i.yf, align 16, !tbaa !28
  %index.next4969 = add nuw i64 %index4966, 32    ; 2 uses
  %i.yi = icmp eq i64 %index.next4969, %n.vec4964
  br i1 %i.yi, label %middle.block4970, label %vector.body4965, !llvm.loop !44

middle.block4970:                                 ; preds = %vector.body4965
  %cmp.n4971 = icmp eq i64 %i.xk, %n.vec4964
  br i1 %cmp.n4971, label %.loopexit2555, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block4970
  %min.epilog.iters.check = icmp eq i64 %i.yd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2992.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4964, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4972 = and i64 %i.xk, 8589934588          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4973 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4975, %vec.epilog.vector.body ] ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4973 ; 2 uses
  %wide.load4974 = load <4 x i8>, ptr %i.yj, align 4, !tbaa !28
  %i.yk = add <4 x i8> %wide.load4974, splat (i8 -1)
  store <4 x i8> %i.yk, ptr %i.yj, align 4, !tbaa !28
  %index.next4975 = add nuw i64 %index4973, 4     ; 2 uses
  %i.yl = icmp eq i64 %index.next4975, %n.vec4972
  br i1 %i.yl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4976 = icmp eq i64 %i.xk, %n.vec4972
  br i1 %cmp.n4976, label %.loopexit2555, label %.lr.ph2992.preheader

.lr.ph2992.preheader:                             ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec4964, %vec.epilog.iter.check ], [ %n.vec4972, %vec.epilog.middle.block ]
  br label %.lr.ph2992

.lr.ph2992:                                       ; preds = %.lr.ph2992.preheader, %.lr.ph2992
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph2992 ], [ %indvars.iv.ph, %.lr.ph2992.preheader ] ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !28
  %i.yo = add i8 %i.yn, -1
  store i8 %i.yo, ptr %i.ym, align 1, !tbaa !28
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.yp = and i64 %indvars.iv.next, 4294967295
  %i.yq = icmp ugt i64 %i.xk, %i.yp
  br i1 %i.yq, label %.lr.ph2992, label %.loopexit2555, !llvm.loop !47

.loopexit2555:                                    ; preds = %.lr.ph2992, %middle.block4970, %vec.epilog.middle.block, %get_max.exit, %bb.gv
  %i.yr = load i64, ptr @sigs_algs_len, align 8, !tbaa !31 ; 14 uses
  %.not1650 = icmp eq i64 %i.yr, 0
  br i1 %.not1650, label %.loopexit2552, label %.preheader2553.preheader

.preheader2553.preheader:                         ; preds = %.loopexit2555
  %min.iters.check4979 = icmp ult i64 %i.yr, 8
  br i1 %min.iters.check4979, label %.preheader2553.preheader5056, label %vector.ph4980

vector.ph4980:                                    ; preds = %.preheader2553.preheader
  %n.vec4981 = and i64 %i.yr, -8                  ; 3 uses
  br label %vector.body4982

vector.body4982:                                  ; preds = %vector.body4982, %vector.ph4980
  %index4983 = phi i64 [ 0, %vector.ph4980 ], [ %index.next4988, %vector.body4982 ] ; 2 uses
  %vec.phi4984 = phi <4 x i32> [ zeroinitializer, %vector.ph4980 ], [ %i.yw, %vector.body4982 ]
  %vec.phi4985 = phi <4 x i32> [ zeroinitializer, %vector.ph4980 ], [ %i.yx, %vector.body4982 ]
  %i.ys = getelementptr inbounds nuw i8, ptr %i.q, i64 %index4983 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %wide.load4986 = load <4 x i8>, ptr %i.ys, align 8, !tbaa !28
  %wide.load4987 = load <4 x i8>, ptr %i.yt, align 4, !tbaa !28
  %i.yu = zext <4 x i8> %wide.load4986 to <4 x i32>
  %i.yv = zext <4 x i8> %wide.load4987 to <4 x i32>
  %i.yw = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4984, <4 x i32> %i.yu) ; 2 uses
  %i.yx = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4985, <4 x i32> %i.yv) ; 2 uses
  %index.next4988 = add nuw i64 %index4983, 8     ; 2 uses
  %i.yy = icmp eq i64 %index.next4988, %n.vec4981
  br i1 %i.yy, label %middle.block4989, label %vector.body4982, !llvm.loop !48

middle.block4989:                                 ; preds = %vector.body4982
  %rdx.minmax4990 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.yw, <4 x i32> %i.yx)
  %i.yz = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax4990) ; 2 uses
  %cmp.n4991 = icmp eq i64 %i.yr, %n.vec4981
  br i1 %cmp.n4991, label %get_max.exit1948, label %.preheader2553.preheader5056

.preheader2553.preheader5056:                     ; preds = %.preheader2553.preheader, %middle.block4989
  %.011.i1944.ph = phi i32 [ 0, %.preheader2553.preheader ], [ %i.yz, %middle.block4989 ]
  %.0810.i1945.ph = phi i64 [ 0, %.preheader2553.preheader ], [ %n.vec4981, %middle.block4989 ]
  br label %.preheader2553
end_hunk_1
