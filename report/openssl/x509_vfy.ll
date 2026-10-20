Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x509_vfy?download=true
inline.NumInlined: 257
inline.NumDeleted: 55
begin_hunk_0_@internal_verify:bb.a
  %i.ae = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ad, i32 noundef 0) #11
  br label %verify_cb_cert.exit

verify_cb_cert.exit:                              ; preds = %bb.g, %bb.h
  %i.af = phi ptr [ %i.ae, %bb.h ], [ %i.o, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 21, ptr %i.ah, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = tail call i32 %i.aj(i32 noundef 0, ptr noundef nonnull %0) #11, !inline_history !65
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.e, %verify_cb_cert.exit
  %.067 = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ], [ %i.o, %verify_cb_cert.exit ], [ %i.o, %bb.e ]
  %i.am = icmp sgt i32 %i.l, 0
  br i1 %i.am, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread114, %bb.i
  %.066120 = phi ptr [ %i.ac, %.thread114 ], [ %i.o, %bb.i ]
  %.067119 = phi ptr [ %i.o, %.thread114 ], [ %.067, %bb.i ]
  %.070118 = phi i32 [ %i.aa, %.thread114 ], [ %i.m, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.v
  %.1103 = phi ptr [ %.066120, %.lr.ph ], [ %i.cc, %bb.v ] ; 8 uses
  %.168102 = phi ptr [ %.067119, %.lr.ph ], [ %.1103, %bb.v ] ; 9 uses
  %.171100 = phi i32 [ %.070118, %.lr.ph ], [ %i.ca, %bb.v ] ; 10 uses
  %.not82 = icmp eq ptr %.168102, null
  br i1 %.not82, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not83.not = icmp eq ptr %.1103, %.168102
  br i1 %.not83.not, label %bb.l, label %.thread121

.thread121:                                       ; preds = %bb.k
  %i.as = add nuw nsw i32 %.171100, 1
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !94
  %i.aw = and i64 %i.av, 16384
  %.not84 = icmp eq i64 %i.aw, 0
  br i1 %.not84, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.168102, i64 232
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !38
  %i.az = and i32 %i.ay, 8192
  %.not85 = icmp eq i32 %i.az, 0
  br i1 %.not85, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.168102, i64 232
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !38
  %i.bc = and i32 %i.bb, 16
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.thread, label %bb.o

bb.o:                                             ; preds = %.thread121, %bb.n
  %i.be = phi i32 [ %i.as, %.thread121 ], [ %.171100, %bb.n ] ; 3 uses
  %i.bf = tail call i32 @ossl_x509_signing_allowed(ptr noundef nonnull %.168102, ptr noundef %.1103) #11 ; 2 uses
  %.not86 = icmp eq i32 %i.bf, 0
  br i1 %.not86, label %.thread, label %verify_cb_cert.exit92

verify_cb_cert.exit92:                            ; preds = %bb.o
  store i32 %i.be, ptr %i.p, align 4, !tbaa !60
  store ptr %.168102, ptr %i.ap, align 8, !tbaa !62
  store i32 %i.bf, ptr %i.aq, align 8, !tbaa !63
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.bh = tail call i32 %i.bg(i32 noundef 0, ptr noundef nonnull %0) #11, !inline_history !65
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.n, %verify_cb_cert.exit92, %bb.o
  %i.bj = phi i32 [ %.171100, %bb.n ], [ %i.be, %verify_cb_cert.exit92 ], [ %i.be, %bb.o ]
  %i.bk = tail call ptr @X509_get0_pubkey(ptr noundef nonnull %.168102) #11 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %verify_cb_cert.exit95, label %bb.p

verify_cb_cert.exit95:                            ; preds = %.thread
  store i32 %i.bj, ptr %i.p, align 4, !tbaa !60
  store ptr %.168102, ptr %i.ap, align 8, !tbaa !62
  store i32 6, ptr %i.aq, align 8, !tbaa !63
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.bn = tail call i32 %i.bm(i32 noundef 0, ptr noundef nonnull %0) #11, !inline_history !65
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.critedge, label %bb.s

bb.p:                                             ; preds = %.thread
  %i.bp = tail call i32 @X509_verify(ptr noundef %.1103, ptr noundef nonnull %i.bk) #11
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store i32 %.171100, ptr %i.p, align 4, !tbaa !60
  %.not.i97 = icmp eq ptr %.1103, null
  br i1 %.not.i97, label %bb.r, label %verify_cb_cert.exit98

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.bs = tail call ptr @OPENSSL_sk_value(ptr noundef %i.br, i32 noundef %.171100) #11
  br label %verify_cb_cert.exit98

verify_cb_cert.exit98:                            ; preds = %bb.q, %bb.r
  %i.bt = phi ptr [ %i.bs, %bb.r ], [ %.1103, %bb.q ]
  store ptr %i.bt, ptr %i.ap, align 8, !tbaa !62
  store i32 7, ptr %i.aq, align 8, !tbaa !63
  %i.bu = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.bv = tail call i32 %i.bu(i32 noundef 0, ptr noundef nonnull %0) #11, !inline_history !65
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.critedge, label %bb.s

bb.s:                                             ; preds = %verify_cb_cert.exit95, %verify_cb_cert.exit98, %bb.p, %bb.m, %bb.l, %bb.j
  %i.bx = tail call i32 @ossl_x509_check_cert_time(ptr noundef nonnull %0, ptr noundef %.1103, i32 noundef %.171100)
  %.not87 = icmp eq i32 %i.bx, 0
  br i1 %.not87, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %.168102, ptr %i.an, align 8, !tbaa !115
  store ptr %.1103, ptr %i.ap, align 8, !tbaa !62
  store i32 %.171100, ptr %i.p, align 4, !tbaa !60
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.bz = tail call i32 %i.by(i32 noundef 1, ptr noundef nonnull %0) #11
  %.not88 = icmp eq i32 %i.bz, 0
  br i1 %.not88, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not89 = icmp eq i32 %.171100, 0
  br i1 %.not89, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = add nsw i32 %.171100, -1                ; 2 uses
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.cc = tail call ptr @OPENSSL_sk_value(ptr noundef %i.cb, i32 noundef %i.ca) #11
  %i.cd = icmp sgt i32 %.171100, 0
  br i1 %i.cd, label %bb.j, label %.critedge, !llvm.loop !177

.critedge:                                        ; preds = %bb.u, %bb.s, %bb.t, %bb.v, %verify_cb_cert.exit98, %verify_cb_cert.exit92, %verify_cb_cert.exit95, %bb.i, %verify_cb_cert.exit, %bb.b
  %.3 = phi i32 [ 0, %verify_cb_cert.exit ], [ %., %bb.b ], [ 1, %bb.i ], [ 1, %bb.u ], [ 0, %verify_cb_cert.exit92 ], [ 0, %verify_cb_cert.exit98 ], [ 1, %bb.v ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %verify_cb_cert.exit95 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @check_revocation(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !94   ; 8 uses
  %i.k = and i64 %i.j, 4
  %i.l = icmp ne i64 %i.k, 0                      ; 2 uses
  %i.m = and i64 %i.j, 8
  %.not94 = icmp eq i64 %i.m, 0
  %i.n = and i64 %i.j, 12
  %i.o = icmp eq i64 %i.n, 12                     ; 2 uses
  %i.p = and i64 %i.j, 8388608
  %.not92 = icmp eq i64 %i.p, 0
  %i.q = and i64 %i.j, 12582912
  %i.r = icmp ne i64 %i.q, 12582912
  %i.s = and i64 %i.j, 4194308
  %or.cond.not = icmp eq i64 %i.s, 0
  br i1 %or.cond.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = and i64 %i.j, 4194304
  %.not93 = icmp eq i64 %i.t, 0
  br i1 %.not93, label %.loopexit95, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not92, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
  %i.y = tail call i32 @OPENSSL_sk_num(ptr noundef %i.x) #11 ; 2 uses
  %1 = add nsw i32 %i.y, -1
  %.not7398 = icmp slt i32 %i.y, 1
  br i1 %.not7398, label %.loopexit95, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d, %bb.f
  %.0122 = phi i32 [ %1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ac
  %.06599 = phi i32 [ 0, %.lr.ph ], [ %.pre-phi, %bb.ac ] ; 5 uses
  store i32 %.06599, ptr %i.z, align 4, !tbaa !60
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.ah = call ptr @OPENSSL_sk_value(ptr noundef %i.ag, i32 noundef %.06599) #11 ; 2 uses
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !38
  %i.ak = and i32 %i.aj, 8192
  %.not77 = icmp eq i32 %i.ak, 0
  br i1 %.not77, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = add nuw nsw i32 %.06599, 1
  br label %bb.ac

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.am = add nuw nsw i32 %.06599, 1              ; 5 uses
  %i.an = call ptr @OPENSSL_sk_value(ptr noundef %i.al, i32 noundef %i.am) #11 ; 2 uses
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !115
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.as = and i64 %i.ar, 524288
  %.not81 = icmp eq i64 %i.as, 0
  br i1 %.not81, label %.loopexit.sink.split, label %bb.ac

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !119
  %i.au = call i32 @OPENSSL_sk_num(ptr noundef %i.at) #11 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.z, align 4, !tbaa !60  ; 2 uses
  %.not.i = icmp sgt i32 %i.au, %i.aw
  br i1 %.not.i, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !119
  %i.ay = call ptr @OPENSSL_sk_value(ptr noundef %i.ax, i32 noundef range(i32 -2147483648, 2147483647) %i.aw) #11 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = call ptr @OCSP_response_get1_basic(ptr noundef nonnull %i.ay) #11 ; 13 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = call i32 @OCSP_resp_count(ptr noundef nonnull %i.ba) #11 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = call i32 @OCSP_response_status(ptr noundef nonnull %i.ay) #11
  %.not47.i = icmp eq i32 %i.be, 0
  br i1 %.not47.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @OCSP_BASICRESP_free(ptr noundef nonnull %i.ba) #11
  br label %check_cert_ocsp_resp.exit.thread84

bb.q:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.bg = load ptr, ptr %0, align 8, !tbaa !127
  %i.bh = call i32 @OCSP_basic_verify(ptr noundef nonnull %i.ba, ptr noundef %i.bf, ptr noundef %i.bg, i64 noundef 0) #11
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %check_cert_ocsp_resp.exit.thread84, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %.03652.i = phi i32 [ %i.bv, %bb.u ], [ 0, %bb.q ] ; 2 uses
  %i.bj = call ptr @OCSP_resp_get0(ptr noundef nonnull %i.ba, i32 noundef %.03652.i) #11
  %i.bk = call ptr @OCSP_SINGLERESP_get0_id(ptr noundef %i.bj) #11 ; 2 uses
  %i.bl = call i32 @OCSP_id_get0_info(ptr noundef null, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef %i.bk) #11 ; 0 uses
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !182 ; 2 uses
  %.not48.i = icmp eq ptr %i.bm, null
  br i1 %.not48.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bn = call i32 @OBJ_obj2nid(ptr noundef nonnull %i.bm) #11
  %i.bo = call ptr @OBJ_nid2sn(i32 noundef %i.bn) #11
  %i.bp = call ptr @EVP_get_digestbyname(ptr noundef %i.bo) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %.034.i = phi ptr [ %i.bp, %bb.r ], [ null, %.lr.ph.i ]
  %i.bq = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !115
  %i.bs = call ptr @OCSP_cert_to_id(ptr noundef %.034.i, ptr noundef %i.bq, ptr noundef %i.br) #11 ; 8 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %check_cert_ocsp_resp.exit.thread84, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call i32 @OCSP_id_cmp(ptr noundef nonnull %i.bs, ptr noundef %i.bk) #11
  %.not49.i = icmp eq i32 %i.bu, 0
  br i1 %.not49.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @OCSP_CERTID_free(ptr noundef nonnull %i.bs) #11
  %i.bv = add nuw nsw i32 %.03652.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bv, %i.bc
  br i1 %exitcond.not.i, label %check_cert_ocsp_resp.exit.thread84, label %.lr.ph.i, !llvm.loop !178

bb.v:                                             ; preds = %bb.t
  %i.bw = call i32 @OCSP_resp_find_status(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %check_cert_ocsp_resp.exit.thread84, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load i32, ptr %i.a, align 4, !tbaa !59  ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %check_cert_ocsp_resp.exit

bb.x:                                             ; preds = %bb.w
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.cc = call i32 @OCSP_check_validity(ptr noundef %i.ca, ptr noundef %i.cb, i64 noundef 300, i64 noundef -1) #11
  %.not50.i = icmp eq i32 %i.cc, 0
  br i1 %.not50.i, label %check_cert_ocsp_resp.exit.thread84, label %check_cert_ocsp_resp.exit.thread88

check_cert_ocsp_resp.exit.thread88:               ; preds = %bb.x
  call void @OCSP_CERTID_free(ptr noundef nonnull %i.bs) #11
  call void @OCSP_BASICRESP_free(ptr noundef nonnull %i.ba) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ac

check_cert_ocsp_resp.exit.thread84:               ; preds = %bb.u, %bb.s, %bb.p, %bb.q, %bb.v, %bb.x
  %.035.i.ph = phi ptr [ null, %bb.p ], [ %i.ba, %bb.q ], [ %i.ba, %bb.x ], [ %i.ba, %bb.v ], [ %i.ba, %bb.s ], [ %i.ba, %bb.u ]
  %.2.i.ph = phi ptr [ null, %bb.p ], [ null, %bb.q ], [ %i.bs, %bb.x ], [ %i.bs, %bb.v ], [ null, %bb.s ], [ null, %bb.u ]
  call void @OCSP_CERTID_free(ptr noundef %.2.i.ph) #11
  call void @OCSP_BASICRESP_free(ptr noundef %.035.i.ph) #11
  br label %.sink.split

check_cert_ocsp_resp.exit:                        ; preds = %bb.w
  call void @OCSP_CERTID_free(ptr noundef nonnull %i.bs) #11
  call void @OCSP_BASICRESP_free(ptr noundef nonnull %i.ba) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %cond = icmp eq i32 %i.by, 1
  br i1 %cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %check_cert_ocsp_resp.exit
  %i.cd = load i32, ptr %i.ae, align 8, !tbaa !63 ; 2 uses
  %.not80 = icmp eq i32 %i.cd, 0
  %spec.select = select i1 %.not80, i32 74, i32 %i.cd
  br label %.loopexit.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m, %bb.n, %bb.k, %bb.j, %check_cert_ocsp_resp.exit.thread84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %check_cert_ocsp_resp.exit
  %i.ce = icmp eq i32 %.06599, 0
  %or.cond3 = and i1 %i.l, %i.ce
  %or.cond = or i1 %i.o, %or.cond3
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = call fastcc i32 @check_cert_crl(ptr noundef %0)
  %.not79 = icmp eq i32 %i.cf, 0
  br i1 %.not79, label %.loopexit, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store i32 74, ptr %i.ae, align 8, !tbaa !63
  %i.cg = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ch = call i32 %i.cg(i32 noundef 0, ptr noundef %0) #11, !inline_history !179
  %.not78 = icmp eq i32 %i.ch, 0
  br i1 %.not78, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %check_cert_ocsp_resp.exit.thread88, %bb.aa, %bb.ab, %bb.i
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.am, %check_cert_ocsp_resp.exit.thread88 ], [ %i.am, %bb.aa ], [ %i.am, %bb.ab ], [ %i.am, %bb.i ] ; 2 uses
  %.not73 = icmp sgt i32 %.pre-phi, %.0122
  br i1 %.not73, label %.loopexit95, label %bb.g, !llvm.loop !180

.loopexit95:                                      ; preds = %bb.ac, %bb.f, %bb.b
  %or.cond5.not = and i1 %i.r, %i.l
  br i1 %or.cond5.not, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %.loopexit95
  br i1 %.not94, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61
  %i.ck = call i32 @OPENSSL_sk_num(ptr noundef %i.cj) #11
  %i.cl = add nsw i32 %i.ck, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !117
  %.not74 = icmp eq ptr %i.cn, null
  br i1 %.not74, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1 = phi i32 [ %i.cl, %bb.ae ], [ 0, %bb.af ]  ; 2 uses
  %i.co = and i64 %i.j, 4194312
  %or.cond7 = icmp eq i64 %i.co, 4194312
  %. = zext i1 %or.cond7 to i32                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %.not75100 = icmp slt i32 %.1, %.
  br i1 %.not75100, label %.loopexit, label %.lr.ph102

bb.ah:                                            ; preds = %.lr.ph102
  %i.cq = add nuw nsw i32 %.2101, 1               ; 2 uses
  %.not75 = icmp sgt i32 %i.cq, %.1
  br i1 %.not75, label %.loopexit, label %.lr.ph102, !llvm.loop !181

.lr.ph102:                                        ; preds = %bb.ag, %bb.ah
  %.2101 = phi i32 [ %i.cq, %bb.ah ], [ %., %bb.ag ] ; 2 uses
  store i32 %.2101, ptr %i.cp, align 4, !tbaa !60
  %i.cr = call fastcc i32 @check_cert_crl(ptr noundef nonnull %0)
  %.not76 = icmp eq i32 %i.cr, 0
  br i1 %.not76, label %.loopexit, label %bb.ah

.loopexit.sink.split:                             ; preds = %bb.i, %bb.y
  %spec.select.sink = phi i32 [ %spec.select, %bb.y ], [ 74, %bb.i ]
  store i32 %spec.select.sink, ptr %i.ae, align 8, !tbaa !63
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ct = call i32 %i.cs(i32 noundef 0, ptr noundef nonnull %0) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.aa, %.lr.ph102, %bb.ah, %.loopexit.sink.split, %bb.ag, %.loopexit95, %bb.af, %bb.e, %bb.a
  %.067 = phi i32 [ %i.ct, %.loopexit.sink.split ], [ 1, %bb.ah ], [ 1, %bb.e ], [ 1, %bb.a ], [ 1, %.loopexit95 ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 0, %.lr.ph102 ], [ 0, %bb.aa ], [ 0, %bb.ab ]
  ret i32 %.067
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_crl(ptr noundef initializes((208, 216)) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.x509_store_ctx_st, align 8  ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %i.d) #11
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.g, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.b, %i.f
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @OPENSSL_sk_value(ptr noundef %i.k, i32 noundef %i.f) #11 ; 5 uses
  %.not56 = icmp eq ptr %i.l, null
  br i1 %.not56, label %bb.aj, label %bb.d, !prof !138

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = tail call i32 %i.n(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.l) #11
  %.not57 = icmp eq i32 %i.o, 0
  br i1 %.not57, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 33, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = tail call i32 %i.r(i32 noundef 0, ptr noundef nonnull %0) #11, !inline_history !1
  %.not58 = icmp eq i32 %i.s, 0
  br i1 %.not58, label %bb.aj, label %.thread

bb.f:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.b, 1
  %i.u = tail call ptr @OPENSSL_sk_value(ptr noundef %i.k, i32 noundef %i.t) #11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.aj, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.04872 = phi ptr [ %i.u, %bb.f ], [ %i.i, %bb.a ], [ %i.l, %bb.d ], [ %i.l, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.04872, i64 232
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  %i.ab = and i32 %i.aa, 2
  %.not59 = icmp eq i32 %i.ab, 0
  br i1 %.not59, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.04872, i64 236
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !139
  %i.ae = and i32 %i.ad, 2
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 35, ptr %i.ag, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = tail call i32 %i.ai(i32 noundef 0, ptr noundef nonnull %0) #11, !inline_history !1
  %.not60 = icmp eq i32 %i.aj, 0
  br i1 %.not60, label %bb.aj, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !103 ; 2 uses
  %i.am = and i32 %i.al, 128
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 44, ptr %i.ao, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.ar = tail call i32 %i.aq(i32 noundef 0, ptr noundef nonnull %0) #11, !inline_history !1
  %.not61 = icmp eq i32 %i.ar, 0
  br i1 %.not61, label %bb.aj, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i32, ptr %i.ak, align 8, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.as = phi i32 [ %.pre, %._crit_edge ], [ %i.al, %bb.j ]
  %i.at = and i32 %i.as, 8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %2, i8 0, i64 288, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !117
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.n, label %check_crl_path.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %0, align 8, !tbaa !127
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bb = call i32 @X509_STORE_CTX_init(ptr noundef nonnull %2, ptr noundef %i.ay, ptr noundef %i.av, ptr noundef %i.ba), !inline_history !184
  %.not14.i = icmp eq i32 %i.bb, 0
  br i1 %.not14.i, label %check_crl_path.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !118
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54
  call void @X509_VERIFY_PARAM_free(ptr noundef %i.bi) #11, !inline_history !184
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  store ptr %0, ptr %i.bj, align 8, !tbaa !117
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = call fastcc i32 @x509_verify_rpk(ptr noundef nonnull %2), !inline_history !184
  br label %X509_verify_cert.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bq = call fastcc i32 @x509_verify_x509(ptr noundef nonnull %2), !inline_history !184
  br label %X509_verify_cert.exit.i

X509_verify_cert.exit.i:                          ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ %i.bq, %bb.q ], [ %i.bp, %bb.p ]
  %i.br = icmp slt i32 %.0.i.i, 1
  br i1 %i.br, label %bb.s, label %bb.r

bb.r:                                             ; preds = %X509_verify_cert.exit.i
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !61  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61 ; 2 uses
  %i.bv = call i32 @OPENSSL_sk_num(ptr noundef %i.bs) #11, !inline_history !184
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = call ptr @OPENSSL_sk_value(ptr noundef %i.bs, i32 noundef %i.bw) #11, !inline_history !184
  %i.by = call i32 @OPENSSL_sk_num(ptr noundef %i.bu) #11, !inline_history !184
  %i.bz = add nsw i32 %i.by, -1
  %i.ca = call ptr @OPENSSL_sk_value(ptr noundef %i.bu, i32 noundef %i.bz) #11, !inline_history !184
  %i.cb = call i32 @X509_cmp(ptr noundef %i.bx, ptr noundef %i.ca) #11, !inline_history !184
  %i.cc = icmp ne i32 %i.cb, 0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %X509_verify_cert.exit.i
  %.0.i = phi i1 [ true, %X509_verify_cert.exit.i ], [ %i.cc, %bb.r ]
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !124 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.ce, null
  br i1 %.not.i15.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = call i32 %i.ce(ptr noundef nonnull %2) #11, !inline_history !185 ; 0 uses
  store ptr null, ptr %i.cd, align 8, !tbaa !124
  br label %bb.u

end_hunk_0
