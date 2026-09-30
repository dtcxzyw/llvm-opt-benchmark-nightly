Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x509_vfy?download=true
inline.NumInlined: 257
inline.NumDeleted: 55
begin_hunk_0_@check_cert_crl:bb.a
  store ptr null, ptr %i.e, align 8, !tbaa !146
  %i.ah = call ptr @X509_get_issuer_name(ptr noundef %i.m) #11
  %i.ai = load i32, ptr %i.q, align 4, !tbaa !142
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !59
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.ak = call fastcc i32 @get_crl_sk(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.aj)
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !136
  %i.am = call ptr %i.al(ptr noundef nonnull %0, ptr noundef %i.ah) #11, !inline_history !234 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  %i.ao = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ap = icmp ne ptr %i.ao, null
  %or.cond.i = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = call fastcc i32 @get_crl_sk(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.am) ; 0 uses
  call void @OPENSSL_sk_pop_free(ptr noundef %i.am, ptr noundef nonnull @X509_CRL_free) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.pr.i = load ptr, ptr %i.d, align 8, !tbaa !146 ; 2 uses
  %.not18.i = icmp eq ptr %.pr.i, null
  br i1 %.not18.i, label %get_crl_delta.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %i.ar = phi ptr [ %.pr.i, %bb.j ], [ %i.ao, %bb.h ]
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !95
  store ptr %i.as, ptr %i.o, align 8, !tbaa !115
  %i.at = load i32, ptr %i.b, align 4, !tbaa !59
  store i32 %i.at, ptr %i.p, align 8, !tbaa !103
  %i.au = load i32, ptr %i.c, align 4, !tbaa !59
  store i32 %i.au, ptr %i.q, align 4, !tbaa !142
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !146
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !146
  br label %get_crl_delta.exit

get_crl_delta.exit:                               ; preds = %bb.j, %.thread.i
  %.476 = phi ptr [ %i.av, %.thread.i ], [ null, %bb.j ]
  %.0.i = phi i32 [ 1, %.thread.i ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.k

bb.k:                                             ; preds = %get_crl_delta.exit, %bb.f
  %.173 = phi ptr [ %.476, %get_crl_delta.exit ], [ null, %bb.f ] ; 9 uses
  %.1 = phi i32 [ %.0.i, %get_crl_delta.exit ], [ %i.ac, %bb.f ]
  %.not62 = icmp eq i32 %.1, 0
  br i1 %.not62, label %.thread79.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !132
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.ay = call i32 %i.aw(ptr noundef nonnull %0, ptr noundef %i.ax) #11
  %.not63 = icmp eq i32 %i.ay, 0
  br i1 %.not63, label %.thread79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not64 = icmp eq ptr %.173, null
  br i1 %.not64, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !132
  %i.ba = call i32 %i.az(ptr noundef nonnull %0, ptr noundef nonnull %.173) #11
  %.not65 = icmp eq i32 %i.ba, 0
  br i1 %.not65, label %.thread79, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !133
  %i.bc = call i32 %i.bb(ptr noundef nonnull %0, ptr noundef nonnull %.173, ptr noundef %i.m) #11 ; 3 uses
  switch i32 %i.bc, label %.thread [
    i32 0, label %.thread79
    i32 2, label %bb.p
  ]

.thread:                                          ; preds = %bb.o, %bb.m
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !133
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.bf = call i32 %i.bd(ptr noundef nonnull %0, ptr noundef %i.be, ptr noundef %i.m) #11 ; 2 uses
  %.not68 = icmp eq i32 %i.bf, 0
  br i1 %.not68, label %.thread79, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread
  %.3 = phi i32 [ %i.bf, %.thread ], [ %i.bc, %bb.o ]
  store ptr null, ptr %i.z, align 8, !tbaa !116
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !146
  call void @X509_CRL_free(ptr noundef %i.bg) #11
  call void @X509_CRL_free(ptr noundef %.173) #11
  store ptr null, ptr %i.f, align 8, !tbaa !146
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !142 ; 3 uses
  %i.bi = icmp eq i32 %i.aa, %i.bh
  br i1 %i.bi, label %.thread79.sink.split, label %bb.b

.thread79.sink.split:                             ; preds = %bb.p, %bb.k
  %.375.ph = phi ptr [ %.173, %bb.k ], [ null, %bb.p ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 3, ptr %i.bj, align 8, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64
  %i.bm = call i32 %i.bl(i32 noundef 0, ptr noundef nonnull %0) #11
  br label %.thread79

.thread79:                                        ; preds = %bb.b, %.thread, %bb.n, %bb.l, %bb.o, %.thread79.sink.split
  %.375 = phi ptr [ %.375.ph, %.thread79.sink.split ], [ %.173, %bb.l ], [ %.173, %bb.o ], [ %.173, %bb.n ], [ null, %bb.b ], [ %.173, %.thread ]
  %.5 = phi i32 [ %i.bm, %.thread79.sink.split ], [ 0, %bb.l ], [ %i.bc, %bb.o ], [ 0, %bb.n ], [ %.3, %bb.b ], [ 0, %.thread ]
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !146
  call void @X509_CRL_free(ptr noundef %i.bn) #11
  call void @X509_CRL_free(ptr noundef %.375) #11
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.bo, align 8, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %.thread79
  %.048 = phi i32 [ %.5, %.thread79 ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  ret i32 %.048
}

declare ptr @OCSP_response_get1_basic(ptr noundef) local_unnamed_addr #2

declare i32 @OCSP_resp_count(ptr noundef) local_unnamed_addr #2

declare i32 @OCSP_response_status(ptr noundef) local_unnamed_addr #2

declare void @OCSP_BASICRESP_free(ptr noundef) local_unnamed_addr #2

declare i32 @OCSP_basic_verify(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @OCSP_resp_get0(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OCSP_SINGLERESP_get0_id(ptr noundef) local_unnamed_addr #2

declare i32 @OCSP_id_get0_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_get_digestbyname(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare ptr @OCSP_cert_to_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OCSP_id_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCSP_CERTID_free(ptr noundef) local_unnamed_addr #2

declare i32 @OCSP_resp_find_status(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OCSP_check_validity(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 512) i32 @get_crl_score(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !59     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !140  ; 3 uses
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %i.i = and i64 %i.h, 4096
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.c, 96
  %.not26 = icmp eq i32 %i.k, 0
  br i1 %.not26, label %bb.g, label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.l = and i32 %i.c, 64
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.n = load i32, ptr %i.m, align 4, !tbaa !242
  %i.o = xor i32 %i.a, -1
  %i.p = and i32 %i.n, %i.o
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.an, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111
  %.not25 = icmp eq ptr %i.s, null
  br i1 %.not25, label %bb.g, label %bb.an

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.t = tail call ptr @X509_get_issuer_name(ptr noundef %4) #11
  %i.u = tail call ptr @X509_CRL_get_issuer(ptr noundef nonnull %3) #11
  %i.v = tail call i32 @X509_NAME_cmp(ptr noundef %i.t, ptr noundef %i.u) #11
  %.not27 = icmp eq i32 %i.v, 0
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.b, align 8, !tbaa !140
  %i.x = and i32 %i.w, 32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.an, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.044 = phi i32 [ 0, %bb.h ], [ 32, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !141
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = and i32 %i.ab, 256
  %i.ad = or disjoint i32 %i.ac, %.044
  %spec.select = xor i32 %i.ad, 256               ; 2 uses
  %i.ae = tail call i32 @ossl_x509_check_crl_time(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0)
  %.not28 = icmp eq i32 %i.ae, 0
  %5 = or disjoint i32 %spec.select, 64
  %.2 = select i1 %.not28, i32 %spec.select, i32 %5 ; 7 uses
  %i.af = tail call ptr @X509_CRL_get_issuer(ptr noundef nonnull %3) #11 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.ak = tail call i32 @OPENSSL_sk_num(ptr noundef %i.aj) #11
  %i.al = add nsw i32 %i.ak, -1
  %.not.i = icmp ne i32 %i.ah, %i.al
  %i.am = zext i1 %.not.i to i32
  %spec.select.i = add nsw i32 %i.ah, %i.am       ; 2 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.ao = tail call ptr @OPENSSL_sk_value(ptr noundef %i.an, i32 noundef %spec.select.i) #11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !243
  %i.ar = tail call i32 @X509_check_akid(ptr noundef %i.ao, ptr noundef %i.aq) #11
  %6 = icmp ne i32 %i.ar, 0
  %7 = and i32 %.2, 32
  %.not41.i = icmp eq i32 %7, 0
  %or.cond = select i1 %6, i1 true, i1 %.not41.i
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = or i32 %.2, 28
  store ptr %i.ao, ptr %1, align 8, !tbaa !95
  br label %crl_akid_check.exit

bb.k:                                             ; preds = %bb.i
  %.145.i = add nsw i32 %spec.select.i, 1         ; 2 uses
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.au = tail call i32 @OPENSSL_sk_num(ptr noundef %i.at) #11
  %i.av = icmp slt i32 %.145.i, %i.au
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.n
  %.146.i = phi i32 [ %.1.i, %bb.n ], [ %.145.i, %bb.k ] ; 2 uses
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.ax = tail call ptr @OPENSSL_sk_value(ptr noundef %i.aw, i32 noundef %.146.i) #11 ; 3 uses
  %i.ay = tail call ptr @X509_get_subject_name(ptr noundef %i.ax) #11
  %i.az = tail call i32 @X509_NAME_cmp(ptr noundef %i.ay, ptr noundef %i.af) #11
  %.not43.i = icmp eq i32 %i.az, 0
  br i1 %.not43.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !243
  %i.bb = tail call i32 @X509_check_akid(ptr noundef %i.ax, ptr noundef %i.ba) #11
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = or i32 %.2, 12
  store ptr %i.ax, ptr %1, align 8, !tbaa !95
  br label %crl_akid_check.exit

bb.n:                                             ; preds = %bb.l, %.lr.ph.i
  %.1.i = add nsw i32 %.146.i, 1                  ; 2 uses
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.bf = tail call i32 @OPENSSL_sk_num(ptr noundef %i.be) #11
  %i.bg = icmp slt i32 %.1.i, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !235

._crit_edge.i:                                    ; preds = %bb.n, %bb.k
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !94
  %i.bk = and i64 %i.bj, 4096
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %crl_akid_check.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53
  %i.bo = tail call i32 @OPENSSL_sk_num(ptr noundef %i.bn) #11
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph48.i, label %crl_akid_check.exit

.lr.ph48.i:                                       ; preds = %.preheader.i, %bb.q
  %.047.i = phi i32 [ %i.by, %bb.q ], [ 0, %.preheader.i ] ; 2 uses
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !53
  %i.br = tail call ptr @OPENSSL_sk_value(ptr noundef %i.bq, i32 noundef %.047.i) #11 ; 3 uses
  %i.bs = tail call ptr @X509_get_subject_name(ptr noundef %i.br) #11
  %i.bt = tail call i32 @X509_NAME_cmp(ptr noundef %i.bs, ptr noundef %i.af) #11
  %.not42.i = icmp eq i32 %i.bt, 0
  br i1 %.not42.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph48.i
  %i.bu = load ptr, ptr %i.ap, align 8, !tbaa !243
  %i.bv = tail call i32 @X509_check_akid(ptr noundef %i.br, ptr noundef %i.bu) #11
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.br, ptr %1, align 8, !tbaa !95
  %i.bx = or i32 %.2, 4
  br label %crl_akid_check.exit

bb.q:                                             ; preds = %bb.o, %.lr.ph48.i
  %i.by = add nuw nsw i32 %.047.i, 1              ; 2 uses
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !53
  %i.ca = tail call i32 @OPENSSL_sk_num(ptr noundef %i.bz) #11
  %i.cb = icmp slt i32 %i.by, %i.ca
  br i1 %i.cb, label %.lr.ph48.i, label %crl_akid_check.exit, !llvm.loop !236

crl_akid_check.exit:                              ; preds = %bb.q, %bb.j, %bb.m, %._crit_edge.i, %.preheader.i, %bb.p
  %.4 = phi i32 [ %i.bd, %bb.m ], [ %.2, %._crit_edge.i ], [ %i.bx, %bb.p ], [ %i.as, %bb.j ], [ %.2, %.preheader.i ], [ %.2, %bb.q ] ; 10 uses
  %i.cc = and i32 %.4, 4
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.an, label %bb.r

bb.r:                                             ; preds = %crl_akid_check.exit
  %i.ce = load i32, ptr %i.b, align 8, !tbaa !140 ; 3 uses
  %i.cf = and i32 %i.ce, 16
  %.not.i30 = icmp eq i32 %i.cf, 0
  br i1 %.not.i30, label %bb.s, label %crl_crldp_check.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !38
  %i.ci = and i32 %i.ch, 16
  %.not27.i = icmp eq i32 %i.ci, 0
  br i1 %.not27.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = and i32 %i.ce, 4
  %.not29.i = icmp eq i32 %i.cj, 0
  br i1 %.not29.i, label %bb.v, label %crl_crldp_check.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.ck = and i32 %i.ce, 8
  %.not28.i = icmp eq i32 %i.ck, 0
  br i1 %.not28.i, label %bb.v, label %crl_crldp_check.exit.thread

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !242 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !244
  %i.cp = tail call i32 @OPENSSL_sk_num(ptr noundef %i.co) #11
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i32, label %._crit_edge.i31

.lr.ph.i32:                                       ; preds = %bb.v
  %i.cr = and i32 %.4, 32
  %.not30.i = icmp eq i32 %i.cr, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 144
  br label %bb.w

bb.w:                                             ; preds = %crldp_check_crlissuer.exit.thread.i, %.lr.ph.i32
  %.02352.i = phi i32 [ 0, %.lr.ph.i32 ], [ %i.fu, %crldp_check_crlissuer.exit.thread.i ] ; 2 uses
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !244
  %i.cu = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ct, i32 noundef %.02352.i) #11 ; 3 uses
  %i.cv = tail call ptr @X509_CRL_get_issuer(ptr noundef nonnull %3) #11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !247 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %crldp_check_crlissuer.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.cz = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.cx) #11
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i, label %crldp_check_crlissuer.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.y
  %.01215.i.i = phi i32 [ %i.di, %bb.y ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !247
  %i.dc = tail call ptr @OPENSSL_sk_value(ptr noundef %i.db, i32 noundef %.01215.i.i) #11 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !145
  %.not.i.i = icmp eq i32 %i.dd, 4
  br i1 %.not.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !97
  %i.dg = tail call i32 @X509_NAME_cmp(ptr noundef %i.df, ptr noundef %i.cv) #11
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %crldp_check_crlissuer.exit.thread36.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %i.di = add nuw nsw i32 %.01215.i.i, 1          ; 2 uses
  %i.dj = load ptr, ptr %i.cw, align 8, !tbaa !247
  %i.dk = tail call i32 @OPENSSL_sk_num(ptr noundef %i.dj) #11
  %i.dl = icmp slt i32 %i.di, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i, label %crldp_check_crlissuer.exit.thread.i, !llvm.loop !237

crldp_check_crlissuer.exit.i:                     ; preds = %bb.w
  br i1 %.not30.i, label %crldp_check_crlissuer.exit.thread.i, label %crldp_check_crlissuer.exit.thread36.i

crldp_check_crlissuer.exit.thread36.i:            ; preds = %bb.x, %crldp_check_crlissuer.exit.i
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !248 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %crl_crldp_check.exit.thread48, label %bb.z

bb.z:                                             ; preds = %crldp_check_crlissuer.exit.thread36.i
  %i.do = load ptr, ptr %i.cu, align 8, !tbaa !249 ; 5 uses
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !251 ; 7 uses
  %i.dq = icmp eq ptr %i.do, null
  %i.dr = icmp eq ptr %i.dp, null
  %or.cond.i.i = or i1 %i.dq, %i.dr
  br i1 %or.cond.i.i, label %crl_crldp_check.exit.thread48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = load i32, ptr %i.do, align 8, !tbaa !253
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !254 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %crldp_check_crlissuer.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = load i32, ptr %i.dp, align 8, !tbaa !253
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.ad, label %.preheader47.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !254 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %crldp_check_crlissuer.exit.thread.i, label %idp_check_dp.exit.i

bb.ae:                                            ; preds = %bb.aa
  %i.ec = load i32, ptr %i.dp, align 8, !tbaa !253
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.af, label %.preheader.i32.i

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !254 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %crldp_check_crlissuer.exit.thread.i, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %bb.af, %bb.ac
  %.sink72.i.i = phi ptr [ %i.dp, %bb.ac ], [ %i.do, %bb.af ]
  %.038.ph.i.i = phi ptr [ %i.dv, %bb.ac ], [ %i.ef, %bb.af ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sink72.i.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97 ; 3 uses
  %i.ej = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ei) #11
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i33.i, label %crldp_check_crlissuer.exit.thread.i

.preheader.i32.i:                                 ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !97
  %i.en = tail call i32 @OPENSSL_sk_num(ptr noundef %i.em) #11
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph55.i.i, label %crldp_check_crlissuer.exit.thread.i

.lr.ph55.i.i:                                     ; preds = %.preheader.i32.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  br label %bb.ai

.lr.ph.i33.i:                                     ; preds = %.preheader47.i.i, %bb.ah
  %.03649.i.i = phi i32 [ %i.ew, %bb.ah ], [ 0, %.preheader47.i.i ] ; 2 uses
  %i.eq = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ei, i32 noundef %.03649.i.i) #11 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !145
  %.not45.i.i = icmp eq i32 %i.er, 4
  br i1 %.not45.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i33.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !97
  %i.eu = tail call i32 @X509_NAME_cmp(ptr noundef nonnull %.038.ph.i.i, ptr noundef %i.et) #11
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %crl_crldp_check.exit.thread48, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i33.i
  %i.ew = add nuw nsw i32 %.03649.i.i, 1          ; 2 uses
  %i.ex = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ei) #11
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph.i33.i, label %crldp_check_crlissuer.exit.thread.i, !llvm.loop !238

bb.ai:                                            ; preds = %._crit_edge.i.i, %.lr.ph55.i.i
  %.154.i.i = phi i32 [ 0, %.lr.ph55.i.i ], [ %i.fm, %._crit_edge.i.i ] ; 2 uses
  %i.ez = load ptr, ptr %i.el, align 8, !tbaa !97
  %i.fa = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ez, i32 noundef %.154.i.i) #11
  %i.fb = load ptr, ptr %i.ep, align 8, !tbaa !97
  %i.fc = tail call i32 @OPENSSL_sk_num(ptr noundef %i.fb) #11
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph53.i.i, label %._crit_edge.i.i

bb.aj:                                            ; preds = %.lr.ph53.i.i
  %i.fe = add nuw nsw i32 %.052.i.i, 1            ; 2 uses
  %i.ff = load ptr, ptr %i.ep, align 8, !tbaa !97
  %i.fg = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ff) #11
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph53.i.i, label %._crit_edge.i.i, !llvm.loop !239

.lr.ph53.i.i:                                     ; preds = %bb.ai, %bb.aj
  %.052.i.i = phi i32 [ %i.fe, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.fi = load ptr, ptr %i.ep, align 8, !tbaa !97
  %i.fj = tail call ptr @OPENSSL_sk_value(ptr noundef %i.fi, i32 noundef %.052.i.i) #11
  %i.fk = tail call i32 @GENERAL_NAME_cmp(ptr noundef %i.fa, ptr noundef %i.fj) #11
end_hunk_0
