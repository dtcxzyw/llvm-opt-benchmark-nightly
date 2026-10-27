Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/pk7_doit?download=true
inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@PKCS7_dataDecode:bb.a
  %i.fj = call i32 @EVP_CipherInit_ex(ptr noundef %i.fi, ptr noundef null, ptr noundef null, ptr noundef %i.fh, ptr noundef null, i32 noundef 0) #4
  %i.fk = icmp slt i32 %i.fj, 1
  br i1 %i.fk, label %.loopexit245, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fl = load i32, ptr %i.c, align 4, !tbaa !66
  %i.fm = sext i32 %i.fl to i64
  call void @CRYPTO_clear_free(ptr noundef %i.fh, i64 noundef %i.fm, ptr noundef nonnull @.str, i32 noundef 679) #4
  store ptr null, ptr %i.b, align 8, !tbaa !65
  call void @CRYPTO_clear_free(ptr noundef %.1121, i64 noundef %i.er, ptr noundef nonnull @.str, i32 noundef 681) #4
  %i.fn = icmp eq ptr %.2145228, null
  br i1 %i.fn, label %bb.ax, label %.split

.split:                                           ; preds = %bb.aw
  %i.fo = call ptr @BIO_push(ptr noundef nonnull %.2145228, ptr noundef nonnull %i.db) #4 ; 0 uses
  br i1 %i.cz, label %bb.ay, label %bb.bb

bb.ax:                                            ; preds = %bb.aw, %.loopexit248
  %i.fp = phi i1 [ %i.ca, %.loopexit248 ], [ %i.cz, %bb.aw ]
  %.0131191208224 = phi ptr [ %.0131, %.loopexit248 ], [ %.0131191208223, %bb.aw ] ; 2 uses
  %.0134189209222 = phi ptr [ %.0134, %.loopexit248 ], [ %.0134189209221, %bb.aw ]
  %.4 = phi ptr [ %.2145, %.loopexit248 ], [ %i.db, %bb.aw ] ; 2 uses
  %.0 = phi i32 [ 0, %.loopexit248 ], [ %i.ep, %bb.aw ]
  br i1 %i.fp, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %.split, %bb.ax
  %.0242 = phi i32 [ %i.ep, %.split ], [ %.0, %bb.ax ] ; 2 uses
  %.4241 = phi ptr [ %.2145228, %.split ], [ %.4, %bb.ax ] ; 4 uses
  %.0134189209222239 = phi ptr [ %.0134189209221, %.split ], [ %.0134189209222, %bb.ax ] ; 2 uses
  %.0131191208224238 = phi ptr [ %.0131191208223, %.split ], [ %.0131191208224, %bb.ax ] ; 4 uses
  %i.fq = load i32, ptr %.0134189209222239, align 8, !tbaa !62 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = call ptr @BIO_s_mem() #4
  %i.ft = call ptr @BIO_new(ptr noundef %i.fs) #4 ; 3 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.loopexit245, label %.thread243

.thread243:                                       ; preds = %bb.az
  %i.fv = call i64 @BIO_ctrl(ptr noundef nonnull %i.ft, i32 noundef 130, i64 noundef 0, ptr noundef null) #4 ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.fw = getelementptr inbounds nuw i8, ptr %.0134189209222239, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !63
  %i.fy = call ptr @BIO_new_mem_buf(ptr noundef %i.fx, i32 noundef %i.fq) #4 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %.loopexit245, label %bb.bb

bb.bb:                                            ; preds = %.thread243, %.split, %bb.ax, %bb.ba
  %.4240 = phi ptr [ %.4241, %bb.ba ], [ %.4, %bb.ax ], [ %.2145228, %.split ], [ %.4241, %.thread243 ] ; 2 uses
  %.0131191208224237 = phi ptr [ %.0131191208224238, %bb.ba ], [ %.0131191208224, %bb.ax ], [ %.0131191208223, %.split ], [ %.0131191208224238, %.thread243 ]
  %.1136 = phi ptr [ %i.fy, %bb.ba ], [ %2, %bb.ax ], [ %2, %.split ], [ %i.ft, %.thread243 ]
  %i.ga = call ptr @BIO_push(ptr noundef %.4240, ptr noundef nonnull %.1136) #4 ; 0 uses
  call void @EVP_CIPHER_free(ptr noundef %.0131191208224237) #4
  br label %bb.bc

.loopexit245:                                     ; preds = %.lr.ph262, %bb.ba, %bb.az, %bb.av, %bb.ap, %bb.ao, %bb.an, %bb.am, %.loopexit, %bb.ak, %._crit_edge, %bb.ah, %bb.ad, %bb.ac, %bb.z, %bb.x, %bb.v, %bb.u, %bb.r, %bb.n
  %.5 = phi ptr [ null, %bb.v ], [ null, %bb.n ], [ null, %bb.x ], [ %.0143258, %bb.z ], [ %.0143258, %bb.ac ], [ %.0143258, %bb.ad ], [ %.2145228, %bb.ah ], [ %.2145228, %._crit_edge ], [ null, %bb.u ], [ %.2145228, %.loopexit ], [ %.2145228, %bb.am ], [ %.2145228, %bb.an ], [ %.2145228, %bb.ao ], [ %.2145228, %bb.ap ], [ %.2145228, %bb.av ], [ %.4241, %bb.ba ], [ %.4241, %bb.az ], [ %.2145228, %bb.ak ], [ null, %bb.r ], [ %.2145228, %.lr.ph262 ]
  %.2142 = phi ptr [ null, %bb.v ], [ null, %bb.n ], [ null, %bb.x ], [ null, %bb.z ], [ %i.ci, %bb.ac ], [ %i.ci, %bb.ad ], [ null, %bb.ah ], [ null, %._crit_edge ], [ null, %bb.u ], [ null, %.loopexit ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.ao ], [ null, %bb.ap ], [ null, %bb.av ], [ null, %bb.ba ], [ null, %bb.az ], [ null, %bb.ak ], [ null, %bb.r ], [ null, %.lr.ph262 ]
  %.1139 = phi ptr [ null, %bb.v ], [ null, %bb.n ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ah ], [ %i.db, %._crit_edge ], [ null, %bb.u ], [ %i.db, %.loopexit ], [ %i.db, %bb.am ], [ %i.db, %bb.an ], [ %i.db, %bb.ao ], [ %i.db, %bb.ap ], [ %i.db, %bb.av ], [ null, %bb.ba ], [ null, %bb.az ], [ %i.db, %bb.ak ], [ null, %bb.r ], [ %i.db, %.lr.ph262 ]
  %.1132 = phi ptr [ null, %bb.v ], [ null, %bb.n ], [ %.0131190, %bb.x ], [ %.0131, %bb.z ], [ %.0131, %bb.ac ], [ %.0131, %bb.ad ], [ %.0131191208223, %bb.ah ], [ %.0131191208223, %._crit_edge ], [ null, %bb.u ], [ %.0131191208223, %.loopexit ], [ %.0131191208223, %bb.am ], [ %.0131191208223, %bb.an ], [ %.0131191208223, %bb.ao ], [ %.0131191208223, %bb.ap ], [ %.0131191208223, %bb.av ], [ %.0131191208224238, %bb.ba ], [ %.0131191208224238, %bb.az ], [ %.0131191208223, %bb.ak ], [ null, %bb.r ], [ %.0131191208223, %.lr.ph262 ]
  %.3 = phi ptr [ null, %bb.v ], [ null, %bb.n ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ah ], [ null, %._crit_edge ], [ null, %bb.u ], [ null, %.loopexit ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.ao ], [ %i.es, %bb.ap ], [ %.1121, %bb.av ], [ null, %bb.ba ], [ null, %bb.az ], [ null, %bb.ak ], [ null, %bb.r ], [ null, %.lr.ph262 ]
  %.1 = phi i32 [ 0, %bb.v ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ah ], [ 0, %._crit_edge ], [ 0, %bb.u ], [ 0, %.loopexit ], [ 0, %bb.am ], [ 0, %bb.an ], [ %i.ep, %bb.ao ], [ %i.ep, %bb.ap ], [ %i.ep, %bb.av ], [ %.0242, %bb.ba ], [ %.0242, %bb.az ], [ 0, %bb.ak ], [ 0, %bb.r ], [ 0, %.lr.ph262 ]
  call void @EVP_CIPHER_free(ptr noundef %.1132) #4
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.gc = load i32, ptr %i.c, align 4, !tbaa !66
  %i.gd = sext i32 %i.gc to i64
  call void @CRYPTO_clear_free(ptr noundef %i.gb, i64 noundef %i.gd, ptr noundef nonnull @.str, i32 noundef 711) #4
  %i.ge = zext nneg i32 %.1 to i64
  call void @CRYPTO_clear_free(ptr noundef %.3, i64 noundef %i.ge, ptr noundef nonnull @.str, i32 noundef 712) #4
  call void @BIO_free_all(ptr noundef %.5) #4
  call void @BIO_free_all(ptr noundef %.2142) #4
  call void @BIO_free_all(ptr noundef %.1139) #4
  call void @BIO_free_all(ptr noundef null) #4
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit245, %bb.bb, %bb.d, %bb.b
  %.0150 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %.loopexit245 ], [ %.4240, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0150
}

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EVP_get_cipherbyname(ptr noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare ptr @BIO_f_md() local_unnamed_addr #2

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_get_digestbyname(ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @pkcs7_decrypt_rinfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = tail call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.d) #4
  %i.f = tail call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.d) #4
  %i.g = tail call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.e, ptr noundef %3, ptr noundef %i.f) #4 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @EVP_PKEY_decrypt_init(ptr noundef nonnull %i.g) #4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @EVP_PKEY_is_a(ptr noundef %3, ptr noundef nonnull @.str.1) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @EVP_PKEY_CTX_ctrl_str(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = load i32, ptr %i.n, align 8, !tbaa !62
  %i.r = sext i32 %i.q to i64
  %i.s = call i32 @evp_pkey_decrypt_alloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %4, ptr noundef %i.p, i64 noundef %i.r) #4 ; 3 uses
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !65
  %i.v = load i32, ptr %1, align 4, !tbaa !66
  %i.w = sext i32 %i.v to i64
  call void @CRYPTO_clear_free(ptr noundef %i.u, i64 noundef %i.w, ptr noundef nonnull @.str, i32 noundef 220) #4
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !65
  store ptr %i.x, ptr %0, align 8, !tbaa !65
  %i.y = load i64, ptr %i.b, align 8, !tbaa !59
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %1, align 4, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f
  %.0.ph = phi i32 [ 1, %bb.f ], [ -1, %bb.b ]
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.g) #4
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.g) #4
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !65
  call void @CRYPTO_free(ptr noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 227) #4
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h, %bb.a
  %.020 = phi i32 [ -1, %bb.a ], [ 0, %bb.h ], [ %i.s, %bb.g ], [ %.0.ph, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.020
}

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @EVP_CIPHER_asn1_to_param(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_new_mem_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PKCS7_dataFinal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 783, ptr noundef nonnull @__func__.PKCS7_dataFinal) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, ptr noundef null) #4
  br label %bb.bc

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @ossl_pkcs7_get0_ctx(ptr noundef nonnull %0) #4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @__func__.PKCS7_dataFinal) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, ptr noundef null) #4
  br label %bb.bc

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @EVP_MD_CTX_new() #4       ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 796, ptr noundef nonnull @__func__.PKCS7_dataFinal) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, ptr noundef null) #4
  br label %bb.bc

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = tail call i32 @OBJ_obj2nid(ptr noundef %i.p) #4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !23
  switch i32 %i.q, label %bb.af [
    i32 21, label %bb.h
    i32 24, label %bb.i
    i32 23, label %bb.l
    i32 22, label %bb.p
    i32 25, label %bb.x
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !18
  br label %.thread117

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @ASN1_OCTET_STRING_new() #4 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 814, ptr noundef nonnull @__func__.PKCS7_dataFinal) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524301, ptr noundef null) #4
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %.thread117

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call ptr @ASN1_OCTET_STRING_new() #4 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @__func__.PKCS7_dataFinal) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524301, ptr noundef null) #4
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !68
  br label %.thread117

bb.p:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !94 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.aw = tail call i32 @OBJ_obj2nid(ptr noundef %i.av) #4
  %i.ax = icmp eq i32 %i.aw, 21
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18
  br label %PKCS7_get_octet_string.exit

bb.r:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.bb = tail call i32 @OBJ_obj2nid(ptr noundef %i.ba) #4
  %i.bc = add i32 %i.bb, -21
  %switch.i.i = icmp ult i32 %i.bc, 6
  br i1 %switch.i.i, label %PKCS7_get_octet_string.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !18 ; 3 uses
  %.not8.i = icmp eq ptr %i.be, null
  br i1 %.not8.i, label %PKCS7_get_octet_string.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !20
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.u, label %PKCS7_get_octet_string.exit

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !18
  br label %PKCS7_get_octet_string.exit

PKCS7_get_octet_string.exit:                      ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i = phi ptr [ %i.az, %bb.q ], [ %i.bi, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.r ] ; 3 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17
  %i.bo = tail call i32 @OBJ_obj2nid(ptr noundef %i.bn) #4
  %i.bp = icmp eq i32 %i.bo, 21
  br i1 %i.bp, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %PKCS7_get_octet_string.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !95
  %.not90 = icmp eq i32 %i.br, 0
  br i1 %.not90, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @ASN1_OCTET_STRING_free(ptr noundef %.0.i) #4
  br label %.sink.split

bb.x:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !96 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.bx = tail call i32 @OBJ_obj2nid(ptr noundef %i.bw) #4
  %i.by = icmp eq i32 %i.bx, 21
  br i1 %i.by, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18
  br label %PKCS7_get_octet_string.exit105

bb.z:                                             ; preds = %bb.x
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.cc = tail call i32 @OBJ_obj2nid(ptr noundef %i.cb) #4
  %i.cd = add i32 %i.cc, -21
  %switch.i.i102 = icmp ult i32 %i.cd, 6
  br i1 %switch.i.i102, label %PKCS7_get_octet_string.exit105, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !18 ; 3 uses
  %.not8.i103 = icmp eq ptr %i.cf, null
  br i1 %.not8.i103, label %PKCS7_get_octet_string.exit105, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !20
  %i.ch = icmp eq i32 %i.cg, 4
  br i1 %i.ch, label %bb.ac, label %PKCS7_get_octet_string.exit105

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18
  br label %PKCS7_get_octet_string.exit105
end_hunk_0
begin_hunk_1_@PKCS7_dataFinal:bb.a
  br i1 %i.dc, label %.lr.ph, label %.thread117

.lr.ph:                                           ; preds = %.preheader, %bb.as
  %.078128 = phi i32 [ %i.eq, %bb.as ], [ 0, %.preheader ] ; 2 uses
  %i.dd = call ptr @OPENSSL_sk_value(ptr noundef nonnull %.077, i32 noundef %.078128) #4 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !77
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !78
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !51
  %i.dk = call i32 @OBJ_obj2nid(ptr noundef %i.dj) #4
  %i.dl = call fastcc ptr @PKCS7_find_digest(ptr noundef %i.c, ptr noundef %1, i32 noundef %i.dk)
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.do = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef %i.dn) #4
  %.not97 = icmp eq i32 %i.do, 0
  br i1 %.not97, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !81
  %i.dr = call i32 @OPENSSL_sk_num(ptr noundef %i.dq) #4
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !81 ; 2 uses
  %i.du = call i32 @X509at_get_attr_by_NID(ptr noundef %i.dt, i32 noundef 52, i32 noundef -1) #4 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %PKCS7_get_signed_attribute.exit.thread.i, label %PKCS7_get_signed_attribute.exit.i

PKCS7_get_signed_attribute.exit.i:                ; preds = %bb.ak
  %i.dw = call ptr @X509at_get_attr(ptr noundef %i.dt, i32 noundef %i.du) #4
  %i.dx = call ptr @X509_ATTRIBUTE_get0_type(ptr noundef %i.dw, i32 noundef 0) #4
  %.not.i = icmp eq ptr %i.dx, null
  br i1 %.not.i, label %PKCS7_get_signed_attribute.exit.thread.i, label %bb.al

PKCS7_get_signed_attribute.exit.thread.i:         ; preds = %PKCS7_get_signed_attribute.exit.i, %bb.ak
  %i.dy = call i32 @PKCS7_add0_attrib_signing_time(ptr noundef nonnull %i.dd, ptr noundef null) #4
  %.not5.i = icmp eq i32 %i.dy, 0
  br i1 %.not5.i, label %do_pkcs7_signed_attrib.exit.thread, label %bb.al

bb.al:                                            ; preds = %PKCS7_get_signed_attribute.exit.thread.i, %PKCS7_get_signed_attribute.exit.i
  %i.dz = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not6.i = icmp eq i32 %i.dz, 0
  br i1 %.not6.i, label %do_pkcs7_signed_attrib.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ea = load i32, ptr %i.b, align 4, !tbaa !66
  %i.eb = call i32 @PKCS7_add1_attrib_digest(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.a, i32 noundef %i.ea) #4
  %.not7.i = icmp eq i32 %i.eb, 0
  br i1 %.not7.i, label %do_pkcs7_signed_attrib.exit.thread, label %do_pkcs7_signed_attrib.exit

do_pkcs7_signed_attrib.exit.thread:               ; preds = %bb.am, %bb.al, %PKCS7_get_signed_attribute.exit.thread.i
  %.sink147 = phi i32 [ 748, %PKCS7_get_signed_attribute.exit.thread.i ], [ 755, %bb.al ], [ 759, %bb.am ]
  %.sink146 = phi i32 [ 524321, %PKCS7_get_signed_attribute.exit.thread.i ], [ 524294, %bb.al ], [ 524321, %bb.am ]
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink147, ptr noundef nonnull @__func__.do_pkcs7_signed_attrib) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef %.sink146, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

do_pkcs7_signed_attrib.exit:                      ; preds = %bb.am
  %i.ec = call i32 @PKCS7_SIGNER_INFO_sign(ptr noundef nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not99 = icmp eq i32 %i.ec, 0
  br i1 %.not99, label %.loopexit, label %bb.as

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.ed = load ptr, ptr %i.de, align 8, !tbaa !77
  %i.ee = call i32 @EVP_PKEY_get_size(ptr noundef %i.ed) #4 ; 3 uses
  store i32 %i.ee, ptr %i.d, align 4, !tbaa !66
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %.thread115, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = zext i32 %i.ee to i64
  %i.eh = call noalias ptr @CRYPTO_malloc(i64 noundef %i.eg, ptr noundef nonnull @.str, i32 noundef 892) #4 ; 4 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %.thread115, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load ptr, ptr %i.de, align 8, !tbaa !77
  %i.ek = call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.i) #4
  %i.el = call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.i) #4
  %i.em = call i32 @EVP_SignFinal_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.d, ptr noundef %i.ej, ptr noundef %i.ek, ptr noundef %i.el) #4
  %.not98 = icmp eq i32 %i.em, 0
  br i1 %.not98, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @CRYPTO_free(ptr noundef nonnull %i.eh, ptr noundef nonnull @.str, i32 noundef 898) #4
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 899, ptr noundef nonnull @__func__.PKCS7_dataFinal) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, ptr noundef null) #4
  br label %.thread115

.thread115:                                       ; preds = %bb.ao, %bb.an, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !82
  %i.ep = load i32, ptr %i.d, align 4, !tbaa !66
  call void @ASN1_STRING_set0(ptr noundef %i.eo, ptr noundef nonnull %i.eh, i32 noundef %i.ep) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %do_pkcs7_signed_attrib.exit, %.lr.ph
  %i.eq = add nuw nsw i32 %.078128, 1             ; 2 uses
  %i.er = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.077) #4
  %i.es = icmp slt i32 %i.eq, %i.er
  br i1 %i.es, label %.lr.ph, label %.thread117, !llvm.loop !92

bb.at:                                            ; preds = %bb.ae, %bb.ad, %PKCS7_get_octet_string.exit105
  %.076.ph.ph = phi ptr [ null, %bb.ae ], [ %.0.i104, %bb.ad ], [ %.0.i104, %PKCS7_get_octet_string.exit105 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.et = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !47
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !51
  %i.ex = tail call i32 @OBJ_obj2nid(ptr noundef %i.ew) #4
  %i.ey = call fastcc ptr @PKCS7_find_digest(ptr noundef %i.c, ptr noundef %1, i32 noundef %i.ex)
  %.not92 = icmp eq ptr %i.ey, null
  br i1 %.not92, label %.thread124, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.fa = call i32 @EVP_DigestFinal_ex(ptr noundef %i.ez, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #4
  %.not93 = icmp eq i32 %i.fa, 0
  br i1 %.not93, label %.thread124, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !98
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !66
  %i.ff = call i32 @ASN1_OCTET_STRING_set(ptr noundef %i.fd, ptr noundef nonnull %i.e, i32 noundef %i.fe) #4
  %.not94 = icmp eq i32 %i.ff, 0
  br i1 %.not94, label %.thread124, label %bb.aw

.thread124:                                       ; preds = %bb.au, %bb.at, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  br label %.loopexit

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  br label %.thread117

.thread117:                                       ; preds = %bb.as, %.preheader, %bb.ag, %bb.aw, %bb.l, %bb.o, %bb.h
  %.076110 = phi ptr [ %.076.ph.ph, %bb.aw ], [ %i.s, %bb.h ], [ %.076, %bb.ag ], [ %i.ah, %bb.l ], [ %i.aj, %bb.o ], [ %.076, %.preheader ], [ %.076, %bb.as ] ; 3 uses
  %i.fg = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.fh = call i32 @OBJ_obj2nid(ptr noundef %i.fg) #4
  %i.fi = icmp eq i32 %i.fh, 22
  br i1 %i.fi, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread117
  %i.fj = call i64 @PKCS7_ctrl(ptr noundef nonnull %0, i32 noundef 2, i64 noundef 0, ptr noundef null) #4
  %.not95 = icmp eq i64 %i.fj, 0
  br i1 %.not95, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax, %.thread117
  %i.fk = icmp eq ptr %.076110, null
  br i1 %i.fk, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fl = getelementptr inbounds nuw i8, ptr %.076110, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !64
  %i.fn = and i64 %i.fm, 16
  %.not96 = icmp eq i64 %i.fn, 0
  br i1 %.not96, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.fo = call ptr @BIO_find_type(ptr noundef %1, i32 noundef 1025) #4 ; 4 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.bb, label %.thread126

.thread126:                                       ; preds = %bb.ba
  %i.fq = call i64 @BIO_ctrl(ptr noundef nonnull %i.fo, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.g) #4
  call void @BIO_set_flags(ptr noundef nonnull %i.fo, i32 noundef 512) #4
  %i.fr = call i64 @BIO_ctrl(ptr noundef nonnull %i.fo, i32 noundef 130, i64 noundef 0, ptr noundef null) #4 ; 0 uses
  %i.fs = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.ft = trunc i64 %i.fq to i32
  call void @ASN1_STRING_set0(ptr noundef nonnull %.076110, ptr noundef %i.fs, i32 noundef %i.ft) #4
  br label %.loopexit.sink.split

bb.bb:                                            ; preds = %bb.ba
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 929, ptr noundef nonnull @__func__.PKCS7_dataFinal) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 107, ptr noundef null) #4
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.thread126, %bb.bb
  %.079.ph = phi i32 [ 0, %bb.bb ], [ 1, %.thread126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %.loopexit

.loopexit:                                        ; preds = %do_pkcs7_signed_attrib.exit, %bb.ai, %bb.ah, %.loopexit.sink.split, %bb.ax, %bb.az, %.thread124, %.thread115, %do_pkcs7_signed_attrib.exit.thread, %bb.ay, %bb.af, %bb.n, %bb.k
  %.079 = phi i32 [ 0, %bb.af ], [ 0, %bb.n ], [ 1, %bb.az ], [ 0, %.thread115 ], [ 1, %bb.ax ], [ 0, %do_pkcs7_signed_attrib.exit.thread ], [ 0, %bb.ay ], [ %.079.ph, %.loopexit.sink.split ], [ 0, %.thread124 ], [ 0, %bb.k ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %do_pkcs7_signed_attrib.exit ]
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.m) #4
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit, %bb.f, %bb.d, %bb.b
  %.080 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %.079, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret i32 %.080
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare ptr @ASN1_OCTET_STRING_new() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @PKCS7_find_digest(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_find_type(ptr noundef %1, i32 noundef 520) #4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.k, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.c, i32 noundef 120, i64 noundef 0, ptr noundef nonnull %0) #4 ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %i.e) #4
  %i.h = tail call i32 @EVP_MD_get_type(ptr noundef %i.g) #4
  %i.i = icmp eq i32 %i.h, %2
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @BIO_next(ptr noundef nonnull %i.c) #4
  %i.k = tail call ptr @BIO_find_type(ptr noundef %i.j, i32 noundef 520) #4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit.sink.split, label %.lr.ph

.loopexit.sink.split:                             ; preds = %.lr.ph, %bb.c, %bb.a
  %.sink21 = phi i32 [ 725, %bb.a ], [ 725, %bb.c ], [ 730, %.lr.ph ]
  %.sink = phi i32 [ 108, %bb.a ], [ 108, %bb.c ], [ 786691, %.lr.ph ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink21, ptr noundef nonnull @__func__.PKCS7_find_digest) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef %.sink, ptr noundef null) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.sink.split
  %.0 = phi ptr [ null, %.loopexit.sink.split ], [ %i.c, %bb.b ]
  ret ptr %.0
}

declare i32 @EVP_MD_CTX_copy_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_size(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_SignFinal_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_STRING_set0(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_find_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PKCS7_SIGNER_INFO_sign(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = tail call i32 @OBJ_obj2nid(ptr noundef %i.h) #4
  %i.j = tail call ptr @OBJ_nid2sn(i32 noundef %i.i) #4
  %i.k = tail call ptr @EVP_get_digestbyname(ptr noundef %i.j) #4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @EVP_MD_CTX_new() #4       ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 964, ptr noundef nonnull @__func__.PKCS7_SIGNER_INFO_sign) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, ptr noundef null) #4
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.o = tail call ptr @EVP_MD_get0_name(ptr noundef nonnull %i.k) #4
  %i.p = tail call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.e) #4
  %i.q = tail call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.e) #4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77
  %i.t = call i32 @EVP_DigestSignInit_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.s, ptr noundef null) #4
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.x = call ptr @PKCS7_ATTR_SIGN_it() #4
  %i.y = call i32 @ASN1_item_i2d(ptr noundef %i.w, ptr noundef nonnull %i.b, ptr noundef %i.x) #4 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = call i32 @EVP_DigestSignUpdate(ptr noundef nonnull %i.m, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #4
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @CRYPTO_free(ptr noundef %i.af, ptr noundef nonnull @.str, i32 noundef 981) #4
  store ptr null, ptr %i.b, align 8, !tbaa !65
  %i.ag = call i32 @EVP_DigestSignFinal(ptr noundef nonnull %i.m, ptr noundef null, ptr noundef nonnull %i.c) #4
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !59
  %i.aj = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ai, ptr noundef nonnull @.str, i32 noundef 985) #4 ; 3 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !65
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = call i32 @EVP_DigestSignFinal(ptr noundef nonnull %i.m, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.c) #4
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.m) #4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !82
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !59
  %i.ar = trunc i64 %i.aq to i32
  call void @ASN1_STRING_set0(ptr noundef %i.ao, ptr noundef %i.ap, i32 noundef %i.ar) #4
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @CRYPTO_free(ptr noundef %i.as, ptr noundef nonnull @.str, i32 noundef 998) #4
  call void @EVP_MD_CTX_free(ptr noundef %i.m) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.k ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_get0_name(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PKCS7_ATTR_SIGN_it() local_unnamed_addr #2

declare i32 @EVP_DigestSignUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PKCS7_dataVerify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @__func__.PKCS7_dataVerify) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, ptr noundef null) #4
end_hunk_1
