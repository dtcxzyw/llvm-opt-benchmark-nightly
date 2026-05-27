inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@hpke_decap:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 572, ptr noundef nonnull @__func__.hpke_decap) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef 0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24
  %i.l = and i32 %i.k, -2
  %switch = icmp eq i32 %i.l, 2
  br i1 %switch, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = load i16, ptr %i.m, align 4, !tbaa !45
  %i.o = call ptr @ossl_HPKE_KEM_INFO_find_id(i16 noundef zeroext %i.n) #5 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 585, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.q = load i16, ptr %i.m, align 4, !tbaa !45
  %i.r = call ptr @ossl_HPKE_KEM_INFO_find_id(i16 noundef zeroext %i.q) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %hpke_kem_id_nist_curve.exit.thread, label %hpke_kem_id_nist_curve.exit

hpke_kem_id_nist_curve.exit:                      ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %.not73 = icmp eq ptr %i.t, null
  br i1 %.not73, label %hpke_kem_id_nist_curve.exit.thread, label %bb.i

bb.i:                                             ; preds = %hpke_kem_id_nist_curve.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  %i.ac = call fastcc ptr @evp_pkey_new_raw_nist_public_key(ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, i64 noundef %i.ab)
  br label %bb.j

hpke_kem_id_nist_curve.exit.thread:               ; preds = %bb.h, %hpke_kem_id_nist_curve.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  %i.al = call ptr @EVP_PKEY_new_raw_public_key_ex(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ai, i64 noundef %i.ak) #5
  br label %bb.j

bb.j:                                             ; preds = %hpke_kem_id_nist_curve.exit.thread, %bb.i
  %.053 = phi ptr [ %i.ac, %bb.i ], [ %i.al, %hpke_kem_id_nist_curve.exit.thread ] ; 4 uses
  %i.am = icmp eq ptr %.053, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @EVP_PKEY_auth_decapsulate_init(ptr noundef nonnull %i.g, ptr noundef nonnull %.053, ptr noundef nonnull %4) #5
  %.not66 = icmp eq i32 %i.an, 1
  br i1 %.not66, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 605, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.n:                                             ; preds = %bb.e
  %i.ao = call i32 @EVP_PKEY_decapsulate_init(ptr noundef nonnull %i.g, ptr noundef nonnull %4) #5
  %.not64 = icmp eq i32 %i.ao, 1
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 610, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.p:                                             ; preds = %bb.l, %bb.n
  %.2 = phi ptr [ null, %bb.n ], [ %.053, %bb.l ] ; 4 uses
  %i.ap = call i32 @EVP_PKEY_decapsulate(ptr noundef nonnull %i.g, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %2) #5
  %.not67 = icmp eq i32 %i.ap, 1
  br i1 %.not67, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 615, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !44
  %i.ar = call noalias ptr @CRYPTO_malloc(i64 noundef %i.aq, ptr noundef nonnull @.str, i32 noundef 618) #5 ; 3 uses
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !38
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = call i32 @EVP_PKEY_decapsulate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %2) #5
  %.not68 = icmp eq i32 %i.at, 1
  br i1 %.not68, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 624, ptr noundef nonnull @__func__.hpke_decap) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.au = load i64, ptr %i.a, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.au, ptr %i.av, align 8, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.k, %bb.g, %bb.r, %bb.u, %bb.t, %bb.q, %bb.o, %bb.d
  %i.aw = phi i1 [ true, %bb.d ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.t ], [ false, %bb.u ], [ true, %bb.o ], [ true, %bb.g ], [ true, %bb.k ], [ true, %bb.m ]
  %.054 = phi i32 [ 0, %bb.d ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.t ], [ 1, %bb.u ], [ 0, %bb.o ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.m ] ; 2 uses
  %.3 = phi ptr [ null, %bb.d ], [ %.2, %bb.q ], [ %.2, %bb.r ], [ %.2, %bb.t ], [ %.2, %bb.u ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.k ], [ %.053, %bb.m ]
  call void @EVP_PKEY_CTX_free(ptr noundef %i.g) #5
  call void @EVP_PKEY_free(ptr noundef %.3) #5
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !38
  call void @CRYPTO_free(ptr noundef %i.ax, ptr noundef nonnull @.str, i32 noundef 634) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.b
  %.055 = phi i32 [ 0, %bb.b ], [ %.054, %bb.v ], [ %.054, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.055
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OSSL_HPKE_seal(ptr noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
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
  %i.e = load i64, ptr %2, align 8, !tbaa !44
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp eq ptr %5, null
  %or.cond5 = or i1 %i.g, %i.f
  %i.h = icmp eq i64 %6, 0
  %or.cond7 = or i1 %i.h, %or.cond5
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1173, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1177, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 8 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1181, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, ptr noundef null) #5
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1186, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %.not.i = icmp eq i64 %i.u, 12
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1191, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load <4 x i8>, ptr %i.r, align 1, !tbaa !60
  store <4 x i8> %i.w, ptr %i.a, align 4, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %7 = lshr i64 %i.l, 8
  %8 = lshr i64 %i.l, 16
  %9 = lshr i64 %i.l, 24
  %10 = lshr i64 %i.l, 32
  %11 = lshr i64 %i.l, 40
  %i.y = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.z = shufflevector <2 x i64> %i.y, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aa = lshr <2 x i64> %i.z, <i64 56, i64 48>
  %12 = trunc i64 %i.l to i8
  %13 = trunc i64 %7 to i8
  %14 = trunc i64 %8 to i8
  %15 = trunc i64 %9 to i8
  %16 = trunc i64 %10 to i8
  %17 = trunc i64 %11 to i8
  %i.ab = trunc <2 x i64> %i.aa to <2 x i8>
  %i.ac = load <8 x i8>, ptr %i.x, align 1, !tbaa !60
  %18 = shufflevector <2 x i8> %i.ab, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = insertelement <8 x i8> %18, i8 %17, i64 2
  %20 = insertelement <8 x i8> %19, i8 %16, i64 3
  %21 = insertelement <8 x i8> %20, i8 %15, i64 4
  %22 = insertelement <8 x i8> %21, i8 %14, i64 5
  %23 = insertelement <8 x i8> %22, i8 %13, i64 6
  %24 = insertelement <8 x i8> %23, i8 %12, i64 7
  %i.ad = xor <8 x i8> %i.ac, %24
  store <8 x i8> %i.ad, ptr %i.v, align 4, !tbaa !60
  %i.ae = call fastcc i32 @hpke_aead_enc(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %1, ptr noundef %2)
  %.not32.not = icmp eq i32 %i.ae, 0
  br i1 %.not32.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @__func__.OSSL_HPKE_seal) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.af = load i64, ptr %i.k, align 8, !tbaa !54
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.k, align 8, !tbaa !54
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hpke_aead_enc(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef range(i64 1, 0) %5, ptr noundef nonnull %6, ptr noundef nonnull captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64   ; 6 uses
  %i.g = load i64, ptr %7, align 8, !tbaa !44     ; 2 uses
  %.not = icmp ule i64 %i.g, %i.f
  %i.h = sub nuw i64 %i.g, %i.f
  %i.i = icmp ugt i64 %5, %i.h
  %or.cond56 = select i1 %.not, i1 true, i1 %i.i
  br i1 %or.cond56, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.f, 17
  br i1 %i.j, label %bb.e, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.k = tail call ptr @EVP_CIPHER_CTX_new() #5   ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.k, ptr noundef %i.n, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %.not47 = icmp eq i32 %i.o, 1
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.k, i32 noundef 9, i32 noundef %i.r, ptr noundef null) #5
  %.not48 = icmp eq i32 %i.s, 1
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, ptr noundef %i.u, ptr noundef nonnull %1) #5
  %.not49 = icmp eq i32 %i.v, 1
  br i1 %.not49, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.w = icmp ne i64 %3, 0
  %i.x = icmp ne ptr %2, null
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.y = trunc i64 %3 to i32
  %i.z = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.y) #5
  %.not50 = icmp eq i32 %i.z, 1
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.v

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.aa = trunc i64 %5 to i32
  %i.ab = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.k, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i32 noundef %i.aa) #5
  %.not51 = icmp eq i32 %i.ab, 1
  br i1 %.not51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  store i64 %i.ad, ptr %7, align 8, !tbaa !44
  %i.ae = getelementptr inbounds i8, ptr %6, i64 %i.ad
  %i.af = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.k, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a) #5
  %.not52 = icmp eq i32 %i.af, 1
  br i1 %.not52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i64, ptr %7, align 8, !tbaa !44
  %i.aj = add i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %7, align 8, !tbaa !44
  %i.ak = trunc nuw nsw i64 %i.f to i32
  %i.al = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.k, i32 noundef 16, i32 noundef %i.ak, ptr noundef nonnull %i.b) #5
  %.not53 = icmp eq i32 %i.al, 1
  br i1 %.not53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 277, ptr noundef nonnull @__func__.hpke_aead_enc) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.am = load i64, ptr %7, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 16 %i.b, i64 %i.f, i1 false)
  %i.ao = load i64, ptr %7, align 8, !tbaa !44
  %i.ap = add i64 %i.ao, %i.f
  store i64 %i.ap, ptr %7, align 8, !tbaa !44
  br label %bb.w

bb.v:                                             ; preds = %bb.g, %bb.i, %bb.k, %bb.n, %bb.p, %bb.r, %bb.t
  %i.aq = load i64, ptr %7, align 8, !tbaa !44
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef %i.aq) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.060 = phi i32 [ 0, %bb.v ], [ 1, %bb.u ]
  call void @EVP_CIPHER_CTX_free(ptr noundef nonnull %i.k) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.w, %bb.d, %bb.b
  %.040 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.060, %bb.w ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.040
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OSSL_HPKE_open(ptr noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
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
  %i.e = load i64, ptr %2, align 8, !tbaa !44
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp eq ptr %5, null
  %or.cond5 = or i1 %i.g, %i.f
  %i.h = icmp eq i64 %6, 0
  %or.cond7 = or i1 %i.h, %or.cond5
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1215, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1219, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 8 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1223, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, ptr noundef null) #5
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1228, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %.not.i = icmp eq i64 %i.u, 12
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1233, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load <4 x i8>, ptr %i.r, align 1, !tbaa !60
  store <4 x i8> %i.w, ptr %i.a, align 4, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %7 = lshr i64 %i.l, 8
  %8 = lshr i64 %i.l, 16
  %9 = lshr i64 %i.l, 24
  %10 = lshr i64 %i.l, 32
  %11 = lshr i64 %i.l, 40
  %i.y = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.z = shufflevector <2 x i64> %i.y, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aa = lshr <2 x i64> %i.z, <i64 56, i64 48>
  %12 = trunc i64 %i.l to i8
  %13 = trunc i64 %7 to i8
  %14 = trunc i64 %8 to i8
  %15 = trunc i64 %9 to i8
  %16 = trunc i64 %10 to i8
  %17 = trunc i64 %11 to i8
  %i.ab = trunc <2 x i64> %i.aa to <2 x i8>
  %i.ac = load <8 x i8>, ptr %i.x, align 1, !tbaa !60
  %18 = shufflevector <2 x i8> %i.ab, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = insertelement <8 x i8> %18, i8 %17, i64 2
  %20 = insertelement <8 x i8> %19, i8 %16, i64 3
  %21 = insertelement <8 x i8> %20, i8 %15, i64 4
  %22 = insertelement <8 x i8> %21, i8 %14, i64 5
  %23 = insertelement <8 x i8> %22, i8 %13, i64 6
  %24 = insertelement <8 x i8> %23, i8 %12, i64 7
  %i.ad = xor <8 x i8> %i.ac, %24
  store <8 x i8> %i.ad, ptr %i.v, align 4, !tbaa !60
  %i.ae = call fastcc i32 @hpke_aead_dec(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %1, ptr noundef %2)
  %.not32.not = icmp eq i32 %i.ae, 0
  br i1 %.not32.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1237, ptr noundef nonnull @__func__.OSSL_HPKE_open) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.af = load i64, ptr %i.k, align 8, !tbaa !54
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.k, align 8, !tbaa !54
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 12) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hpke_aead_dec(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef range(i64 1, 0) %5, ptr noundef nonnull %6, ptr noundef nonnull captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64   ; 4 uses
  %.not = icmp ugt i64 %5, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %7, align 8, !tbaa !44
  %i.g = sub nuw i64 %5, %i.e                     ; 2 uses
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 153, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.i = tail call ptr @EVP_CIPHER_CTX_new() #5   ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = tail call i32 @EVP_DecryptInit_ex(ptr noundef nonnull %i.i, ptr noundef %i.l, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %.not44 = icmp eq i32 %i.m, 1
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %i.p = trunc i64 %i.o to i32
  %i.q = tail call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.i, i32 noundef 9, i32 noundef %i.p, ptr noundef null) #5
  %.not45 = icmp eq i32 %i.q, 1
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = tail call i32 @EVP_DecryptInit_ex(ptr noundef nonnull %i.i, ptr noundef null, ptr noundef null, ptr noundef %i.s, ptr noundef nonnull %1) #5
  %.not46 = icmp eq i32 %i.t, 1
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.u = icmp ne i64 %3, 0
  %i.v = icmp ne ptr %2, null
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.w = trunc i64 %3 to i32
  %i.x = call i32 @EVP_DecryptUpdate(ptr noundef nonnull %i.i, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.w) #5
  %.not47 = icmp eq i32 %i.x, 1
  br i1 %.not47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.y = trunc i64 %i.g to i32
  %i.z = call i32 @EVP_DecryptUpdate(ptr noundef nonnull %i.i, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i32 noundef %i.y) #5
  %.not48 = icmp eq i32 %i.z, 1
  br i1 %.not48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 183, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ab = sext i32 %i.aa to i64
  store i64 %i.ab, ptr %7, align 8, !tbaa !44
  %i.ac = trunc i64 %i.e to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %i.ae = sub i64 0, %i.e
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.i, i32 noundef 17, i32 noundef %i.ac, ptr noundef nonnull %i.af) #5
  %.not49 = icmp eq i32 %i.ag, 0
  br i1 %.not49, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %6, i64 %i.ai
  %i.ak = call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %i.i, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a) #5
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.hpke_aead_dec) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.h, %bb.j, %bb.m, %bb.o, %bb.s, %bb.q
  %i.am = load i64, ptr %7, align 8, !tbaa !44
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef %i.am) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t
  %.03754 = phi i32 [ 0, %bb.t ], [ 1, %bb.r ]
  call void @EVP_CIPHER_CTX_free(ptr noundef nonnull %i.i) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.u, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %.03754, %bb.u ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_HPKE_export(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
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
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1257, ptr noundef nonnull @__func__.OSSL_HPKE_export) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %4, 66
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1261, ptr noundef nonnull @__func__.OSSL_HPKE_export) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #5
  br label %bb.o
end_hunk_0
