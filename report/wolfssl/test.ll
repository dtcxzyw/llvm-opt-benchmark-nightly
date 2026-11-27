Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test?download=true
inline.NumInlined: 122
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_rng_test:bb.a
  %i.c = load <32 x i8>, ptr %i.a, align 16, !tbaa !18
  %i.d = icmp ne <32 x i8> %i.c, zeroinitializer
  %i.e = bitcast <32 x i1> %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.p, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub nsw i32 0, %i.b
  %i.h = and i32 %i.g, 2047
  %narrow.neg61 = mul nsw i32 %i.h, -100000
  %i.i = add nsw i32 %narrow.neg61, -536894854
  br label %bb.p

bb.c:                                             ; preds = %.preheader.preheader
  %i.j = call i32 @wc_RNG_GenerateByte(ptr noundef %0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not36 = icmp eq i32 %i.j, 0
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub nsw i32 0, %i.j
  %i.l = and i32 %i.k, 2047
  %narrow.neg58 = mul nsw i32 %i.l, -100000
  %i.m = add nsw i32 %narrow.neg58, -536894870
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  store i64 1000000, ptr %i.o, align 8, !tbaa !107
  %i.p = call i32 @wc_RNG_GenerateBlock(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 32) #19 ; 2 uses
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i32 0, %i.p
  %i.r = and i32 %i.q, 2047
  %narrow.neg55 = mul nsw i32 %i.r, -100000
  %i.s = add nsw i32 %narrow.neg55, -536894907
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.u = load i64, ptr %i.t, align 8, !tbaa !107
  %i.v = icmp eq i64 %i.u, 1000000
  br i1 %i.v, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call i32 @wc_RNG_GenerateBlock(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 32) #19 ; 2 uses
  %.not38 = icmp eq i32 %i.w, -173
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = sub nsw i32 0, %i.w
  %i.y = and i32 %i.x, 2047
  %narrow.neg52 = mul nsw i32 %i.y, -100000
  %i.z = add nsw i32 %narrow.neg52, -536894948
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.aa = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %0, ptr noundef null, i32 noundef 32) #19 ; 2 uses
  %.not39 = icmp eq i32 %i.aa, -173
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = sub nsw i32 0, %i.aa
  %i.ac = and i32 %i.ab, 2047
  %narrow.neg49 = mul nsw i32 %i.ac, -100000
  %i.ad = add nsw i32 %narrow.neg49, -536894952
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ae = call i32 @wc_RNG_GenerateByte(ptr noundef null, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not40 = icmp eq i32 %i.ae, -173
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = and i32 %i.af, 2047
  %narrow.neg46 = mul nsw i32 %i.ag, -100000
  %i.ah = add nsw i32 %narrow.neg46, -536894957
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ai = call i32 @wc_RNG_GenerateByte(ptr noundef nonnull %0, ptr noundef null) #19 ; 2 uses
  %.not41 = icmp eq i32 %i.ai, -173
  br i1 %.not41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = and i32 %i.aj, 2047
  %narrow.neg = mul nsw i32 %i.ak, -100000
  %i.al = add nsw i32 %narrow.neg, -536894961
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.g, %.preheader.preheader, %bb.o, %bb.m, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.027 = phi i32 [ %i.i, %bb.b ], [ -24012, %bb.g ], [ %i.m, %bb.d ], [ %i.s, %bb.f ], [ -23953, %.preheader.preheader ], [ %i.z, %bb.i ], [ %i.ad, %bb.k ], [ %i.ah, %bb.m ], [ %i.al, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.027
}

declare ptr @wc_rng_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_rng_free(ptr noundef) local_unnamed_addr #2

declare i32 @wc_rng_new_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateByte(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitRsaKey_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_InitRsaKey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicKeyDecodeRaw(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicKeyDecode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_SignatureGetSize(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_SignatureGenerate(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_SignatureVerify(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_SignatureGenerateHash(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_SignatureVerifyHash(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicEncrypt(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaSetRNG(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecrypt(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecryptInline(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaSSL_Sign(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicEncrypt_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecrypt_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecryptInline_ex(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaExportKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaFlattenPublicKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_Sign_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_VerifyInline_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_CheckPadding_ex2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_Verify_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhGenerateKeyPair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhAgree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhAgree_ct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhSetKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhSetKey_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhCheckPubKey_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhCheckKeyPair(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhCheckPubValue(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhGeneratePublic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhSetCheckKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @ecc_test_curve(ptr noundef nonnull %0, i32 noundef range(i32 28, 67) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [257 x i8], align 16              ; 8 uses
  %2 = alloca [1 x %struct.ecc_key], align 16     ; 9 uses
  %3 = alloca [1 x %struct.ecc_key], align 16     ; 12 uses
  %i.c = alloca [257 x i8], align 16              ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %4 = alloca [1 x %struct.ecc_key], align 16     ; 10 uses
  %i.g = alloca [141 x i8], align 16              ; 9 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca [141 x i8], align 16              ; 7 uses
  %i.l = alloca [66 x i8], align 16               ; 6 uses
  %i.m = alloca [66 x i8], align 16               ; 6 uses
  %i.n = alloca [66 x i8], align 16               ; 5 uses
  %i.o = alloca [66 x i8], align 16               ; 6 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %i.q = alloca [164 x i8], align 16              ; 5 uses
  %i.r = alloca [141 x i8], align 16              ; 8 uses
  %i.s = alloca [64 x i8], align 16               ; 16 uses
  %i.t = alloca i32, align 4                      ; 11 uses
  %5 = alloca [1 x %struct.ecc_key], align 16     ; 19 uses
  %6 = alloca [1 x %struct.ecc_key], align 16     ; 10 uses
  %7 = alloca [1 x %struct.ecc_key], align 16     ; 7 uses
  %i.u = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #19
  store i32 0, ptr %i.u, align 4, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %5, i8 0, i64 4208, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %6, i8 0, i64 4208, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %7, i8 0, i64 4208, i1 false)
  %i.v = call i32 @wc_ecc_init_ex(ptr noundef nonnull %5, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = sub nsw i32 0, %i.v
  %i.x = and i32 %i.w, 2047
  %narrow.neg170.i = mul nsw i32 %i.x, -100000
  %i.y = add nsw i32 %narrow.neg170.i, -536910373
  br label %ecc_test_curve_size.exit

bb.c:                                             ; preds = %bb.a
  %i.z = call i32 @wc_ecc_init_ex(ptr noundef nonnull %6, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not101.i = icmp eq i32 %i.z, 0
  br i1 %.not101.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = and i32 %i.aa, 2047
  %narrow.neg167.i = mul nsw i32 %i.ab, -100000
  %i.ac = add nsw i32 %narrow.neg167.i, -536910376
  br label %ecc_test_curve_size.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = call i32 @wc_ecc_init_ex(ptr noundef nonnull %7, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not102.i = icmp eq i32 %i.ad, 0
  br i1 %.not102.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = and i32 %i.ae, 2047
  %narrow.neg164.i = mul nsw i32 %i.af, -100000
  %i.ag = add nsw i32 %narrow.neg164.i, -536910379
  br label %ecc_test_curve_size.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = call i32 @wc_ecc_make_key_ex(ptr noundef nonnull %0, i32 noundef range(i32 28, 67) %1, ptr noundef nonnull %5, i32 noundef 0) #19 ; 3 uses
  switch i32 %i.ah, label %bb.h [
    i32 -172, label %ecc_test_curve_size.exit
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = and i32 %i.ai, 2047
  %narrow.neg161.i = mul nsw i32 %i.aj, -100000
  %i.ak = add nsw i32 %narrow.neg161.i, -536910409
  br label %ecc_test_curve_size.exit

bb.i:                                             ; preds = %bb.g
  %i.al = call i32 @wc_ecc_get_curve_idx(i32 noundef 0) #19
  %.not104.i = icmp eq i32 %i.al, -1
  br i1 %.not104.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !108
  %i.aq = call i32 @wc_ecc_get_curve_size_from_id(i32 noundef %i.ap) #19
  %i.ar = load ptr, ptr %i.am, align 16, !tbaa !32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !109
  %.not105.i = icmp eq i32 %i.aq, %i.as
  br i1 %.not105.i, label %bb.k, label %ecc_test_curve_size.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = call i32 @wc_ecc_check_key(ptr noundef nonnull %5) #19 ; 2 uses
  %.not106.i = icmp eq i32 %i.at, 0
  br i1 %.not106.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = sub nsw i32 0, %i.at
  %i.av = and i32 %i.au, 2047
  %narrow.neg158.i = mul nsw i32 %i.av, -100000
  %i.aw = add nsw i32 %narrow.neg158.i, -536910421
  br label %ecc_test_curve_size.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = call i32 @wc_ecc_make_key_ex(ptr noundef nonnull %0, i32 noundef range(i32 28, 67) %1, ptr noundef nonnull %6, i32 noundef 0) #19 ; 2 uses
  %.not107.i = icmp eq i32 %i.ax, 0
  br i1 %.not107.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = sub nsw i32 0, %i.ax
  %i.az = and i32 %i.ay, 2047
  %narrow.neg155.i = mul nsw i32 %i.az, -100000
  %i.ba = add nsw i32 %narrow.neg155.i, -536910437
  br label %ecc_test_curve_size.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = call i32 @wc_ecc_size(ptr noundef nonnull %5) #19
  %.not108.i = icmp eq i32 %i.bb, %1
  br i1 %.not108.i, label %bb.p, label %ecc_test_curve_size.exit

bb.p:                                             ; preds = %bb.o
  %i.bc = call i32 @wc_ecc_set_rng(ptr noundef nonnull %5, ptr noundef nonnull %0) #19 ; 2 uses
  %.not109.i = icmp eq i32 %i.bc, 0
  br i1 %.not109.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = sub nsw i32 0, %i.bc
  %i.be = and i32 %i.bd, 2047
  %narrow.neg152.i = mul nsw i32 %i.be, -100000
  %i.bf = add nsw i32 %narrow.neg152.i, -536910451
  br label %ecc_test_curve_size.exit

bb.r:                                             ; preds = %bb.p
  %i.bg = call i32 @wc_ecc_set_rng(ptr noundef nonnull %6, ptr noundef nonnull %0) #19 ; 2 uses
  %.not110.i = icmp eq i32 %i.bg, 0
  br i1 %.not110.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = sub nsw i32 0, %i.bg
  %i.bi = and i32 %i.bh, 2047
  %narrow.neg149.i = mul nsw i32 %i.bi, -100000
  %i.bj = add nsw i32 %narrow.neg149.i, -536910454
  br label %ecc_test_curve_size.exit

bb.t:                                             ; preds = %bb.r
  store i32 66, ptr %i.u, align 4, !tbaa !19
  %i.bk = call i32 @wc_ecc_shared_secret(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.n, ptr noundef nonnull %i.u) #19 ; 2 uses
  switch i32 %i.bk, label %bb.u [
    i32 -108, label %.peel.next.i
    i32 0, label %bb.v
  ]

.peel.next.i:                                     ; preds = %bb.t, %.peel.next.i
  br label %.peel.next.i

bb.u:                                             ; preds = %bb.t
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = and i32 %i.bl, 2047
  %narrow.neg146.i = mul nsw i32 %i.bm, -100000
  %i.bn = add nsw i32 %narrow.neg146.i, -536910466
  br label %ecc_test_curve_size.exit

bb.v:                                             ; preds = %bb.t
  store i32 66, ptr %i.p, align 4, !tbaa !19
  %i.bo = call i32 @wc_ecc_shared_secret(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #19 ; 2 uses
  switch i32 %i.bo, label %bb.w [
    i32 -108, label %.peel.next24.i
    i32 0, label %bb.x
  ]

.peel.next24.i:                                   ; preds = %bb.v, %.peel.next24.i
  br label %.peel.next24.i

bb.w:                                             ; preds = %bb.v
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = and i32 %i.bp, 2047
  %narrow.neg143.i = mul nsw i32 %i.bq, -100000
  %i.br = add nsw i32 %narrow.neg143.i, -536910478
  br label %ecc_test_curve_size.exit

bb.x:                                             ; preds = %bb.v
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !19  ; 2 uses
  %i.bt = load i32, ptr %i.u, align 4, !tbaa !19
  %.not113.i = icmp eq i32 %i.bs, %i.bt
  br i1 %.not113.i, label %bb.y, label %ecc_test_curve_size.exit

bb.y:                                             ; preds = %bb.x
  %i.bu = zext i32 %i.bs to i64
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.o, i64 %i.bu)
  %.not114.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not114.i, label %bb.z, label %ecc_test_curve_size.exit

bb.z:                                             ; preds = %bb.y
  store i32 164, ptr %i.u, align 4, !tbaa !19
  %i.bv = call i32 @wc_ecc_export_x963_ex(ptr noundef nonnull %5, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u, i32 noundef 0) #19 ; 2 uses
  %.not115.i = icmp eq i32 %i.bv, 0
  br i1 %.not115.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = sub nsw i32 0, %i.bv
  %i.bx = and i32 %i.bw, 2047
  %narrow.neg140.i = mul nsw i32 %i.bx, -100000
  %i.by = add nsw i32 %narrow.neg140.i, -536910533
  br label %ecc_test_curve_size.exit

bb.ab:                                            ; preds = %bb.z
  %i.bz = load i32, ptr %i.u, align 4, !tbaa !19
  %i.ca = call i32 @wc_ecc_import_x963_ex(ptr noundef nonnull %i.q, i32 noundef %i.bz, ptr noundef nonnull %7, i32 noundef 0) #19 ; 2 uses
  %.not116.i = icmp eq i32 %i.ca, 0
  br i1 %.not116.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = sub nsw i32 0, %i.ca
  %i.cc = and i32 %i.cb, 2047
  %narrow.neg137.i = mul nsw i32 %i.cc, -100000
  %i.cd = add nsw i32 %narrow.neg137.i, -536910545
  br label %ecc_test_curve_size.exit

bb.ad:                                            ; preds = %bb.ab
  store i32 66, ptr %i.p, align 4, !tbaa !19
  %i.ce = call i32 @wc_ecc_shared_secret(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #19 ; 2 uses
  switch i32 %i.ce, label %bb.ae [
    i32 -108, label %.peel.next30.i
    i32 0, label %bb.af
  ]

.peel.next30.i:                                   ; preds = %bb.ad, %.peel.next30.i
  br label %.peel.next30.i

bb.ae:                                            ; preds = %bb.ad
  %i.cf = sub nsw i32 0, %i.ce
  %i.cg = and i32 %i.cf, 2047
  %narrow.neg134.i = mul nsw i32 %i.cg, -100000
  %i.ch = add nsw i32 %narrow.neg134.i, -536910559
  br label %ecc_test_curve_size.exit

bb.af:                                            ; preds = %bb.ad
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !19
  %i.cj = zext i32 %i.ci to i64
  %bcmp118.i = call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.o, i64 %i.cj)
  %.not119.i = icmp eq i32 %bcmp118.i, 0
  br i1 %.not119.i, label %bb.ag, label %ecc_test_curve_size.exit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, i8 0, i64 64, i1 false), !tbaa !18
  store i32 141, ptr %i.u, align 4, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(141) %i.r, i8 0, i64 141, i1 false)
  %i.ck = call i32 @wc_ecc_sign_hash(ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.r, ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef nonnull %5) #19
  switch i32 %i.ck, label %bb.ah [
    i32 -108, label %.peel.next37.i
    i32 0, label %ecc_test_curve_size.exit
  ]

.peel.next37.i:                                   ; preds = %bb.ag, %.peel.next37.i
  br label %.peel.next37.i

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.t, align 4, !tbaa !19
  %i.cl = load i32, ptr %i.u, align 4, !tbaa !19
  %i.cm = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.r, i32 noundef %i.cl, ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #19
  switch i32 %i.cm, label %bb.ai [
    i32 -108, label %.peel.next42.i
    i32 0, label %ecc_test_curve_size.exit
  ]

.peel.next42.i:                                   ; preds = %bb.ah, %.peel.next42.i
  br label %.peel.next42.i

bb.ai:                                            ; preds = %bb.ah
  %i.cn = load i32, ptr %i.t, align 4, !tbaa !19
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %ecc_test_curve_size.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i64 506097522914230528, ptr %i.s, align 16
  %8 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1084818905618843912, ptr %8, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1663540288323457296, ptr %i.cp, align 16
  %9 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 2242261671028070680, ptr %9, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 2820983053732684064, ptr %i.cq, align 16
  %10 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 3399704436437297448, ptr %10, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 3978425819141910832, ptr %i.cr, align 16
  %11 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 4557147201846524216, ptr %11, align 8
  store i32 141, ptr %i.u, align 4, !tbaa !19
  %i.cs = call i32 @wc_ecc_sign_hash(ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.r, ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef nonnull %5) #19 ; 2 uses
  switch i32 %i.cs, label %bb.ak [
    i32 -108, label %.peel.next48.i
    i32 0, label %bb.ao
  ]

.peel.next48.i:                                   ; preds = %bb.aj, %.peel.next48.i
  br label %.peel.next48.i

bb.ak:                                            ; preds = %bb.aj
  %i.ct = sub nsw i32 0, %i.cs
  %i.cu = and i32 %i.ct, 2047
  %narrow.neg131.i = mul nsw i32 %i.cu, -100000
  %i.cv = add nsw i32 %narrow.neg131.i, -536910690
  br label %ecc_test_curve_size.exit

bb.al:                                            ; preds = %bb.ap
  store i32 0, ptr %i.t, align 4, !tbaa !19
  %i.cw = load i32, ptr %i.u, align 4, !tbaa !19
  %i.cx = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.r, i32 noundef %i.cw, ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #19 ; 2 uses
  switch i32 %i.cx, label %.loopexit56.i [
    i32 -108, label %.peel.next52.1.i
    i32 0, label %bb.am
  ]

.peel.next52.1.i:                                 ; preds = %bb.al, %.peel.next52.1.i
  br label %.peel.next52.1.i

bb.am:                                            ; preds = %bb.al
  %i.cy = load i32, ptr %i.t, align 4, !tbaa !19
  %.not125.1.i = icmp eq i32 %i.cy, 1
  br i1 %.not125.1.i, label %bb.an, label %ecc_test_curve_size.exit

bb.an:                                            ; preds = %bb.am
  store i32 164, ptr %i.u, align 4, !tbaa !19
  %i.cz = call i32 @wc_ecc_export_private_only(ptr noundef nonnull %5, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u) #19 ; 2 uses
  %.not121.i = icmp eq i32 %i.cz, 0
  br i1 %.not121.i, label %ecc_test_curve_size.exit, label %bb.aq

bb.ao:                                            ; preds = %bb.aj
  store i32 0, ptr %i.t, align 4, !tbaa !19
  %i.da = load i32, ptr %i.u, align 4, !tbaa !19
  %i.db = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.r, i32 noundef %i.da, ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #19 ; 2 uses
  switch i32 %i.db, label %.loopexit56.i [
    i32 -108, label %.peel.next52.i
    i32 0, label %bb.ap
  ]

.peel.next52.i:                                   ; preds = %bb.ao, %.peel.next52.i
  br label %.peel.next52.i

.loopexit56.i:                                    ; preds = %bb.ao, %bb.al
  %.14.lcssa.ph57.i = phi i32 [ %i.db, %bb.ao ], [ %i.cx, %bb.al ]
  %i.dc = sub nsw i32 0, %.14.lcssa.ph57.i
  %i.dd = and i32 %i.dc, 2047
  %narrow.neg128.i = mul nsw i32 %i.dd, -100000
  %i.de = add nsw i32 %narrow.neg128.i, -536910705
  br label %ecc_test_curve_size.exit

bb.ap:                                            ; preds = %bb.ao
  %i.df = load i32, ptr %i.t, align 4, !tbaa !19
  %.not125.i = icmp eq i32 %i.df, 1
  br i1 %.not125.i, label %bb.al, label %ecc_test_curve_size.exit

bb.aq:                                            ; preds = %bb.an
  %i.dg = sub nsw i32 0, %i.cz
  %i.dh = and i32 %i.dg, 2047
  %narrow.neg.i = mul nsw i32 %i.dh, -100000
  %i.di = add nsw i32 %narrow.neg.i, -536910723
  br label %ecc_test_curve_size.exit

ecc_test_curve_size.exit:                         ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.am, %bb.an, %.loopexit56.i, %bb.ap, %bb.aq
  %.15.i = phi i32 [ %i.y, %bb.b ], [ %i.ac, %bb.d ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ], [ %i.ak, %bb.h ], [ 0, %bb.an ], [ %i.aw, %bb.l ], [ %i.ba, %bb.n ], [ -39503, %bb.j ], [ %i.bf, %bb.q ], [ %i.bj, %bb.s ], [ %i.bn, %bb.u ], [ %i.br, %bb.w ], [ -172, %bb.o ], [ -39569, %bb.x ], [ %i.by, %bb.aa ], [ %i.cd, %bb.ac ], [ %i.ch, %bb.ae ], [ -39572, %bb.y ], [ -39650, %bb.af ], [ -39795, %bb.ap ], [ -536910659, %bb.ah ], [ %i.cv, %bb.ak ], [ %i.de, %.loopexit56.i ], [ -39753, %bb.ai ], [ %i.di, %bb.aq ], [ -39795, %bb.am ], [ -536910636, %bb.ag ] ; 3 uses
  %i.dj = call i32 @wc_ecc_free(ptr noundef nonnull %7) #19 ; 0 uses
  %i.dk = call i32 @wc_ecc_free(ptr noundef nonnull %6) #19 ; 0 uses
  %i.dl = call i32 @wc_ecc_free(ptr noundef nonnull %5) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  %i.dm = icmp sgt i32 %.15.i, -1
  %i.dn = icmp eq i32 %.15.i, -172
  %or.cond = or i1 %i.dm, %i.dn
  br i1 %or.cond, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %ecc_test_curve_size.exit
  switch i32 %1, label %.sink.split [
    i32 66, label %bb.au
    i32 64, label %ecc_test_vector.exit.thread41
    i32 48, label %bb.at
    i32 40, label %ecc_test_vector.exit.thread41
    i32 28, label %bb.av
    i32 30, label %ecc_test_vector.exit.thread41
    i32 32, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.sroa.0.0.i = phi ptr [ @.str.290, %bb.au ], [ @.str.281, %bb.at ], [ @.str.272, %bb.as ], [ @.str.263, %bb.ar ]
  %.sroa.8.0.i = phi ptr [ @.str.291, %bb.au ], [ @.str.282, %bb.at ], [ @.str.273, %bb.as ], [ @.str.264, %bb.ar ]
  %.sroa.13.0.i = phi ptr [ @.str.292, %bb.au ], [ @.str.283, %bb.at ], [ @.str.274, %bb.as ], [ @.str.265, %bb.ar ]
  %.sroa.18.0.i = phi ptr [ @.str.293, %bb.au ], [ @.str.284, %bb.at ], [ @.str.275, %bb.as ], [ @.str.266, %bb.ar ]
  %.sroa.23.0.i = phi ptr [ @.str.294, %bb.au ], [ @.str.285, %bb.at ], [ @.str.276, %bb.as ], [ @.str.267, %bb.ar ]
  %.sroa.28.0.i = phi ptr [ @.str.295, %bb.au ], [ @.str.286, %bb.at ], [ @.str.277, %bb.as ], [ @.str.268, %bb.ar ]
  %.sroa.33.0.i = phi ptr [ @.str.296, %bb.au ], [ @.str.287, %bb.at ], [ @.str.280, %bb.as ], [ @.str.269, %bb.ar ]
  %.sroa.44.0.i = phi ptr [ @.str.297, %bb.au ], [ @.str.288, %bb.at ], [ @.str.278, %bb.as ], [ @.str.270, %bb.ar ] ; 2 uses
  %.sroa.50.0.i = phi i32 [ 65, %bb.au ], [ %1, %bb.at ], [ %1, %bb.as ], [ %1, %bb.ar ] ; 5 uses
  %.sroa.568.0.i = phi ptr [ @.str.298, %bb.au ], [ @.str.289, %bb.at ], [ @.str.279, %bb.as ], [ @.str.271, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 0, ptr %i.e, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i32 66, ptr %i.i, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  store i32 66, ptr %i.j, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.do = call i32 @wc_ecc_init_ex(ptr noundef nonnull %4, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dp = sub nsw i32 0, %i.do
  %i.dq = and i32 %i.dp, 2047
  %narrow.neg67.i.i = mul nsw i32 %i.dq, -100000
  %i.dr = add nsw i32 %narrow.neg67.i.i, -536908656
  br label %ecc_test_vector_item.exit.thread.i

bb.ax:                                            ; preds = %bb.av
  %i.ds = call i32 @wc_ecc_import_raw(ptr noundef nonnull %4, ptr noundef nonnull %.sroa.8.0.i, ptr noundef nonnull %.sroa.13.0.i, ptr noundef nonnull %.sroa.18.0.i, ptr noundef nonnull %.sroa.33.0.i) #19 ; 2 uses
  %.not40.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not40.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dt = sub nsw i32 0, %i.ds
  %i.du = and i32 %i.dt, 2047
  %narrow.neg64.i.i = mul nsw i32 %i.du, -100000
  %i.dv = add nsw i32 %narrow.neg64.i.i, -536908661
  br label %ecc_test_vector_item.exit.thread.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(141) %i.g, i8 0, i64 141, i1 false)
  store i32 141, ptr %i.f, align 4, !tbaa !19
  %i.dw = call i32 @wc_ecc_rs_to_sig(ptr noundef nonnull %.sroa.23.0.i, ptr noundef nonnull %.sroa.28.0.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #19
  %.fr.i = freeze i32 %i.dw                       ; 3 uses
  %.not41.i.i = icmp eq i32 %.fr.i, 0
  br i1 %.not41.i.i, label %bb.ba, label %ecc_test_vector.exit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(141) %i.k, i8 0, i64 141, i1 false)
  store i32 141, ptr %i.h, align 4, !tbaa !19
  %i.dx = call i32 @wc_ecc_rs_raw_to_sig(ptr noundef nonnull %.sroa.44.0.i, i32 noundef %.sroa.50.0.i, ptr noundef nonnull %.sroa.568.0.i, i32 noundef %.sroa.50.0.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.h) #19 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not42.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dy = sub nsw i32 0, %i.dx
  %i.dz = and i32 %i.dy, 2047
  %narrow.neg61.i.i = mul nsw i32 %i.dz, -100000
  %i.ea = add nsw i32 %narrow.neg61.i.i, -536908676
  br label %ecc_test_vector_item.exit.thread.i

bb.bc:                                            ; preds = %bb.ba
  %i.eb = load i32, ptr %i.f, align 4, !tbaa !19  ; 3 uses
  %i.ec = load i32, ptr %i.h, align 4, !tbaa !19
  %.not43.i.i = icmp eq i32 %i.eb, %i.ec
  br i1 %.not43.i.i, label %bb.bd, label %ecc_test_vector_item.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.ed = zext i32 %i.eb to i64
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %i.k, i64 %i.ed)
  %.not44.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not44.i.i, label %bb.be, label %ecc_test_vector_item.exit.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.ee = call i32 @wc_ecc_sig_to_rs(ptr noundef nonnull %i.g, i32 noundef %i.eb, ptr noundef nonnull %i.l, ptr noundef nonnull %i.i, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j) #19 ; 2 uses
  %.not45.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not45.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
end_hunk_0
