Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/digest?download=true
inline.NumInlined: 54
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@EVP_MD_CTX_deserialize:bb.a
; Function Attrs: nounwind uwtable
define ptr @EVP_MD_CTX_dup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 107) #7 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.a, ptr noundef %0)
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %i.a, i32 noundef 1024) #7
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.d, label %EVP_MD_CTX_free.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.e) #7
  store ptr null, ptr %i.d, align 8, !tbaa !25
  br label %EVP_MD_CTX_free.exit

EVP_MD_CTX_free.exit:                             ; preds = %bb.c, %bb.d
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 48) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 116) #7
  br label %bb.e

bb.e:                                             ; preds = %EVP_MD_CTX_free.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %EVP_MD_CTX_free.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_MD_CTX_copy_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 477, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, ptr noundef null) #7
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %EVP_MD_CTX_reset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #7
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.h) #7
  store ptr null, ptr %i.g, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 48) #7
  br label %EVP_MD_CTX_reset.exit

EVP_MD_CTX_reset.exit:                            ; preds = %bb.d, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 6 uses
  %.not55 = icmp eq ptr %i.j, null
  br i1 %.not55, label %EVP_MD_free.exit, label %bb.h

bb.h:                                             ; preds = %EVP_MD_CTX_reset.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.i, label %EVP_MD_free.exit

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 64
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
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.r, ptr noundef nonnull @.str, i32 noundef 1011) #7
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  tail call void @ossl_provider_free(ptr noundef %i.t) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %i.j, ptr noundef nonnull @.str, i32 noundef 1014) #7
  br label %EVP_MD_free.exit

EVP_MD_free.exit:                                 ; preds = %bb.j, %CRYPTO_DOWN_REF.exit.i, %bb.h, %EVP_MD_CTX_reset.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !74
  br label %bb.af

bb.k:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 491, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #7
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  tail call void %i.ae(ptr noundef %i.ag, ptr noundef %i.ai) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.ak) #7
  store ptr null, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !40
  br label %bb.af

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.ao = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #7
  %.not.i57 = icmp eq i32 %i.ao, 0
  br i1 %.not.i57, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.aq) #7
  store ptr null, ptr %i.ap, align 8, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %.not.i64 = icmp eq ptr %i.as, null
  br i1 %.not.i64, label %evp_md_ctx_reset_ex.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %.not14.i = icmp eq ptr %i.at, null
  br i1 %.not14.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %.not15.i = icmp eq ptr %i.av, null
  br i1 %.not15.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void %i.av(ptr noundef nonnull %i.as) #7, !inline_history !75
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  store ptr null, ptr %i.ar, align 8, !tbaa !13
  tail call void @EVP_MD_CTX_set_flags(ptr noundef nonnull %0, i32 noundef 2) #7
  br label %evp_md_ctx_reset_ex.exit

evp_md_ctx_reset_ex.exit:                         ; preds = %bb.w, %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20 ; 4 uses
  %.not51 = icmp eq ptr %i.ax, %i.az              ; 2 uses
  %.not52 = icmp eq ptr %i.az, null
  %or.cond = or i1 %.not51, %.not52
  br i1 %or.cond, label %EVP_MD_up_ref.exit, label %bb.x

bb.x:                                             ; preds = %evp_md_ctx_reset_ex.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !21
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.y, label %EVP_MD_up_ref.exit

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.be = atomicrmw add ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %EVP_MD_up_ref.exit

EVP_MD_up_ref.exit:                               ; preds = %bb.y, %bb.x, %evp_md_ctx_reset_ex.exit
  br i1 %.not51, label %EVP_MD_free.exit61, label %bb.z

bb.z:                                             ; preds = %EVP_MD_up_ref.exit
  %2 = load ptr, ptr %i.aw, align 8, !tbaa !20    ; 6 uses
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %EVP_MD_free.exit61, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !21
  %.not.i58 = icmp eq i32 %i.bg, 0
  br i1 %.not.i58, label %bb.ab, label %EVP_MD_free.exit61

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 release, align 4 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %CRYPTO_DOWN_REF.exit.thread.i60, label %CRYPTO_DOWN_REF.exit.i59

CRYPTO_DOWN_REF.exit.thread.i60:                  ; preds = %bb.ab
  fence acquire
  br label %bb.ac

CRYPTO_DOWN_REF.exit.i59:                         ; preds = %bb.ab
  %i.bk = icmp sgt i32 %i.bi, 1
  br i1 %i.bk, label %EVP_MD_free.exit61, label %bb.ac

bb.ac:                                            ; preds = %CRYPTO_DOWN_REF.exit.i59, %CRYPTO_DOWN_REF.exit.thread.i60
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.bm, ptr noundef nonnull @.str, i32 noundef 1011) #7
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23
  tail call void @ossl_provider_free(ptr noundef %i.bo) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %2, ptr noundef nonnull @.str, i32 noundef 1014) #7
  br label %EVP_MD_free.exit61

EVP_MD_free.exit61:                               ; preds = %bb.ac, %CRYPTO_DOWN_REF.exit.i59, %bb.aa, %bb.z, %EVP_MD_up_ref.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !74
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %.not54 = icmp eq ptr %i.br, null
  br i1 %.not54, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %EVP_MD_free.exit61
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !55
  %i.bv = tail call ptr %i.bu(ptr noundef nonnull %i.br) #7 ; 2 uses
  store ptr %i.bv, ptr %i.ar, align 8, !tbaa !13
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #7
  br label %bb.aj

bb.af:                                            ; preds = %bb.p, %bb.ad, %EVP_MD_free.exit61, %EVP_MD_free.exit
  tail call void @EVP_MD_CTX_clear_flags(ptr noundef nonnull %0, i32 noundef 1024) #7
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25 ; 2 uses
  %.not56 = icmp eq ptr %i.by, null
  br i1 %.not56, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = tail call ptr @EVP_PKEY_CTX_dup(ptr noundef nonnull %i.by) #7 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !25
  %i.cb = icmp eq ptr %i.bz, null
  br i1 %i.cb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @__func__.EVP_MD_CTX_copy_ex) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #7
  %i.cc = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #7
  %.not.i.i62 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i62, label %bb.ai, label %EVP_MD_CTX_reset.exit63

bb.ai:                                            ; preds = %bb.ah
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !25
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.cd) #7
  store ptr null, ptr %i.ca, align 8, !tbaa !25
  br label %EVP_MD_CTX_reset.exit63

EVP_MD_CTX_reset.exit63:                          ; preds = %bb.ah, %bb.ai
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 48) #7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ag, %EVP_MD_CTX_reset.exit63, %bb.ae, %bb.m, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %EVP_MD_CTX_reset.exit63 ], [ 0, %bb.ae ], [ 0, %bb.m ], [ 1, %bb.ag ], [ 1, %bb.af ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_MD_CTX_copy(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %EVP_MD_CTX_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %0, i32 noundef 1024) #7
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.d) #7
  store ptr null, ptr %i.c, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 48) #7
  br label %EVP_MD_CTX_reset.exit

EVP_MD_CTX_reset.exit:                            ; preds = %bb.a, %bb.d
  %i.e = tail call i32 @EVP_MD_CTX_copy_ex(ptr noundef %0, ptr noundef %1)
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @EVP_MD_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = atomicrmw add ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

declare void @EVP_MD_CTX_clear_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @EVP_PKEY_CTX_dup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_Digest(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef readnone captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %bb.b, label %bb.h, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 107) #7 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @EVP_MD_CTX_set_flags(ptr noundef nonnull %i.b, i32 noundef 1) #7
  %i.d = tail call fastcc i32 @evp_md_init_internal(ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.b, ptr noundef %0, i64 noundef %1)
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3)
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.i = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ %i.h, %bb.e ]
  %i.j = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef nonnull %i.b, i32 noundef 1024) #7
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.g, label %EVP_MD_CTX_free.exit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  tail call void @EVP_PKEY_CTX_free(ptr noundef %i.l) #7
  store ptr null, ptr %i.k, align 8, !tbaa !25
  br label %EVP_MD_CTX_free.exit

EVP_MD_CTX_free.exit:                             ; preds = %bb.f, %bb.g
  tail call void @evp_md_ctx_clear_digest(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 48) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 116) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %EVP_MD_CTX_free.exit
  %.0 = phi i32 [ 0, %bb.a ], [ %i.i, %EVP_MD_CTX_free.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_Q_digest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
end_hunk_0
