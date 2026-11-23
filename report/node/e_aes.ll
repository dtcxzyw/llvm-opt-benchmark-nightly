Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_aes?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@aes_ctr_cipher:bb.a
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %i.a, align 4, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !100
  call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %i.i) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  call void @CRYPTO_ctr128_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %i.k) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i32, ptr %i.a, align 4, !tbaa !96
  %i.m = call i32 @EVP_CIPHER_CTX_set_num(ptr noundef nonnull %0, i32 noundef %i.l) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef) local_unnamed_addr #4

declare void @CRYPTO_ctr128_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aesni_gcm_init_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #2 !guid !202 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 16 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw nsw i32 %i.d, 3
  %i.g = tail call i32 @aesni_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.f, ptr noundef %i.a) #7 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  tail call void @CRYPTO_gcm128_init(ptr noundef nonnull %i.h, ptr noundef %i.a, ptr noundef nonnull @aesni_encrypt) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  store ptr @aesni_ctr32_encrypt_blocks, ptr %i.i, align 8, !tbaa !107
  br i1 %i.b, label %bb.e, label %.thread43

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.k = load i32, ptr %i.j, align 4, !tbaa !108
  %.not39 = icmp eq i32 %i.k, 0
  br i1 %.not39, label %.thread47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109  ; 2 uses
  %.not40 = icmp eq ptr %i.m, null
  br i1 %.not40, label %.thread47, label %.thread43

.thread43:                                        ; preds = %bb.d, %bb.f
  %.03346 = phi ptr [ %i.m, %bb.f ], [ %2, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.o = load i32, ptr %i.n, align 8, !tbaa !110
  %i.p = sext i32 %i.o to i64
  tail call void @CRYPTO_gcm128_setiv(ptr noundef nonnull %i.h, ptr noundef nonnull %.03346, i64 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 1, ptr %i.q, align 4, !tbaa !108
  br label %.thread47

.thread47:                                        ; preds = %bb.f, %.thread43, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i32 1, ptr %i.r, align 8, !tbaa !111
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @__func__.aesni_gcm_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.t = load i32, ptr %i.s, align 8, !tbaa !111
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.w = load i32, ptr %i.v, align 8, !tbaa !110
  %i.x = sext i32 %i.w to i64
  tail call void @CRYPTO_gcm128_setiv(ptr noundef nonnull %i.u, ptr noundef %2, i64 noundef %i.x) #7
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !110
  %i.ac = sext i32 %i.ab to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %2, i64 %i.ac, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 1, ptr %i.ad, align 4, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i32 0, ptr %i.ae, align 8, !tbaa !112
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread47, %bb.g, %bb.a
  %.1 = phi i32 [ 0, %bb.g ], [ 1, %bb.a ], [ 1, %.thread47 ], [ 1, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_gcm_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 !guid !203 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 25 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load i32, ptr %i.b, align 8, !tbaa !111
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.critedge140, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  %i.e = load i32, ptr %i.d, align 8, !tbaa !113
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 14 uses
  %i.h = icmp ne ptr %1, %2
  %i.i = icmp ult i64 %3, 24
  %or.cond.i = or i1 %i.h, %i.i
  br i1 %or.cond.i, label %.critedge140, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 736 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !114
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !114
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2899, ptr noundef nonnull @__func__.aes_gcm_tls_cipher) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 183, ptr noundef null) #7
  br label %bb.z

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.o = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not106.i = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not106.i, i32 24, i32 19
  %i.q = tail call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %0, i32 noundef %i.p, i32 noundef 8, ptr noundef %1) #7
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 11 uses
  %i.t = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 728
  %i.v = load i32, ptr %i.u, align 8, !tbaa !113
  %i.w = sext i32 %i.v to i64
  %i.x = tail call i32 @CRYPTO_gcm128_aad(ptr noundef nonnull %i.s, ptr noundef %i.t, i64 noundef %i.w) #7
  %.not107.i = icmp eq i32 %i.x, 0
  br i1 %.not107.i, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.aa = add i64 %3, -24                         ; 12 uses
  %i.ab = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not108.i = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 744 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 7 uses
  %.not109.i = icmp eq ptr %i.ad, null            ; 2 uses
  br i1 %.not108.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not109.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp ugt i64 %i.aa, 31
  %i.af = icmp eq ptr %i.ad, @aesni_ctr32_encrypt_blocks
  %or.cond118.i = and i1 %i.ae, %i.af
  br i1 %or.cond118.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !204
  %i.ai = icmp eq ptr %i.ah, @gcm_ghash_avx
  br i1 %i.ai, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @CRYPTO_gcm128_encrypt(ptr noundef nonnull %i.s, ptr noundef null, ptr noundef null, i64 noundef 0) #7
  %.not116.i = icmp eq i32 %i.aj, 0
  br i1 %.not116.i, label %bb.n, label %.critedge140

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 648
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !115
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.an = tail call i64 @aesni_gcm_encrypt(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %i.aa, ptr noundef %i.al, ptr noundef nonnull %i.s, ptr noundef nonnull %i.am) #7 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !100
  %i.aq = add i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !100
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !107
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ar = phi ptr [ %.pre.i, %bb.n ], [ %i.ad, %bb.l ], [ %i.ad, %bb.k ]
  %.093.i = phi i64 [ %i.an, %bb.n ], [ 0, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %.093.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %.093.i
  %i.au = sub i64 %i.aa, %.093.i
  %i.av = tail call i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef nonnull %i.s, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef %i.au, ptr noundef %i.ar) #7
  %.not117.i = icmp eq i32 %i.av, 0
  br i1 %.not117.i, label %.thread124.i, label %bb.z

bb.p:                                             ; preds = %bb.j
  %i.aw = tail call i32 @CRYPTO_gcm128_encrypt(ptr noundef nonnull %i.s, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %i.aa) #7
  %.not115.i = icmp eq i32 %i.aw, 0
  br i1 %.not115.i, label %.thread124.i, label %bb.z

.thread124.i:                                     ; preds = %bb.p, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  tail call void @CRYPTO_gcm128_tag(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ax, i64 noundef 16) #7
  %i.ay = trunc i64 %3 to i32
  br label %bb.z

bb.q:                                             ; preds = %bb.i
  br i1 %.not109.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = icmp ugt i64 %i.aa, 15
  %i.ba = icmp eq ptr %i.ad, @aesni_ctr32_encrypt_blocks
  %or.cond120.i = and i1 %i.az, %i.ba
  br i1 %or.cond120.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !204
  %i.bd = icmp eq ptr %i.bc, @gcm_ghash_avx
  br i1 %i.bd, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.be = tail call i32 @CRYPTO_gcm128_decrypt(ptr noundef nonnull %i.s, ptr noundef null, ptr noundef null, i64 noundef 0) #7
  %.not111.i = icmp eq i32 %i.be, 0
  br i1 %.not111.i, label %bb.u, label %.critedge140

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 648
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !115
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bi = tail call i64 @aesni_gcm_decrypt(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %i.aa, ptr noundef %i.bg, ptr noundef nonnull %i.s, ptr noundef nonnull %i.bh) #7 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !100
  %i.bl = add i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !100
  %.pre131.i = load ptr, ptr %i.ac, align 8, !tbaa !107
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %i.bm = phi ptr [ %.pre131.i, %bb.u ], [ %i.ad, %bb.s ], [ %i.ad, %bb.r ]
  %.0.i = phi i64 [ %i.bi, %bb.u ], [ 0, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i
  %i.bp = sub i64 %i.aa, %.0.i
  %i.bq = tail call i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef nonnull %i.s, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, i64 noundef %i.bp, ptr noundef %i.bm) #7
  %.not112.i = icmp eq i32 %i.bq, 0
  br i1 %.not112.i, label %.thread129.i, label %bb.z

bb.w:                                             ; preds = %bb.q
  %i.br = tail call i32 @CRYPTO_gcm128_decrypt(ptr noundef nonnull %i.s, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %i.aa) #7
  %.not110.i = icmp eq i32 %i.br, 0
  br i1 %.not110.i, label %.thread129.i, label %bb.z

.thread129.i:                                     ; preds = %bb.w, %bb.v
  %i.bs = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  tail call void @CRYPTO_gcm128_tag(ptr noundef nonnull %i.s, ptr noundef %i.bs, i64 noundef 16) #7
  %i.bt = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.bv = tail call i32 @CRYPTO_memcmp(ptr noundef %i.bt, ptr noundef nonnull %i.bu, i64 noundef 16) #7
  %.not113.i = icmp eq i32 %i.bv, 0
  br i1 %.not113.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread129.i
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.z, i64 noundef %i.aa) #7
  br label %bb.z

bb.y:                                             ; preds = %.thread129.i
  %i.bw = trunc i64 %i.aa to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %.thread124.i, %bb.p, %bb.o, %bb.h, %bb.g, %bb.f
  %.095.i = phi i32 [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ %i.ay, %.thread124.i ], [ -1, %bb.w ], [ -1, %bb.p ], [ -1, %bb.x ], [ %i.bw, %bb.y ], [ -1, %bb.o ], [ -1, %bb.v ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  store i32 0, ptr %i.bx, align 4, !tbaa !108
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 728
  store i32 -1, ptr %i.by, align 8, !tbaa !113
  br label %.critedge140

bb.aa:                                            ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 252 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !108
  %.not126 = icmp eq i32 %i.ca, 0
  br i1 %.not126, label %.critedge140, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not127 = icmp eq ptr %2, null
  br i1 %.not127, label %bb.as, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = icmp eq ptr %1, null
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.cd = tail call i32 @CRYPTO_gcm128_aad(ptr noundef nonnull %i.cc, ptr noundef nonnull %2, i64 noundef %3) #7
  %.not139 = icmp eq i32 %i.cd, 0
  br i1 %.not139, label %bb.ar, label %.critedge140

bb.ae:                                            ; preds = %bb.ac
  %i.ce = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not130 = icmp eq i32 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 744 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !107 ; 7 uses
  %.not131 = icmp eq ptr %i.cg, null              ; 2 uses
  br i1 %.not130, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not131, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = icmp ugt i64 %3, 31
  %i.ci = icmp eq ptr %i.cg, @aesni_ctr32_encrypt_blocks
  %or.cond = and i1 %i.ch, %i.ci
  br i1 %or.cond, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !204
  %i.cm = icmp eq ptr %i.cl, @gcm_ghash_avx
  br i1 %i.cm, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !205
  %i.cp = sub i32 0, %i.co
  %i.cq = and i32 %i.cp, 15
  %i.cr = zext nneg i32 %i.cq to i64              ; 5 uses
  %i.cs = tail call i32 @CRYPTO_gcm128_encrypt(ptr noundef nonnull %i.cj, ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %i.cr) #7
  %.not137 = icmp eq i32 %i.cs, 0
  br i1 %.not137, label %bb.aj, label %.critedge140

bb.aj:                                            ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.cv = sub nuw i64 %3, %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.cz = tail call i64 @aesni_gcm_encrypt(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu, i64 noundef %i.cv, ptr noundef %i.cx, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cy) #7 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !100
  %i.dc = add i64 %i.db, %i.cz
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !100
  %i.dd = add i64 %i.cz, %i.cr
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !107
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %bb.ah, %bb.ag
  %i.de = phi ptr [ %.pre, %bb.aj ], [ %i.cg, %bb.ah ], [ %i.cg, %bb.ag ]
  %.1111 = phi i64 [ %i.dd, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ag ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %.1111
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %.1111
  %i.di = sub i64 %3, %.1111
  %i.dj = tail call i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh, i64 noundef %i.di, ptr noundef %i.de) #7
  %.not138 = icmp eq i32 %i.dj, 0
  br i1 %.not138, label %bb.ar, label %.critedge140

bb.ak:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.dl = tail call i32 @CRYPTO_gcm128_encrypt(ptr noundef nonnull %i.dk, ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %3) #7
  %.not136 = icmp eq i32 %i.dl, 0
  br i1 %.not136, label %bb.ar, label %.critedge140

bb.al:                                            ; preds = %bb.ae
  br i1 %.not131, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = icmp ugt i64 %3, 15
  %i.dn = icmp eq ptr %i.cg, @aesni_ctr32_encrypt_blocks
  %or.cond141 = and i1 %i.dm, %i.dn
  br i1 %or.cond141, label %bb.an, label %.critedge143

bb.an:                                            ; preds = %bb.am
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !204
  %i.dr = icmp eq ptr %i.dq, @gcm_ghash_avx
  br i1 %i.dr, label %bb.ao, label %.critedge143

bb.ao:                                            ; preds = %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !205
  %i.du = sub i32 0, %i.dt
  %i.dv = and i32 %i.du, 15
  %i.dw = zext nneg i32 %i.dv to i64              ; 5 uses
  %i.dx = tail call i32 @CRYPTO_gcm128_decrypt(ptr noundef nonnull %i.do, ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %i.dw) #7
  %.not133 = icmp eq i32 %i.dx, 0
  br i1 %.not133, label %bb.ap, label %.critedge140

bb.ap:                                            ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.ea = sub nuw i64 %3, %i.dw
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !115
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ee = tail call i64 @aesni_gcm_decrypt(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dz, i64 noundef %i.ea, ptr noundef %i.ec, ptr noundef nonnull %i.do, ptr noundef nonnull %i.ed) #7 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !100
  %i.eh = add i64 %i.eg, %i.ee
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !100
  %i.ei = add i64 %i.ee, %i.dw
  %.pre146 = load ptr, ptr %i.cf, align 8, !tbaa !107
  br label %.critedge143

.critedge143:                                     ; preds = %bb.ap, %bb.an, %bb.am
  %i.ej = phi ptr [ %.pre146, %bb.ap ], [ %i.cg, %bb.an ], [ %i.cg, %bb.am ]
  %.1 = phi i64 [ %i.ei, %bb.ap ], [ 0, %bb.an ], [ 0, %bb.am ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.1
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.en = sub i64 %3, %.1
  %i.eo = tail call i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef nonnull %i.ek, ptr noundef nonnull %i.el, ptr noundef nonnull %i.em, i64 noundef %i.en, ptr noundef %i.ej) #7
  %.not134 = icmp eq i32 %i.eo, 0
  br i1 %.not134, label %bb.ar, label %.critedge140

bb.aq:                                            ; preds = %bb.al
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.eq = tail call i32 @CRYPTO_gcm128_decrypt(ptr noundef nonnull %i.ep, ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %3) #7
  %.not132 = icmp eq i32 %i.eq, 0
  br i1 %.not132, label %bb.ar, label %.critedge140

bb.ar:                                            ; preds = %bb.ak, %.critedge, %bb.aq, %.critedge143, %bb.ad
  %i.er = trunc i64 %3 to i32
  br label %.critedge140

bb.as:                                            ; preds = %bb.ab
  %i.es = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not128 = icmp eq i32 %i.es, 0
  br i1 %.not128, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 716 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !116
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %.critedge140, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ex = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.ey = load i32, ptr %i.et, align 4, !tbaa !116
  %i.ez = sext i32 %i.ey to i64
  %i.fa = tail call i32 @CRYPTO_gcm128_finish(ptr noundef nonnull %i.ew, ptr noundef %i.ex, i64 noundef %i.ez) #7
  %.not129 = icmp eq i32 %i.fa, 0
  br i1 %.not129, label %bb.av, label %.critedge140

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.bz, align 4, !tbaa !108
  br label %.critedge140

bb.aw:                                            ; preds = %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.fc = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  tail call void @CRYPTO_gcm128_tag(ptr noundef nonnull %i.fb, ptr noundef %i.fc, i64 noundef 16) #7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 716
  store i32 16, ptr %i.fd, align 4, !tbaa !116
  store i32 0, ptr %i.bz, align 4, !tbaa !108
  br label %.critedge140

.critedge140:                                     ; preds = %bb.z, %bb.t, %bb.m, %bb.c, %bb.ao, %bb.ai, %bb.au, %bb.at, %bb.ad, %bb.aa, %bb.a, %.critedge, %bb.ak, %.critedge143, %bb.aq, %bb.aw, %bb.av, %bb.ar
  %.8 = phi i32 [ -1, %bb.ai ], [ -1, %bb.aa ], [ %i.er, %bb.ar ], [ -1, %.critedge ], [ -1, %bb.ak ], [ -1, %.critedge143 ], [ -1, %bb.aq ], [ 0, %bb.aw ], [ -1, %bb.ao ], [ -1, %bb.at ], [ 0, %bb.av ], [ -1, %bb.a ], [ -1, %bb.ad ], [ -1, %bb.au ], [ -1, %bb.m ], [ %.095.i, %bb.z ], [ -1, %bb.c ], [ -1, %bb.t ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_gcm_cleanup(ptr noundef %0) #2 !guid !206 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 448) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 2654) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 17) i32 @aes_gcm_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 !guid !207 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 37 uses
  switch i32 %1, label %.thread [
    i32 0, label %bb.b
    i32 37, label %bb.c
    i32 9, label %bb.d
    i32 17, label %bb.k
    i32 16, label %bb.n
    i32 18, label %bb.r
    i32 19, label %bb.y
    i32 24, label %bb.ai
    i32 22, label %bb.am
    i32 8, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i32 0, ptr %i.b, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 0, ptr %i.c, align 4, !tbaa !108
  %i.d = load ptr, ptr %0, align 8, !tbaa !120
  %i.e = tail call i32 @EVP_CIPHER_get_iv_length(ptr noundef %i.d) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  store i32 %i.e, ptr %i.f, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store ptr %i.g, ptr %i.h, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 716
  store i32 -1, ptr %i.i, align 4, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i32 0, ptr %i.j, align 8, !tbaa !112
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  store i32 -1, ptr %i.k, align 8, !tbaa !113
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.m = load i32, ptr %i.l, align 8, !tbaa !110
  store i32 %i.m, ptr %3, align 4, !tbaa !96
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %2, 1
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i32 %2, 16
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.q = load i32, ptr %i.p, align 8, !tbaa !110
  %i.r = icmp sgt i32 %2, %i.q
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not144 = icmp eq ptr %i.t, %i.u
  br i1 %.not144, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @CRYPTO_free(ptr noundef %i.t, ptr noundef nonnull @.str, i32 noundef 2682) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = zext nneg i32 %2 to i64
  %i.w = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.v, ptr noundef nonnull @.str, i32 noundef 2683) #7 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !109
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  store i32 %2, ptr %i.y, align 8, !tbaa !110
  br label %.thread

bb.k:                                             ; preds = %bb.a
  %i.z = add i32 %2, -17
  %or.cond = icmp ult i32 %i.z, -16
  br i1 %or.cond, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !208
  %.not143 = icmp eq i32 %i.ab, 0
  br i1 %.not143, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 1 %3, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 716
  store i32 %2, ptr %i.ae, align 4, !tbaa !116
  br label %.thread

bb.n:                                             ; preds = %bb.a
  %i.af = add i32 %2, -17
  %or.cond3 = icmp ult i32 %i.af, -16
  br i1 %or.cond3, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !208
  %.not142 = icmp eq i32 %i.ah, 0
  br i1 %.not142, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 716
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !116
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
