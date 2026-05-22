inline.NumInlined: 107
inline.NumDeleted: 44
begin_hunk_0_@ossl_provider_store_new:bb.a
  store ptr %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @CRYPTO_THREAD_lock_new() #11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.l, ptr %i.m, align 8, !tbaa !28
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @ossl_provider_store_free(ptr noundef %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %0, ptr %i.a, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = or i8 %i.p, 1
  store i8 %i.q, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.a, %bb.g ]
  ret ptr %.0
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @ossl_provider_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = load ptr, ptr %1, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.f) #12
  ret i32 %i.g
}

declare ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_provider_disable_fallback_loading(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ossl_lib_ctx_get_data(ptr noundef %0, i32 noundef 1) #11 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %get_provider_store.exit.thread, label %get_provider_store.exit

get_provider_store.exit.thread:                   ; preds = %bb.a
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.get_provider_store) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #11
  br label %bb.c

get_provider_store.exit:                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.d) #11
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %get_provider_store.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.j = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.i) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %get_provider_store.exit.thread, %get_provider_store.exit, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %get_provider_store.exit ], [ 0, %get_provider_store.exit.thread ]
  ret i32 %.0
}

declare i32 @CRYPTO_THREAD_write_lock(ptr noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_provider_info_add_to_store(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ossl_lib_ctx_get_data(ptr noundef %0, i32 noundef 1) #11 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %get_provider_store.exit, label %get_provider_store.exit.thread

get_provider_store.exit:                          ; preds = %bb.a
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.get_provider_store) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #11
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

get_provider_store.exit.thread:                   ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !9
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %get_provider_store.exit.thread, %get_provider_store.exit
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 362, ptr noundef nonnull @__func__.ossl_provider_info_add_to_store) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, ptr noundef null) #11
  br label %bb.k

bb.c:                                             ; preds = %get_provider_store.exit
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @__func__.ossl_provider_info_add_to_store) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #11
  br label %bb.k

.thread:                                          ; preds = %get_provider_store.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.h) #11
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44   ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 400, ptr noundef nonnull @.str, i32 noundef 375) #11 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !30
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 10, ptr %i.j, align 8, !tbaa !44
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %i.r = icmp eq i64 %i.q, %i.k
  br i1 %i.r, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %i.k, 10                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = mul i64 %i.s, 40
  %i.w = tail call ptr @CRYPTO_realloc(ptr noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str, i32 noundef 384) #11 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %.thread31

.thread31:                                        ; preds = %bb.h
  store ptr %i.w, ptr %i.t, align 8, !tbaa !30
  store i64 %i.s, ptr %i.j, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.thread31, %bb.f
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.w, %.thread31 ], [ %i.m, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !45
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.i
  %.025 = phi i32 [ 0, %bb.e ], [ 1, %bb.i ], [ 0, %bb.h ]
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.af = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.ae) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %.025, %bb.j ], [ 0, %.thread ]
  ret i32 %.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_provider_find(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ossl_provider_st, align 8   ; 5 uses
  %i.a = tail call ptr @ossl_lib_ctx_get_data(ptr noundef %0, i32 noundef 1) #11 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %get_provider_store.exit.thread, label %get_provider_store.exit

get_provider_store.exit.thread:                   ; preds = %bb.a
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.get_provider_store) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #11
  br label %bb.k

get_provider_store.exit:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %3, i8 0, i64 232, i1 false)
  %.not19 = icmp eq i32 %2, 0
  br i1 %.not19, label %bb.b, label %bb.d

bb.b:                                             ; preds = %get_provider_store.exit
  %i.c = tail call i32 @ossl_lib_ctx_is_default(ptr noundef %0) #11
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @OPENSSL_init_crypto(i64 noundef 64, ptr noundef null) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %get_provider_store.exit
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.g) #11
  %.not21.not = icmp eq i32 %i.h, 0
  br i1 %.not21.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  tail call void @OPENSSL_sk_sort(ptr noundef %i.j) #11
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.l = call i32 @OPENSSL_sk_find(ptr noundef %i.k, ptr noundef nonnull %3) #11 ; 2 uses
  %.not22 = icmp eq i32 %i.l, -1
  br i1 %.not22, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.n = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.m) #11 ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.p = call ptr @OPENSSL_sk_value(ptr noundef %i.o, i32 noundef %i.l) #11 ; 6 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.r = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.q) #11 ; 0 uses
  %.not23 = icmp eq ptr %i.p, null
  br i1 %.not23, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = atomicrmw add ptr %i.s, i32 1 monotonic, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 1
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %ossl_provider_up_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 @ossl_provider_up_ref_parent(ptr noundef nonnull %i.p, i32 noundef 0) #11
  %.not4.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i, label %ossl_provider_up_ref.exit.thread, label %ossl_provider_up_ref.exit

ossl_provider_up_ref.exit.thread:                 ; preds = %bb.h
  call void @ossl_provider_free(ptr noundef nonnull %i.p)
  br label %bb.i

ossl_provider_up_ref.exit:                        ; preds = %bb.g, %bb.h
  %.fr = freeze i32 %i.t
  %.not24 = icmp eq i32 %.fr, -1
  br i1 %.not24, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ossl_provider_up_ref.exit.thread, %ossl_provider_up_ref.exit
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ossl_provider_up_ref.exit, %.thread, %bb.f, %bb.d
  %spec.select25 = phi ptr [ null, %bb.d ], [ null, %.thread ], [ null, %bb.f ], [ null, %bb.i ], [ %i.p, %ossl_provider_up_ref.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.k

bb.k:                                             ; preds = %get_provider_store.exit.thread, %bb.j
  %.1 = phi ptr [ %spec.select25, %bb.j ], [ null, %get_provider_store.exit.thread ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ossl_lib_ctx_is_default(ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @ossl_provider_up_ref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @ossl_provider_up_ref_parent(ptr noundef nonnull %0, i32 noundef 0) #11
  %.not4 = icmp eq i32 %i.g, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ossl_provider_free(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

declare i32 @ossl_provider_up_ref_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ossl_provider_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = atomicrmw sub ptr %i.a, i32 1 release, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %CRYPTO_DOWN_REF.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.d = load i8, ptr %0, align 8
  %i.e = and i8 %i.d, 1
  %.not27 = icmp eq i8 %i.e, 0
  br i1 %.not27, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ossl_provider_teardown.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 1
  %.not4.i = icmp eq i8 %i.j, 0
  br i1 %.not4.i, label %bb.f, label %ossl_provider_teardown.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  tail call void %i.g(ptr noundef %i.l) #11, !inline_history !52
  br label %ossl_provider_teardown.exit

ossl_provider_teardown.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %.not28 = icmp eq ptr %i.n, null
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ossl_provider_teardown.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54
  %i.q = tail call i32 @ERR_unload_strings(i32 noundef %i.p, ptr noundef nonnull %i.n) #11 ; 0 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !53
  tail call void @CRYPTO_free(ptr noundef %i.r, ptr noundef nonnull @.str, i32 noundef 754) #11
  store ptr null, ptr %i.m, align 8, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ossl_provider_teardown.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  tail call void @CRYPTO_free(ptr noundef %i.t, ptr noundef nonnull @.str, i32 noundef 759) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.u = load i8, ptr %0, align 8
  %i.v = and i8 %i.u, -2
  store i8 %i.v, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.w = tail call i32 @ossl_init_thread_deregister(ptr noundef nonnull %0) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.z = tail call i32 @DSO_free(ptr noundef %i.y) #11 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  tail call void @CRYPTO_free(ptr noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 774) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  tail call void @CRYPTO_free(ptr noundef %i.ad, ptr noundef nonnull @.str, i32 noundef 775) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.af, ptr noundef nonnull @infopair_free) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.ah) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.aj) #11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.al) #11
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 781) #11
  br label %bb.k

CRYPTO_DOWN_REF.exit:                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = and i8 %i.an, 1
  %.not26 = icmp eq i8 %i.ao, 0
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %CRYPTO_DOWN_REF.exit
  %i.ap = tail call i32 @ossl_provider_free_parent(ptr noundef nonnull %0, i32 noundef 0) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %CRYPTO_DOWN_REF.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_provider_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.OSSL_PROVIDER_INFO, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = tail call ptr @ossl_lib_ctx_get_data(ptr noundef %0, i32 noundef 1) #11 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %get_provider_store.exit.thread, label %get_provider_store.exit

get_provider_store.exit.thread:                   ; preds = %bb.a
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.get_provider_store) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, ptr noundef null) #11
  br label %.critedge71

get_provider_store.exit:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.preheader, label %bb.m

.preheader:                                       ; preds = %get_provider_store.exit
  %i.d = load ptr, ptr @ossl_predefined_providers, align 8, !tbaa !9 ; 2 uses
  %.not81 = icmp eq ptr %i.d, null
  br i1 %.not81, label %.loopexit76, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = phi ptr [ %i.h, %bb.c ], [ %i.d, %.preheader ]
  %.04682 = phi ptr [ %i.g, %bb.c ], [ @ossl_predefined_providers, %.preheader ] ; 2 uses
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %1) #12
  %.not59 = icmp eq i32 %i.f, 0
  br i1 %.not59, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %.04682, i64 40, i1 false), !tbaa.struct !45
  br label %.loopexit76

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.04682, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit76, label %.lr.ph, !llvm.loop !62

.loopexit76:                                      ; preds = %bb.c, %.preheader, %bb.b
  %.not79 = phi i1 [ false, %bb.b ], [ true, %.preheader ], [ true, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call i32 @CRYPTO_THREAD_read_lock(ptr noundef %i.j) #11
  %.not60 = icmp eq i32 %i.k, 0
  br i1 %.not60, label %.critedge71, label %bb.d

bb.d:                                             ; preds = %.loopexit76
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not90 = icmp eq i64 %i.m, 0
  br i1 %.not90, label %.critedge, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
end_hunk_0
