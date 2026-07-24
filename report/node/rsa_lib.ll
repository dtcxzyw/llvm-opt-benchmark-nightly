inline.NumInlined: 84
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@RSA_get0_iqmp
define dso_local ptr @RSA_get0_iqmp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @RSA_get0_pss_params(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ossl_rsa_set0_pss_params(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  tail call void @RSA_PSS_PARAMS_free(ptr noundef %i.b) #10
  store ptr %1, ptr %i.a, align 8, !tbaa !43
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ossl_rsa_get0_pss_params_30(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RSA_clear_flags(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = xor i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = and i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @RSA_test_flags(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = and i32 %i.b, %1
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RSA_set_flags(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @RSA_get_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @RSA_get0_engine(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RSA_pkey_ctx_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67
  switch i32 %i.c, label %bb.e [
    i32 6, label %bb.d
    i32 912, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.b, %bb.a
  %i.d = tail call i32 @EVP_PKEY_CTX_ctrl(ptr noundef %0, i32 noundef -1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

declare i32 @EVP_PKEY_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rsa_set0_all_params(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %RSA_set0_factors.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #10 ; 6 uses
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %RSA_set0_factors.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef 0) #10 ; 3 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef 1) #10 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp eq ptr %i.f, null                   ; 2 uses
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %RSA_set0_factors.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq ptr %i.g, null                   ; 2 uses
  %or.cond3.i = and i1 %i.o, %i.n
  br i1 %or.cond3.i, label %RSA_set0_factors.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @BN_clear_free(ptr noundef %i.i) #10
  store ptr %i.f, ptr %i.h, align 8, !tbaa !38
  tail call void @BN_set_flags(ptr noundef nonnull %i.f, i32 noundef 4) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !39
  tail call void @BN_clear_free(ptr noundef %i.p) #10
  store ptr %i.g, ptr %i.l, align 8, !tbaa !39
  tail call void @BN_set_flags(ptr noundef nonnull %i.g, i32 noundef 4) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !50
  %i.t = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %1, i32 noundef 0) #10 ; 0 uses
  %i.u = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %1, i32 noundef 0) #10 ; 0 uses
  %i.v = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %2) #10
  %i.w = icmp eq i32 %i.d, %i.v
  br i1 %i.w, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %3) #10
  %i.y = add nsw i32 %i.x, 1
  %i.z = icmp eq i32 %i.d, %i.y
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %2, i32 noundef 0) #10
  %i.ab = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %2, i32 noundef 1) #10
  %i.ac = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %3, i32 noundef 0) #10
  %i.ad = tail call i32 @RSA_set0_crt_params(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac)
  %.not72 = icmp eq i32 %i.ad, 0
  br i1 %.not72, label %RSA_set0_factors.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %2, i32 noundef 0) #10 ; 0 uses
  %i.af = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %2, i32 noundef 0) #10 ; 0 uses
  %i.ag = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %3, i32 noundef 0) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44 ; 3 uses
  %.not73 = icmp ne i32 %i.d, 2                   ; 2 uses
  br i1 %.not73, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef range(i32 1, 0) %i.d) #10 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %RSA_set0_factors.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.06585 = phi i32 [ %i.ay, %bb.p ], [ 2, %bb.n ]
  %i.al = tail call ptr @OPENSSL_sk_pop(ptr noundef nonnull %1) #10 ; 3 uses
  %i.am = tail call ptr @OPENSSL_sk_pop(ptr noundef nonnull %2) #10 ; 2 uses
  %i.an = tail call ptr @OPENSSL_sk_pop(ptr noundef nonnull %3) #10 ; 2 uses
  %i.ao = icmp ne ptr %i.al, null
  %i.ap = icmp ne ptr %i.am, null
  %or.cond5 = select i1 %i.ao, i1 %i.ap, i1 false
  %i.aq = icmp ne ptr %i.an, null
  %spec.select = select i1 %or.cond5, i1 %i.aq, i1 false
  br i1 %spec.select, label %bb.o, label %.thread, !prof !69

bb.o:                                             ; preds = %.lr.ph
  %i.ar = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 823) #10 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.at, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.an, ptr %i.au, align 8, !tbaa !55
  tail call void @BN_set_flags(ptr noundef nonnull %i.al, i32 noundef 4) #10
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !54
  tail call void @BN_set_flags(ptr noundef %i.av, i32 noundef 4) #10
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !55
  tail call void @BN_set_flags(ptr noundef %i.aw, i32 noundef 4) #10
  %i.ax = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ar) #10 ; 0 uses
  %i.ay = add nuw nsw i32 %.06585, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.p
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !44
  %i.az = tail call i32 @ossl_rsa_multip_calc_product(ptr noundef %0) #10
  %.not74 = icmp eq i32 %i.az, 0
  br i1 %.not74, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !44
  br label %.thread

bb.r:                                             ; preds = %._crit_edge, %bb.m
  %.not75 = icmp eq ptr %i.ai, null
  br i1 %.not75, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.ai, ptr noundef nonnull @ossl_rsa_multip_info_free) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ba = zext i1 %.not73 to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !49
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !50
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.q, align 8, !tbaa !50
  br label %RSA_set0_factors.exit.thread

.thread:                                          ; preds = %bb.o, %.lr.ph, %bb.q
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.aj, ptr noundef nonnull @ossl_rsa_multip_info_free_ex) #10
  br label %RSA_set0_factors.exit.thread

RSA_set0_factors.exit.thread:                     ; preds = %bb.n, %bb.c, %bb.d, %bb.k, %bb.b, %bb.a, %.thread, %bb.t
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.t ], [ 0, %.thread ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.n ]
  ret i32 %.1
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rsa_get0_all_params(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @OPENSSL_sk_push(ptr noundef %1, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = tail call i32 @OPENSSL_sk_push(ptr noundef %1, ptr noundef %i.g) #10 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = tail call i32 @OPENSSL_sk_push(ptr noundef %2, ptr noundef %i.j) #10 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = tail call i32 @OPENSSL_sk_push(ptr noundef %2, ptr noundef %i.m) #10 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = tail call i32 @OPENSSL_sk_push(ptr noundef %3, ptr noundef %i.p) #10 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = tail call i32 @OPENSSL_sk_num(ptr noundef %i.s) #10 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.02426 = phi i32 [ %i.af, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.w = tail call ptr @OPENSSL_sk_value(ptr noundef %i.v, i32 noundef %.02426) #10 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = tail call i32 @OPENSSL_sk_push(ptr noundef %1, ptr noundef %i.x) #10 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = tail call i32 @OPENSSL_sk_push(ptr noundef %2, ptr noundef %i.aa) #10 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.ae = tail call i32 @OPENSSL_sk_push(ptr noundef %3, ptr noundef %i.ad) #10 ; 0 uses
  %i.af = add nuw nsw i32 %.02426, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.t
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !71

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rsa_check_factors(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_sk_new_null() #10 ; 7 uses
  %i.b = tail call ptr @OPENSSL_sk_new_null() #10 ; 7 uses
  %i.c = tail call ptr @OPENSSL_sk_new_null() #10 ; 7 uses
  %i.d = icmp eq ptr %i.a, null
  %i.e = icmp eq ptr %i.b, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  %i.f = icmp eq ptr %i.c, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.f
  br i1 %or.cond3, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @ossl_rsa_get0_all_params(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @BN_num_bits(ptr noundef nonnull %i.i) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @BN_num_bits(ptr noundef nonnull %i.n) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.q = phi i32 [ %i.p, %bb.e ], [ 0, %bb.d ]
  %i.r = icmp sgt i32 %i.q, %i.l
  br i1 %i.r, label %.loopexit, label %.preheader52

.preheader52:                                     ; preds = %bb.f
  %i.s = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #10
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.preheader50

bb.g:                                             ; preds = %bb.i
  %i.u = add nuw nsw i32 %.04554, 1               ; 2 uses
  %i.v = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #10
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph, label %.preheader50, !llvm.loop !72

.preheader50:                                     ; preds = %bb.g, %.preheader52
  %i.x = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #10
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph56, label %.preheader

.lr.ph:                                           ; preds = %.preheader52, %bb.g
  %.04554 = phi i32 [ %i.u, %bb.g ], [ 0, %.preheader52 ] ; 3 uses
  %i.z = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.b, i32 noundef %.04554) #10
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ab = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.b, i32 noundef %.04554) #10
  %i.ac = tail call i32 @BN_num_bits(ptr noundef %i.ab) #10
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.ad = phi i32 [ %i.ac, %bb.h ], [ 0, %.lr.ph ]
  %i.ae = icmp sgt i32 %i.ad, %i.l
  br i1 %i.ae, label %.loopexit, label %bb.g

bb.j:                                             ; preds = %bb.l
  %i.af = add nuw nsw i32 %.155, 1                ; 2 uses
  %i.ag = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #10
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph56, label %.preheader, !llvm.loop !73

.preheader:                                       ; preds = %bb.j, %.preheader50
  %i.ai = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #10
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph58, label %.loopexit

.lr.ph56:                                         ; preds = %.preheader50, %bb.j
  %.155 = phi i32 [ %i.af, %bb.j ], [ 0, %.preheader50 ] ; 3 uses
  %i.ak = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.155) #10
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph56
  %i.am = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.155) #10
  %i.an = tail call i32 @BN_num_bits(ptr noundef %i.am) #10
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph56, %bb.k
  %i.ao = phi i32 [ %i.an, %bb.k ], [ 0, %.lr.ph56 ]
  %i.ap = icmp sgt i32 %i.ao, %i.l
  br i1 %i.ap, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.o
  %i.aq = add nuw nsw i32 %.257, 1                ; 2 uses
  %i.ar = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #10
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph58, label %.loopexit, !llvm.loop !74

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.257 = phi i32 [ %i.aq, %bb.m ], [ 0, %.preheader ] ; 3 uses
end_hunk_0
