Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x_crl?download=true
inline.NumInlined: 47
inline.NumDeleted: 12
begin_hunk_0_@ossl_x509_crl_set0_libctx:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.3, i32 noundef 591) #9
  store ptr null, ptr %i.b, align 8, !tbaa !29
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef 594) #9 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_CRL_add0_revoked(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @OPENSSL_sk_new(ptr noundef nonnull @X509_REVOKED_cmp) #9
  %i.e = tail call ptr @OPENSSL_sk_set_cmp_thunks(ptr noundef %i.d, ptr noundef nonnull @sk_X509_REVOKED_cmpfunc_thunk) #9 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !30
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %i.h = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.g, ptr noundef %1) #9
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__func__.X509_CRL_add0_revoked) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524303, ptr noundef null) #9
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.i, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

declare ptr @OPENSSL_sk_set_cmp_thunks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @X509_REVOKED_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call i32 @ASN1_STRING_cmp(ptr noundef %i.a, ptr noundef %i.b) #9
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sk_X509_REVOKED_cmpfunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = tail call i32 %0(ptr noundef %1, ptr noundef %2) #9
  ret i32 %i.a
}

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @X509_CRL_verify(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @X509_CRL_get0_by_serial(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @X509_CRL_get0_by_cert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @X509_get0_serialNumber(ptr noundef %2) #9
  %i.f = tail call ptr @X509_get_issuer_name(ptr noundef %2) #9
  %i.g = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.e, ptr noundef %i.f) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @X509_get0_serialNumber(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @X509_CRL_set_default_method(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %int_crl_meth. = select i1 %i.a, ptr @int_crl_meth, ptr %0
  store ptr %int_crl_meth., ptr @default_crl_method, align 8, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define noalias ptr @X509_CRL_METHOD_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_malloc(i64 noundef 40, ptr noundef nonnull @.str.3, i32 noundef 557) #9 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %3, ptr %i.f, align 8, !tbaa !35
  store i32 1, ptr %i.a, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @X509_CRL_METHOD_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !40
  %.not = trunc i32 %i.b to i1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef 573) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @X509_CRL_set_meth_data(ptr nofree noundef writeonly captures(none) initializes((216, 224)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_CRL_get_meth_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  ret ptr %i.b
}

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ASN1_INTEGER_it() #2

declare ptr @ASN1_TIME_it() #2

declare ptr @X509_EXTENSION_it() #2

declare ptr @X509_ALGOR_it() #2

declare ptr @X509_NAME_it() #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @crl_inf_cb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not6 = icmp ne ptr %i.c, null
  %cond = icmp eq i32 %0, 5
  %or.cond = and i1 %cond, %.not6
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @OPENSSL_sk_set_cmp_func(ptr noundef nonnull %i.c, ptr noundef nonnull @X509_REVOKED_cmp) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  ret i32 1
}

declare ptr @OPENSSL_sk_set_cmp_func(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ASN1_BIT_STRING_it() #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @crl_cb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 52 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  switch i32 %0, label %ossl_x509_crl_set0_libctx.exit [
    i32 4, label %bb.b
    i32 1, label %bb.e
    i32 5, label %bb.f
    i32 3, label %bb.br
    i32 15, label %bb.bv
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not108.a = icmp eq ptr %i.g, null
  br i1 %.not108.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.c) #9
  %.not109 = icmp eq i32 %i.h, 0
  br i1 %.not109, label %ossl_x509_crl_set0_libctx.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  tail call void @AUTHORITY_KEYID_free(ptr noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  tail call void @ISSUING_DIST_POINT_free(ptr noundef %i.l) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  tail call void @ASN1_INTEGER_free(ptr noundef %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  tail call void @ASN1_INTEGER_free(ptr noundef %i.p) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.r, ptr noundef nonnull @GENERAL_NAMES_free) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i32 32895, ptr %i.t, align 4, !tbaa !60
  %i.u = load ptr, ptr @default_crl_method, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store ptr null, ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br label %ossl_x509_crl_set0_libctx.exit

bb.f:                                             ; preds = %bb.a
  %i.y = tail call ptr @EVP_sha1() #9
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.aa = tail call i32 @X509_CRL_digest(ptr noundef %i.c, ptr noundef %i.y, ptr noundef nonnull %i.z, ptr noundef null) #9
  %.not100.a = icmp eq i32 %i.aa, 0
  br i1 %.not100.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !61
  %i.ad = or i32 %i.ac, 1048576
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = call ptr @X509_CRL_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 770, ptr noundef nonnull %i.b, ptr noundef null) #9 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !56
  %i.ag = icmp eq ptr %i.ae, null                 ; 2 uses
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = icmp ne i32 %i.ah, -1                   ; 2 uses
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 252, ptr noundef nonnull @__func__.crl_cb) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 183, ptr noundef nonnull @.str.17) #9
  br label %ossl_x509_crl_set0_libctx.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 9 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !62 ; 2 uses
  %i.al = or i32 %i.ak, 1                         ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !65
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = or i32 %i.ak, 5                         ; 2 uses
  store i32 %i.ap, ptr %i.aj, align 8, !tbaa !62
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi i32 [ %i.ap, %bb.l ], [ %i.al, %bb.k ] ; 2 uses
  %.0.i = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !66
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = add nuw nsw i32 %.0.i, 1
  %i.av = or i32 %i.aq, 8                         ; 2 uses
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !62
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = phi i32 [ %i.av, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %.1.i = phi i32 [ %i.au, %bb.n ], [ %.0.i, %bb.m ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !67
  %i.az = icmp sgt i32 %i.ay, 0                   ; 3 uses
  %i.ba = or i32 %i.aw, 16
  %i.bb = select i1 %i.az, i32 %i.ba, i32 %i.aw   ; 2 uses
  %i.bc = zext i1 %i.az to i32
  %.2.i = add nuw nsw i32 %.1.i, %i.bc
  %i.bd = icmp samesign ugt i32 %.2.i, 1          ; 2 uses
  %i.be = or i32 %i.bb, 2
end_hunk_0
begin_hunk_1_@crl_cb:bb.a
  %.not62.i = icmp eq i32 %i.ey, 0
  br i1 %.not62.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ez = load i32, ptr %i.el, align 4, !tbaa !61
  %i.fa = or i32 %i.ez, 128
  store i32 %i.fa, ptr %i.el, align 4, !tbaa !61
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 144, ptr noundef nonnull @__func__.crl_set_issuers) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 219, ptr noundef nonnull @.str.22) #9
  call void @GENERAL_NAMES_free(ptr noundef nonnull %i.er) #9
  br label %crl_set_issuers.exit.thread

bb.az:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %i.ek, align 8, !tbaa !59 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.fd = call ptr @OPENSSL_sk_new_null() #9
  %i.fe = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.fd, ptr noundef nonnull @sk_GENERAL_NAMES_freefunc_thunk) #9 ; 3 uses
  store ptr %i.fe, ptr %i.ek, align 8, !tbaa !59
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
  store ptr %.1.i111, ptr %i.fi, align 8, !tbaa !48
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
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !49
  call void @ASN1_ENUMERATED_free(ptr noundef nonnull %i.fj) #9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  store i32 -1, ptr %i.fq, align 8, !tbaa !49
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !75 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !50
  %i.ft = call i32 @OPENSSL_sk_num(ptr noundef %i.fs) #9
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bi, %bb.bo
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !50
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
  %i.gc = load i32, ptr %i.el, align 4, !tbaa !61
  %i.gd = or i32 %i.gc, 128
  store i32 %i.gd, ptr %i.el, align 4, !tbaa !61
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
  %i.gh = load i32, ptr %i.el, align 4, !tbaa !61
  %i.gi = or i32 %i.gh, 512
  store i32 %i.gi, ptr %i.el, align 4, !tbaa !61
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.gj = load i32, ptr %i.a, align 4, !tbaa !50
  %i.gk = add nsw i32 %i.gj, 1                    ; 2 uses
  store i32 %i.gk, ptr %i.a, align 4, !tbaa !50
  %i.gl = call i32 @OPENSSL_sk_num(ptr noundef %i.fs) #9
  %i.gm = icmp slt i32 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %bb.bo, %bb.bi
  %i.gn = add nuw nsw i32 %.05473.i, 1            ; 2 uses
  %i.go = call i32 @OPENSSL_sk_num(ptr noundef %i.eh) #9
  %i.gp = icmp slt i32 %i.gn, %i.go
  br i1 %i.gp, label %bb.as, label %.loopexit, !llvm.loop !54

crl_set_issuers.exit.thread:                      ; preds = %bb.aq, %bb.at, %bb.bd, %bb.bk, %bb.bb, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %ossl_x509_crl_set0_libctx.exit

.loopexit.sink.split:                             ; preds = %bb.be, %bb.au
  %i.gq = load i32, ptr %i.el, align 4, !tbaa !61
  %i.gr = or i32 %i.gq, 128
  store i32 %i.gr, ptr %i.el, align 4, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i, %.loopexit.sink.split, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !33
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !38 ; 2 uses
  %.not107 = icmp eq ptr %i.gv, null
  br i1 %.not107, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.gw = call i32 %i.gv(ptr noundef nonnull %i.c) #9
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %ossl_x509_crl_set0_libctx.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !61
  %i.ha = or i32 %i.gz, 256
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !61
  br label %ossl_x509_crl_set0_libctx.exit

bb.br:                                            ; preds = %bb.a
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.hc, null
  br i1 %.not, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !39 ; 2 uses
  %.not98 = icmp eq ptr %i.he, null
  br i1 %.not98, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hf = tail call i32 %i.he(ptr noundef nonnull %i.c) #9
  %.not99 = icmp eq i32 %i.hf, 0
  br i1 %.not99, label %ossl_x509_crl_set0_libctx.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !55
  tail call void @AUTHORITY_KEYID_free(ptr noundef %i.hh) #9
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !56
  tail call void @ISSUING_DIST_POINT_free(ptr noundef %i.hj) #9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !57
  tail call void @ASN1_INTEGER_free(ptr noundef %i.hl) #9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !58
  tail call void @ASN1_INTEGER_free(ptr noundef %i.hn) #9
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !59
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.hp, ptr noundef nonnull @GENERAL_NAMES_free) #9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !29
  tail call void @CRYPTO_free(ptr noundef %i.hr, ptr noundef nonnull @.str.3, i32 noundef 331) #9
  br label %ossl_x509_crl_set0_libctx.exit

bb.bv:                                            ; preds = %bb.a
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !29 ; 2 uses
  %.not.i112 = icmp eq ptr %i.c, null
  br i1 %.not.i112, label %ossl_x509_crl_set0_libctx.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !28
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !28
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !29
  tail call void @CRYPTO_free(ptr noundef %i.hy, ptr noundef nonnull @.str.3, i32 noundef 591) #9
  store ptr null, ptr %i.hx, align 8, !tbaa !29
  %.not11.i = icmp eq ptr %i.ht, null
  br i1 %.not11.i, label %ossl_x509_crl_set0_libctx.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hz = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %i.ht, ptr noundef nonnull @.str.3, i32 noundef 594) #9 ; 2 uses
  store ptr %i.hz, ptr %i.hx, align 8, !tbaa !29
  %4 = icmp eq ptr %i.hz, null
  br i1 %4, label %ossl_x509_crl_set0_libctx.exit, label %ossl_x509_crl_set0_libctx.exit.thread

ossl_x509_crl_set0_libctx.exit.thread:            ; preds = %bb.bv, %bb.bw, %bb.bx
  br label %ossl_x509_crl_set0_libctx.exit

ossl_x509_crl_set0_libctx.exit:                   ; preds = %bb.a, %bb.e, %bb.bq, %bb.bu, %ossl_x509_crl_set0_libctx.exit.thread, %bb.bx, %crl_set_issuers.exit.thread, %bb.bt, %bb.bp, %bb.c, %bb.af, %bb.ad, %bb.i
  %.192 = phi i32 [ 0, %bb.bx ], [ 0, %bb.bt ], [ 0, %bb.i ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %crl_set_issuers.exit.thread ], [ 0, %bb.c ], [ 0, %bb.bp ], [ 1, %ossl_x509_crl_set0_libctx.exit.thread ], [ 1, %bb.bu ], [ 1, %bb.bq ], [ 1, %bb.e ], [ 1, %bb.a ]
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

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare ptr @X509_EXTENSION_get_object(ptr noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_get_critical(ptr noundef) local_unnamed_addr #2

declare i32 @DIST_POINT_set_dpname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_CRL_get_issuer(ptr noundef) local_unnamed_addr #2

declare ptr @X509_CRL_get_REVOKED(ptr noundef) local_unnamed_addr #2

declare ptr @X509_REVOKED_get0_revocationDate(ptr noundef) local_unnamed_addr #2

declare ptr @X509_REVOKED_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_set_thunks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_GENERAL_NAMES_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  tail call void %0(ptr noundef %1) #9
  ret void
}

declare i64 @ASN1_ENUMERATED_get(ptr noundef) local_unnamed_addr #2

declare void @ASN1_ENUMERATED_free(ptr noundef) local_unnamed_addr #2

declare ptr @X509V3_EXT_d2i(ptr noundef) local_unnamed_addr #2

declare void @ASN1_GENERALIZEDTIME_free(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @def_crl_lookup(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %struct.x509_revoked_st, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @OPENSSL_sk_is_sorted(ptr noundef nonnull %i.b) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.g = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.f) #9
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void @OPENSSL_sk_sort(ptr noundef %i.h) #9
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.j = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.i) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !82
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.l = call i32 @OPENSSL_sk_find(ptr noundef %i.k, ptr noundef nonnull %4) #9 ; 4 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.o = call i32 @OPENSSL_sk_num(ptr noundef %i.n) #9 ; 3 uses
  %i.p = icmp slt i32 %i.l, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %.not20.i = icmp eq ptr %3, null
  br i1 %.not20.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %crl_revoked_issuer_match.exit.thread.us
  %.039.us = phi i32 [ %i.ai, %crl_revoked_issuer_match.exit.thread.us ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.r = call ptr @OPENSSL_sk_value(ptr noundef %i.q, i32 noundef %.039.us) #9 ; 4 uses
  %i.s = call i32 @ASN1_INTEGER_cmp(ptr noundef %i.r, ptr noundef nonnull %2) #9
  %.not28.us = icmp eq i32 %i.s, 0
  br i1 %.not28.us, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  %.not.i.us = icmp eq ptr %i.u, null
  br i1 %.not.i.us, label %crl_revoked_issuer_match.exit.thread34, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %0) #9
  %.pre.i.us = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.w = call i32 @OPENSSL_sk_num(ptr noundef %.pre.i.us) #9
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.us, label %crl_revoked_issuer_match.exit.thread.us

.lr.ph.i.us:                                      ; preds = %bb.h, %bb.j
  %.01527.i.us = phi i32 [ %i.ae, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.z = call ptr @OPENSSL_sk_value(ptr noundef %i.y, i32 noundef %.01527.i.us) #9 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !84
  %.not23.i.us = icmp eq i32 %i.aa, 4
  br i1 %.not23.i.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = call i32 @X509_NAME_cmp(ptr noundef %i.v, ptr noundef %i.ac) #9
  %.not24.i.us = icmp eq i32 %i.ad, 0
  br i1 %.not24.i.us, label %crl_revoked_issuer_match.exit.thread34, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us
  %i.ae = add nuw nsw i32 %.01527.i.us, 1         ; 2 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.ag = call i32 @OPENSSL_sk_num(ptr noundef %i.af) #9
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.us, label %crl_revoked_issuer_match.exit.thread.us, !llvm.loop !76

crl_revoked_issuer_match.exit.thread.us:          ; preds = %bb.j, %bb.h
  %i.ai = add i32 %.039.us, 1                     ; 2 uses
  %exitcond54.not = icmp eq i32 %i.ai, %i.o
  br i1 %exitcond54.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !77

.lr.ph.split:                                     ; preds = %.lr.ph, %crl_revoked_issuer_match.exit.thread
  %.039 = phi i32 [ %i.bg, %crl_revoked_issuer_match.exit.thread ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.ak = call ptr @OPENSSL_sk_value(ptr noundef %i.aj, i32 noundef %.039) #9 ; 4 uses
  %i.al = call i32 @ASN1_INTEGER_cmp(ptr noundef %i.ak, ptr noundef nonnull %2) #9
  %.not28 = icmp eq i32 %i.al, 0
  br i1 %.not28, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %crl_revoked_issuer_match.exit, label %bb.l

crl_revoked_issuer_match.exit:                    ; preds = %bb.k
  %i.ao = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %0) #9
  %i.ap = call i32 @X509_NAME_cmp(ptr noundef nonnull %3, ptr noundef %i.ao) #9
  %.not21.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not21.i.not, label %crl_revoked_issuer_match.exit.thread34, label %crl_revoked_issuer_match.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aq = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.an) #9
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i, label %crl_revoked_issuer_match.exit.thread

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %.01527.i = phi i32 [ %i.ay, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.at = call ptr @OPENSSL_sk_value(ptr noundef %i.as, i32 noundef %.01527.i) #9 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !84
  %.not23.i = icmp eq i32 %i.au, 4
  br i1 %.not23.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = call i32 @X509_NAME_cmp(ptr noundef nonnull %3, ptr noundef %i.aw) #9
  %.not24.i = icmp eq i32 %i.ax, 0
  br i1 %.not24.i, label %crl_revoked_issuer_match.exit.thread34, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ay = add nuw nsw i32 %.01527.i, 1            ; 2 uses
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ba = call i32 @OPENSSL_sk_num(ptr noundef %i.az) #9
  %i.bb = icmp slt i32 %i.ay, %i.ba
end_hunk_1
