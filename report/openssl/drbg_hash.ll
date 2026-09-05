Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/drbg_hash?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@drbg_hash_verify_zeroization:bb.a
}

declare i64 @ossl_drbg_get_seed(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) #1

declare void @ossl_drbg_clear_seed(ptr noundef, ptr noundef, i64 noundef) #1

declare ptr @ossl_rand_drbg_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @drbg_hash_new(ptr nofree noundef writeonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_secure_zalloc(i64 noundef 368, ptr noundef nonnull @.str, i32 noundef 437) #8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.a, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 111, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 2147483647, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 2147483647, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 2147483647, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 2147483647, ptr %i.h, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 65536, ptr %i.i, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @drbg_hash_instantiate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @EVP_MD_CTX_free(ptr noundef %i.d) #8
  %i.e = tail call ptr @EVP_MD_CTX_new() #8       ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %.val = load i64, ptr %i.g, align 8, !tbaa !29
  %.val16 = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.h = tail call fastcc i32 @hash_df(i64 %.val, ptr %.val16, ptr noundef nonnull %i.f, i8 noundef zeroext -1, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6)
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 143
  %i.j = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.k = tail call fastcc range(i32 0, 2) i32 @hash_df(i64 %i.j, ptr %.val18, ptr noundef nonnull %i.i, i8 noundef zeroext 0, ptr noundef nonnull %i.f, i64 noundef %i.j, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.k, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal i32 @drbg_hash_uninstantiate(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 111) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 143
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 111) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 254
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 111) #8
  %i.f = tail call i32 @ossl_prov_drbg_uninstantiate(ptr noundef %0) #8
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @drbg_hash_reseed(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 143 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = tail call fastcc i32 @hash_df(i64 %i.f, ptr %i.b, ptr noundef nonnull %i.c, i8 noundef zeroext 1, ptr noundef nonnull %i.d, i64 noundef %i.f, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 1 %i.c, i64 %i.h, i1 false)
  %i.i = load i64, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.j = tail call fastcc range(i32 0, 2) i32 @hash_df(i64 %i.i, ptr %.val18, ptr noundef nonnull %i.c, i8 noundef zeroext 0, ptr noundef nonnull %i.d, i64 noundef %i.i, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @drbg_hash_generate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 4 uses
  %i.e = lshr i32 %i.d, 24
  %i.f = lshr i32 %i.d, 16
  %i.g = lshr i32 %i.d, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %add_bytes.exit47, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %3, null
  %i.k = icmp eq i64 %4, 0
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc i32 @add_hash_to_v(ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef nonnull %3, i64 noundef %4)
  %.not23 = icmp eq i32 %i.l, 0
  br i1 %.not23, label %add_bytes.exit47, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.m = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.b ] ; 6 uses
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %hash_gen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 254 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.o, ptr nonnull align 8 %i.p, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = tail call ptr @ossl_prov_digest_md(ptr noundef %i.m) #8
  %i.v = tail call i32 @EVP_DigestInit_ex(ptr noundef %i.t, ptr noundef %i.u, ptr noundef null) #8
  %.not37.i = icmp eq i32 %i.v, 0
  br i1 %.not37.i, label %add_bytes.exit47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %add_bytes.exit.i, %.lr.ph.i
  %.039.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ag, %add_bytes.exit.i ] ; 3 uses
  %.02638.i = phi ptr [ %1, %.lr.ph.i ], [ %5, %add_bytes.exit.i ] ; 3 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.y = load i64, ptr %i.q, align 8, !tbaa !29
  %i.z = tail call i32 @EVP_DigestUpdate(ptr noundef %i.x, ptr noundef nonnull %i.o, i64 noundef %i.y) #8
  %.not30.i = icmp eq i32 %i.z, 0
  br i1 %.not30.i, label %add_bytes.exit47, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !30
  %i.ab = icmp ult i64 %.039.i, %i.aa
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !20  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @EVP_DigestFinal(ptr noundef %i.ac, ptr noundef nonnull %i.o, ptr noundef null) #8
  %.not32.i = icmp eq i32 %i.ad, 0
  br i1 %.not32.i, label %add_bytes.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02638.i, ptr nonnull align 2 %i.o, i64 %.039.i, i1 false)
  br label %hash_gen.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = tail call i32 @EVP_DigestFinal(ptr noundef %i.ac, ptr noundef %.02638.i, ptr noundef null) #8
  %.not31.i = icmp eq i32 %i.ae, 0
  br i1 %.not31.i, label %add_bytes.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.w, align 8, !tbaa !30  ; 2 uses
  %i.ag = sub i64 %.039.i, %i.af                  ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %hash_gen.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %5 = getelementptr inbounds nuw i8, ptr %.02638.i, i64 %i.af
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !29
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ai   ; 2 uses
  %.030.i.i = getelementptr i8, ptr %i.aj, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %.030.i.i, align 1, !tbaa !25 ; 2 uses
  %i.al = add i8 %i.ak, 1
  %add.narrowed.overflow.not.i = icmp eq i8 %i.ak, -1
  store i8 %i.al, ptr %.030.i.i, align 1, !tbaa !25
  br i1 %add.narrowed.overflow.not.i, label %bb.l, label %add_bytes.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.am = load i64, ptr %i.q, align 8, !tbaa !29
  %i.an = add i64 %i.am, -1                       ; 2 uses
  %.not2737.i.i = icmp eq i64 %i.an, 0
  br i1 %.not2737.i.i, label %add_bytes.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %bb.l
  %.0.i.i = getelementptr i8, ptr %i.aj, i64 -2
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i, %.lr.ph41.i.i.preheader
  %.139.i.i = phi ptr [ %i.ar, %.lr.ph41.i.i ], [ %.0.i.i, %.lr.ph41.i.i.preheader ] ; 3 uses
  %.12538.i.i = phi i64 [ %i.aq, %.lr.ph41.i.i ], [ %i.an, %.lr.ph41.i.i.preheader ]
  %i.ao = load i8, ptr %.139.i.i, align 1, !tbaa !25
  %i.ap = add i8 %i.ao, 1                         ; 2 uses
  store i8 %i.ap, ptr %.139.i.i, align 1, !tbaa !25
  %.not28.i.i = icmp ne i8 %i.ap, 0
  %i.aq = add i64 %.12538.i.i, -1                 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.139.i.i, i64 -1
  %.not27.i.i = icmp eq i64 %i.aq, 0
  %or.cond.i.i = select i1 %.not28.i.i, i1 true, i1 %.not27.i.i
  br i1 %or.cond.i.i, label %add_bytes.exit.i, label %.lr.ph41.i.i, !llvm.loop !0

add_bytes.exit.i:                                 ; preds = %.lr.ph41.i.i, %bb.l, %.lr.ph.i.i
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.at = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.m) #8
  %i.au = tail call i32 @EVP_DigestInit_ex(ptr noundef %i.as, ptr noundef %i.at, ptr noundef null) #8
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %add_bytes.exit47, label %bb.f

hash_gen.exit:                                    ; preds = %bb.k, %bb.i, %bb.d
  %i.av = tail call fastcc i32 @add_hash_to_v(ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null, i64 noundef 0)
  %.not25 = icmp eq i32 %i.av, 0
  br i1 %.not25, label %add_bytes.exit47, label %bb.m

bb.m:                                             ; preds = %hash_gen.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !29 ; 8 uses
  %.not31.i26 = icmp eq i64 %i.ay, 0
  br i1 %.not31.i26, label %add_bytes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 143
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.ay
  %.030.i = getelementptr i8, ptr %i.ba, i64 -1   ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 %i.ay  ; 2 uses
  %xtraiter = and i64 %i.ay, 1
  %i.bc = icmp eq i64 %i.ay, 1
  br i1 %i.bc, label %.lr.ph.i27.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ay, -2
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27, %.lr.ph.preheader.i.new
  %.035.i = phi ptr [ %.030.i, %.lr.ph.preheader.i.new ], [ %.0.i.1, %.lr.ph.i27 ] ; 4 uses
  %.02234.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.br, %.lr.ph.i27 ]
  %.pn2933.i = phi ptr [ %i.bb, %.lr.ph.preheader.i.new ], [ %.023.i.1, %.lr.ph.i27 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i27 ]
  %.023.i = getelementptr i8, ptr %.pn2933.i, i64 -1
  %i.bd = load i8, ptr %.035.i, align 1, !tbaa !25
  %i.be = zext i8 %i.bd to i32
  %i.bf = load i8, ptr %.023.i, align 1, !tbaa !25
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nuw nsw i32 %.02234.i, %i.be
  %i.bi = add nuw nsw i32 %i.bh, %i.bg            ; 2 uses
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bi to i8
  store i8 %i.bk, ptr %.035.i, align 1, !tbaa !25
  %.0.i = getelementptr i8, ptr %.035.i, i64 -1   ; 2 uses
  %.023.i.1 = getelementptr i8, ptr %.pn2933.i, i64 -2 ; 3 uses
  %i.bl = load i8, ptr %.0.i, align 1, !tbaa !25
  %i.bm = zext i8 %i.bl to i32
  %i.bn = load i8, ptr %.023.i.1, align 1, !tbaa !25
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bj, %i.bm
  %i.bq = add nuw nsw i32 %i.bp, %i.bo            ; 2 uses
  %i.br = lshr i32 %i.bq, 8                       ; 3 uses
  %i.bs = trunc i32 %i.bq to i8
  store i8 %i.bs, ptr %.0.i, align 1, !tbaa !25
  %.0.i.1 = getelementptr i8, ptr %.035.i, i64 -2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i27, !llvm.loop !1

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i27
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i27.epil.preheader

.lr.ph.i27.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %.035.i.epil.init = phi ptr [ %.030.i, %.lr.ph.preheader.i ], [ %.0.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.02234.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.br, %._crit_edge.i.unr-lcssa ]
  %.pn2933.i.epil.init = phi ptr [ %i.bb, %.lr.ph.preheader.i ], [ %.023.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod91 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %.023.i.epil = getelementptr i8, ptr %.pn2933.i.epil.init, i64 -1
  %i.bt = load i8, ptr %.035.i.epil.init, align 1, !tbaa !25
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load i8, ptr %.023.i.epil, align 1, !tbaa !25
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %.02234.i.epil.init, %i.bu
  %i.by = add nuw nsw i32 %i.bx, %i.bw            ; 2 uses
  %i.bz = lshr i32 %i.by, 8
  %i.ca = trunc i32 %i.by to i8
  store i8 %i.ca, ptr %.035.i.epil.init, align 1, !tbaa !25
  %.0.i.epil = getelementptr i8, ptr %.035.i.epil.init, i64 -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i27.epil.preheader
  %.lcssa = phi i32 [ %i.br, %._crit_edge.i.unr-lcssa ], [ %i.bz, %.lr.ph.i27.epil.preheader ]
  %.0.i.lcssa = phi ptr [ %.0.i.1, %._crit_edge.i.unr-lcssa ], [ %.0.i.epil, %.lr.ph.i27.epil.preheader ]
  %i.cb = icmp eq i32 %.lcssa, 0
  %.pre63 = load i64, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.cc = sub i64 %.pre63, %i.ay                  ; 2 uses
  %.not2737.i = icmp eq i64 %i.cc, 0
  %or.cond76 = select i1 %i.cb, i1 true, i1 %.not2737.i
  br i1 %or.cond76, label %add_bytes.exit, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i, %.lr.ph41.i
  %.139.i = phi ptr [ %i.cg, %.lr.ph41.i ], [ %.0.i.lcssa, %._crit_edge.i ] ; 3 uses
  %.12538.i = phi i64 [ %i.cf, %.lr.ph41.i ], [ %i.cc, %._crit_edge.i ]
  %i.cd = load i8, ptr %.139.i, align 1, !tbaa !25
  %i.ce = add i8 %i.cd, 1                         ; 2 uses
  store i8 %i.ce, ptr %.139.i, align 1, !tbaa !25
  %.not28.i = icmp ne i8 %i.ce, 0
  %i.cf = add i64 %.12538.i, -1                   ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.139.i, i64 -1
  %.not27.i = icmp eq i64 %i.cf, 0
  %or.cond.i = select i1 %.not28.i, i1 true, i1 %.not27.i
  br i1 %or.cond.i, label %add_bytes.exit.loopexit, label %.lr.ph41.i, !llvm.loop !0

add_bytes.exit.loopexit:                          ; preds = %.lr.ph41.i
  %.pre62 = load i64, ptr %i.ax, align 8, !tbaa !29
  br label %add_bytes.exit

add_bytes.exit:                                   ; preds = %add_bytes.exit.loopexit, %bb.m, %._crit_edge.i
  %i.ch = phi i64 [ %.pre62, %add_bytes.exit.loopexit ], [ 0, %bb.m ], [ %.pre63, %._crit_edge.i ]
  %i.ci = getelementptr i8, ptr %i.aw, i64 %i.ch  ; 5 uses
  %.030.i30 = getelementptr i8, ptr %i.ci, i64 -1 ; 2 uses
  %i.cj = load i8, ptr %.030.i30, align 1, !tbaa !25
  %i.ck = zext i8 %i.cj to i32
  %i.cl = and i32 %i.d, 255
  %i.cm = add nuw nsw i32 %i.cl, %i.ck            ; 2 uses
  %i.cn = lshr i32 %i.cm, 8
  %i.co = trunc i32 %i.cm to i8
  store i8 %i.co, ptr %.030.i30, align 1, !tbaa !25
  %.0.i37 = getelementptr i8, ptr %i.ci, i64 -2   ; 2 uses
  %i.cp = load i8, ptr %.0.i37, align 1, !tbaa !25
  %i.cq = zext i8 %i.cp to i32
  %i.cr = and i32 %i.g, 255
  %i.cs = add nuw nsw i32 %i.cn, %i.cq
  %i.ct = add nuw nsw i32 %i.cs, %i.cr            ; 2 uses
  %i.cu = lshr i32 %i.ct, 8
  %i.cv = trunc i32 %i.ct to i8
  store i8 %i.cv, ptr %.0.i37, align 1, !tbaa !25
  %.0.i37.1 = getelementptr i8, ptr %i.ci, i64 -3 ; 2 uses
  %i.cw = load i8, ptr %.0.i37.1, align 1, !tbaa !25
  %i.cx = zext i8 %i.cw to i32
  %i.cy = and i32 %i.f, 255
  %i.cz = add nuw nsw i32 %i.cu, %i.cx
  %i.da = add nuw nsw i32 %i.cz, %i.cy            ; 2 uses
  %i.db = lshr i32 %i.da, 8
  %i.dc = trunc i32 %i.da to i8
  store i8 %i.dc, ptr %.0.i37.1, align 1, !tbaa !25
  %.0.i37.2 = getelementptr i8, ptr %i.ci, i64 -4 ; 2 uses
  %i.dd = load i8, ptr %.0.i37.2, align 1, !tbaa !25
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.db, %i.de
  %i.dg = add nuw nsw i32 %i.df, %i.e             ; 2 uses
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %.0.i37.2, align 1, !tbaa !25
  %i.di = icmp samesign ult i32 %i.dg, 256
  br i1 %i.di, label %add_bytes.exit47, label %bb.n

bb.n:                                             ; preds = %add_bytes.exit
  %i.dj = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.dk = add i64 %i.dj, -4                       ; 2 uses
  %.not2737.i40 = icmp eq i64 %i.dk, 0
  br i1 %.not2737.i40, label %add_bytes.exit47, label %.lr.ph41.i41.preheader

.lr.ph41.i41.preheader:                           ; preds = %bb.n
  %.0.i37.3 = getelementptr i8, ptr %i.ci, i64 -5
  br label %.lr.ph41.i41

.lr.ph41.i41:                                     ; preds = %.lr.ph41.i41.preheader, %.lr.ph41.i41
  %.139.i42 = phi ptr [ %i.do, %.lr.ph41.i41 ], [ %.0.i37.3, %.lr.ph41.i41.preheader ] ; 3 uses
  %.12538.i43 = phi i64 [ %i.dn, %.lr.ph41.i41 ], [ %i.dk, %.lr.ph41.i41.preheader ]
  %i.dl = load i8, ptr %.139.i42, align 1, !tbaa !25
  %i.dm = add i8 %i.dl, 1                         ; 2 uses
  store i8 %i.dm, ptr %.139.i42, align 1, !tbaa !25
  %.not28.i44 = icmp ne i8 %i.dm, 0
  %i.dn = add i64 %.12538.i43, -1                 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.139.i42, i64 -1
  %.not27.i45 = icmp eq i64 %i.dn, 0
  %or.cond.i46 = select i1 %.not28.i44, i1 true, i1 %.not27.i45
  br i1 %or.cond.i46, label %add_bytes.exit47, label %.lr.ph41.i41, !llvm.loop !0

add_bytes.exit47:                                 ; preds = %bb.f, %add_bytes.exit.i, %bb.j, %.lr.ph41.i41, %bb.e, %bb.h, %bb.n, %add_bytes.exit, %hash_gen.exit, %bb.c, %bb.a
  %i.dp = phi i32 [ 0, %bb.a ], [ 0, %hash_gen.exit ], [ 1, %.lr.ph41.i41 ], [ 0, %bb.c ], [ 1, %add_bytes.exit ], [ 1, %bb.n ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %add_bytes.exit.i ], [ 0, %bb.f ]
  ret i32 %i.dp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noalias ptr @CRYPTO_secure_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

end_hunk_0
