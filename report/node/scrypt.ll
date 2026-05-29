inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@kdf_scrypt_dup:bb.a

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
define internal void @kdf_scrypt_reset(ptr noundef captures(none) initializes((48, 80)) %0) #0 {
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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17  ; 17 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 6 uses
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
  %i.aw = shl i64 %i.aa, 5                        ; 12 uses
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
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ar ; 20 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aw ; 9 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aw ; 4 uses
  %i.bj = trunc i64 %i.u to i32                   ; 2 uses
  %i.bk = trunc i64 %i.w to i32
  %i.bl = trunc nuw nsw i64 %i.ar to i32          ; 2 uses
  %i.bm = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef %i.r, i32 noundef %i.bk, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.bl, ptr noundef nonnull %i.be, ptr noundef %i.af, ptr noundef %i.ah) #6
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w
  %i.bo = shl i64 %i.aa, 7                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.bp = sub i64 0, %i.aw
  %i.bq = shl nuw nsw i64 %i.y, 5
  %i.br = add nsw i64 %i.bq, -32
  %i.bs = mul i64 %i.br, %i.aa
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bo
  %i.bv = getelementptr i8, ptr %i.bu, i64 -64
  br i1 %.not.i.i, label %.preheader69.i.us.i, label %.lr.ph.i.preheader.i.preheader

.lr.ph.i.preheader.i.preheader:                   ; preds = %.preheader.i
  %i.bw = mul i64 %i.ac, %i.aa
  %i.bx = shl i64 %i.aa, 7
  %i.by = shl i64 %i.y, 7
  %i.bz = shl i64 %i.bw, 7
  %diff.check49 = icmp eq i64 %i.bo, 0
  br label %.lr.ph.i.preheader.i

.preheader69.i.us.i:                              ; preds = %.preheader.i, %scryptROMix.exit.loopexit.us.i
  %.07195.us.i = phi i64 [ %i.cc, %scryptROMix.exit.loopexit.us.i ], [ 0, %.preheader.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader69.i.us.i
  %.16574.i.us.i = phi i64 [ 1, %.preheader69.i.us.i ], [ %i.ca, %bb.x ]
  tail call fastcc void @scryptBlockMix(ptr noundef %i.bi, ptr noundef %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.ca = add nuw i64 %.16574.i.us.i, 1           ; 2 uses
  %exitcond86.not.i.us.i = icmp eq i64 %i.ca, %i.y
  br i1 %exitcond86.not.i.us.i, label %.split.i.preheader.us.i, label %bb.x, !llvm.loop !27

.split.i.preheader.us.i:                          ; preds = %bb.x
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.split.i.us.i

.split.i.us.i:                                    ; preds = %.split.i.us.i, %.split.i.preheader.us.i
  %.26679.i.us.i = phi i64 [ %i.cb, %.split.i.us.i ], [ 0, %.split.i.preheader.us.i ]
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.cb = add nuw i64 %.26679.i.us.i, 1           ; 2 uses
  %exitcond89.not.i.us.i = icmp eq i64 %i.cb, %i.y
  br i1 %exitcond89.not.i.us.i, label %scryptROMix.exit.loopexit.us.i, label %.split.i.us.i, !llvm.loop !29

scryptROMix.exit.loopexit.us.i:                   ; preds = %.split.i.us.i
  %i.cc = add nuw i64 %.07195.us.i, 1             ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.cc, %i.ac
  br i1 %exitcond97.not.i, label %.split.us.i, label %.preheader69.i.us.i, !llvm.loop !30

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.preheader, %scryptROMix.exit.loopexit94.i
  %.07195.i = phi i64 [ %i.gf, %scryptROMix.exit.loopexit94.i ], [ 0, %.lr.ph.i.preheader.i.preheader ] ; 3 uses
  %i.cd = mul i64 %i.bx, %.07195.i
  %i.ce = mul i64 %.07195.i, %i.bo
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ce ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.072.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %i.cf, %.lr.ph.i.preheader.i ] ; 5 uses
  %.06171.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.preheader.i ] ; 5 uses
  %.06470.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 1
  %i.ch = load i8, ptr %.072.i.i, align 1, !tbaa !31
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  store i32 %i.ci, ptr %.06171.i.i, align 4, !tbaa !5
  %i.cj = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 2
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !31
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = or disjoint i32 %i.cm, %i.ci            ; 2 uses
  store i32 %i.cn, ptr %.06171.i.i, align 4, !tbaa !5
  %i.co = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 3
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !31
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 16
  %i.cs = or disjoint i32 %i.cr, %i.cn            ; 2 uses
  store i32 %i.cs, ptr %.06171.i.i, align 4, !tbaa !5
  %i.ct = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 4
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !31
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 24
  %i.cx = or disjoint i32 %i.cw, %i.cs
  store i32 %i.cx, ptr %.06171.i.i, align 4, !tbaa !5
  %i.cy = add nuw i64 %.06470.i.i, 1              ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.06171.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.aw
  br i1 %exitcond.not.i.i, label %.preheader69.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !32

.preheader69.i.loopexit.i:                        ; preds = %.lr.ph.i.i, %.preheader69.i.loopexit.i
  %.16275.i.i = phi ptr [ %i.dc, %.preheader69.i.loopexit.i ], [ %i.cz, %.lr.ph.i.i ] ; 3 uses
  %.16574.i.i = phi i64 [ %i.db, %.preheader69.i.loopexit.i ], [ 1, %.lr.ph.i.i ]
  %i.da = getelementptr inbounds [4 x i8], ptr %.16275.i.i, i64 %i.bp
  tail call fastcc void @scryptBlockMix(ptr noundef %.16275.i.i, ptr noundef %i.da, i64 noundef range(i64 1, 0) %i.aa)
  %i.db = add nuw i64 %.16574.i.i, 1              ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.16275.i.i, i64 %i.aw
  %exitcond86.not.i.i = icmp eq i64 %i.db, %i.y
  br i1 %exitcond86.not.i.i, label %.lr.ph78.us.i.preheader.i, label %.preheader69.i.loopexit.i, !llvm.loop !27

.lr.ph78.us.i.preheader.i:                        ; preds = %.preheader69.i.loopexit.i
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.lr.ph78.us.i.i.a

.lr.ph78.us.i.i.a:                                ; preds = %._crit_edge.us.i.i, %.lr.ph78.us.i.preheader.i
  %.26679.us.i.i = phi i64 [ %i.et, %._crit_edge.us.i.i ], [ 0, %.lr.ph78.us.i.preheader.i ]
  %4 = load i32, ptr %i.bv, align 4, !tbaa !5
  %5 = zext i32 %4 to i64                         ; 3 uses
  %6 = urem i64 %5, %i.y
  %7 = mul i64 %6, %i.aw
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %7 ; 2 uses
  %9 = udiv i64 %5, %i.y
  %i.dd = mul i64 %i.by, %9
  %i.de = add i64 %i.dd, -128
  %i.df = shl nuw nsw i64 %5, 7
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = mul i64 %i.aa, %i.dg
  %diff.check50 = icmp eq i64 %i.dh, 0
  %conflict.rdx = or i1 %diff.check49, %diff.check50
  br i1 %conflict.rdx, label %scalar.ph51, label %vector.body56

vector.body56:                                    ; preds = %.lr.ph78.us.i.i.a, %vector.body56
  %index57 = phi i64 [ %index.next63, %vector.body56 ], [ 0, %.lr.ph78.us.i.i.a ] ; 4 uses
  %i.di = shl i64 %index57, 2
  %next.gep58 = getelementptr i8, ptr %8, i64 %i.di ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index57 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load59 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !5
  %wide.load60 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !5
  %i.dl = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load61 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !5
  %wide.load62 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !5
  %i.dm = xor <4 x i32> %wide.load61, %wide.load59
  %i.dn = xor <4 x i32> %wide.load62, %wide.load60
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index57 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !5
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !5
  %index.next63 = add nuw i64 %index57, 8         ; 2 uses
  %i.dq = icmp eq i64 %index.next63, %i.aw
  br i1 %i.dq, label %._crit_edge.us.i.i, label %vector.body56, !llvm.loop !33

scalar.ph51:                                      ; preds = %.lr.ph78.us.i.i.a, %scalar.ph51
  %.277.us.i.i = phi ptr [ %i.eo, %scalar.ph51 ], [ %8, %.lr.ph78.us.i.i.a ] ; 5 uses
  %.06376.us.i.i = phi i64 [ %i.es, %scalar.ph51 ], [ 0, %.lr.ph78.us.i.i.a ] ; 6 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.06376.us.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !5
  %i.dt = getelementptr inbounds nuw i8, ptr %.277.us.i.i, i64 4
  %i.du = load i32, ptr %.277.us.i.i, align 4, !tbaa !5
  %i.dv = xor i32 %i.du, %i.ds
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.06376.us.i.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !5
  %i.dx = or disjoint i64 %.06376.us.i.i, 1       ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !5
  %i.ea = getelementptr inbounds nuw i8, ptr %.277.us.i.i, i64 8
  %i.eb = load i32, ptr %i.dt, align 4, !tbaa !5
  %i.ec = xor i32 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dx
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !5
  %i.ee = or disjoint i64 %.06376.us.i.i, 2       ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !5
  %i.eh = getelementptr inbounds nuw i8, ptr %.277.us.i.i, i64 12
  %i.ei = load i32, ptr %i.ea, align 4, !tbaa !5
  %i.ej = xor i32 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ee
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !5
  %i.el = or disjoint i64 %.06376.us.i.i, 3       ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !5
  %i.eo = getelementptr inbounds nuw i8, ptr %.277.us.i.i, i64 16
  %i.ep = load i32, ptr %i.eh, align 4, !tbaa !5
  %i.eq = xor i32 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.el
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !5
  %i.es = add nuw i64 %.06376.us.i.i, 4           ; 2 uses
  %exitcond87.not.i.i.3 = icmp eq i64 %i.es, %i.aw
  br i1 %exitcond87.not.i.i.3, label %._crit_edge.us.i.i, label %scalar.ph51, !llvm.loop !36

._crit_edge.us.i.i:                               ; preds = %vector.body56, %scalar.ph51
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.et = add nuw i64 %.26679.us.i.i, 1           ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %i.et, %i.y
  br i1 %exitcond88.not.i.i, label %vector.memcheck, label %.lr.ph78.us.i.i.a, !llvm.loop !29

vector.memcheck:                                  ; preds = %._crit_edge.us.i.i
  %diff.check = icmp eq i64 %i.cd, %i.bz
  br i1 %diff.check, label %.lr.ph82.i.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.eu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.eu ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load = load <4 x i32>, ptr %i.ev, align 4, !tbaa !5
  %wide.load46 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !5
  %i.ex = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load46, ptr %i.ex, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %i.aw
  br i1 %i.ey, label %scryptROMix.exit.loopexit94.i, label %vector.body, !llvm.loop !37

.lr.ph82.i.i:                                     ; preds = %vector.memcheck, %.lr.ph82.i.i
  %.181.i.i = phi ptr [ %i.gd, %.lr.ph82.i.i ], [ %i.cf, %vector.memcheck ] ; 9 uses
  %.380.i.i = phi i64 [ %i.ge, %.lr.ph82.i.i ], [ 0, %vector.memcheck ] ; 9 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !5
  store i32 %i.fa, ptr %.181.i.i, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !5
  store i32 %i.fe, ptr %i.fb, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 8
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !5
  store i32 %i.fi, ptr %i.ff, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 12
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !5
  store i32 %i.fm, ptr %i.fj, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 16
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !5
  store i32 %i.fq, ptr %i.fn, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 20
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !5
  store i32 %i.fu, ptr %i.fr, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 24
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !5
  store i32 %i.fy, ptr %i.fv, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 28
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.380.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 28
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !5
  store i32 %i.gc, ptr %i.fz, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 32
  %i.ge = add nuw i64 %.380.i.i, 8                ; 2 uses
  %exitcond90.not.i.i.7 = icmp eq i64 %i.ge, %i.aw
  br i1 %exitcond90.not.i.i.7, label %scryptROMix.exit.loopexit94.i, label %.lr.ph82.i.i, !llvm.loop !38

scryptROMix.exit.loopexit94.i:                    ; preds = %vector.body, %.lr.ph82.i.i
  %i.gf = add nuw i64 %.07195.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gf, %i.ac
  br i1 %exitcond.not.i, label %.split.us.i, label %.lr.ph.i.preheader.i, !llvm.loop !30

.split.us.i:                                      ; preds = %scryptROMix.exit.loopexit94.i, %scryptROMix.exit.loopexit.us.i
  %i.gg = trunc i64 %2 to i32
  %i.gh = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef nonnull %i.be, i32 noundef %i.bl, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.gg, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef %i.ah) #6
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.thread.i, label %bb.y

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
define internal noundef nonnull ptr @kdf_scrypt_settable_ctx_params(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #1 {
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
  %i.c = load ptr, ptr %1, align 8, !tbaa !39
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.d = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #6 ; 4 uses
  %.not46 = icmp eq ptr %i.d, null
  br i1 %.not46, label %scrypt_set_membuf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.h = load i64, ptr %i.f, align 8, !tbaa !26
  tail call void @CRYPTO_clear_free(ptr noundef %i.g, i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 148) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.j = load i64, ptr %i.i, align 8, !tbaa !42
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 153) #6 ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !41
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ossl_param_is_empty.exit.thread, label %scrypt_set_membuf.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
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
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !41
  %i.u = load i64, ptr %i.s, align 8, !tbaa !26
  tail call void @CRYPTO_clear_free(ptr noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str, i32 noundef 148) #6
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 153) #6 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !41
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ossl_param_is_empty.exit.thread, label %scrypt_set_membuf.exit62

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
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
end_hunk_0
