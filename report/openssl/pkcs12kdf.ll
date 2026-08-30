Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/pkcs12kdf?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kdf_pkcs12_new:bb.a
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 72, ptr noundef nonnull @.str, i32 noundef 146) #8 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.b, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @kdf_pkcs12_dup(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = tail call i32 @ossl_prov_is_running() #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %kdf_pkcs12_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 72, ptr noundef nonnull @.str, i32 noundef 146) #8 ; 15 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %kdf_pkcs12_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = tail call i32 @ossl_prov_memdup(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #8
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %kdf_pkcs12_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = tail call i32 @ossl_prov_memdup(ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #8
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %kdf_pkcs12_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = tail call i32 @ossl_prov_digest_copy(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #8
  %.not23 = icmp eq i32 %i.u, 0
  br i1 %.not23, label %kdf_pkcs12_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.w, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !20
  br label %kdf_pkcs12_new.exit.thread

kdf_pkcs12_free.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.ab) #8
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !15
  tail call void @CRYPTO_free(ptr noundef %i.ac, ptr noundef nonnull @.str, i32 noundef 156) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull @.str, i32 noundef 157) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 167) #8
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
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef 156) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 157) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 167) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kdf_pkcs12_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 156) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 157) #8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_pkcs12_derive(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @kdf_pkcs12_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @__func__.kdf_pkcs12_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 130, ptr noundef null) #8
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @__func__.kdf_pkcs12_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #8
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.i) #8 ; 5 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18   ; 5 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = tail call ptr @EVP_MD_CTX_new() #8       ; 10 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.loopexit152.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 @EVP_MD_get_block_size(ptr noundef %i.j) #8 ; 4 uses
  %i.x = tail call i32 @EVP_MD_get_size(ptr noundef %i.j) #8 ; 2 uses
  %i.y = icmp slt i32 %i.x, 1
  %i.z = icmp slt i32 %i.w, 1
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %.loopexit152.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %i.x to i64               ; 9 uses
  %i.ab = zext nneg i32 %i.w to i64               ; 16 uses
  %i.ac = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 76) #8 ; 13 uses
  %i.ad = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 77) #8 ; 18 uses
  %i.ae = add nuw nsw i64 %i.ab, 1
  %i.af = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ae, ptr noundef nonnull @.str, i32 noundef 78) #8 ; 17 uses
  %i.ag = add i64 %i.p, -1
  %i.ah = add i64 %i.ag, %i.ab                    ; 3 uses
  %i.ai = urem i64 %i.ah, %i.ab                   ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.m, -1
  %i.al = add i64 %i.ak, %i.ab                    ; 2 uses
  %i.am = urem i64 %i.al, %i.ab
  %i.an = sub nuw i64 %i.al, %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0123.i = phi i64 [ %i.an, %bb.j ], [ 0, %bb.i ] ; 6 uses
  %i.ao = add i64 %.0123.i, %i.aj                 ; 4 uses
  %i.ap = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ao, ptr noundef nonnull @.str, i32 noundef 85) #8 ; 16 uses
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 %i.aw, i64 %i.ab, i1 false), !tbaa !21
  %.not184.i = icmp eq i64 %i.ah, %i.ai
  br i1 %.not184.i, label %.preheader155.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader157.i
  %xtraiter = and i64 %i.aj, 1
  %i.ax = icmp ult i64 %i.aj, 2
  br i1 %i.ax, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aj, -2
  br label %.lr.ph.i

.preheader155.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader155.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader155.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1122160.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bm, %.preheader155.i.loopexit.unr-lcssa ]
  %.0125159.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i.preheader ], [ %i.bl, %.preheader155.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ay = urem i64 %.1122160.i.epil.init, %i.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.0125159.i.epil.init, i64 1
  store i8 %i.ba, ptr %.0125159.i.epil.init, align 1, !tbaa !21
  br label %.preheader155.i

.preheader155.i:                                  ; preds = %.lr.ph.i.epil.preheader, %.preheader155.i.loopexit.unr-lcssa, %.preheader157.i
  %.0125.lcssa.i = phi ptr [ %i.ap, %.preheader157.i ], [ %i.bl, %.preheader155.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.not185.i = icmp eq i64 %.0123.i, 0
  br i1 %.not185.i, label %.preheader153.i, label %.lr.ph163.i.preheader

.lr.ph163.i.preheader:                            ; preds = %.preheader155.i
  %xtraiter38 = and i64 %.0123.i, 1
  %i.bc = icmp eq i64 %.0123.i, 1
  br i1 %i.bc, label %.lr.ph163.i.epil.preheader, label %.lr.ph163.i.preheader.new

.lr.ph163.i.preheader.new:                        ; preds = %.lr.ph163.i.preheader
  %unroll_iter41 = and i64 %.0123.i, -2
  br label %.lr.ph163.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.1122160.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bm, %.lr.ph.i ] ; 3 uses
  %.0125159.i = phi ptr [ %i.ap, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bd = urem i64 %.1122160.i, %i.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.0125159.i, i64 1
  store i8 %i.bf, ptr %.0125159.i, align 1, !tbaa !21
  %i.bh = or disjoint i64 %.1122160.i, 1
  %i.bi = urem i64 %i.bh, %i.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.0125159.i, i64 2 ; 3 uses
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !21
  %i.bm = add nuw i64 %.1122160.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader155.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22

.preheader153.i.loopexit.unr-lcssa:               ; preds = %.lr.ph163.i
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.preheader153.i, label %.lr.ph163.i.epil.preheader

.lr.ph163.i.epil.preheader:                       ; preds = %.preheader153.i.loopexit.unr-lcssa, %.lr.ph163.i.preheader
  %.2162.i.epil.init = phi i64 [ 0, %.lr.ph163.i.preheader ], [ %i.ce, %.preheader153.i.loopexit.unr-lcssa ]
  %.1126161.i.epil.init = phi ptr [ %.0125.lcssa.i, %.lr.ph163.i.preheader ], [ %i.cd, %.preheader153.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.0123.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.bn = urem i64 %.2162.i.epil.init, %i.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !21
  store i8 %i.bp, ptr %.1126161.i.epil.init, align 1, !tbaa !21
  br label %.preheader153.i

.preheader153.i:                                  ; preds = %.lr.ph163.i.epil.preheader, %.preheader153.i.loopexit.unr-lcssa, %.preheader155.i
  %i.bq = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.u, ptr noundef %i.j, ptr noundef null) #8
  %.not142171.i = icmp eq i32 %i.bq, 0
  br i1 %.not142171.i, label %pkcs12kdf_derive.exit, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.preheader153.i
  %i.br = icmp ugt i64 %i.t, 1
  %.not186.i = icmp eq i64 %i.ao, 0
  %i.bs = add nsw i64 %i.ab, -1                   ; 2 uses
  %xtraiter43 = and i64 %i.ab, 1
  %i.bt = icmp eq i64 %i.bs, 0
  %unroll_iter46 = and i64 %i.ab, 2147483646
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  %lcmp.mod45 = trunc i32 %i.w to i1
  %xtraiter48 = and i64 %i.ab, 1
  %i.bu = icmp eq i64 %i.bs, 0
  %unroll_iter51 = and i64 %i.ab, 2147483646
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  %lcmp.mod50 = trunc i32 %i.w to i1
  br label %bb.l

.lr.ph163.i:                                      ; preds = %.lr.ph163.i, %.lr.ph163.i.preheader.new
  %.2162.i = phi i64 [ 0, %.lr.ph163.i.preheader.new ], [ %i.ce, %.lr.ph163.i ] ; 3 uses
  %.1126161.i = phi ptr [ %.0125.lcssa.i, %.lr.ph163.i.preheader.new ], [ %i.cd, %.lr.ph163.i ] ; 3 uses
  %niter42 = phi i64 [ 0, %.lr.ph163.i.preheader.new ], [ %niter42.next.1, %.lr.ph163.i ]
  %i.bv = urem i64 %.2162.i, %i.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %.1126161.i, i64 1
  store i8 %i.bx, ptr %.1126161.i, align 1, !tbaa !21
  %i.bz = or disjoint i64 %.2162.i, 1
  %i.ca = urem i64 %i.bz, %i.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.1126161.i, i64 2 ; 2 uses
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !21
  %i.ce = add nuw i64 %.2162.i, 2                 ; 2 uses
  %niter42.next.1 = add nuw i64 %niter42, 2       ; 2 uses
  %niter42.ncmp.1 = icmp eq i64 %niter42.next.1, %unroll_iter41
  br i1 %niter42.ncmp.1, label %.preheader153.i.loopexit.unr-lcssa, label %.lr.ph163.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %bb.r, %.preheader.i
  %i.cf = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.u, ptr noundef %i.j, ptr noundef null) #8
  %.not142.i = icmp eq i32 %i.cf, 0
  br i1 %.not142.i, label %pkcs12kdf_derive.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph174.i
  %.0130173.i = phi i64 [ %2, %.lr.ph174.i ], [ %i.cs, %.loopexit.i ] ; 3 uses
  %.0131172.i = phi ptr [ %1, %.lr.ph174.i ], [ %i.ct, %.loopexit.i ] ; 2 uses
  %i.cg = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.u, ptr noundef %i.ac, i64 noundef %i.ab) #8
  %.not143.i = icmp eq i32 %i.cg, 0
  br i1 %.not143.i, label %pkcs12kdf_derive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.u, ptr noundef %i.ap, i64 noundef %i.ao) #8
  %.not144.i = icmp eq i32 %i.ch, 0
  br i1 %.not144.i, label %pkcs12kdf_derive.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.u, ptr noundef %i.ad, ptr noundef null) #8
  %.not145.i = icmp eq i32 %i.ci, 0
  br i1 %.not145.i, label %pkcs12kdf_derive.exit, label %.preheader151.i

.preheader151.i:                                  ; preds = %bb.n
  br i1 %i.br, label %.lr.ph165.i, label %._crit_edge.i

bb.o:                                             ; preds = %bb.q
  %i.cj = add nuw i64 %.0118164.i, 1              ; 2 uses
  %exitcond188.not.i = icmp eq i64 %i.cj, %i.t
  br i1 %exitcond188.not.i, label %._crit_edge.i, label %.lr.ph165.i, !llvm.loop !25

.lr.ph165.i:                                      ; preds = %.preheader151.i, %bb.o
  %.0118164.i = phi i64 [ %i.cj, %bb.o ], [ 1, %.preheader151.i ]
  %i.ck = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.u, ptr noundef %i.j, ptr noundef null) #8
  %.not148.i = icmp eq i32 %i.ck, 0
  br i1 %.not148.i, label %pkcs12kdf_derive.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph165.i
  %i.cl = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.u, ptr noundef %i.ad, i64 noundef %i.aa) #8
  %.not149.i = icmp eq i32 %i.cl, 0
  br i1 %.not149.i, label %pkcs12kdf_derive.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = tail call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.u, ptr noundef %i.ad, ptr noundef null) #8
  %.not150.i = icmp eq i32 %i.cm, 0
  br i1 %.not150.i, label %pkcs12kdf_derive.exit, label %bb.o

._crit_edge.i:                                    ; preds = %bb.o, %.preheader151.i
  %i.cn = tail call i64 @llvm.umin.i64(i64 %.0130173.i, i64 %i.aa)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0131172.i, ptr align 1 %i.ad, i64 %i.cn, i1 false)
  %.not146.i = icmp ugt i64 %.0130173.i, %i.aa
  br i1 %.not146.i, label %.preheader.preheader, label %pkcs12kdf_derive.exit

.preheader.preheader:                             ; preds = %._crit_edge.i
  br i1 %i.bt, label %.preheader.epil.preheader, label %.preheader

.preheader.i.unr-lcssa:                           ; preds = %.preheader
  br i1 %lcmp.mod44.not, label %.preheader.i, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.preheader.preheader
  %.0120166.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.dd, %.preheader.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.co = urem i64 %.0120166.i.epil.init, %i.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0120166.i.epil.init
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !21
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.preheader.epil.preheader
  %i.cs = sub nuw i64 %.0130173.i, %i.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %.0131172.i, i64 %i.aa
  br i1 %.not186.i, label %.loopexit.i, label %.lr.ph170.i

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0120166.i = phi i64 [ %i.dd, %.preheader ], [ 0, %.preheader.preheader ] ; 4 uses
  %niter47 = phi i64 [ %niter47.next.1, %.preheader ], [ 0, %.preheader.preheader ]
  %i.cu = urem i64 %.0120166.i, %i.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0120166.i
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !21
  %i.cy = or disjoint i64 %.0120166.i, 1          ; 2 uses
  %i.cz = urem i64 %i.cy, %i.aa
end_hunk_0
