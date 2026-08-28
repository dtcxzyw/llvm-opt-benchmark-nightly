Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssl_lib?download=true
inline.NumInlined: 313
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@SSL_CTX_new_ex:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.az = tail call ptr @OSSL_default_cipher_list() #18
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !124
  %i.bb = tail call ptr @ssl_create_cipher_list(ptr noundef nonnull %i.e, ptr noundef %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef %i.az, ptr noundef %i.ba) #18
  %.not100 = icmp eq ptr %i.bb, null
  br i1 %.not100, label %.sink.split108, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !136
  %i.bd = tail call i32 @OPENSSL_sk_num(ptr noundef %i.bc) #18
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %.sink.split108, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = tail call ptr @X509_VERIFY_PARAM_new() #18 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !129
  %i.bh = icmp eq ptr %i.bf, null
  br i1 %i.bh, label %.sink.split108, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call i32 @ERR_set_mark() #18       ; 0 uses
  %i.bj = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !149
  %i.bl = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !150
  %i.bn = tail call i32 @ERR_pop_to_mark() #18    ; 0 uses
  %i.bo = tail call ptr @OPENSSL_sk_new_null() #18
  %i.bp = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.bo, ptr noundef nonnull @sk_X509_NAME_freefunc_thunk) #18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !138
  %i.br = icmp eq ptr %i.bp, null
  br i1 %i.br, label %.sink.split108, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = tail call ptr @OPENSSL_sk_new_null() #18
  %i.bt = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.bs, ptr noundef nonnull @sk_X509_NAME_freefunc_thunk) #18 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !139
  %i.bv = icmp eq ptr %i.bt, null
  br i1 %i.bv, label %.sink.split108, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.bx = tail call i32 @CRYPTO_new_ex_data(i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bw) #18
  %.not101 = icmp eq i32 %i.bx, 0
  br i1 %.not101, label %.sink.split108, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = tail call noalias ptr @CRYPTO_secure_zalloc(i64 noundef 64, ptr noundef nonnull @.str, i32 noundef 4366) #18 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 584 ; 3 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !148
  %i.ca = icmp eq ptr %i.by, null
  br i1 %i.ca, label %bb.an, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !260
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !261
  %i.cf = and i32 %i.ce, 8
  %.not102 = icmp eq i32 %i.cf, 0
  br i1 %.not102, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cg = tail call ptr @SSL_COMP_get_compression_methods() #18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !141
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  store i64 16384, ptr %i.ci, align 8, !tbaa !395
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  store i64 16384, ptr %i.cj, align 8, !tbaa !396
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.cl = tail call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.ck, i64 noundef 16, i32 noundef 0) #18
  %i.cm = icmp slt i32 %i.cl, 1
  br i1 %i.cm, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !148
  %i.co = tail call i32 @RAND_priv_bytes_ex(ptr noundef %0, ptr noundef %i.cn, i64 noundef 32, i32 noundef 0) #18
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.bz, align 8, !tbaa !148
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = tail call i32 @RAND_priv_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.cr, i64 noundef 32, i32 noundef 0) #18
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !184
  %i.cw = or i64 %i.cv, 16384
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !184
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 760
  %i.cy = tail call i32 @RAND_priv_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.cx, i64 noundef 32, i32 noundef 0) #18
  %i.cz = icmp slt i32 %i.cy, 1
  br i1 %i.cz, label %.sink.split108, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = tail call i32 @ssl_ctx_srp_ctx_init_intern(ptr noundef nonnull %i.e) #18
  %.not103 = icmp eq i32 %i.da, 0
  br i1 %.not103, label %.sink.split108, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !184
  %i.dd = or i64 %i.dc, 1179648
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !184
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  store i32 -1, ptr %i.de, align 8, !tbaa !223
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  store i32 0, ptr %i.df, align 8, !tbaa !427
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 1052
  store i32 16384, ptr %i.dg, align 4, !tbaa !428
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 1112
  store i64 2, ptr %i.dh, align 8, !tbaa !193
  %i.di = tail call ptr @OSSL_QUIC_client_method() #18
  %i.dj = icmp eq ptr %2, %i.di
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dk = tail call ptr @ossl_quic_new_token_store() #18 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 1816
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !182
  %i.dm = icmp eq ptr %i.dk, null
  br i1 %i.dm, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 1808 ; 2 uses
  store i64 0, ptr %i.dn, align 8, !tbaa !429
  %i.do = tail call ptr @OSSL_QUIC_client_method() #18
  %i.dp = icmp eq ptr %2, %i.do
  br i1 %i.dp, label %.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = tail call ptr @OSSL_QUIC_client_thread_method() #18
  %i.dr = icmp eq ptr %2, %i.dq
  br i1 %i.dr, label %.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = tail call ptr @OSSL_QUIC_server_method() #18
  %i.dt = icmp eq ptr %2, %i.ds
  br i1 %i.dt, label %.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = tail call ptr @OSSL_QUIC_method() #18
  %i.dv = icmp eq ptr %2, %i.du
  br i1 %i.dv, label %.sink.split, label %bb.am

.sink.split:                                      ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.dw = tail call ptr @OSSL_QUIC_client_thread_method() #18
  %i.dx = icmp eq ptr %2, %i.dw
  %. = select i1 %i.dx, i64 14, i64 18
  store i64 %., ptr %i.dn, align 8, !tbaa !429
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.al
  %i.dy = tail call i32 @ssl_ctx_system_config(ptr noundef nonnull %i.e) #18
  %.not104 = icmp eq i32 %i.dy, 0
  br i1 %.not104, label %.sink.split108, label %bb.ao

.sink.split108:                                   ; preds = %bb.am, %bb.af, %bb.ae, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.d
  %.sink110 = phi i32 [ 4397, %bb.af ], [ 4391, %bb.ae ], [ 4362, %bb.w ], [ 4357, %bb.v ], [ 4352, %bb.u ], [ 4338, %bb.t ], [ 4332, %bb.r ], [ 4323, %bb.q ], [ 4318, %bb.p ], [ 4313, %bb.o ], [ 4307, %bb.n ], [ 4301, %bb.m ], [ 4296, %bb.l ], [ 4289, %bb.k ], [ 4283, %bb.j ], [ 4278, %bb.i ], [ 4246, %bb.f ], [ 4230, %bb.d ], [ 4332, %bb.s ], [ 4485, %bb.am ]
  %.sink109 = phi i32 [ 524308, %bb.af ], [ 524324, %bb.ae ], [ 524303, %bb.w ], [ 524303, %bb.v ], [ 524303, %bb.u ], [ 524299, %bb.t ], [ 161, %bb.r ], [ 524308, %bb.q ], [ 524308, %bb.p ], [ 524308, %bb.o ], [ 524308, %bb.n ], [ 524308, %bb.m ], [ 524308, %bb.l ], [ 524338, %bb.k ], [ 524299, %bb.j ], [ 524303, %bb.i ], [ 524303, %bb.f ], [ 269, %bb.d ], [ 161, %bb.s ], [ 419, %bb.am ]
  %.090.ph = phi ptr [ %i.e, %bb.af ], [ %i.e, %bb.ae ], [ %i.e, %bb.w ], [ %i.e, %bb.v ], [ %i.e, %bb.u ], [ %i.e, %bb.t ], [ %i.e, %bb.r ], [ %i.e, %bb.q ], [ %i.e, %bb.p ], [ %i.e, %bb.o ], [ %i.e, %bb.n ], [ %i.e, %bb.m ], [ %i.e, %bb.l ], [ %i.e, %bb.k ], [ %i.e, %bb.j ], [ %i.e, %bb.i ], [ %i.e, %bb.f ], [ null, %bb.d ], [ %i.e, %bb.s ], [ %i.e, %bb.am ]
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink110, ptr noundef nonnull @__func__.SSL_CTX_new_ex) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink109, ptr noundef null) #18
  br label %bb.an

bb.an:                                            ; preds = %.sink.split108, %bb.ah, %bb.x, %bb.h
  %.090 = phi ptr [ %i.e, %bb.x ], [ %i.e, %bb.ah ], [ %i.e, %bb.h ], [ %.090.ph, %.sink.split108 ]
  tail call void @SSL_CTX_free(ptr noundef %.090)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.e, %bb.c, %bb.an, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.an ], [ null, %bb.c ], [ null, %bb.e ], [ %i.e, %bb.am ]
  ret ptr %.0
}

declare i32 @OPENSSL_init_ssl(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SSL_get_ex_data_X509_STORE_CTX_idx() local_unnamed_addr #1

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 4294967296) i64 @ssl_session_hash(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = load i64, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %.sroa.0, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr nonnull align 8 %i.a, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %.sroa.0, %bb.b ], [ %i.a, %bb.a ]
  %i.e = load i32, ptr %.0, align 1
  %i.f = zext i32 %i.e to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ssl_session_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !263
  %i.b = load i32, ptr %1, align 8, !tbaa !263
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.f = load i64, ptr %i.e, align 8, !tbaa !266
  %.not8 = icmp eq i64 %i.d, %i.f
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.i = tail call i32 @memcmp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 noundef %i.d) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

declare ptr @X509_STORE_new() local_unnamed_addr #1

declare ptr @CTLOG_STORE_new_ex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ssl_load_ciphers(ptr noundef) local_unnamed_addr #1

declare i32 @ssl_load_groups(ptr noundef) local_unnamed_addr #1

declare i32 @ssl_load_sigalgs(ptr noundef) local_unnamed_addr #1

declare i32 @ssl_setup_sigalgs(ptr noundef) local_unnamed_addr #1

declare ptr @ssl_cert_new(i64 noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_X509_NAME_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #10 {
bb.a:
  tail call void %0(ptr noundef %1) #18
  ret void
}

declare noalias ptr @CRYPTO_secure_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @SSL_COMP_get_compression_methods() local_unnamed_addr #1

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ssl_ctx_srp_ctx_init_intern(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_quic_new_token_store() local_unnamed_addr #1

declare i32 @ssl_ctx_system_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @SSL_CTX_new(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SSL_CTX_new_ex(ptr noundef null, ptr noundef null, ptr noundef %0)
  ret ptr %i.a
}

declare void @SSL_CTX_flush_sessions_ex(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @X509_STORE_free(ptr noundef) local_unnamed_addr #1

declare void @CTLOG_STORE_free(ptr noundef) local_unnamed_addr #1

declare i32 @ssl_ctx_srp_ctx_free_intern(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_secure_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @ssl_evp_md_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_MD_get0_provider(ptr noundef nonnull %0) #18
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @EVP_MD_free(ptr noundef nonnull %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ssl_evp_cipher_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %0) #18
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @EVP_CIPHER_free(ptr noundef nonnull %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare void @ossl_quic_free_token_store(ptr noundef) local_unnamed_addr #1

declare void @ossl_ech_ctx_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @SSL_CTX_set_default_passwd_cb(ptr nofree noundef writeonly captures(none) initializes((184, 192)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @SSL_CTX_set_default_passwd_cb_userdata(ptr nofree noundef writeonly captures(none) initializes((192, 200)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %1, ptr %i.a, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @SSL_CTX_get_default_passwd_cb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !430
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @SSL_CTX_get_default_passwd_cb_userdata(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @SSL_set_default_passwd_cb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread10, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread10

.thread10:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5840
  store ptr %1, ptr %i.h, align 8, !tbaa !432
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread10
  ret void
}

; Function Attrs: nounwind uwtable
define void @SSL_set_default_passwd_cb_userdata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
