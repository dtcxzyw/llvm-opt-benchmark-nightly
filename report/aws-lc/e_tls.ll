Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/e_tls?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@aead_tls_open:bb.a
  %.not78 = select i1 %i.bq, i1 true, i1 %.not7879
  br i1 %.not78, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str, i32 noundef 370) #5
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 %i.ap, ptr %2, align 8, !tbaa !23
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

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aead_tls_seal_scatter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr nofree readnone captures(none) %9, i64 %10, ptr noundef %11, i64 noundef %12) #1 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [256 x i8], align 16              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str, i32 noundef 121) #5
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %8, 2147483647
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @.str, i32 noundef 127) #5
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 6 uses
  %i.n = tail call i64 @HMAC_size(ptr noundef nonnull %i.m) #5 ; 3 uses
  %i.o = tail call i32 @EVP_CIPHER_CTX_mode(ptr noundef nonnull %i.i) #5
  %.not.i = icmp eq i32 %i.o, 2
  br i1 %.not.i, label %bb.f, label %aead_tls_tag_len.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @EVP_CIPHER_CTX_block_size(ptr noundef nonnull %i.i) #5
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add i64 %i.n, %8
  %i.s = urem i64 %i.r, %i.q
  %i.t = sub i64 %i.n, %i.s
  %i.u = add i64 %i.t, %i.q
  br label %aead_tls_tag_len.exit

aead_tls_tag_len.exit:                            ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.e ]
  %i.v = icmp ult i64 %4, %.0.i
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %aead_tls_tag_len.exit
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str, i32 noundef 132) #5
  br label %bb.ab

bb.h:                                             ; preds = %aead_tls_tag_len.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !19
  %i.x = tail call i64 @EVP_AEAD_nonce_length(ptr noundef %i.w) #5
  %.not77 = icmp eq i64 %6, %i.x
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 111, ptr noundef nonnull @.str, i32 noundef 137) #5
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %.not78 = icmp eq i64 %12, 11
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 142) #5
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.y = lshr i64 %8, 8
  %i.z = trunc i64 %i.y to i8
  store i8 %i.z, ptr %i.a, align 1, !tbaa !8
  %i.aa = trunc i64 %8 to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ac = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #5
  %.not79 = icmp eq i32 %i.ac, 0
  br i1 %.not79, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i32 @HMAC_Update(ptr noundef nonnull %i.m, ptr noundef %11, i64 noundef 11) #5
  %.not80 = icmp eq i32 %i.ad, 0
  br i1 %.not80, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = call i32 @HMAC_Update(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef 2) #5
  %.not81 = icmp eq i32 %i.ae, 0
  br i1 %.not81, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = call i32 @HMAC_Update(ptr noundef nonnull %i.m, ptr noundef %7, i64 noundef %8) #5
  %.not82 = icmp eq i32 %i.af, 0
  br i1 %.not82, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = call i32 @HMAC_Final(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not83 = icmp eq i32 %i.ag, 0
  br i1 %.not83, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = call i32 @EVP_CIPHER_CTX_mode(ptr noundef nonnull %i.i) #5
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 1441
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %.not84 = icmp eq i8 %i.ak, 0
  br i1 %.not84, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.al = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.i, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5) #5
  %.not85 = icmp eq i32 %i.al, 0
  br i1 %.not85, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.am = trunc nuw nsw i64 %8 to i32             ; 2 uses
  %i.an = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.i, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %7, i32 noundef %i.am) #5
  %.not86 = icmp eq i32 %i.an, 0
  br i1 %.not86, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = call i32 @EVP_CIPHER_CTX_block_size(ptr noundef nonnull %i.i) #5 ; 6 uses
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = urem i32 %i.am, %i.ao
  %.lhs.trunc = sub i32 %i.ao, %i.aq
  %i.ar = urem i32 %.lhs.trunc, %i.ao             ; 4 uses
  %.zext96 = zext i32 %i.ar to i64                ; 6 uses
  %.not87 = icmp eq i32 %i.ar, 0
  br i1 %.not87, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.as = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef %i.ar) #5
  %.not88.not = icmp eq i32 %i.as, 0
  br i1 %.not88.not, label %.critedge, label %OPENSSL_memcpy.exit92

OPENSSL_memcpy.exit92:                            ; preds = %bb.v
  %i.at = sub nuw nsw i64 %i.ap, %.zext96
  %i.au = load i32, ptr %i.d, align 4, !tbaa !21
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull readonly align 16 %i.e, i64 %i.at, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.ay = sub nsw i64 0, %.zext96
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.az, i64 %.zext96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %OPENSSL_memcpy.exit92
  %.pre-phi = phi i32 [ %i.ar, %OPENSSL_memcpy.exit92 ], [ 0, %bb.u ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.zext96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 %.zext96
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !21
  %i.bd = sub i32 %i.bc, %.pre-phi
  %i.be = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.i, ptr noundef %i.ba, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bb, i32 noundef %i.bd) #5
  %.not89 = icmp eq i32 %i.be, 0
  br i1 %.not89, label %bb.z, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !21
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %.zext96, %i.bg             ; 3 uses
  %i.bi = icmp ugt i32 %i.ao, 1
  br i1 %i.bi, label %OPENSSL_memset.exit, label %bb.x

OPENSSL_memset.exit:                              ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !21
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %8, %i.bk
  %i.bm = urem i64 %i.bl, %i.ap
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = sub nuw i32 %i.ao, %i.bn                ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = trunc i32 %i.bo to i8
  %i.br = add i8 %i.bq, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.g, i8 %i.br, i64 range(i64 0, 4294967296) %i.bp, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  %i.bt = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.i, ptr noundef %i.bs, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %i.bo) #5
  %.not90.not = icmp eq i32 %i.bt, 0
  %i.bu = load i32, ptr %i.d, align 4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = add nsw i64 %i.bh, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br i1 %.not90.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %OPENSSL_memset.exit, %bb.w
  %.1 = phi i64 [ %i.bw, %OPENSSL_memset.exit ], [ %i.bh, %bb.w ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %.1
  %i.by = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.i, ptr noundef %i.bx, ptr noundef nonnull %i.d) #5
  %.not91 = icmp eq i32 %i.by, 0
  br i1 %.not91, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %.1, ptr %3, align 8, !tbaa !23
  br label %bb.z

.critedge:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.x, %._crit_edge, %OPENSSL_memset.exit, %bb.y, %bb.t
  %.5 = phi i32 [ 0, %bb.t ], [ 0, %.critedge ], [ 0, %bb.x ], [ 1, %bb.y ], [ 0, %._crit_edge ], [ 0, %OPENSSL_memset.exit ]
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

; Function Attrs: nounwind uwtable
define internal i64 @aead_tls_tag_len(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = tail call i64 @HMAC_size(ptr noundef nonnull %i.c) #5 ; 3 uses
  %i.e = tail call i32 @EVP_CIPHER_CTX_mode(ptr noundef %i.b) #5
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @EVP_CIPHER_CTX_block_size(ptr noundef nonnull %i.b) #5
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add i64 %i.d, %1
  %i.i = urem i64 %i.h, %i.g
  %i.j = sub i64 %i.d, %i.i
  %i.k = add i64 %i.j, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.k, %bb.b ], [ %i.d, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @aead_tls_init(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef signext range(i8 0, 2) %7) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @EVP_MD_size(ptr noundef %6) #5
  %.not36 = icmp eq i64 %3, %i.a
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 122, ptr noundef nonnull @.str, i32 noundef 50) #5
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = tail call i64 @EVP_AEAD_key_length(ptr noundef %i.b) #5
  %.not37 = icmp eq i64 %2, %i.c
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str, i32 noundef 55) #5
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.d = tail call i64 @EVP_MD_size(ptr noundef %6) #5 ; 5 uses
  %i.e = tail call i32 @EVP_CIPHER_key_length(ptr noundef %5) #5
  %i.f = tail call ptr @OPENSSL_malloc(i64 noundef 1448) #5 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.i, align 8, !tbaa !8
  tail call void @EVP_CIPHER_CTX_init(ptr noundef nonnull %i.f) #5
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 2 uses
  tail call void @HMAC_CTX_init(ptr noundef nonnull %i.j) #5
  %i.k = icmp eq i64 %i.d, 0
  br i1 %i.k, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1376
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %1, i64 %i.d, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.h
  %i.m = trunc i64 %i.d to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1440
  store i8 %i.m, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1441
  store i8 %7, ptr %i.o, align 1, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %.not38 = icmp eq i8 %7, 0
  %i.q = getelementptr i8, ptr %i.p, i64 %i.h
  %i.r = select i1 %.not38, ptr null, ptr %i.q
  %i.s = icmp eq i32 %4, 1
  %i.t = zext i1 %i.s to i32
  %i.u = tail call i32 @EVP_CipherInit_ex(ptr noundef nonnull %i.f, ptr noundef %5, ptr noundef null, ptr noundef %i.p, ptr noundef %i.r, i32 noundef %i.t) #5
  %.not39 = icmp eq i32 %i.u, 0
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %OPENSSL_memcpy.exit
  %i.v = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.j, ptr noundef %1, i64 noundef %i.d, ptr noundef %6, ptr noundef null) #5
  %.not40 = icmp eq i32 %i.v, 0
  br i1 %.not40, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %OPENSSL_memcpy.exit
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !8    ; 3 uses
  %i.x = tail call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef %i.w) #5 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  tail call void @HMAC_CTX_cleanup(ptr noundef nonnull %i.y) #5
  tail call void @OPENSSL_free(ptr noundef %i.w) #5
  store ptr null, ptr %i.i, align 8, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = tail call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.f, i32 noundef 0) #5 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.e, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.j ], [ 1, %bb.k ], [ 0, %bb.f ]
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

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_init(ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_init(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
