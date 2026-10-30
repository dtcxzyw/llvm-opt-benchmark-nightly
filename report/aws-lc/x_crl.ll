Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x_crl?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
begin_hunk_0_@crl_inf_cb:bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not6 = icmp ne ptr %i.c, null
  %cond = icmp eq i32 %0, 5
  %or.cond = and i1 %cond, %.not6
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @OPENSSL_sk_set_cmp_func(ptr noundef nonnull %i.c, ptr noundef nonnull @X509_REVOKED_cmp) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  ret i32 1
}

declare ptr @OPENSSL_sk_set_cmp_func(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @crl_cb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !29     ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  switch i32 %0, label %.critedge [
    i32 1, label %bb.b
    i32 5, label %bb.c
    i32 3, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @ASN1_INTEGER_get(ptr noundef nonnull %i.f) #5 ; 2 uses
  %or.cond = icmp ugt i64 %i.g, 1
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 140, ptr noundef nonnull @.str.3, i32 noundef 122) #5
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %.not59.not = icmp eq i64 %i.g, 0
  br i1 %.not59.not, label %..thread_crit_edge, label %bb.h

..thread_crit_edge:                               ; preds = %bb.f
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %i.h = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.e, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %.not60 = icmp eq ptr %i.j, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 139, ptr noundef nonnull @.str.3, i32 noundef 129) #5
  br label %.critedge

bb.h:                                             ; preds = %.thread, %bb.f
  %i.k = tail call ptr @EVP_sha256() #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.m = tail call i32 @X509_CRL_digest(ptr noundef nonnull %i.c, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr noundef null) #5
  %.not61 = icmp eq i32 %i.m, 0
  br i1 %.not61, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = call ptr @X509_CRL_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 770, ptr noundef nonnull %i.b, ptr noundef null) #5 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 7 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !40
  %.not62 = icmp eq ptr %i.n, null
  br i1 %.not62, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 7 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %i.r = or i32 %i.q, 1                           ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !44
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = or i32 %i.q, 5                           ; 2 uses
  store i32 %i.v, ptr %i.p, align 8, !tbaa !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.w = phi i32 [ %i.v, %bb.k ], [ %i.r, %bb.j ] ; 2 uses
  %.0.i = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = add nuw nsw i32 %.0.i, 1
  %i.ab = or i32 %i.w, 8                          ; 2 uses
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = phi i32 [ %i.ab, %bb.m ], [ %i.w, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ %i.aa, %bb.m ], [ %.0.i, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46
  %i.af = icmp sgt i32 %i.ae, 0                   ; 3 uses
  %i.ag = or i32 %i.ac, 16
  %i.ah = select i1 %i.af, i32 %i.ag, i32 %i.ac   ; 2 uses
  %i.ai = zext i1 %i.af to i32
  %.2.i = add nuw nsw i32 %.1.i, %i.ai
  %i.aj = icmp samesign ugt i32 %.2.i, 1          ; 2 uses
  %i.ak = or i32 %i.ah, 2
  %i.al = select i1 %i.aj, i32 %i.ak, i32 %i.ah   ; 3 uses
  %i.am = or i1 %i.af, %i.aj
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.al, ptr %i.p, align 8, !tbaa !41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !47
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = or i32 %i.al, 32                        ; 2 uses
  store i32 %i.aq, ptr %i.p, align 8, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = phi i32 [ %i.aq, %bb.q ], [ %i.al, %bb.p ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %setup_idp.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = or i32 %i.ar, 64
  store i32 %i.au, ptr %i.p, align 8, !tbaa !41
  br label %setup_idp.exit

setup_idp.exit:                                   ; preds = %bb.r, %bb.s
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.aw = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %i.c) #5
  %i.ax = call i32 @DIST_POINT_set_dpname(ptr noundef %i.av, ptr noundef %i.aw) #5
  %.not64 = icmp eq i32 %i.ax, 0
  br i1 %.not64, label %bb.t, label %bb.v

bb.t:                                             ; preds = %setup_idp.exit
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !40
  call void @ISSUING_DIST_POINT_free(ptr noundef %i.ay) #5
  store ptr null, ptr %i.o, align 8, !tbaa !40
  br label %.critedge

bb.u:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.b, align 4, !tbaa !50
  %.not63 = icmp eq i32 %i.az, -1
  br i1 %.not63, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %setup_idp.exit
  %i.ba = call ptr @X509_CRL_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 90, ptr noundef nonnull %i.b, ptr noundef null) #5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !51
  %i.bc = icmp eq ptr %i.ba, null
  %i.bd = load i32, ptr %i.b, align 4
  %i.be = icmp ne i32 %i.bd, -1
  %or.cond3 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !40
  call void @ISSUING_DIST_POINT_free(ptr noundef %i.bf) #5
  store ptr null, ptr %i.o, align 8, !tbaa !40
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39 ; 3 uses
  %i.bj = call i64 @OPENSSL_sk_num(ptr noundef %i.bi) #5
  %.not76 = icmp eq i64 %i.bj, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.x, %bb.aa
  %.075 = phi i64 [ %i.bq, %bb.aa ], [ 0, %bb.x ] ; 2 uses
  %i.bk = call ptr @OPENSSL_sk_value(ptr noundef %i.bi, i64 noundef %.075) #5 ; 2 uses
  %i.bl = call ptr @X509_EXTENSION_get_object(ptr noundef %i.bk) #5
  %i.bm = call i32 @OBJ_obj2nid(ptr noundef %i.bl) #5
  %i.bn = call i32 @X509_EXTENSION_get_critical(ptr noundef %i.bk) #5
  %.not65 = icmp eq i32 %i.bn, 0
  br i1 %.not65, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.a
  switch i32 %i.bm, label %bb.z [
    i32 770, label %bb.aa
    i32 90, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.bo = load i32, ptr %4, align 4, !tbaa !52
  %i.bp = or i32 %i.bo, 512
  store i32 %i.bp, ptr %4, align 4, !tbaa !52
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y, %bb.y, %.lr.ph.a
  %i.bq = add nuw i64 %.075, 1                    ; 2 uses
  %i.br = call i64 @OPENSSL_sk_num(ptr noundef %i.bi) #5
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph.a, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.aa, %bb.x, %bb.z
  %i.bt = call ptr @X509_CRL_get_REVOKED(ptr noundef nonnull %i.c) #5 ; 3 uses
  %i.bu = call i64 @OPENSSL_sk_num(ptr noundef %i.bt) #5
  %.not3643.i = icmp eq i64 %i.bu, 0
  br i1 %.not3643.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i, %.lr.ph.i
  %.02844.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cp, %.loopexit.i ] ; 2 uses
  %i.bw = call ptr @OPENSSL_sk_value(ptr noundef %i.bt, i64 noundef %.02844.i) #5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.bx = call ptr @X509_REVOKED_get_ext_d2i(ptr noundef %i.bw, i32 noundef 141, ptr noundef nonnull %i.a, ptr noundef null) #5 ; 3 uses
  %i.by = icmp ne ptr %i.bx, null                 ; 2 uses
  %i.bz = load i32, ptr %i.a, align 4
  %i.ca = icmp eq i32 %i.bz, -1
  %or.cond.not.i = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond.not.i, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cb = call i64 @ASN1_ENUMERATED_get(ptr noundef nonnull %i.bx) #5
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !53
  call void @ASN1_ENUMERATED_free(ptr noundef nonnull %i.bx) #5
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 -1, ptr %i.ce, align 8, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !54 ; 3 uses
  %i.ch = call i64 @OPENSSL_sk_num(ptr noundef %i.cg) #5
  %.not46.i = icmp eq i64 %i.ch, 0
  br i1 %.not46.i, label %.loopexit.i, label %.critedge.i

bb.ag:                                            ; preds = %.critedge.i
  %i.ci = add nuw i64 %.042.i, 1                  ; 2 uses
  %i.cj = call i64 @OPENSSL_sk_num(ptr noundef %i.cg) #5
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %.critedge.i, label %.loopexit.i, !llvm.loop !36

.critedge.i:                                      ; preds = %bb.af, %bb.ag
  %.042.i = phi i64 [ %i.ci, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.cl = call ptr @OPENSSL_sk_value(ptr noundef %i.cg, i64 noundef %.042.i) #5
  %i.cm = call i32 @X509_EXTENSION_get_critical(ptr noundef %i.cl) #5
  %.not33.i = icmp eq i32 %i.cm, 0
  br i1 %.not33.i, label %bb.ag, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i
  %i.cn = load i32, ptr %i.bv, align 4, !tbaa !52
  %i.co = or i32 %i.cn, 512
  store i32 %i.co, ptr %i.bv, align 4, !tbaa !52
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ag, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.cp = add nuw i64 %.02844.i, 1                ; 2 uses
  %i.cq = call i64 @OPENSSL_sk_num(ptr noundef %i.bt) #5
  %.not36.not.i = icmp ult i64 %i.cp, %i.cq
  br i1 %.not36.not.i, label %bb.ab, label %.critedge, !llvm.loop !37

bb.ai:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.cr = load ptr, ptr %i.bb, align 8, !tbaa !51
  call void @AUTHORITY_KEYID_free(ptr noundef %i.cr) #5
  store ptr null, ptr %i.bb, align 8, !tbaa !51
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !40
  call void @ISSUING_DIST_POINT_free(ptr noundef %i.cs) #5
  store ptr null, ptr %i.o, align 8, !tbaa !40
  br label %.critedge

bb.aj:                                            ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !51
  tail call void @AUTHORITY_KEYID_free(ptr noundef %i.cu) #5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !40
  tail call void @ISSUING_DIST_POINT_free(ptr noundef %i.cw) #5
  br label %.critedge

.critedge:                                        ; preds = %.loopexit.i, %.loopexit, %bb.a, %bb.b, %bb.aj, %bb.ai, %bb.e, %bb.g, %bb.w, %bb.u, %bb.t, %bb.h
  %.255 = phi i32 [ 0, %bb.e ], [ 0, %bb.ai ], [ 0, %bb.h ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.g ], [ 1, %bb.a ], [ 1, %bb.aj ], [ 1, %bb.b ], [ 1, %.loopexit ], [ 1, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.255
}

declare i64 @ASN1_INTEGER_get(ptr noundef) local_unnamed_addr #1

declare i32 @X509_CRL_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EVP_sha256() local_unnamed_addr #1

declare ptr @X509_CRL_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ISSUING_DIST_POINT_free(ptr noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #1

declare ptr @X509_EXTENSION_get_object(ptr noundef) local_unnamed_addr #1

declare i32 @X509_EXTENSION_get_critical(ptr noundef) local_unnamed_addr #1

declare void @AUTHORITY_KEYID_free(ptr noundef) local_unnamed_addr #1

declare i32 @DIST_POINT_set_dpname(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @X509_CRL_get_issuer(ptr noundef) local_unnamed_addr #1

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @X509_CRL_get_REVOKED(ptr noundef) local_unnamed_addr #1

declare ptr @X509_REVOKED_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ASN1_ENUMERATED_get(ptr noundef) local_unnamed_addr #1

declare void @ASN1_ENUMERATED_free(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_new(ptr noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_STATIC_MUTEX_lock_read(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_STATIC_MUTEX_unlock_read(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_STATIC_MUTEX_lock_write(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_STATIC_MUTEX_unlock_write(ptr noundef) local_unnamed_addr #1

declare i32 @ASN1_INTEGER_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_is_sorted(ptr noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_sort(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sk_X509_REVOKED_call_cmp_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr %2, ptr %i.b, align 8, !tbaa !24
  %i.c = call i32 %0(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.c
}

declare i32 @OPENSSL_sk_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS13X509_algor_st", !8, i64 0}
!10 = !{!"p1 _ZTS14asn1_string_st", !8, i64 0}
!11 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !8, i64 0}
!12 = !{!"p1 _ZTS21ISSUING_DIST_POINT_st", !8, i64 0}
!13 = !{!"X509_crl_st", !8, i64 0, !9, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !11, i64 32, !12, i64 40, !5, i64 48, !4, i64 52}
!14 = !{!13, !8, i64 0}
!15 = !{!"p1 _ZTS12X509_name_st", !8, i64 0}
!16 = !{!"p1 _ZTS21stack_st_X509_REVOKED", !8, i64 0}
!17 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !8, i64 0}
!18 = !{!"p1 omnipotent char", !8, i64 0}
end_hunk_0
