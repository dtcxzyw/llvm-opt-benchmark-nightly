inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kdf_pkcs12_new:bb.a
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 80, ptr noundef nonnull @.str, i32 noundef 144) #7 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.b, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @kdf_pkcs12_dup(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = tail call i32 @ossl_prov_is_running() #7
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %kdf_pkcs12_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 80, ptr noundef nonnull @.str, i32 noundef 144) #7 ; 15 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %kdf_pkcs12_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.k = tail call i32 @ossl_prov_memdup(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #7
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %kdf_pkcs12_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = tail call i32 @ossl_prov_memdup(ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #7
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %kdf_pkcs12_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = tail call i32 @ossl_prov_digest_copy(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #7
  %.not23 = icmp eq i32 %i.u, 0
  br i1 %.not23, label %kdf_pkcs12_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %i.w, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !23
  br label %kdf_pkcs12_new.exit.thread

kdf_pkcs12_free.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.ab) #7
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef %i.ac, ptr noundef nonnull @.str, i32 noundef 154) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21
  tail call void @CRYPTO_clear_free(ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull @.str, i32 noundef 155) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 165) #7
  br label %kdf_pkcs12_new.exit.thread

kdf_pkcs12_new.exit.thread:                       ; preds = %bb.b, %bb.a, %bb.f, %kdf_pkcs12_free.exit
  %.0 = phi ptr [ null, %kdf_pkcs12_free.exit ], [ %i.c, %bb.f ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @kdf_pkcs12_free(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef 154) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  tail call void @CRYPTO_clear_free(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 155) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 165) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kdf_pkcs12_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 154) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  tail call void @CRYPTO_clear_free(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 155) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, i8 0, i64 72, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_pkcs12_derive(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @kdf_pkcs12_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 228, ptr noundef nonnull @__func__.kdf_pkcs12_derive) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 130, ptr noundef null) #7
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 233, ptr noundef nonnull @__func__.kdf_pkcs12_derive) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #7
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.i) #7 ; 5 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 5 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22   ; 2 uses
  %i.u = tail call ptr @EVP_MD_CTX_new() #7       ; 10 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.loopexit152.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 @EVP_MD_get_block_size(ptr noundef %i.j) #7 ; 4 uses
  %i.x = tail call i32 @EVP_MD_get_size(ptr noundef %i.j) #7 ; 2 uses
  %i.y = icmp slt i32 %i.x, 1
  %i.z = icmp slt i32 %i.w, 1
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %.loopexit152.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %i.x to i64               ; 9 uses
  %i.ab = zext nneg i32 %i.w to i64               ; 17 uses
  %i.ac = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 74) #7 ; 13 uses
  %i.ad = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 75) #7 ; 18 uses
  %i.ae = add nuw nsw i64 %i.ab, 1
  %i.af = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ae, ptr noundef nonnull @.str, i32 noundef 76) #7 ; 17 uses
  %i.ag = add i64 %i.p, -1
  %i.ah = add i64 %i.ag, %i.ab                    ; 3 uses
  %i.ai = urem i64 %i.ah, %i.ab
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.m, -1
  %i.al = add i64 %i.ak, %i.ab                    ; 2 uses
  %i.am = urem i64 %i.al, %i.ab
  %i.an = sub nuw i64 %i.al, %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0130.i = phi i64 [ %i.an, %bb.j ], [ 0, %bb.i ] ; 6 uses
  %i.ao = add i64 %.0130.i, %i.aj                 ; 4 uses
  %i.ap = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ao, ptr noundef nonnull @.str, i32 noundef 83) #7 ; 16 uses
  %i.aq = insertelement <4 x ptr> poison, ptr %i.ac, i64 0
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %i.ad, i64 1
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.af, i64 2
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.ap, i64 3
  %.fr = freeze <4 x ptr> %i.at
  %i.au = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.av = bitcast <4 x i1> %i.au to i4
  %.not34 = icmp eq i4 %i.av, 0
  br i1 %.not34, label %.preheader157.i, label %pkcs12kdf_derive.exit

.preheader157.i:                                  ; preds = %bb.k
  %i.aw = trunc i32 %i.r to i8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 %i.aw, i64 %i.ab, i1 false), !tbaa !24
  %.not184.i = icmp ult i64 %i.ah, %i.ab
  br i1 %.not184.i, label %.preheader155.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader157.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %4 = icmp ult i64 %i.aj, 2
  br i1 %4, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph.i

.preheader155.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader155.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader155.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1127160.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bl, %.preheader155.i.loopexit.unr-lcssa ]
  %.0128159.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i.preheader ], [ %i.bk, %.preheader155.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ax = urem i64 %.1127160.i.epil.init, %i.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0128159.i.epil.init, i64 1
  store i8 %i.az, ptr %.0128159.i.epil.init, align 1, !tbaa !24
  br label %.preheader155.i

.preheader155.i:                                  ; preds = %.lr.ph.i.epil.preheader, %.preheader155.i.loopexit.unr-lcssa, %.preheader157.i
  %.0128.lcssa.i = phi ptr [ %i.ap, %.preheader157.i ], [ %i.bk, %.preheader155.i.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.not185.i = icmp eq i64 %.0130.i, 0
  br i1 %.not185.i, label %.preheader153.i, label %.lr.ph163.i.preheader

.lr.ph163.i.preheader:                            ; preds = %.preheader155.i
  %xtraiter38 = and i64 %.0130.i, 1
  %i.bb = icmp eq i64 %.0130.i, 1
  br i1 %i.bb, label %.lr.ph163.i.epil.preheader, label %.lr.ph163.i.preheader.new

.lr.ph163.i.preheader.new:                        ; preds = %.lr.ph163.i.preheader
  %unroll_iter41 = and i64 %.0130.i, -2
  br label %.lr.ph163.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.1127160.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ] ; 3 uses
  %.0128159.i = phi ptr [ %i.ap, %.lr.ph.i.preheader.new ], [ %i.bk, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bc = urem i64 %.1127160.i, %i.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %.0128159.i, i64 1
  store i8 %i.be, ptr %.0128159.i, align 1, !tbaa !24
  %i.bg = or disjoint i64 %.1127160.i, 1
  %i.bh = urem i64 %i.bg, %i.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %.0128159.i, i64 2 ; 3 uses
  store i8 %i.bj, ptr %i.bf, align 1, !tbaa !24
  %i.bl = add nuw i64 %.1127160.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader155.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !25

.preheader153.i.loopexit.unr-lcssa:               ; preds = %.lr.ph163.i
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.preheader153.i, label %.lr.ph163.i.epil.preheader

.lr.ph163.i.epil.preheader:                       ; preds = %.preheader153.i.loopexit.unr-lcssa, %.lr.ph163.i.preheader
  %.2162.i.epil.init = phi i64 [ 0, %.lr.ph163.i.preheader ], [ %i.cd, %.preheader153.i.loopexit.unr-lcssa ]
  %.1129161.i.epil.init = phi ptr [ %.0128.lcssa.i, %.lr.ph163.i.preheader ], [ %i.cc, %.preheader153.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.0130.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.bm = urem i64 %.2162.i.epil.init, %i.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  store i8 %i.bo, ptr %.1129161.i.epil.init, align 1, !tbaa !24
  br label %.preheader153.i

.preheader153.i:                                  ; preds = %.lr.ph163.i.epil.preheader, %.preheader153.i.loopexit.unr-lcssa, %.preheader155.i
  %i.bp = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.u, ptr noundef %i.j, ptr noundef null) #7
  %.not142171.i = icmp eq i32 %i.bp, 0
  br i1 %.not142171.i, label %pkcs12kdf_derive.exit, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.preheader153.i
  %i.bq = icmp ugt i64 %i.t, 1
  %.not186.i = icmp eq i64 %i.ao, 0
  %i.br = add nsw i64 %i.ab, -1                   ; 2 uses
  %xtraiter43 = and i64 %i.ab, 1
  %i.bs = icmp eq i64 %i.br, 0
  %unroll_iter46 = and i64 %i.ab, 2147483646
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  %lcmp.mod45 = trunc i32 %i.w to i1
  %xtraiter48 = and i64 %i.ab, 1
  %i.bt = icmp eq i64 %i.br, 0
  %unroll_iter51 = and i64 %i.ab, 2147483646
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  %lcmp.mod50 = trunc i32 %i.w to i1
  br label %bb.l

.lr.ph163.i:                                      ; preds = %.lr.ph163.i, %.lr.ph163.i.preheader.new
  %.2162.i = phi i64 [ 0, %.lr.ph163.i.preheader.new ], [ %i.cd, %.lr.ph163.i ] ; 3 uses
  %.1129161.i = phi ptr [ %.0128.lcssa.i, %.lr.ph163.i.preheader.new ], [ %i.cc, %.lr.ph163.i ] ; 3 uses
  %niter42 = phi i64 [ 0, %.lr.ph163.i.preheader.new ], [ %niter42.next.1, %.lr.ph163.i ]
  %i.bu = urem i64 %.2162.i, %i.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %.1129161.i, i64 1
  store i8 %i.bw, ptr %.1129161.i, align 1, !tbaa !24
  %i.by = or disjoint i64 %.2162.i, 1
  %i.bz = urem i64 %i.by, %i.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %.1129161.i, i64 2 ; 2 uses
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !24
  %i.cd = add nuw i64 %.2162.i, 2                 ; 2 uses
  %niter42.next.1 = add nuw i64 %niter42, 2       ; 2 uses
  %niter42.ncmp.1 = icmp eq i64 %niter42.next.1, %unroll_iter41
  br i1 %niter42.ncmp.1, label %.preheader153.i.loopexit.unr-lcssa, label %.lr.ph163.i, !llvm.loop !27

.loopexit.i:                                      ; preds = %bb.r, %.preheader.i
  %i.ce = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.u, ptr noundef %i.j, ptr noundef null) #7
  %.not142.i = icmp eq i32 %i.ce, 0
  br i1 %.not142.i, label %pkcs12kdf_derive.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph174.i
  %.0117173.i = phi ptr [ %1, %.lr.ph174.i ], [ %i.cs, %.loopexit.i ] ; 2 uses
  %.0118172.i = phi i64 [ %2, %.lr.ph174.i ], [ %i.cr, %.loopexit.i ] ; 3 uses
  %i.cf = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.u, ptr noundef %i.ac, i64 noundef %i.ab) #7
  %.not143.i = icmp eq i32 %i.cf, 0
  br i1 %.not143.i, label %pkcs12kdf_derive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.u, ptr noundef %i.ap, i64 noundef %i.ao) #7
  %.not144.i = icmp eq i32 %i.cg, 0
  br i1 %.not144.i, label %pkcs12kdf_derive.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = tail call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.u, ptr noundef %i.ad, ptr noundef null) #7
  %.not145.i = icmp eq i32 %i.ch, 0
  br i1 %.not145.i, label %pkcs12kdf_derive.exit, label %.preheader151.i

.preheader151.i:                                  ; preds = %bb.n
  br i1 %i.bq, label %.lr.ph165.i, label %._crit_edge.i

bb.o:                                             ; preds = %bb.q
  %i.ci = add nuw i64 %.0121164.i, 1              ; 2 uses
  %exitcond188.not.i = icmp eq i64 %i.ci, %i.t
  br i1 %exitcond188.not.i, label %._crit_edge.i, label %.lr.ph165.i, !llvm.loop !28

.lr.ph165.i:                                      ; preds = %.preheader151.i, %bb.o
  %.0121164.i = phi i64 [ %i.ci, %bb.o ], [ 1, %.preheader151.i ]
  %i.cj = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.u, ptr noundef %i.j, ptr noundef null) #7
  %.not148.i = icmp eq i32 %i.cj, 0
  br i1 %.not148.i, label %pkcs12kdf_derive.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph165.i
  %i.ck = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.u, ptr noundef %i.ad, i64 noundef %i.aa) #7
  %.not149.i = icmp eq i32 %i.ck, 0
  br i1 %.not149.i, label %pkcs12kdf_derive.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = tail call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.u, ptr noundef %i.ad, ptr noundef null) #7
  %.not150.i = icmp eq i32 %i.cl, 0
  br i1 %.not150.i, label %pkcs12kdf_derive.exit, label %bb.o

._crit_edge.i:                                    ; preds = %bb.o, %.preheader151.i
  %i.cm = tail call i64 @llvm.umin.i64(i64 %.0118172.i, i64 %i.aa)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0117173.i, ptr align 1 %i.ad, i64 %i.cm, i1 false)
  %.not146.i = icmp ugt i64 %.0118172.i, %i.aa
  br i1 %.not146.i, label %.preheader.preheader, label %pkcs12kdf_derive.exit

.preheader.preheader:                             ; preds = %._crit_edge.i
  br i1 %i.bs, label %.preheader.epil.preheader, label %.preheader

.preheader.i.unr-lcssa:                           ; preds = %.preheader
  br i1 %lcmp.mod44.not, label %.preheader.i, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.preheader.preheader
  %.0125166.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.dc, %.preheader.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.cn = urem i64 %.0125166.i.epil.init, %i.aa
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0125166.i.epil.init
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !24
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.preheader.epil.preheader
  %i.cr = sub nuw i64 %.0118172.i, %i.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %.0117173.i, i64 %i.aa
  br i1 %.not186.i, label %.loopexit.i, label %.lr.ph170.i

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0125166.i = phi i64 [ %i.dc, %.preheader ], [ 0, %.preheader.preheader ] ; 4 uses
  %niter47 = phi i64 [ %niter47.next.1, %.preheader ], [ 0, %.preheader.preheader ]
  %i.ct = urem i64 %.0125166.i, %i.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0125166.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !24
  %i.cx = or disjoint i64 %.0125166.i, 1          ; 2 uses
  %i.cy = urem i64 %i.cx, %i.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !24
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cx
  store i8 %i.da, ptr %i.db, align 1, !tbaa !24
  %i.dc = add nuw nsw i64 %.0125166.i, 2          ; 2 uses
  %niter47.next.1 = add i64 %niter47, 2           ; 2 uses
  %niter47.ncmp.1 = icmp eq i64 %niter47.next.1, %unroll_iter46
  br i1 %niter47.ncmp.1, label %.preheader.i.unr-lcssa, label %.preheader, !llvm.loop !29

.lr.ph170.i:                                      ; preds = %.preheader.i, %bb.r
  %.1169.i = phi i64 [ %i.ei, %bb.r ], [ 0, %.preheader.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.1169.i ; 3 uses
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph170.i.new

.lr.ph170.i.new:                                  ; preds = %.lr.ph170.i, %.lr.ph170.i.new
  %.0168.i = phi i16 [ %i.dz, %.lr.ph170.i.new ], [ 1, %.lr.ph170.i ]
  %.0124167.i = phi i64 [ %i.dp, %.lr.ph170.i.new ], [ %i.ab, %.lr.ph170.i ] ; 2 uses
  %niter52 = phi i64 [ %niter52.next.1, %.lr.ph170.i.new ], [ 0, %.lr.ph170.i ]
  %i.de = add nsw i64 %.0124167.i, -1             ; 2 uses
end_hunk_0
begin_hunk_1_@kdf_pkcs12_set_ctx_params:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.a) #7
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call i32 @ossl_prov_digest_load_from_params(ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef %i.b) #7
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %ossl_param_is_empty.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #7 ; 4 uses
  %.not25 = icmp eq ptr %i.g, null
  br i1 %.not25, label %pkcs12kdf_set_membuf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.k = load i64, ptr %i.i, align 8, !tbaa !35
  tail call void @CRYPTO_clear_free(ptr noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 204) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 209) #7 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !tbaa !34
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %ossl_param_is_empty.exit.thread, label %pkcs12kdf_set_membuf.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %pkcs12kdf_set_membuf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 noundef 0, ptr noundef nonnull %i.i) #7
  %.not10.i = icmp eq i32 %i.s, 0
  br i1 %.not10.i, label %ossl_param_is_empty.exit.thread, label %pkcs12kdf_set_membuf.exit

pkcs12kdf_set_membuf.exit:                        ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.t = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #7 ; 4 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %pkcs12kdf_set_membuf.exit36, label %bb.h

bb.h:                                             ; preds = %pkcs12kdf_set_membuf.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.x = load i64, ptr %i.v, align 8, !tbaa !35
  tail call void @CRYPTO_clear_free(ptr noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str, i32 noundef 204) #7
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 209) #7 ; 2 uses
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !34
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %ossl_param_is_empty.exit.thread, label %pkcs12kdf_set_membuf.exit36

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  %.not.i33 = icmp eq ptr %i.ae, null
  br i1 %.not.i33, label %pkcs12kdf_set_membuf.exit36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 0, ptr noundef nonnull %i.v) #7
  %.not10.i34 = icmp eq i32 %i.af, 0
  br i1 %.not10.i34, label %ossl_param_is_empty.exit.thread, label %pkcs12kdf_set_membuf.exit36

pkcs12kdf_set_membuf.exit36:                      ; preds = %bb.k, %bb.j, %bb.i, %pkcs12kdf_set_membuf.exit
  %i.ag = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.6) #7 ; 2 uses
  %.not29 = icmp eq ptr %i.ag, null
  br i1 %.not29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pkcs12kdf_set_membuf.exit36
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah) #7
  %.not30 = icmp eq i32 %i.ai, 0
  br i1 %.not30, label %ossl_param_is_empty.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %pkcs12kdf_set_membuf.exit36
  %i.aj = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #7 ; 2 uses
  %.not31 = icmp eq ptr %i.aj, null
  br i1 %.not31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = tail call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #7
  %.not32 = icmp eq i32 %i.al, 0
  br i1 %.not32, label %ossl_param_is_empty.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.a, %bb.n, %bb.l, %bb.b, %ossl_param_is_empty.exit, %bb.o
  %.0 = phi i32 [ 1, %ossl_param_is_empty.exit ], [ 1, %bb.o ], [ 0, %bb.l ], [ 0, %bb.g ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_pkcs12_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @kdf_pkcs12_gettable_ctx_params.known_gettable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal i32 @kdf_pkcs12_get_ctx_params(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.7) #7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.a, i64 noundef -1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

declare i32 @ossl_prov_is_running() local_unnamed_addr #2

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_prov_memdup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_prov_digest_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_prov_digest_reset(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ossl_prov_digest_md(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_MD_get_block_size(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_prov_digest_load_from_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_uint64(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_PARAM_locate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !13, i64 8, !16, i64 32, !17, i64 40, !16, i64 48, !17, i64 56, !17, i64 64, !7, i64 72}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"", !14, i64 0, !14, i64 8, !15, i64 16}
!14 = !{!"p1 _ZTS9evp_md_st", !12, i64 0}
!15 = !{!"p1 _ZTS9engine_st", !12, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!11, !16, i64 48}
!19 = !{!11, !17, i64 56}
!20 = !{!11, !16, i64 32}
!21 = !{!11, !17, i64 40}
!22 = !{!11, !17, i64 64}
!23 = !{!11, !7, i64 72}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = !{!33, !16, i64 0}
!33 = !{!"ossl_param_st", !16, i64 0, !7, i64 8, !12, i64 16, !17, i64 24, !17, i64 32}
!34 = !{!16, !16, i64 0}
!35 = !{!17, !17, i64 0}
!36 = !{!33, !17, i64 24}
!37 = !{!33, !12, i64 16}
end_hunk_1
