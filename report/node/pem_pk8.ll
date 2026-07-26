inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@do_pk8pkey:bb.a
  %i.k = tail call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %4) #4
  %i.l = tail call i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef nonnull %i.c, ptr noundef %i.k, ptr noundef null) #4
  %.not77 = icmp eq i32 %i.l, 0
  br i1 %.not77, label %.critedge84, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not78 = icmp eq ptr %.059, null
  br i1 %.not78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = sext i32 %.060 to i64
  %i.n = tail call i32 @OSSL_ENCODER_CTX_set_passphrase(ptr noundef nonnull %i.c, ptr noundef nonnull %.059, i64 noundef %i.m) #4
  %.not79 = icmp eq i32 %i.n, 0
  br i1 %.not79, label %.critedge84, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not80 = icmp eq ptr %.062, null
  br i1 %.not80, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = tail call i32 @OSSL_ENCODER_CTX_set_pem_password_cb(ptr noundef nonnull %i.c, ptr noundef nonnull %.062, ptr noundef %8) #4
  %.not81 = icmp eq i32 %i.o, 0
  br i1 %.not81, label %.critedge84, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.k, %bb.l
  %i.p = tail call i32 @OSSL_ENCODER_to_bio(ptr noundef nonnull %i.c, ptr noundef %0) #4
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  br label %.critedge84

bb.m:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.s = tail call ptr @EVP_PKEY2PKCS8(ptr noundef %1) #4 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 132, ptr noundef nonnull @__func__.do_pk8pkey) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 115, ptr noundef null) #4
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.u = icmp ne ptr %4, null
  %i.v = icmp ne i32 %3, -1
  %or.cond3 = or i1 %i.v, %i.u
  br i1 %or.cond3, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.w = icmp eq ptr %.059, null
  br i1 %i.w, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.x = call i32 %.062(ptr noundef nonnull %i.a, i32 noundef 1024, i32 noundef 1, ptr noundef %8) #4 ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q
  %i.z = call ptr @PKCS8_encrypt(i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef %i.x, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.s) #4
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 139, ptr noundef nonnull @__func__.do_pk8pkey) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 111, ptr noundef null) #4
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.aa = tail call ptr @PKCS8_encrypt(i32 noundef %3, ptr noundef %4, ptr noundef nonnull %.059, i32 noundef %.060, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.s) #4 ; 2 uses
  %i.ab = icmp eq ptr %.059, %i.a
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread, %bb.s
  %i.ac = phi ptr [ %i.z, %.thread ], [ %i.aa, %bb.s ]
  %.1613 = phi i32 [ %i.x, %.thread ], [ %.060, %bb.s ]
  %i.ad = sext i32 %.1613 to i64
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.ad) #4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ae = phi ptr [ %i.ac, %bb.t ], [ %i.aa, %bb.s ] ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ag = call i32 @i2d_PKCS8_bio(ptr noundef %0, ptr noundef nonnull %i.ae) #4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ah = call i32 @PEM_ASN1_write_bio(ptr noundef nonnull @i2d_X509_SIG, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull %i.ae, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2 = phi i32 [ %i.ag, %bb.w ], [ %i.ah, %bb.x ]
  call void @X509_SIG_free(ptr noundef nonnull %i.ae) #4
  br label %bb.ac

bb.z:                                             ; preds = %bb.o
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ai = tail call i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(ptr noundef %0, ptr noundef nonnull %i.s) #4
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.aj = tail call i32 @PEM_ASN1_write_bio(ptr noundef nonnull @i2d_PKCS8_PRIV_KEY_INFO, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa, %bb.u, %bb.r, %bb.n
  %.3 = phi i32 [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bb.u ], [ %.2, %bb.y ], [ %i.ai, %bb.aa ], [ %i.aj, %bb.ab ]
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef %i.s) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.critedge84

.critedge84:                                      ; preds = %bb.l, %.critedge, %bb.j, %bb.h, %bb.ac
  %.4 = phi i32 [ %.3, %bb.ac ], [ 0, %bb.l ], [ %i.r, %.critedge ], [ 0, %bb.j ], [ 0, %bb.h ]
  call void @OSSL_ENCODER_CTX_free(ptr noundef nonnull %i.c) #4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %.critedge84
  %.0 = phi i32 [ %.4, %.critedge84 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_write_bio_PKCS8PrivateKey(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @do_pk8pkey(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef -1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS8PrivateKey_bio(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @do_pk8pkey(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef -1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS8PrivateKey_nid_bio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @do_pk8pkey(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_PKCS8PrivateKey_bio(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call ptr @d2i_PKCS8_bio(ptr noundef %0, ptr noundef null) #4 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 %2(ptr noundef nonnull %i.a, i32 noundef 1024, i32 noundef 0, ptr noundef %3) #4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = call i32 @PEM_def_callback(ptr noundef nonnull %i.a, i32 noundef 1024, i32 noundef 0, ptr noundef %3) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.023 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 3 uses
  %or.cond = icmp ugt i32 %.023, 1024
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @__func__.d2i_PKCS8PrivateKey_bio) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 104, ptr noundef null) #4
  call void @X509_SIG_free(ptr noundef nonnull %i.b) #4
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.f = call ptr @PKCS8_decrypt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %.023) #4 ; 3 uses
  call void @X509_SIG_free(ptr noundef nonnull %i.b) #4
  %i.g = zext nneg i32 %.023 to i64
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.g) #4
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = call ptr @EVP_PKCS82PKEY(ptr noundef nonnull %i.f) #4 ; 4 uses
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef nonnull %i.f) #4
  %.not29 = icmp eq ptr %i.i, null
  br i1 %.not29, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !10
  call void @EVP_PKEY_free(ptr noundef %i.j) #4
  store ptr %i.i, ptr %1, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g, %bb.a, %bb.f
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.h ], [ %i.i, %bb.j ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @d2i_PKCS8_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PEM_def_callback(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @X509_SIG_free(ptr noundef) local_unnamed_addr #2

declare ptr @PKCS8_decrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @EVP_PKCS82PKEY(ptr noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS8PrivateKey_fp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.do_pk8pkey_fp) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, ptr noundef null) #4
  br label %do_pk8pkey_fp.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @do_pk8pkey(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 1, i32 noundef -1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %do_pk8pkey_fp.exit

do_pk8pkey_fp.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS8PrivateKey_nid_fp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.do_pk8pkey_fp) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, ptr noundef null) #4
  br label %do_pk8pkey_fp.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @do_pk8pkey(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 1, i32 noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %do_pk8pkey_fp.exit

do_pk8pkey_fp.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_write_PKCS8PrivateKey_nid(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.do_pk8pkey_fp) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, ptr noundef null) #4
  br label %do_pk8pkey_fp.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @do_pk8pkey(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 0, i32 noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %do_pk8pkey_fp.exit

do_pk8pkey_fp.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_write_PKCS8PrivateKey(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.do_pk8pkey_fp) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, ptr noundef null) #4
  br label %do_pk8pkey_fp.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @do_pk8pkey(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 0, i32 noundef -1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %do_pk8pkey_fp.exit

do_pk8pkey_fp.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_PKCS8PrivateKey_fp(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 258, ptr noundef nonnull @__func__.d2i_PKCS8PrivateKey_fp) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, ptr noundef null) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @d2i_PKCS8PrivateKey_bio(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PEM_read_bio_PKCS8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PEM_ASN1_read_bio(ptr noundef nonnull @d2i_X509_SIG, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  ret ptr %i.a
}

declare ptr @PEM_ASN1_read_bio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @d2i_X509_SIG(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PEM_read_PKCS8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PEM_ASN1_read(ptr noundef nonnull @d2i_X509_SIG, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  ret ptr %i.a
}

declare ptr @PEM_ASN1_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_write_bio_PKCS8(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PEM_ASN1_write_bio(ptr noundef nonnull @i2d_X509_SIG, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  ret i32 %i.a
}

declare i32 @PEM_ASN1_write_bio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_X509_SIG(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_write_PKCS8(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PEM_ASN1_write(ptr noundef nonnull @i2d_X509_SIG, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  ret i32 %i.a
}

declare i32 @PEM_ASN1_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PEM_read_bio_PKCS8_PRIV_KEY_INFO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PEM_ASN1_read_bio(ptr noundef nonnull @d2i_PKCS8_PRIV_KEY_INFO, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  ret ptr %i.a
}

declare ptr @d2i_PKCS8_PRIV_KEY_INFO(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PEM_read_PKCS8_PRIV_KEY_INFO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PEM_ASN1_read(ptr noundef nonnull @d2i_PKCS8_PRIV_KEY_INFO, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PEM_ASN1_write_bio(ptr noundef nonnull @i2d_PKCS8_PRIV_KEY_INFO, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  ret i32 %i.a
}

declare i32 @i2d_PKCS8_PRIV_KEY_INFO(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_write_PKCS8_PRIV_KEY_INFO(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PEM_ASN1_write(ptr noundef nonnull @i2d_PKCS8_PRIV_KEY_INFO, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  ret i32 %i.a
}

declare ptr @OSSL_ENCODER_CTX_new_for_pkey(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_get0_name(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_passphrase(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_pem_password_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_to_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_PKEY2PKCS8(ptr noundef) local_unnamed_addr #2

declare ptr @PKCS8_encrypt(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_PKCS8_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_ENCODER_CTX_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS11evp_pkey_st", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
end_hunk_0
