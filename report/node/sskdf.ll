inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@sskdf_dup:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !22
  tail call void @CRYPTO_clear_free(ptr noundef %i.az, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 332) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.an, i8 0, i64 96, i1 false)
  store ptr %i.am, ptr %i.c, align 8, !tbaa !9
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 343) #6
  br label %sskdf_new.exit.thread

sskdf_new.exit.thread:                            ; preds = %bb.b, %bb.a, %bb.i, %sskdf_free.exit
  %.0 = phi ptr [ null, %sskdf_free.exit ], [ %i.c, %bb.i ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @sskdf_free(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void @EVP_MAC_CTX_free(ptr noundef %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  tail call void @CRYPTO_clear_free(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 330) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  tail call void @CRYPTO_clear_free(ptr noundef %i.j, i64 noundef %i.l, ptr noundef nonnull @.str, i32 noundef 331) #6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  tail call void @CRYPTO_clear_free(ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 332) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 343) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sskdf_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void @EVP_MAC_CTX_free(ptr noundef %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  tail call void @CRYPTO_clear_free(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 330) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  tail call void @CRYPTO_clear_free(ptr noundef %i.j, i64 noundef %i.l, ptr noundef nonnull @.str, i32 noundef 331) #6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  tail call void @CRYPTO_clear_free(ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 332) #6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, i8 0, i64 96, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sskdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca [2 x %struct.ossl_param_st], align 16 ; 8 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %sskdf_set_ctx_params.exit.thread, label %ossl_param_is_empty.exit.i

ossl_param_is_empty.exit.i:                       ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sskdf_set_ctx_params.exit.thread, label %sskdf_set_ctx_params.exit

sskdf_set_ctx_params.exit:                        ; preds = %ossl_param_is_empty.exit.i
  %i.g = tail call fastcc i32 @sskdf_common_set_ctx_params(ptr noundef %0, ptr noundef nonnull %3)
  %.not48 = icmp eq i32 %i.g, 0
  br i1 %.not48, label %bb.ao, label %sskdf_set_ctx_params.exit.thread

sskdf_set_ctx_params.exit.thread:                 ; preds = %bb.b, %ossl_param_is_empty.exit.i, %sskdf_set_ctx_params.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sskdf_set_ctx_params.exit.thread
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 422, ptr noundef nonnull @__func__.sskdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 132, ptr noundef null) #6
  br label %bb.ao

bb.d:                                             ; preds = %sskdf_set_ctx_params.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.k) #6 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %.not49 = icmp eq ptr %i.n, null
  br i1 %.not49, label %bb.al, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @EVP_MAC_CTX_get0_mac(ptr noundef nonnull %i.n) #6 ; 2 uses
  %i.p = tail call i32 @EVP_MAC_is_a(ptr noundef %i.o, ptr noundef nonnull @.str.1) #6
  %.not50.not = icmp eq i32 %i.p, 0               ; 2 uses
  br i1 %.not50.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %i.l, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 439, ptr noundef nonnull @__func__.sskdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 129, ptr noundef null) #6
  br label %bb.ao

bb.h:                                             ; preds = %bb.f
  %i.r = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %i.l) #6 ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.ao, label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i32 @EVP_MAC_is_a(ptr noundef %i.o, ptr noundef nonnull @.str.2) #6
  %.not52 = icmp eq i32 %i.v, 0
  %. = select i1 %.not52, i32 132, i32 164
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 454, ptr noundef nonnull @__func__.sskdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 137, ptr noundef null) #6
  br label %bb.ao

bb.l:                                             ; preds = %bb.j, %bb.h
  %.043 = phi ptr [ null, %bb.h ], [ @kmac_custom_str, %bb.j ]
  %.042 = phi i64 [ 0, %bb.h ], [ 3, %bb.j ]
  %.041 = phi i32 [ %i.r, %bb.h ], [ %., %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = zext nneg i32 %.041 to i64              ; 3 uses
  %i.ad = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.ac, ptr noundef nonnull @.str, i32 noundef 459) #6 ; 3 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !21
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.ag = phi i64 [ %i.ac, %bb.o ], [ %i.aa, %bb.m ]
  %i.ah = phi ptr [ %i.ad, %bb.o ], [ %i.x, %bb.m ]
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25 ; 5 uses
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.as = icmp ugt i64 %i.an, 1073741824
  %i.at = icmp ugt i64 %i.ar, 1073741824
  %or.cond.i = or i1 %i.as, %i.at
  %i.au = add i64 %2, -1073741825
  %i.av = icmp ult i64 %i.au, -1073741824
  %or.cond5.i = or i1 %i.av, %or.cond.i
  br i1 %or.cond5.i, label %SSKDF_mac_kdm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  br i1 %.not50.not, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %.043, i64 noundef range(i64 0, 4) %.042) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.ax = call i32 @EVP_MAC_CTX_set_params(ptr noundef %i.ai, ptr noundef nonnull %4) #6
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %kmac_init.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp eq i64 %i.ak, 0
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.az = icmp eq i64 %i.ak, %2
  br i1 %i.az, label %bb.v, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.u
  %7 = add i64 %i.ak, -20                         ; 2 uses
  %i.ba = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 62)
  switch i64 %i.ba, label %kmac_init.exit.thread.i [
    i64 11, label %bb.v
    i64 7, label %bb.v
    i64 3, label %bb.v
    i64 2, label %bb.v
    i64 0, label %bb.v
  ]

bb.v:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %i.bb = call i32 @EVP_MAC_CTX_set_params(ptr noundef %i.ai, ptr noundef nonnull %4) #6
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %kmac_init.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 64
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bf = call noalias ptr @CRYPTO_zalloc(i64 noundef %i.bd, ptr noundef nonnull @.str, i32 noundef 222) #6 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %kmac_init.exit.thread.i, label %bb.y

kmac_init.exit.thread.i:                          ; preds = %bb.x, %bb.v, %switch.early.test.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread.i

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.q
  %.1.i = phi ptr [ null, %bb.q ], [ null, %bb.w ], [ %i.bf, %bb.x ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not73.i = icmp eq ptr %.1.i, null             ; 3 uses
  %spec.select.i = select i1 %.not73.i, ptr %i.c, ptr %.1.i ; 2 uses
  %i.bh = call i32 @EVP_MAC_init(ptr noundef %i.ai, ptr noundef nonnull %i.ah, i64 noundef %i.ag, ptr noundef null) #6
  %.not74.i = icmp eq i32 %i.bh, 0
  br i1 %.not74.i, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = call i64 @EVP_MAC_CTX_get_mac_size(ptr noundef %i.ai) #6 ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = icmp ugt i64 %i.bi, 64
  %or.cond7.i = and i1 %.not73.i, %i.bk
  br i1 %or.cond7.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.b, align 4, !tbaa !33
  %i.bo = call ptr @EVP_MAC_CTX_dup(ptr noundef %i.ai) #6 ; 2 uses
  %.not7599.i = icmp eq ptr %i.bo, null
  br i1 %.not7599.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ai
  %i.bp = phi ptr [ %i.cg, %bb.ai ], [ %i.bo, %.preheader.i ] ; 13 uses
  %.060102.i = phi ptr [ %i.bx, %bb.ai ], [ %1, %.preheader.i ] ; 3 uses
  %.061101.i = phi i64 [ %i.bu, %bb.ai ], [ %2, %.preheader.i ] ; 4 uses
  %.063100.i = phi i64 [ %i.by, %bb.ai ], [ 1, %.preheader.i ]
  %i.bq = call i32 @EVP_MAC_update(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.b, i64 noundef 4) #6
  %.not76.i = icmp eq i32 %i.bq, 0
  br i1 %.not76.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  %i.br = call i32 @EVP_MAC_update(ptr noundef nonnull %i.bp, ptr noundef %i.al, i64 noundef %i.an) #6
  %.not77.i = icmp eq i32 %i.br, 0
  br i1 %.not77.i, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = call i32 @EVP_MAC_update(ptr noundef nonnull %i.bp, ptr noundef %i.ap, i64 noundef %i.ar) #6
  %.not78.i = icmp eq i32 %i.bs, 0
  br i1 %.not78.i, label %.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not79.i = icmp ult i64 %.061101.i, %i.bi
  br i1 %.not79.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = call i32 @EVP_MAC_final(ptr noundef nonnull %i.bp, ptr noundef %.060102.i, ptr noundef null, i64 noundef %.061101.i) #6
  %.not81.i = icmp eq i32 %i.bt, 0
  br i1 %.not81.i, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = sub i64 %.061101.i, %i.bi               ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.loopexit.i, label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.bw = call i32 @EVP_MAC_final(ptr noundef nonnull %i.bp, ptr noundef nonnull %spec.select.i, ptr noundef null, i64 noundef %i.bi) #6
  %.not80.i = icmp eq i32 %i.bw, 0
  br i1 %.not80.i, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.060102.i, ptr nonnull align 1 %spec.select.i, i64 %.061101.i, i1 false)
  br label %.loopexit.i

bb.ai:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw i8, ptr %.060102.i, i64 %i.bi
  call void @EVP_MAC_CTX_free(ptr noundef nonnull %i.bp) #6
  %i.by = add i64 %.063100.i, 1                   ; 5 uses
  %i.bz = lshr i64 %i.by, 24
  %i.ca = trunc i64 %i.bz to i8
  store i8 %i.ca, ptr %i.b, align 4, !tbaa !33
  %i.cb = lshr i64 %i.by, 16
  %i.cc = trunc i64 %i.cb to i8
  store i8 %i.cc, ptr %i.bl, align 1, !tbaa !33
  %i.cd = lshr i64 %i.by, 8
  %i.ce = trunc i64 %i.cd to i8
  store i8 %i.ce, ptr %i.bm, align 2, !tbaa !33
  %i.cf = trunc i64 %i.by to i8
  store i8 %i.cf, ptr %i.bn, align 1, !tbaa !33
  %i.cg = call ptr @EVP_MAC_CTX_dup(ptr noundef %i.ai) #6 ; 2 uses
  %.not75.i = icmp eq ptr %i.cg, null
  br i1 %.not75.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.ai, %bb.af, %bb.ae, %bb.ac, %bb.ab, %.lr.ph.i, %bb.ah, %bb.ag, %.preheader.i, %bb.z, %bb.y
  %.064.i = phi i32 [ 0, %bb.z ], [ 0, %bb.ag ], [ 1, %bb.ah ], [ 0, %bb.y ], [ 0, %.preheader.i ], [ 1, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ai ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %.lr.ph.i ] ; 2 uses
  %.059.i = phi ptr [ null, %bb.z ], [ %i.bp, %bb.ag ], [ %i.bp, %bb.ah ], [ null, %bb.y ], [ null, %.preheader.i ], [ %i.bp, %bb.af ], [ %i.bp, %bb.ae ], [ null, %bb.ai ], [ %i.bp, %bb.ac ], [ %i.bp, %bb.ab ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  br i1 %.not73.i, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i
  call void @CRYPTO_clear_free(ptr noundef nonnull %.1.i, i64 noundef %i.ak, ptr noundef nonnull @.str, i32 noundef 301) #6
  br label %bb.ak

.thread.i:                                        ; preds = %.loopexit.i, %bb.aa, %kmac_init.exit.thread.i
  %.05995.i = phi ptr [ %.059.i, %.loopexit.i ], [ null, %bb.aa ], [ null, %kmac_init.exit.thread.i ]
  %.06493.i = phi i32 [ %.064.i, %.loopexit.i ], [ 0, %bb.aa ], [ 0, %kmac_init.exit.thread.i ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #6
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  %.05994.i = phi ptr [ %.05995.i, %.thread.i ], [ %.059.i, %bb.aj ]
  %.06492.i = phi i32 [ %.06493.i, %.thread.i ], [ %.064.i, %bb.aj ]
  call void @EVP_MAC_CTX_free(ptr noundef %.05994.i) #6
  br label %SSKDF_mac_kdm.exit

SSKDF_mac_kdm.exit:                               ; preds = %bb.p, %bb.ak
  %.062.i = phi i32 [ %.06492.i, %bb.ak ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ao

bb.al:                                            ; preds = %bb.d
  %i.ch = icmp eq ptr %i.l, null
  br i1 %i.ch, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 473, ptr noundef nonnull @__func__.sskdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 129, ptr noundef null) #6
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !24
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !20
  %i.cp = tail call fastcc i32 @SSKDF_hash_kdm(ptr noundef %i.l, ptr noundef %i.ci, i64 noundef %i.ck, ptr noundef %i.cm, i64 noundef %i.co, i32 noundef 0, ptr noundef %1, i64 noundef %2)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.g, %bb.k, %SSKDF_mac_kdm.exit, %bb.h, %bb.n, %bb.a, %sskdf_set_ctx_params.exit, %bb.an, %bb.am, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.am ], [ %i.cp, %bb.an ], [ 0, %sskdf_set_ctx_params.exit ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.h ], [ %.062.i, %SSKDF_mac_kdm.exit ], [ 0, %bb.n ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @sskdf_settable_ctx_params(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  ret ptr @sskdf_settable_ctx_params.known_settable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sskdf_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.c = tail call fastcc i32 @sskdf_common_set_ctx_params(ptr noundef %0, ptr noundef nonnull %1)
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.a, %bb.b, %ossl_param_is_empty.exit
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %ossl_param_is_empty.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @sskdf_gettable_ctx_params(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  ret ptr @sskdf_gettable_ctx_params.known_gettable_ctx_params
}
end_hunk_0
