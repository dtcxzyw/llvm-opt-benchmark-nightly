inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0_@kdf_tls1_3_set_ctx_params:bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.c = tail call fastcc i32 @hkdf_common_set_ctx_params(ptr noundef %0, ptr noundef nonnull %1)
  %.not27 = icmp eq i32 %i.c, 0
  br i1 %.not27, label %ossl_param_is_empty.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 854, ptr noundef nonnull @__func__.kdf_tls1_3_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #6
  br label %ossl_param_is_empty.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.i, ptr noundef nonnull @.str, i32 noundef 859) #6
  store ptr null, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 noundef 0, ptr noundef nonnull %i.j) #6
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %ossl_param_is_empty.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #6 ; 2 uses
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  tail call void @CRYPTO_free(ptr noundef %i.n, ptr noundef nonnull @.str, i32 noundef 867) #6
  store ptr null, ptr %i.m, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef 0, ptr noundef nonnull %i.o) #6
  %.not31 = icmp eq i32 %i.p, 0
  br i1 %.not31, label %ossl_param_is_empty.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27
  tail call void @CRYPTO_clear_free(ptr noundef %i.r, i64 noundef %i.t, ptr noundef nonnull @.str, i32 noundef 874) #6
  store ptr null, ptr %i.q, align 8, !tbaa !26
  %i.u = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #6 ; 2 uses
  %.not32 = icmp eq ptr %i.u, null
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.u, ptr noundef nonnull %i.q, i64 noundef 0, ptr noundef nonnull %i.s) #6
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %ossl_param_is_empty.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.a, %bb.j, %bb.h, %bb.f, %bb.b, %ossl_param_is_empty.exit, %bb.k, %bb.d
  %.0 = phi i32 [ 1, %ossl_param_is_empty.exit ], [ 0, %bb.d ], [ 1, %bb.k ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.j ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_tls1_3_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @kdf_tls1_3_gettable_ctx_params.known_gettable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_tls1_3_get_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !31
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.c = tail call fastcc i32 @hkdf_common_get_ctx_params(ptr noundef %0, ptr noundef nonnull %1)
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.a, %bb.b, %ossl_param_is_empty.exit
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %ossl_param_is_empty.exit ], [ 1, %bb.a ]
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

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ossl_prov_digest_reset(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_prov_digest_md(ptr noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @HKDF_Extract(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %1) #6 ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %.not = icmp eq i64 %7, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 515, ptr noundef nonnull @__func__.HKDF_Extract) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 139, ptr noundef null) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_get0_name(ptr noundef nonnull %1) #6
  %i.e = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %1) #6
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @EVP_Q_mac(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef %i.d, ptr noundef null, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %i.f, ptr noundef null) #6
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
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %0) #6 ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64                ; 4 uses
  %i.f = udiv i64 %6, %i.e
  %i.g = urem i64 %6, %i.e
  %.not = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not to i64
  %spec.select = add i64 %i.f, %i.h               ; 3 uses
  %i.i = icmp ugt i64 %spec.select, 255
  %i.j = icmp eq ptr %5, null
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @HMAC_CTX_new() #6         ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %2 to i32
  %i.n = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef %1, i32 noundef %i.m, ptr noundef nonnull %0, ptr noundef null) #6
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not5159 = icmp eq i64 %spec.select, 0
  br i1 %.not5159, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.04561 = phi i64 [ %i.y, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %.04660 = phi i32 [ %i.z, %bb.j ], [ 1, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.o = trunc i32 %.04660 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !33
  %i.p = icmp ugt i32 %.04660, 1
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.q = call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %.not52 = icmp eq i32 %i.q, 0
  br i1 %.not52, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef %i.e) #6
  %.not53 = icmp eq i32 %i.r, 0
  br i1 %.not53, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.s = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4) #6
  %.not54 = icmp eq i32 %i.s, 0
  br i1 %.not54, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef 1) #6
  %.not55 = icmp eq i32 %i.t, 0
  br i1 %.not55, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @HMAC_Final(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef null) #6
  %.not56 = icmp eq i32 %i.u, 0
  br i1 %.not56, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.v = sub i64 %6, %.04561
  %i.w = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.e) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 %.04561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 16 %i.a, i64 %i.w, i1 false)
  %i.y = add i64 %i.w, %.04561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.z = add i32 %.04660, 1                       ; 2 uses
  %7 = zext i32 %i.z to i64
  %.not51 = icmp ult i64 %spec.select, %7
  br i1 %.not51, label %.loopexit, label %.lr.ph, !llvm.loop !34

.loopexit:                                        ; preds = %bb.j, %.preheader, %.thread, %bb.d
  %.044 = phi i32 [ 0, %.thread ], [ 0, %bb.d ], [ 1, %.preheader ], [ 1, %bb.j ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @HMAC_CTX_free(ptr noundef nonnull %i.k) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
  %.0 = phi i32 [ %.044, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @EVP_Q_mac(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_MD_get0_name(ptr noundef) local_unnamed_addr #3

declare ptr @HMAC_CTX_new() local_unnamed_addr #3

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @HMAC_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @HMAC_Final(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @HMAC_CTX_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hkdf_common_set_ctx_params(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.critedge, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !31
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.f = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #6
  %.not39 = icmp eq ptr %i.f, null
  br i1 %.not39, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = tail call i32 @ossl_prov_digest_load_from_params(ptr noundef nonnull %i.g, ptr noundef nonnull %1, ptr noundef %i.c) #6
  %.not40 = icmp eq i32 %i.h, 0
  br i1 %.not40, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.g) #6
  %i.j = tail call i32 @EVP_MD_xof(ptr noundef %i.i) #6
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 270, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 183, ptr noundef null) #6
  br label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.k = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #6 ; 4 uses
  %.not42 = icmp eq ptr %i.k, null
  br i1 %.not42, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !36
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.8) #6
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.t = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.s, ptr noundef nonnull @.str.9) #6
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.w = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.v, ptr noundef nonnull @.str.10) #6
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 284, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #6
  br label %.critedge

bb.l:                                             ; preds = %bb.g
  %i.y = call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #6
  %.not43 = icmp eq i32 %i.y, 0
  br i1 %.not43, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %or.cond3 = icmp ugt i32 %i.z, 2
  br i1 %or.cond3, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #6
  br label %.critedge

bb.o:                                             ; preds = %bb.l
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 296, ptr noundef nonnull @__func__.hkdf_common_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #6
  br label %.critedge

.sink.split:                                      ; preds = %bb.m, %bb.j, %bb.i, %bb.h
  %.sink = phi i32 [ 2, %bb.j ], [ 0, %bb.h ], [ 1, %bb.i ], [ %i.z, %bb.m ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.f
  %i.ab = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #6 ; 2 uses
  %.not44 = icmp eq ptr %i.ab, null
  br i1 %.not44, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !21
  call void @CRYPTO_clear_free(ptr noundef %i.ad, i64 noundef %i.af, ptr noundef nonnull @.str, i32 noundef 302) #6
  store ptr null, ptr %i.ac, align 8, !tbaa !20
  %i.ag = call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, i64 noundef 0, ptr noundef nonnull %i.ae) #6
  %.not45 = icmp eq i32 %i.ag, 0
  br i1 %.not45, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ah = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.6) #6 ; 2 uses
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18
  call void @CRYPTO_free(ptr noundef %i.aj, ptr noundef nonnull @.str, i32 noundef 310) #6
  store ptr null, ptr %i.ai, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, i64 noundef 0, ptr noundef nonnull %i.ak) #6
  %.not47 = icmp eq i32 %i.al, 0
  br i1 %.not47, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.e, %bb.c, %bb.s, %bb.q, %ossl_param_is_empty.exit, %bb.t, %bb.o, %bb.n, %bb.k
  %.1 = phi i32 [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.q ], [ 1, %ossl_param_is_empty.exit ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

declare i32 @ossl_param_get1_concat_octet_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_prov_digest_load_from_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_MD_xof(ptr noundef) local_unnamed_addr #3

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hkdf_common_get_ctx_params(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !31
  %.not = icmp eq ptr %i.b, null
end_hunk_0
