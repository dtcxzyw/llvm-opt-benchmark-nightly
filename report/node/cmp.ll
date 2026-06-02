inline.NumInlined: 70
inline.NumDeleted: 33
begin_hunk_0_@setup_request_ctx:bb.a
  br label %.critedge

bb.eq:                                            ; preds = %bb.en
  %i.ou = call fastcc i32 @set_gennames(ptr noundef %0, ptr noundef %i.oo)
  %.not293 = icmp eq i32 %i.ou, 0
  br i1 %.not293, label %.critedge, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ov = load i32, ptr @opt_san_nodefault, align 4, !tbaa !5
  %.not294 = icmp eq i32 %i.ov, 0
  br i1 %.not294, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ow = load ptr, ptr @opt_sans, align 8, !tbaa !9
  %i.ox = icmp eq ptr %i.ow, null
  %i.oy = load i32, ptr @opt_verbosity, align 4
  %i.oz = icmp slt i32 %i.oy, 4
  %or.cond131 = select i1 %i.ox, i1 true, i1 %i.oz
  br i1 %or.cond131, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.pa = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.pb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pa, ptr noundef nonnull @.str.578, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 2015, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.pc = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 21, i32 noundef 1) #11 ; 0 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.er
  %i.pd = load i32, ptr @opt_policy_oids_critical, align 4, !tbaa !5
  %.not295 = icmp eq i32 %i.pd, 0
  br i1 %.not295, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.pe = load ptr, ptr @opt_policy_oids, align 8, !tbaa !9
  %i.pf = icmp ne ptr %i.pe, null
  %i.pg = load i32, ptr @opt_verbosity, align 4
  %i.ph = icmp slt i32 %i.pg, 4
  %or.cond133 = select i1 %i.pf, i1 true, i1 %i.ph
  br i1 %or.cond133, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.pi = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.pj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pi, ptr noundef nonnull @.str.579, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 2022, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.pk = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 23, i32 noundef 1) #11 ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ev
  %.pr332 = load ptr, ptr @opt_policy_oids, align 8, !tbaa !9 ; 2 uses
  %.not296337 = icmp eq ptr %.pr332, null
  br i1 %.not296337, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ez, %bb.fk
  %i.pl = phi ptr [ %i.pm, %bb.fk ], [ %.pr332, %bb.ez ]
  %i.pm = call ptr @next_item(ptr noundef nonnull %i.pl) #11 ; 3 uses
  %i.pn = load ptr, ptr @opt_policy_oids, align 8, !tbaa !9
  %i.po = call ptr @OBJ_txt2obj(ptr noundef %i.pn, i32 noundef 1) #11 ; 4 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %.lr.ph
  %i.pq = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.pr = icmp slt i32 %i.pq, 3
  br i1 %i.pr, label %.critedge, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ps = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.pt = load ptr, ptr @opt_policy_oids, align 8, !tbaa !9
  %i.pu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ps, ptr noundef nonnull @.str.580, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 2032, ptr noundef nonnull @.str.352, ptr noundef %i.pt, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %.critedge

bb.fc:                                            ; preds = %.lr.ph
  %i.pv = call i32 @OBJ_obj2nid(ptr noundef nonnull %i.po) #11
  %i.pw = icmp ne i32 %i.pv, 0
  %i.px = load i32, ptr @opt_verbosity, align 4
  %i.py = icmp slt i32 %i.px, 4
  %or.cond135 = select i1 %i.pw, i1 true, i1 %i.py
  br i1 %or.cond135, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.pz = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.qa = load ptr, ptr @opt_policy_oids, align 8, !tbaa !9
  %i.qb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pz, ptr noundef nonnull @.str.581, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 2036, ptr noundef nonnull @.str.363, ptr noundef %i.qa, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.qc = call ptr @POLICYINFO_new() #11          ; 4 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  call void @ASN1_OBJECT_free(ptr noundef nonnull %i.po) #11
  br label %.critedge

bb.fg:                                            ; preds = %bb.fe
  store ptr %i.po, ptr %i.qc, align 8, !tbaa !79
  %i.qe = call i32 @OSSL_CMP_CTX_push0_policy(ptr noundef %0, ptr noundef nonnull %i.qc) #11
  %.not299 = icmp eq i32 %i.qe, 0
  br i1 %.not299, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.qf = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.qg = icmp slt i32 %i.qf, 3
  br i1 %i.qg, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.qh = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.qi = load ptr, ptr @opt_policy_oids, align 8, !tbaa !9
  %i.qj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qh, ptr noundef nonnull @.str.582, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 2045, ptr noundef nonnull @.str.352, ptr noundef %i.qi, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  call void @POLICYINFO_free(ptr noundef nonnull %i.qc) #11
  br label %.critedge

bb.fk:                                            ; preds = %bb.fg
  store ptr %i.pm, ptr @opt_policy_oids, align 8, !tbaa !9
  %.not296 = icmp eq ptr %i.pm, null
  br i1 %.not296, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.fk, %bb.ez
  %i.qk = load i32, ptr @opt_popo, align 4, !tbaa !5 ; 2 uses
  %i.ql = icmp sgt i32 %i.qk, -2
  br i1 %i.ql, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %._crit_edge
  %i.qm = call i32 @OSSL_CMP_CTX_set_option(ptr noundef %0, i32 noundef 24, i32 noundef %i.qk) #11 ; 0 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %._crit_edge
  %i.qn = load ptr, ptr @opt_oldcert, align 8, !tbaa !9 ; 2 uses
  %.not297 = icmp eq ptr %i.qn, null
  br i1 %.not297, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.qo = load i32, ptr @opt_cmd, align 4, !tbaa !5 ; 3 uses
  %i.qp = icmp eq i32 %i.qo, 5
  br i1 %i.qp, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.qq = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.qr = icmp slt i32 %i.qq, 4
  br i1 %i.qr, label %bb.fr, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.qs = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.qt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qs, ptr noundef nonnull @.str.583, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 2056, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fn
  %i.qu = load ptr, ptr @opt_keypass, align 8, !tbaa !9
  %i.qv = icmp eq i32 %i.qo, 1
  %i.qw = icmp eq i32 %i.qo, 4
  %i.qx = select i1 %i.qw, ptr @.str.585, ptr @.str.586
  %i.qy = select i1 %i.qv, ptr @.str.584, ptr %i.qx
  %i.qz = call fastcc i32 @setup_cert(ptr noundef %0, ptr noundef nonnull %i.qn, ptr noundef %i.qu, ptr noundef nonnull %i.qy, ptr noundef nonnull @OSSL_CMP_CTX_set1_oldCert)
  %.not298 = icmp eq i32 %i.qz, 0
  br i1 %.not298, label %.critedge, label %bb.fr

bb.fr:                                            ; preds = %bb.fo, %bb.fp, %bb.fq, %bb.fm
  %i.ra = load ptr, ptr @opt_keypass, align 8, !tbaa !9
  call void @cleanse(ptr noundef %i.ra) #11
  br label %.critedge

bb.fs:                                            ; preds = %bb.ed, %bb.eb
  %.1211 = phi ptr [ %.0210, %bb.ed ], [ %i.nk, %bb.eb ] ; 2 uses
  %i.rb = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.rc = icmp slt i32 %i.rb, 3
  br i1 %i.rc, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.rd = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.re = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.rd, ptr noundef nonnull @.str.350, ptr noundef nonnull @__func__.setup_request_ctx, ptr noundef nonnull @.str.351, i32 noundef 2071, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %bb.el, %bb.ek, %bb.eh, %bb.eg
  %.2212 = phi ptr [ %.1211, %bb.fs ], [ %.1211, %bb.ft ], [ %.0210, %bb.ek ], [ %.0210, %bb.el ], [ %.0210, %bb.eg ], [ %.0210, %bb.eh ]
  %i.rf = load ptr, ptr %i.a, align 8, !tbaa !77
  call void @OPENSSL_sk_pop_free(ptr noundef %i.rf, ptr noundef nonnull @X509_EXTENSION_free) #11
  call void @X509_REQ_free(ptr noundef %.2212) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.ao, %bb.am, %bb.ap, %bb.ai, %bb.ag, %bb.aj, %bb.f, %bb.d, %bb.g, %bb.bt, %bb.bu, %bb.fj, %bb.ff, %bb.fa, %bb.fb, %bb.cn, %bb.cm, %bb.cp, %bb.cq, %bb.fq, %bb.eq, %bb.ep, %bb.eo, %bb.ea, %bb.dv, %bb.du, %bb.ds, %bb.dr, %bb.do, %.critedge303, %bb.cw, %bb.cv, %bb.cf, %bb.ce, %bb.ca, %bb.bz, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.x, %bb.y, %bb.t, %bb.s, %bb.q, %bb.p, %bb.j, %bb.i, %bb.fu, %bb.fr
  %.11 = phi i32 [ 0, %bb.bt ], [ 0, %bb.j ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.f ], [ 0, %bb.cf ], [ 0, %bb.ds ], [ 0, %bb.fu ], [ 0, %bb.ea ], [ 0, %bb.cn ], [ 1, %bb.fr ], [ 0, %bb.eq ], [ 0, %bb.ep ], [ 0, %bb.dv ], [ 0, %bb.do ], [ 0, %.critedge303 ], [ 0, %bb.cw ], [ 0, %bb.ai ], [ 0, %bb.ca ], [ 0, %bb.fj ], [ 0, %bb.ae ], [ 0, %bb.fq ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ad ], [ 0, %bb.bz ], [ 0, %bb.ce ], [ 0, %bb.cv ], [ 0, %bb.dr ], [ 0, %bb.du ], [ 0, %bb.eo ], [ 0, %bb.cq ], [ 0, %bb.cp ], [ 0, %bb.cm ], [ 0, %bb.fb ], [ 0, %bb.fa ], [ 0, %bb.ff ], [ 0, %bb.bu ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.aj ], [ 0, %bb.ag ], [ 0, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.11
}

declare i32 @OSSL_CMP_CTX_set1_recipient(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_CTX_set1_expected_sender(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @handle_opt_geninfo(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load ptr, ptr @opt_geninfo, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = tail call ptr @__ctype_b_loc() #14
  br label %bb.b

bb.b:                                             ; preds = %bb.an, %bb.a
  %.044 = phi ptr [ %i.b, %bb.a ], [ %.3, %bb.an ]
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %.044, %bb.b ], [ %i.j, %bb.c ] ; 7 uses
  %i.e = load i8, ptr %.1, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !31
  %i.i = and i16 %i.h, 8192
  %.not = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !83

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1, i32 noundef 58) #12 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.n = icmp slt i32 %i.m, 3
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.p = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.o, ptr noundef nonnull @.str.592, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2124, ptr noundef nonnull @.str.352, ptr noundef nonnull %.1, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store i8 0, ptr %i.k, align 1, !tbaa !12
  %i.r = tail call ptr @OBJ_txt2obj(ptr noundef nonnull %.1, i32 noundef 0) #11 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.u = icmp slt i32 %i.t, 3
  br i1 %i.u, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.w = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.v, ptr noundef nonnull @.str.593, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2129, ptr noundef nonnull @.str.352, ptr noundef nonnull %.1, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.x = tail call i32 @OBJ_obj2nid(ptr noundef nonnull %i.r) #11
  %i.y = icmp ne i32 %i.x, 0
  %i.z = load i32, ptr @opt_verbosity, align 4
  %i.aa = icmp slt i32 %i.z, 4
  %or.cond = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.ac = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ab, ptr noundef nonnull @.str.594, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2133, ptr noundef nonnull @.str.363, ptr noundef nonnull %.1, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = tail call ptr @ASN1_TYPE_new() #11      ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.ao, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.595, i64 noundef 4) #11
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 3 uses
  %i.ai = call i64 @strtol(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a, i32 noundef 10) #11
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !9   ; 5 uses
  %i.ak = icmp eq ptr %i.aj, %i.ah
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.am = icmp slt i32 %i.al, 3
  br i1 %i.am, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ao = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.an, ptr noundef nonnull @.str.596, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2140, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.aq

bb.q:                                             ; preds = %bb.n
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !12
  switch i8 %i.ap, label %bb.r [
    i8 0, label %bb.u
    i8 44, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.ar = icmp slt i32 %i.aq, 3
  br i1 %i.ar, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.at = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.as, ptr noundef nonnull @.str.597, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2147, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.aq

bb.t:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %.2 = phi ptr [ %i.au, %bb.t ], [ %i.aj, %bb.q ]
  %i.av = tail call ptr @ASN1_INTEGER_new() #11   ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.ao, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = tail call i32 @ASN1_INTEGER_set(ptr noundef nonnull %i.av, i64 noundef %i.ai) #11
  %.not68 = icmp eq i32 %i.ax, 0
  br i1 %.not68, label %bb.ao, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @ASN1_TYPE_set(ptr noundef nonnull %i.ad, i32 noundef 2, ptr noundef nonnull %i.av) #11
  br label %bb.ag

bb.x:                                             ; preds = %bb.m
  %i.ay = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.598, i64 noundef 4) #11
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 4 uses
  %i.bb = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ba, i32 noundef 44) #12 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  store ptr %i.be, ptr %i.a, align 8, !tbaa !9
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !9
  store i8 0, ptr %i.bb, align 1, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bg = tail call ptr @ASN1_UTF8STRING_new() #11 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = tail call i32 @ASN1_STRING_set(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.ba, i32 noundef -1) #11
  %.not65 = icmp eq i32 %i.bi, 0
  br i1 %.not65, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %1 = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @ASN1_TYPE_set(ptr noundef nonnull %i.ad, i32 noundef 12, ptr noundef nonnull %i.bg) #11
  br label %bb.ag

bb.ae:                                            ; preds = %bb.x
  %i.bj = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.bk = icmp slt i32 %i.bj, 3
  br i1 %i.bk, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bl = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.bm = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bl, ptr noundef nonnull @.str.599, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2173, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.q, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ad, %bb.w
  %.3 = phi ptr [ %.2, %bb.w ], [ %1, %bb.ad ]    ; 2 uses
  %i.bn = tail call ptr @OSSL_CMP_ITAV_create(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ad) #11 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bp = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.bq = icmp slt i32 %i.bp, 3
  br i1 %i.bq, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.bs = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.br, ptr noundef nonnull @.str.600, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2178, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ag
  %i.bt = tail call i32 @OSSL_CMP_CTX_push0_geninfo_ITAV(ptr noundef %0, ptr noundef nonnull %i.bn) #11
  %.not69 = icmp eq i32 %i.bt, 0
  br i1 %.not69, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bu = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.bv = icmp slt i32 %i.bu, 3
  br i1 %i.bv, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.bx = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bw, ptr noundef nonnull @.str.601, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2185, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  tail call void @OSSL_CMP_ITAV_free(ptr noundef nonnull %i.bn) #11
  br label %.loopexit

bb.an:                                            ; preds = %bb.aj
  %i.by = load i8, ptr %.3, align 1, !tbaa !12
  %.not70 = icmp eq i8 %i.by, 0
  br i1 %.not70, label %.loopexit, label %bb.b, !llvm.loop !84

bb.ao:                                            ; preds = %bb.ab, %bb.ac, %bb.u, %bb.v, %bb.l
  %.251 = phi ptr [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.u ], [ %i.av, %bb.v ], [ null, %bb.l ] ; 2 uses
  %.247 = phi ptr [ null, %bb.ab ], [ %i.bg, %bb.ac ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.l ] ; 2 uses
  %i.bz = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.ca = icmp slt i32 %i.bz, 3
  br i1 %i.ca, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cb = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.cc = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cb, ptr noundef nonnull @.str.350, ptr noundef nonnull @__func__.handle_opt_geninfo, ptr noundef nonnull @.str.351, i32 noundef 2193, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.s, %bb.r, %bb.p, %bb.o
  %.352 = phi ptr [ %.251, %bb.ao ], [ %.251, %bb.ap ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.ae ], [ null, %bb.af ]
  %.348 = phi ptr [ %.247, %bb.ao ], [ %.247, %bb.ap ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.ae ], [ null, %bb.af ]
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.r) #11
  tail call void @ASN1_TYPE_free(ptr noundef %i.ad) #11
  tail call void @ASN1_INTEGER_free(ptr noundef %.352) #11
  tail call void @ASN1_UTF8STRING_free(ptr noundef %.348) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %bb.i, %bb.h, %bb.f, %bb.e, %bb.aq, %bb.am
  %.0 = phi i32 [ 0, %bb.am ], [ 0, %bb.f ], [ 0, %bb.aq ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.h ], [ 1, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @add_certProfile(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef 1) #11 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @ASN1_UTF8STRING_new() #11 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @ASN1_STRING_set(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i32 noundef %i.g) #11
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ASN1_STRING_free(ptr noundef nonnull %i.d) #11
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.j = tail call ptr @OSSL_CMP_ITAV_new0_certProfile(ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @OSSL_CMP_CTX_push0_geninfo_ITAV(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #11
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @OSSL_CMP_ITAV_free(ptr noundef nonnull %i.j) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.e
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.b, ptr noundef nonnull @ASN1_UTF8STRING_free) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.i, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ 1, %bb.g ]
  ret i32 %.0
}

declare i32 @opt_format(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_CTX_set1_srvCert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_VERIFY_PARAM_clear_flags(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_CTX_set_certConf_cb_arg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_MSG_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @write_PKIMESSAGE(ptr noundef %0, ptr noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.d = icmp slt i32 %i.c, 3
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.f = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.e, ptr noundef nonnull @.str.490, ptr noundef nonnull @__func__.write_PKIMESSAGE, ptr noundef nonnull @.str.351, i32 noundef 883, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !9      ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.j = icmp slt i32 %i.i, 3
  br i1 %i.j, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.k, ptr noundef nonnull @.str.491, ptr noundef nonnull @__func__.write_PKIMESSAGE, ptr noundef nonnull @.str.351, i32 noundef 887, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.m = tail call ptr @next_item(ptr noundef nonnull %i.g) #11
  store ptr %i.m, ptr %1, align 8, !tbaa !9
  %i.n = tail call i32 @OSSL_CMP_MSG_write(ptr noundef nonnull %i.g, ptr noundef nonnull %0) #11
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr @opt_verbosity, align 4, !tbaa !5
  %i.q = icmp slt i32 %i.p, 3
  br i1 %i.q, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.r, ptr noundef nonnull @.str.492, ptr noundef nonnull @__func__.write_PKIMESSAGE, ptr noundef nonnull @.str.351, i32 noundef 894, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.353) #11 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.h ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_PKIMESSAGE(ptr noundef %0, ptr noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
end_hunk_0
