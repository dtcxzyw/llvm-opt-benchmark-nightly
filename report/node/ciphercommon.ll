Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ciphercommon?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ossl_cipher_generic_get_params:bb.a
bb.d:                                             ; preds = %bb.c
  %i.d = trunc i64 %2 to i32
  %i.e = and i32 %i.d, 1
  %i.f = tail call i32 @OSSL_PARAM_set_int(ptr noundef nonnull %i.c, i32 noundef %i.e) #5
  %.not47 = icmp eq i32 %i.f, 0
  br i1 %.not47, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = tail call ptr @OSSL_PARAM_locate(ptr noundef %0, ptr noundef nonnull @.str.3) #5 ; 2 uses
  %.not48 = icmp eq ptr %i.g, null
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = trunc i64 %2 to i32
  %i.i = lshr i32 %i.h, 1
  %i.j = and i32 %i.i, 1
  %i.k = tail call i32 @OSSL_PARAM_set_int(ptr noundef nonnull %i.g, i32 noundef %i.j) #5
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @OSSL_PARAM_locate(ptr noundef %0, ptr noundef nonnull @.str.4) #5 ; 2 uses
  %.not50 = icmp eq ptr %i.l, null
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = trunc i64 %2 to i32
  %i.n = lshr i32 %i.m, 2
  %i.o = and i32 %i.n, 1
  %i.p = tail call i32 @OSSL_PARAM_set_int(ptr noundef nonnull %i.l, i32 noundef %i.o) #5
  %.not51 = icmp eq i32 %i.p, 0
  br i1 %.not51, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = tail call ptr @OSSL_PARAM_locate(ptr noundef %0, ptr noundef nonnull @.str.5) #5 ; 2 uses
  %.not52 = icmp eq ptr %i.q, null
  br i1 %.not52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = trunc i64 %2 to i32
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 1
  %i.u = tail call i32 @OSSL_PARAM_set_int(ptr noundef nonnull %i.q, i32 noundef %i.t) #5
  %.not53 = icmp eq i32 %i.u, 0
  br i1 %.not53, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = tail call ptr @OSSL_PARAM_locate(ptr noundef %0, ptr noundef nonnull @.str.6) #5 ; 2 uses
  %.not54 = icmp eq ptr %i.v, null
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = trunc i64 %2 to i32
  %i.x = lshr i32 %i.w, 4
  %i.y = and i32 %i.x, 1
  %i.z = tail call i32 @OSSL_PARAM_set_int(ptr noundef nonnull %i.v, i32 noundef %i.y) #5
  %.not55 = icmp eq i32 %i.z, 0
  br i1 %.not55, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = tail call ptr @OSSL_PARAM_locate(ptr noundef %0, ptr noundef nonnull @.str.7) #5 ; 2 uses
  %.not56 = icmp eq ptr %i.aa, null
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = lshr i64 %3, 3
  %i.ac = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.aa, i64 noundef %i.ab) #5
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = tail call ptr @OSSL_PARAM_locate(ptr noundef %0, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %.not58 = icmp eq ptr %i.ad, null
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = lshr i64 %4, 3
  %i.af = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.ad, i64 noundef %i.ae) #5
  %.not59 = icmp eq i32 %i.af, 0
  br i1 %.not59, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ag = tail call ptr @OSSL_PARAM_locate(ptr noundef %0, ptr noundef nonnull @.str.9) #5 ; 2 uses
  %.not60 = icmp eq ptr %i.ag, null
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = lshr i64 %5, 3
  %i.ai = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.ag, i64 noundef %i.ah) #5
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %.sink.split, label %bb.s

.sink.split:                                      ; preds = %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.sink = phi i32 [ 91, %bb.p ], [ 86, %bb.n ], [ 81, %bb.l ], [ 75, %bb.j ], [ 69, %bb.h ], [ 63, %bb.f ], [ 57, %bb.d ], [ 51, %bb.b ], [ 96, %bb.r ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef %.sink, ptr noundef nonnull @__func__.ossl_cipher_generic_get_params) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #5
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.q, %bb.r
  %.0 = phi i32 [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @OSSL_PARAM_locate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_uint(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_cipher_generic_gettable_ctx_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_cipher_generic_known_gettable_ctx_params
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_cipher_generic_settable_ctx_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_cipher_generic_known_settable_ctx_params
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_var_keylen_set_ctx_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.d = tail call i32 @ossl_cipher_generic_set_ctx_params(ptr noundef %0, ptr noundef nonnull %1)
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %ossl_param_is_empty.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #5 ; 2 uses
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %ossl_param_is_empty.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.f = call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #5
  %.not16.not = icmp eq i32 %i.f, 0
  br i1 %.not16.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not17 = icmp eq i64 %i.h, %i.i
  br i1 %.not17, label %ossl_param_is_empty.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.i, ptr %i.g, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -9
  store i8 %i.l, ptr %i.j, align 4
  br label %ossl_param_is_empty.exit.thread.sink.split

bb.g:                                             ; preds = %bb.d
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 129, ptr noundef nonnull @__func__.ossl_cipher_var_keylen_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  br label %ossl_param_is_empty.exit.thread.sink.split

ossl_param_is_empty.exit.thread.sink.split:       ; preds = %bb.f, %bb.e, %bb.g
  %.1.ph = phi i32 [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %ossl_param_is_empty.exit.thread.sink.split, %bb.a, %bb.c, %bb.b, %ossl_param_is_empty.exit
  %.1 = phi i32 [ 1, %ossl_param_is_empty.exit ], [ 1, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ], [ %.1.ph, %ossl_param_is_empty.exit.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_set_ctx_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !14
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.f = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.10) #5 ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.g = call i32 @OSSL_PARAM_get_uint(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #5
  %.not36.not = icmp eq i32 %i.g, 0
  br i1 %.not36.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 657, ptr noundef nonnull @__func__.ossl_cipher_generic_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %ossl_param_is_empty.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.a, align 4, !tbaa !38
  %.not37 = icmp ne i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.j = zext i1 %.not37 to i8
  %i.k = load i8, ptr %i.i, align 4
  %i.l = and i8 %i.k, -2
  %i.m = or disjoint i8 %i.l, %i.j
  store i8 %i.m, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.n = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.15) #5 ; 2 uses
  %.not38 = icmp eq ptr %i.n, null
  br i1 %.not38, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.o = call i32 @OSSL_PARAM_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b) #5
  %.not39.not = icmp eq i32 %i.o, 0
  br i1 %.not39.not, label %.thread48, label %bb.g

.thread48:                                        ; preds = %bb.f
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 667, ptr noundef nonnull @__func__.ossl_cipher_generic_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %ossl_param_is_empty.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.b, align 4, !tbaa !38
  %.not40.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = select i1 %.not40.not, i8 0, i8 -128
  %i.t = and i8 %i.r, 127
  %i.u = or disjoint i8 %i.t, %i.s
  store i8 %i.u, ptr %i.q, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.v = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #5 ; 2 uses
  %.not41 = icmp eq ptr %i.v, null
  br i1 %.not41, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = call i32 @OSSL_PARAM_get_uint(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #5
  %.not42 = icmp eq i32 %i.x, 0
  br i1 %.not42, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__func__.ossl_cipher_generic_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  br label %ossl_param_is_empty.exit.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.y = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.17) #5 ; 2 uses
  %.not43 = icmp eq ptr %i.y, null
  br i1 %.not43, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #5
  %.not44 = icmp eq i32 %i.aa, 0
  br i1 %.not44, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 682, ptr noundef nonnull @__func__.ossl_cipher_generic_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  br label %ossl_param_is_empty.exit.thread

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ab = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #5 ; 2 uses
  %.not45 = icmp eq ptr %i.ab, null
  br i1 %.not45, label %ossl_param_is_empty.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ac = call i32 @OSSL_PARAM_get_uint(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.c) #5
  %.not46.not = icmp eq i32 %i.ac, 0
  br i1 %.not46.not, label %.thread49, label %bb.p

.thread49:                                        ; preds = %bb.o
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 691, ptr noundef nonnull @__func__.ossl_cipher_generic_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %ossl_param_is_empty.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.a, %bb.n, %bb.p, %.thread49, %.thread48, %.thread, %ossl_param_is_empty.exit, %bb.m, %bb.j
  %.5 = phi i32 [ 0, %.thread ], [ 1, %bb.n ], [ 0, %.thread49 ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %.thread48 ], [ 1, %ossl_param_is_empty.exit ], [ 1, %bb.p ], [ 1, %bb.a ]
  ret i32 %.5
}

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_size_t(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_cipher_var_keylen_settable_ctx_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_cipher_var_keylen_known_settable_ctx_params
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_cipher_aead_gettable_ctx_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret ptr @cipher_aead_known_gettable_ctx_params
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_cipher_aead_settable_ctx_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret ptr @cipher_aead_known_settable_ctx_params
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_cipher_generic_reset_ctx(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str.1, i32 noundef 183) #5
  store i32 0, ptr %i.a, align 8, !tbaa !21
  store ptr null, ptr %i.c, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_einit(ptr noundef initializes((96, 104), (160, 164)) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @cipher_generic_init_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cipher_generic_init_internal(ptr noundef initializes((96, 104), (160, 164)) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 8 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = trunc nuw nsw i32 %6 to i8
  %i.f = shl nuw nsw i8 %i.e, 1
  %i.g = and i8 %i.d, -19
  %i.h = or disjoint i8 %i.g, %i.f
  store i8 %i.h, ptr %i.c, align 4
  %i.i = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %cond = icmp eq ptr %3, null
  br i1 %cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24
  %.not35 = icmp eq i32 %i.k, 1
  br i1 %.not35, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp ne i64 %4, %i.m
  %i.o = icmp ugt i64 %4, 16
  %or.cond.i = or i1 %i.o, %i.n
  br i1 %or.cond.i, label %ossl_cipher_generic_initiv.exit.thread, label %ossl_cipher_generic_initiv.exit

ossl_cipher_generic_initiv.exit.thread:           ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 704, ptr noundef nonnull @__func__.ossl_cipher_generic_initiv) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 109, ptr noundef null) #5
  br label %bb.p

ossl_cipher_generic_initiv.exit:                  ; preds = %bb.d
  %i.p = load i8, ptr %i.c, align 4
  %i.q = or i8 %i.p, 4
  store i8 %i.q, ptr %i.c, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.c, align 4
  %i.t = and i8 %i.s, 4
  %.not37 = icmp eq i8 %i.t, 0
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24
  %.off = add i32 %i.v, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.y, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %ossl_cipher_generic_initiv.exit, %bb.f, %bb.g, %bb.e
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i8, ptr %i.c, align 4
  %i.aa = and i8 %i.z, 32
  %i.ab = icmp eq i8 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18
  %.not39 = icmp eq i64 %2, %i.ad
  br i1 %.not39, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 216, ptr noundef nonnull @__func__.cipher_generic_init_internal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 105, ptr noundef null) #5
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  store i64 %2, ptr %i.ac, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #5
  %.not40 = icmp eq i32 %i.ah, 0
  br i1 %.not40, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %i.c, align 4
  %i.aj = or i8 %i.ai, 8
  store i8 %i.aj, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %i.ak = tail call i32 @ossl_cipher_generic_set_ctx_params(ptr noundef nonnull %0, ptr noundef %5)
  br label %bb.p

bb.p:                                             ; preds = %ossl_cipher_generic_initiv.exit.thread, %bb.m, %bb.a, %bb.o, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ %i.ak, %bb.o ], [ 0, %ossl_cipher_generic_initiv.exit.thread ], [ 0, %bb.a ], [ 0, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_dinit(ptr noundef initializes((96, 104), (160, 164)) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @cipher_generic_init_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_skey_einit(ptr noundef initializes((96, 104), (160, 164)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = tail call fastcc i32 @cipher_generic_init_internal(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.d, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_skey_dinit(ptr noundef initializes((96, 104), (160, 164)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
