Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/pk7_doit?download=true
inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@PKCS7_dataDecode:bb.a
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eu = sext i32 %i.eo to i64
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.en, i64 noundef %i.eu, ptr noundef nonnull @.str, i32 noundef 632) #5
  store ptr %.0114, ptr %i.b, align 8, !tbaa !63
  store i32 %i.ed, ptr %i.c, align 4, !tbaa !64
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %i.ev = phi ptr [ %.0114, %bb.as ], [ %i.en, %bb.ar ], [ %i.en, %bb.aq ] ; 2 uses
  %.1115 = phi ptr [ null, %bb.as ], [ %.0114, %bb.ar ], [ %.0114, %bb.aq ] ; 2 uses
  call void @ERR_clear_error() #5
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.ex = call i32 @EVP_CipherInit_ex(ptr noundef %i.ew, ptr noundef null, ptr noundef null, ptr noundef %i.ev, ptr noundef null, i32 noundef 0) #5
  %i.ey = icmp slt i32 %i.ex, 1
  br i1 %i.ey, label %.loopexit219, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = load i32, ptr %i.c, align 4, !tbaa !64
  %i.fa = sext i32 %i.ez to i64
  call void @CRYPTO_clear_free(ptr noundef %i.ev, i64 noundef %i.fa, ptr noundef nonnull @.str, i32 noundef 643) #5
  store ptr null, ptr %i.b, align 8, !tbaa !63
  call void @CRYPTO_clear_free(ptr noundef %.1115, i64 noundef %i.ef, ptr noundef nonnull @.str, i32 noundef 645) #5
  %i.fb = icmp eq ptr %.2135202, null
  br i1 %i.fb, label %bb.av, label %.split

.split:                                           ; preds = %bb.au
  %i.fc = call ptr @BIO_push(ptr noundef nonnull %.2135202, ptr noundef nonnull %i.cp) #5 ; 0 uses
  br i1 %i.cn, label %bb.aw, label %bb.az

bb.av:                                            ; preds = %bb.au, %.loopexit222
  %i.fd = phi i1 [ %i.bt, %.loopexit222 ], [ %i.cn, %bb.au ]
  %.0122173187199 = phi ptr [ null, %.loopexit222 ], [ %.0122173187198, %bb.au ] ; 2 uses
  %.0124171188197 = phi ptr [ %.0124, %.loopexit222 ], [ %.0124171188196, %bb.au ]
  %.4 = phi ptr [ %.2135, %.loopexit222 ], [ %i.cp, %bb.au ] ; 2 uses
  %.0 = phi i32 [ 0, %.loopexit222 ], [ %i.ed, %bb.au ]
  br i1 %i.fd, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.split, %bb.av
  %.0216 = phi i32 [ %i.ed, %.split ], [ %.0, %bb.av ] ; 2 uses
  %.4215 = phi ptr [ %.2135202, %.split ], [ %.4, %bb.av ] ; 4 uses
  %.0124171188197213 = phi ptr [ %.0124171188196, %.split ], [ %.0124171188197, %bb.av ] ; 2 uses
  %.0122173187199212 = phi ptr [ %.0122173187198, %.split ], [ %.0122173187199, %bb.av ] ; 4 uses
  %i.fe = load i32, ptr %.0124171188197213, align 8, !tbaa !60 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = call ptr @BIO_s_mem() #5
  %i.fh = call ptr @BIO_new(ptr noundef %i.fg) #5 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.loopexit219, label %.thread217

.thread217:                                       ; preds = %bb.ax
  %i.fj = call i64 @BIO_ctrl(ptr noundef nonnull %i.fh, i32 noundef 130, i64 noundef 0, ptr noundef null) #5 ; 0 uses
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %.0124171188197213, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !61
  %i.fm = call ptr @BIO_new_mem_buf(ptr noundef %i.fl, i32 noundef %i.fe) #5 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %.loopexit219, label %bb.az

bb.az:                                            ; preds = %.thread217, %.split, %bb.av, %bb.ay
  %.4214 = phi ptr [ %.4215, %bb.ay ], [ %.4, %bb.av ], [ %.2135202, %.split ], [ %.4215, %.thread217 ] ; 2 uses
  %.0122173187199211 = phi ptr [ %.0122173187199212, %bb.ay ], [ %.0122173187199, %bb.av ], [ %.0122173187198, %.split ], [ %.0122173187199212, %.thread217 ]
  %.1126 = phi ptr [ %i.fm, %bb.ay ], [ %2, %bb.av ], [ %2, %.split ], [ %i.fh, %.thread217 ]
  %i.fo = call ptr @BIO_push(ptr noundef %.4214, ptr noundef nonnull %.1126) #5 ; 0 uses
  call void @EVP_CIPHER_free(ptr noundef %.0122173187199211) #5
  br label %bb.ba

.loopexit219:                                     ; preds = %.lr.ph236, %bb.ay, %bb.ax, %bb.at, %bb.an, %bb.am, %bb.al, %bb.ak, %.loopexit, %bb.ai, %._crit_edge, %bb.af, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q, %bb.n
  %.5 = phi ptr [ null, %bb.t ], [ null, %bb.n ], [ null, %bb.v ], [ %.0133232, %bb.x ], [ %.0133232, %bb.z ], [ %.0133232, %bb.ab ], [ %.2135202, %bb.af ], [ %.2135202, %._crit_edge ], [ null, %bb.s ], [ %.2135202, %.loopexit ], [ %.2135202, %bb.ak ], [ %.2135202, %bb.al ], [ %.2135202, %bb.am ], [ %.2135202, %bb.an ], [ %.2135202, %bb.at ], [ %.4215, %bb.ay ], [ %.4215, %bb.ax ], [ %.2135202, %bb.ai ], [ null, %bb.q ], [ %.2135202, %.lr.ph236 ]
  %.2132 = phi ptr [ null, %bb.t ], [ null, %bb.n ], [ null, %bb.v ], [ null, %bb.x ], [ %i.ca, %bb.z ], [ %i.ca, %bb.ab ], [ null, %bb.af ], [ null, %._crit_edge ], [ null, %bb.s ], [ null, %.loopexit ], [ null, %bb.ak ], [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.at ], [ null, %bb.ay ], [ null, %bb.ax ], [ null, %bb.ai ], [ null, %bb.q ], [ null, %.lr.ph236 ]
  %.1129 = phi ptr [ null, %bb.t ], [ null, %bb.n ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.af ], [ %i.cp, %._crit_edge ], [ null, %bb.s ], [ %i.cp, %.loopexit ], [ %i.cp, %bb.ak ], [ %i.cp, %bb.al ], [ %i.cp, %bb.am ], [ %i.cp, %bb.an ], [ %i.cp, %bb.at ], [ null, %bb.ay ], [ null, %bb.ax ], [ %i.cp, %bb.ai ], [ null, %bb.q ], [ %i.cp, %.lr.ph236 ]
  %.1123 = phi ptr [ null, %bb.t ], [ null, %bb.n ], [ %.0122172, %bb.v ], [ %.0122, %bb.x ], [ %.0122, %bb.z ], [ %.0122, %bb.ab ], [ %.0122173187198, %bb.af ], [ %.0122173187198, %._crit_edge ], [ null, %bb.s ], [ %.0122173187198, %.loopexit ], [ %.0122173187198, %bb.ak ], [ %.0122173187198, %bb.al ], [ %.0122173187198, %bb.am ], [ %.0122173187198, %bb.an ], [ %.0122173187198, %bb.at ], [ %.0122173187199212, %bb.ay ], [ %.0122173187199212, %bb.ax ], [ %.0122173187198, %bb.ai ], [ null, %bb.q ], [ %.0122173187198, %.lr.ph236 ]
  %.3 = phi ptr [ null, %bb.t ], [ null, %bb.n ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.af ], [ null, %._crit_edge ], [ null, %bb.s ], [ null, %.loopexit ], [ null, %bb.ak ], [ null, %bb.al ], [ null, %bb.am ], [ %i.eg, %bb.an ], [ %.1115, %bb.at ], [ null, %bb.ay ], [ null, %bb.ax ], [ null, %bb.ai ], [ null, %bb.q ], [ null, %.lr.ph236 ]
  %.1 = phi i32 [ 0, %bb.t ], [ 0, %bb.n ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.af ], [ 0, %._crit_edge ], [ 0, %bb.s ], [ 0, %.loopexit ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.ed, %bb.am ], [ %i.ed, %bb.an ], [ %i.ed, %bb.at ], [ %.0216, %bb.ay ], [ %.0216, %bb.ax ], [ 0, %bb.ai ], [ 0, %bb.q ], [ 0, %.lr.ph236 ]
  call void @EVP_CIPHER_free(ptr noundef %.1123) #5
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.fq = load i32, ptr %i.c, align 4, !tbaa !64
  %i.fr = sext i32 %i.fq to i64
  call void @CRYPTO_clear_free(ptr noundef %i.fp, i64 noundef %i.fr, ptr noundef nonnull @.str, i32 noundef 675) #5
  %i.fs = zext nneg i32 %.1 to i64
  call void @CRYPTO_clear_free(ptr noundef %.3, i64 noundef %i.fs, ptr noundef nonnull @.str, i32 noundef 676) #5
  call void @BIO_free_all(ptr noundef %.5) #5
  call void @BIO_free_all(ptr noundef %.2132) #5
  call void @BIO_free_all(ptr noundef %.1129) #5
  call void @BIO_free_all(ptr noundef null) #5
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit219, %bb.az, %bb.d, %bb.b
  %.0140 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %.loopexit219 ], [ %.4214, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.0140
}

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_f_md() local_unnamed_addr #2

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @pkcs7_decrypt_rinfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = tail call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.d) #5
  %i.f = tail call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.d) #5
  %i.g = tail call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.e, ptr noundef %3, ptr noundef %i.f) #5 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @EVP_PKEY_decrypt_init(ptr noundef nonnull %i.g) #5
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = load i32, ptr %i.l, align 8, !tbaa !60
  %i.p = sext i32 %i.o to i64
  %i.q = call i32 @evp_pkey_decrypt_alloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %4, ptr noundef %i.n, i64 noundef %i.p) #5 ; 3 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !63
  %i.t = load i32, ptr %1, align 4, !tbaa !64
  %i.u = sext i32 %i.t to i64
  call void @CRYPTO_clear_free(ptr noundef %i.s, i64 noundef %i.u, ptr noundef nonnull @.str, i32 noundef 207) #5
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !63
  store ptr %i.v, ptr %0, align 8, !tbaa !63
  %i.w = load i64, ptr %i.b, align 8, !tbaa !57
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %1, align 4, !tbaa !64
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d
  %.0.ph = phi i32 [ 1, %bb.d ], [ -1, %bb.b ]
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.g) #5
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.g) #5
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @CRYPTO_free(ptr noundef %i.y, ptr noundef nonnull @.str, i32 noundef 214) #5
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e, %bb.f, %bb.a
  %.018 = phi i32 [ -1, %bb.a ], [ 0, %bb.f ], [ %i.q, %bb.e ], [ %.0.ph, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.018
}

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @EVP_CIPHER_asn1_to_param(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_new_mem_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS7_dataFinal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 747, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, ptr noundef null) #5
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @ossl_pkcs7_get0_ctx(ptr noundef nonnull %0) #5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 754, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, ptr noundef null) #5
  br label %bb.bg

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @EVP_MD_CTX_new() #5       ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 760, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, ptr noundef null) #5
  br label %bb.bg

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = tail call i32 @OBJ_obj2nid(ptr noundef %i.p) #5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !21
  switch i32 %i.q, label %bb.aj [
    i32 21, label %bb.h
    i32 24, label %bb.i
    i32 23, label %bb.l
    i32 22, label %bb.p
    i32 25, label %bb.z
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !16
  br label %.thread121

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.ak

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @ASN1_OCTET_STRING_new() #5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 778, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524301, ptr noundef null) #5
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !66 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %.thread121

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call ptr @ASN1_OCTET_STRING_new() #5 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524301, ptr noundef null) #5
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !66
  br label %.thread121

bb.p:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 799, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, ptr noundef null) #5
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = tail call i32 @OBJ_obj2nid(ptr noundef %i.aw) #5
  %i.ay = icmp eq i32 %i.ax, 21
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  br label %PKCS7_get_octet_string.exit

bb.t:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.bc = tail call i32 @OBJ_obj2nid(ptr noundef %i.bb) #5
  %i.bd = add i32 %i.bc, -21
  %switch.i.i = icmp ult i32 %i.bd, 6
  br i1 %switch.i.i, label %PKCS7_get_octet_string.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16 ; 3 uses
  %.not8.i = icmp eq ptr %i.bf, null
  br i1 %.not8.i, label %PKCS7_get_octet_string.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !18
  %i.bh = icmp eq i32 %i.bg, 4
  br i1 %i.bh, label %bb.w, label %PKCS7_get_octet_string.exit

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  br label %PKCS7_get_octet_string.exit

PKCS7_get_octet_string.exit:                      ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i = phi ptr [ %i.ba, %bb.s ], [ %i.bj, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ] ; 3 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.bp = tail call i32 @OBJ_obj2nid(ptr noundef %i.bo) #5
  %i.bq = icmp eq i32 %i.bp, 21
  br i1 %i.bq, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %PKCS7_get_octet_string.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !93
  %.not94 = icmp eq i32 %i.bs, 0
  br i1 %.not94, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @ASN1_OCTET_STRING_free(ptr noundef %.0.i) #5
  br label %.sink.split

bb.z:                                             ; preds = %bb.g
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !94 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 813, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, ptr noundef null) #5
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15
  %i.bz = tail call i32 @OBJ_obj2nid(ptr noundef %i.by) #5
  %i.ca = icmp eq i32 %i.bz, 21
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16
  br label %PKCS7_get_octet_string.exit109

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@PKCS7_dataFinal:bb.a
  br i1 %i.de, label %.lr.ph, label %.thread121

.lr.ph:                                           ; preds = %.preheader, %bb.aw
  %.080132 = phi i32 [ %i.es, %bb.aw ], [ 0, %.preheader ] ; 2 uses
  %i.df = call ptr @OPENSSL_sk_value(ptr noundef nonnull %.079, i32 noundef %.080132) #5 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !75
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.aw, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !76
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !49
  %i.dm = call i32 @OBJ_obj2nid(ptr noundef %i.dl) #5
  %i.dn = call fastcc ptr @PKCS7_find_digest(ptr noundef %i.c, ptr noundef %1, i32 noundef %i.dm)
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.dq = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef %i.dp) #5
  %.not101 = icmp eq i32 %i.dq, 0
  br i1 %.not101, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !79
  %i.dt = call i32 @OPENSSL_sk_num(ptr noundef %i.ds) #5
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !79 ; 2 uses
  %i.dw = call i32 @X509at_get_attr_by_NID(ptr noundef %i.dv, i32 noundef 52, i32 noundef -1) #5 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %PKCS7_get_signed_attribute.exit.thread.i, label %PKCS7_get_signed_attribute.exit.i

PKCS7_get_signed_attribute.exit.i:                ; preds = %bb.ao
  %i.dy = call ptr @X509at_get_attr(ptr noundef %i.dv, i32 noundef %i.dw) #5
  %i.dz = call ptr @X509_ATTRIBUTE_get0_type(ptr noundef %i.dy, i32 noundef 0) #5
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %PKCS7_get_signed_attribute.exit.thread.i, label %bb.ap

PKCS7_get_signed_attribute.exit.thread.i:         ; preds = %PKCS7_get_signed_attribute.exit.i, %bb.ao
  %i.ea = call i32 @PKCS7_add0_attrib_signing_time(ptr noundef nonnull %i.df, ptr noundef null) #5
  %.not5.i = icmp eq i32 %i.ea, 0
  br i1 %.not5.i, label %do_pkcs7_signed_attrib.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %PKCS7_get_signed_attribute.exit.thread.i, %PKCS7_get_signed_attribute.exit.i
  %i.eb = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not6.i = icmp eq i32 %i.eb, 0
  br i1 %.not6.i, label %do_pkcs7_signed_attrib.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !64
  %i.ed = call i32 @PKCS7_add1_attrib_digest(ptr noundef nonnull %i.df, ptr noundef nonnull %i.a, i32 noundef %i.ec) #5
  %.not7.i = icmp eq i32 %i.ed, 0
  br i1 %.not7.i, label %do_pkcs7_signed_attrib.exit.thread, label %do_pkcs7_signed_attrib.exit

do_pkcs7_signed_attrib.exit.thread:               ; preds = %bb.aq, %bb.ap, %PKCS7_get_signed_attribute.exit.thread.i
  %.sink153 = phi i32 [ 712, %PKCS7_get_signed_attribute.exit.thread.i ], [ 719, %bb.ap ], [ 723, %bb.aq ]
  %.sink152 = phi i32 [ 524321, %PKCS7_get_signed_attribute.exit.thread.i ], [ 524294, %bb.ap ], [ 524321, %bb.aq ]
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink153, ptr noundef nonnull @__func__.do_pkcs7_signed_attrib) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef %.sink152, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.loopexit

do_pkcs7_signed_attrib.exit:                      ; preds = %bb.aq
  %i.ee = call i32 @PKCS7_SIGNER_INFO_sign(ptr noundef nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.not103 = icmp eq i32 %i.ee, 0
  br i1 %.not103, label %.loopexit, label %bb.aw

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.ef = load ptr, ptr %i.dg, align 8, !tbaa !75
  %i.eg = call i32 @EVP_PKEY_get_size(ptr noundef %i.ef) #5 ; 3 uses
  store i32 %i.eg, ptr %i.d, align 4, !tbaa !64
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %.thread119, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = zext i32 %i.eg to i64
  %i.ej = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ei, ptr noundef nonnull @.str, i32 noundef 864) #5 ; 4 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.thread119, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.el = load ptr, ptr %i.dg, align 8, !tbaa !75
  %i.em = call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.i) #5
  %i.en = call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.i) #5
  %i.eo = call i32 @EVP_SignFinal_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.d, ptr noundef %i.el, ptr noundef %i.em, ptr noundef %i.en) #5
  %.not102 = icmp eq i32 %i.eo, 0
  br i1 %.not102, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @CRYPTO_free(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str, i32 noundef 870) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 871, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, ptr noundef null) #5
  br label %.thread119

.thread119:                                       ; preds = %bb.as, %bb.ar, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %.loopexit

bb.av:                                            ; preds = %bb.at
  %i.ep = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !80
  %i.er = load i32, ptr %i.d, align 4, !tbaa !64
  call void @ASN1_STRING_set0(ptr noundef %i.eq, ptr noundef nonnull %i.ej, i32 noundef %i.er) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %do_pkcs7_signed_attrib.exit, %.lr.ph
  %i.es = add nuw nsw i32 %.080132, 1             ; 2 uses
  %i.et = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.079) #5
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph, label %.thread121, !llvm.loop !90

bb.ax:                                            ; preds = %bb.ai, %bb.ah, %PKCS7_get_octet_string.exit109
  %.078.ph.ph = phi ptr [ null, %bb.ai ], [ %.0.i108, %bb.ah ], [ %.0.i108, %PKCS7_get_octet_string.exit109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !45
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !49
  %i.ez = tail call i32 @OBJ_obj2nid(ptr noundef %i.ey) #5
  %i.fa = call fastcc ptr @PKCS7_find_digest(ptr noundef %i.c, ptr noundef %1, i32 noundef %i.ez)
  %.not96 = icmp eq ptr %i.fa, null
  br i1 %.not96, label %.thread128, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.fc = call i32 @EVP_DigestFinal_ex(ptr noundef %i.fb, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #5
  %.not97 = icmp eq i32 %i.fc, 0
  br i1 %.not97, label %.thread128, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !96
  %i.fg = load i32, ptr %i.f, align 4, !tbaa !64
  %i.fh = call i32 @ASN1_OCTET_STRING_set(ptr noundef %i.ff, ptr noundef nonnull %i.e, i32 noundef %i.fg) #5
  %.not98 = icmp eq i32 %i.fh, 0
  br i1 %.not98, label %.thread128, label %bb.ba

.thread128:                                       ; preds = %bb.ay, %bb.ax, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %.loopexit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %.thread121

.thread121:                                       ; preds = %bb.aw, %.preheader, %bb.ak, %bb.ba, %bb.l, %bb.o, %bb.h
  %.078114 = phi ptr [ %.078.ph.ph, %bb.ba ], [ %i.s, %bb.h ], [ %.078, %bb.ak ], [ %i.ah, %bb.l ], [ %i.aj, %bb.o ], [ %.078, %.preheader ], [ %.078, %bb.aw ] ; 3 uses
  %i.fi = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.fj = call i32 @OBJ_obj2nid(ptr noundef %i.fi) #5
  %i.fk = icmp eq i32 %i.fj, 22
  br i1 %i.fk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.thread121
  %i.fl = call i64 @PKCS7_ctrl(ptr noundef nonnull %0, i32 noundef 2, i64 noundef 0, ptr noundef null) #5
  %.not99 = icmp eq i64 %i.fl, 0
  br i1 %.not99, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb, %.thread121
  %i.fm = icmp eq ptr %.078114, null
  br i1 %i.fm, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fn = getelementptr inbounds nuw i8, ptr %.078114, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !62
  %i.fp = and i64 %i.fo, 16
  %.not100 = icmp eq i64 %i.fp, 0
  br i1 %.not100, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.fq = call ptr @BIO_find_type(ptr noundef %1, i32 noundef 1025) #5 ; 4 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.bf, label %.thread130

.thread130:                                       ; preds = %bb.be
  %i.fs = call i64 @BIO_ctrl(ptr noundef nonnull %i.fq, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.g) #5
  call void @BIO_set_flags(ptr noundef nonnull %i.fq, i32 noundef 512) #5
  %i.ft = call i64 @BIO_ctrl(ptr noundef nonnull %i.fq, i32 noundef 130, i64 noundef 0, ptr noundef null) #5 ; 0 uses
  %i.fu = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.fv = trunc i64 %i.fs to i32
  call void @ASN1_STRING_set0(ptr noundef nonnull %.078114, ptr noundef %i.fu, i32 noundef %i.fv) #5
  br label %.loopexit.sink.split

bb.bf:                                            ; preds = %bb.be
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 901, ptr noundef nonnull @__func__.PKCS7_dataFinal) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 107, ptr noundef null) #5
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.thread130, %bb.bf
  %.081.ph = phi i32 [ 0, %bb.bf ], [ 1, %.thread130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %.loopexit

.loopexit:                                        ; preds = %do_pkcs7_signed_attrib.exit, %bb.am, %bb.al, %.loopexit.sink.split, %bb.bb, %bb.bd, %.thread128, %.thread119, %do_pkcs7_signed_attrib.exit.thread, %bb.bc, %bb.aj, %bb.aa, %bb.q, %bb.n, %bb.k
  %.081 = phi i32 [ 0, %bb.aj ], [ 0, %bb.aa ], [ 1, %bb.bd ], [ 0, %.thread119 ], [ 1, %bb.bb ], [ 0, %do_pkcs7_signed_attrib.exit.thread ], [ 0, %bb.bc ], [ %.081.ph, %.loopexit.sink.split ], [ 0, %.thread128 ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %do_pkcs7_signed_attrib.exit ]
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.m) #5
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.f, %bb.d, %bb.b
  %.082 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %.081, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret i32 %.082
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare ptr @ASN1_OCTET_STRING_new() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @PKCS7_find_digest(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_find_type(ptr noundef %1, i32 noundef 520) #5 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.k, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.c, i32 noundef 120, i64 noundef 0, ptr noundef nonnull %0) #5 ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %i.e) #5
  %i.h = tail call i32 @EVP_MD_get_type(ptr noundef %i.g) #5
  %i.i = icmp eq i32 %i.h, %2
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @BIO_next(ptr noundef nonnull %i.c) #5
  %i.k = tail call ptr @BIO_find_type(ptr noundef %i.j, i32 noundef 520) #5 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit.sink.split, label %.lr.ph

.loopexit.sink.split:                             ; preds = %.lr.ph, %bb.c, %bb.a
  %.sink21 = phi i32 [ 689, %bb.a ], [ 689, %bb.c ], [ 694, %.lr.ph ]
  %.sink = phi i32 [ 108, %bb.a ], [ 108, %bb.c ], [ 786691, %.lr.ph ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink21, ptr noundef nonnull @__func__.PKCS7_find_digest) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef %.sink, ptr noundef null) #5
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
define range(i32 0, 2) i32 @PKCS7_SIGNER_INFO_sign(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = tail call i32 @OBJ_obj2nid(ptr noundef %i.h) #5
  %i.j = tail call ptr @OBJ_nid2sn(i32 noundef %i.i) #5
  %i.k = tail call ptr @EVP_get_digestbyname(ptr noundef %i.j) #5 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @EVP_MD_CTX_new() #5       ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 936, ptr noundef nonnull @__func__.PKCS7_SIGNER_INFO_sign) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, ptr noundef null) #5
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.o = tail call ptr @EVP_MD_get0_name(ptr noundef nonnull %i.k) #5
  %i.p = tail call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.e) #5
  %i.q = tail call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.e) #5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.t = call i32 @EVP_DigestSignInit_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.s, ptr noundef null) #5
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.x = call ptr @PKCS7_ATTR_SIGN_it() #5
  %i.y = call i32 @ASN1_item_i2d(ptr noundef %i.w, ptr noundef nonnull %i.b, ptr noundef %i.x) #5 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = call i32 @EVP_DigestSignUpdate(ptr noundef nonnull %i.m, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #5
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !63
  call void @CRYPTO_free(ptr noundef %i.af, ptr noundef nonnull @.str, i32 noundef 953) #5
  store ptr null, ptr %i.b, align 8, !tbaa !63
  %i.ag = call i32 @EVP_DigestSignFinal(ptr noundef nonnull %i.m, ptr noundef null, ptr noundef nonnull %i.c) #5
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !57
  %i.aj = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ai, ptr noundef nonnull @.str, i32 noundef 957) #5 ; 3 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !63
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = call i32 @EVP_DigestSignFinal(ptr noundef nonnull %i.m, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.c) #5
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.m) #5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !80
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !57
  %i.ar = trunc i64 %i.aq to i32
  call void @ASN1_STRING_set0(ptr noundef %i.ao, ptr noundef %i.ap, i32 noundef %i.ar) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !63
  call void @CRYPTO_free(ptr noundef %i.as, ptr noundef nonnull @.str, i32 noundef 970) #5
  call void @EVP_MD_CTX_free(ptr noundef %i.m) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.k ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare ptr @EVP_get_digestbyname(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_get0_name(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PKCS7_ATTR_SIGN_it() local_unnamed_addr #2

declare i32 @EVP_DigestSignUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS7_dataVerify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
end_hunk_1
