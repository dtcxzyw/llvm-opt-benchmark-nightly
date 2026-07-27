inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@kdf_scrypt_reset
define internal void @kdf_scrypt_reset(ptr nofree noundef captures(none) initializes((48, 80)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 94) #6
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  tail call void @CRYPTO_clear_free(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 96) #6
  store ptr null, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1048576, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 8, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1074790400, ptr %i.j, align 8, !tbaa !20
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.kdf_scrypt_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 130, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @__func__.kdf_scrypt_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #6
  br label %scrypt_alg.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %set_digest.exit

bb.h:                                             ; preds = %bb.g
  tail call void @EVP_MD_free(ptr noundef null) #6
  %i.l = load ptr, ptr %0, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call ptr @EVP_MD_fetch(ptr noundef %i.l, ptr noundef nonnull @.str.1, ptr noundef %i.n) #6 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !21
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %set_digest.exit.thread, label %.set_digest.exit_crit_edge

.set_digest.exit_crit_edge:                       ; preds = %bb.h
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !25
  %.pre27 = load ptr, ptr %i.f, align 8, !tbaa !23
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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17   ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18  ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !20
  %i.af = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
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
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aw ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aw ; 5 uses
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
  tail call fastcc void @scryptBlockMix(ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef range(i64 1, 0) %i.aa)
  %i.bw = add nuw i64 %.16574.i.us.i, 1           ; 2 uses
  %exitcond86.not.i.us.i = icmp eq i64 %i.bw, %i.y
  br i1 %exitcond86.not.i.us.i, label %.split.i.preheader.us.i, label %bb.x, !llvm.loop !28

.split.i.preheader.us.i:                          ; preds = %bb.x
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.split.i.us.i

.split.i.us.i:                                    ; preds = %.split.i.us.i, %.split.i.preheader.us.i
  %.26679.i.us.i = phi i64 [ %i.bx, %.split.i.us.i ], [ 0, %.split.i.preheader.us.i ]
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.bx = add nuw i64 %.26679.i.us.i, 1           ; 2 uses
  %exitcond89.not.i.us.i = icmp eq i64 %i.bx, %i.y
  br i1 %exitcond89.not.i.us.i, label %scryptROMix.exit.loopexit.us.i, label %.split.i.us.i, !llvm.loop !30

scryptROMix.exit.loopexit.us.i:                   ; preds = %.split.i.us.i
  %i.by = add nuw i64 %.07195.us.i, 1             ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.by, %i.ac
  br i1 %exitcond97.not.i, label %.split.us.i, label %.preheader69.i.us.i, !llvm.loop !31

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
  %i.cc = load i8, ptr %.072.i.i, align 1, !tbaa !32
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  store i32 %i.cd, ptr %.06171.i.i, align 4, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 2
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !32
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.cd            ; 2 uses
  store i32 %i.ci, ptr %.06171.i.i, align 4, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 3
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !32
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 16
  %i.cn = or disjoint i32 %i.cm, %i.ci            ; 2 uses
  store i32 %i.cn, ptr %.06171.i.i, align 4, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 4
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !32
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw i32 %i.cq, 24
  %i.cs = or disjoint i32 %i.cr, %i.cn
  store i32 %i.cs, ptr %.06171.i.i, align 4, !tbaa !33
  %i.ct = add nuw i64 %.06470.i.i, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.06171.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.aw
  br i1 %exitcond.not.i.i, label %.preheader69.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !34

.preheader69.i.loopexit.i:                        ; preds = %.lr.ph.i.i, %.preheader69.i.loopexit.i
  %.16275.i.i = phi ptr [ %i.cx, %.preheader69.i.loopexit.i ], [ %i.cu, %.lr.ph.i.i ] ; 3 uses
  %.16574.i.i = phi i64 [ %i.cw, %.preheader69.i.loopexit.i ], [ 1, %.lr.ph.i.i ]
  %i.cv = getelementptr inbounds [4 x i8], ptr %.16275.i.i, i64 %i.bp
  tail call fastcc void @scryptBlockMix(ptr noundef %.16275.i.i, ptr noundef %i.cv, i64 noundef range(i64 1, 0) %i.aa)
  %i.cw = add nuw i64 %.16574.i.i, 1              ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.16275.i.i, i64 %i.aw
  %exitcond86.not.i.i = icmp eq i64 %i.cw, %i.y
  br i1 %exitcond86.not.i.i, label %.lr.ph78.us.i.preheader.i, label %.preheader69.i.loopexit.i, !llvm.loop !28

.lr.ph78.us.i.preheader.i:                        ; preds = %.preheader69.i.loopexit.i
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.lr.ph78.us.i.i

.lr.ph78.us.i.i:                                  ; preds = %._crit_edge.us.i.i, %.lr.ph78.us.i.preheader.i
  %.26679.us.i.i = phi i64 [ %i.dm, %._crit_edge.us.i.i ], [ 0, %.lr.ph78.us.i.preheader.i ]
  %i.cy = load i32, ptr %i.bv, align 4, !tbaa !33
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
  %wide.load59 = load <4 x i32>, ptr %i.de, align 4, !tbaa !33
  %wide.load60 = load <4 x i32>, ptr %i.df, align 4, !tbaa !33
  %i.dg = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load61 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !33
  %wide.load62 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !33
  %i.dh = xor <4 x i32> %wide.load61, %wide.load59
  %i.di = xor <4 x i32> %wide.load62, %wide.load60
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index57 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !33
  store <4 x i32> %i.di, ptr %i.dk, align 4, !tbaa !33
  %index.next63 = add nuw i64 %index57, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next63, %i.aw
  br i1 %i.dl, label %._crit_edge.us.i.i, label %vector.body56, !llvm.loop !35

._crit_edge.us.i.i:                               ; preds = %vector.body56
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.dm = add nuw i64 %.26679.us.i.i, 1           ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %i.dm, %i.y
  br i1 %exitcond88.not.i.i, label %vector.body, label %.lr.ph78.us.i.i, !llvm.loop !30

vector.body:                                      ; preds = %._crit_edge.us.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge.us.i.i ] ; 3 uses
  %i.dn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <4 x i32>, ptr %i.do, align 4, !tbaa !33
  %wide.load46 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !33
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load46, ptr %i.dq, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %i.aw
  br i1 %i.dr, label %scryptROMix.exit.loopexit94.i, label %vector.body, !llvm.loop !38

scryptROMix.exit.loopexit94.i:                    ; preds = %vector.body
  %i.ds = add nuw i64 %.07195.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.ac
  br i1 %exitcond.not.i, label %.split.us.i, label %.lr.ph.i.preheader.i, !llvm.loop !31

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
  %i.h = load i64, ptr %i.f, align 8, !tbaa !27
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
end_hunk_0
