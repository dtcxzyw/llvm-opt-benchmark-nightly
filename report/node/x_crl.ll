Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/x_crl?download=true
inline.NumInlined: 47
inline.NumDeleted: 12
begin_hunk_0_@X509_CRL_new_ex:bb.a
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_x509_crl_set0_libctx(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.3, i32 noundef 529) #8
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef 532) #8 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !31
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
define dso_local range(i32 0, 2) i32 @X509_CRL_add0_revoked(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @OPENSSL_sk_new(ptr noundef nonnull @X509_REVOKED_cmp) #8 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !32
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.g = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.f, ptr noundef %1) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 374, ptr noundef nonnull @__func__.X509_CRL_add0_revoked) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524303, ptr noundef null) #8
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.h, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

declare ptr @OPENSSL_sk_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @X509_REVOKED_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = load ptr, ptr %1, align 8, !tbaa !34
  %i.c = tail call i32 @ASN1_STRING_cmp(ptr noundef %i.a, ptr noundef %i.b) #8
  ret i32 %i.c
}

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @X509_CRL_verify(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @X509_CRL_get0_by_serial(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @X509_CRL_get0_by_cert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @X509_get0_serialNumber(ptr noundef %2) #8
  %i.f = tail call ptr @X509_get_issuer_name(ptr noundef %2) #8
  %i.g = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.e, ptr noundef %i.f) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @X509_get0_serialNumber(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @X509_CRL_set_default_method(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %int_crl_meth. = select i1 %i.a, ptr @int_crl_meth, ptr %0
  store ptr %int_crl_meth., ptr @default_crl_method, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @X509_CRL_METHOD_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_malloc(i64 noundef 40, ptr noundef nonnull @.str.3, i32 noundef 495) #8 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %3, ptr %i.f, align 8, !tbaa !37
  store i32 1, ptr %i.a, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @X509_CRL_METHOD_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !42
  %1 = and i32 %i.b, 1
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef 511) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @X509_CRL_set_meth_data(ptr nofree noundef writeonly captures(none) initializes((216, 224)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @X509_CRL_get_meth_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not6 = icmp ne ptr %i.c, null
  %cond = icmp eq i32 %0, 5
  %or.cond = and i1 %cond, %.not6
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @OPENSSL_sk_set_cmp_func(ptr noundef nonnull %i.c, ptr noundef nonnull @X509_REVOKED_cmp) #8 ; 0 uses
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
  %i.c = load ptr, ptr %1, align 8, !tbaa !45     ; 51 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  switch i32 %0, label %ossl_x509_crl_set0_libctx.exit [
    i32 4, label %bb.b
    i32 1, label %bb.e
    i32 5, label %bb.f
    i32 3, label %bb.bb
    i32 15, label %bb.bf
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %.not108.a = icmp eq ptr %i.g, null
  br i1 %.not108.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.c) #8
  %.not109 = icmp eq i32 %i.h, 0
  br i1 %.not109, label %ossl_x509_crl_set0_libctx.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  tail call void @AUTHORITY_KEYID_free(ptr noundef %i.j) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  tail call void @ISSUING_DIST_POINT_free(ptr noundef %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  tail call void @ASN1_INTEGER_free(ptr noundef %i.n) #8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  tail call void @ASN1_INTEGER_free(ptr noundef %i.p) #8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.r, ptr noundef nonnull @GENERAL_NAMES_free) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i32 32895, ptr %i.t, align 4, !tbaa !62
  %i.u = load ptr, ptr @default_crl_method, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr %i.u, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store ptr null, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br label %ossl_x509_crl_set0_libctx.exit

bb.f:                                             ; preds = %bb.a
  %i.y = tail call ptr @EVP_sha1() #8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.aa = tail call i32 @X509_CRL_digest(ptr noundef %i.c, ptr noundef %i.y, ptr noundef nonnull %i.z, ptr noundef null) #8
  %.not99.a = icmp eq i32 %i.aa, 0
  br i1 %.not99.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !63
  %i.ad = or i32 %i.ac, 1048576
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = call ptr @X509_CRL_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 770, ptr noundef nonnull %i.b, ptr noundef null) #8 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !58
  %.not100 = icmp eq ptr %i.ae, null
  br i1 %.not100, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 9 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %i.ai = or i32 %i.ah, 1                         ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !67
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = or i32 %i.ah, 5                         ; 2 uses
  store i32 %i.am, ptr %i.ag, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi i32 [ %i.am, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %.0.i = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !68
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = add nuw nsw i32 %.0.i, 1
  %i.as = or i32 %i.an, 8                         ; 2 uses
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = phi i32 [ %i.as, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %.1.i = phi i32 [ %i.ar, %bb.l ], [ %.0.i, %bb.k ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !69
  %i.aw = icmp sgt i32 %i.av, 0                   ; 3 uses
  %i.ax = or i32 %i.at, 16
  %i.ay = select i1 %i.aw, i32 %i.ax, i32 %i.at   ; 2 uses
  %i.az = zext i1 %i.aw to i32
  %.2.i = add nuw nsw i32 %.1.i, %i.az
  %i.ba = icmp samesign ugt i32 %.2.i, 1          ; 2 uses
  %i.bb = or i32 %i.ay, 2
  %i.bc = select i1 %i.ba, i32 %i.bb, i32 %i.ay   ; 3 uses
  %i.bd = or i1 %i.aw, %i.ba
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !70
  %i.bg = icmp sgt i32 %i.bf, 0
end_hunk_0
begin_hunk_1_@crl_cb:bb.a
    i32 90, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dx = load i32, ptr %i.dp, align 4, !tbaa !63
  %i.dy = or i32 %i.dx, 512
  store i32 %i.dy, ptr %i.dp, align 4, !tbaa !63
  br label %.loopexit120

bb.al:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.ai
  %i.dz = add nuw nsw i32 %.089125, 1             ; 2 uses
  %i.ea = call i32 @OPENSSL_sk_num(ptr noundef %i.dm) #8
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ag, label %.loopexit120, !llvm.loop !54

.loopexit120:                                     ; preds = %bb.al, %bb.af, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ec = call ptr @X509_CRL_get_REVOKED(ptr noundef %i.c) #8 ; 3 uses
  %i.ed = call i32 @OPENSSL_sk_num(ptr noundef %i.ec) #8
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph56.i, label %.loopexit

.lr.ph56.i:                                       ; preds = %.loopexit120
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 4 uses
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.i, %.lr.ph56.i
  %.03855.i = phi ptr [ null, %.lr.ph56.i ], [ %.1.i111, %.loopexit.i ]
  %.03954.i = phi i32 [ 0, %.lr.ph56.i ], [ %i.fr, %.loopexit.i ] ; 2 uses
  %i.eh = call ptr @OPENSSL_sk_value(ptr noundef %i.ec, i32 noundef %.03954.i) #8 ; 6 uses
  %i.ei = call ptr @X509_REVOKED_get_ext_d2i(ptr noundef %i.eh, i32 noundef 771, ptr noundef nonnull %i.a, ptr noundef null) #8 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null                 ; 2 uses
  %i.ek = load i32, ptr %i.a, align 4
  %i.el = icmp ne i32 %i.ek, -1
  %or.cond.i = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %or.cond.i, label %.loopexit.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.ej, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !61 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eo = call ptr @OPENSSL_sk_new_null() #8      ; 3 uses
  store ptr %i.eo, ptr %i.ef, align 8, !tbaa !61
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %crl_set_issuers.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.eq = phi ptr [ %i.eo, %bb.ap ], [ %i.em, %bb.ao ]
  %i.er = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ei) #8
  %.not45.i = icmp eq i32 %i.er, 0
  br i1 %.not45.i, label %crl_set_issuers.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.1.i111 = phi ptr [ %.03855.i, %bb.an ], [ %i.ei, %bb.aq ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store ptr %.1.i111, ptr %i.es, align 8, !tbaa !51
  %i.et = call ptr @X509_REVOKED_get_ext_d2i(ptr noundef %i.eh, i32 noundef 141, ptr noundef nonnull %i.a, ptr noundef null) #8 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null                 ; 2 uses
  %i.ev = load i32, ptr %i.a, align 4
  %i.ew = icmp ne i32 %i.ev, -1
  %or.cond3.i = select i1 %i.eu, i1 %i.ew, i1 false
  br i1 %or.cond3.i, label %.loopexit.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.eu, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ex = call i64 @ASN1_ENUMERATED_get(ptr noundef nonnull %i.et) #8
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !52
  call void @ASN1_ENUMERATED_free(ptr noundef nonnull %i.et) #8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  store i32 -1, ptr %i.fa, align 8, !tbaa !52
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !76 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !47
  %i.fd = call i32 @OPENSSL_sk_num(ptr noundef %i.fc) #8
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.av, %bb.ay
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !47
  %i.fg = call ptr @OPENSSL_sk_value(ptr noundef %i.fc, i32 noundef %i.ff) #8 ; 2 uses
  %i.fh = call i32 @X509_EXTENSION_get_critical(ptr noundef %i.fg) #8
  %.not47.i = icmp eq i32 %i.fh, 0
  br i1 %.not47.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i
  %i.fi = call ptr @X509_EXTENSION_get_object(ptr noundef %i.fg) #8
  %i.fj = call i32 @OBJ_obj2nid(ptr noundef %i.fi) #8
  %i.fk = icmp eq i32 %i.fj, 771
  br i1 %i.fk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = load i32, ptr %i.eg, align 4, !tbaa !63
  %i.fm = or i32 %i.fl, 512
  store i32 %i.fm, ptr %i.eg, align 4, !tbaa !63
  br label %.loopexit.i

bb.ay:                                            ; preds = %bb.aw, %.lr.ph.i
  %i.fn = load i32, ptr %i.a, align 4, !tbaa !47
  %i.fo = add nsw i32 %i.fn, 1                    ; 2 uses
  store i32 %i.fo, ptr %i.a, align 4, !tbaa !47
  %i.fp = call i32 @OPENSSL_sk_num(ptr noundef %i.fc) #8
  %i.fq = icmp slt i32 %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !55

.loopexit.i:                                      ; preds = %bb.ay, %bb.ax, %bb.av
  %i.fr = add nuw nsw i32 %.03954.i, 1            ; 2 uses
  %i.fs = call i32 @OPENSSL_sk_num(ptr noundef %i.ec) #8
  %i.ft = icmp slt i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.am, label %.loopexit, !llvm.loop !56

crl_set_issuers.exit:                             ; preds = %bb.aq, %bb.ap
  call void @GENERAL_NAMES_free(ptr noundef nonnull %i.ei) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %ossl_x509_crl_set0_libctx.exit

.loopexit.sink.split:                             ; preds = %bb.ar, %bb.am
  %i.fu = load i32, ptr %i.eg, align 4, !tbaa !63
  %i.fv = or i32 %i.fu, 128
  store i32 %i.fv, ptr %i.eg, align 4, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.i, %.loopexit.sink.split, %.loopexit120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !35
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !40 ; 2 uses
  %.not107 = icmp eq ptr %i.fz, null
  br i1 %.not107, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.ga = call i32 %i.fz(ptr noundef nonnull %i.c) #8
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %ossl_x509_crl_set0_libctx.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !63
  %i.ge = or i32 %i.gd, 256
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !63
  br label %ossl_x509_crl_set0_libctx.exit

bb.bb:                                            ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %i.gg, null
  br i1 %.not, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !41 ; 2 uses
  %.not97 = icmp eq ptr %i.gi, null
  br i1 %.not97, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gj = tail call i32 %i.gi(ptr noundef nonnull %i.c) #8
  %.not98 = icmp eq i32 %i.gj, 0
  br i1 %.not98, label %ossl_x509_crl_set0_libctx.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !57
  tail call void @AUTHORITY_KEYID_free(ptr noundef %i.gl) #8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !58
  tail call void @ISSUING_DIST_POINT_free(ptr noundef %i.gn) #8
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !59
  tail call void @ASN1_INTEGER_free(ptr noundef %i.gp) #8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !60
  tail call void @ASN1_INTEGER_free(ptr noundef %i.gr) #8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !61
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.gt, ptr noundef nonnull @GENERAL_NAMES_free) #8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !31
  tail call void @CRYPTO_free(ptr noundef %i.gv, ptr noundef nonnull @.str.3, i32 noundef 269) #8
  br label %ossl_x509_crl_set0_libctx.exit

bb.bf:                                            ; preds = %bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !31 ; 2 uses
  %.not.i112 = icmp eq ptr %i.c, null
  br i1 %.not.i112, label %ossl_x509_crl_set0_libctx.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !30
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !30
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !31
  tail call void @CRYPTO_free(ptr noundef %i.hc, ptr noundef nonnull @.str.3, i32 noundef 529) #8
  store ptr null, ptr %i.hb, align 8, !tbaa !31
  %.not11.i = icmp eq ptr %i.gx, null
  br i1 %.not11.i, label %ossl_x509_crl_set0_libctx.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hd = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %i.gx, ptr noundef nonnull @.str.3, i32 noundef 532) #8 ; 2 uses
  store ptr %i.hd, ptr %i.hb, align 8, !tbaa !31
  %4 = icmp ne ptr %i.hd, null
  %spec.select = zext i1 %4 to i32
  br label %ossl_x509_crl_set0_libctx.exit

ossl_x509_crl_set0_libctx.exit:                   ; preds = %bb.bh, %bb.a, %bb.e, %bb.ba, %bb.be, %bb.bf, %bb.bg, %crl_set_issuers.exit, %bb.bd, %bb.az, %bb.c
  %.191 = phi i32 [ 0, %bb.bd ], [ 1, %bb.a ], [ 0, %crl_set_issuers.exit ], [ 0, %bb.c ], [ 0, %bb.az ], [ %spec.select, %bb.bh ], [ 1, %bb.bg ], [ 1, %bb.bf ], [ 1, %bb.be ], [ 1, %bb.ba ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.191
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

declare ptr @X509_REVOKED_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i64 @ASN1_ENUMERATED_get(ptr noundef) local_unnamed_addr #2

declare void @ASN1_ENUMERATED_free(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @def_crl_lookup(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %struct.x509_revoked_st, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @OPENSSL_sk_is_sorted(ptr noundef nonnull %i.b) #8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.f) #8
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @OPENSSL_sk_sort(ptr noundef %i.h) #8
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.j = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.i) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !83
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.l = call i32 @OPENSSL_sk_find(ptr noundef %i.k, ptr noundef nonnull %4) #8 ; 4 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.o = call i32 @OPENSSL_sk_num(ptr noundef %i.n) #8 ; 3 uses
  %i.p = icmp slt i32 %i.l, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %.not20.i = icmp eq ptr %3, null
  br i1 %.not20.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %crl_revoked_issuer_match.exit.thread.us
  %.039.us = phi i32 [ %i.ai, %crl_revoked_issuer_match.exit.thread.us ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.r = call ptr @OPENSSL_sk_value(ptr noundef %i.q, i32 noundef %.039.us) #8 ; 4 uses
  %i.s = call i32 @ASN1_INTEGER_cmp(ptr noundef %i.r, ptr noundef nonnull %2) #8
  %.not28.us = icmp eq i32 %i.s, 0
  br i1 %.not28.us, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %.not.i.us = icmp eq ptr %i.u, null
  br i1 %.not.i.us, label %crl_revoked_issuer_match.exit.thread34, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %0) #8
  %.pre.i.us = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.w = call i32 @OPENSSL_sk_num(ptr noundef %.pre.i.us) #8
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.us, label %crl_revoked_issuer_match.exit.thread.us

.lr.ph.i.us:                                      ; preds = %bb.h, %bb.j
  %.01527.i.us = phi i32 [ %i.ae, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.z = call ptr @OPENSSL_sk_value(ptr noundef %i.y, i32 noundef %.01527.i.us) #8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !85
  %.not23.i.us = icmp eq i32 %i.aa, 4
  br i1 %.not23.i.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ad = call i32 @X509_NAME_cmp(ptr noundef %i.v, ptr noundef %i.ac) #8
  %.not24.i.us = icmp eq i32 %i.ad, 0
  br i1 %.not24.i.us, label %crl_revoked_issuer_match.exit.thread34, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us
  %i.ae = add nuw nsw i32 %.01527.i.us, 1         ; 2 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.ag = call i32 @OPENSSL_sk_num(ptr noundef %i.af) #8
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.us, label %crl_revoked_issuer_match.exit.thread.us, !llvm.loop !77

crl_revoked_issuer_match.exit.thread.us:          ; preds = %bb.j, %bb.h
  %i.ai = add i32 %.039.us, 1                     ; 2 uses
  %exitcond54.not = icmp eq i32 %i.ai, %i.o
  br i1 %exitcond54.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !78

.lr.ph.split:                                     ; preds = %.lr.ph, %crl_revoked_issuer_match.exit.thread
  %.039 = phi i32 [ %i.bg, %crl_revoked_issuer_match.exit.thread ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.ak = call ptr @OPENSSL_sk_value(ptr noundef %i.aj, i32 noundef %.039) #8 ; 4 uses
  %i.al = call i32 @ASN1_INTEGER_cmp(ptr noundef %i.ak, ptr noundef nonnull %2) #8
  %.not28 = icmp eq i32 %i.al, 0
  br i1 %.not28, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %crl_revoked_issuer_match.exit, label %bb.l

crl_revoked_issuer_match.exit:                    ; preds = %bb.k
  %i.ao = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %0) #8
  %i.ap = call i32 @X509_NAME_cmp(ptr noundef nonnull %3, ptr noundef %i.ao) #8
  %.not21.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not21.i.not, label %crl_revoked_issuer_match.exit.thread34, label %crl_revoked_issuer_match.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aq = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.an) #8
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i, label %crl_revoked_issuer_match.exit.thread

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %.01527.i = phi i32 [ %i.ay, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.at = call ptr @OPENSSL_sk_value(ptr noundef %i.as, i32 noundef %.01527.i) #8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !85
  %.not23.i = icmp eq i32 %i.au, 4
  br i1 %.not23.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.ax = call i32 @X509_NAME_cmp(ptr noundef nonnull %3, ptr noundef %i.aw) #8
  %.not24.i = icmp eq i32 %i.ax, 0
  br i1 %.not24.i, label %crl_revoked_issuer_match.exit.thread34, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ay = add nuw nsw i32 %.01527.i, 1            ; 2 uses
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ba = call i32 @OPENSSL_sk_num(ptr noundef %i.az) #8
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %.lr.ph.i, label %crl_revoked_issuer_match.exit.thread, !llvm.loop !77

crl_revoked_issuer_match.exit.thread34:           ; preds = %crl_revoked_issuer_match.exit, %bb.m, %bb.g, %bb.i
  %i.bc = phi ptr [ %i.r, %bb.i ], [ %i.r, %bb.g ], [ %i.ak, %bb.m ], [ %i.ak, %crl_revoked_issuer_match.exit ] ; 2 uses
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %crl_revoked_issuer_match.exit.thread34
  store ptr %i.bc, ptr %1, align 8, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %crl_revoked_issuer_match.exit.thread34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !52
  %i.bf = icmp eq i32 %i.be, 8
end_hunk_1
