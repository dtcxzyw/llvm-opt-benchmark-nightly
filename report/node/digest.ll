Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/digest?download=true
inline.NumInlined: 57
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@EVP_DigestSqueeze:bb.a
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 568, ptr noundef nonnull @__func__.EVP_DigestSqueeze) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 144, ptr noundef null) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = call i32 %i.i(ptr noundef %i.l, ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %2) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.m, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_MD_CTX_dup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 72, ptr noundef nonnull @.str, i32 noundef 131) #8 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.a, ptr noundef %0)
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %i.a, i32 noundef 1024) #8
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.d, label %EVP_MD_CTX_free.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.e) #8
  store ptr null, ptr %i.d, align 8, !tbaa !31
  br label %EVP_MD_CTX_free.exit

EVP_MD_CTX_free.exit:                             ; preds = %bb.c, %bb.d
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 72) #8
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 140) #8
  br label %bb.e

bb.e:                                             ; preds = %EVP_MD_CTX_free.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %EVP_MD_CTX_free.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_MD_CTX_copy_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 598, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, ptr noundef null) #8
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %EVP_MD_CTX_reset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #8
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.h) #8
  store ptr null, ptr %i.g, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 72) #8
  br label %EVP_MD_CTX_reset.exit

EVP_MD_CTX_reset.exit:                            ; preds = %bb.d, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 4 uses
  %.not107 = icmp eq ptr %i.j, null
  br i1 %.not107, label %EVP_MD_free.exit, label %bb.h

bb.h:                                             ; preds = %EVP_MD_CTX_reset.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.i, label %EVP_MD_free.exit

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.n = atomicrmw add ptr %i.m, i32 -1 release, align 4 ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %bb.i
  fence acquire
  br label %bb.j

CRYPTO_DOWN_REF.exit.i:                           ; preds = %bb.i
  %i.p = icmp sgt i32 %i.n, 1
  br i1 %i.p, label %EVP_MD_free.exit, label %bb.j

bb.j:                                             ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  tail call void @evp_md_free_int(ptr noundef nonnull %i.j) #8
  br label %EVP_MD_free.exit

EVP_MD_free.exit:                                 ; preds = %bb.j, %CRYPTO_DOWN_REF.exit.i, %bb.h, %EVP_MD_CTX_reset.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !83
  br label %bb.ab

bb.k:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44
  %i.v = and i64 %i.u, 256
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 616, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #8
  br label %bb.ax

bb.o:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %.not94 = icmp eq ptr %i.ad, null
  br i1 %.not94, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  tail call void %i.ad(ptr noundef %i.af, ptr noundef %i.ah) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.aj) #8
  store ptr null, ptr %i.ai, align 8, !tbaa !31
  tail call fastcc void @cleanup_old_md_data(ptr noundef nonnull %0, i32 noundef 0)
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !48
  br label %bb.ab

bb.r:                                             ; preds = %bb.o, %bb.p
  %i.ap = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #8
  %.not.i109 = icmp eq i32 %i.ap, 0
  br i1 %.not.i109, label %bb.s, label %evp_md_ctx_reset_ex.exit

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.ar) #8
  store ptr null, ptr %i.aq, align 8, !tbaa !31
  br label %evp_md_ctx_reset_ex.exit

evp_md_ctx_reset_ex.exit:                         ; preds = %bb.r, %bb.s
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28 ; 4 uses
  %.not95 = icmp eq ptr %i.at, %i.av              ; 2 uses
  %.not96 = icmp eq ptr %i.av, null
  %or.cond = or i1 %.not95, %.not96
  br i1 %or.cond, label %EVP_MD_up_ref.exit, label %bb.t

bb.t:                                             ; preds = %evp_md_ctx_reset_ex.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !29
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !28
  br label %bb.v

EVP_MD_up_ref.exit:                               ; preds = %evp_md_ctx_reset_ex.exit
  br i1 %.not95, label %EVP_MD_free.exit113, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %EVP_MD_up_ref.exit
  %2 = phi ptr [ %i.at, %bb.t ], [ %.pre, %bb.u ], [ %i.at, %EVP_MD_up_ref.exit ] ; 4 uses
  %.not97 = icmp eq ptr %2, null
  br i1 %.not97, label %EVP_MD_free.exit113, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !29
  %.not.i110 = icmp eq i32 %i.bc, 0
  br i1 %.not.i110, label %bb.x, label %EVP_MD_free.exit113

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.be = atomicrmw add ptr %i.bd, i32 -1 release, align 4 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %CRYPTO_DOWN_REF.exit.thread.i112, label %CRYPTO_DOWN_REF.exit.i111

CRYPTO_DOWN_REF.exit.thread.i112:                 ; preds = %bb.x
  fence acquire
  br label %bb.y

CRYPTO_DOWN_REF.exit.i111:                        ; preds = %bb.x
  %i.bg = icmp sgt i32 %i.be, 1
  br i1 %i.bg, label %EVP_MD_free.exit113, label %bb.y

bb.y:                                             ; preds = %CRYPTO_DOWN_REF.exit.i111, %CRYPTO_DOWN_REF.exit.thread.i112
  tail call void @evp_md_free_int(ptr noundef nonnull %2) #8
  br label %EVP_MD_free.exit113

EVP_MD_free.exit113:                              ; preds = %bb.y, %CRYPTO_DOWN_REF.exit.i111, %bb.w, %bb.v, %EVP_MD_up_ref.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !83
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.bh, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %.not98 = icmp eq ptr %i.bk, null
  br i1 %.not98, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %EVP_MD_free.exit113
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !63
  %i.bo = tail call ptr %i.bn(ptr noundef nonnull %i.bk) #8 ; 2 uses
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !16
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 647, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #8
  br label %bb.ax

bb.ab:                                            ; preds = %bb.q, %bb.z, %EVP_MD_free.exit113, %EVP_MD_free.exit
  tail call void @EVP_MD_CTX_clear_flags(ptr noundef nonnull %0, i32 noundef 1024) #8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31 ; 2 uses
  %.not108 = icmp eq ptr %i.br, null
  br i1 %.not108, label %bb.ax, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = tail call ptr @EVP_PKEY_CTX_dup(ptr noundef nonnull %i.br) #8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !31
  %i.bu = icmp eq ptr %i.bs, null
  br i1 %i.bu, label %bb.ad, label %bb.ax

bb.ad:                                            ; preds = %bb.ac
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 660, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #8
  %i.bv = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #8
  %.not.i.i114 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i114, label %bb.ae, label %EVP_MD_CTX_reset.exit115

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !31
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.bw) #8
  store ptr null, ptr %i.bt, align 8, !tbaa !31
  br label %EVP_MD_CTX_reset.exit115

EVP_MD_CTX_reset.exit115:                         ; preds = %bb.ad, %bb.ae
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 72) #8
  br label %bb.ax

bb.af:                                            ; preds = %bb.k, %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27 ; 2 uses
  %.not99 = icmp eq ptr %i.by, null
  br i1 %.not99, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = tail call i32 @ENGINE_init(ptr noundef nonnull %i.by) #8
  %.not100 = icmp eq i32 %i.bz, 0
  br i1 %.not100, label %bb.ah, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ag
  %.pre.a = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 674, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524326, ptr noundef null) #8
  br label %bb.ax

bb.ai:                                            ; preds = %._crit_edge, %bb.af
  %i.ca = phi ptr [ %.pre.a, %._crit_edge ], [ %i.c, %bb.af ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = icmp eq ptr %i.cc, %i.ca
  br i1 %i.cd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25
  tail call void @EVP_MD_CTX_set_flags(ptr noundef nonnull %0, i32 noundef 4) #8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi ptr [ %i.cf, %bb.aj ], [ null, %bb.ai ] ; 3 uses
  %i.cg = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #8
  %.not.i.i116 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i116, label %bb.al, label %EVP_MD_CTX_reset.exit117

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.ci) #8
  store ptr null, ptr %i.ch, align 8, !tbaa !31
  br label %EVP_MD_CTX_reset.exit117

EVP_MD_CTX_reset.exit117:                         ; preds = %bb.ak, %bb.al
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 72) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @EVP_MD_CTX_clear_flags(ptr noundef nonnull %0, i32 noundef 1024) #8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !25
  %.not101 = icmp eq ptr %i.cm, null
  br i1 %.not101, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %EVP_MD_CTX_reset.exit117
  %i.cn = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 76
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !26 ; 3 uses
  %.not102 = icmp eq i32 %i.cp, 0
  br i1 %.not102, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not103 = icmp eq ptr %.0, null
  br i1 %.not103, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %.0, ptr %i.cj, align 8, !tbaa !25
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cq = sext i32 %i.cp to i64
  %i.cr = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.cq, ptr noundef nonnull @.str, i32 noundef 701) #8 ; 3 uses
  store ptr %i.cr, ptr %i.cj, align 8, !tbaa !25
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ax, label %._crit_edge120

._crit_edge120:                                   ; preds = %bb.ap
  %.pre121 = load ptr, ptr %i.cb, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre121, i64 76
  %.pre122 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !26
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge120, %bb.ao
  %i.ct = phi i32 [ %.pre122, %._crit_edge120 ], [ %i.cp, %bb.ao ]
  %i.cu = phi ptr [ %i.cr, %._crit_edge120 ], [ %.0, %bb.ao ]
  %i.cv = load ptr, ptr %i.cl, align 8, !tbaa !25
  %i.cw = sext i32 %i.ct to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cv, i64 %i.cw, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.am, %EVP_MD_CTX_reset.exit117
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31 ; 2 uses
  %.not104 = icmp eq ptr %i.db, null
  br i1 %.not104, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = tail call ptr @EVP_PKEY_CTX_dup(ptr noundef nonnull %i.db) #8 ; 2 uses
  store ptr %i.dc, ptr %i.ck, align 8, !tbaa !31
  %.not105 = icmp eq ptr %i.dc, null
  br i1 %.not105, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.dd = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #8
end_hunk_0
