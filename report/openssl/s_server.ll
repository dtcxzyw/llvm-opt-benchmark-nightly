inline.NumInlined: 78
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ssl_ech_servername_cb:bb.a
  br label %.thread

bb.aq:                                            ; preds = %bb.ao
  %i.cu = load ptr, ptr @ctx2, align 8, !tbaa !20
  %.not85 = icmp eq ptr %i.cu, null
  br i1 %.not85, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.cw = call i32 @BIO_puts(ptr noundef %i.cv, ptr noundef nonnull @.str.537) #15 ; 0 uses
  %i.cx = load ptr, ptr @ctx2, align 8, !tbaa !20
  %i.cy = call ptr @SSL_set_SSL_CTX(ptr noundef %0, ptr noundef %i.cx) #15 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.aj, %bb.ac, %bb.aq, %bb.ar, %bb.an, %bb.ak, %bb.aa, %bb.z, %bb.ap
  %.1 = phi i32 [ %i.ct, %bb.ap ], [ 3, %bb.z ], [ 3, %bb.aa ], [ %i.cn, %bb.ak ], [ 0, %bb.ac ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.aj ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.1
}

declare void @SSL_CTX_ech_set_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ech_print_cb(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @bio_s_out, align 8, !tbaa !22
  %i.b = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.a, ptr noundef nonnull @.str.538, ptr noundef nonnull %1) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

declare i32 @set_up_srp_verifier_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_CTX_set_client_CA_list(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SSL_load_client_CA_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @cert_status_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  store ptr null, ptr %i.i, align 8, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.m = tail call i32 @BIO_puts(ptr noundef %i.l, ptr noundef nonnull @.str.539) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = call i64 @SSL_ctrl(ptr noundef %0, i32 noundef 142, i64 noundef 0, ptr noundef nonnull %i.i) #15 ; 0 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.o) #15
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.bh

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %.not22 = icmp eq ptr %i.t, null
  br i1 %.not22, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.t) #15 ; 3 uses
  %i.v = call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef %i.u) #15 ; 2 uses
  %i.w = call ptr @OPENSSL_sk_set_cmp_thunks(ptr noundef %i.v, ptr noundef nonnull @sk_OCSP_RESPONSE_cmpfunc_thunk) #15 ; 0 uses
  %i.x = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.v, ptr noundef nonnull @sk_OCSP_RESPONSE_freefunc_thunk) #15 ; 10 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.z = icmp sgt i32 %i.u, 0
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.ab = call i32 @BIO_puts(ptr noundef %i.aa, ptr noundef nonnull @.str.542) #15 ; 0 uses
  br label %get_ocsp_resp_from_files.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.02332.i = phi i32 [ %i.ao, %bb.k ], [ 0, %.preheader.i ] ; 2 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ad = call ptr @OPENSSL_sk_value(ptr noundef %i.ac, i32 noundef %.02332.i) #15 ; 3 uses
  %i.ae = call ptr @bio_open_default(ptr noundef %i.ad, i8 noundef signext 114, i32 noundef 4) #15 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ag = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.ah = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ag, ptr noundef nonnull @.str.543, ptr noundef %i.ad) #15 ; 0 uses
  br label %bb.af

bb.i:                                             ; preds = %.lr.ph.i
  %i.ai = call ptr @ASN1_d2i_bio(ptr noundef nonnull @OCSP_RESPONSE_new, ptr noundef nonnull @d2i_OCSP_RESPONSE, ptr noundef nonnull %i.ae, ptr noundef null) #15 ; 2 uses
  %i.aj = call i32 @BIO_free(ptr noundef nonnull %i.ae) #15 ; 0 uses
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.am = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.al, ptr noundef nonnull @.str.544, ptr noundef %i.ad) #15 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.an = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ai) #15 ; 0 uses
  %i.ao = add nuw nsw i32 %.02332.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %i.u
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !80

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store ptr null, ptr %i.h, align 8, !tbaa !12
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !78  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.aq = call ptr @OPENSSL_sk_set_thunks(ptr noundef nonnull %i.ap, ptr noundef nonnull @sk_OCSP_RESPONSE_freefunc_thunk) #15
  call void @OPENSSL_sk_pop_free(ptr noundef %i.aq, ptr noundef nonnull @OCSP_RESPONSE_free) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.ar = call i64 @SSL_ctrl(ptr noundef %0, i32 noundef 115, i64 noundef 0, ptr noundef nonnull %i.h) #15 ; 0 uses
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !12
  %.not62.i.i = icmp eq ptr %i.as, null
  br i1 %.not62.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !30
  %.not63.i.i = icmp eq i32 %i.au, 0
  br i1 %.not63.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = call i32 @SSL_is_dtls(ptr noundef %0) #15
  %.not64.i.i = icmp eq i32 %i.av, 0
  br i1 %.not64.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aw = call i32 @SSL_version(ptr noundef %0) #15
  %i.ax = icmp sgt i32 %i.aw, 771
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.az = call i32 @OPENSSL_sk_num(ptr noundef %i.ay) #15
  %i.ba = add nsw i32 %i.az, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ 1, %bb.o ], [ %i.ba, %bb.q ], [ 1, %bb.p ], [ 1, %bb.n ], [ 1, %bb.m ] ; 4 uses
  %i.bb = call ptr @SSL_get_certificate(ptr noundef %0) #15 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bring_ocsp_resp_in_correct_order.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef %.0.i.i) #15 ; 2 uses
  %i.be = call ptr @OPENSSL_sk_set_cmp_thunks(ptr noundef %i.bd, ptr noundef nonnull @sk_OCSP_RESPONSE_cmpfunc_thunk) #15 ; 0 uses
  %i.bf = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.bd, ptr noundef nonnull @sk_OCSP_RESPONSE_freefunc_thunk) #15 ; 2 uses
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !78
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = icmp sgt i32 %.0.i.i, 0
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %.lr.ph75.i.i, label %bring_ocsp_resp_in_correct_order.exit.i

.lr.ph75.i.i:                                     ; preds = %bb.s
  %i.bi = add nsw i32 %.0.i.i, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.ae, %.lr.ph75.i.i
  %.04674.i.i = phi i32 [ 0, %.lr.ph75.i.i ], [ %i.cl, %bb.ae ] ; 4 uses
  %.05173.i.i = phi ptr [ %i.bb, %.lr.ph75.i.i ], [ %.152.i.i, %bb.ae ]
  %.not65.i.i = icmp eq i32 %.04674.i.i, 0
  br i1 %.not65.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.bk = call ptr @OPENSSL_sk_value(ptr noundef %i.bj, i32 noundef -1) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.152.i.i = phi ptr [ %i.bk, %bb.u ], [ %.05173.i.i, %bb.t ] ; 2 uses
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.bm = call ptr @OPENSSL_sk_value(ptr noundef %i.bl, i32 noundef %.04674.i.i) #15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null                 ; 2 uses
  %i.bo = icmp eq i32 %.04674.i.i, %i.bi
  %or.cond.i.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bp = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.x) #15
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.x, label %.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.br = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.x, i32 noundef 0) #15
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.bt = call i32 @OPENSSL_sk_push(ptr noundef %i.bs, ptr noundef %i.br) #15 ; 0 uses
  %i.bu = call ptr @OPENSSL_sk_delete(ptr noundef nonnull %i.x, i32 noundef 0) #15 ; 0 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.v
  br i1 %i.bn, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = call ptr @OCSP_cert_to_id(ptr noundef null, ptr noundef %.152.i.i, ptr noundef nonnull %i.bm) #15 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.thread.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.z
  %i.bx = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.x) #15
  %.not6671.i.i = icmp sgt i32 %i.bx, 0
  br i1 %.not6671.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.thread.i.i:                                      ; preds = %bb.z, %bb.y, %bb.w
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.bz = call i32 @OPENSSL_sk_push(ptr noundef %i.by, ptr noundef null) #15 ; 0 uses
  br label %bb.ae

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ad
  %.04572.i.i = phi i32 [ %i.ch, %bb.ad ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ca = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.x, i32 noundef %.04572.i.i) #15 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.cc = call ptr @OCSP_response_get1_basic(ptr noundef nonnull %i.ca) #15 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = call i32 @OCSP_resp_find(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.bv, i32 noundef -1) #15
  call void @OCSP_BASICRESP_free(ptr noundef nonnull %i.cc) #15
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cg = call ptr @OPENSSL_sk_delete(ptr noundef nonnull %i.x, i32 noundef %.04572.i.i) #15 ; 0 uses
  br label %.loopexit.i.i

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i.i
  %i.ch = add nuw nsw i32 %.04572.i.i, 1          ; 2 uses
  %i.ci = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.x) #15
  %.not66.i.i = icmp slt i32 %i.ch, %i.ci
  br i1 %.not66.i.i, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !81

.loopexit.i.i:                                    ; preds = %bb.ad, %bb.ac, %.preheader.i.i
  %spec.select.i.i = phi ptr [ %i.ca, %bb.ac ], [ null, %.preheader.i.i ], [ null, %bb.ad ]
  call void @OCSP_CERTID_free(ptr noundef nonnull %i.bv) #15
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.ck = call i32 @OPENSSL_sk_push(ptr noundef %i.cj, ptr noundef %spec.select.i.i) #15 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i, %.thread.i.i, %bb.x
  %i.cl = add nuw nsw i32 %.04674.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cl, %.0.i.i
  br i1 %exitcond.not.i.i, label %bring_ocsp_resp_in_correct_order.exit.i, label %bb.t, !llvm.loop !82

bring_ocsp_resp_in_correct_order.exit.i:          ; preds = %bb.ae, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %bb.af

bb.af:                                            ; preds = %bring_ocsp_resp_in_correct_order.exit.i, %bb.j, %bb.h
  %i.cm = call ptr @OPENSSL_sk_set_thunks(ptr noundef nonnull %i.x, ptr noundef nonnull @sk_OCSP_RESPONSE_freefunc_thunk) #15
  call void @OPENSSL_sk_pop_free(ptr noundef %i.cm, ptr noundef nonnull @OCSP_RESPONSE_free) #15
  br label %get_ocsp_resp_from_files.exit

bb.ag:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store ptr null, ptr %i.g, align 8, !tbaa !12
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !78  ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = call ptr @OPENSSL_sk_set_thunks(ptr noundef nonnull %i.cn, ptr noundef nonnull @sk_OCSP_RESPONSE_freefunc_thunk) #15
  call void @OPENSSL_sk_pop_free(ptr noundef %i.co, ptr noundef nonnull @OCSP_RESPONSE_free) #15
  store ptr null, ptr %i.i, align 8, !tbaa !78
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cp = call i64 @SSL_ctrl(ptr noundef %0, i32 noundef 115, i64 noundef 0, ptr noundef nonnull %i.g) #15 ; 0 uses
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !12
  %.not26.i = icmp eq ptr %i.cq, null
  br i1 %.not26.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !30
  %.not27.i = icmp eq i32 %i.cs, 0
  br i1 %.not27.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = call i32 @SSL_is_dtls(ptr noundef %0) #15
  %.not28.i = icmp eq i32 %i.ct, 0
  br i1 %.not28.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cu = call i32 @SSL_version(ptr noundef %0) #15
  %i.cv = icmp sgt i32 %i.cu, 771
  br i1 %i.cv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.cx = call i32 @OPENSSL_sk_num(ptr noundef %i.cw) #15
  %i.cy = add nsw i32 %i.cx, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.0.i27 = phi i32 [ %i.cy, %bb.am ], [ 1, %bb.al ], [ 1, %bb.ak ], [ 1, %bb.aj ], [ 1, %bb.ai ] ; 3 uses
  %i.cz = call ptr @SSL_get_certificate(ptr noundef %0) #15 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %get_ocsp_resp_from_responder.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.db = call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef %.0.i27) #15 ; 2 uses
  %i.dc = call ptr @OPENSSL_sk_set_cmp_thunks(ptr noundef %i.db, ptr noundef nonnull @sk_OCSP_RESPONSE_cmpfunc_thunk) #15 ; 0 uses
  %i.dd = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.db, ptr noundef nonnull @sk_OCSP_RESPONSE_freefunc_thunk) #15 ; 2 uses
  store ptr %i.dd, ptr %i.i, align 8, !tbaa !78
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.bm, label %.preheader.i28

.preheader.i28:                                   ; preds = %bb.ao
  %i.df = icmp sgt i32 %.0.i27, 0
  br i1 %i.df, label %.lr.ph.i29, label %get_ocsp_resp_from_responder.exit.thread

.lr.ph.i29:                                       ; preds = %.preheader.i28
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.ap

bb.ap:                                            ; preds = %get_ocsp_resp_from_responder_single.exit.i, %.lr.ph.i29
  %.02135.i = phi i32 [ 0, %.lr.ph.i29 ], [ %i.gi, %get_ocsp_resp_from_responder_single.exit.i ] ; 2 uses
  %.02234.i = phi ptr [ %i.cz, %.lr.ph.i29 ], [ %.1.i, %get_ocsp_resp_from_responder_single.exit.i ]
  %.not29.i = icmp eq i32 %.02135.i, 0
  br i1 %.not29.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.dn = call ptr @OPENSSL_sk_value(ptr noundef %i.dm, i32 noundef -1) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1.i = phi ptr [ %i.dn, %bb.aq ], [ %.02234.i, %bb.ap ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr null, ptr %i.e, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.do = call ptr @X509_get_issuer_name(ptr noundef %.1.i) #15 ; 2 uses
  %i.dp = call ptr @X509_get1_ocsp(ptr noundef %.1.i) #15 ; 4 uses
  %.not.i.i30 = icmp eq ptr %i.dp, null           ; 2 uses
  br i1 %.not.i.i30, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.dp, i32 noundef 0) #15
  %i.dr = call i32 @OSSL_HTTP_parse_url(ptr noundef %i.dq, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #15
  %.not73.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not73.i.i, label %.thread94.i.i, label %bb.at

.thread94.i.i:                                    ; preds = %bb.as
  %i.ds = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.dt = call i32 @BIO_puts(ptr noundef %i.ds, ptr noundef nonnull @.str.545) #15 ; 0 uses
  br label %bb.bg

bb.at:                                            ; preds = %bb.as
  %i.du = load i32, ptr %i.j, align 4, !tbaa !33
  %.not74.i.i = icmp eq i32 %i.du, 0
  br i1 %.not74.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dv = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.dw = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.dp, i32 noundef 0) #15
  %i.dx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dv, ptr noundef nonnull @.str.546, ptr noundef %i.dw) #15 ; 0 uses
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar
  %i.dy = load ptr, ptr %i.dg, align 8, !tbaa !68 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.thread85.i.i, label %bb.aw

.thread85.i.i:                                    ; preds = %bb.av
  %i.ea = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.eb = call i32 @BIO_puts(ptr noundef %i.ea, ptr noundef nonnull @.str.547) #15 ; 0 uses
  br label %get_ocsp_resp_from_responder_single.exit.i

bb.aw:                                            ; preds = %bb.av
  store ptr %i.dy, ptr %i.a, align 8, !tbaa !14
  %i.ec = load ptr, ptr %i.dh, align 8, !tbaa !70
  store ptr %i.ec, ptr %i.c, align 8, !tbaa !14
  %i.ed = load ptr, ptr %i.di, align 8, !tbaa !69
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !14
  %i.ee = load i32, ptr %i.dj, align 8, !tbaa !83
  store i32 %i.ee, ptr %i.d, align 4, !tbaa !16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %i.ef = load ptr, ptr %i.dk, align 8, !tbaa !35
  %i.eg = load ptr, ptr %i.dl, align 8, !tbaa !36
  %i.eh = call ptr @SSL_get_SSL_CTX(ptr noundef %0) #15 ; 2 uses
  %i.ei = call i64 @SSL_CTX_ctrl(ptr noundef %i.eh, i32 noundef 115, i64 noundef 0, ptr noundef nonnull %i.e) #15
  %.not75.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not75.i.i, label %.loopexit.i.i33, label %.preheader.i.i31

.preheader.i.i31:                                 ; preds = %bb.ax
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ek = call i32 @OPENSSL_sk_num(ptr noundef %i.ej) #15
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i.i35, label %.thread.i.i32

bb.ay:                                            ; preds = %.lr.ph.i.i35
  %i.em = add nuw nsw i32 %.055103.i.i, 1         ; 2 uses
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.eo = call i32 @OPENSSL_sk_num(ptr noundef %i.en) #15
  %i.ep = icmp slt i32 %i.em, %i.eo
  br i1 %i.ep, label %.lr.ph.i.i35, label %.thread.i.i32, !llvm.loop !84

.lr.ph.i.i35:                                     ; preds = %.preheader.i.i31, %bb.ay
  %.055103.i.i = phi i32 [ %i.em, %bb.ay ], [ 0, %.preheader.i.i31 ] ; 2 uses
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.er = call ptr @OPENSSL_sk_value(ptr noundef %i.eq, i32 noundef %.055103.i.i) #15 ; 2 uses
  %i.es = call ptr @X509_get_subject_name(ptr noundef %i.er) #15
  %i.et = call i32 @X509_NAME_cmp(ptr noundef %i.do, ptr noundef %i.es) #15
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.az, label %bb.ay

bb.az:                                            ; preds = %.lr.ph.i.i35
  %i.ev = call ptr @OCSP_cert_to_id(ptr noundef null, ptr noundef %.1.i, ptr noundef %i.er) #15 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.thread.i.i32, label %.thread80.i.i

.thread.i.i32:                                    ; preds = %bb.ay, %bb.az, %.preheader.i.i31
  %i.ex = call ptr @X509_STORE_CTX_new() #15      ; 7 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.loopexit.i.i33, label %bb.ba

bb.ba:                                            ; preds = %.thread.i.i32
  %i.ez = call ptr @SSL_CTX_get_cert_store(ptr noundef %i.eh) #15
  %i.fa = call i32 @X509_STORE_CTX_init(ptr noundef nonnull %i.ex, ptr noundef %i.ez, ptr noundef null, ptr noundef null) #15
  %.not76.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not76.i.i, label %.loopexit.i.i33, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fb = call ptr @X509_STORE_CTX_get_obj_by_subject(ptr noundef nonnull %i.ex, i32 noundef 1, ptr noundef %i.do) #15 ; 3 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %.loopexit.sink.split.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fd = call ptr @X509_OBJECT_get0_X509(ptr noundef nonnull %i.fb) #15
  %i.fe = call ptr @OCSP_cert_to_id(ptr noundef null, ptr noundef %.1.i, ptr noundef %i.fd) #15 ; 2 uses
  call void @X509_OBJECT_free(ptr noundef nonnull %i.fb) #15
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %.loopexit.i.i33, label %.thread80.i.i

.thread80.i.i:                                    ; preds = %bb.bc, %bb.az
  %.15884.i.i = phi ptr [ %i.fe, %bb.bc ], [ %i.ev, %bb.az ] ; 3 uses
  %.06183.i.i = phi ptr [ %i.ex, %bb.bc ], [ null, %bb.az ] ; 5 uses
  %i.fg = call ptr @OCSP_REQUEST_new() #15        ; 8 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %.loopexit.i.i33, label %bb.bd

bb.bd:                                            ; preds = %.thread80.i.i
  %i.fi = call ptr @OCSP_request_add0_id(ptr noundef nonnull %i.fg, ptr noundef nonnull %.15884.i.i) #15
  %.not77.i.i = icmp eq ptr %i.fi, null
  br i1 %.not77.i.i, label %.loopexit.i.i33, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fj = call i64 @SSL_ctrl(ptr noundef %0, i32 noundef 66, i64 noundef 0, ptr noundef nonnull %i.f) #15 ; 0 uses
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.fl = call i32 @OPENSSL_sk_num(ptr noundef %i.fk) #15
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph105.i.i, label %._crit_edge.i.i

bb.bf:                                            ; preds = %.lr.ph105.i.i
  %i.fn = add nuw nsw i32 %.1104.i.i, 1           ; 2 uses
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.fp = call i32 @OPENSSL_sk_num(ptr noundef %i.fo) #15
  %i.fq = icmp slt i32 %i.fn, %i.fp
  br i1 %i.fq, label %.lr.ph105.i.i, label %._crit_edge.i.i, !llvm.loop !87

.lr.ph105.i.i:                                    ; preds = %bb.be, %bb.bf
  %.1104.i.i = phi i32 [ %i.fn, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.fs = call ptr @OPENSSL_sk_value(ptr noundef %i.fr, i32 noundef %.1104.i.i) #15
  %i.ft = call i32 @OCSP_REQUEST_add_ext(ptr noundef nonnull %i.fg, ptr noundef %i.fs, i32 noundef -1) #15
  %.not78.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not78.i.i, label %.loopexit.i.i33, label %bb.bf

._crit_edge.i.i:                                  ; preds = %bb.bf, %bb.be
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.fw = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.fx = load i32, ptr %i.d, align 4, !tbaa !16
  %i.fy = load i32, ptr %1, align 8, !tbaa !34
  %i.fz = call ptr @process_responder(ptr noundef nonnull %i.fg, ptr noundef %i.fu, ptr noundef %i.fv, ptr noundef %i.fw, ptr noundef %i.ef, ptr noundef %i.eg, i32 noundef %i.fx, ptr noundef null, i32 noundef %i.fy) #15 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %.loopexit.sink.split.i.i, label %.loopexit.i.i33

.loopexit.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.bb
  %.str.549.sink.i.i = phi ptr [ @.str.548, %bb.bb ], [ @.str.549, %._crit_edge.i.i ]
  %.263.ph.i.i = phi ptr [ %i.ex, %bb.bb ], [ %.06183.i.i, %._crit_edge.i.i ]
  %.160.ph.i.i = phi ptr [ null, %bb.bb ], [ %i.fg, %._crit_edge.i.i ]
  %i.gb = load ptr, ptr @bio_err, align 8, !tbaa !22
  %i.gc = call i32 @BIO_puts(ptr noundef %i.gb, ptr noundef nonnull %.str.549.sink.i.i) #15 ; 0 uses
  br label %.loopexit.i.i33

.loopexit.i.i33:                                  ; preds = %.lr.ph105.i.i, %.loopexit.sink.split.i.i, %._crit_edge.i.i, %bb.bd, %.thread80.i.i, %bb.bc, %bb.ba, %.thread.i.i32, %bb.ax
  %.132.i = phi ptr [ null, %bb.ax ], [ null, %.thread.i.i32 ], [ null, %bb.ba ], [ null, %.loopexit.sink.split.i.i ], [ null, %bb.bc ], [ null, %.thread80.i.i ], [ null, %bb.bd ], [ %i.fz, %._crit_edge.i.i ], [ null, %.lr.ph105.i.i ] ; 2 uses
  %.263.i.i = phi ptr [ null, %bb.ax ], [ null, %.thread.i.i32 ], [ %i.ex, %bb.ba ], [ %.263.ph.i.i, %.loopexit.sink.split.i.i ], [ %i.ex, %bb.bc ], [ %.06183.i.i, %.thread80.i.i ], [ %.06183.i.i, %bb.bd ], [ %.06183.i.i, %._crit_edge.i.i ], [ %.06183.i.i, %.lr.ph105.i.i ] ; 2 uses
  %.160.i.i = phi ptr [ null, %bb.ax ], [ null, %.thread.i.i32 ], [ null, %bb.ba ], [ %.160.ph.i.i, %.loopexit.sink.split.i.i ], [ null, %bb.bc ], [ null, %.thread80.i.i ], [ %i.fg, %bb.bd ], [ %i.fg, %._crit_edge.i.i ], [ %i.fg, %.lr.ph105.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ null, %bb.ax ], [ null, %.thread.i.i32 ], [ null, %bb.ba ], [ null, %.loopexit.sink.split.i.i ], [ null, %bb.bc ], [ %.15884.i.i, %.thread80.i.i ], [ %.15884.i.i, %bb.bd ], [ null, %._crit_edge.i.i ], [ null, %.lr.ph105.i.i ] ; 2 uses
  %.056.i.i = phi i32 [ 2, %bb.ax ], [ 2, %.thread.i.i32 ], [ 2, %bb.ba ], [ 3, %.loopexit.sink.split.i.i ], [ 2, %bb.bc ], [ 2, %.thread80.i.i ], [ 2, %bb.bd ], [ 0, %._crit_edge.i.i ], [ 2, %.lr.ph105.i.i ] ; 2 uses
  br i1 %.not.i.i30, label %get_ocsp_resp_from_responder_single.exit.i, label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i.i33, %.thread94.i.i
  %.2.i = phi ptr [ %.132.i, %.loopexit.i.i33 ], [ null, %.thread94.i.i ]
  %.056102.i.i = phi i32 [ %.056.i.i, %.loopexit.i.i33 ], [ 2, %.thread94.i.i ]
  %.3101.i.i = phi ptr [ %.3.i.i, %.loopexit.i.i33 ], [ null, %.thread94.i.i ]
  %.160100.i.i = phi ptr [ %.160.i.i, %.loopexit.i.i33 ], [ null, %.thread94.i.i ]
  %.26399.i.i = phi ptr [ %.263.i.i, %.loopexit.i.i33 ], [ null, %.thread94.i.i ]
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @CRYPTO_free(ptr noundef %i.gd, ptr noundef nonnull @.str.424, i32 noundef 823) #15
  %i.ge = load ptr, ptr %i.c, align 8, !tbaa !14
  call void @CRYPTO_free(ptr noundef %i.ge, ptr noundef nonnull @.str.424, i32 noundef 824) #15
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !14
  call void @CRYPTO_free(ptr noundef %i.gf, ptr noundef nonnull @.str.424, i32 noundef 825) #15
  call void @X509_email_free(ptr noundef nonnull %i.dp) #15
  br label %get_ocsp_resp_from_responder_single.exit.i

get_ocsp_resp_from_responder_single.exit.i:       ; preds = %bb.bg, %.loopexit.i.i33, %.thread85.i.i
  %.4.i = phi ptr [ null, %.thread85.i.i ], [ %.132.i, %.loopexit.i.i33 ], [ %.2.i, %bb.bg ]
  %.05693.i.i = phi i32 [ 3, %.thread85.i.i ], [ %.056.i.i, %.loopexit.i.i33 ], [ %.056102.i.i, %bb.bg ]
  %.392.i.i = phi ptr [ null, %.thread85.i.i ], [ %.3.i.i, %.loopexit.i.i33 ], [ %.3101.i.i, %bb.bg ]
  %.16091.i.i = phi ptr [ null, %.thread85.i.i ], [ %.160.i.i, %.loopexit.i.i33 ], [ %.160100.i.i, %bb.bg ]
  %.26390.i.i = phi ptr [ null, %.thread85.i.i ], [ %.263.i.i, %.loopexit.i.i33 ], [ %.26399.i.i, %bb.bg ]
end_hunk_0
