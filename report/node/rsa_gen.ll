inline.NumInlined: 65
inline.NumDeleted: 14
begin_hunk_0_@rsa_multiprime_keygen:bb.a
  br label %bb.bw

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @ossl_rsa_check_public_exponent(ptr noundef nonnull %3) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 291, ptr noundef nonnull @__func__.rsa_multiprime_keygen) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 178, ptr noundef null) #4
  br label %bb.bw

bb.g:                                             ; preds = %bb.e
  %i.e = icmp slt i32 %2, 2
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call i32 @ossl_rsa_multip_cap(i32 noundef %1) #4
  %i.g = icmp sgt i32 %2, %i.f
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 296, ptr noundef nonnull @__func__.rsa_multiprime_keygen) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 165, ptr noundef null) #4
  br label %bb.bw

bb.j:                                             ; preds = %bb.h
  %i.h = tail call ptr @OPENSSL_sk_new_null() #4  ; 14 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.bw, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = tail call ptr @OPENSSL_sk_new_null() #4  ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call ptr @OPENSSL_sk_new_null() #4  ; 45 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = tail call ptr @BN_CTX_new_ex(ptr noundef %i.o) #4 ; 54 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @BN_CTX_start(ptr noundef nonnull %i.p) #4
  %i.r = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) #4 ; 5 uses
  %i.s = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) #4 ; 7 uses
  %i.t = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) #4 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.v = udiv i32 %1, %2                          ; 2 uses
  %i.w = urem i32 %1, %2
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader536, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert502 = insertelement <4 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat503 = shufflevector <4 x i64> %broadcast.splatinsert502, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.y = icmp samesign ult <4 x i64> %vec.ind, %broadcast.splat503
  %i.z = zext <4 x i1> %i.y to <4 x i32>
  %i.aa = add nuw nsw <4 x i32> %broadcast.splat, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x i32> %i.aa, ptr %i.ab, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader536

.lr.ph.preheader536:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader536, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader536 ] ; 3 uses
  %i.ad = icmp samesign ult i64 %indvars.iv, %i.x
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nuw nsw i32 %i.v, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !42
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %.not270 = icmp eq ptr %i.al, null
  br i1 %.not270, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.am = tail call ptr @BN_new() #4              ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !30
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %.not271 = icmp eq ptr %i.ap, null
  br i1 %.not271, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call ptr @BN_secure_new() #4       ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !35
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.as = phi ptr [ %i.aq, %bb.q ], [ %i.ap, %bb.p ]
  tail call void @BN_set_flags(ptr noundef nonnull %i.as, i32 noundef 4) #4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %.not272 = icmp eq ptr %i.au, null
  br i1 %.not272, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = tail call ptr @BN_new() #4              ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !31
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %.not273 = icmp eq ptr %i.ay, null
  br i1 %.not273, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.az = tail call ptr @BN_secure_new() #4       ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !43
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bb = phi ptr [ %i.az, %bb.u ], [ %i.ay, %bb.t ]
  tail call void @BN_set_flags(ptr noundef nonnull %i.bb, i32 noundef 4) #4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44 ; 2 uses
  %.not274 = icmp eq ptr %i.bd, null
  br i1 %.not274, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.be = tail call ptr @BN_secure_new() #4       ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !44
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bg = phi ptr [ %i.be, %bb.w ], [ %i.bd, %bb.v ]
  tail call void @BN_set_flags(ptr noundef nonnull %i.bg, i32 noundef 4) #4
  %.not275 = icmp eq i32 %2, 2                    ; 3 uses
  br i1 %.not275, label %.loopexit309, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.bh, align 8, !tbaa !45
  %i.bi = add nsw i32 %2, -2
  %i.bj = tail call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef range(i32 1, 2147483646) %i.bi) #4 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 2 uses
  %.not276 = icmp eq ptr %i.bm, null
  br i1 %.not276, label %.lr.ph339.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.bm, ptr noundef nonnull @ossl_rsa_multip_info_free) #4
  br label %.lr.ph339.preheader

.lr.ph339.preheader:                              ; preds = %bb.z, %bb.aa
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !46
  br label %.lr.ph339

.lr.ph339:                                        ; preds = %.lr.ph339.preheader, %bb.ab
  %.1240337 = phi i32 [ %i.bq, %bb.ab ], [ 2, %.lr.ph339.preheader ]
  %i.bn = tail call ptr @ossl_rsa_multip_info_new() #4 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph339
  %i.bp = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bn) #4 ; 0 uses
  %i.bq = add nuw nsw i32 %.1240337, 1            ; 2 uses
  %exitcond406.not = icmp eq i32 %i.bq, %2
  br i1 %exitcond406.not, label %.loopexit309, label %.lr.ph339, !llvm.loop !47

.loopexit309:                                     ; preds = %bb.ab, %bb.x
  %.1232 = phi ptr [ null, %bb.x ], [ %i.bn, %bb.ab ]
  %.0230 = phi ptr [ null, %bb.x ], [ %i.bj, %bb.ab ] ; 4 uses
  %i.br = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.bs = tail call ptr @BN_copy(ptr noundef %i.br, ptr noundef nonnull %3) #4
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.loopexit, label %.lr.ph358

.lr.ph358:                                        ; preds = %.loopexit309
  %i.bu = icmp sgt i32 %2, 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph358, %bb.bj
  %.0228357 = phi ptr [ %i.h, %.lr.ph358 ], [ %.1229, %bb.bj ] ; 25 uses
  %.2233356 = phi ptr [ %.1232, %.lr.ph358 ], [ %.3, %bb.bj ] ; 2 uses
  %.2241355 = phi i32 [ 0, %.lr.ph358 ], [ %i.eh, %bb.bj ] ; 9 uses
  %.0243354 = phi i32 [ 0, %.lr.ph358 ], [ %.3246, %bb.bj ]
  %.0247353 = phi i32 [ 0, %.lr.ph358 ], [ %.3250, %bb.bj ]
  switch i32 %.2241355, label %bb.ae [
    i32 0, label %bb.af
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bv = add nsw i32 %.2241355, -2
  %i.bw = tail call ptr @OPENSSL_sk_value(ptr noundef %.0230, i32 noundef range(i32 -2147483648, 2147483645) %i.bv) #4 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0251.in = phi ptr [ %i.bw, %bb.ae ], [ %i.bc, %bb.ad ], [ %i.ax, %bb.ac ]
  %.3 = phi ptr [ %i.bw, %bb.ae ], [ %.2233356, %bb.ad ], [ %.2233356, %bb.ac ] ; 2 uses
  %.0251 = load ptr, ptr %.0251.in, align 8, !tbaa !48 ; 9 uses
  tail call void @BN_set_flags(ptr noundef %.0251, i32 noundef 4) #4
  %i.bx = sext i32 %.2241355 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !5  ; 3 uses
  %i.ca = icmp sgt i32 %.2241355, 0
  %i.cb = add nsw i32 %i.bz, %.0243354            ; 3 uses
  %i.cc = add nsw i32 %i.cb, -4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.an, %bb.af
  %.1248 = phi i32 [ %.0247353, %bb.af ], [ %i.ct, %bb.an ] ; 2 uses
  %.0236 = phi i32 [ 0, %bb.af ], [ %.1237.ph349, %bb.an ] ; 2 uses
  %.0234 = phi i32 [ 0, %bb.af ], [ %.1235.ph350, %bb.an ]
  %i.cd = add nsw i32 %i.bz, %.0236               ; 2 uses
  %i.ce = tail call i32 @BN_generate_prime_ex2(ptr noundef %.0251, i32 noundef %i.cd, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %4, ptr noundef nonnull %i.p) #4
  %.not284344347 = icmp eq i32 %i.ce, 0
  br i1 %.not284344347, label %.loopexit, label %.preheader302.lr.ph

.preheader302.lr.ph:                              ; preds = %bb.ag, %.outer
  %i.cf = phi i32 [ %i.dr, %.outer ], [ %i.cd, %bb.ag ]
  %.1235.ph350 = phi i32 [ %i.dq, %.outer ], [ %.0234, %bb.ag ] ; 3 uses
  %.1237.ph349 = phi i32 [ %.2238, %.outer ], [ %.0236, %bb.ag ] ; 4 uses
  %.2249.ph348 = phi i32 [ %i.dj, %.outer ], [ %.1248, %bb.ag ] ; 5 uses
  br i1 %i.ca, label %.preheader302, label %.thread

.loopexit303:                                     ; preds = %bb.ak
  %i.cg = tail call i32 @BN_generate_prime_ex2(ptr noundef %.0251, i32 noundef %i.cf, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %4, ptr noundef nonnull %i.p) #4
  %.not284 = icmp eq i32 %i.cg, 0
  br i1 %.not284, label %.loopexit, label %.preheader302.backedge

bb.ah:                                            ; preds = %bb.ak
  %i.ch = add nuw nsw i32 %.0222340, 1            ; 2 uses
  %exitcond407.not = icmp eq i32 %i.ch, %.2241355
  br i1 %exitcond407.not, label %.thread, label %.preheader302.backedge

.preheader302.backedge:                           ; preds = %bb.ah, %.loopexit303
  %.0222340.be = phi i32 [ %i.ch, %bb.ah ], [ 0, %.loopexit303 ]
  br label %.preheader302, !llvm.loop !49

.preheader302:                                    ; preds = %.preheader302.lr.ph, %.preheader302.backedge
  %.0222340 = phi i32 [ %.0222340.be, %.preheader302.backedge ], [ 0, %.preheader302.lr.ph ] ; 3 uses
  switch i32 %.0222340, label %bb.aj [
    i32 0, label %bb.ak
    i32 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %.preheader302
  br label %bb.ak

bb.aj:                                            ; preds = %.preheader302
  %i.ci = add nsw i32 %.0222340, -2
  %i.cj = tail call ptr @OPENSSL_sk_value(ptr noundef %.0230, i32 noundef range(i32 -2147483648, 2147483645) %i.ci) #4
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader302, %bb.ai, %bb.aj
  %.0.in = phi ptr [ %i.cj, %bb.aj ], [ %i.bc, %bb.ai ], [ %i.ax, %.preheader302 ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !48
  %i.ck = tail call i32 @BN_cmp(ptr noundef %.0251, ptr noundef %.0) #4
  %.not285.not = icmp eq i32 %i.ck, 0
  br i1 %.not285.not, label %.loopexit303, label %bb.ah

.thread:                                          ; preds = %bb.ah, %.preheader302.lr.ph
  %i.cl = tail call ptr @BN_value_one() #4
  %i.cm = tail call i32 @BN_sub(ptr noundef nonnull %i.t, ptr noundef %.0251, ptr noundef %i.cl) #4
  %.not286 = icmp eq i32 %i.cm, 0
  br i1 %.not286, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %.thread
  %i.cn = tail call i32 @ERR_set_mark() #4        ; 0 uses
  tail call void @BN_set_flags(ptr noundef nonnull %i.t, i32 noundef 4) #4
  %i.co = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.cp = tail call ptr @BN_mod_inverse(ptr noundef %i.s, ptr noundef nonnull %i.t, ptr noundef %i.co, ptr noundef nonnull %i.p) #4
  %.not287 = icmp eq ptr %i.cp, null
  br i1 %.not287, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cq = tail call i64 @ERR_peek_last_error() #4
  %i.cr = and i64 %i.cq, 4294967295
  %or.cond469 = icmp eq i64 %i.cr, 25165932
  br i1 %or.cond469, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.cs = tail call i32 @ERR_pop_to_mark() #4     ; 0 uses
  %i.ct = add nsw i32 %.2249.ph348, 1
  %i.cu = tail call i32 @BN_GENCB_call(ptr noundef %4, i32 noundef 2, i32 noundef %.2249.ph348) #4
  %.not288 = icmp eq i32 %i.cu, 0
  br i1 %.not288, label %.loopexit, label %bb.ag

bb.ao:                                            ; preds = %bb.al
  switch i32 %.2241355, label %bb.aq [
    i32 1, label %bb.ap
    i32 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.cv = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.cw = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.cx = tail call i32 @BN_mul(ptr noundef %i.s, ptr noundef %i.cv, ptr noundef %i.cw, ptr noundef nonnull %i.p) #4
  %.not293 = icmp eq i32 %i.cx, 0
  br i1 %.not293, label %.loopexit, label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.cy = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.cz = tail call i32 @BN_mul(ptr noundef %i.s, ptr noundef %i.cy, ptr noundef %.0251, ptr noundef nonnull %i.p) #4
  %.not292 = icmp eq i32 %i.cz, 0
  br i1 %.not292, label %.loopexit, label %bb.au

bb.ar:                                            ; preds = %bb.ao
  %i.da = tail call i32 @BN_GENCB_call(ptr noundef %4, i32 noundef 3, i32 noundef 0) #4
  %.not290 = icmp eq i32 %i.da, 0
  br i1 %.not290, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = tail call ptr @BN_dup(ptr noundef %.0251) #4 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dd = tail call i32 @OPENSSL_sk_num(ptr noundef %.0228357) #4
  %i.de = tail call i32 @OPENSSL_sk_insert(ptr noundef %.0228357, ptr noundef nonnull %i.db, i32 noundef %i.dd) #4
  %.not291 = icmp eq i32 %i.de, 0
  br i1 %.not291, label %.loopexit, label %bb.bj

bb.au:                                            ; preds = %bb.aq, %bb.ap
  %i.df = tail call i32 @BN_rshift(ptr noundef nonnull %i.t, ptr noundef %i.s, i32 noundef %i.cc) #4
  %.not294 = icmp eq i32 %i.df, 0
  br i1 %.not294, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dg = tail call i64 @BN_get_word(ptr noundef nonnull %i.t) #4 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, 9
  %i.di = add i64 %i.dg, -16
  %or.cond = icmp ult i64 %i.di, -7
  br i1 %or.cond, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.dj = add nsw i32 %.2249.ph348, 1             ; 2 uses
  %i.dk = tail call i32 @BN_GENCB_call(ptr noundef %4, i32 noundef 2, i32 noundef %.2249.ph348) #4
  %.not297 = icmp eq i32 %i.dk, 0
  br i1 %.not297, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.bu, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.dh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.dl = add nsw i32 %.1237.ph349, 1
  br label %.outer

bb.ba:                                            ; preds = %bb.ay
  %i.dm = add nsw i32 %.1237.ph349, -1
  br label %.outer

bb.bb:                                            ; preds = %bb.ax
  %i.dn = icmp eq i32 %.1235.ph350, 4
  br i1 %i.dn, label %bb.bc, label %.outer

bb.bc:                                            ; preds = %bb.bb
  tail call void @OPENSSL_sk_pop_free(ptr noundef %.0228357, ptr noundef nonnull @BN_clear_free) #4
  %i.do = tail call ptr @OPENSSL_sk_new_null() #4 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
end_hunk_0
