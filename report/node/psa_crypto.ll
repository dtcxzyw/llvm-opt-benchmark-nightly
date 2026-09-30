Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/psa_crypto?download=true
inline.NumInlined: 450
inline.NumDeleted: 131
begin_hunk_0_@psa_crypto_init:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68
  call void @mbedtls_platform_zeroize(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 8), i64 noundef 1192) #20
  %i.ak = load i8, ptr @global_data, align 8, !tbaa !17 ; 2 uses
  %i.al = and i8 %i.ak, 1
  %.not3.i = icmp eq i8 %i.al, 0
  br i1 %.not3.i, label %mbedtls_psa_crypto_free.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = and i8 %i.ak, -2
  br label %mbedtls_psa_crypto_free.exit.sink.split

mbedtls_psa_crypto_free.exit.sink.split:          ; preds = %bb.q, %bb.j
  %.sink = phi i8 [ %i.aa, %bb.j ], [ %i.am, %bb.q ]
  %.06.ph = phi i32 [ 0, %bb.j ], [ %.0, %bb.q ]
  store i8 %.sink, ptr @global_data, align 8, !tbaa !17
  br label %mbedtls_psa_crypto_free.exit

mbedtls_psa_crypto_free.exit:                     ; preds = %mbedtls_psa_crypto_free.exit.sink.split, %bb.i, %bb.p, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ %.0, %bb.p ], [ %.06.ph, %mbedtls_psa_crypto_free.exit.sink.split ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_password_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_password(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %i.b, i1 false)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !98
  store i64 %i.f, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_user_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_user(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.f, i64 %i.b, i1 false)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.g, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_peer_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_peer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.f, i64 %i.b, i1 false)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !102
  store i64 %i.g, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_cipher_suite(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -137, 1) i32 @psa_pake_setup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !106   ; 2 uses
  switch i8 %i.b, label %psa_driver_wrapper_pake_abort.exit.i [
    i8 0, label %bb.b
    i8 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !135
  %i.d = and i32 %i.c, 2130706432
  %.not23 = icmp eq i32 %i.d, 167772160
  br i1 %.not23, label %bb.c, label %psa_pake_abort.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !136
  %i.g = and i32 %i.f, 2130706432
  %.not24 = icmp eq i32 %i.g, 33554432
  br i1 %.not24, label %bb.d, label %psa_pake_abort.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %i.h, i8 0, i64 880, i1 false)
  %i.i = load i32, ptr %1, align 4, !tbaa !135    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.l = load i16, ptr %i.k, align 2, !tbaa !137
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = load i8, ptr %i.n, align 4, !tbaa !138
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %6 = load i8, ptr %5, align 1, !tbaa !139
  %i.o = zext i8 %6 to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %7 = or disjoint i32 %4, %i.m
  %i.q = or disjoint i32 %7, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !104
  %i.t = icmp eq i32 %i.i, 167772416
  br i1 %i.t, label %bb.e, label %psa_pake_abort.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, i8 0, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.v, align 2, !tbaa !110
  store i8 1, ptr %i.a, align 4, !tbaa !106
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.w = load i32, ptr %0, align 8, !tbaa !111
  %cond.i.i = icmp eq i32 %i.w, 1
  br i1 %cond.i.i, label %bb.g, label %psa_pake_abort.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.x) #20 ; 0 uses
  %.pr.i = load i8, ptr %i.a, align 4, !tbaa !106
  br label %psa_driver_wrapper_pake_abort.exit.i

psa_driver_wrapper_pake_abort.exit.i:             ; preds = %bb.a, %bb.g
  %i.z = phi i8 [ %.pr.i, %bb.g ], [ %i.b, %bb.a ]
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %bb.h, label %psa_pake_abort.exit

bb.h:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ac, i64 noundef %i.ae) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %.not14.i = icmp eq ptr %i.ag, null
  br i1 %.not14.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ag) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %.not15.i = icmp eq ptr %i.ai, null
  br i1 %.not15.i, label %psa_pake_abort.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ai) #20
  br label %psa_pake_abort.exit

psa_pake_abort.exit:                              ; preds = %bb.d, %bb.b, %bb.c, %bb.f, %psa_driver_wrapper_pake_abort.exit.i, %bb.l, %bb.m
  %.02126 = phi i32 [ -137, %bb.f ], [ -137, %psa_driver_wrapper_pake_abort.exit.i ], [ -137, %bb.l ], [ -137, %bb.m ], [ -134, %bb.d ], [ -135, %bb.c ], [ -135, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %psa_pake_abort.exit, %bb.e
  %.0 = phi i32 [ %.02126, %psa_pake_abort.exit ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @psa_pake_abort(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !106   ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %psa_driver_wrapper_pake_abort.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !111
  %cond.i = icmp eq i32 %i.d, 1
  br i1 %cond.i, label %bb.c, label %psa_driver_wrapper_pake_abort.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.e) #20
  %.pr = load i8, ptr %i.a, align 4, !tbaa !106
  br label %psa_driver_wrapper_pake_abort.exit

psa_driver_wrapper_pake_abort.exit:               ; preds = %bb.c, %bb.a
  %i.g = phi i8 [ %.pr, %bb.c ], [ %i.b, %bb.a ]
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ]     ; 3 uses
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.d, label %psa_driver_wrapper_pake_abort.exit.thread

bb.d:                                             ; preds = %psa_driver_wrapper_pake_abort.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.j, i64 noundef %i.l) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.n) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %.not15 = icmp eq ptr %i.p, null
  br i1 %.not15, label %psa_driver_wrapper_pake_abort.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.p) #20
  br label %psa_driver_wrapper_pake_abort.exit.thread

psa_driver_wrapper_pake_abort.exit.thread:        ; preds = %bb.b, %bb.h, %bb.i, %psa_driver_wrapper_pake_abort.exit
  %.017 = phi i32 [ %.0, %psa_driver_wrapper_pake_abort.exit ], [ %.0, %bb.h ], [ %.0, %bb.i ], [ -135, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define i32 @psa_pake_set_password_key(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !106   ; 2 uses
  %.not = icmp eq i8 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107
  %i.f = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, ptr noundef %i.a, i32 noundef 16384, i32 noundef %i.e) ; 2 uses
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %.val = load i16, ptr %i.g, align 4, !tbaa !26
  switch i16 %.val, label %thread-pre-split [
    i16 4613, label %bb.d
    i16 4611, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.i) #19 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %thread-pre-split, label %bb.o

thread-pre-split:                                 ; preds = %bb.d, %bb.c, %bb.b
  %.0.ph.ph = phi i32 [ %i.f, %bb.b ], [ -135, %bb.c ], [ -141, %bb.d ]
  %.pr = load i8, ptr %i.b, align 4, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %i.m = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ] ; 2 uses
  %.0.ph = phi i32 [ %.0.ph.ph, %thread-pre-split ], [ -137, %bb.a ]
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.f, label %psa_driver_wrapper_pake_abort.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %0, align 8, !tbaa !111
  %cond.i.i = icmp eq i32 %i.o, 1
  br i1 %cond.i.i, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.p) #20 ; 0 uses
  %.pr.i = load i8, ptr %i.b, align 4, !tbaa !106
  br label %psa_driver_wrapper_pake_abort.exit.i

psa_driver_wrapper_pake_abort.exit.i:             ; preds = %bb.g, %bb.e
  %i.r = phi i8 [ %.pr.i, %bb.g ], [ %i.m, %bb.e ]
  %i.s = icmp eq i8 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.n

bb.h:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@psa_pake_set_role:bb.a
  %.05 = phi i32 [ %.07, %psa_pake_abort.exit ], [ 0, %bb.c ]
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define i32 @psa_pake_output(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3, ptr noundef initializes((0, 8)) %4) local_unnamed_addr #6 {
bb.a:
  store i64 0, ptr %4, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !106   ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @psa_pake_complete_inputs(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %thread-pre-split, label %psa_crypto_local_output_free.exit.thread66

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i8, ptr %i.a, align 4, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.e = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ]
  %.not33 = icmp eq i8 %i.e, 2
  br i1 %.not33, label %bb.d, label %psa_crypto_local_output_free.exit.thread66

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %psa_crypto_local_output_free.exit.thread66, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !107
  %cond = icmp eq i32 %i.h, 167772416
  br i1 %cond, label %bb.f, label %psa_crypto_local_output_free.exit.thread66

bb.f:                                             ; preds = %bb.e
  %i.i = add i8 %1, -4
  %or.cond5.i = icmp ult i8 %i.i, -3
  br i1 %or.cond5.i, label %psa_crypto_local_output_free.exit.thread66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !112  ; 2 uses
  %switch.i = icmp ult i32 %i.k, 2
  br i1 %switch.i, label %bb.h, label %psa_crypto_local_output_free.exit.thread66

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.m = load i8, ptr %i.l, align 2, !tbaa !110
  %.not23.i = icmp eq i8 %1, %i.m
  br i1 %.not23.i, label %bb.i, label %psa_crypto_local_output_free.exit.thread66

bb.i:                                             ; preds = %bb.h
  %i.n = icmp eq i8 %1, 1
  br i1 %i.n, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i8, ptr %i.o, align 4, !tbaa !113
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !tbaa !114
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.u, align 4, !tbaa !115
  br label %psa_jpake_prologue.exit

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !115
  %.not24.i = icmp eq i32 %i.w, 1
  br i1 %.not24.i, label %psa_jpake_prologue.exit, label %psa_crypto_local_output_free.exit.thread66

psa_jpake_prologue.exit:                          ; preds = %bb.m, %bb.l
  %trunc = trunc nuw i32 %i.k to i1
  br i1 %trunc, label %convert_jpake_computation_stage_to_driver_step.exit, label %bb.n

bb.n:                                             ; preds = %psa_jpake_prologue.exit
  %.0.in.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.0.in.in.i = load i8, ptr %.0.in.in.in.i, align 1, !tbaa !29
  %.0.in.i = icmp eq i8 %.0.in.in.i, 0
  %i.x = select i1 %.0.in.i, i32 0, i32 3
  br label %convert_jpake_computation_stage_to_driver_step.exit

convert_jpake_computation_stage_to_driver_step.exit: ; preds = %psa_jpake_prologue.exit, %bb.n
  %.09.i = phi i32 [ %i.x, %bb.n ], [ 6, %psa_jpake_prologue.exit ]
  %i.y = zext nneg i8 %1 to i32
  %i.z = add nuw nsw i32 %.09.i, %i.y
  %i.aa = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 1) #19 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %psa_crypto_local_output_free.exit.thread66, label %bb.o

bb.o:                                             ; preds = %convert_jpake_computation_stage_to_driver_step.exit
  %i.ac = load i32, ptr %0, align 8, !tbaa !111
  %cond.i = icmp eq i32 %i.ac, 1
  br i1 %cond.i, label %psa_driver_wrapper_pake_output.exit, label %psa_crypto_local_output_alloc.exit

psa_driver_wrapper_pake_output.exit:              ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = tail call i32 @mbedtls_psa_pake_output(ptr noundef nonnull %i.ad, i32 noundef range(i32 0, 265) %i.z, ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %3, ptr noundef nonnull %4) #20 ; 2 uses
  %.not36 = icmp eq i32 %i.ae, 0
  br i1 %.not36, label %bb.p, label %psa_crypto_local_output_alloc.exit

bb.p:                                             ; preds = %psa_driver_wrapper_pake_output.exit
  %i.af = load i32, ptr %i.g, align 4, !tbaa !107
  %cond1 = icmp eq i32 %i.af, 167772416
  br i1 %cond1, label %bb.q, label %psa_crypto_local_output_alloc.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @psa_jpake_epilogue(ptr noundef nonnull %0, i32 noundef 1)
  br label %psa_crypto_local_output_alloc.exit

psa_crypto_local_output_alloc.exit:               ; preds = %bb.o, %psa_driver_wrapper_pake_output.exit, %bb.q, %bb.p
  %.0 = phi i32 [ -134, %bb.p ], [ %i.ae, %psa_driver_wrapper_pake_output.exit ], [ 0, %bb.q ], [ -135, %bb.o ] ; 2 uses
  %i.ag = icmp eq ptr %2, null
  br i1 %i.ag, label %psa_crypto_local_output_free.exit.thread66, label %psa_crypto_local_output_free.exit

psa_crypto_local_output_free.exit:                ; preds = %psa_crypto_local_output_alloc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull readonly align 1 %i.aa, i64 %3, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.aa, i64 noundef %3) #20
  %.not38 = icmp eq i32 %.0, 0
  br i1 %.not38, label %bb.z, label %psa_crypto_local_output_free.exit.thread66

psa_crypto_local_output_free.exit.thread66:       ; preds = %bb.m, %bb.g, %bb.h, %bb.f, %convert_jpake_computation_stage_to_driver_step.exit, %bb.e, %bb.c, %bb.d, %bb.b, %psa_crypto_local_output_alloc.exit, %psa_crypto_local_output_free.exit
  %i.ah = phi i32 [ %.0, %psa_crypto_local_output_free.exit ], [ -141, %convert_jpake_computation_stage_to_driver_step.exit ], [ -134, %bb.e ], [ -151, %psa_crypto_local_output_alloc.exit ], [ -137, %bb.c ], [ -135, %bb.d ], [ %i.d, %bb.b ], [ -137, %bb.m ], [ -137, %bb.g ], [ -137, %bb.h ], [ -135, %bb.f ]
  %i.ai = load i8, ptr %i.a, align 4, !tbaa !106  ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 2
  br i1 %i.aj, label %bb.r, label %psa_driver_wrapper_pake_abort.exit.i

bb.r:                                             ; preds = %psa_crypto_local_output_free.exit.thread66
  %i.ak = load i32, ptr %0, align 8, !tbaa !111
  %cond.i.i = icmp eq i32 %i.ak, 1
  br i1 %cond.i.i, label %bb.s, label %psa_pake_abort.exit

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.al) #20 ; 0 uses
  %.pr.i = load i8, ptr %i.a, align 4, !tbaa !106
  br label %psa_driver_wrapper_pake_abort.exit.i

psa_driver_wrapper_pake_abort.exit.i:             ; preds = %bb.s, %psa_crypto_local_output_free.exit.thread66
  %i.an = phi i8 [ %.pr.i, %bb.s ], [ %i.ai, %psa_crypto_local_output_free.exit.thread66 ]
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %bb.t, label %psa_pake_abort.exit

bb.t:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.aq, i64 noundef %i.as) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29 ; 2 uses
  %.not14.i = icmp eq ptr %i.au, null
  br i1 %.not14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.au) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  %.not15.i = icmp eq ptr %i.aw, null
  br i1 %.not15.i, label %psa_pake_abort.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.aw) #20
  br label %psa_pake_abort.exit

psa_pake_abort.exit:                              ; preds = %bb.r, %psa_driver_wrapper_pake_abort.exit.i, %bb.x, %bb.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %psa_pake_abort.exit, %psa_crypto_local_output_free.exit
  %i.ax = phi i32 [ %i.ah, %psa_pake_abort.exit ], [ 0, %psa_crypto_local_output_free.exit ]
  ret i32 %i.ax
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_pake_complete_inputs(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.psa_crypto_driver_pake_inputs_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !tbaa.struct !141
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !98
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !107
  %i.g = icmp eq i32 %i.f, 167772416
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, 0
  %or.cond = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 880) #20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val.i = load i32, ptr %i.n, align 4, !tbaa !40
  %cond.i = icmp ult i32 %.val.i, 256
  br i1 %cond.i, label %bb.e, label %psa_driver_wrapper_pake_setup.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @mbedtls_psa_pake_setup(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #20 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %psa_driver_wrapper_pake_setup.exit

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %0, align 8, !tbaa !111
  br label %psa_driver_wrapper_pake_setup.exit

psa_driver_wrapper_pake_setup.exit:               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.o, %bb.e ], [ 0, %bb.f ], [ -135, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !99
  %i.r = load i64, ptr %i.b, align 8, !tbaa !98
  call void @mbedtls_zeroize_and_free(ptr noundef %i.q, i64 noundef %i.r) #20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101
  call void @free(ptr noundef %i.t) #20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !103
  call void @free(ptr noundef %i.v) #20
  %i.w = icmp eq i32 %.0.i, 0
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %psa_driver_wrapper_pake_setup.exit
  %i.x = load i32, ptr %i.e, align 4, !tbaa !107
  %i.y = icmp eq i32 %i.x, 167772416
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.z, align 4, !tbaa !106
  br label %bb.i

bb.i:                                             ; preds = %psa_driver_wrapper_pake_setup.exit, %bb.h, %bb.g, %bb.c, %bb.a
  %.010 = phi i32 [ -137, %bb.c ], [ -137, %bb.a ], [ 0, %bb.h ], [ %.0.i, %psa_driver_wrapper_pake_setup.exit ], [ -134, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @psa_jpake_epilogue(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !110   ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !113
  %i.g = add i8 %i.f, 1                           ; 2 uses
  store i8 %i.g, ptr %i.e, align 4, !tbaa !113
  %i.h = zext i8 %i.g to i32
  %i.i = load i32, ptr %i.a, align 4, !tbaa !112  ; 4 uses
  %i.j = icmp eq i32 %i.i, 2
  %i.k = icmp eq i32 %i.i, 0
  %i.l = select i1 %i.k, i32 2, i32 1
  %i.m = select i1 %i.j, i32 0, i32 %i.l          ; 3 uses
  %i.n = icmp eq i32 %i.m, %i.h
  br i1 %i.n, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !114
  %i.q = add i8 %i.p, 1                           ; 2 uses
  store i8 %i.q, ptr %i.o, align 1, !tbaa !114
  %i.r = zext i8 %i.q to i32
  %i.s = load i32, ptr %i.a, align 4, !tbaa !112  ; 4 uses
  %i.t = icmp eq i32 %i.s, 2
  %i.u = icmp eq i32 %i.s, 0
  %i.v = select i1 %i.u, i32 2, i32 1
  %i.w = select i1 %i.t, i32 0, i32 %i.v          ; 3 uses
  %i.x = icmp eq i32 %i.w, %i.r
  br i1 %i.x, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 0, %bb.d ]
  %.pre-phi27.ph = phi i32 [ %i.m, %bb.c ], [ %i.w, %bb.d ]
  %.ph = phi i32 [ %i.i, %bb.c ], [ %i.s, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink, ptr %i.y, align 4, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.d
  %.pre-phi27 = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ], [ %.pre-phi27.ph, %.sink.split ]
  %i.z = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ], [ %.ph, %.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !113 ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp eq i32 %.pre-phi27, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !114
  %i.ag = icmp eq i8 %i.ab, %i.af
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.aa, align 4, !tbaa !113
  store i8 0, ptr %i.ae, align 1, !tbaa !114
  %i.ah = add i32 %i.z, 1
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !112
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ai = add i8 %i.c, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %storemerge = phi i8 [ %i.ai, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %i.b, align 2, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @psa_pake_input(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107
  %i.c = icmp eq i32 %i.b, 167772416
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !108
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = add i8 %1, -1
  %i.h = icmp ult i8 %i.g, 2
  %i.i = select i1 %i.h, i64 65, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !106   ; 2 uses
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call fastcc i32 @psa_pake_complete_inputs(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %thread-pre-split, label %psa_jpake_prologue.exit.thread

thread-pre-split:                                 ; preds = %bb.e
  %.pr = load i8, ptr %i.k, align 4, !tbaa !106
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.o = phi i8 [ %.pr, %thread-pre-split ], [ %i.l, %bb.d ]
  %.not34 = icmp eq i8 %i.o, 2
  br i1 %.not34, label %bb.g, label %psa_jpake_prologue.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = add i64 %3, -1
  %or.cond.not = icmp ult i64 %i.p, %i.j
  br i1 %or.cond.not, label %bb.h, label %psa_jpake_prologue.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.a, align 4, !tbaa !107
  %cond = icmp eq i32 %i.q, 167772416
  br i1 %cond, label %bb.i, label %psa_jpake_prologue.exit.thread

bb.i:                                             ; preds = %bb.h
end_hunk_1
begin_hunk_2_@mbedtls_psa_mac_update

declare i32 @mbedtls_psa_mac_sign_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_mac_verify_finish(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_mac_compute(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_asymmetric_encrypt(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_asymmetric_decrypt(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_encrypt_setup(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_decrypt_setup(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @mbedtls_ctr_drbg_random(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_set_iv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_abort(ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_cipher_decrypt(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_encrypt(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_decrypt(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_encrypt_setup(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_decrypt_setup(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_set_nonce(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_set_lengths(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_update_ad(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_aead_abort(ptr noundef) local_unnamed_addr #7

declare void @mbedtls_mpi_init(ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_ecc_group_from_psa(i8 noundef zeroext, i64 noundef) local_unnamed_addr #7

declare void @mbedtls_ecp_group_init(ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_ecp_group_load(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_sub_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_read_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_lt_mpi_ct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_add_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_write_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @mbedtls_mpi_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -141, 1) i32 @psa_tls12_prf_input(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  switch i16 %1, label %psa_tls12_prf_set_seed.exit [
    i16 516, label %bb.b
    i16 257, label %bb.g
    i16 513, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %psa_tls12_prf_set_seed.exit

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i64 %3, 0
  br i1 %.not13.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !90
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %psa_tls12_prf_set_seed.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.f, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  store i32 1, ptr %i.a, align 4, !tbaa !85
  br label %psa_tls12_prf_set_seed.exit

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !85
  %.off.i = add i32 %i.h, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.h, label %psa_tls12_prf_set_seed.exit

bb.h:                                             ; preds = %bb.g
  %.not16.i = icmp eq i64 %3, 0
  br i1 %.not16.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !86
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %psa_tls12_prf_set_seed.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.l, align 8, !tbaa !87
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  store i32 3, ptr %i.g, align 4, !tbaa !85
  br label %psa_tls12_prf_set_seed.exit

bb.l:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !85
  %.not.i11 = icmp eq i32 %i.n, 3
  br i1 %.not.i11, label %bb.m, label %psa_tls12_prf_set_seed.exit

bb.m:                                             ; preds = %bb.l
  %.not13.i13 = icmp eq i64 %3, 0
  br i1 %.not13.i13, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #19 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !88
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %psa_tls12_prf_set_seed.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %i.r, align 8, !tbaa !89
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  store i32 4, ptr %i.m, align 4, !tbaa !85
  br label %psa_tls12_prf_set_seed.exit

psa_tls12_prf_set_seed.exit:                      ; preds = %bb.p, %bb.n, %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -141, %bb.i ], [ -135, %bb.a ], [ -141, %bb.d ], [ 0, %bb.f ], [ -137, %bb.b ], [ 0, %bb.k ], [ -137, %bb.g ], [ 0, %bb.p ], [ -137, %bb.l ], [ -141, %bb.n ]
  ret i32 %.0
}

declare void @mbedtls_des_key_set_parity(ptr noundef) local_unnamed_addr #7

declare void @mbedtls_ctr_drbg_free(ptr noundef) local_unnamed_addr #7

declare i32 @psa_initialize_key_slots() local_unnamed_addr #7

declare void @mbedtls_entropy_init(ptr noundef) #7

declare void @mbedtls_entropy_free(ptr noundef) #7

declare void @mbedtls_ctr_drbg_init(ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_ctr_drbg_seed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_entropy_func(ptr noundef, ptr noundef, i64 noundef) #7

declare i32 @mbedtls_psa_pake_setup(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_output(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_input(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_get_implicit_key(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_abort(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS17mbedtls_md_info_t", !8, i64 0}
!10 = !{!"mbedtls_md_context_t", !9, i64 0, !8, i64 8, !8, i64 16}
!11 = !{!"mbedtls_entropy_context", !10, i64 0, !6, i64 24, !6, i64 28, !5, i64 32}
!12 = !{!"long", !5, i64 0}
!13 = !{!"mbedtls_aes_context", !6, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!"mbedtls_ctr_drbg_context", !5, i64 0, !6, i64 16, !6, i64 20, !12, i64 24, !6, i64 32, !13, i64 40, !8, i64 328, !8, i64 336}
!15 = !{!"", !8, i64 0, !8, i64 8, !11, i64 16, !14, i64 848}
!16 = !{!"", !5, i64 0, !5, i64 1, !15, i64 8}
!17 = !{!16, !5, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"psa_key_policy_s", !6, i64 0, !6, i64 4, !6, i64 8}
!20 = !{!"psa_key_attributes_s", !18, i64 0, !18, i64 2, !6, i64 4, !19, i64 8, !6, i64 20}
!21 = !{!"p1 omnipotent char", !8, i64 0}
!22 = !{!"key_data", !21, i64 0, !12, i64 8}
!23 = !{!"", !20, i64 0, !6, i64 24, !5, i64 28, !5, i64 32, !22, i64 40}
!24 = !{!23, !21, i64 40}
!25 = !{!23, !12, i64 48}
!26 = !{!20, !18, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!23, !6, i64 24}
!29 = !{!5, !5, i64 0}
!30 = !{!23, !5, i64 28}
!31 = !{!8, !8, i64 0}
!32 = !{!23, !6, i64 4}
!33 = !{!23, !6, i64 20}
!34 = !{!18, !18, i64 0}
!35 = !{i64 0, i64 2, !34, i64 2, i64 2, !34, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7}
!36 = !{!23, !18, i64 0}
!37 = !{!23, !6, i64 8}
!38 = !{!19, !6, i64 4}
!39 = !{!19, !6, i64 8}
!40 = !{!20, !6, i64 4}
!41 = !{!"psa_crypto_local_output_s", !21, i64 0, !21, i64 8, !12, i64 16}
!42 = !{!41, !21, i64 8}
!43 = !{!41, !12, i64 16}
!44 = !{!41, !21, i64 0}
!45 = !{!"p1 _ZTS24psa_se_drv_table_entry_s", !8, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!23, !18, i64 2}
!48 = !{!20, !18, i64 2}
!49 = !{!"psa_crypto_local_input_s", !21, i64 0, !12, i64 8}
!50 = !{!49, !21, i64 0}
!51 = !{!49, !12, i64 8}
!52 = !{!20, !6, i64 20}
!53 = !{!19, !6, i64 0}
!54 = !{!"psa_hash_operation_s", !6, i64 0, !5, i64 8}
!55 = !{!54, !6, i64 0}
!56 = !{!"psa_mac_operation_s", !6, i64 0, !5, i64 4, !6, i64 5, !5, i64 8}
!57 = !{!56, !6, i64 0}
!58 = !{!56, !5, i64 4}
!59 = !{!"psa_sign_hash_interruptible_operation_s", !6, i64 0, !5, i64 4, !6, i64 8, !6, i64 12}
!60 = !{!59, !6, i64 12}
!61 = !{!"psa_verify_hash_interruptible_operation_s", !6, i64 0, !5, i64 4, !6, i64 8, !6, i64 12}
!62 = !{!61, !6, i64 12}
!63 = !{!59, !6, i64 0}
!64 = !{!61, !6, i64 0}
!65 = !{!"psa_cipher_operation_s", !6, i64 0, !6, i64 4, !6, i64 4, !5, i64 5, !5, i64 8}
!66 = !{!65, !6, i64 0}
!67 = !{!65, !5, i64 5}
!68 = !{!16, !5, i64 1}
!69 = !{!"psa_aead_operation_s", !6, i64 0, !6, i64 4, !18, i64 8, !12, i64 16, !12, i64 24, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !5, i64 40}
!70 = !{!69, !6, i64 0}
!71 = !{!69, !18, i64 8}
!72 = !{!69, !6, i64 4}
!73 = !{!69, !12, i64 16}
!74 = !{!69, !12, i64 24}
!75 = !{!"psa_key_derivation_s", !6, i64 0, !6, i64 4, !12, i64 8, !5, i64 16}
!76 = !{!75, !6, i64 0}
!77 = !{!75, !12, i64 8}
!78 = !{!"", !21, i64 0, !12, i64 8, !5, i64 16, !5, i64 17, !6, i64 18, !6, i64 18, !5, i64 19, !5, i64 83, !56, i64 152}
!79 = !{!78, !5, i64 16}
!80 = !{!78, !5, i64 17}
!81 = !{!20, !6, i64 8}
!82 = !{!78, !21, i64 0}
!83 = !{!78, !12, i64 8}
!84 = !{!"psa_tls12_prf_key_derivation_s", !5, i64 0, !5, i64 1, !6, i64 4, !21, i64 8, !12, i64 16, !21, i64 24, !12, i64 32, !21, i64 40, !12, i64 48, !21, i64 56, !12, i64 64, !5, i64 72, !5, i64 136}
!85 = !{!84, !6, i64 4}
!86 = !{!84, !21, i64 8}
!87 = !{!84, !12, i64 16}
!88 = !{!84, !21, i64 40}
!89 = !{!84, !12, i64 48}
!90 = !{!84, !21, i64 24}
!91 = !{!84, !12, i64 32}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"psa_custom_key_parameters_s", !6, i64 0}
!94 = !{!93, !6, i64 0}
!95 = !{!15, !8, i64 8}
!96 = !{!"psa_pake_cipher_suite_s", !6, i64 0, !5, i64 4, !5, i64 5, !18, i64 6, !6, i64 8}
!97 = !{!"psa_crypto_driver_pake_inputs_s", !21, i64 0, !12, i64 8, !21, i64 16, !12, i64 24, !21, i64 32, !12, i64 40, !20, i64 48, !96, i64 72}
!98 = !{!97, !12, i64 8}
!99 = !{!97, !21, i64 0}
!100 = !{!97, !12, i64 24}
!101 = !{!97, !21, i64 16}
!102 = !{!97, !12, i64 40}
!103 = !{!97, !21, i64 32}
!104 = !{i64 0, i64 4, !7, i64 4, i64 1, !29, i64 5, i64 1, !29, i64 6, i64 2, !34, i64 8, i64 4, !7}
!105 = !{!"psa_pake_operation_s", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !5, i64 16, !5, i64 32}
!106 = !{!105, !5, i64 12}
!107 = !{!105, !6, i64 4}
!108 = !{!105, !6, i64 8}
!109 = !{!"psa_jpake_computation_stage_s", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 9, !5, i64 10}
!110 = !{!109, !5, i64 10}
!111 = !{!105, !6, i64 0}
!112 = !{!109, !6, i64 0}
!113 = !{!109, !5, i64 8}
!114 = !{!109, !5, i64 9}
!115 = !{!109, !6, i64 4}
!116 = distinct !{!116, !92}
!117 = !{!84, !5, i64 0}
!118 = !{!84, !5, i64 1}
!119 = distinct !{!119, !92}
!120 = !{!"p1 long", !8, i64 0}
!121 = !{!"mbedtls_mpi", !120, i64 0, !18, i64 8, !18, i64 10}
!122 = !{!"mbedtls_ecp_point", !121, i64 0, !121, i64 16, !121, i64 32}
!123 = !{!"p1 _ZTS17mbedtls_ecp_point", !8, i64 0}
!124 = !{!"mbedtls_ecp_group", !6, i64 0, !121, i64 8, !121, i64 24, !121, i64 40, !122, i64 56, !121, i64 104, !12, i64 120, !12, i64 128, !6, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !123, i64 176, !12, i64 184}
!125 = !{!124, !12, i64 128}
!126 = !{!84, !12, i64 64}
!127 = !{!84, !21, i64 56}
!128 = !{!16, !8, i64 8}
!129 = !{!16, !8, i64 16}
!130 = distinct !{null}
!131 = distinct !{null, null}
!132 = distinct !{ptr @mbedtls_psa_crypto_free, null}
!133 = !{!15, !8, i64 0}
!134 = !{!97, !6, i64 72}
!135 = !{!96, !6, i64 0}
!136 = !{!96, !6, i64 8}
!137 = !{!96, !18, i64 6}
!138 = !{!96, !5, i64 4}
!139 = !{!96, !5, i64 5}
!140 = !{!21, !21, i64 0}
!141 = !{i64 0, i64 8, !140, i64 8, i64 8, !27, i64 16, i64 8, !140, i64 24, i64 8, !27, i64 32, i64 8, !140, i64 40, i64 8, !27, i64 48, i64 2, !34, i64 50, i64 2, !34, i64 52, i64 4, !7, i64 56, i64 4, !7, i64 60, i64 4, !7, i64 64, i64 4, !7, i64 68, i64 4, !7, i64 72, i64 4, !7, i64 76, i64 1, !29, i64 77, i64 1, !29, i64 78, i64 2, !34, i64 80, i64 4, !7}
end_hunk_2
