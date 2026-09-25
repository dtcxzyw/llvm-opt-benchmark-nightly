Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/hpke?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hpke_decap:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 574, ptr noundef nonnull @__func__.hpke_decap) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef 0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22
  %i.l = and i32 %i.k, -2
  %switch = icmp eq i32 %i.l, 2
  br i1 %switch, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = load i16, ptr %i.m, align 4, !tbaa !41
  %i.o = call ptr @ossl_HPKE_KEM_INFO_find_id(i16 noundef zeroext %i.n) #5 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 587, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.q = load i16, ptr %i.m, align 4, !tbaa !41
  %i.r = call ptr @ossl_HPKE_KEM_INFO_find_id(i16 noundef zeroext %i.q) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %hpke_kem_id_nist_curve.exit.thread, label %hpke_kem_id_nist_curve.exit

hpke_kem_id_nist_curve.exit:                      ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %.not72 = icmp eq ptr %i.t, null
  br i1 %.not72, label %hpke_kem_id_nist_curve.exit.thread, label %bb.i

bb.i:                                             ; preds = %hpke_kem_id_nist_curve.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ac = call fastcc ptr @evp_pkey_new_raw_nist_public_key(ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, i64 noundef %i.ab)
  br label %bb.j

hpke_kem_id_nist_curve.exit.thread:               ; preds = %bb.h, %hpke_kem_id_nist_curve.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.al = call ptr @EVP_PKEY_new_raw_public_key_ex(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ai, i64 noundef %i.ak) #5
  br label %bb.j

bb.j:                                             ; preds = %hpke_kem_id_nist_curve.exit.thread, %bb.i
  %.053 = phi ptr [ %i.ac, %bb.i ], [ %i.al, %hpke_kem_id_nist_curve.exit.thread ] ; 4 uses
  %i.am = icmp eq ptr %.053, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 603, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @EVP_PKEY_auth_decapsulate_init(ptr noundef nonnull %i.g, ptr noundef nonnull %.053, ptr noundef nonnull %4) #5
  %.not66 = icmp eq i32 %i.an, 1
  br i1 %.not66, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 607, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.n:                                             ; preds = %bb.e
  %i.ao = call i32 @EVP_PKEY_decapsulate_init(ptr noundef nonnull %i.g, ptr noundef nonnull %4) #5
  %.not64 = icmp eq i32 %i.ao, 1
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 612, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.p:                                             ; preds = %bb.l, %bb.n
  %.2 = phi ptr [ null, %bb.n ], [ %.053, %bb.l ] ; 4 uses
  %i.ap = call i32 @EVP_PKEY_decapsulate(ptr noundef nonnull %i.g, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %2) #5
  %.not67 = icmp eq i32 %i.ap, 1
  br i1 %.not67, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 617, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ar = call noalias ptr @CRYPTO_malloc(i64 noundef %i.aq, ptr noundef nonnull @.str, i32 noundef 620) #5 ; 3 uses
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !34
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = call i32 @EVP_PKEY_decapsulate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %2) #5
  %.not68 = icmp eq i32 %i.at, 1
  br i1 %.not68, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 626, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.au = load i64, ptr %i.a, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.au, ptr %i.av, align 8, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.k, %bb.g, %bb.r, %bb.u, %bb.t, %bb.q, %bb.o, %bb.d
  %i.aw = phi i1 [ true, %bb.d ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.t ], [ false, %bb.u ], [ true, %bb.o ], [ true, %bb.g ], [ true, %bb.k ], [ true, %bb.m ]
  %.054 = phi i32 [ 0, %bb.d ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.t ], [ 1, %bb.u ], [ 0, %bb.o ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.m ] ; 2 uses
  %.3 = phi ptr [ null, %bb.d ], [ %.2, %bb.q ], [ %.2, %bb.r ], [ %.2, %bb.t ], [ %.2, %bb.u ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.k ], [ %.053, %bb.m ]
  call void @EVP_PKEY_CTX_free(ptr noundef %i.g) #5
  call void @EVP_PKEY_free(ptr noundef %.3) #5
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !34
  call void @CRYPTO_free(ptr noundef %i.ax, ptr noundef nonnull @.str, i32 noundef 636) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.b
  %.055 = phi i32 [ 0, %bb.b ], [ %.054, %bb.v ], [ %.054, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.055
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @OSSL_HPKE_seal(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !40
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp eq ptr %5, null
  %or.cond5 = or i1 %i.g, %i.f
  %i.h = icmp eq i64 %6, 0
  %or.cond7 = or i1 %i.h, %or.cond5
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1175, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1179, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51   ; 3 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1183, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, ptr noundef null) #5
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1188, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.u, 12
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1193, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load <4 x i8>, ptr %i.r, align 1, !tbaa !57
  store <4 x i8> %i.w, ptr %i.a, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %7 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = lshr <2 x i64> %8, <i64 40, i64 32>
  %10 = lshr <2 x i64> %8, <i64 56, i64 48>
  %11 = insertelement <4 x i64> poison, i64 %i.l, i64 0
  %12 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> zeroinitializer
  %13 = lshr <4 x i64> %12, <i64 24, i64 16, i64 8, i64 0>
  %14 = trunc <4 x i64> %13 to <4 x i8>
  %15 = trunc <2 x i64> %9 to <2 x i8>
  %16 = trunc <2 x i64> %10 to <2 x i8>
  %i.y = load <8 x i8>, ptr %i.x, align 1, !tbaa !57
  %17 = shufflevector <2 x i8> %16, <2 x i8> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <4 x i8> %14, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <8 x i8> %17, <8 x i8> %18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.z = xor <8 x i8> %i.y, %19
  store <8 x i8> %i.z, ptr %i.v, align 4, !tbaa !57
  %i.aa = call fastcc i32 @hpke_aead_enc(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %1, ptr noundef %2)
  %.not32.not = icmp eq i32 %i.aa, 0
  br i1 %.not32.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1197, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !51
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !51
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hpke_aead_enc(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef range(i64 1, 0) %5, ptr noundef nonnull %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 6 uses
  %i.g = load i64, ptr %7, align 8, !tbaa !40     ; 2 uses
  %.not = icmp ugt i64 %i.g, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.g, %i.f
  %i.i = icmp ugt i64 %5, %i.h
  %i.j = or i64 %5, %3
  %i.k = icmp ugt i64 %i.j, 2147483647
  %or.cond3 = or i1 %i.k, %i.i
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 233, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 17
  br i1 %i.l, label %bb.f, label %bb.e, !prof !65

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @EVP_CIPHER_CTX_new() #5   ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.m, ptr noundef %i.p, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %.not53 = icmp eq i32 %i.q, 1
  br i1 %.not53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.m, i32 noundef 9, i32 noundef %i.t, ptr noundef null) #5
  %.not54 = icmp eq i32 %i.u, 1
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.x = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null, ptr noundef %i.w, ptr noundef nonnull %1) #5
  %.not55 = icmp eq i32 %i.x, 1
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 256, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.y = icmp ne i64 %3, 0
  %i.z = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.z, %i.y
  br i1 %or.cond5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aa = trunc nuw nsw i64 %3 to i32
  %i.ab = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.m, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.aa) #5
  %.not56 = icmp eq i32 %i.ab, 1
  br i1 %.not56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.w

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ac = trunc nuw nsw i64 %5 to i32
  %i.ad = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.m, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i32 noundef %i.ac) #5
  %.not57 = icmp eq i32 %i.ad, 1
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !48
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  store i64 %i.af, ptr %7, align 8, !tbaa !40
  %i.ag = getelementptr inbounds i8, ptr %6, i64 %i.af
  %i.ah = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #5
  %.not58 = icmp eq i32 %i.ah, 1
  br i1 %.not58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 273, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !48
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr %7, align 8, !tbaa !40
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr %7, align 8, !tbaa !40
  %i.am = trunc nuw nsw i64 %i.f to i32
  %i.an = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.m, i32 noundef 16, i32 noundef %i.am, ptr noundef nonnull %i.b) #5
  %.not59 = icmp eq i32 %i.an, 1
  br i1 %.not59, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ao = load i64, ptr %7, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 16 %i.b, i64 %i.f, i1 false)
  %i.aq = load i64, ptr %7, align 8, !tbaa !40
  %i.ar = add i64 %i.aq, %i.f
  store i64 %i.ar, ptr %7, align 8, !tbaa !40
  br label %bb.x

bb.w:                                             ; preds = %bb.h, %bb.j, %bb.l, %bb.o, %bb.q, %bb.s, %bb.u
  %i.as = load i64, ptr %7, align 8, !tbaa !40
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef %i.as) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.064 = phi i32 [ 0, %bb.w ], [ 1, %bb.v ]
  call void @EVP_CIPHER_CTX_free(ptr noundef nonnull %i.m) #5
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %bb.x, %bb.e, %bb.c
  %.046 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ %.064, %bb.x ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.046
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @OSSL_HPKE_open(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !40
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp eq ptr %5, null
  %or.cond5 = or i1 %i.g, %i.f
  %i.h = icmp eq i64 %6, 0
  %or.cond7 = or i1 %i.h, %or.cond5
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1217, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1221, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51   ; 3 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1225, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, ptr noundef null) #5
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1230, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.u, 12
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1235, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load <4 x i8>, ptr %i.r, align 1, !tbaa !57
  store <4 x i8> %i.w, ptr %i.a, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %7 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = lshr <2 x i64> %8, <i64 40, i64 32>
  %10 = lshr <2 x i64> %8, <i64 56, i64 48>
  %11 = insertelement <4 x i64> poison, i64 %i.l, i64 0
  %12 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> zeroinitializer
  %13 = lshr <4 x i64> %12, <i64 24, i64 16, i64 8, i64 0>
  %14 = trunc <4 x i64> %13 to <4 x i8>
  %15 = trunc <2 x i64> %9 to <2 x i8>
  %16 = trunc <2 x i64> %10 to <2 x i8>
  %i.y = load <8 x i8>, ptr %i.x, align 1, !tbaa !57
  %17 = shufflevector <2 x i8> %16, <2 x i8> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <4 x i8> %14, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <8 x i8> %17, <8 x i8> %18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.z = xor <8 x i8> %i.y, %19
  store <8 x i8> %i.z, ptr %i.v, align 4, !tbaa !57
  %i.aa = call fastcc i32 @hpke_aead_dec(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %1, ptr noundef %2)
  %.not32.not = icmp eq i32 %i.aa, 0
  br i1 %.not32.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1239, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !51
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !51
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hpke_aead_dec(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef range(i64 1, 0) %5, ptr noundef nonnull %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58   ; 4 uses
  %.not = icmp ugt i64 %5, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %7, align 8, !tbaa !40
  %i.g = sub nuw i64 %5, %i.e                     ; 2 uses
  %i.h = icmp ult i64 %i.f, %i.g
  %i.i = or i64 %5, %3
  %i.j = icmp ugt i64 %i.i, 2147483647
  %or.cond3 = or i1 %i.j, %i.h
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 154, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.k = tail call ptr @EVP_CIPHER_CTX_new() #5   ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = tail call i32 @EVP_DecryptInit_ex(ptr noundef nonnull %i.k, ptr noundef %i.n, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %.not50 = icmp eq i32 %i.o, 1
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 162, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load i64, ptr %i.p, align 8, !tbaa !33
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.k, i32 noundef 9, i32 noundef %i.r, ptr noundef null) #5
  %.not51 = icmp eq i32 %i.s, 1
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = tail call i32 @EVP_DecryptInit_ex(ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, ptr noundef %i.u, ptr noundef nonnull %1) #5
  %.not52 = icmp eq i32 %i.v, 1
  br i1 %.not52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 173, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.w = icmp ne i64 %3, 0
  %i.x = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.x, %i.w
  br i1 %or.cond5, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.y = trunc nuw nsw i64 %3 to i32
  %i.z = call i32 @EVP_DecryptUpdate(ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.y) #5
  %.not53 = icmp eq i32 %i.z, 1
  br i1 %.not53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.aa = trunc nuw i64 %i.g to i32
  %i.ab = call i32 @EVP_DecryptUpdate(ptr noundef nonnull %i.k, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i32 noundef %i.aa) #5
  %.not54 = icmp eq i32 %i.ab, 1
  br i1 %.not54, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !48
  %i.ad = sext i32 %i.ac to i64
  store i64 %i.ad, ptr %7, align 8, !tbaa !40
  %i.ae = trunc i64 %i.e to i32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %i.ag = sub i64 0, %i.e
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.k, i32 noundef 17, i32 noundef %i.ae, ptr noundef nonnull %i.ah) #5
  %.not55 = icmp eq i32 %i.ai, 0
  br i1 %.not55, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 190, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !48
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %6, i64 %i.ak
  %i.am = call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %i.k, ptr noundef nonnull %i.al, ptr noundef nonnull %i.a) #5
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.h, %bb.j, %bb.m, %bb.o, %bb.s, %bb.q
  %i.ao = load i64, ptr %7, align 8, !tbaa !40
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef %i.ao) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t
  %.060 = phi i32 [ 0, %bb.t ], [ 1, %bb.r ]
  call void @EVP_CIPHER_CTX_free(ptr noundef nonnull %i.k) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.u, %bb.c
  %.043 = phi i32 [ 0, %bb.c ], [ %.060, %bb.u ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define i32 @OSSL_HPKE_export(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq i64 %2, 0
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1259, ptr noundef nonnull @__func__.OSSL_HPKE_export) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %4, 66
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
end_hunk_0
