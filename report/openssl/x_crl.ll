Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x_crl?download=true
inline.NumInlined: 47
inline.NumDeleted: 12
begin_hunk_0_@crl_cb:bb.a
  br label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !61 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.bu = zext i8 %i.bt to i32                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !50
  %.not29.i = icmp eq i32 %i.bp, 1
  br i1 %.not29.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 8
  %i.ca = or disjoint i32 %i.bz, %i.bu
  br label %.thread.i

.thread.i:                                        ; preds = %bb.v, %bb.u, %..thread_crit_edge.i
  %i.cb = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.ca, %bb.v ], [ %i.bu, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.cd = and i32 %i.cb, 32895
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %.thread.i, %bb.s
  %i.ce = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.cf = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %i.c) #9
  %i.cg = call i32 @DIST_POINT_set_dpname(ptr noundef %i.ce, ptr noundef %i.cf) #9
  %i.ch = load i32, ptr %i.aj, align 8, !tbaa !52
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.x, label %setup_idp.exit

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.y, label %setup_idp.exit

bb.y:                                             ; preds = %bb.x
  store i32 3, ptr %i.aj, align 8, !tbaa !52
  br label %setup_idp.exit

setup_idp.exit:                                   ; preds = %bb.w, %bb.x, %bb.y
  %.not102 = icmp eq i32 %i.cg, 0
  br i1 %.not102, label %.sink.split, label %bb.aa

bb.z:                                             ; preds = %bb.j
  br i1 %i.ai, label %.sink.split, label %bb.aa

.sink.split:                                      ; preds = %bb.z, %setup_idp.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51
  %i.cn = or i32 %i.cm, 128
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !51
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.z, %setup_idp.exit
  %i.co = call ptr @X509_CRL_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 90, ptr noundef nonnull %i.b, ptr noundef null) #9 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !45
  %i.cq = icmp eq ptr %i.co, null
  %i.cr = load i32, ptr %i.b, align 4
  %i.cs = icmp ne i32 %i.cr, -1
  %or.cond3 = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond3, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !51
  %i.cv = or i32 %i.cu, 128
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !51
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cw = call ptr @X509_CRL_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 88, ptr noundef nonnull %i.b, ptr noundef null) #9 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !47
  %i.cy = icmp eq ptr %i.cw, null
  %i.cz = load i32, ptr %i.b, align 4
  %i.da = icmp ne i32 %i.cz, -1
  %or.cond5 = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond5, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 271, ptr noundef nonnull @__func__.crl_cb) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 183, ptr noundef nonnull @.str.18) #9
  br label %ossl_x509_crl_set0_libctx.exit

bb.ae:                                            ; preds = %bb.ac
  %i.db = call ptr @X509_CRL_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 140, ptr noundef nonnull %i.b, ptr noundef null) #9 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !48
  %i.dd = icmp eq ptr %i.db, null                 ; 2 uses
  %i.de = load i32, ptr %i.b, align 4
  %i.df = icmp ne i32 %i.de, -1
  %or.cond7 = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %or.cond7, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 277, ptr noundef nonnull @__func__.crl_cb) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 183, ptr noundef nonnull @.str.19) #9
  br label %ossl_x509_crl_set0_libctx.exit

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.dd, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !47
  %.not104 = icmp eq ptr %i.dg, null
  br i1 %.not104, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !51
  %i.dj = or i32 %i.di, 128
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !51
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !64 ; 3 uses
  %i.dm = call i32 @OPENSSL_sk_num(ptr noundef %i.dl) #9
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph, label %.loopexit119

.lr.ph:                                           ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.ap
  %.090126 = phi i32 [ 0, %.lr.ph ], [ %i.dy, %bb.ap ] ; 2 uses
  %i.dp = call ptr @OPENSSL_sk_value(ptr noundef %i.dl, i32 noundef %.090126) #9 ; 2 uses
  %i.dq = call ptr @X509_EXTENSION_get_object(ptr noundef %i.dp) #9
  %i.dr = call i32 @OBJ_obj2nid(ptr noundef %i.dq) #9 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 857
  br i1 %i.ds, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dt = load i32, ptr %i.do, align 4, !tbaa !51
  %i.du = or i32 %i.dt, 4096
  store i32 %i.du, ptr %i.do, align 4, !tbaa !51
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dv = call i32 @X509_EXTENSION_get_critical(ptr noundef %i.dp) #9
  %.not105 = icmp eq i32 %i.dv, 0
  br i1 %.not105, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  switch i32 %i.dr, label %bb.ao [
    i32 770, label %bb.ap
    i32 140, label %bb.ap
    i32 90, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dw = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dx = or i32 %i.dw, 512
  store i32 %i.dx, ptr %i.do, align 4, !tbaa !51
  br label %.loopexit119

bb.ap:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.am
  %i.dy = add nuw nsw i32 %.090126, 1             ; 2 uses
  %i.dz = call i32 @OPENSSL_sk_num(ptr noundef %i.dl) #9
  %i.ea = icmp slt i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.ak, label %.loopexit119, !llvm.loop !65

.loopexit119:                                     ; preds = %bb.ap, %bb.aj, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !67
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.loopexit119
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !51
  %i.eg = or i32 %i.ef, 128
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !51
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 92, ptr noundef nonnull @__func__.crl_set_issuers) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 184, ptr noundef nonnull @.str.20) #9
  br label %crl_set_issuers.exit.thread

bb.ar:                                            ; preds = %.loopexit119
  %i.eh = call ptr @X509_CRL_get_REVOKED(ptr noundef nonnull %i.c) #9 ; 3 uses
  %i.ei = call i32 @OPENSSL_sk_num(ptr noundef %i.eh) #9
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph76.i, label %.loopexit

.lr.ph76.i:                                       ; preds = %bb.ar
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 10 uses
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.i, %.lr.ph76.i
  %.05374.i = phi ptr [ null, %.lr.ph76.i ], [ %.1.i111, %._crit_edge.i ]
  %.05473.i = phi i32 [ 0, %.lr.ph76.i ], [ %i.gn, %._crit_edge.i ] ; 2 uses
  %i.em = call ptr @OPENSSL_sk_value(ptr noundef %i.eh, i32 noundef %.05473.i) #9 ; 7 uses
  %i.en = call ptr @X509_REVOKED_get0_revocationDate(ptr noundef %i.em) #9
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ep = load i32, ptr %i.el, align 4, !tbaa !51
  %i.eq = or i32 %i.ep, 128
  store i32 %i.eq, ptr %i.el, align 4, !tbaa !51
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 124, ptr noundef nonnull @__func__.crl_set_issuers) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 184, ptr noundef nonnull @.str.21) #9
  br label %crl_set_issuers.exit.thread

bb.au:                                            ; preds = %bb.as
  %i.er = call ptr @X509_REVOKED_get_ext_d2i(ptr noundef %i.em, i32 noundef 771, ptr noundef nonnull %i.a, ptr noundef null) #9 ; 6 uses
  %i.es = icmp eq ptr %i.er, null                 ; 2 uses
  %i.et = load i32, ptr %i.a, align 4
  %i.eu = icmp ne i32 %i.et, -1
  %or.cond.i = select i1 %i.es, i1 %i.eu, i1 false
  br i1 %or.cond.i, label %.loopexit.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.es, label %bb.be, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !58
  %.not62.i = icmp eq i32 %i.ey, 0
  br i1 %.not62.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ez = load i32, ptr %i.el, align 4, !tbaa !51
  %i.fa = or i32 %i.ez, 128
  store i32 %i.fa, ptr %i.el, align 4, !tbaa !51
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 144, ptr noundef nonnull @__func__.crl_set_issuers) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 219, ptr noundef nonnull @.str.22) #9
  call void @GENERAL_NAMES_free(ptr noundef nonnull %i.er) #9
  br label %crl_set_issuers.exit.thread

bb.az:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %i.ek, align 8, !tbaa !49 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.fd = call ptr @OPENSSL_sk_new_null() #9
  %i.fe = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.fd, ptr noundef nonnull @sk_GENERAL_NAMES_freefunc_thunk) #9 ; 3 uses
  store ptr %i.fe, ptr %i.ek, align 8, !tbaa !49
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @GENERAL_NAMES_free(ptr noundef nonnull %i.er) #9
  br label %crl_set_issuers.exit.thread

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.fg = phi ptr [ %i.fe, %bb.ba ], [ %i.fb, %bb.az ]
  %i.fh = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.er) #9
  %.not63.i = icmp eq i32 %i.fh, 0
  br i1 %.not63.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @GENERAL_NAMES_free(ptr noundef nonnull %i.er) #9
  br label %crl_set_issuers.exit.thread

bb.be:                                            ; preds = %bb.bc, %bb.av
  %.1.i111 = phi ptr [ %.05374.i, %bb.av ], [ %i.er, %bb.bc ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store ptr %.1.i111, ptr %i.fi, align 8, !tbaa !68
  %i.fj = call ptr @X509_REVOKED_get_ext_d2i(ptr noundef %i.em, i32 noundef 141, ptr noundef nonnull %i.a, ptr noundef null) #9 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null                 ; 2 uses
  %i.fl = load i32, ptr %i.a, align 4
  %i.fm = icmp ne i32 %i.fl, -1
  %or.cond3.i = select i1 %i.fk, i1 %i.fm, i1 false
  br i1 %or.cond3.i, label %.loopexit.sink.split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.fk, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fn = call i64 @ASN1_ENUMERATED_get(ptr noundef nonnull %i.fj) #9
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !71
  call void @ASN1_ENUMERATED_free(ptr noundef nonnull %i.fj) #9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  store i32 -1, ptr %i.fq, align 8, !tbaa !71
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !72 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !73
  %i.ft = call i32 @OPENSSL_sk_num(ptr noundef %i.fs) #9
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bi, %bb.bo
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !73
  %i.fw = call ptr @OPENSSL_sk_value(ptr noundef %i.fs, i32 noundef %i.fv) #9 ; 3 uses
  %i.fx = call ptr @X509_EXTENSION_get_object(ptr noundef %i.fw) #9
  %i.fy = call i32 @OBJ_obj2nid(ptr noundef %i.fx) #9 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 142
  br i1 %i.fz, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i
  %i.ga = call ptr @X509V3_EXT_d2i(ptr noundef %i.fw) #9 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gc = load i32, ptr %i.el, align 4, !tbaa !51
  %i.gd = or i32 %i.gc, 128
  store i32 %i.gd, ptr %i.el, align 4, !tbaa !51
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__func__.crl_set_issuers) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 184, ptr noundef nonnull @.str.23) #9
  br label %crl_set_issuers.exit.thread

bb.bl:                                            ; preds = %bb.bj
  call void @ASN1_GENERALIZEDTIME_free(ptr noundef nonnull %i.ga) #9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph.i
  %i.ge = call i32 @X509_EXTENSION_get_critical(ptr noundef %i.fw) #9
  %i.gf = icmp eq i32 %i.ge, 0
  %i.gg = icmp eq i32 %i.fy, 771
  %or.cond5.i = or i1 %i.gg, %i.gf
  br i1 %or.cond5.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gh = load i32, ptr %i.el, align 4, !tbaa !51
  %i.gi = or i32 %i.gh, 512
  store i32 %i.gi, ptr %i.el, align 4, !tbaa !51
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.gj = load i32, ptr %i.a, align 4, !tbaa !73
  %i.gk = add nsw i32 %i.gj, 1                    ; 2 uses
  store i32 %i.gk, ptr %i.a, align 4, !tbaa !73
  %i.gl = call i32 @OPENSSL_sk_num(ptr noundef %i.fs) #9
  %i.gm = icmp slt i32 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %bb.bo, %bb.bi
  %i.gn = add nuw nsw i32 %.05473.i, 1            ; 2 uses
  %i.go = call i32 @OPENSSL_sk_num(ptr noundef %i.eh) #9
  %i.gp = icmp slt i32 %i.gn, %i.go
  br i1 %i.gp, label %bb.as, label %.loopexit, !llvm.loop !75

crl_set_issuers.exit.thread:                      ; preds = %bb.aq, %bb.at, %bb.bd, %bb.bk, %bb.bb, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %ossl_x509_crl_set0_libctx.exit

.loopexit.sink.split:                             ; preds = %bb.be, %bb.au
  %i.gq = load i32, ptr %i.el, align 4, !tbaa !51
  %i.gr = or i32 %i.gq, 128
  store i32 %i.gr, ptr %i.el, align 4, !tbaa !51
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i, %.loopexit.sink.split, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !34
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !39 ; 2 uses
  %.not107 = icmp eq ptr %i.gv, null
  br i1 %.not107, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.gw = call i32 %i.gv(ptr noundef nonnull %i.c) #9
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %ossl_x509_crl_set0_libctx.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !51
  %i.ha = or i32 %i.gz, 256
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !51
  br label %ossl_x509_crl_set0_libctx.exit

bb.br:                                            ; preds = %bb.a
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.hc, null
  br i1 %.not, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !40 ; 2 uses
  %.not98 = icmp eq ptr %i.he, null
  br i1 %.not98, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hf = tail call i32 %i.he(ptr noundef nonnull %i.c) #9
  %.not99 = icmp eq i32 %i.hf, 0
  br i1 %.not99, label %ossl_x509_crl_set0_libctx.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !45
  tail call void @AUTHORITY_KEYID_free(ptr noundef %i.hh) #9
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !46
  tail call void @ISSUING_DIST_POINT_free(ptr noundef %i.hj) #9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !47
  tail call void @ASN1_INTEGER_free(ptr noundef %i.hl) #9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !48
  tail call void @ASN1_INTEGER_free(ptr noundef %i.hn) #9
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !49
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.hp, ptr noundef nonnull @GENERAL_NAMES_free) #9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !29
  tail call void @CRYPTO_free(ptr noundef %i.hr, ptr noundef nonnull @.str.3, i32 noundef 331) #9
  br label %ossl_x509_crl_set0_libctx.exit

bb.bv:                                            ; preds = %bb.a
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !29 ; 2 uses
  %.not.i112 = icmp eq ptr %i.c, null
  br i1 %.not.i112, label %ossl_x509_crl_set0_libctx.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !29
  tail call void @CRYPTO_free(ptr noundef %i.hy, ptr noundef nonnull @.str.3, i32 noundef 591) #9
  store ptr null, ptr %i.hx, align 8, !tbaa !29
  %.not11.i = icmp eq ptr %i.ht, null
  br i1 %.not11.i, label %ossl_x509_crl_set0_libctx.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hz = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %i.ht, ptr noundef nonnull @.str.3, i32 noundef 594) #9 ; 2 uses
  store ptr %i.hz, ptr %i.hx, align 8, !tbaa !29
  %i.ia = icmp ne ptr %i.hz, null
  %spec.select = zext i1 %i.ia to i32
  br label %ossl_x509_crl_set0_libctx.exit

ossl_x509_crl_set0_libctx.exit:                   ; preds = %bb.bx, %bb.a, %bb.e, %bb.bq, %bb.bu, %bb.bv, %bb.bw, %crl_set_issuers.exit.thread, %bb.bt, %bb.bp, %bb.c, %bb.af, %bb.ad, %bb.i
  %.192 = phi i32 [ 0, %bb.bt ], [ 1, %bb.a ], [ 0, %bb.i ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %crl_set_issuers.exit.thread ], [ 0, %bb.c ], [ 0, %bb.bp ], [ %spec.select, %bb.bx ], [ 1, %bb.bw ], [ 1, %bb.bv ], [ 1, %bb.bu ], [ 1, %bb.bq ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.192
}

declare void @AUTHORITY_KEYID_free(ptr noundef) local_unnamed_addr #2

declare void @ISSUING_DIST_POINT_free(ptr noundef) local_unnamed_addr #2

declare void @ASN1_INTEGER_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GENERAL_NAMES_free(ptr noundef) #2

declare i32 @X509_CRL_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_sha1() local_unnamed_addr #2

declare ptr @X509_CRL_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
