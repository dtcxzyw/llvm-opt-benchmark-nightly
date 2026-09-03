Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/scrypt?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@kdf_scrypt_free:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 86) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @EVP_MD_free(ptr noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef 97) #7
  store ptr null, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  tail call void @CRYPTO_clear_free(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 99) #7
  store ptr null, ptr %i.g, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1048576, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 8, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1074790400, ptr %i.n, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 89) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kdf_scrypt_reset(ptr nofree noundef captures(none) initializes((48, 80)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 97) #7
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  tail call void @CRYPTO_clear_free(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 99) #7
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1048576, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 8, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1074790400, ptr %i.j, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_scrypt_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %scrypt_alg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @kdf_scrypt_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %scrypt_alg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @__func__.kdf_scrypt_derive) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 130, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 202, ptr noundef nonnull @__func__.kdf_scrypt_derive) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %set_digest.exit

bb.h:                                             ; preds = %bb.g
  tail call void @EVP_MD_free(ptr noundef null) #7
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = tail call ptr @EVP_MD_fetch(ptr noundef %i.l, ptr noundef nonnull @.str.1, ptr noundef %i.n) #7 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !19
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %set_digest.exit.thread, label %.set_digest.exit_crit_edge

.set_digest.exit_crit_edge:                       ; preds = %bb.h
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !23
  %.pre26 = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %set_digest.exit

set_digest.exit.thread:                           ; preds = %bb.h
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @__func__.set_digest) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 147, ptr noundef null) #7
  br label %scrypt_alg.exit

set_digest.exit:                                  ; preds = %.set_digest.exit_crit_edge, %bb.g
  %i.q = phi ptr [ %i.o, %.set_digest.exit_crit_edge ], [ %i.j, %bb.g ] ; 2 uses
  %i.r = phi ptr [ %.pre26, %.set_digest.exit_crit_edge ], [ %i.g, %bb.g ]
  %i.s = phi ptr [ %.pre, %.set_digest.exit_crit_edge ], [ %i.d, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15   ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16  ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.af = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
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
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 447, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = shl i64 %i.aa, 4                        ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 63
  %.highbits.i = lshr i64 %i.y, %i.ao
  %.not82.i = icmp eq i64 %.highbits.i, 0
  %or.cond84.i = select i1 %i.ap, i1 true, i1 %.not82.i
  br i1 %or.cond84.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 458, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.m:                                             ; preds = %bb.k
  %i.aq = shl nuw nsw i64 %i.ac, 7
  %i.ar = mul i64 %i.aq, %i.aa                    ; 5 uses
  %i.as = icmp ugt i64 %i.ar, 2147483647
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 476, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.o:                                             ; preds = %bb.m
  %i.at = add nuw i64 %i.y, 2                     ; 2 uses
  %i.au = udiv i64 144115188075855871, %i.aa
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 486, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.q:                                             ; preds = %bb.o
  %i.aw = shl i64 %i.aa, 5                        ; 12 uses
  %i.ax = shl nuw nsw i64 %i.at, 2
  %i.ay = mul i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = xor i64 %i.ay, -1
  %i.ba = icmp ugt i64 %i.ar, %i.az
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 493, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.s:                                             ; preds = %bb.q
  %i.bb = add i64 %i.ar, %i.ay                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.ae
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 502, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = icmp eq ptr %1, null
  br i1 %i.bd, label %scrypt_alg.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 510) #7 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %scrypt_alg.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ar ; 12 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aw ; 9 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aw ; 4 uses
  %i.bj = trunc i64 %i.u to i32                   ; 2 uses
  %i.bk = trunc i64 %i.w to i32
  %i.bl = trunc nuw nsw i64 %i.ar to i32          ; 2 uses
  %i.bm = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef %i.r, i32 noundef %i.bk, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.bl, ptr noundef nonnull %i.be, ptr noundef %i.af, ptr noundef %i.ah) #7
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
  br i1 %.not.i.i, label %.preheader69.i.us.i, label %.lr.ph.i.preheader.i.preheader

.lr.ph.i.preheader.i.preheader:                   ; preds = %.preheader.i
  %min.iters.check51 = icmp ult i64 %i.aw, 44
  br label %.lr.ph.i.preheader.i

.preheader69.i.us.i:                              ; preds = %.preheader.i, %scryptROMix.exit.loopexit.us.i
  %.095.us.i = phi i64 [ %i.by, %scryptROMix.exit.loopexit.us.i ], [ 0, %.preheader.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader69.i.us.i
  %.16375.i.us.i = phi i64 [ 1, %.preheader69.i.us.i ], [ %i.bw, %bb.x ]
  tail call fastcc void @scryptBlockMix(ptr noundef %i.bi, ptr noundef %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.bw = add nuw i64 %.16375.i.us.i, 1           ; 2 uses
  %exitcond86.not.i.us.i = icmp eq i64 %i.bw, %i.y
  br i1 %exitcond86.not.i.us.i, label %.split.i.preheader.us.i, label %bb.x, !llvm.loop !32

.split.i.preheader.us.i:                          ; preds = %bb.x
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.split.i.us.i

.split.i.us.i:                                    ; preds = %.split.i.us.i, %.split.i.preheader.us.i
  %.279.i.us.i = phi i64 [ %i.bx, %.split.i.us.i ], [ 0, %.split.i.preheader.us.i ]
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.bx = add nuw i64 %.279.i.us.i, 1             ; 2 uses
  %exitcond89.not.i.us.i = icmp eq i64 %i.bx, %i.y
  br i1 %exitcond89.not.i.us.i, label %scryptROMix.exit.loopexit.us.i, label %.split.i.us.i, !llvm.loop !33

scryptROMix.exit.loopexit.us.i:                   ; preds = %.split.i.us.i
  %i.by = add nuw nsw i64 %.095.us.i, 1           ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.by, %i.ac
  br i1 %exitcond97.not.i, label %.split.us.i, label %.preheader69.i.us.i, !llvm.loop !34

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.preheader, %scryptROMix.exit.loopexit94.i
  %.095.i = phi i64 [ %i.ds, %scryptROMix.exit.loopexit94.i ], [ 0, %.lr.ph.i.preheader.i.preheader ] ; 2 uses
  %i.bz = mul i64 %.095.i, %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bz ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.072.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.ca, %.lr.ph.i.preheader.i ] ; 5 uses
  %.06271.i.i = phi i64 [ %i.ct, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %.06470.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 1
  %i.cc = load i8, ptr %.072.i.i, align 1, !tbaa !27
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  store i32 %i.cd, ptr %.06470.i.i, align 4, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 2
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !27
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.cd            ; 2 uses
  store i32 %i.ci, ptr %.06470.i.i, align 4, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 3
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !27
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 16
  %i.cn = or disjoint i32 %i.cm, %i.ci            ; 2 uses
  store i32 %i.cn, ptr %.06470.i.i, align 4, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 4
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !27
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw i32 %i.cq, 24
  %i.cs = or disjoint i32 %i.cr, %i.cn
  store i32 %i.cs, ptr %.06470.i.i, align 4, !tbaa !28
  %i.ct = add nuw i64 %.06271.i.i, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.06470.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.aw
  br i1 %exitcond.not.i.i, label %.preheader69.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !35

.preheader69.i.loopexit.i:                        ; preds = %.lr.ph.i.i, %.preheader69.i.loopexit.i
  %.16375.i.i = phi i64 [ %i.cw, %.preheader69.i.loopexit.i ], [ 1, %.lr.ph.i.i ]
  %.16574.i.i = phi ptr [ %i.cx, %.preheader69.i.loopexit.i ], [ %i.cu, %.lr.ph.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.16574.i.i, i64 %i.bp
  tail call fastcc void @scryptBlockMix(ptr noundef %.16574.i.i, ptr noundef %i.cv, i64 noundef range(i64 1, 0) %i.aa)
  %i.cw = add nuw i64 %.16375.i.i, 1              ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.16574.i.i, i64 %i.aw
  %exitcond86.not.i.i = icmp eq i64 %i.cw, %i.y
  br i1 %exitcond86.not.i.i, label %.lr.ph78.us.i.preheader.i, label %.preheader69.i.loopexit.i, !llvm.loop !32

.lr.ph78.us.i.preheader.i:                        ; preds = %.preheader69.i.loopexit.i
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.lr.ph78.us.i.i

.lr.ph78.us.i.i:                                  ; preds = %._crit_edge.us.i.i, %.lr.ph78.us.i.preheader.i
  %.279.us.i.i = phi i64 [ %i.dm, %._crit_edge.us.i.i ], [ 0, %.lr.ph78.us.i.preheader.i ]
  %i.cy = load i32, ptr %i.bv, align 4, !tbaa !28
  %i.cz = zext i32 %i.cy to i64
  %i.da = urem i64 %i.cz, %i.y
  %i.db = mul i64 %i.da, %i.aw
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.db ; 2 uses
  br i1 %min.iters.check51, label %scalar.ph50, label %vector.body54

vector.body54:                                    ; preds = %.lr.ph78.us.i.i, %vector.body54
  %index55 = phi i64 [ %index.next61, %vector.body54 ], [ 0, %.lr.ph78.us.i.i ] ; 4 uses
  %i.dd = shl i64 %index55, 2
  %next.gep56 = getelementptr i8, ptr %i.dc, i64 %i.dd ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index55 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load57 = load <4 x i32>, ptr %i.de, align 4, !tbaa !28
  %wide.load58 = load <4 x i32>, ptr %i.df, align 4, !tbaa !28
  %i.dg = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep56, align 4, !tbaa !28
  %wide.load60 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !28
  %i.dh = xor <4 x i32> %wide.load59, %wide.load57
  %i.di = xor <4 x i32> %wide.load60, %wide.load58
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index55 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !28
  store <4 x i32> %i.di, ptr %i.dk, align 4, !tbaa !28
  %index.next61 = add nuw i64 %index55, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next61, %i.aw
  br i1 %i.dl, label %._crit_edge.us.i.i, label %vector.body54, !llvm.loop !36

scalar.ph50:                                      ; preds = %.lr.ph78.us.i.i, %scalar.ph50
  %.06177.us.i.i = phi i64 [ %31, %scalar.ph50 ], [ 0, %.lr.ph78.us.i.i ] ; 6 uses
  %.26676.us.i.i = phi ptr [ %27, %scalar.ph50 ], [ %i.dc, %.lr.ph78.us.i.i ] ; 5 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.06177.us.i.i
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 4
  %7 = load i32, ptr %.26676.us.i.i, align 4, !tbaa !28
  %8 = xor i32 %7, %5
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.06177.us.i.i
  store i32 %8, ptr %9, align 4, !tbaa !28
  %10 = or disjoint i64 %.06177.us.i.i, 1         ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 8
  %14 = load i32, ptr %6, align 4, !tbaa !28
  %15 = xor i32 %14, %12
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %10
  store i32 %15, ptr %16, align 4, !tbaa !28
  %17 = or disjoint i64 %.06177.us.i.i, 2         ; 2 uses
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !28
  %20 = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 12
  %21 = load i32, ptr %13, align 4, !tbaa !28
  %22 = xor i32 %21, %19
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %17
  store i32 %22, ptr %23, align 4, !tbaa !28
  %24 = or disjoint i64 %.06177.us.i.i, 3         ; 2 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !28
  %27 = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 16
  %28 = load i32, ptr %20, align 4, !tbaa !28
  %29 = xor i32 %28, %26
  %30 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %24
  store i32 %29, ptr %30, align 4, !tbaa !28
  %31 = add nuw i64 %.06177.us.i.i, 4             ; 2 uses
  %exitcond87.not.i.i.3 = icmp eq i64 %31, %i.aw
  br i1 %exitcond87.not.i.i.3, label %._crit_edge.us.i.i, label %scalar.ph50, !llvm.loop !37

._crit_edge.us.i.i:                               ; preds = %vector.body54, %scalar.ph50
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.dm = add nuw i64 %.279.us.i.i, 1             ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %i.dm, %i.y
  br i1 %exitcond88.not.i.i, label %vector.body, label %.lr.ph78.us.i.i, !llvm.loop !33

vector.body:                                      ; preds = %._crit_edge.us.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge.us.i.i ] ; 3 uses
  %i.dn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <4 x i32>, ptr %i.do, align 4, !tbaa !28
  %wide.load45 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !28
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load45, ptr %i.dq, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %i.aw
  br i1 %i.dr, label %scryptROMix.exit.loopexit94.i, label %vector.body, !llvm.loop !38

scryptROMix.exit.loopexit94.i:                    ; preds = %vector.body
  %i.ds = add nuw nsw i64 %.095.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.ac
  br i1 %exitcond.not.i, label %.split.us.i, label %.lr.ph.i.preheader.i, !llvm.loop !34

.split.us.i:                                      ; preds = %scryptROMix.exit.loopexit94.i, %scryptROMix.exit.loopexit.us.i
  %i.dt = trunc i64 %2 to i32
  %i.du = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef nonnull %i.be, i32 noundef %i.bl, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.dt, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef %i.ah) #7
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %.split.us.i, %bb.w
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 531, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 181, ptr noundef null) #7
  br label %bb.y

bb.y:                                             ; preds = %.thread.i, %.split.us.i
  %.07187.i = phi i32 [ 0, %.thread.i ], [ 1, %.split.us.i ]
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.be, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 533) #7
  br label %scrypt_alg.exit

scrypt_alg.exit:                                  ; preds = %bb.y, %bb.v, %bb.u, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %set_digest.exit, %set_digest.exit.thread, %bb.a, %bb.b, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %set_digest.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.07187.i, %bb.y ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %set_digest.exit ], [ 1, %bb.u ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_scrypt_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @scrypt_set_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_scrypt_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %scrypt_set_membuf.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread130, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not4459.i = icmp eq ptr %i.c, null
  br i1 %.not4459.i, label %.thread130, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %i.d = phi ptr [ %i.ap, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.e = phi ptr [ %i.aq, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.f = phi ptr [ %i.ar, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.g = phi ptr [ %i.as, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.h = phi ptr [ %i.at, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.i = phi ptr [ %i.au, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.j = phi ptr [ %i.av, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.k = phi ptr [ %i.ax, %bb.p ], [ %i.c, %.preheader.i ] ; 11 uses
  %.04160.i = phi ptr [ %i.aw, %bb.p ], [ %1, %.preheader.i ] ; 15 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  switch i8 %i.l, label %bb.p [
    i8 109, label %bb.c
    i8 110, label %bb.e
    i8 112, label %bb.g
    i8 114, label %bb.l
    i8 115, label %bb.n
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.10, ptr noundef nonnull dereferenceable(1) %i.m) #8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.p, !prof !31

bb.d:                                             ; preds = %bb.c
  %.not51.i = icmp eq ptr %i.d, null
  br i1 %.not51.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %cond1.i = icmp eq i8 %i.q, 0
  br i1 %cond1.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %.not50.i = icmp eq ptr %i.e, null
  br i1 %.not50.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.g:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  switch i8 %i.s, label %bb.p [
    i8 97, label %sub_0.i
    i8 114, label %bb.i
    i8 0, label %bb.k
  ]

sub_0.i:                                          ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 115, %i.v
  %.not61.i = icmp eq i8 %i.u, 115
  br i1 %.not61.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = sub nsw i32 115, %i.z
  %.not62.i = icmp eq i8 %i.y, 115
  br i1 %.not62.i, label %sub_2.i, label %.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = sub nsw i32 0, %i.ad
  br label %.tail.i

.tail.i:                                          ; preds = %sub_2.i, %sub_1.i, %sub_0.i
  %i.af = phi i32 [ %i.w, %sub_0.i ], [ %i.aa, %sub_1.i ], [ %i.ae, %sub_2.i ]
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.p, !prof !31

bb.h:                                             ; preds = %.tail.i
  %.not49.i = icmp eq ptr %i.f, null
  br i1 %.not49.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.14, ptr noundef nonnull dereferenceable(1) %i.ah) #8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.p, !prof !31

bb.j:                                             ; preds = %bb.i
  %.not48.i = icmp eq ptr %i.g, null
  br i1 %.not48.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.k:                                             ; preds = %bb.g
  %.not47.i = icmp eq ptr %i.h, null
  br i1 %.not47.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.l:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !27
  %cond.i = icmp eq i8 %i.al, 0
  br i1 %cond.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.not46.i = icmp eq ptr %i.i, null
  br i1 %.not46.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.n:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.15, ptr noundef nonnull dereferenceable(1) %i.am) #8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.o, label %bb.p, !prof !31

bb.o:                                             ; preds = %bb.n
  %.not45.i = icmp eq ptr %i.j, null
  br i1 %.not45.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.n, %bb.l, %bb.i, %.tail.i, %bb.g, %bb.e, %bb.c, %.lr.ph.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph.i ], [ %.sroa.0.0, %bb.n ], [ %.sroa.0.0, %bb.c ], [ %.04160.i, %bb.d ], [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %.tail.i ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.k ], [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %bb.o ] ; 3 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0, %.lr.ph.i ], [ %.sroa.5.0, %bb.n ], [ %.sroa.5.0, %bb.c ], [ %.sroa.5.0, %bb.d ], [ %.sroa.5.0, %bb.e ], [ %.sroa.5.0, %bb.g ], [ %.04160.i, %bb.f ], [ %.sroa.5.0, %.tail.i ], [ %.sroa.5.0, %bb.h ], [ %.sroa.5.0, %bb.i ], [ %.sroa.5.0, %bb.j ], [ %.sroa.5.0, %bb.k ], [ %.sroa.5.0, %bb.l ], [ %.sroa.5.0, %bb.m ], [ %.sroa.5.0, %bb.o ] ; 3 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0, %.lr.ph.i ], [ %.sroa.7.0, %bb.n ], [ %.sroa.7.0, %bb.c ], [ %.sroa.7.0, %bb.d ], [ %.sroa.7.0, %bb.e ], [ %.sroa.7.0, %bb.g ], [ %.sroa.7.0, %bb.f ], [ %.sroa.7.0, %.tail.i ], [ %.sroa.7.0, %bb.h ], [ %.sroa.7.0, %bb.i ], [ %.sroa.7.0, %bb.j ], [ %.04160.i, %bb.k ], [ %.sroa.7.0, %bb.l ], [ %.sroa.7.0, %bb.m ], [ %.sroa.7.0, %bb.o ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %.lr.ph.i ], [ %.sroa.9.0, %bb.n ], [ %.sroa.9.0, %bb.c ], [ %.sroa.9.0, %bb.d ], [ %.sroa.9.0, %bb.e ], [ %.sroa.9.0, %bb.g ], [ %.sroa.9.0, %bb.f ], [ %.sroa.9.0, %.tail.i ], [ %.sroa.9.0, %bb.h ], [ %.sroa.9.0, %bb.i ], [ %.04160.i, %bb.j ], [ %.sroa.9.0, %bb.k ], [ %.sroa.9.0, %bb.l ], [ %.sroa.9.0, %bb.m ], [ %.sroa.9.0, %bb.o ] ; 4 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0, %.lr.ph.i ], [ %.sroa.11.0, %bb.n ], [ %.sroa.11.0, %bb.c ], [ %.sroa.11.0, %bb.d ], [ %.sroa.11.0, %bb.e ], [ %.sroa.11.0, %bb.g ], [ %.sroa.11.0, %bb.f ], [ %.sroa.11.0, %.tail.i ], [ %.04160.i, %bb.h ], [ %.sroa.11.0, %bb.i ], [ %.sroa.11.0, %bb.j ], [ %.sroa.11.0, %bb.k ], [ %.sroa.11.0, %bb.l ], [ %.sroa.11.0, %bb.m ], [ %.sroa.11.0, %bb.o ] ; 5 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %.lr.ph.i ], [ %.sroa.13.0, %bb.n ], [ %.sroa.13.0, %bb.c ], [ %.sroa.13.0, %bb.d ], [ %.sroa.13.0, %bb.e ], [ %.sroa.13.0, %bb.g ], [ %.sroa.13.0, %bb.f ], [ %.sroa.13.0, %.tail.i ], [ %.sroa.13.0, %bb.h ], [ %.sroa.13.0, %bb.i ], [ %.sroa.13.0, %bb.j ], [ %.sroa.13.0, %bb.k ], [ %.sroa.13.0, %bb.l ], [ %.04160.i, %bb.m ], [ %.sroa.13.0, %bb.o ] ; 3 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0, %.lr.ph.i ], [ %.sroa.15.0, %bb.n ], [ %.sroa.15.0, %bb.c ], [ %.sroa.15.0, %bb.d ], [ %.sroa.15.0, %bb.e ], [ %.sroa.15.0, %bb.g ], [ %.sroa.15.0, %bb.f ], [ %.sroa.15.0, %.tail.i ], [ %.sroa.15.0, %bb.h ], [ %.sroa.15.0, %bb.i ], [ %.sroa.15.0, %bb.j ], [ %.sroa.15.0, %bb.k ], [ %.sroa.15.0, %bb.l ], [ %.sroa.15.0, %bb.m ], [ %.04160.i, %bb.o ] ; 5 uses
  %i.ap = phi ptr [ %i.d, %.lr.ph.i ], [ %i.d, %bb.n ], [ %i.d, %bb.c ], [ %.04160.i, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %i.d, %.tail.i ], [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.d, %bb.l ], [ %i.d, %bb.m ], [ %i.d, %bb.o ]
  %i.aq = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.n ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.g ], [ %.04160.i, %bb.f ], [ %i.e, %.tail.i ], [ %i.e, %bb.h ], [ %i.e, %bb.i ], [ %i.e, %bb.j ], [ %i.e, %bb.k ], [ %i.e, %bb.l ], [ %i.e, %bb.m ], [ %i.e, %bb.o ]
  %i.ar = phi ptr [ %i.f, %.lr.ph.i ], [ %i.f, %bb.n ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.g ], [ %i.f, %bb.f ], [ %i.f, %.tail.i ], [ %.04160.i, %bb.h ], [ %i.f, %bb.i ], [ %i.f, %bb.j ], [ %i.f, %bb.k ], [ %i.f, %bb.l ], [ %i.f, %bb.m ], [ %i.f, %bb.o ]
  %i.as = phi ptr [ %i.g, %.lr.ph.i ], [ %i.g, %bb.n ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %.tail.i ], [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %.04160.i, %bb.j ], [ %i.g, %bb.k ], [ %i.g, %bb.l ], [ %i.g, %bb.m ], [ %i.g, %bb.o ]
  %i.at = phi ptr [ %i.h, %.lr.ph.i ], [ %i.h, %bb.n ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %.tail.i ], [ %i.h, %bb.h ], [ %i.h, %bb.i ], [ %i.h, %bb.j ], [ %.04160.i, %bb.k ], [ %i.h, %bb.l ], [ %i.h, %bb.m ], [ %i.h, %bb.o ]
  %i.au = phi ptr [ %i.i, %.lr.ph.i ], [ %i.i, %bb.n ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %.tail.i ], [ %i.i, %bb.h ], [ %i.i, %bb.i ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %bb.l ], [ %.04160.i, %bb.m ], [ %i.i, %bb.o ]
  %i.av = phi ptr [ %i.j, %.lr.ph.i ], [ %i.j, %bb.n ], [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.g ], [ %i.j, %bb.f ], [ %i.j, %.tail.i ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ %i.j, %bb.k ], [ %i.j, %bb.l ], [ %i.j, %bb.m ], [ %.04160.i, %bb.o ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.04160.i, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %.not44.i = icmp eq ptr %i.ax, null
  br i1 %.not44.i, label %bb.q, label %.lr.ph.i, !llvm.loop !41

scrypt_set_ctx_params_decoder.exit:               ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o
  %.sink.i = phi i32 [ 115, %bb.m ], [ 102, %bb.k ], [ 93, %bb.j ], [ 82, %bb.h ], [ 67, %bb.f ], [ 54, %bb.d ], [ 126, %bb.o ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.11, i32 noundef %.sink.i, ptr noundef nonnull @__func__.scrypt_set_ctx_params_decoder) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.k) #7
  br label %scrypt_set_membuf.exit.thread

bb.q:                                             ; preds = %bb.p
  %.not32 = icmp eq ptr %.sroa.11.1, null
  br i1 %.not32, label %scrypt_set_membuf.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !25
  tail call void @CRYPTO_clear_free(ptr noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 151) #7
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !43
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bf = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 156) #7 ; 2 uses
  store ptr %i.bf, ptr %i.ay, align 8, !tbaa !42
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %scrypt_set_membuf.exit.thread, label %scrypt_set_membuf.exit

bb.t:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !44
  %.not.i45 = icmp eq ptr %i.bi, null
  br i1 %.not.i45, label %scrypt_set_membuf.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %.sroa.11.1, ptr noundef nonnull %i.ay, i64 noundef 0, ptr noundef nonnull %i.az) #7
  %.not10.i = icmp eq i32 %i.bj, 0
  br i1 %.not10.i, label %scrypt_set_membuf.exit.thread, label %scrypt_set_membuf.exit

scrypt_set_membuf.exit:                           ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %.not34 = icmp eq ptr %.sroa.15.1, null
  br i1 %.not34, label %scrypt_set_membuf.exit50, label %bb.v

bb.v:                                             ; preds = %scrypt_set_membuf.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !25
  tail call void @CRYPTO_clear_free(ptr noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str, i32 noundef 151) #7
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !43
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 156) #7 ; 2 uses
  store ptr %i.br, ptr %i.bk, align 8, !tbaa !42
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %scrypt_set_membuf.exit.thread, label %scrypt_set_membuf.exit50

bb.x:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44
  %.not.i47 = icmp eq ptr %i.bu, null
  br i1 %.not.i47, label %scrypt_set_membuf.exit50, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %.sroa.15.1, ptr noundef nonnull %i.bk, i64 noundef 0, ptr noundef nonnull %i.bl) #7
  %.not10.i48 = icmp eq i32 %i.bv, 0
  br i1 %.not10.i48, label %scrypt_set_membuf.exit.thread, label %scrypt_set_membuf.exit50

scrypt_set_membuf.exit50:                         ; preds = %bb.y, %bb.x, %bb.w, %scrypt_set_membuf.exit
  %.not36 = icmp eq ptr %.sroa.5.1, null
  br i1 %.not36, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %scrypt_set_membuf.exit50
  %i.bw = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %.sroa.5.1, ptr noundef nonnull %i.a) #7
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = load i64, ptr %i.a, align 8             ; 3 uses
  %i.bz = icmp ult i64 %i.by, 2
  %or.cond = select i1 %i.bx, i1 true, i1 %i.bz
  %i.ca = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %i.by)
  %i.cb = icmp samesign ugt i64 %i.ca, 1
  %or.cond134 = select i1 %or.cond, i1 true, i1 %i.cb
  br i1 %or.cond134, label %scrypt_set_membuf.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.by, ptr %i.cc, align 8, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %scrypt_set_membuf.exit50
  %.not38 = icmp eq ptr %.sroa.13.1, null
  br i1 %.not38, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %.sroa.13.1, ptr noundef nonnull %i.a) #7
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %or.cond3 = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %or.cond3, label %scrypt_set_membuf.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.not39 = icmp eq ptr %.sroa.7.1, null
  br i1 %.not39, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %.sroa.7.1, ptr noundef nonnull %i.a) #7
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  %or.cond5 = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %or.cond5, label %scrypt_set_membuf.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.not40 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not40, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %.sroa.0.1, ptr noundef nonnull %i.a) #7
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %or.cond7 = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond7, label %scrypt_set_membuf.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.cp, ptr %i.cr, align 8, !tbaa !18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.not41 = icmp eq ptr %.sroa.9.1, null
  br i1 %.not41, label %.thread130, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.9.1, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !45
  %.not42 = icmp eq i32 %i.ct, 4
  br i1 %.not42, label %bb.am, label %scrypt_set_membuf.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.9.1, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44
  %i.cw = call fastcc i32 @set_property_query(ptr noundef %0, ptr noundef %i.cv)
  %.not43 = icmp eq i32 %i.cw, 0
  br i1 %.not43, label %scrypt_set_membuf.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = call fastcc i32 @set_digest(ptr noundef nonnull %0)
  %.not44 = icmp eq i32 %i.cx, 0
  br i1 %.not44, label %scrypt_set_membuf.exit.thread, label %.thread130

.thread130:                                       ; preds = %bb.b, %.preheader.i, %bb.an, %bb.ak
  br label %scrypt_set_membuf.exit.thread

scrypt_set_membuf.exit.thread:                    ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %scrypt_set_ctx_params_decoder.exit, %bb.al, %bb.am, %bb.an, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.a, %.thread130
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.u ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.ai ], [ 1, %.thread130 ], [ 0, %bb.al ], [ 0, %scrypt_set_ctx_params_decoder.exit ], [ 0, %bb.y ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.s ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_scrypt_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @scrypt_get_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_scrypt_get_ctx_params(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not1215.i = icmp eq ptr %i.b, null
  br i1 %.not1215.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.d ], [ null, %.preheader.i ]
  %i.c = phi ptr [ %i.g, %bb.d ], [ null, %.preheader.i ] ; 2 uses
  %i.d = phi ptr [ %i.i, %bb.d ], [ %i.b, %.preheader.i ] ; 2 uses
  %.0916.i = phi ptr [ %i.h, %bb.d ], [ %1, %.preheader.i ] ; 3 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.16, ptr noundef nonnull dereferenceable(1) %i.d) #8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %.lr.ph.i
  %.not13.i = icmp eq ptr %i.c, null
  br i1 %.not13.i, label %bb.d, label %scrypt_get_ctx_params_decoder.exit, !prof !31

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph.i ], [ %.0916.i, %bb.c ] ; 3 uses
  %i.g = phi ptr [ %i.c, %.lr.ph.i ], [ %.0916.i, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0916.i, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.e, label %.lr.ph.i, !llvm.loop !46

scrypt_get_ctx_params_decoder.exit:               ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.11, i32 noundef 164, ptr noundef nonnull @__func__.scrypt_get_ctx_params_decoder) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.d) #7
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not4 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not4, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %.sroa.0.1, i64 noundef -1) #7
  %.not5 = icmp eq i32 %i.j, 0
  br i1 %.not5, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.b, %.preheader.i, %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %scrypt_get_ctx_params_decoder.exit, %bb.f, %bb.a, %.thread
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.thread ], [ 0, %scrypt_get_ctx_params_decoder.exit ], [ 0, %bb.f ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @EVP_MD_free(ptr noundef %i.b) #7
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = tail call ptr @EVP_MD_fetch(ptr noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef %i.e) #7 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !19
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @__func__.set_digest) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 147, ptr noundef null) #7
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
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
  %i.aj = load <4 x i32>, ptr %i.b, align 16, !tbaa !28
  %i.ak = load <4 x i32>, ptr %i.x, align 16, !tbaa !28
  %i.al = load <4 x i32>, ptr %i.ab, align 16, !tbaa !28
  %i.am = load <4 x i32>, ptr %i.af, align 16, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %salsa208_word_specification.exit
  %.034 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.fm, %salsa208_word_specification.exit ] ; 5 uses
  %.01433 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hg, %salsa208_word_specification.exit ] ; 3 uses
  %i.an = phi <4 x i32> [ %i.aj, %.preheader.lr.ph ], [ %i.fs, %salsa208_word_specification.exit ]
  %i.ao = phi <4 x i32> [ %i.ak, %.preheader.lr.ph ], [ %i.gc, %salsa208_word_specification.exit ]
  %i.ap = phi <4 x i32> [ %i.al, %.preheader.lr.ph ], [ %i.gm, %salsa208_word_specification.exit ]
  %i.aq = phi <4 x i32> [ %i.am, %.preheader.lr.ph ], [ %i.gw, %salsa208_word_specification.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.as = load <4 x i32>, ptr %.034, align 4, !tbaa !28
  %i.at = xor <4 x i32> %i.an, %i.as
  store <4 x i32> %i.at, ptr %i.b, align 16, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.av = load <4 x i32>, ptr %i.ar, align 4, !tbaa !28
  %i.aw = xor <4 x i32> %i.ao, %i.av
  store <4 x i32> %i.aw, ptr %i.x, align 16, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %.034, i64 48
  %i.ay = load <4 x i32>, ptr %i.au, align 4, !tbaa !28
  %i.az = xor <4 x i32> %i.ap, %i.ay
  store <4 x i32> %i.az, ptr %i.ab, align 16, !tbaa !28
  %i.ba = load <4 x i32>, ptr %i.ax, align 4, !tbaa !28
  %i.bb = xor <4 x i32> %i.aq, %i.ba
  store <4 x i32> %i.bb, ptr %i.af, align 16, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  %.promoted.i = load i32, ptr %i.a, align 16, !tbaa !28
  %.promoted7.i = load i32, ptr %i.f, align 16, !tbaa !28
  %.promoted9.i = load i32, ptr %i.g, align 16, !tbaa !28
  %.promoted11.i = load i32, ptr %i.h, align 16, !tbaa !28
  %.promoted13.i = load i32, ptr %i.i, align 4, !tbaa !28
  %.promoted15.i = load i32, ptr %i.j, align 4, !tbaa !28
  %.promoted17.i = load i32, ptr %i.k, align 4, !tbaa !28
  %.promoted19.i = load i32, ptr %i.l, align 4, !tbaa !28
  %.promoted21.i = load i32, ptr %i.m, align 8, !tbaa !28
  %.promoted23.i = load i32, ptr %i.n, align 8, !tbaa !28
  %.promoted25.i = load i32, ptr %i.o, align 8, !tbaa !28
  %.promoted27.i = load i32, ptr %i.p, align 8, !tbaa !28
  %.promoted29.i = load i32, ptr %i.q, align 4, !tbaa !28
  %.promoted31.i = load i32, ptr %i.r, align 4, !tbaa !28
  %.promoted33.i = load i32, ptr %i.s, align 4, !tbaa !28
  %.promoted35.i = load i32, ptr %i.t, align 4, !tbaa !28
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
  br i1 %i.fl, label %bb.b, label %salsa208_word_specification.exit, !llvm.loop !47

salsa208_word_specification.exit:                 ; preds = %bb.b
  %i.fm = getelementptr inbounds nuw i8, ptr %.034, i64 64
  store i32 %i.dz, ptr %i.a, align 16, !tbaa !28
  store i32 %i.fa, ptr %i.f, align 16, !tbaa !28
  store i32 %i.ei, ptr %i.g, align 16, !tbaa !28
  store i32 %i.er, ptr %i.h, align 16, !tbaa !28
  store i32 %i.el, ptr %i.i, align 4, !tbaa !28
  store i32 %i.dq, ptr %i.j, align 4, !tbaa !28
  store i32 %i.eu, ptr %i.k, align 4, !tbaa !28
  store i32 %i.fd, ptr %i.l, align 4, !tbaa !28
  store i32 %i.ex, ptr %i.m, align 8, !tbaa !28
  store i32 %i.ec, ptr %i.n, align 8, !tbaa !28
  store i32 %i.fg, ptr %i.o, align 8, !tbaa !28
  store i32 %i.dt, ptr %i.p, align 8, !tbaa !28
  store i32 %i.fj, ptr %i.q, align 4, !tbaa !28
  store i32 %i.eo, ptr %i.r, align 4, !tbaa !28
  store i32 %i.dw, ptr %i.s, align 4, !tbaa !28
  store i32 %i.ef, ptr %i.t, align 4, !tbaa !28
  %i.fn = load <4 x i32>, ptr %i.b, align 16, !tbaa !28
  %i.fo = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.dq, i64 1
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.dt, i64 2
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.dw, i64 3
  %i.fs = add <4 x i32> %i.fn, %i.fr              ; 5 uses
  %i.ft = extractelement <4 x i32> %i.fs, i64 0
  store i32 %i.ft, ptr %i.b, align 16, !tbaa !28
  %i.fu = extractelement <4 x i32> %i.fs, i64 1
  store i32 %i.fu, ptr %i.u, align 4, !tbaa !28
  %i.fv = extractelement <4 x i32> %i.fs, i64 2
  store i32 %i.fv, ptr %i.v, align 8, !tbaa !28
  %i.fw = extractelement <4 x i32> %i.fs, i64 3
  store i32 %i.fw, ptr %i.w, align 4, !tbaa !28
  %i.fx = load <4 x i32>, ptr %i.x, align 16, !tbaa !28
  %i.fy = insertelement <4 x i32> poison, i32 %i.ei, i64 0
  %i.fz = insertelement <4 x i32> %i.fy, i32 %i.el, i64 1
  %i.ga = insertelement <4 x i32> %i.fz, i32 %i.ec, i64 2
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.ef, i64 3
  %i.gc = add <4 x i32> %i.fx, %i.gb              ; 5 uses
  %i.gd = extractelement <4 x i32> %i.gc, i64 0
  store i32 %i.gd, ptr %i.x, align 16, !tbaa !28
  %i.ge = extractelement <4 x i32> %i.gc, i64 1
  store i32 %i.ge, ptr %i.y, align 4, !tbaa !28
  %i.gf = extractelement <4 x i32> %i.gc, i64 2
  store i32 %i.gf, ptr %i.z, align 8, !tbaa !28
  %i.gg = extractelement <4 x i32> %i.gc, i64 3
  store i32 %i.gg, ptr %i.aa, align 4, !tbaa !28
  %i.gh = load <4 x i32>, ptr %i.ab, align 16, !tbaa !28
  %i.gi = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %i.gj = insertelement <4 x i32> %i.gi, i32 %i.eu, i64 1
  %i.gk = insertelement <4 x i32> %i.gj, i32 %i.ex, i64 2
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.eo, i64 3
  %i.gm = add <4 x i32> %i.gh, %i.gl              ; 5 uses
  %i.gn = extractelement <4 x i32> %i.gm, i64 0
  store i32 %i.gn, ptr %i.ab, align 16, !tbaa !28
  %i.go = extractelement <4 x i32> %i.gm, i64 1
  store i32 %i.go, ptr %i.ac, align 4, !tbaa !28
  %i.gp = extractelement <4 x i32> %i.gm, i64 2
  store i32 %i.gp, ptr %i.ad, align 8, !tbaa !28
  %i.gq = extractelement <4 x i32> %i.gm, i64 3
  store i32 %i.gq, ptr %i.ae, align 4, !tbaa !28
  %i.gr = load <4 x i32>, ptr %i.af, align 16, !tbaa !28
  %i.gs = insertelement <4 x i32> poison, i32 %i.fa, i64 0
  %i.gt = insertelement <4 x i32> %i.gs, i32 %i.fd, i64 1
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.fg, i64 2
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.fj, i64 3
  %i.gw = add <4 x i32> %i.gr, %i.gv              ; 5 uses
  %i.gx = extractelement <4 x i32> %i.gw, i64 0
  store i32 %i.gx, ptr %i.af, align 16, !tbaa !28
  %i.gy = extractelement <4 x i32> %i.gw, i64 1
  store i32 %i.gy, ptr %i.ag, align 4, !tbaa !28
  %i.gz = extractelement <4 x i32> %i.gw, i64 2
  store i32 %i.gz, ptr %i.ah, align 8, !tbaa !28
  %i.ha = extractelement <4 x i32> %i.gw, i64 3
  store i32 %i.ha, ptr %i.ai, align 4, !tbaa !28
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.hb = lshr i64 %.01433, 1
  %i.hc = trunc i64 %.01433 to i1
  %i.hd = select i1 %i.hc, i64 %2, i64 0
  %i.he = add i64 %i.hd, %i.hb
  %.idx15 = shl i64 %i.he, 6
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.hf, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.hg = add nuw i64 %.01433, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hg, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !48

._crit_edge:                                      ; preds = %salsa208_word_specification.exit, %bb.a
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_uint64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @set_property_query(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 178) #7
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 181) #7 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"p1 _ZTS9evp_md_st", !8, i64 0}
!13 = !{!"", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !12, i64 80}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !11, i64 48}
!16 = !{!13, !11, i64 56}
!17 = !{!13, !11, i64 64}
!18 = !{!13, !11, i64 72}
!19 = !{!13, !12, i64 80}
!20 = !{!13, !10, i64 8}
!21 = !{!13, !10, i64 32}
!22 = !{!13, !11, i64 40}
!23 = !{!13, !10, i64 16}
!24 = !{!13, !11, i64 24}
!25 = !{!11, !11, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!4, !4, i64 0}
!28 = !{!5, !5, i64 0}
!29 = !{!"ossl_param_st", !10, i64 0, !5, i64 8, !8, i64 16, !11, i64 24, !11, i64 32}
!30 = !{!29, !10, i64 0}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26, !39, !40}
!37 = distinct !{!37, !26, !39}
!38 = distinct !{!38, !26, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !26}
!42 = !{!10, !10, i64 0}
!43 = !{!29, !11, i64 24}
!44 = !{!29, !8, i64 16}
!45 = !{!29, !5, i64 8}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
end_hunk_0
