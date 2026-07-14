inline.NumInlined: 174
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@kdf_argon2_reset:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ad = zext i32 %i.ac to i64
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.aa, i64 noundef %i.ad, ptr noundef nonnull @.str, i32 noundef 1139) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 64, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  store <4 x i32> <i32 3, i32 8, i32 1, i32 1>, ptr %i.af, align 4, !tbaa !5
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 19, ptr %i.ag, align 4, !tbaa !17
  store i32 %i.b, ptr %i.a, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_argon2_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @kdf_argon2_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not58 = icmp eq i32 %i.b, 0
  br i1 %.not58, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = tail call ptr @EVP_MAC_fetch(ptr noundef %i.g, ptr noundef nonnull @.str.1, ptr noundef %i.i) #9 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1024, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 150, ptr noundef nonnull @.str.2) #9
  br label %bb.z

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.thread64

bb.f:                                             ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = tail call ptr @EVP_MD_fetch(ptr noundef %i.p, ptr noundef nonnull @.str.3, ptr noundef %i.r) #9 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !27
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %.thread64

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1032, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 129, ptr noundef nonnull @.str.4) #9
  br label %bb.z

.thread64:                                        ; preds = %.thread, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !22
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.thread64
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1038, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #9
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !16
  %i.ac = zext i32 %i.ab to i64
  %.not59 = icmp eq i64 %2, %i.ac
  br i1 %.not59, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @OSSL_PARAM_locate(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  %.not60 = icmp eq ptr %i.ad, null
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1044, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #9
  br label %bb.z

bb.m:                                             ; preds = %bb.k
  %i.ae = trunc i64 %2 to i32
  %i.af = tail call fastcc i32 @kdf_argon2_ctx_set_out_length(ptr noundef nonnull %0, i32 noundef %i.ae)
  %.not61 = icmp eq i32 %i.af, 0
  br i1 %.not61, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %switch = icmp ult i32 %i.ah, 3
  br i1 %switch, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1057, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef nonnull @.str.6) #9
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 1
  br i1 %i.ak, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = tail call i64 @ossl_get_avail_threads(ptr noundef %i.an) #9
  %i.ap = icmp ult i64 %i.ao, %i.al
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1069, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !30
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.as = tail call i64 @ossl_get_avail_threads(ptr noundef %i.ar) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 234, ptr noundef nonnull @.str.7, i32 noundef %i.aq, i64 noundef %i.as) #9
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.ai, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31 ; 2 uses
  %i.aw = icmp ugt i32 %i.at, %i.av
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1076, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !30
  %i.ay = load i32, ptr %i.au, align 4, !tbaa !31
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 234, ptr noundef nonnull @.str.8, i32 noundef %i.ax, i32 noundef %i.ay) #9
  br label %bb.z

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.az = phi i32 [ %.pre, %._crit_edge ], [ %i.av, %bb.s ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  %i.bc = shl i32 %i.az, 3
  %i.bd = icmp ult i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1084, ptr noundef nonnull @__func__.kdf_argon2_derive) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 235, ptr noundef nonnull @.str.9) #9
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.be = shl i32 %i.az, 2                        ; 2 uses
  %i.bf = udiv i32 %i.bb, %i.be                   ; 3 uses
  %i.bg = mul i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.bh, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.bf, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !37
  %i.bn = shl nuw i32 %i.bf, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !38
  %i.bp = tail call fastcc i32 @initialize(ptr noundef nonnull %0)
  %.not62.not = icmp eq i32 %i.bp, 0
  br i1 %.not62.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = tail call fastcc i32 @fill_memory_blocks(ptr noundef nonnull %0)
  %.not63.not = icmp eq i32 %i.bq, 0
  br i1 %.not63.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @finalize(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.m, %bb.a, %bb.b, %bb.y, %bb.v, %bb.t, %bb.r, %bb.o, %bb.l, %bb.i, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.m ], [ 0, %bb.w ], [ 1, %bb.y ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.x ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_argon2_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @kdf_argon2_settable_ctx_params.known_settable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_argon2_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !39
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.h = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #9 ; 3 uses
  %.not51 = icmp eq ptr %i.h, null
  br i1 %.not51, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %kdf_argon2_ctx_set_pwd.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20
  %i.p = zext i32 %i.o to i64
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.m, i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 1263) #9
  store ptr null, ptr %i.l, align 8, !tbaa !19
  store i32 0, ptr %i.n, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.h, ptr noundef nonnull %i.l, i64 noundef 0, ptr noundef nonnull %i.d) #9
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %kdf_argon2_ctx_set_pwd.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.s = icmp ugt i64 %i.r, 4294967295
  br i1 %i.s, label %kdf_argon2_ctx_set_pwd.exit.thread105, label %kdf_argon2_ctx_set_pwd.exit

kdf_argon2_ctx_set_pwd.exit.thread105:            ; preds = %bb.g
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1272, ptr noundef nonnull @__func__.kdf_argon2_ctx_set_pwd) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 112, ptr noundef nonnull @.str.24, i32 noundef -1) #9
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !19
  call void @CRYPTO_free(ptr noundef %i.t, ptr noundef nonnull @.str, i32 noundef 1281) #9
  store ptr null, ptr %i.l, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %ossl_param_is_empty.exit.thread

kdf_argon2_ctx_set_pwd.exit.thread:               ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %ossl_param_is_empty.exit.thread

kdf_argon2_ctx_set_pwd.exit:                      ; preds = %bb.g
  %i.v = trunc nuw i64 %i.r to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.h

bb.h:                                             ; preds = %kdf_argon2_ctx_set_pwd.exit, %bb.b
  %i.x = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #9 ; 3 uses
  %.not53 = icmp eq ptr %i.x, null
  br i1 %.not53, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %kdf_argon2_ctx_set_salt.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ac, null
  br i1 %.not.i82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !22
  %i.af = zext i32 %i.ae to i64
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.ac, i64 noundef %i.af, ptr noundef nonnull @.str, i32 noundef 1295) #9
  store ptr null, ptr %i.ab, align 8, !tbaa !21
  store i32 0, ptr %i.ad, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ab, i64 noundef 0, ptr noundef nonnull %i.c) #9
  %.not14.i83 = icmp eq i32 %i.ag, 0
  br i1 %.not14.i83, label %kdf_argon2_ctx_set_salt.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1304, ptr noundef nonnull @__func__.kdf_argon2_ctx_set_salt) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 112, ptr noundef nonnull @.str.10, i32 noundef 8) #9
  br label %kdf_argon2_ctx_set_salt.exit.thread111

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp ugt i64 %i.ah, 4294967295
  br i1 %i.aj, label %bb.p, label %kdf_argon2_ctx_set_salt.exit

bb.p:                                             ; preds = %bb.o
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1310, ptr noundef nonnull @__func__.kdf_argon2_ctx_set_salt) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 112, ptr noundef nonnull @.str.24, i32 noundef -1) #9
  br label %kdf_argon2_ctx_set_salt.exit.thread111

kdf_argon2_ctx_set_salt.exit.thread111:           ; preds = %bb.n, %bb.p
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !21
  call void @CRYPTO_free(ptr noundef %i.ak, ptr noundef nonnull @.str, i32 noundef 1319) #9
  store ptr null, ptr %i.ab, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.al, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %ossl_param_is_empty.exit.thread

kdf_argon2_ctx_set_salt.exit.thread:              ; preds = %bb.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %ossl_param_is_empty.exit.thread

kdf_argon2_ctx_set_salt.exit:                     ; preds = %bb.o
  %i.am = trunc nuw i64 %i.ah to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.q

bb.q:                                             ; preds = %kdf_argon2_ctx_set_salt.exit, %bb.h
  %i.ao = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.15) #9 ; 3 uses
  %.not55 = icmp eq ptr %i.ao, null
  br i1 %.not55, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %kdf_argon2_ctx_set_secret.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %.not.i88 = icmp eq ptr %i.at, null
  br i1 %.not.i88, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !24
  %i.aw = zext i32 %i.av to i64
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.at, i64 noundef %i.aw, ptr noundef nonnull @.str, i32 noundef 1236) #9
  store ptr null, ptr %i.as, align 8, !tbaa !23
end_hunk_0
