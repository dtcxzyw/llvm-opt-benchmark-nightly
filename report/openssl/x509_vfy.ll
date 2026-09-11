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
  %i.v = tail call i32 @X509_NAME_cmp(ptr noundef %i.t, ptr noundef %i.u) #11 ; 2 uses
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
  %5 = tail call i32 @ossl_x509_check_crl_time(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0)
  %6 = shl nuw nsw i32 %5, 6
  %7 = or disjoint i32 %i.ac, %6
  %i.ad = or disjoint i32 %7, %.044
  %.2 = xor i32 %i.ad, 256                        ; 6 uses
  %i.ae = tail call ptr @X509_CRL_get_issuer(ptr noundef nonnull %3) #11 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !60 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ai) #11
  %i.ak = add nsw i32 %i.aj, -1
  %.not.i = icmp ne i32 %i.ag, %i.ak
  %i.al = zext i1 %.not.i to i32
  %spec.select.i = add nsw i32 %i.ag, %i.al       ; 2 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.an = tail call ptr @OPENSSL_sk_value(ptr noundef %i.am, i32 noundef %spec.select.i) #11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !243
  %i.aq = tail call i32 @X509_check_akid(ptr noundef %i.an, ptr noundef %i.ap) #11
  %8 = or i32 %i.aq, %i.v
  %.not41.i = icmp eq i32 %8, 0
  br i1 %.not41.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = or disjoint i32 %.2, 28
  store ptr %i.an, ptr %1, align 8, !tbaa !95
  br label %crl_akid_check.exit

bb.k:                                             ; preds = %bb.i
  %.145.i = add nsw i32 %spec.select.i, 1         ; 2 uses
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.at = tail call i32 @OPENSSL_sk_num(ptr noundef %i.as) #11
  %i.au = icmp slt i32 %.145.i, %i.at
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.n
  %.146.i = phi i32 [ %.1.i, %bb.n ], [ %.145.i, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aw = tail call ptr @OPENSSL_sk_value(ptr noundef %i.av, i32 noundef %.146.i) #11 ; 3 uses
  %i.ax = tail call ptr @X509_get_subject_name(ptr noundef %i.aw) #11
  %i.ay = tail call i32 @X509_NAME_cmp(ptr noundef %i.ax, ptr noundef %i.ae) #11
  %.not43.i = icmp eq i32 %i.ay, 0
  br i1 %.not43.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !243
  %i.ba = tail call i32 @X509_check_akid(ptr noundef %i.aw, ptr noundef %i.az) #11
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = or disjoint i32 %.2, 12
  store ptr %i.aw, ptr %1, align 8, !tbaa !95
  br label %crl_akid_check.exit

bb.n:                                             ; preds = %bb.l, %.lr.ph.i
  %.1.i = add nsw i32 %.146.i, 1                  ; 2 uses
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.be = tail call i32 @OPENSSL_sk_num(ptr noundef %i.bd) #11
  %i.bf = icmp slt i32 %.1.i, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !235

._crit_edge.i:                                    ; preds = %bb.n, %bb.k
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !94
  %i.bj = and i64 %i.bi, 4096
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %crl_akid_check.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.bn = tail call i32 @OPENSSL_sk_num(ptr noundef %i.bm) #11
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph48.i, label %crl_akid_check.exit

.lr.ph48.i:                                       ; preds = %.preheader.i, %bb.q
  %.047.i = phi i32 [ %i.bx, %bb.q ], [ 0, %.preheader.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.bq = tail call ptr @OPENSSL_sk_value(ptr noundef %i.bp, i32 noundef %.047.i) #11 ; 3 uses
  %i.br = tail call ptr @X509_get_subject_name(ptr noundef %i.bq) #11
  %i.bs = tail call i32 @X509_NAME_cmp(ptr noundef %i.br, ptr noundef %i.ae) #11
  %.not42.i = icmp eq i32 %i.bs, 0
  br i1 %.not42.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph48.i
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !243
  %i.bu = tail call i32 @X509_check_akid(ptr noundef %i.bq, ptr noundef %i.bt) #11
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bq, ptr %1, align 8, !tbaa !95
  %i.bw = or disjoint i32 %.2, 4
  br label %crl_akid_check.exit

bb.q:                                             ; preds = %bb.o, %.lr.ph48.i
  %i.bx = add nuw nsw i32 %.047.i, 1              ; 2 uses
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.bz = tail call i32 @OPENSSL_sk_num(ptr noundef %i.by) #11
  %i.ca = icmp slt i32 %i.bx, %i.bz
  br i1 %i.ca, label %.lr.ph48.i, label %crl_akid_check.exit, !llvm.loop !236

crl_akid_check.exit:                              ; preds = %bb.q, %bb.j, %bb.m, %._crit_edge.i, %.preheader.i, %bb.p
  %.4 = phi i32 [ %i.bc, %bb.m ], [ %.2, %._crit_edge.i ], [ %i.bw, %bb.p ], [ %i.ar, %bb.j ], [ %.2, %.preheader.i ], [ %.2, %bb.q ] ; 10 uses
  %i.cb = and i32 %.4, 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.an, label %bb.r

bb.r:                                             ; preds = %crl_akid_check.exit
  %i.cd = load i32, ptr %i.b, align 8, !tbaa !140 ; 3 uses
  %i.ce = and i32 %i.cd, 16
  %.not.i30 = icmp eq i32 %i.ce, 0
  br i1 %.not.i30, label %bb.s, label %crl_crldp_check.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !38
  %i.ch = and i32 %i.cg, 16
  %.not27.i = icmp eq i32 %i.ch, 0
  br i1 %.not27.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = and i32 %i.cd, 4
  %.not29.i = icmp eq i32 %i.ci, 0
  br i1 %.not29.i, label %bb.v, label %crl_crldp_check.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.cj = and i32 %i.cd, 8
  %.not28.i = icmp eq i32 %i.cj, 0
  br i1 %.not28.i, label %bb.v, label %crl_crldp_check.exit.thread

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !242 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !244
  %i.co = tail call i32 @OPENSSL_sk_num(ptr noundef %i.cn) #11
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i32, label %._crit_edge.i31

.lr.ph.i32:                                       ; preds = %bb.v
  %i.cq = and i32 %.4, 32
  %.not30.i = icmp eq i32 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 144
  br label %bb.w

bb.w:                                             ; preds = %crldp_check_crlissuer.exit.thread.i, %.lr.ph.i32
  %.02352.i = phi i32 [ 0, %.lr.ph.i32 ], [ %i.ft, %crldp_check_crlissuer.exit.thread.i ] ; 2 uses
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !244
  %i.ct = tail call ptr @OPENSSL_sk_value(ptr noundef %i.cs, i32 noundef %.02352.i) #11 ; 3 uses
  %i.cu = tail call ptr @X509_CRL_get_issuer(ptr noundef nonnull %3) #11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !247 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %crldp_check_crlissuer.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.cy = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.cw) #11
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i.i, label %crldp_check_crlissuer.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.y
  %.01215.i.i = phi i32 [ %i.dh, %bb.y ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !247
  %i.db = tail call ptr @OPENSSL_sk_value(ptr noundef %i.da, i32 noundef %.01215.i.i) #11 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !145
  %.not.i.i = icmp eq i32 %i.dc, 4
  br i1 %.not.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !97
  %i.df = tail call i32 @X509_NAME_cmp(ptr noundef %i.de, ptr noundef %i.cu) #11
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %crldp_check_crlissuer.exit.thread36.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %i.dh = add nuw nsw i32 %.01215.i.i, 1          ; 2 uses
  %i.di = load ptr, ptr %i.cv, align 8, !tbaa !247
  %i.dj = tail call i32 @OPENSSL_sk_num(ptr noundef %i.di) #11
  %i.dk = icmp slt i32 %i.dh, %i.dj
  br i1 %i.dk, label %.lr.ph.i.i, label %crldp_check_crlissuer.exit.thread.i, !llvm.loop !237

crldp_check_crlissuer.exit.i:                     ; preds = %bb.w
  br i1 %.not30.i, label %crldp_check_crlissuer.exit.thread.i, label %crldp_check_crlissuer.exit.thread36.i

crldp_check_crlissuer.exit.thread36.i:            ; preds = %bb.x, %crldp_check_crlissuer.exit.i
  %i.dl = load ptr, ptr %i.cr, align 8, !tbaa !248 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %crl_crldp_check.exit.thread48, label %bb.z

bb.z:                                             ; preds = %crldp_check_crlissuer.exit.thread36.i
  %i.dn = load ptr, ptr %i.ct, align 8, !tbaa !249 ; 5 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !251 ; 7 uses
  %i.dp = icmp eq ptr %i.dn, null
  %i.dq = icmp eq ptr %i.do, null
  %or.cond.i.i = or i1 %i.dp, %i.dq
  br i1 %or.cond.i.i, label %crl_crldp_check.exit.thread48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = load i32, ptr %i.dn, align 8, !tbaa !253
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !254 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %crldp_check_crlissuer.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i32, ptr %i.do, align 8, !tbaa !253
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.ad, label %.preheader47.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !254 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %crldp_check_crlissuer.exit.thread.i, label %idp_check_dp.exit.i

bb.ae:                                            ; preds = %bb.aa
  %i.eb = load i32, ptr %i.do, align 8, !tbaa !253
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.af, label %.preheader.i32.i

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !254 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %crldp_check_crlissuer.exit.thread.i, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %bb.af, %bb.ac
  %.sink72.i.i = phi ptr [ %i.do, %bb.ac ], [ %i.dn, %bb.af ]
  %.038.ph.i.i = phi ptr [ %i.du, %bb.ac ], [ %i.ee, %bb.af ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sink72.i.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !97 ; 3 uses
  %i.ei = tail call i32 @OPENSSL_sk_num(ptr noundef %i.eh) #11
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i33.i, label %crldp_check_crlissuer.exit.thread.i

.preheader.i32.i:                                 ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !97
  %i.em = tail call i32 @OPENSSL_sk_num(ptr noundef %i.el) #11
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph55.i.i, label %crldp_check_crlissuer.exit.thread.i

.lr.ph55.i.i:                                     ; preds = %.preheader.i32.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  br label %bb.ai

.lr.ph.i33.i:                                     ; preds = %.preheader47.i.i, %bb.ah
  %.03649.i.i = phi i32 [ %i.ev, %bb.ah ], [ 0, %.preheader47.i.i ] ; 2 uses
  %i.ep = tail call ptr @OPENSSL_sk_value(ptr noundef %i.eh, i32 noundef %.03649.i.i) #11 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !145
  %.not45.i.i = icmp eq i32 %i.eq, 4
  br i1 %.not45.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i33.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !97
  %i.et = tail call i32 @X509_NAME_cmp(ptr noundef nonnull %.038.ph.i.i, ptr noundef %i.es) #11
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %crl_crldp_check.exit.thread48, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i33.i
  %i.ev = add nuw nsw i32 %.03649.i.i, 1          ; 2 uses
  %i.ew = tail call i32 @OPENSSL_sk_num(ptr noundef %i.eh) #11
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i33.i, label %crldp_check_crlissuer.exit.thread.i, !llvm.loop !238

bb.ai:                                            ; preds = %._crit_edge.i.i, %.lr.ph55.i.i
  %.154.i.i = phi i32 [ 0, %.lr.ph55.i.i ], [ %i.fl, %._crit_edge.i.i ] ; 2 uses
  %i.ey = load ptr, ptr %i.ek, align 8, !tbaa !97
  %i.ez = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ey, i32 noundef %.154.i.i) #11
  %i.fa = load ptr, ptr %i.eo, align 8, !tbaa !97
  %i.fb = tail call i32 @OPENSSL_sk_num(ptr noundef %i.fa) #11
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph53.i.i, label %._crit_edge.i.i

bb.aj:                                            ; preds = %.lr.ph53.i.i
  %i.fd = add nuw nsw i32 %.052.i.i, 1            ; 2 uses
  %i.fe = load ptr, ptr %i.eo, align 8, !tbaa !97
  %i.ff = tail call i32 @OPENSSL_sk_num(ptr noundef %i.fe) #11
  %i.fg = icmp slt i32 %i.fd, %i.ff
  br i1 %i.fg, label %.lr.ph53.i.i, label %._crit_edge.i.i, !llvm.loop !239

.lr.ph53.i.i:                                     ; preds = %bb.ai, %bb.aj
  %.052.i.i = phi i32 [ %i.fd, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.fh = load ptr, ptr %i.eo, align 8, !tbaa !97
  %i.fi = tail call ptr @OPENSSL_sk_value(ptr noundef %i.fh, i32 noundef %.052.i.i) #11
  %i.fj = tail call i32 @GENERAL_NAME_cmp(ptr noundef %i.ez, ptr noundef %i.fi) #11
end_hunk_0
