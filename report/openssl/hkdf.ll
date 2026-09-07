Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/hkdf?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0_@kdf_tls1_3_set_ctx_params:bb.a

bb.am:                                            ; preds = %bb.ak
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !52
  %.not20 = icmp eq ptr %i.ch, null
  br i1 %.not20, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  call void @CRYPTO_free(ptr noundef %i.cj, ptr noundef nonnull @.str, i32 noundef 991) #7
  store ptr null, ptr %i.ci, align 8, !tbaa !19
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = call i32 @OSSL_PARAM_get_octet_string(ptr noundef %i.ck, ptr noundef nonnull %i.ci, i64 noundef 0, ptr noundef nonnull %i.cl) #7
  %.not21 = icmp eq i32 %i.cm, 0
  br i1 %.not21, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !51
  %.not22 = icmp eq ptr %i.co, null
  br i1 %.not22, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  call void @CRYPTO_free(ptr noundef %i.cq, ptr noundef nonnull @.str, i32 noundef 999) #7
  store ptr null, ptr %i.cp, align 8, !tbaa !21
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ct = call i32 @OSSL_PARAM_get_octet_string(ptr noundef %i.cr, ptr noundef nonnull %i.cp, i64 noundef 0, ptr noundef nonnull %i.cs) #7
  %.not23 = icmp eq i32 %i.ct, 0
  br i1 %.not23, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50
  %.not24 = icmp eq ptr %i.cv, null
  br i1 %.not24, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !24
  call void @CRYPTO_clear_free(ptr noundef %i.cx, i64 noundef %i.cz, ptr noundef nonnull @.str, i32 noundef 1007) #7
  store ptr null, ptr %i.cw, align 8, !tbaa !23
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !50
  %i.db = call i32 @OSSL_PARAM_get_octet_string(ptr noundef %i.da, ptr noundef nonnull %i.cw, i64 noundef 0, ptr noundef nonnull %i.cy) #7
  %.not25 = icmp eq i32 %i.db, 0
  br i1 %.not25, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br label %bb.at

bb.at:                                            ; preds = %kdf_tls1_3_set_ctx_params_decoder.exit, %bb.ar, %bb.ap, %bb.an, %.loopexit, %bb.a, %bb.as, %bb.al
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.al ], [ 1, %bb.as ], [ 0, %bb.ap ], [ 0, %bb.an ], [ 0, %.loopexit ], [ 0, %kdf_tls1_3_set_ctx_params_decoder.exit ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ossl_prov_memdup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_prov_digest_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @kdf_hkdf_reset_ex(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %i.d, align 8
  br label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.e) #7
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.sroa.0.1 = phi <2 x ptr> [ splat (ptr null), %.thread ], [ %.sroa.0.0.copyload, %bb.c ]
  %.not2224 = phi i1 [ true, %.thread ], [ false, %bb.c ]
  %i.f = phi i32 [ 0, %.thread ], [ %i.c, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  tail call void @CRYPTO_free(ptr noundef %i.h, ptr noundef nonnull @.str, i32 noundef 147) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @CRYPTO_free(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef 149) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.l, ptr noundef nonnull @.str, i32 noundef 150) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  tail call void @CRYPTO_clear_free(ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 151) #7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.r, i64 noundef %i.t, ptr noundef nonnull @.str, i32 noundef 152) #7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  tail call void @CRYPTO_clear_free(ptr noundef %i.v, i64 noundef %i.x, ptr noundef nonnull @.str, i32 noundef 153) #7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.y, i8 0, i64 128, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  br i1 %.not2224, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.f, ptr %i.z, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %.sroa.0.1, ptr %i.aa, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ossl_prov_digest_reset(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_prov_digest_md(ptr noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @HKDF_Extract(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %1) #7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %.not = icmp eq i64 %7, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 649, ptr noundef nonnull @__func__.HKDF_Extract) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 139, ptr noundef null) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_get0_name(ptr noundef nonnull %1) #7
  %i.e = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %1) #7
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @EVP_Q_mac(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef %i.d, ptr noundef null, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %i.f, ptr noundef null) #7
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @HKDF_Expand(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %0) #7 ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64                ; 5 uses
  %i.f = udiv i64 %6, %i.e
  %i.g = urem i64 %6, %i.e
  %.not = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not to i64
  %spec.select = add i64 %i.f, %i.h               ; 4 uses
  %i.i = icmp ugt i64 %spec.select, 255
  %i.j = icmp eq ptr %5, null
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @HMAC_CTX_new() #7         ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %2 to i32
  %i.n = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef %1, i32 noundef %i.m, ptr noundef nonnull %0, ptr noundef null) #7
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not5159 = icmp eq i64 %spec.select, 0
  br i1 %.not5159, label %.loopexit, label %7

7:                                                ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i8 1, ptr %i.b, align 1, !tbaa !31
  %8 = tail call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4) #7
  %.not54.peel = icmp eq i32 %8, 0
  br i1 %.not54.peel, label %.thread, label %.preheader.a

.preheader.a:                                     ; preds = %7
  %9 = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef 1) #7
  %.not5159.a = icmp eq i32 %9, 0
  br i1 %.not5159.a, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.a
  %10 = call i32 @HMAC_Final(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not56.peel = icmp eq i32 %10, 0
  br i1 %.not56.peel, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %11 = call i64 @llvm.umin.i64(i64 %6, i64 %i.e) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr nonnull align 16 %i.a, i64 %11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not51.peel = icmp eq i64 %spec.select, 1
  br i1 %.not51.peel, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 2, %.lr.ph ] ; 3 uses
  %.04361 = phi i64 [ %i.w, %bb.j ], [ %11, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %12 = trunc i64 %indvars.iv to i8
  store i8 %12, ptr %i.b, align 1, !tbaa !31
  %i.o = call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %.not52 = icmp eq i32 %i.o, 0
  br i1 %.not52, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef %i.e) #7
  %.not53 = icmp eq i32 %i.p, 0
  br i1 %.not53, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4) #7
  %.not54 = icmp eq i32 %i.q, 0
  br i1 %.not54, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef 1) #7
  %.not55 = icmp eq i32 %i.r, 0
  br i1 %.not55, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @HMAC_Final(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not56 = icmp eq i32 %i.s, 0
  br i1 %.not56, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i, %.lr.ph.preheader, %.preheader.a, %7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.t = sub i64 %6, %.04361
  %i.u = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.e) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 %.04361
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 16 %i.a, i64 %i.u, i1 false)
  %i.w = add i64 %i.u, %.04361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %.not51 = icmp ugt i64 %spec.select, %indvars.iv
  br i1 %.not51, label %bb.e, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %bb.j, %.lr.ph, %.preheader, %.thread, %bb.d
  %.045 = phi i32 [ 0, %.thread ], [ 0, %bb.d ], [ 1, %.preheader ], [ 1, %.lr.ph ], [ 1, %bb.j ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #7
  call void @HMAC_CTX_free(ptr noundef nonnull %i.k) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
  %.046 = phi i32 [ %.045, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.046
}

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @EVP_Q_mac(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_MD_get0_name(ptr noundef) local_unnamed_addr #3

declare ptr @HMAC_CTX_new() local_unnamed_addr #3

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @HMAC_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @HMAC_Final(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @HMAC_CTX_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hkdf_common_set_ctx_params(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = tail call i32 @ossl_prov_digest_load(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef %i.h, ptr noundef %i.c) #7
  %.not42 = icmp eq i32 %i.i, 0
  br i1 %.not42, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.f) #7
  %i.k = tail call i32 @EVP_MD_xof(ptr noundef %i.j) #7
  %.not43 = icmp eq i32 %i.k, 0
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 183, ptr noundef null) #7
  br label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
  %.not44 = icmp eq ptr %i.l, null
  br i1 %.not44, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.r = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.17) #7
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %1, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.v, ptr noundef nonnull @.str.18) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ab = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.19) #7
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #7
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  %i.ad = call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a) #7
  %.not45 = icmp eq i32 %i.ad, 0
  br i1 %.not45, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !56  ; 2 uses
  %or.cond3 = icmp ugt i32 %i.ae, 2
  br i1 %or.cond3, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 328, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #7
  br label %.critedge

bb.n:                                             ; preds = %bb.k
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 333, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #7
  br label %.critedge

.sink.split:                                      ; preds = %bb.l, %bb.i, %bb.h, %bb.g
  %.sink = phi i32 [ 2, %bb.i ], [ 0, %bb.g ], [ 1, %bb.h ], [ %i.ae, %bb.l ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.af, align 8, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !18
  call void @CRYPTO_clear_free(ptr noundef %i.aj, i64 noundef %i.al, ptr noundef nonnull @.str, i32 noundef 339) #7
  store ptr null, ptr %i.ai, align 8, !tbaa !17
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.an = call i32 @OSSL_PARAM_get_octet_string(ptr noundef %i.am, ptr noundef nonnull %i.ai, i64 noundef 0, ptr noundef nonnull %i.ak) #7
  %.not47 = icmp eq i32 %i.an, 0
  br i1 %.not47, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %.not48 = icmp eq ptr %i.ap, null
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  call void @CRYPTO_free(ptr noundef %i.ar, ptr noundef nonnull @.str, i32 noundef 347) #7
  store ptr null, ptr %i.aq, align 8, !tbaa !15
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = call i32 @OSSL_PARAM_get_octet_string(ptr noundef %i.as, ptr noundef nonnull %i.aq, i64 noundef 0, ptr noundef nonnull %i.at) #7
  %.not49 = icmp eq i32 %i.au, 0
  br i1 %.not49, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !37
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bb = call i32 @ossl_param_get1_concat_octet_string(i64 noundef %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba) #7
  %i.bc = icmp ne i32 %i.bb, 0
  %. = zext i1 %i.bc to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.j
  %.1 = phi i32 [ %., %bb.s ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @ossl_prov_digest_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_MD_xof(ptr noundef) local_unnamed_addr #3

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_param_get1_concat_octet_string(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_utf8_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_octet_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @kdf_hkdf_fixed_digest_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.a = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.b = tail call i32 @ossl_prov_is_running() #7
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %kdf_hkdf_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 110) #7 ; 6 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %kdf_hkdf_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.c, align 8, !tbaa !14
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.6, ptr noundef %1, i64 noundef 0) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = call i32 @ossl_prov_digest_load(ptr noundef nonnull %i.d, ptr noundef nonnull %2, ptr noundef null, ptr noundef %i.a) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @kdf_hkdf_free(ptr noundef nonnull %i.c)
  br label %kdf_hkdf_new.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i32 1, ptr %i.f, align 8, !tbaa !28
  br label %kdf_hkdf_new.exit.thread

kdf_hkdf_new.exit.thread:                         ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.c, %bb.e ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

declare void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @prov_tls13_hkdf_expand(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr nofree noundef writeonly captures(address_is_null) %9, i64 noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2048 x i8], align 16             ; 4 uses
  %11 = alloca %struct.wpacket_st, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.c = call i32 @WPACKET_init_static_len(ptr noundef nonnull %11, ptr noundef nonnull %i.b, i64 noundef 2048, i64 noundef 0) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %11, i64 noundef %10, i64 noundef 2) #7
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @WPACKET_start_sub_packet_len__(ptr noundef nonnull %11, i64 noundef 1) #7
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef %3, i64 noundef %4) #7
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef %5, i64 noundef %6) #7
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @WPACKET_close(ptr noundef nonnull %11) #7
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %7, null
  %i.j = select i1 %i.i, i64 0, i64 %8
  %i.k = call i32 @WPACKET_sub_memcpy__(ptr noundef nonnull %11, ptr noundef %7, i64 noundef %i.j, i64 noundef 1) #7
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = call i32 @WPACKET_get_total_written(ptr noundef nonnull %11, ptr noundef nonnull %i.a) #7
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = call i32 @WPACKET_finish(ptr noundef nonnull %11) #7
  %.not20 = icmp eq i32 %i.m, 0
  br i1 %.not20, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  call void @WPACKET_cleanup(ptr noundef nonnull %11) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !57
  %i.o = call fastcc i32 @HKDF_Expand(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.b, i64 noundef %i.n, ptr noundef %9, i64 noundef %10)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.o, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #3

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_init_static_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_start_sub_packet_len__(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_close(ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_sub_memcpy__(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #3

declare void @WPACKET_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS9evp_md_st", !8, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 8}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"", !8, i64 0, !5, i64 8, !10, i64 16, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !12, i64 72, !11, i64 80, !12, i64 88, !11, i64 96, !12, i64 104, !11, i64 112, !12, i64 120, !5, i64 128}
!14 = !{!13, !8, i64 0}
!15 = !{!13, !11, i64 32}
!16 = !{!13, !12, i64 40}
!17 = !{!13, !11, i64 48}
!18 = !{!13, !12, i64 56}
!19 = !{!13, !11, i64 64}
!20 = !{!13, !12, i64 72}
!21 = !{!13, !11, i64 80}
!22 = !{!13, !12, i64 88}
!23 = !{!13, !11, i64 96}
!24 = !{!13, !12, i64 104}
!25 = !{!13, !11, i64 112}
!26 = !{!13, !12, i64 120}
!27 = !{!13, !5, i64 8}
!28 = !{!13, !5, i64 128}
!29 = !{!"ossl_param_st", !11, i64 0, !5, i64 8, !8, i64 16, !12, i64 24, !12, i64 32}
!30 = !{!29, !11, i64 0}
!31 = !{!4, !4, i64 0}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!"p1 _ZTS13ossl_param_st", !8, i64 0}
!34 = !{!"hkdf_all_set_ctx_params_st", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !33, i64 56, !4, i64 64, !5, i64 104}
!35 = !{!34, !33, i64 16}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!34, !5, i64 104}
!38 = !{!33, !33, i64 0}
!39 = !{!34, !33, i64 24}
!40 = !{!34, !33, i64 0}
!41 = !{!34, !33, i64 8}
!42 = !{!34, !33, i64 32}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!29, !5, i64 8}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = !{!29, !12, i64 32}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = !{!34, !33, i64 56}
!51 = !{!34, !33, i64 48}
!52 = !{!34, !33, i64 40}
!53 = distinct !{!53, !43, !54}
!54 = !{!"llvm.loop.peeled.count", i32 1}
!55 = !{!29, !8, i64 16}
!56 = !{!5, !5, i64 0}
!57 = !{!12, !12, i64 0}
end_hunk_0
