Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/hkdf?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0_@kdf_tls1_3_set_ctx_params:bb.a
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
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %i.d, align 8, !tbaa !53
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
  store <2 x ptr> %.sroa.0.1, ptr %i.aa, align 8, !tbaa !53
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
  br i1 %i.d, label %bb.n, label %bb.b

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
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @HMAC_CTX_new() #7         ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %2 to i32
  %i.n = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef %1, i32 noundef %i.m, ptr noundef nonnull %0, ptr noundef null) #7
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not5159 = icmp eq i64 %spec.select, 0
  br i1 %.not5159, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i8 1, ptr %i.b, align 1, !tbaa !31
  %i.o = tail call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4) #7
  %.not54.peel = icmp eq i32 %i.o, 0
  br i1 %.not54.peel, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef 1) #7
  %.not55.peel = icmp eq i32 %i.p, 0
  br i1 %.not55.peel, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @HMAC_Final(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not56.peel = icmp eq i32 %i.q, 0
  br i1 %.not56.peel, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i64 @llvm.umin.i64(i64 %6, i64 %i.e) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr nonnull align 16 %i.a, i64 %i.r, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not51.peel = icmp eq i64 %spec.select, 1
  br i1 %.not51.peel, label %.loopexit, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.h, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 2, %bb.h ] ; 3 uses
  %.04361 = phi i64 [ %i.ab, %bb.m ], [ %i.r, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.s = trunc i64 %indvars.iv to i8
  store i8 %i.s, ptr %i.b, align 1, !tbaa !31
  %i.t = call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %.not52 = icmp eq i32 %i.t, 0
  br i1 %.not52, label %.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.peel.next
  %i.u = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef %i.e) #7
  %.not53 = icmp eq i32 %i.u, 0
  br i1 %.not53, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4) #7
  %.not54 = icmp eq i32 %i.v, 0
  br i1 %.not54, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef 1) #7
  %.not55 = icmp eq i32 %i.w, 0
  br i1 %.not55, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = call i32 @HMAC_Final(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not56 = icmp eq i32 %i.x, 0
  br i1 %.not56, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.peel.next, %bb.l, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.y = sub i64 %6, %.04361
  %i.z = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.e) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %.04361
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %i.ab = add i64 %i.z, %.04361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %.not51.not = icmp ugt i64 %spec.select, %indvars.iv
  br i1 %.not51.not, label %.lr.ph.peel.next, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %bb.m, %bb.h, %.preheader, %.thread, %bb.d
  %.045 = phi i32 [ 0, %.thread ], [ 0, %bb.d ], [ 1, %.preheader ], [ 1, %bb.h ], [ 1, %bb.m ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #7
  call void @HMAC_CTX_free(ptr noundef nonnull %i.k) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.17) #7
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %1, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.w = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.v, ptr noundef nonnull @.str.18) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
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
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
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
end_hunk_0
