Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/dh_kmgmt?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0_@dh_match:bb.a
bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @BN_cmp(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #6
  %i.p = icmp eq i32 %i.o, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f
  %i.q = phi i1 [ %i.i, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ %i.p, %bb.h ]
  %i.r = zext i1 %i.q to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.4 = phi i32 [ %i.r, %bb.i ], [ 1, %bb.b ]     ; 2 uses
  %i.s = and i32 %2, 4
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @ossl_dh_get0_params(ptr noundef %0) #6
  %i.u = tail call ptr @ossl_dh_get0_params(ptr noundef %1) #6
  %.not49 = icmp eq i32 %.4, 0
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call i32 @ossl_ffc_params_cmp(ptr noundef %i.t, ptr noundef %i.u, i32 noundef 1) #6
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.a
  %.036 = phi i32 [ 0, %bb.a ], [ %.4, %bb.j ], [ 0, %bb.k ], [ %i.x, %bb.l ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dh_validate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %1, 7
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.thread28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %1, 4
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @DH_check_params_ex(ptr noundef %0) #6
  %i.k = icmp ne i32 %i.j, 0
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call i32 @DH_check_ex(ptr noundef %0) #6
  %i.m = icmp ne i32 %i.l, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0.shrunk = phi i1 [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ true, %bb.c ] ; 2 uses
  %i.n = and i32 %1, 2
  %.not21 = icmp ne i32 %i.n, 0                   ; 2 uses
  %brmerge.not = select i1 %.not21, i1 %.0.shrunk, i1 false
  %not..not21 = xor i1 %.not21, true
  %narrow = select i1 %not..not21, i1 %.0.shrunk, i1 false
  br i1 %brmerge.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.c, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !22
  call void @DH_get0_key(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef null) #6
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %dh_validate_public.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @ossl_dh_is_named_safe_prime_group(ptr noundef %0) #6
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @ossl_dh_check_pub_key_partial(ptr noundef %0, ptr noundef %i.r, ptr noundef nonnull %i.d) #6
  br label %dh_validate_public.exit

bb.k:                                             ; preds = %bb.i
  %i.t = call i32 @DH_check_pub_key_ex(ptr noundef %0, ptr noundef %i.r) #6
  br label %dh_validate_public.exit

dh_validate_public.exit:                          ; preds = %bb.h, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.t, %bb.k ], [ %i.s, %bb.j ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.u = icmp ne i32 %.0.i, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %dh_validate_public.exit
  %.1.in = phi i1 [ %narrow, %bb.g ], [ %i.u, %dh_validate_public.exit ] ; 2 uses
  %.1 = zext i1 %.1.in to i32
  %i.v = and i32 %1, 1
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.1.in, label %bb.n, label %.thread28

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !74
  call void @DH_get0_key(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.b) #6
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %dh_validate_private.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = call i32 @ossl_dh_check_priv_key(ptr noundef %0, ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #6
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  br label %dh_validate_private.exit

dh_validate_private.exit:                         ; preds = %bb.n, %bb.o
  %.0.i25 = phi i32 [ %i.aa, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.p

bb.p:                                             ; preds = %dh_validate_private.exit, %bb.l
  %.2 = phi i32 [ %.1, %bb.l ], [ %.0.i25, %dh_validate_private.exit ] ; 2 uses
  %i.ab = and i32 %1, 3
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.q, label %.thread28

bb.q:                                             ; preds = %bb.p
  %.not24 = icmp eq i32 %.2, 0
  br i1 %.not24, label %.thread28, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = call i32 @ossl_dh_check_pairwise(ptr noundef %0, i32 noundef 0) #6
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  br label %.thread28

.thread28:                                        ; preds = %bb.m, %bb.p, %bb.r, %bb.q, %bb.b, %bb.a
  %.019 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ %.2, %bb.p ], [ 0, %bb.q ], [ %i.af, %bb.r ], [ 0, %bb.m ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dh_import(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #6
  %i.b = icmp eq i32 %i.a, 0
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = and i32 %1, 7
  %i.e = icmp eq i32 %i.d, 0
  %or.cond18 = or i1 %i.e, %or.cond
  br i1 %or.cond18, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @ossl_dh_params_fromdata(ptr noundef nonnull %0, ptr noundef %2) #6
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  %i.h = and i32 %1, 3
  %.not = icmp ne i32 %i.h, 0                     ; 2 uses
  %brmerge.not = select i1 %.not, i1 %i.g, i1 false
  %not..not = xor i1 %.not, true
  %narrow = select i1 %not..not, i1 %i.g, i1 false
  br i1 %brmerge.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %1, 1
  %i.j = tail call i32 @ossl_dh_key_fromdata(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i) #6
  %i.k = icmp ne i32 %i.j, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.014.shrunk = phi i1 [ %i.k, %bb.c ], [ false, %bb.a ], [ %narrow, %bb.b ]
  %.014 = zext i1 %.014.shrunk to i32
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @dh_import_types(i32 noundef %0) #1 {
bb.a:
  %i.a = and i32 %0, 132
  %.not.i = icmp ne i32 %i.a, 0
  %spec.select.i = zext i1 %.not.i to i32         ; 2 uses
  %i.b = and i32 %0, 3
  %.not5.i = icmp eq i32 %i.b, 0
  %1 = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %.not5.i, i32 %spec.select.i, i32 %1
  %2 = zext nneg i32 %.1.i to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @dh_types, i64 %2
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @dh_export(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #6
  %i.b = icmp eq i32 %i.a, 0
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = and i32 %1, 7
  %i.e = icmp eq i32 %i.d, 0
  %or.cond32 = or i1 %i.e, %or.cond
  br i1 %or.cond32, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @OSSL_PARAM_BLD_new() #6   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %1, 132
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @ossl_dh_params_todata(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null) #6
  %.not47 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = and i32 %1, 3
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.k = and i32 %1, 3
  %.not2734 = icmp eq i32 %i.k, 0
  br i1 %.not2734, label %.thread42, label %.thread36

bb.e:                                             ; preds = %bb.d
  br i1 %.not47, label %.thread39, label %.thread36

.thread36:                                        ; preds = %.thread, %bb.e
  %i.l = and i32 %1, 1
  %i.m = tail call i32 @ossl_dh_key_todata(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, i32 noundef %i.l) #6
  %.not48 = icmp eq i32 %i.m, 0
  br i1 %.not48, label %.thread39, label %.thread42

bb.f:                                             ; preds = %bb.d
  br i1 %.not47, label %.thread39, label %.thread42

.thread42:                                        ; preds = %.thread36, %.thread, %bb.f
  %i.n = tail call ptr @OSSL_PARAM_BLD_to_param(ptr noundef nonnull %i.f) #6 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread39, label %bb.g

bb.g:                                             ; preds = %.thread42
  %i.p = tail call i32 %2(ptr noundef nonnull %i.n, ptr noundef %3) #6
  tail call void @OSSL_PARAM_clear_free(ptr noundef nonnull %i.n) #6
  br label %.thread39

.thread39:                                        ; preds = %.thread36, %bb.e, %bb.f, %.thread42, %bb.g
  %.2 = phi i32 [ %i.p, %bb.g ], [ 0, %.thread42 ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.thread36 ]
  tail call void @OSSL_PARAM_BLD_free(ptr noundef nonnull %i.f) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %.thread39
  %.023 = phi i32 [ %.2, %.thread39 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @dh_export_types(i32 noundef %0) #1 {
bb.a:
  %i.a = and i32 %0, 132
  %.not.i = icmp ne i32 %i.a, 0
  %spec.select.i = zext i1 %.not.i to i32         ; 2 uses
  %i.b = and i32 %0, 3
  %.not5.i = icmp eq i32 %i.b, 0
  %1 = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %.not5.i, i32 %spec.select.i, i32 %1
  %2 = zext nneg i32 %.1.i to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @dh_types, i64 %2
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @dh_dup(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ossl_dh_dup(ptr noundef %0, i32 noundef %1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @dhx_newdata(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @dhx_newdata_ex(ptr noundef %0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @dhx_newdata_ex(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #6
  %i.d = call fastcc i32 @get_legacy_dh_object(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1)
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #6
  %i.h = call ptr @ossl_dh_new_ex(ptr noundef %i.g) #6 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !10
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @DH_clear_flags(ptr noundef nonnull %i.h, i32 noundef 61440) #6
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @DH_set_flags(ptr noundef %i.i, i32 noundef 4096) #6
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ], [ %.pre, %bb.e ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @dhx_gen_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #6
  %i.b = tail call i32 @ossl_prov_is_running() #6
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 7
  %i.d = icmp eq i32 %i.c, 0
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %dh_gen_init_base.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 120, ptr noundef nonnull @.str.1, i32 noundef 553) #6 ; 12 uses
  %.not25.i = icmp eq ptr %i.e, null
  br i1 %.not25.i, label %.split.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !16
  store ptr %i.a, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2048, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 224, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr null, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 0, ptr %i.k, align 8, !tbaa !21
  store <4 x i32> <i32 -1, i32 1, i32 2, i32 -1>, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i32 4096, ptr %i.l, align 8, !tbaa !23
  %i.m = tail call i32 @dh_gen_set_params(ptr noundef nonnull %i.e, ptr noundef %2)
  %.not26.i = icmp eq i32 %i.m, 0
  br i1 %.not26.i, label %.split.thread.i, label %dh_gen_init_base.exit

.split.thread.i:                                  ; preds = %.split.i, %bb.b
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str.1, i32 noundef 575) #6
  br label %dh_gen_init_base.exit

dh_gen_init_base.exit:                            ; preds = %bb.a, %.split.i, %.split.thread.i
  %.021.i = phi ptr [ null, %bb.a ], [ null, %.split.thread.i ], [ %i.e, %.split.i ]
  ret ptr %.021.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dhx_gen_set_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.dh_gen_set_params_st, align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %dh_set_gen_seed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %dhx_gen_set_params_decoder.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %.not6993.i = icmp eq ptr %i.b, null
  br i1 %.not6993.i, label %dhx_gen_set_params_decoder.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 14 uses
  %.promoted = load ptr, ptr %i.g, align 8
  %.promoted239 = load ptr, ptr %i.h, align 8
  %.promoted253 = load ptr, ptr %i.i, align 8
  %.promoted267 = load ptr, ptr %i.j, align 8
  %.promoted281 = load ptr, ptr %i.k, align 8
  %.promoted295 = load ptr, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.ap, %.lr.ph.i
  %.06694.i297 = phi ptr [ %.promoted295, %.lr.ph.i ], [ %.06694.i296, %bb.ap ] ; 39 uses
  %.06694.i283 = phi ptr [ %.promoted281, %.lr.ph.i ], [ %.06694.i282, %bb.ap ] ; 39 uses
  %.06694.i269 = phi ptr [ %.promoted267, %.lr.ph.i ], [ %.06694.i268, %bb.ap ] ; 39 uses
  %.06694.i255 = phi ptr [ %.promoted253, %.lr.ph.i ], [ %.06694.i254, %bb.ap ] ; 39 uses
  %.06694.i241 = phi ptr [ %.promoted239, %.lr.ph.i ], [ %.06694.i240, %bb.ap ] ; 39 uses
  %.06694.i227 = phi ptr [ %.promoted, %.lr.ph.i ], [ %.06694.i226, %bb.ap ] ; 39 uses
  %.06694.i113 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i112, %bb.ap ] ; 27 uses
  %.06694.i99 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i98, %bb.ap ] ; 27 uses
  %.06694.i85 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i84, %bb.ap ] ; 27 uses
  %.06694.i71 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i70, %bb.ap ] ; 27 uses
  %.06694.i57 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i56, %bb.ap ] ; 27 uses
  %i.m = phi ptr [ null, %.lr.ph.i ], [ %i.cc, %bb.ap ] ; 28 uses
  %i.n = phi ptr [ null, %.lr.ph.i ], [ %i.cd, %bb.ap ] ; 28 uses
  %i.o = phi ptr [ null, %.lr.ph.i ], [ %i.ce, %bb.ap ] ; 28 uses
  %i.p = phi ptr [ null, %.lr.ph.i ], [ %i.cf, %bb.ap ] ; 28 uses
  %i.q = phi ptr [ null, %.lr.ph.i ], [ %i.cg, %bb.ap ] ; 28 uses
  %i.r = phi ptr [ null, %.lr.ph.i ], [ %i.ch, %bb.ap ] ; 28 uses
  %i.s = phi ptr [ null, %.lr.ph.i ], [ %i.ci, %bb.ap ] ; 28 uses
  %i.t = phi ptr [ null, %.lr.ph.i ], [ %i.cj, %bb.ap ] ; 28 uses
  %i.u = phi ptr [ null, %.lr.ph.i ], [ %i.ck, %bb.ap ] ; 28 uses
  %i.v = phi ptr [ null, %.lr.ph.i ], [ %i.cl, %bb.ap ] ; 28 uses
  %i.w = phi ptr [ null, %.lr.ph.i ], [ %i.cm, %bb.ap ] ; 28 uses
  %i.x = phi ptr [ %i.b, %.lr.ph.i ], [ %i.co, %bb.ap ] ; 31 uses
  %.06694.i = phi ptr [ %1, %.lr.ph.i ], [ %i.cn, %bb.ap ] ; 23 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27
  switch i8 %i.y, label %bb.ap [
    i8 100, label %bb.d
    i8 103, label %bb.g
    i8 104, label %bb.n
    i8 112, label %bb.q
    i8 113, label %bb.ae
    i8 115, label %bb.ah
    i8 116, label %bb.am
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.2, ptr noundef nonnull dereferenceable(1) %i.z) #7
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.ap, !prof !28

bb.e:                                             ; preds = %bb.d
  %.not80.i = icmp eq ptr %i.m, null
  br i1 %.not80.i, label %bb.ap, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  store ptr %.06694.i227, ptr %i.g, align 8
  store ptr %.06694.i241, ptr %i.h, align 8
  store ptr %.06694.i255, ptr %i.i, align 8
end_hunk_0
