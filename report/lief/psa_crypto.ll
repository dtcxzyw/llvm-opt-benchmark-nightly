Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_crypto?download=true
inline.NumInlined: 478
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@psa_key_derivation_input_internal:bb.a
  br label %psa_key_derivation_check_input_type.exit

psa_key_derivation_check_input_type.exit:         ; preds = %bb.bi, %psa_tls12_prf_set_key.exit.i.i, %psa_hkdf_input.exit, %bb.bo, %bb.an
  %.0 = phi i32 [ %i.fg, %bb.bo ], [ %i.ew, %bb.bi ], [ %.0.i45, %psa_hkdf_input.exit ], [ %i.da, %bb.an ], [ %.0.i.i.i, %psa_tls12_prf_set_key.exit.i.i ] ; 2 uses
  %.not43 = icmp eq i32 %.0, 0
  br i1 %.not43, label %psa_key_derivation_check_input_type.exit.thread61, label %psa_key_derivation_check_input_type.exit.thread56

psa_key_derivation_check_input_type.exit.thread56: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f, %bb.bl, %bb.bk, %bb.bd, %bb.as, %bb.at, %bb.bf, %bb.a, %psa_key_derivation_check_input_type.exit
  %.059 = phi i32 [ %.0, %psa_key_derivation_check_input_type.exit ], [ -135, %bb.bl ], [ -135, %bb.bk ], [ -137, %bb.bd ], [ -135, %bb.as ], [ -141, %bb.at ], [ -135, %bb.c ], [ -135, %bb.d ], [ -137, %bb.a ], [ -141, %bb.bf ], [ -135, %bb.e ], [ -135, %bb.f ], [ -135, %bb.b ]
  %i.fh = call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  br label %psa_key_derivation_check_input_type.exit.thread61

psa_key_derivation_check_input_type.exit.thread61: ; preds = %bb.bh, %bb.bm, %psa_key_derivation_check_input_type.exit, %psa_key_derivation_check_input_type.exit.thread56, %bb.bn
  %.039 = phi i32 [ -137, %bb.bn ], [ %.059, %psa_key_derivation_check_input_type.exit.thread56 ], [ 0, %psa_key_derivation_check_input_type.exit ], [ 0, %bb.bm ], [ 0, %bb.bh ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -137, 1) i32 @psa_key_derivation_input_integer(ptr noundef %0, i16 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !76  ; 3 uses
  %i.a = and i32 %.val.i, 2130706432
  %i.b = icmp eq i32 %i.a, 150994944
  %i.c = and i32 %.val.i, -2013200385
  %.0.i.i = select i1 %i.b, i32 %i.c, i32 %.val.i ; 2 uses
  %i.d = icmp eq i32 %.0.i.i, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %.0.i.i, -142606592
  %or.cond.i = icmp ult i32 %i.e, 257
  br i1 %or.cond.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i.i = icmp eq i16 %1, 517
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 8, !tbaa !94
  %.not8.i.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ugt i64 %2, 4294967295
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %psa_pbkdf2_set_input_cost.exit.i

psa_pbkdf2_set_input_cost.exit.i:                 ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.j, align 8, !tbaa !97
  store i32 1, ptr %i.f, align 8, !tbaa !94
  br label %psa_key_derivation_input_integer_internal.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.ph.i = phi i32 [ -135, %bb.f ], [ -134, %bb.e ], [ -137, %bb.d ], [ -135, %bb.c ], [ -135, %bb.b ], [ -137, %bb.a ]
  %i.k = tail call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  br label %psa_key_derivation_input_integer_internal.exit

psa_key_derivation_input_integer_internal.exit:   ; preds = %psa_pbkdf2_set_input_cost.exit.i, %bb.g
  %.015.i = phi i32 [ %.0.ph.i, %bb.g ], [ 0, %psa_pbkdf2_set_input_cost.exit.i ]
  ret i32 %.015.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_key_derivation_input_key(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i32, ptr %0, align 8, !tbaa !76
  %i.c = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 16384, i32 noundef %i.b) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = icmp ult i32 %i.f, 256
  br i1 %i.g, label %psa_get_and_lock_transparent_key_slot_with_policy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.d) #20 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0.i.ph = phi i32 [ -134, %bb.c ], [ %i.c, %bb.a ]
  %i.i = call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  br label %bb.g

psa_get_and_lock_transparent_key_slot_with_policy.exit: ; preds = %bb.b
  %i.j = add i16 %1, -257
  %or.cond = icmp ult i16 %i.j, 2
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit, %bb.e
  %i.n = load i16, ptr %i.d, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25
  %i.s = call fastcc i32 @psa_key_derivation_input_internal(ptr noundef nonnull %0, i16 noundef zeroext %1, i16 noundef zeroext %i.n, ptr noundef %i.p, i64 noundef %i.r) ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.u = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.t) #20
  %i.v = icmp eq i32 %i.s, 0
  %i.w = select i1 %i.v, i32 %i.u, i32 %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ %.0.i.ph, %bb.d ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_key_agreement_raw_builtin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8) local_unnamed_addr #6 {
bb.a:
  switch i32 %3, label %bb.d [
    i32 151126016, label %bb.b
    i32 151060480, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @mbedtls_psa_key_agreement_ecdh(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 151126016, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @mbedtls_psa_ffdh_key_agreement(ptr noundef %0, ptr noundef %4, i64 noundef %5, ptr noundef %1, i64 noundef %2, ptr noundef %6, i64 noundef %7, ptr noundef %8) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ -134, %bb.a ]
  ret i32 %.0
}

declare i32 @mbedtls_psa_key_agreement_ecdh(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_ffdh_key_agreement(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i32 @psa_key_derivation_key_agreement(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = load i32, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.e = and i32 %i.d, 2130706432
  %i.f = icmp eq i32 %i.e, 150994944
  br i1 %i.f, label %bb.b, label %psa_get_and_lock_transparent_key_slot_with_policy.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %2, ptr noundef nonnull %i.c, i32 noundef 16384, i32 noundef %i.d) ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %psa_get_and_lock_transparent_key_slot_with_policy.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !31   ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = icmp ult i32 %i.j, 256
  br i1 %i.k, label %psa_get_and_lock_transparent_key_slot_with_policy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.h) #20 ; 0 uses
  br label %psa_get_and_lock_transparent_key_slot_with_policy.exit.thread

psa_get_and_lock_transparent_key_slot_with_policy.exit: ; preds = %bb.c
  %i.m = icmp eq i64 %4, 0
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit
  %i.n = call noalias ptr @calloc(i64 noundef %4, i64 noundef 1) #19 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %psa_crypto_local_input_alloc.exit.thread39, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %4, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit, %bb.f
  %.sroa.0.0.ph = phi ptr [ %i.n, %bb.f ], [ null, %psa_get_and_lock_transparent_key_slot_with_policy.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !27
  %i.p = load i32, ptr %0, align 8, !tbaa !76
  %i.q = and i32 %i.p, -151060480
  %i.r = or disjoint i32 %i.q, 150994944          ; 2 uses
  %5 = and i32 %i.r, -16777216
  %or.cond.i.i = icmp eq i32 %5, 150994944
  br i1 %or.cond.i.i, label %bb.h, label %psa_crypto_local_input_alloc.exit.thread53

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  switch i32 %i.r, label %psa_crypto_local_input_alloc.exit.thread53 [
    i32 151126016, label %bb.i
    i32 151060480, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 @mbedtls_psa_key_agreement_ecdh(ptr noundef nonnull %i.h, ptr noundef %i.t, i64 noundef %i.v, i32 noundef 151126016, ptr noundef %.sroa.0.0.ph, i64 noundef %4, ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.b) #20
  br label %psa_key_agreement_raw_internal.exit.i

bb.j:                                             ; preds = %bb.h
  %i.x = call i32 @mbedtls_psa_ffdh_key_agreement(ptr noundef nonnull %i.h, ptr noundef %.sroa.0.0.ph, i64 noundef %4, ptr noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.b) #20
  br label %psa_key_agreement_raw_internal.exit.i

psa_key_agreement_raw_internal.exit.i:            ; preds = %bb.j, %bb.i
  %.0.i.i = phi i32 [ %i.x, %bb.j ], [ %i.w, %bb.i ] ; 2 uses
  %.not.i26 = icmp eq i32 %.0.i.i, 0
  %.pre11.i = load i64, ptr %i.b, align 8, !tbaa !27 ; 2 uses
  br i1 %.not.i26, label %psa_crypto_local_input_alloc.exit, label %psa_crypto_local_input_alloc.exit.thread53

psa_crypto_local_input_alloc.exit.thread53:       ; preds = %psa_key_agreement_raw_internal.exit.i, %bb.g, %bb.h
  %.ph = phi i64 [ 0, %bb.h ], [ %.pre11.i, %psa_key_agreement_raw_internal.exit.i ], [ 0, %bb.g ]
  %.0.i25.ph = phi i32 [ -134, %bb.h ], [ %.0.i.i, %psa_key_agreement_raw_internal.exit.i ], [ -134, %bb.g ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef %.ph) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %psa_crypto_local_input_alloc.exit.thread39

psa_crypto_local_input_alloc.exit:                ; preds = %psa_key_agreement_raw_internal.exit.i
  %i.y = call fastcc i32 @psa_key_derivation_input_internal(ptr noundef nonnull %0, i16 noundef zeroext %1, i16 noundef zeroext 4608, ptr noundef nonnull %i.a, i64 noundef %.pre11.i) ; 2 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !27
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef %.pre.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not23 = icmp eq i32 %i.y, 0
  br i1 %.not23, label %bb.k, label %psa_crypto_local_input_alloc.exit.thread39

psa_crypto_local_input_alloc.exit.thread39:       ; preds = %bb.e, %psa_crypto_local_input_alloc.exit.thread53, %psa_crypto_local_input_alloc.exit
  %.049 = phi i32 [ %.0.i25.ph, %psa_crypto_local_input_alloc.exit.thread53 ], [ %i.y, %psa_crypto_local_input_alloc.exit ], [ -141, %bb.e ]
  %.sroa.0.03547 = phi ptr [ %.sroa.0.0.ph, %psa_crypto_local_input_alloc.exit.thread53 ], [ %.sroa.0.0.ph, %psa_crypto_local_input_alloc.exit ], [ null, %bb.e ]
  %.sroa.8.03745 = phi i64 [ %4, %psa_crypto_local_input_alloc.exit.thread53 ], [ %4, %psa_crypto_local_input_alloc.exit ], [ 0, %bb.e ]
  %i.z = call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %psa_crypto_local_input_alloc.exit
  %i.aa = icmp eq i16 %1, 257
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %psa_crypto_local_input_alloc.exit.thread39
  %.not2350 = phi i1 [ true, %bb.k ], [ true, %bb.l ], [ false, %psa_crypto_local_input_alloc.exit.thread39 ]
  %.048 = phi i32 [ 0, %bb.k ], [ 0, %bb.l ], [ %.049, %psa_crypto_local_input_alloc.exit.thread39 ]
  %.sroa.0.03546 = phi ptr [ %.sroa.0.0.ph, %bb.k ], [ %.sroa.0.0.ph, %bb.l ], [ %.sroa.0.03547, %psa_crypto_local_input_alloc.exit.thread39 ]
  %.sroa.8.03744 = phi i64 [ %4, %bb.k ], [ %4, %bb.l ], [ %.sroa.8.03745, %psa_crypto_local_input_alloc.exit.thread39 ]
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.af = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.ae) #20
  call void @mbedtls_zeroize_and_free(ptr noundef %.sroa.0.03546, i64 noundef %.sroa.8.03744) #20
  %spec.select = select i1 %.not2350, i32 %i.af, i32 %.048
  br label %psa_get_and_lock_transparent_key_slot_with_policy.exit.thread

psa_get_and_lock_transparent_key_slot_with_policy.exit.thread: ; preds = %bb.m, %bb.d, %bb.b, %bb.a
  %.019 = phi i32 [ -135, %bb.a ], [ %i.g, %bb.b ], [ -134, %bb.d ], [ %spec.select, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_raw_key_agreement(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address) %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = icmp eq i64 %5, 0                        ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #19 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.ph = phi ptr [ null, %bb.a ], [ %4, %bb.b ] ; 4 uses
  %.sroa.6.0.ph = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ] ; 7 uses
  %i.e = and i32 %0, 2130706432
  %i.f = icmp eq i32 %i.e, 150994944
  br i1 %i.f, label %bb.d, label %psa_crypto_local_output_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.g = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 16384, i32 noundef %0) ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %psa_crypto_local_output_alloc.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = icmp ult i32 %i.j, 256
  br i1 %i.k, label %psa_get_and_lock_transparent_key_slot_with_policy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.h) #20 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br label %psa_crypto_local_output_alloc.exit

psa_get_and_lock_transparent_key_slot_with_policy.exit: ; preds = %bb.e
  %i.m = load i16, ptr %i.h, align 8, !tbaa !37
  %i.n = and i16 %i.m, -256
  switch i16 %i.n, label %.critedge [
    i16 28928, label %bb.g
    i16 29184, label %bb.g
  ]

bb.g:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit, %psa_get_and_lock_transparent_key_slot_with_policy.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !49
  %i.q = zext i16 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 7
  %i.s = lshr i64 %i.r, 3
  %i.t = icmp ult i64 %5, %i.s
  br i1 %i.t, label %psa_crypto_local_output_alloc.exit, label %.critedge

.critedge:                                        ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit, %bb.g
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.v = call noalias ptr @calloc(i64 noundef %3, i64 noundef 1) #19 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %psa_crypto_local_output_alloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 range(i64 1, 0) %3, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.sroa.047.1.ph = phi ptr [ %i.v, %bb.i ], [ null, %.critedge ] ; 2 uses
  %i.x = call fastcc i32 @psa_key_agreement_raw_internal(i32 noundef %0, ptr noundef nonnull %i.h, ptr noundef %.sroa.047.1.ph, i64 noundef %3, ptr noundef %.sroa.6.0.ph, i64 noundef %5, ptr noundef %6)
  br label %psa_crypto_local_output_alloc.exit

psa_crypto_local_output_alloc.exit:               ; preds = %bb.f, %bb.d, %bb.h, %bb.g, %bb.c, %bb.j
  %.sroa.047.0 = phi ptr [ %.sroa.047.1.ph, %bb.j ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ] ; 4 uses
  %.sroa.8.0 = phi i64 [ %3, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ] ; 4 uses
  %.031 = phi i32 [ %i.x, %bb.j ], [ -141, %bb.h ], [ -138, %bb.g ], [ -135, %bb.c ], [ %i.g, %bb.d ], [ -134, %bb.f ] ; 5 uses
  %i.y = icmp ne ptr %.sroa.6.0.ph, null
  %i.z = icmp ne i32 %.031, 0
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %psa_crypto_local_output_alloc.exit
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  %i.ab = icmp ne i8 %i.aa, 2
  %i.ac = load i8, ptr @global_data, align 8
  %i.ad = icmp ne i8 %i.ac, 7
  %.not24.i = select i1 %i.ab, i1 true, i1 %i.ad
  %brmerge = or i1 %i.b, %.not24.i
  br i1 %brmerge, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.01227.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %5, %bb.k ] ; 2 uses
  %.01326.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.sroa.6.0.ph, %bb.k ] ; 2 uses
  %i.ae = call i64 @llvm.umin.i64(i64 %.01227.i, i64 1024) ; 3 uses
  %i.af = call i32 @mbedtls_ctr_drbg_random(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 216), ptr noundef nonnull %.01326.i, i64 noundef %i.ae) #20
  %.not18.not.i = icmp ne i32 %i.af, 0
  %i.ag = sub nuw i64 %.01227.i, %i.ae            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01326.i, i64 %i.ae
  %.not.i43 = icmp eq i64 %i.ag, 0
  %or.cond108 = select i1 %.not18.not.i, i1 true, i1 %.not.i43
  br i1 %or.cond108, label %.sink.split, label %.lr.ph.i

bb.l:                                             ; preds = %psa_crypto_local_output_alloc.exit
  %i.ai = icmp eq ptr %.sroa.6.0.ph, null
  br i1 %i.ai, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %.lr.ph.i, %bb.l, %bb.b, %bb.k
  %.sink = phi i64 [ %5, %bb.k ], [ 0, %bb.l ], [ 0, %bb.b ], [ %5, %.lr.ph.i ]
  %.sroa.11.05877101.ph = phi i64 [ %5, %bb.k ], [ %5, %bb.l ], [ 0, %bb.b ], [ %5, %.lr.ph.i ]
  %.sroa.6.0577899.ph = phi ptr [ %.sroa.6.0.ph, %bb.k ], [ null, %bb.l ], [ null, %bb.b ], [ %.sroa.6.0.ph, %.lr.ph.i ]
  %.sroa.0.0547997.ph = phi ptr [ %.sroa.0.0.ph, %bb.k ], [ %.sroa.0.0.ph, %bb.l ], [ null, %bb.b ], [ %.sroa.0.0.ph, %.lr.ph.i ]
  %.sroa.047.08095.ph = phi ptr [ %.sroa.047.0, %bb.k ], [ %.sroa.047.0, %bb.l ], [ null, %bb.b ], [ %.sroa.047.0, %.lr.ph.i ]
  %.sroa.8.08193.ph = phi i64 [ %.sroa.8.0, %bb.k ], [ %.sroa.8.0, %bb.l ], [ 0, %bb.b ], [ %.sroa.8.0, %.lr.ph.i ]
  %.0318291.ph = phi i32 [ %.031, %bb.k ], [ %.031, %bb.l ], [ -141, %bb.b ], [ %.031, %.lr.ph.i ]
  store i64 %.sink, ptr %6, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.sroa.11.05877101 = phi i64 [ %5, %bb.l ], [ %.sroa.11.05877101.ph, %.sink.split ] ; 3 uses
  %.sroa.6.0577899 = phi ptr [ %.sroa.6.0.ph, %bb.l ], [ %.sroa.6.0577899.ph, %.sink.split ] ; 3 uses
  %.sroa.0.0547997 = phi ptr [ %.sroa.0.0.ph, %bb.l ], [ %.sroa.0.0547997.ph, %.sink.split ] ; 2 uses
  %.sroa.047.08095 = phi ptr [ %.sroa.047.0, %bb.l ], [ %.sroa.047.08095.ph, %.sink.split ]
end_hunk_0
