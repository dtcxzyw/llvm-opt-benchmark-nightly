Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_crypto?download=true
inline.NumInlined: 478
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@psa_sign_hash_start:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.f, align 4
  %i.g = tail call fastcc i32 @psa_sign_verify_check_alg(i32 noundef 0, i32 noundef %2) ; 2 uses
  %.not31 = icmp eq i32 %i.g, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = or disjoint i8 %i.d, 1
  store i8 %i.h, ptr %i.c, align 4
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.i = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, ptr noundef %i.a, i32 noundef 4096, i32 noundef %2) ; 2 uses
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.f, label %psa_crypto_local_input_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !37
  %i.l = and i16 %i.k, 28672
  %i.m = icmp eq i16 %i.l, 28672
  br i1 %i.m, label %bb.g, label %psa_crypto_local_input_alloc.exit

bb.g:                                             ; preds = %bb.f
  %i.n = icmp eq i64 %4, 0
  br i1 %i.n, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = call noalias ptr @calloc(i64 noundef %4, i64 noundef 1) #19 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %psa_crypto_local_input_alloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %4, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.sroa.0.1.ph = phi ptr [ %i.o, %bb.i ], [ null, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !59
  %i.r = getelementptr i8, ptr %i.j, i64 4
  %.val.i = load i32, ptr %i.r, align 4, !tbaa !41
  %cond.i = icmp ult i32 %.val.i, 256
  br i1 %cond.i, label %bb.k, label %psa_crypto_local_input_alloc.exit

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %0, align 4, !tbaa !62
  %i.s = load i16, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.t = and i16 %i.s, -256
  %i.u = icmp eq i16 %i.t, 28928
  %i.v = and i16 %i.s, 192
  %i.w = icmp ne i16 %i.v, 0
  %i.x = and i1 %i.u, %i.w
  %.1.i.i = select i1 %i.x, i32 -135, i32 -134
  br label %psa_crypto_local_input_alloc.exit

psa_crypto_local_input_alloc.exit:                ; preds = %bb.k, %bb.j, %bb.h, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.f ], [ %.sroa.0.1.ph, %bb.j ], [ %.sroa.0.1.ph, %bb.k ]
  %.sroa.7.0 = phi i64 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.f ], [ %4, %bb.j ], [ %4, %bb.k ]
  %.0 = phi i32 [ -141, %bb.h ], [ %i.i, %bb.e ], [ -135, %bb.f ], [ -135, %bb.j ], [ %.1.i.i, %bb.k ]
  %i.y = load i8, ptr %i.c, align 4
  %i.z = or i8 %i.y, 1
  store i8 %i.z, ptr %i.c, align 4
  %i.aa = load i32, ptr %0, align 4, !tbaa !62
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %psa_sign_hash_abort_internal.exit, label %bb.l

bb.l:                                             ; preds = %psa_crypto_local_input_alloc.exit
  store i32 0, ptr %0, align 4, !tbaa !62
  br label %psa_sign_hash_abort_internal.exit

psa_sign_hash_abort_internal.exit:                ; preds = %psa_crypto_local_input_alloc.exit, %bb.l
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ad = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.ac) #20
  %.not34 = icmp eq i32 %i.ad, 0
  br i1 %.not34, label %bb.n, label %bb.m

bb.m:                                             ; preds = %psa_sign_hash_abort_internal.exit
  %i.ae = load i8, ptr %i.c, align 4
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.c, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %psa_sign_hash_abort_internal.exit
  call void @mbedtls_zeroize_and_free(ptr noundef %.sroa.0.0, i64 noundef %.sroa.7.0) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %bb.n, %bb.d
  %.026 = phi i32 [ %.0, %bb.n ], [ %i.g, %bb.d ], [ -137, %bb.b ], [ -137, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.026
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -135, 1) i32 @psa_sign_verify_check_alg(i32 noundef range(i32 0, 2) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i32 %0, 0                        ; 2 uses
  %i.b = and i32 %1, -256                         ; 5 uses
  br i1 %i.a, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.c [
    i32 100668160, label %.thread
    i32 100664064, label %.thread
    i32 100663808, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %1, -512                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 100664832
  %i.e = icmp eq i32 %i.b, 100665600
  %or.cond40 = or i1 %i.d, %i.e
  br i1 %or.cond40, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %i.c, 100664320
  %i.g = icmp eq i32 %1, 100665344
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %._crit_edge, label %is_hash_supported.exit.thread

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.d
  switch i32 %i.b, label %bb.e [
    i32 100668160, label %.thread
    i32 100664064, label %.thread
    i32 100663808, label %.thread
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.h = and i32 %1, -512                         ; 2 uses
  %cond = icmp eq i32 %i.b, 100665600
  br i1 %cond, label %.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.e
  switch i32 %i.h, label %bb.g [
    i32 100664832, label %bb.f
    i32 100664320, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test, %switch.early.test
  switch i32 %i.b, label %switch.early.test49 [
    i32 100668160, label %.thread
    i32 100664064, label %.thread
    i32 100663808, label %.thread
  ]

switch.early.test49:                              ; preds = %bb.f
  switch i32 %i.h, label %bb.g [
    i32 100664832, label %.thread
    i32 100664320, label %.thread
  ]

.thread:                                          ; preds = %bb.b, %bb.b, %bb.b, %bb.e, %._crit_edge, %._crit_edge, %._crit_edge, %switch.early.test49, %switch.early.test49, %bb.f, %bb.f, %bb.f
  %i.i = and i32 %1, 255                          ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  %i.j = or disjoint i32 %i.i, 33554432
  %spec.select = select i1 %.not, i32 0, i32 %i.j
  br label %bb.g

bb.g:                                             ; preds = %.thread, %switch.early.test49, %switch.early.test
  %.0 = phi i32 [ 0, %switch.early.test ], [ 0, %switch.early.test49 ], [ %spec.select, %.thread ] ; 2 uses
  %i.k = icmp eq i32 %.0, 0
  %or.cond3 = and i1 %i.a, %i.k
  br i1 %or.cond3, label %is_hash_supported.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %.0, label %is_hash_supported.exit.thread.fold.split [
    i32 33554687, label %is_hash_supported.exit.thread
    i32 0, label %is_hash_supported.exit
    i32 33554435, label %is_hash_supported.exit
    i32 33554436, label %is_hash_supported.exit
    i32 33554437, label %is_hash_supported.exit
    i32 33554440, label %is_hash_supported.exit
    i32 33554441, label %is_hash_supported.exit
    i32 33554442, label %is_hash_supported.exit
    i32 33554443, label %is_hash_supported.exit
    i32 33554448, label %is_hash_supported.exit
    i32 33554449, label %is_hash_supported.exit
    i32 33554450, label %is_hash_supported.exit
    i32 33554451, label %is_hash_supported.exit
  ]

is_hash_supported.exit:                           ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %is_hash_supported.exit.thread

is_hash_supported.exit.thread.fold.split:         ; preds = %bb.h
  br label %is_hash_supported.exit.thread

is_hash_supported.exit.thread:                    ; preds = %bb.h, %is_hash_supported.exit.thread.fold.split, %is_hash_supported.exit, %bb.g, %bb.d
  %.1 = phi i32 [ -135, %bb.d ], [ -135, %bb.h ], [ -135, %bb.g ], [ 0, %is_hash_supported.exit ], [ -134, %is_hash_supported.exit.thread.fold.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -151, -133) i32 @psa_sign_hash_complete(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #6 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !27
  %i.a = load i32, ptr %0, align 4, !tbaa !62     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
  br i1 %i.b, label %psa_sign_hash_abort_internal.exit.thread.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %psa_sign_hash_abort_internal.exit.thread74

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %psa_sign_hash_abort_internal.exit.thread74, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #19 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %psa_sign_hash_abort_internal.exit.thread74, label %bb.e

psa_sign_hash_abort_internal.exit.thread.a:       ; preds = %bb.a
  %i.i = or i8 %i.d, 1
  store i8 %i.i, ptr %i.c, align 4
  br label %psa_crypto_local_output_free.exit

psa_sign_hash_abort_internal.exit.thread74:       ; preds = %bb.c, %bb.b, %bb.d
  %.02453.ph.ph = phi i32 [ -141, %bb.d ], [ -137, %bb.b ], [ -138, %bb.c ]
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = load i8, ptr %4, align 4
  %i.j = or i8 %5, 1
  store i8 %i.j, ptr %4, align 4
  store i32 0, ptr %0, align 4, !tbaa !62
  br label %psa_crypto_local_output_free.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 33, i64 %2, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %7 = load i8, ptr %6, align 4
  %i.l = or i8 %7, 1
  store i8 %i.l, ptr %6, align 4
  store i32 0, ptr %0, align 4, !tbaa !62
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %psa_crypto_local_output_free.exit, label %psa_crypto_copy_output.exit.i

psa_crypto_copy_output.exit.i:                    ; preds = %bb.e
  %cond.i = icmp eq i32 %i.a, 1
  %spec.select.i = select i1 %cond.i, i32 -134, i32 -135
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 33, i64 %2, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.g, i64 noundef %2) #20
  br label %psa_crypto_local_output_free.exit

psa_crypto_local_output_free.exit:                ; preds = %psa_sign_hash_abort_internal.exit.thread74, %psa_sign_hash_abort_internal.exit.thread.a, %psa_crypto_copy_output.exit.i, %bb.e
  %i.n = phi i32 [ -151, %bb.e ], [ %spec.select.i, %psa_crypto_copy_output.exit.i ], [ %.02453.ph.ph, %psa_sign_hash_abort_internal.exit.thread74 ], [ -137, %psa_sign_hash_abort_internal.exit.thread.a ]
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @psa_sign_hash_abort(ptr nofree noundef captures(none) initializes((12, 16)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !62     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %psa_sign_hash_abort_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %cond.i.i = icmp eq i32 %i.a, 1
  %spec.select.i.i = select i1 %cond.i.i, i32 -134, i32 -135
  store i32 0, ptr %0, align 4, !tbaa !62
  br label %psa_sign_hash_abort_internal.exit

psa_sign_hash_abort_internal.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -2
  store i8 %i.f, ptr %i.d, align 4
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 1, 0) i32 @psa_verify_hash_start(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i32, ptr %0, align 4, !tbaa !63
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
  %i.e = and i8 %i.d, 1
  %.not38 = icmp eq i8 %i.e, 0
  br i1 %.not38, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.f, align 4
  %i.g = tail call fastcc i32 @psa_sign_verify_check_alg(i32 noundef 0, i32 noundef %2) ; 2 uses
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = or disjoint i8 %i.d, 1
  store i8 %i.h, ptr %i.c, align 4
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.i = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, ptr noundef %i.a, i32 noundef 8192, i32 noundef %2) ; 2 uses
  %.not40 = icmp eq i32 %i.i, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.c, align 4
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.c, align 4
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.l = icmp eq i64 %4, 0
  br i1 %i.l, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = call noalias ptr @calloc(i64 noundef %4, i64 noundef 1) #19 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %psa_crypto_local_input_alloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %4, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.sroa.049.0.ph = phi ptr [ %i.m, %bb.i ], [ null, %bb.g ] ; 3 uses
  %i.o = icmp eq i64 %6, 0
  br i1 %i.o, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = call noalias ptr @calloc(i64 noundef %6, i64 noundef 1) #19 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %psa_crypto_local_input_alloc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull readonly align 1 dereferenceable(1) %5, i64 range(i64 1, 0) %6, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.sroa.0.1.ph = phi ptr [ %i.p, %bb.l ], [ null, %bb.j ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !61
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val.i = load i32, ptr %i.t, align 4, !tbaa !41
  %cond.i = icmp ult i32 %.val.i, 256
  br i1 %cond.i, label %bb.n, label %psa_crypto_local_input_alloc.exit

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %0, align 4, !tbaa !63
  %i.u = load i16, ptr %i.s, align 4, !tbaa !26   ; 2 uses
  %i.v = and i16 %i.u, -12544
  %i.w = icmp eq i16 %i.v, 16640
  %i.x = and i16 %i.u, 192
  %i.y = icmp ne i16 %i.x, 0
  %i.z = and i1 %i.w, %i.y
  %.1.i.i = select i1 %i.z, i32 -135, i32 -134
  br label %psa_crypto_local_input_alloc.exit

psa_crypto_local_input_alloc.exit:                ; preds = %bb.n, %bb.m, %bb.k, %bb.h
  %.sroa.750.057 = phi i64 [ %4, %bb.k ], [ 0, %bb.h ], [ %4, %bb.m ], [ %4, %bb.n ]
  %.sroa.049.055 = phi ptr [ %.sroa.049.0.ph, %bb.k ], [ null, %bb.h ], [ %.sroa.049.0.ph, %bb.m ], [ %.sroa.049.0.ph, %bb.n ]
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ null, %bb.h ], [ %.sroa.0.1.ph, %bb.m ], [ %.sroa.0.1.ph, %bb.n ]
  %.sroa.7.0 = phi i64 [ 0, %bb.k ], [ 0, %bb.h ], [ %6, %bb.m ], [ %6, %bb.n ]
  %.0 = phi i32 [ -141, %bb.k ], [ -141, %bb.h ], [ -135, %bb.m ], [ %.1.i.i, %bb.n ]
  %i.aa = load i8, ptr %i.c, align 4
  %i.ab = or i8 %i.aa, 1
  store i8 %i.ab, ptr %i.c, align 4
  %i.ac = load i32, ptr %0, align 4, !tbaa !63
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %psa_verify_hash_abort_internal.exit, label %bb.o

bb.o:                                             ; preds = %psa_crypto_local_input_alloc.exit
  store i32 0, ptr %0, align 4, !tbaa !63
  br label %psa_verify_hash_abort_internal.exit

psa_verify_hash_abort_internal.exit:              ; preds = %psa_crypto_local_input_alloc.exit, %bb.o
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.af = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.ae) #20
  %.not43 = icmp eq i32 %i.af, 0
  br i1 %.not43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %psa_verify_hash_abort_internal.exit
  %i.ag = load i8, ptr %i.c, align 4
  %i.ah = or i8 %i.ag, 1
  store i8 %i.ah, ptr %i.c, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %psa_verify_hash_abort_internal.exit
  call void @mbedtls_zeroize_and_free(ptr noundef %.sroa.049.055, i64 noundef %.sroa.750.057) #20
  call void @mbedtls_zeroize_and_free(ptr noundef %.sroa.0.0, i64 noundef %.sroa.7.0) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.b, %bb.q, %bb.f, %bb.d
  %.033 = phi i32 [ %.0, %bb.q ], [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ -137, %bb.b ], [ -137, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.033
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, -133) i32 @psa_verify_hash_complete(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4               ; 3 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %cond.i = icmp eq i32 %i.a, 1
  %spec.select.i = select i1 %cond.i, i32 -134, i32 -135
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = or i8 %i.d, 1
  store i8 %i.g, ptr %i.c, align 4
  br label %psa_verify_hash_abort_internal.exit

bb.e:                                             ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ -137, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.h = or i8 %i.d, 1
  store i8 %i.h, ptr %i.c, align 4
  store i32 0, ptr %0, align 4, !tbaa !63
  br label %psa_verify_hash_abort_internal.exit

psa_verify_hash_abort_internal.exit:              ; preds = %bb.d, %bb.e
  %.012 = phi i32 [ -137, %bb.d ], [ %.0.ph, %bb.e ]
  ret i32 %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @psa_verify_hash_abort(ptr nofree noundef captures(none) initializes((12, 16)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %psa_verify_hash_abort_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
