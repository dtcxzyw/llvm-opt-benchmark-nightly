Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/e_tls?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@_ZL13aead_tls_openPK15evp_aead_ctx_stPhPmmPKhmS5_mS5_m:bb.a
  br i1 %.not73, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = call i32 @HMAC_Update(ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, i64 noundef 13) #5
  %.not74 = icmp eq i32 %i.bh, 0
  br i1 %.not74, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = call i32 @HMAC_Update(ptr noundef nonnull %i.l, ptr noundef %1, i64 noundef %i.ao) #5
  %.not75 = icmp eq i32 %i.bi, 0
  br i1 %.not75, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = call i32 @HMAC_Final(ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #5
  %.not76 = icmp eq i32 %i.bj, 0
  br i1 %.not76, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = load i32, ptr %i.h, align 4, !tbaa !25
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  store i64 %i.bl, ptr %i.f, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %i.bn = phi i64 [ %.pre80, %bb.z ], [ %i.bl, %bb.ae ]
  %.1 = phi ptr [ %i.g, %bb.z ], [ %i.bm, %bb.ae ]
  %i.bo = call i32 @CRYPTO_memcmp(ptr noundef %.1, ptr noundef nonnull %i.e, i64 noundef %i.bn) #5
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !26
  %.not7879 = icmp eq i64 %i.bq, 0
  %.not78 = select i1 %i.bp, i1 true, i1 %.not7879
  br i1 %.not78, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str, i32 noundef 376) #5
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 %i.ao, ptr %2, align 8, !tbaa !26
  br label %bb.ai

.critedge:                                        ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.critedge, %bb.y
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.y ], [ 1, %bb.ah ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.t
  %.3 = phi i32 [ %.2, %bb.ai ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.ak

bb.ak:                                            ; preds = %bb.q, %bb.p, %bb.aj
  %.4 = phi i32 [ %.3, %bb.aj ], [ 0, %bb.p ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.al

bb.al:                                            ; preds = %bb.o, %bb.ak, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.5 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ %.4, %bb.ak ], [ 0, %bb.o ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL21aead_tls_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr nofree readnone captures(none) %9, i64 %10, ptr noundef %11, i64 noundef %12) #1 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [256 x i8], align 16              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str, i32 noundef 128) #5
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %8, 2147483647
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @.str, i32 noundef 134) #5
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.m = tail call i64 @HMAC_size(ptr noundef nonnull %i.l) #5 ; 3 uses
  %i.n = tail call i32 @EVP_CIPHER_CTX_mode(ptr noundef nonnull %i.h) #5
  %.not.i = icmp eq i32 %i.n, 2
  br i1 %.not.i, label %bb.f, label %_ZL16aead_tls_tag_lenPK15evp_aead_ctx_stmm.exit

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @EVP_CIPHER_CTX_block_size(ptr noundef nonnull %i.h) #5
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = add i64 %i.m, %8
  %i.r = urem i64 %i.q, %i.p
  %i.s = sub i64 %i.m, %i.r
  %i.t = add i64 %i.s, %i.p
  br label %_ZL16aead_tls_tag_lenPK15evp_aead_ctx_stmm.exit

_ZL16aead_tls_tag_lenPK15evp_aead_ctx_stmm.exit:  ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.m, %bb.e ]
  %i.u = icmp ult i64 %4, %.0.i
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL16aead_tls_tag_lenPK15evp_aead_ctx_stmm.exit
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str, i32 noundef 139) #5
  br label %bb.ab

bb.h:                                             ; preds = %_ZL16aead_tls_tag_lenPK15evp_aead_ctx_stmm.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !21
  %i.w = tail call i64 @EVP_AEAD_nonce_length(ptr noundef %i.v) #5
  %.not77 = icmp eq i64 %6, %i.w
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 111, ptr noundef nonnull @.str, i32 noundef 144) #5
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %.not78 = icmp eq i64 %12, 11
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 149) #5
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.x = lshr i64 %8, 8
  %i.y = trunc i64 %i.x to i8
  store i8 %i.y, ptr %i.a, align 1, !tbaa !28
  %i.z = trunc i64 %8 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ab = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.l, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #5
  %.not79 = icmp eq i32 %i.ab, 0
  br i1 %.not79, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call i32 @HMAC_Update(ptr noundef nonnull %i.l, ptr noundef %11, i64 noundef 11) #5
  %.not80 = icmp eq i32 %i.ac, 0
  br i1 %.not80, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = call i32 @HMAC_Update(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i64 noundef 2) #5
  %.not81 = icmp eq i32 %i.ad, 0
  br i1 %.not81, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = call i32 @HMAC_Update(ptr noundef nonnull %i.l, ptr noundef %7, i64 noundef %8) #5
  %.not82 = icmp eq i32 %i.ae, 0
  br i1 %.not82, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = call i32 @HMAC_Final(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not83 = icmp eq i32 %i.af, 0
  br i1 %.not83, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = call i32 @EVP_CIPHER_CTX_mode(ptr noundef nonnull %i.h) #5
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %.not84 = icmp eq i8 %i.aj, 0
  br i1 %.not84, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ak = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5) #5
  %.not85 = icmp eq i32 %i.ak, 0
  br i1 %.not85, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.al = trunc nuw nsw i64 %8 to i32             ; 2 uses
  %i.am = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.h, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %7, i32 noundef %i.al) #5
  %.not86 = icmp eq i32 %i.am, 0
  br i1 %.not86, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = call i32 @EVP_CIPHER_CTX_block_size(ptr noundef nonnull %i.h) #5 ; 6 uses
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = urem i32 %i.al, %i.an
  %.lhs.trunc = sub i32 %i.an, %i.ap
  %13 = urem i32 %.lhs.trunc, %i.an               ; 4 uses
  %.zext96 = zext i32 %13 to i64                  ; 6 uses
  %.not87 = icmp eq i32 %13, 0
  br i1 %.not87, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.aq = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef %13) #5
  %.not88.not = icmp eq i32 %i.aq, 0
  br i1 %.not88.not, label %.critedge, label %_ZL14OPENSSL_memcpyPvPKvm.exit92

_ZL14OPENSSL_memcpyPvPKvm.exit92:                 ; preds = %bb.v
  %i.ar = sub nuw nsw i64 %i.ao, %.zext96
  %i.as = load i32, ptr %i.d, align 4, !tbaa !25
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull readonly align 16 %i.e, i64 %i.ar, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ao
  %i.aw = sub nsw i64 0, %.zext96
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.ax, i64 %.zext96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %_ZL14OPENSSL_memcpyPvPKvm.exit92
  %.pre-phi = phi i32 [ %13, %_ZL14OPENSSL_memcpyPvPKvm.exit92 ], [ 0, %bb.u ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.zext96
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %.zext96
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !25
  %i.bb = sub i32 %i.ba, %.pre-phi
  %i.bc = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.h, ptr noundef %i.ay, ptr noundef nonnull %i.d, ptr noundef nonnull %i.az, i32 noundef %i.bb) #5
  %.not89 = icmp eq i32 %i.bc, 0
  br i1 %.not89, label %bb.z, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !25
  %i.be = sext i32 %i.bd to i64
  %i.bf = add nsw i64 %.zext96, %i.be             ; 3 uses
  %i.bg = icmp ugt i32 %i.an, 1
  br i1 %i.bg, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.x

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !25
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add nuw nsw i64 %8, %i.bi
  %i.bk = urem i64 %i.bj, %i.ao
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = sub nuw i32 %i.an, %i.bl                ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = trunc i32 %i.bm to i8
  %i.bp = add i8 %i.bo, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.g, i8 %i.bp, i64 range(i64 0, 4294967296) %i.bn, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf
  %i.br = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.h, ptr noundef %i.bq, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %i.bm) #5
  %.not90.not = icmp eq i32 %i.br, 0
  %i.bs = load i32, ptr %i.d, align 4
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bf, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br i1 %.not90.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit, %bb.w
  %.1 = phi i64 [ %i.bu, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.bf, %bb.w ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %.1
  %i.bw = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.h, ptr noundef %i.bv, ptr noundef nonnull %i.d) #5
  %.not91 = icmp eq i32 %i.bw, 0
  br i1 %.not91, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %.1, ptr %3, align 8, !tbaa !26
  br label %bb.z

.critedge:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.x, %._crit_edge, %_ZL14OPENSSL_memsetPvim.exit, %bb.y, %bb.t
  %.5 = phi i32 [ 0, %bb.t ], [ 0, %.critedge ], [ 0, %bb.x ], [ 1, %bb.y ], [ 0, %._crit_edge ], [ 0, %_ZL14OPENSSL_memsetPvim.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.z
  %.6 = phi i32 [ %.5, %bb.z ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.k, %bb.i, %bb.g, %bb.d, %bb.b
  %.7 = phi i32 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ %.6, %bb.aa ], [ 0, %bb.b ]
  ret i32 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZL16aead_tls_tag_lenPK15evp_aead_ctx_stmm(ptr noundef %0, i64 noundef %1, i64 %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = tail call i64 @HMAC_size(ptr noundef nonnull %i.b) #5 ; 3 uses
  %i.d = tail call i32 @EVP_CIPHER_CTX_mode(ptr noundef nonnull %i.a) #5
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @EVP_CIPHER_CTX_block_size(ptr noundef nonnull %i.a) #5
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = add i64 %i.c, %1
  %i.h = urem i64 %i.g, %i.f
  %i.i = sub i64 %i.c, %i.h
  %i.j = add i64 %i.i, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.j, %bb.b ], [ %i.c, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL13aead_tls_initP15evp_aead_ctx_stPKhmm20evp_aead_direction_tPK13evp_cipher_stPK9env_md_stc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef signext range(i8 0, 2) %7) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @EVP_MD_size(ptr noundef %6) #5
  %.not33 = icmp eq i64 %3, %i.a
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 122, ptr noundef nonnull @.str, i32 noundef 63) #5
  br label %bb.k

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !21
  %i.c = tail call i64 @EVP_AEAD_key_length(ptr noundef %i.b) #5
  %.not34 = icmp eq i64 %2, %i.c
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str, i32 noundef 68) #5
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.d = tail call i64 @EVP_MD_size(ptr noundef %6) #5 ; 5 uses
  %i.e = tail call i32 @EVP_CIPHER_key_length(ptr noundef %5) #5
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @EVP_CIPHER_CTX_init(ptr noundef nonnull %i.g) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  tail call void @HMAC_CTX_init(ptr noundef nonnull %i.h) #5
  %i.i = icmp eq i64 %i.d, 0
  br i1 %i.i, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr readonly align 1 %1, i64 %i.d, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.f, %bb.g
  %i.k = trunc i64 %i.d to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 %i.k, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 %7, ptr %i.m, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %.not35 = icmp eq i8 %7, 0
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  %i.p = select i1 %.not35, ptr null, ptr %i.o
  %i.q = icmp eq i32 %4, 1
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 @EVP_CipherInit_ex(ptr noundef nonnull %i.g, ptr noundef %5, ptr noundef null, ptr noundef %i.n, ptr noundef %i.p, i32 noundef %i.r) #5
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.t = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.h, ptr noundef %1, i64 noundef %i.d, ptr noundef %6, ptr noundef null) #5
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.u = tail call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %i.g) #5 ; 0 uses
  tail call void @HMAC_CTX_cleanup(ptr noundef nonnull %i.h) #5
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = tail call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.g, i32 noundef 0) #5 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.e, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.j ], [ 0, %bb.i ]
  ret i32 %.1
}

declare ptr @EVP_aes_128_cbc() local_unnamed_addr #2

declare ptr @EVP_sha1() local_unnamed_addr #2

declare i64 @EVP_MD_size(ptr noundef) local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @EVP_AEAD_key_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @EVP_CIPHER_key_length(ptr noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_init(ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_init(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_padding(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @EVP_CIPHER_CTX_cleanup(ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_cleanup(ptr noundef) local_unnamed_addr #2

declare i64 @HMAC_size(ptr noundef) local_unnamed_addr #2

declare i64 @EVP_AEAD_nonce_length(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_mode(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_tls_cbc_remove_padding(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_block_size(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_tls_cbc_record_digest_supported(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_tls_cbc_digest_record(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2
end_hunk_0
