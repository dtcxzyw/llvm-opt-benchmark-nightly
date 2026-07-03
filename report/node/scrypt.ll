inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@kdf_scrypt_dup:bb.a
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %kdf_scrypt_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = tail call i32 @ossl_prov_memdup(ptr noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #6
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %kdf_scrypt_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ad = tail call i32 @ossl_prov_memdup(ptr noundef %i.y, i64 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #6
  %.not37 = icmp eq i32 %i.ad, 0
  br i1 %.not37, label %kdf_scrypt_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !26
  store <2 x i64> %i.af, ptr %i.e, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !26
  store <2 x i64> %i.ah, ptr %i.g, align 8, !tbaa !26
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !20
  br label %kdf_scrypt_new_inner.exit.thread

kdf_scrypt_free.exit:                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.al, ptr noundef nonnull @.str, i32 noundef 83) #6
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20
  tail call void @EVP_MD_free(ptr noundef %i.an) #6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.ap, ptr noundef nonnull @.str, i32 noundef 94) #6
  store ptr null, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !25
  tail call void @CRYPTO_clear_free(ptr noundef %i.ar, i64 noundef %i.at, ptr noundef nonnull @.str, i32 noundef 96) #6
  store ptr null, ptr %i.aq, align 8, !tbaa !24
  store i64 1048576, ptr %i.e, align 8, !tbaa !16
  store i64 8, ptr %i.f, align 8, !tbaa !17
  store i64 1, ptr %i.g, align 8, !tbaa !18
  store i64 1074790400, ptr %i.h, align 8, !tbaa !19
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 86) #6
  br label %kdf_scrypt_new_inner.exit.thread

kdf_scrypt_new_inner.exit.thread:                 ; preds = %bb.b, %bb.a, %bb.i, %kdf_scrypt_free.exit
  %.0 = phi ptr [ null, %kdf_scrypt_free.exit ], [ %i.c, %bb.i ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @kdf_scrypt_free(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 83) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @EVP_MD_free(ptr noundef %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef 94) #6
  store ptr null, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  tail call void @CRYPTO_clear_free(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 96) #6
  store ptr null, ptr %i.g, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1048576, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 8, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1074790400, ptr %i.n, align 8, !tbaa !19
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 86) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kdf_scrypt_reset(ptr nofree noundef captures(none) initializes((48, 80)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 94) #6
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  tail call void @CRYPTO_clear_free(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 96) #6
  store ptr null, ptr %i.c, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1048576, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 8, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1074790400, ptr %i.j, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_scrypt_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %scrypt_alg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @kdf_scrypt_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %scrypt_alg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.kdf_scrypt_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 130, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @__func__.kdf_scrypt_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %set_digest.exit

bb.h:                                             ; preds = %bb.g
  tail call void @EVP_MD_free(ptr noundef null) #6
  %i.l = load ptr, ptr %0, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call ptr @EVP_MD_fetch(ptr noundef %i.l, ptr noundef nonnull @.str.1, ptr noundef %i.n) #6 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !20
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %set_digest.exit.thread, label %.set_digest.exit_crit_edge

.set_digest.exit_crit_edge:                       ; preds = %bb.h
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !24
  %.pre27 = load ptr, ptr %i.f, align 8, !tbaa !22
  br label %set_digest.exit

set_digest.exit.thread:                           ; preds = %bb.h
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @__func__.set_digest) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 147, ptr noundef null) #6
  br label %scrypt_alg.exit

set_digest.exit:                                  ; preds = %.set_digest.exit_crit_edge, %bb.g
  %i.q = phi ptr [ %i.o, %.set_digest.exit_crit_edge ], [ %i.j, %bb.g ] ; 2 uses
  %i.r = phi ptr [ %.pre27, %.set_digest.exit_crit_edge ], [ %i.g, %bb.g ]
  %i.s = phi ptr [ %.pre, %.set_digest.exit_crit_edge ], [ %i.d, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17  ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = icmp ne i64 %i.aa, 0
  %i.aj = icmp ne i64 %i.ac, 0
  %or.cond.not93.i = and i1 %i.ai, %i.aj
  %i.ak = icmp ugt i64 %i.y, 1
  %or.cond3.not90.i = and i1 %i.ak, %or.cond.not93.i
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.y)
  %.not.i = icmp samesign ult i64 %i.al, 2
  %or.cond83.i = select i1 %or.cond3.not90.i, i1 %.not.i, i1 false
  br i1 %or.cond83.i, label %bb.i, label %scrypt_alg.exit

bb.i:                                             ; preds = %set_digest.exit
  %i.am = udiv i64 1073741823, %i.aa
  %i.an = icmp ugt i64 %i.ac, %i.am
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 461, ptr noundef nonnull @__func__.scrypt_alg) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = shl i64 %i.aa, 4                        ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 63
  %.highbits.i = lshr i64 %i.y, %i.ao
  %.not82.i = icmp eq i64 %.highbits.i, 0
  %or.cond84.i = select i1 %i.ap, i1 true, i1 %.not82.i
  br i1 %or.cond84.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @__func__.scrypt_alg) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.m:                                             ; preds = %bb.k
  %i.aq = shl nuw nsw i64 %i.ac, 7
  %i.ar = mul i64 %i.aq, %i.aa                    ; 5 uses
  %i.as = icmp ugt i64 %i.ar, 2147483647
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 490, ptr noundef nonnull @__func__.scrypt_alg) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.o:                                             ; preds = %bb.m
  %i.at = add nuw i64 %i.y, 2                     ; 2 uses
  %i.au = udiv i64 144115188075855871, %i.aa
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 500, ptr noundef nonnull @__func__.scrypt_alg) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.q:                                             ; preds = %bb.o
  %i.aw = shl i64 %i.aa, 5                        ; 10 uses
  %i.ax = shl nuw nsw i64 %i.at, 2
  %i.ay = mul i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = xor i64 %i.ay, -1
  %i.ba = icmp ugt i64 %i.ar, %i.az
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 507, ptr noundef nonnull @__func__.scrypt_alg) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.s:                                             ; preds = %bb.q
  %i.bb = add i64 %i.ar, %i.ay                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.ae
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 516, ptr noundef nonnull @__func__.scrypt_alg) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = icmp eq ptr %1, null
  br i1 %i.bd, label %scrypt_alg.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 524) #6 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %scrypt_alg.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ar ; 8 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aw ; 5 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aw ; 4 uses
  %i.bj = trunc i64 %i.u to i32                   ; 2 uses
  %i.bk = trunc i64 %i.w to i32
  %i.bl = trunc nuw nsw i64 %i.ar to i32          ; 2 uses
  %i.bm = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef %i.r, i32 noundef %i.bk, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.bl, ptr noundef nonnull %i.be, ptr noundef %i.af, ptr noundef %i.ah) #6
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w
  %i.bo = shl i64 %i.aa, 7                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.bp = sub i64 0, %i.aw
  %i.bq = shl nuw nsw i64 %i.y, 5
  %i.br = add nsw i64 %i.bq, -32
  %i.bs = mul i64 %i.br, %i.aa
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bo
  %i.bv = getelementptr i8, ptr %i.bu, i64 -64
  br i1 %.not.i.i, label %.preheader69.i.us.i, label %.lr.ph.i.preheader.i

.preheader69.i.us.i:                              ; preds = %.preheader.i, %scryptROMix.exit.loopexit.us.i
  %.07195.us.i = phi i64 [ %i.by, %scryptROMix.exit.loopexit.us.i ], [ 0, %.preheader.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader69.i.us.i
  %.16574.i.us.i = phi i64 [ 1, %.preheader69.i.us.i ], [ %i.bw, %bb.x ]
  tail call fastcc void @scryptBlockMix(ptr noundef %i.bi, ptr noundef %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.bw = add nuw i64 %.16574.i.us.i, 1           ; 2 uses
  %exitcond86.not.i.us.i = icmp eq i64 %i.bw, %i.y
  br i1 %exitcond86.not.i.us.i, label %.split.i.preheader.us.i, label %bb.x, !llvm.loop !27

.split.i.preheader.us.i:                          ; preds = %bb.x
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.split.i.us.i

.split.i.us.i:                                    ; preds = %.split.i.us.i, %.split.i.preheader.us.i
  %.26679.i.us.i = phi i64 [ %i.bx, %.split.i.us.i ], [ 0, %.split.i.preheader.us.i ]
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.bx = add nuw i64 %.26679.i.us.i, 1           ; 2 uses
  %exitcond89.not.i.us.i = icmp eq i64 %i.bx, %i.y
  br i1 %exitcond89.not.i.us.i, label %scryptROMix.exit.loopexit.us.i, label %.split.i.us.i, !llvm.loop !29

scryptROMix.exit.loopexit.us.i:                   ; preds = %.split.i.us.i
  %i.by = add nuw i64 %.07195.us.i, 1             ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.by, %i.ac
  br i1 %exitcond97.not.i, label %.split.us.i, label %.preheader69.i.us.i, !llvm.loop !30

.lr.ph.i.preheader.i:                             ; preds = %.preheader.i, %scryptROMix.exit.loopexit94.i
  %.07195.i = phi i64 [ %i.ds, %scryptROMix.exit.loopexit94.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.bz = mul i64 %.07195.i, %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bz ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.072.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.ca, %.lr.ph.i.preheader.i ] ; 5 uses
  %.06171.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.preheader.i ] ; 5 uses
  %.06470.i.i = phi i64 [ %i.ct, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 1
  %i.cc = load i8, ptr %.072.i.i, align 1, !tbaa !31
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  store i32 %i.cd, ptr %.06171.i.i, align 4, !tbaa !5
  %i.ce = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 2
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.cd            ; 2 uses
  store i32 %i.ci, ptr %.06171.i.i, align 4, !tbaa !5
  %i.cj = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 3
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !31
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 16
  %i.cn = or disjoint i32 %i.cm, %i.ci            ; 2 uses
  store i32 %i.cn, ptr %.06171.i.i, align 4, !tbaa !5
  %i.co = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 4
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !31
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw i32 %i.cq, 24
  %i.cs = or disjoint i32 %i.cr, %i.cn
  store i32 %i.cs, ptr %.06171.i.i, align 4, !tbaa !5
  %i.ct = add nuw i64 %.06470.i.i, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.06171.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.aw
  br i1 %exitcond.not.i.i, label %.preheader69.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !32

.preheader69.i.loopexit.i:                        ; preds = %.lr.ph.i.i, %.preheader69.i.loopexit.i
  %.16275.i.i = phi ptr [ %i.cx, %.preheader69.i.loopexit.i ], [ %i.cu, %.lr.ph.i.i ] ; 3 uses
  %.16574.i.i = phi i64 [ %i.cw, %.preheader69.i.loopexit.i ], [ 1, %.lr.ph.i.i ]
  %i.cv = getelementptr inbounds [4 x i8], ptr %.16275.i.i, i64 %i.bp
  tail call fastcc void @scryptBlockMix(ptr noundef %.16275.i.i, ptr noundef %i.cv, i64 noundef range(i64 1, 0) %i.aa)
  %i.cw = add nuw i64 %.16574.i.i, 1              ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.16275.i.i, i64 %i.aw
  %exitcond86.not.i.i = icmp eq i64 %i.cw, %i.y
  br i1 %exitcond86.not.i.i, label %.lr.ph78.us.i.preheader.i, label %.preheader69.i.loopexit.i, !llvm.loop !27

.lr.ph78.us.i.preheader.i:                        ; preds = %.preheader69.i.loopexit.i
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.lr.ph78.us.i.i

.lr.ph78.us.i.i:                                  ; preds = %._crit_edge.us.i.i, %.lr.ph78.us.i.preheader.i
  %.26679.us.i.i = phi i64 [ %i.dm, %._crit_edge.us.i.i ], [ 0, %.lr.ph78.us.i.preheader.i ]
  %i.cy = load i32, ptr %i.bv, align 4, !tbaa !5
  %i.cz = zext i32 %i.cy to i64
  %i.da = urem i64 %i.cz, %i.y
  %i.db = mul i64 %i.da, %i.aw
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.db
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %.lr.ph78.us.i.i
  %index57 = phi i64 [ 0, %.lr.ph78.us.i.i ], [ %index.next63, %vector.body56 ] ; 4 uses
  %i.dd = shl i64 %index57, 2
  %next.gep58 = getelementptr i8, ptr %i.dc, i64 %i.dd ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index57 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load59 = load <4 x i32>, ptr %i.de, align 4, !tbaa !5
  %wide.load60 = load <4 x i32>, ptr %i.df, align 4, !tbaa !5
  %i.dg = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load61 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !5
  %wide.load62 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !5
  %i.dh = xor <4 x i32> %wide.load61, %wide.load59
  %i.di = xor <4 x i32> %wide.load62, %wide.load60
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index57 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !5
  store <4 x i32> %i.di, ptr %i.dk, align 4, !tbaa !5
  %index.next63 = add nuw i64 %index57, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next63, %i.aw
  br i1 %i.dl, label %._crit_edge.us.i.i, label %vector.body56, !llvm.loop !33

._crit_edge.us.i.i:                               ; preds = %vector.body56
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.dm = add nuw i64 %.26679.us.i.i, 1           ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %i.dm, %i.y
  br i1 %exitcond88.not.i.i, label %vector.body, label %.lr.ph78.us.i.i, !llvm.loop !29

vector.body:                                      ; preds = %._crit_edge.us.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge.us.i.i ] ; 3 uses
  %i.dn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <4 x i32>, ptr %i.do, align 4, !tbaa !5
  %wide.load46 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !5
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load46, ptr %i.dq, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %i.aw
  br i1 %i.dr, label %scryptROMix.exit.loopexit94.i, label %vector.body, !llvm.loop !36

scryptROMix.exit.loopexit94.i:                    ; preds = %vector.body
  %i.ds = add nuw i64 %.07195.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.ac
  br i1 %exitcond.not.i, label %.split.us.i, label %.lr.ph.i.preheader.i, !llvm.loop !30

.split.us.i:                                      ; preds = %scryptROMix.exit.loopexit94.i, %scryptROMix.exit.loopexit.us.i
  %i.dt = trunc i64 %2 to i32
  %i.du = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef nonnull %i.be, i32 noundef %i.bl, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.dt, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef %i.ah) #6
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %.split.us.i, %bb.w
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 545, ptr noundef nonnull @__func__.scrypt_alg) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 181, ptr noundef null) #6
  br label %bb.y

bb.y:                                             ; preds = %.thread.i, %.split.us.i
  %.07287.i = phi i32 [ 0, %.thread.i ], [ 1, %.split.us.i ]
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.be, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 547) #6
  br label %scrypt_alg.exit

scrypt_alg.exit:                                  ; preds = %bb.y, %bb.v, %bb.u, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %set_digest.exit, %set_digest.exit.thread, %bb.a, %bb.b, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %set_digest.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.07287.i, %bb.y ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %set_digest.exit ], [ 1, %bb.u ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_scrypt_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @kdf_scrypt_settable_ctx_params.known_settable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_scrypt_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !37
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.d = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #6 ; 4 uses
  %.not46 = icmp eq ptr %i.d, null
  br i1 %.not46, label %scrypt_set_membuf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.h = load i64, ptr %i.f, align 8, !tbaa !26
  tail call void @CRYPTO_clear_free(ptr noundef %i.g, i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 148) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 153) #6 ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !39
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ossl_param_is_empty.exit.thread, label %scrypt_set_membuf.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %scrypt_set_membuf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef 0, ptr noundef nonnull %i.f) #6
  %.not10.i = icmp eq i32 %i.p, 0
  br i1 %.not10.i, label %ossl_param_is_empty.exit.thread, label %scrypt_set_membuf.exit

scrypt_set_membuf.exit:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.q = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #6 ; 4 uses
  %.not48 = icmp eq ptr %i.q, null
  br i1 %.not48, label %scrypt_set_membuf.exit62, label %bb.g

bb.g:                                             ; preds = %scrypt_set_membuf.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.u = load i64, ptr %i.s, align 8, !tbaa !26
  tail call void @CRYPTO_clear_free(ptr noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str, i32 noundef 148) #6
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 153) #6 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !39
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ossl_param_is_empty.exit.thread, label %scrypt_set_membuf.exit62

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %.not.i59 = icmp eq ptr %i.ab, null
  br i1 %.not.i59, label %scrypt_set_membuf.exit62, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef 0, ptr noundef nonnull %i.s) #6
  %.not10.i60 = icmp eq i32 %i.ac, 0
  br i1 %.not10.i60, label %ossl_param_is_empty.exit.thread, label %scrypt_set_membuf.exit62

scrypt_set_membuf.exit62:                         ; preds = %bb.j, %bb.i, %bb.h, %scrypt_set_membuf.exit
  %i.ad = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #6 ; 2 uses
  %.not50 = icmp eq ptr %i.ad, null
  br i1 %.not50, label %bb.m, label %bb.k

bb.k:                                             ; preds = %scrypt_set_membuf.exit62
  %i.ae = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.a) #6
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  %or.cond = select i1 %i.af, i1 true, i1 %i.ah
  %i.ai = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %i.ag)
  %i.aj = icmp samesign ugt i64 %i.ai, 1
  %or.cond69 = select i1 %or.cond, i1 true, i1 %i.aj
  br i1 %or.cond69, label %ossl_param_is_empty.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ag, ptr %i.ak, align 8, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %scrypt_set_membuf.exit62
  %i.al = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #6 ; 2 uses
  %.not52 = icmp eq ptr %i.al, null
  br i1 %.not52, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a) #6
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %or.cond3 = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond3, label %ossl_param_is_empty.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.ar = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.6) #6 ; 2 uses
  %.not53 = icmp eq ptr %i.ar, null
  br i1 %.not53, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.a) #6
  %i.at = icmp eq i32 %i.as, 0
  %i.au = load i64, ptr %i.a, align 8             ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %or.cond5 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond5, label %ossl_param_is_empty.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ax = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #6 ; 2 uses
  %.not54 = icmp eq ptr %i.ax, null
  br i1 %.not54, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.a) #6
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %or.cond7 = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond7, label %ossl_param_is_empty.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.bd = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #6 ; 3 uses
  %.not55 = icmp eq ptr %i.bd, null
  br i1 %.not55, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !42
  %.not56 = icmp eq i32 %i.bf, 4
  br i1 %.not56, label %bb.x, label %ossl_param_is_empty.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bi = call fastcc i32 @set_property_query(ptr noundef %0, ptr noundef %i.bh)
  %.not57 = icmp eq i32 %i.bi, 0
  br i1 %.not57, label %ossl_param_is_empty.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = call fastcc i32 @set_digest(ptr noundef %0)
  %.not58 = icmp eq i32 %i.bj, 0
  br i1 %.not58, label %ossl_param_is_empty.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.a, %bb.w, %bb.x, %bb.y, %bb.t, %bb.q, %bb.n, %bb.k, %ossl_param_is_empty.exit, %bb.z
  %.0 = phi i32 [ 1, %ossl_param_is_empty.exit ], [ 0, %bb.f ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.t ], [ 1, %bb.z ], [ 1, %bb.a ], [ 0, %bb.j ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.d ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_scrypt_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @kdf_scrypt_gettable_ctx_params.known_gettable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal i32 @kdf_scrypt_get_ctx_params(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.9) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.a, i64 noundef -1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ossl_prov_is_running() local_unnamed_addr #2

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @EVP_MD_up_ref(ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_prov_memdup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @set_digest(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @EVP_MD_free(ptr noundef %i.b) #6
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call ptr @EVP_MD_fetch(ptr noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef %i.e) #6 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !20
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @__func__.set_digest) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 147, ptr noundef null) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scryptBlockMix(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 21 uses
  %i.b = alloca [16 x i32], align 16              ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = shl i64 %2, 1                            ; 2 uses
  %.idx = shl i64 %2, 7
  %i.d = getelementptr i8, ptr %1, i64 %.idx
  %i.e = getelementptr i8, ptr %i.d, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.e, i64 64, i1 false)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aj = load <4 x i32>, ptr %i.b, align 16, !tbaa !5
  %i.ak = load <4 x i32>, ptr %i.x, align 16, !tbaa !5
  %i.al = load <4 x i32>, ptr %i.ab, align 16, !tbaa !5
  %i.am = load <4 x i32>, ptr %i.af, align 16, !tbaa !5
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %salsa208_word_specification.exit
  %.034 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.fm, %salsa208_word_specification.exit ] ; 5 uses
  %.01433 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hg, %salsa208_word_specification.exit ] ; 3 uses
  %i.an = phi <4 x i32> [ %i.aj, %.preheader.lr.ph ], [ %i.fs, %salsa208_word_specification.exit ]
  %i.ao = phi <4 x i32> [ %i.ak, %.preheader.lr.ph ], [ %i.gc, %salsa208_word_specification.exit ]
  %i.ap = phi <4 x i32> [ %i.al, %.preheader.lr.ph ], [ %i.gm, %salsa208_word_specification.exit ]
  %i.aq = phi <4 x i32> [ %i.am, %.preheader.lr.ph ], [ %i.gw, %salsa208_word_specification.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.as = load <4 x i32>, ptr %.034, align 4, !tbaa !5
  %i.at = xor <4 x i32> %i.an, %i.as
  store <4 x i32> %i.at, ptr %i.b, align 16, !tbaa !5
  %i.au = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.av = load <4 x i32>, ptr %i.ar, align 4, !tbaa !5
  %i.aw = xor <4 x i32> %i.ao, %i.av
  store <4 x i32> %i.aw, ptr %i.x, align 16, !tbaa !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.034, i64 48
  %i.ay = load <4 x i32>, ptr %i.au, align 4, !tbaa !5
  %i.az = xor <4 x i32> %i.ap, %i.ay
  store <4 x i32> %i.az, ptr %i.ab, align 16, !tbaa !5
  %i.ba = load <4 x i32>, ptr %i.ax, align 4, !tbaa !5
  %i.bb = xor <4 x i32> %i.aq, %i.ba
  store <4 x i32> %i.bb, ptr %i.af, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  %.promoted.i = load i32, ptr %i.a, align 16, !tbaa !5
  %.promoted7.i = load i32, ptr %i.f, align 16, !tbaa !5
  %.promoted9.i = load i32, ptr %i.g, align 16, !tbaa !5
  %.promoted11.i = load i32, ptr %i.h, align 16, !tbaa !5
  %.promoted13.i = load i32, ptr %i.i, align 4, !tbaa !5
  %.promoted15.i = load i32, ptr %i.j, align 4, !tbaa !5
  %.promoted17.i = load i32, ptr %i.k, align 4, !tbaa !5
  %.promoted19.i = load i32, ptr %i.l, align 4, !tbaa !5
  %.promoted21.i = load i32, ptr %i.m, align 8, !tbaa !5
  %.promoted23.i = load i32, ptr %i.n, align 8, !tbaa !5
  %.promoted25.i = load i32, ptr %i.o, align 8, !tbaa !5
  %.promoted27.i = load i32, ptr %i.p, align 8, !tbaa !5
  %.promoted29.i = load i32, ptr %i.q, align 4, !tbaa !5
  %.promoted31.i = load i32, ptr %i.r, align 4, !tbaa !5
  %.promoted33.i = load i32, ptr %i.s, align 4, !tbaa !5
  %.promoted35.i = load i32, ptr %i.t, align 4, !tbaa !5
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %.037.i = phi i32 [ 8, %.preheader ], [ %i.fk, %bb.b ] ; 2 uses
  %i.bc = phi i32 [ %.promoted.i, %.preheader ], [ %i.dz, %bb.b ] ; 3 uses
  %i.bd = phi i32 [ %.promoted7.i, %.preheader ], [ %i.fa, %bb.b ] ; 2 uses
  %i.be = phi i32 [ %.promoted9.i, %.preheader ], [ %i.ei, %bb.b ]
  %i.bf = phi i32 [ %.promoted11.i, %.preheader ], [ %i.er, %bb.b ]
  %i.bg = phi i32 [ %.promoted13.i, %.preheader ], [ %i.el, %bb.b ] ; 3 uses
  %i.bh = phi i32 [ %.promoted15.i, %.preheader ], [ %i.dq, %bb.b ] ; 2 uses
  %i.bi = phi i32 [ %.promoted17.i, %.preheader ], [ %i.eu, %bb.b ]
  %i.bj = phi i32 [ %.promoted19.i, %.preheader ], [ %i.fd, %bb.b ]
  %i.bk = phi i32 [ %.promoted21.i, %.preheader ], [ %i.ex, %bb.b ] ; 3 uses
  %i.bl = phi i32 [ %.promoted23.i, %.preheader ], [ %i.ec, %bb.b ] ; 2 uses
  %i.bm = phi i32 [ %.promoted25.i, %.preheader ], [ %i.fg, %bb.b ]
  %i.bn = phi i32 [ %.promoted27.i, %.preheader ], [ %i.dt, %bb.b ]
  %i.bo = phi i32 [ %.promoted29.i, %.preheader ], [ %i.fj, %bb.b ] ; 3 uses
  %i.bp = phi i32 [ %.promoted31.i, %.preheader ], [ %i.eo, %bb.b ] ; 2 uses
  %i.bq = phi i32 [ %.promoted33.i, %.preheader ], [ %i.dw, %bb.b ]
  %i.br = phi i32 [ %.promoted35.i, %.preheader ], [ %i.ef, %bb.b ]
  %i.bs = add i32 %i.bd, %i.bc                    ; 2 uses
  %i.bt = call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 7)
  %i.bu = xor i32 %i.bt, %i.be                    ; 4 uses
  %i.bv = add i32 %i.bu, %i.bc                    ; 2 uses
  %i.bw = call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 9)
  %i.bx = xor i32 %i.bw, %i.bf                    ; 3 uses
  %i.by = add i32 %i.bx, %i.bu                    ; 2 uses
  %i.bz = call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 13)
  %i.ca = xor i32 %i.bz, %i.bd                    ; 2 uses
  %i.cb = add i32 %i.ca, %i.bx                    ; 2 uses
  %i.cc = call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 18)
  %i.cd = xor i32 %i.cc, %i.bc                    ; 3 uses
  %i.ce = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.cf = call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 7)
  %i.cg = xor i32 %i.cf, %i.bi                    ; 4 uses
  %i.ch = add i32 %i.cg, %i.bg                    ; 2 uses
  %i.ci = call i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 9)
  %i.cj = xor i32 %i.ci, %i.bj                    ; 3 uses
  %i.ck = add i32 %i.cj, %i.cg                    ; 2 uses
  %i.cl = call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 13)
  %i.cm = xor i32 %i.cl, %i.bh                    ; 2 uses
  %i.cn = add i32 %i.cm, %i.cj                    ; 2 uses
  %i.co = call i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cn, i32 18)
  %i.cp = xor i32 %i.co, %i.bg                    ; 3 uses
  %i.cq = add i32 %i.bl, %i.bk                    ; 2 uses
  %i.cr = call i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 7)
  %i.cs = xor i32 %i.cr, %i.bm                    ; 4 uses
  %i.ct = add i32 %i.cs, %i.bk                    ; 2 uses
  %i.cu = call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 9)
  %i.cv = xor i32 %i.cu, %i.bn                    ; 3 uses
  %i.cw = add i32 %i.cv, %i.cs                    ; 2 uses
  %i.cx = call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 13)
  %i.cy = xor i32 %i.cx, %i.bl                    ; 2 uses
  %i.cz = add i32 %i.cy, %i.cv                    ; 2 uses
  %i.da = call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 18)
  %i.db = xor i32 %i.da, %i.bk                    ; 3 uses
  %i.dc = add i32 %i.bp, %i.bo                    ; 2 uses
  %i.dd = call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 7)
  %i.de = xor i32 %i.dd, %i.bq                    ; 4 uses
  %i.df = add i32 %i.de, %i.bo                    ; 2 uses
  %i.dg = call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 9)
  %i.dh = xor i32 %i.dg, %i.br                    ; 3 uses
  %i.di = add i32 %i.dh, %i.de                    ; 2 uses
  %i.dj = call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 13)
  %i.dk = xor i32 %i.dj, %i.bp                    ; 2 uses
  %i.dl = add i32 %i.dk, %i.dh                    ; 2 uses
  %i.dm = call i32 @llvm.fshl.i32(i32 %i.dl, i32 %i.dl, i32 18)
  %i.dn = xor i32 %i.dm, %i.bo                    ; 3 uses
  %i.do = add i32 %i.de, %i.cd                    ; 2 uses
  %i.dp = call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 7)
  %i.dq = xor i32 %i.dp, %i.cm                    ; 5 uses
  %i.dr = add i32 %i.dq, %i.cd                    ; 2 uses
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 9)
  %i.dt = xor i32 %i.ds, %i.cv                    ; 5 uses
  %i.du = add i32 %i.dt, %i.dq                    ; 2 uses
  %i.dv = call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 13)
  %i.dw = xor i32 %i.dv, %i.de                    ; 4 uses
  %i.dx = add i32 %i.dw, %i.dt                    ; 2 uses
  %i.dy = call i32 @llvm.fshl.i32(i32 %i.dx, i32 %i.dx, i32 18)
  %i.dz = xor i32 %i.dy, %i.cd                    ; 3 uses
  %i.ea = add i32 %i.cp, %i.bu                    ; 2 uses
  %i.eb = call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 7)
  %i.ec = xor i32 %i.eb, %i.cy                    ; 5 uses
  %i.ed = add i32 %i.ec, %i.cp                    ; 2 uses
  %i.ee = call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 9)
  %i.ef = xor i32 %i.ee, %i.dh                    ; 5 uses
  %i.eg = add i32 %i.ef, %i.ec                    ; 2 uses
  %i.eh = call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 13)
  %i.ei = xor i32 %i.eh, %i.bu                    ; 4 uses
  %i.ej = add i32 %i.ei, %i.ef                    ; 2 uses
  %i.ek = call i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 18)
  %i.el = xor i32 %i.ek, %i.cp                    ; 3 uses
  %i.em = add i32 %i.db, %i.cg                    ; 2 uses
  %i.en = call i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 7)
  %i.eo = xor i32 %i.en, %i.dk                    ; 5 uses
  %i.ep = add i32 %i.eo, %i.db                    ; 2 uses
  %i.eq = call i32 @llvm.fshl.i32(i32 %i.ep, i32 %i.ep, i32 9)
  %i.er = xor i32 %i.eq, %i.bx                    ; 5 uses
  %i.es = add i32 %i.er, %i.eo                    ; 2 uses
  %i.et = call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 13)
  %i.eu = xor i32 %i.et, %i.cg                    ; 4 uses
  %i.ev = add i32 %i.eu, %i.er                    ; 2 uses
  %i.ew = call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 18)
  %i.ex = xor i32 %i.ew, %i.db                    ; 3 uses
  %i.ey = add i32 %i.dn, %i.cs                    ; 2 uses
  %i.ez = call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 7)
  %i.fa = xor i32 %i.ez, %i.ca                    ; 5 uses
  %i.fb = add i32 %i.fa, %i.dn                    ; 2 uses
  %i.fc = call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 9)
  %i.fd = xor i32 %i.fc, %i.cj                    ; 5 uses
  %i.fe = add i32 %i.fd, %i.fa                    ; 2 uses
  %i.ff = call i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 13)
  %i.fg = xor i32 %i.ff, %i.cs                    ; 4 uses
  %i.fh = add i32 %i.fg, %i.fd                    ; 2 uses
  %i.fi = call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 18)
  %i.fj = xor i32 %i.fi, %i.dn                    ; 3 uses
  %i.fk = add nsw i32 %.037.i, -2
  %i.fl = icmp samesign ugt i32 %.037.i, 2
  br i1 %i.fl, label %bb.b, label %salsa208_word_specification.exit, !llvm.loop !43

salsa208_word_specification.exit:                 ; preds = %bb.b
  %i.fm = getelementptr inbounds nuw i8, ptr %.034, i64 64
  store i32 %i.dz, ptr %i.a, align 16, !tbaa !5
  store i32 %i.fa, ptr %i.f, align 16, !tbaa !5
  store i32 %i.ei, ptr %i.g, align 16, !tbaa !5
  store i32 %i.er, ptr %i.h, align 16, !tbaa !5
  store i32 %i.el, ptr %i.i, align 4, !tbaa !5
  store i32 %i.dq, ptr %i.j, align 4, !tbaa !5
  store i32 %i.eu, ptr %i.k, align 4, !tbaa !5
  store i32 %i.fd, ptr %i.l, align 4, !tbaa !5
  store i32 %i.ex, ptr %i.m, align 8, !tbaa !5
  store i32 %i.ec, ptr %i.n, align 8, !tbaa !5
  store i32 %i.fg, ptr %i.o, align 8, !tbaa !5
  store i32 %i.dt, ptr %i.p, align 8, !tbaa !5
  store i32 %i.fj, ptr %i.q, align 4, !tbaa !5
  store i32 %i.eo, ptr %i.r, align 4, !tbaa !5
  store i32 %i.dw, ptr %i.s, align 4, !tbaa !5
  store i32 %i.ef, ptr %i.t, align 4, !tbaa !5
  %i.fn = load <4 x i32>, ptr %i.b, align 16, !tbaa !5
  %i.fo = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.dq, i64 1
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.dt, i64 2
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.dw, i64 3
  %i.fs = add <4 x i32> %i.fn, %i.fr              ; 5 uses
  %i.ft = extractelement <4 x i32> %i.fs, i64 0
  store i32 %i.ft, ptr %i.b, align 16, !tbaa !5
  %i.fu = extractelement <4 x i32> %i.fs, i64 1
  store i32 %i.fu, ptr %i.u, align 4, !tbaa !5
  %i.fv = extractelement <4 x i32> %i.fs, i64 2
  store i32 %i.fv, ptr %i.v, align 8, !tbaa !5
  %i.fw = extractelement <4 x i32> %i.fs, i64 3
  store i32 %i.fw, ptr %i.w, align 4, !tbaa !5
  %i.fx = load <4 x i32>, ptr %i.x, align 16, !tbaa !5
  %i.fy = insertelement <4 x i32> poison, i32 %i.ei, i64 0
  %i.fz = insertelement <4 x i32> %i.fy, i32 %i.el, i64 1
  %i.ga = insertelement <4 x i32> %i.fz, i32 %i.ec, i64 2
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.ef, i64 3
  %i.gc = add <4 x i32> %i.fx, %i.gb              ; 5 uses
  %i.gd = extractelement <4 x i32> %i.gc, i64 0
  store i32 %i.gd, ptr %i.x, align 16, !tbaa !5
  %i.ge = extractelement <4 x i32> %i.gc, i64 1
  store i32 %i.ge, ptr %i.y, align 4, !tbaa !5
  %i.gf = extractelement <4 x i32> %i.gc, i64 2
  store i32 %i.gf, ptr %i.z, align 8, !tbaa !5
  %i.gg = extractelement <4 x i32> %i.gc, i64 3
  store i32 %i.gg, ptr %i.aa, align 4, !tbaa !5
  %i.gh = load <4 x i32>, ptr %i.ab, align 16, !tbaa !5
  %i.gi = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %i.gj = insertelement <4 x i32> %i.gi, i32 %i.eu, i64 1
  %i.gk = insertelement <4 x i32> %i.gj, i32 %i.ex, i64 2
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.eo, i64 3
  %i.gm = add <4 x i32> %i.gh, %i.gl              ; 5 uses
  %i.gn = extractelement <4 x i32> %i.gm, i64 0
  store i32 %i.gn, ptr %i.ab, align 16, !tbaa !5
  %i.go = extractelement <4 x i32> %i.gm, i64 1
  store i32 %i.go, ptr %i.ac, align 4, !tbaa !5
  %i.gp = extractelement <4 x i32> %i.gm, i64 2
  store i32 %i.gp, ptr %i.ad, align 8, !tbaa !5
  %i.gq = extractelement <4 x i32> %i.gm, i64 3
  store i32 %i.gq, ptr %i.ae, align 4, !tbaa !5
  %i.gr = load <4 x i32>, ptr %i.af, align 16, !tbaa !5
  %i.gs = insertelement <4 x i32> poison, i32 %i.fa, i64 0
  %i.gt = insertelement <4 x i32> %i.gs, i32 %i.fd, i64 1
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.fg, i64 2
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.fj, i64 3
  %i.gw = add <4 x i32> %i.gr, %i.gv              ; 5 uses
  %i.gx = extractelement <4 x i32> %i.gw, i64 0
  store i32 %i.gx, ptr %i.af, align 16, !tbaa !5
  %i.gy = extractelement <4 x i32> %i.gw, i64 1
  store i32 %i.gy, ptr %i.ag, align 4, !tbaa !5
  %i.gz = extractelement <4 x i32> %i.gw, i64 2
  store i32 %i.gz, ptr %i.ah, align 8, !tbaa !5
  %i.ha = extractelement <4 x i32> %i.gw, i64 3
  store i32 %i.ha, ptr %i.ai, align 4, !tbaa !5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.hb = lshr i64 %.01433, 1
  %i.hc = trunc i64 %.01433 to i1
  %i.hd = select i1 %i.hc, i64 %2, i64 0
  %i.he = add i64 %i.hd, %i.hb
  %.idx15 = shl i64 %i.he, 6
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.hf, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.hg = add nuw i64 %.01433, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hg, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !44

._crit_edge:                                      ; preds = %salsa208_word_specification.exit, %bb.a
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_uint64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @set_property_query(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 175) #6
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 178) #6 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_PARAM_locate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !13, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !15, i64 80}
!11 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"p1 _ZTS9evp_md_st", !12, i64 0}
!16 = !{!10, !14, i64 48}
!17 = !{!10, !14, i64 56}
!18 = !{!10, !14, i64 64}
!19 = !{!10, !14, i64 72}
!20 = !{!10, !15, i64 80}
!21 = !{!10, !13, i64 8}
!22 = !{!10, !13, i64 32}
!23 = !{!10, !14, i64 40}
!24 = !{!10, !13, i64 16}
!25 = !{!10, !14, i64 24}
!26 = !{!14, !14, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !28, !34, !35}
!37 = !{!38, !13, i64 0}
!38 = !{!"ossl_param_st", !13, i64 0, !6, i64 8, !12, i64 16, !14, i64 24, !14, i64 32}
!39 = !{!13, !13, i64 0}
!40 = !{!38, !14, i64 24}
!41 = !{!38, !12, i64 16}
!42 = !{!38, !6, i64 8}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
end_hunk_0
