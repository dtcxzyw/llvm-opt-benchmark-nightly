Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_chacha20?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@chacha20_set_ctx_params:bb.a
  %i.n = phi ptr [ %i.d, %.lr.ph.i ], [ %i.d, %bb.e ], [ %i.d, %bb.c ], [ %.01524.i, %bb.d ], [ %i.d, %bb.f ]
  %i.o = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %.01524.i, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.01524.i, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %.not18.i = icmp eq ptr %i.q, null
  br i1 %.not18.i, label %bb.h, label %.lr.ph.i, !llvm.loop !23

chacha20_set_ctx_params_decoder.exit:             ; preds = %bb.d, %bb.f
  %.sink.i = phi i32 [ 112, %bb.d ], [ 123, %bb.f ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, ptr noundef nonnull @__func__.chacha20_set_ctx_params_decoder) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.f) #5
  br label %.thread21

bb.h:                                             ; preds = %bb.g
  %.not5 = icmp eq ptr %.sroa.5.1, null
  br i1 %.not5, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %.sroa.5.1, ptr noundef nonnull %i.a) #5
  %.not6 = icmp eq i32 %i.r, 0
  br i1 %.not6, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 153, ptr noundef nonnull @__func__.chacha20_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  br label %.thread21

bb.k:                                             ; preds = %bb.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !24
  %.not7 = icmp eq i64 %i.s, 32
  br i1 %.not7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @__func__.chacha20_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 105, ptr noundef null) #5
  br label %.thread21

bb.m:                                             ; preds = %bb.k, %bb.h
  %.not8 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not8, label %.thread21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %.sroa.0.1, ptr noundef nonnull %i.a) #5
  %.not9 = icmp eq i32 %i.t, 0
  br i1 %.not9, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @__func__.chacha20_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  br label %.thread21

bb.p:                                             ; preds = %bb.n
  %i.u = load i64, ptr %i.a, align 8, !tbaa !24
  %.not10 = icmp eq i64 %i.u, 16
  br i1 %.not10, label %.thread21, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__.chacha20_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 109, ptr noundef null) #5
  br label %.thread21

.thread21:                                        ; preds = %.preheader.i, %bb.b, %chacha20_set_ctx_params_decoder.exit, %bb.m, %bb.p, %bb.a, %bb.q, %bb.o, %bb.l, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.q ], [ 0, %bb.a ], [ 0, %bb.o ], [ 0, %chacha20_set_ctx_params_decoder.exit ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.b ], [ 1, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ossl_chacha20_dinit(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @ossl_cipher_generic_dinit(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null) #5 ; 2 uses
  %i.b = icmp ne i32 %i.a, 0                      ; 2 uses
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = tail call i32 %i.g(ptr noundef %0) #5    ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = tail call i32 @chacha20_set_ctx_params(ptr noundef %0, ptr noundef %5)
  %.not = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not, i32 0, i32 %i.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @ossl_cipher_generic_dinit(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @chacha20_newctx(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 312, ptr noundef nonnull @.str, i32 noundef 61) #5 ; 3 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @ossl_prov_cipher_hw_chacha20(i64 noundef 256) #5
  tail call void @ossl_cipher_generic_initkey(ptr noundef nonnull %i.b, i64 noundef 256, i64 noundef 8, i64 noundef 128, i32 noundef 0, i64 noundef 2, ptr noundef %i.c, ptr noundef null) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @chacha20_freectx(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ossl_cipher_generic_reset_ctx(ptr noundef nonnull %0) #5
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %0, i64 noundef 312, ptr noundef nonnull @.str, i32 noundef 73) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @chacha20_dupctx(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %0, i64 noundef 312, ptr noundef nonnull @.str, i32 noundef 83) #5 ; 8 uses
  %.not15 = icmp eq ptr %i.a, null
  br i1 %.not15, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28
  %i.h = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %i.c, i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 86) #5 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 88) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.f ], [ %i.a, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @ossl_cipher_generic_stream_update(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare i32 @ossl_cipher_generic_stream_final(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @ossl_cipher_generic_cipher(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @chacha20_get_params(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @ossl_cipher_generic_get_params(ptr noundef %0, i32 noundef 0, i64 noundef 2, i64 noundef 256, i64 noundef 8, i64 noundef 128) #5
  ret i32 %i.a
}

declare ptr @ossl_cipher_generic_gettable_params(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @chacha20_get_ctx_params(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.thread48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread48, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %.not2330.i = icmp eq ptr %i.c, null
  br i1 %.not2330.i, label %.thread48, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.i ], [ null, %.preheader.i ] ; 6 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.i ], [ null, %.preheader.i ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.1, %bb.i ], [ null, %.preheader.i ] ; 6 uses
  %i.d = phi ptr [ %i.r, %bb.i ], [ null, %.preheader.i ] ; 7 uses
  %i.e = phi ptr [ %i.s, %bb.i ], [ null, %.preheader.i ] ; 7 uses
  %i.f = phi ptr [ %i.t, %bb.i ], [ null, %.preheader.i ] ; 7 uses
  %i.g = phi ptr [ %i.v, %bb.i ], [ %i.c, %.preheader.i ] ; 5 uses
  %.02031.i = phi ptr [ %i.u, %bb.i ], [ %1, %.preheader.i ] ; 7 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  switch i8 %i.h, label %bb.i [
    i8 105, label %bb.c
    i8 107, label %bb.e
    i8 117, label %bb.g
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.1, ptr noundef nonnull dereferenceable(1) %i.i) #6
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.i, !prof !21

bb.d:                                             ; preds = %bb.c
  %.not26.i = icmp eq ptr %i.d, null
  br i1 %.not26.i, label %bb.i, label %chacha20_get_ctx_params_decoder.exit, !prof !21

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.4, ptr noundef nonnull dereferenceable(1) %i.l) #6
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.i, !prof !21

bb.f:                                             ; preds = %bb.e
  %.not25.i = icmp eq ptr %i.e, null
  br i1 %.not25.i, label %bb.i, label %chacha20_get_ctx_params_decoder.exit, !prof !21

bb.g:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.5, ptr noundef nonnull dereferenceable(1) %i.o) #6
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  %.not24.i = icmp eq ptr %i.f, null
  br i1 %.not24.i, label %bb.i, label %chacha20_get_ctx_params_decoder.exit, !prof !21

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.g, %bb.e, %bb.c, %.lr.ph.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph.i ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.c ], [ %.02031.i, %bb.d ], [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0, %.lr.ph.i ], [ %.sroa.5.0, %bb.g ], [ %.sroa.5.0, %bb.c ], [ %.sroa.5.0, %bb.d ], [ %.sroa.5.0, %bb.e ], [ %.02031.i, %bb.f ], [ %.sroa.5.0, %bb.h ] ; 3 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0, %.lr.ph.i ], [ %.sroa.7.0, %bb.g ], [ %.sroa.7.0, %bb.c ], [ %.sroa.7.0, %bb.d ], [ %.sroa.7.0, %bb.e ], [ %.sroa.7.0, %bb.f ], [ %.02031.i, %bb.h ] ; 3 uses
  %i.r = phi ptr [ %i.d, %.lr.ph.i ], [ %i.d, %bb.g ], [ %i.d, %bb.c ], [ %.02031.i, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.h ]
  %i.s = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.g ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %.02031.i, %bb.f ], [ %i.e, %bb.h ]
  %i.t = phi ptr [ %i.f, %.lr.ph.i ], [ %i.f, %bb.g ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ], [ %.02031.i, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %.02031.i, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %.not23.i = icmp eq ptr %i.v, null
  br i1 %.not23.i, label %bb.j, label %.lr.ph.i, !llvm.loop !29

chacha20_get_ctx_params_decoder.exit:             ; preds = %bb.d, %bb.f, %bb.h
  %.sink.i = phi i32 [ 57, %bb.f ], [ 46, %bb.d ], [ 68, %bb.h ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, ptr noundef nonnull @__func__.chacha20_get_ctx_params_decoder) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g) #5
  br label %.thread48

bb.j:                                             ; preds = %bb.i
  %.not22 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not22, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %.sroa.0.1, i64 noundef 16) #5
  %.not23 = icmp eq i32 %i.w, 0
  br i1 %.not23, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @__func__.chacha20_get_ctx_params) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #5
  br label %.thread48

bb.m:                                             ; preds = %bb.k, %bb.j
  %.not24 = icmp eq ptr %.sroa.5.1, null
  br i1 %.not24, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %.sroa.5.1, i64 noundef 32) #5
  %.not25 = icmp eq i32 %i.x, 0
  br i1 %.not25, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @__func__.chacha20_get_ctx_params) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #5
  br label %.thread48

bb.p:                                             ; preds = %bb.n, %bb.m
  %.not26 = icmp eq ptr %.sroa.7.1, null
  br i1 %.not26, label %.thread48, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %2 = getelementptr i8, ptr %0, i64 227
  %3 = load i8, ptr %2, align 1, !tbaa !30
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %3, ptr %4, align 1, !tbaa !20
  %5 = load i32, ptr %i.y, align 8, !tbaa !30     ; 3 uses
  %6 = lshr i32 %5, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %7, ptr %8, align 2, !tbaa !20
  %9 = lshr i32 %5, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %10, ptr %11, align 1, !tbaa !20
  %12 = trunc i32 %5 to i8
  store i8 %12, ptr %i.a, align 16, !tbaa !20
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %14 = getelementptr i8, ptr %0, i64 231
  %15 = load i8, ptr %14, align 1, !tbaa !30
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %15, ptr %17, align 1, !tbaa !20
  %18 = load i32, ptr %13, align 4, !tbaa !30     ; 3 uses
  %19 = lshr i32 %18, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %20, ptr %21, align 2, !tbaa !20
  %22 = lshr i32 %18, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %23, ptr %24, align 1, !tbaa !20
  %25 = trunc i32 %18 to i8
  store i8 %25, ptr %16, align 4, !tbaa !20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %27 = getelementptr i8, ptr %0, i64 235
  %28 = load i8, ptr %27, align 1, !tbaa !30
  %29 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %30 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %28, ptr %30, align 1, !tbaa !20
  %31 = load i32, ptr %26, align 8, !tbaa !30     ; 3 uses
  %32 = lshr i32 %31, 16
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %33, ptr %34, align 2, !tbaa !20
  %35 = lshr i32 %31, 8
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %36, ptr %37, align 1, !tbaa !20
  %38 = trunc i32 %31 to i8
  store i8 %38, ptr %29, align 8, !tbaa !20
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %40 = getelementptr i8, ptr %0, i64 239
  %41 = load i8, ptr %40, align 1, !tbaa !30
  %42 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %43 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %41, ptr %43, align 1, !tbaa !20
  %44 = load i32, ptr %39, align 4, !tbaa !30     ; 3 uses
  %45 = lshr i32 %44, 16
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %46, ptr %47, align 2, !tbaa !20
  %48 = lshr i32 %44, 8
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %49, ptr %50, align 1, !tbaa !20
  %51 = trunc i32 %44 to i8
  store i8 %51, ptr %42, align 4, !tbaa !20
  %i.z = call i32 @OSSL_PARAM_set_octet_string(ptr noundef nonnull %.sroa.7.1, ptr noundef nonnull %i.a, i64 noundef 16) #5
  %.not27 = icmp eq i32 %i.z, 0
  br i1 %.not27, label %bb.r, label %.thread48

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 129, ptr noundef nonnull @__func__.chacha20_get_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #5
  br label %.thread48

.thread48:                                        ; preds = %bb.b, %.preheader.i, %chacha20_get_ctx_params_decoder.exit, %bb.p, %bb.q, %bb.a, %bb.r, %bb.o, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ 0, %bb.a ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %chacha20_get_ctx_params_decoder.exit ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %.preheader.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @chacha20_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret ptr @chacha20_get_ctx_params_list
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @chacha20_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret ptr @chacha20_set_ctx_params_list
}

declare i32 @OSSL_PARAM_get_size_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ossl_prov_is_running() local_unnamed_addr #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_cipher_generic_reset_ctx(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cipher_generic_get_params(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_octet_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!9 = !{!"long", !4, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS17prov_cipher_hw_st", !8, i64 0}
!12 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!13 = !{!"prov_cipher_ctx_st", !4, i64 0, !4, i64 16, !4, i64 32, !8, i64 48, !4, i64 56, !5, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 112, !10, i64 120, !5, i64 128, !9, i64 136, !5, i64 144, !9, i64 152, !5, i64 160, !11, i64 168, !8, i64 176, !12, i64 184}
!14 = !{!13, !11, i64 168}
!15 = !{!"prov_cipher_hw_st", !8, i64 0, !8, i64 8, !8, i64 16}
!16 = !{!"prov_cipher_hw_chacha20_st", !15, i64 0, !8, i64 24}
!17 = !{!16, !8, i64 24}
!18 = !{!"ossl_param_st", !10, i64 0, !5, i64 8, !8, i64 16, !9, i64 24, !9, i64 32}
!19 = !{!18, !10, i64 0}
!20 = !{!4, !4, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!9, !9, i64 0}
!25 = !{!"", !13, i64 0, !4, i64 192, !4, i64 224, !4, i64 240, !5, i64 304}
!26 = !{!25, !10, i64 120}
!27 = !{!25, !5, i64 128}
!28 = !{!25, !9, i64 136}
!29 = distinct !{!29, !22}
!30 = !{!5, !5, i64 0}
end_hunk_0
