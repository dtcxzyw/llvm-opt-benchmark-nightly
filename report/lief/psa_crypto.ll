Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_crypto?download=true
inline.NumInlined: 478
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@psa_crypto_init:bb.a
  br i1 %.not2.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @mbedtls_ctr_drbg_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 216)) #20
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !105
  call void %i.aj(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 24)) #20, !inline_history !151
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  call void @mbedtls_platform_zeroize(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 8), i64 noundef 552) #20
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
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_password_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108  ; 2 uses
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
define hidden range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_password(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !109
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %i.b, i1 false)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.f, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_user_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
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
define hidden range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_user(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.f, i64 %i.b, i1 false)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.g, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_peer_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
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
define hidden range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_peer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.f, i64 %i.b, i1 false)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.g, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_cipher_suite(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !114
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_pake_setup(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !116   ; 2 uses
  switch i8 %i.c, label %psa_driver_wrapper_pake_abort.exit.i [
    i8 0, label %bb.b
    i8 2, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !154
  %i.e = and i32 %i.d, 2130706432
  %.not24 = icmp eq i32 %i.e, 167772160
  br i1 %.not24, label %bb.c, label %psa_pake_abort.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %i.f, i8 0, i64 880, i1 false)
  %i.g = load i32, ptr %2, align 4, !tbaa !154    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !155
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %3 = load i16, ptr %i.l, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.m = zext i16 %4 to i32
  %i.n = shl nuw i32 %i.m, 16
  %i.o = or disjoint i32 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !118
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !114
  %i.r = and i32 %i.g, -256
  %i.s = icmp eq i32 %i.r, 167772416
  br i1 %i.s, label %bb.d, label %psa_pake_abort.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, i8 0, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.u, align 2, !tbaa !120
  store i8 1, ptr %i.b, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.v = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, ptr noundef %i.a, i32 noundef 16384, i32 noundef %i.g) ; 2 uses
  %.not19.i = icmp eq i32 %i.v, 0
  br i1 %.not19.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %.val.i = load i16, ptr %i.w, align 4, !tbaa !26
  switch i16 %.val.i, label %bb.g [
    i16 4613, label %bb.f
    i16 4611, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.y) #19 ; 3 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !29
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0.ph.ph.i = phi i32 [ %i.v, %bb.d ], [ -135, %bb.e ], [ -141, %bb.f ]
  %.pr.i = load i8, ptr %i.b, align 4, !tbaa !116 ; 2 uses
  %i.ab = icmp eq i8 %.pr.i, 2
  br i1 %i.ab, label %bb.h, label %psa_driver_wrapper_pake_abort.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %0, align 8, !tbaa !121
  %cond.i.i.i = icmp eq i32 %i.ac, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.f) #20 ; 0 uses
  %.pr.i.i = load i8, ptr %i.b, align 4, !tbaa !116
  br label %psa_driver_wrapper_pake_abort.exit.i.i

psa_driver_wrapper_pake_abort.exit.i.i:           ; preds = %bb.i, %bb.g
  %i.ae = phi i8 [ %.pr.i.i, %bb.i ], [ %.pr.i, %bb.g ]
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.j, label %bb.p

bb.j:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i.i
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ag, i64 noundef %i.ai) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ak, null
  br i1 %.not14.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ak) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.am, null
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.am) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %psa_driver_wrapper_pake_abort.exit.i.i, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ao = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.an) #20 ; 0 uses
  br label %psa_pake_set_password_key.exit

bb.q:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !36
  %i.au = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.w) #20
  br label %psa_pake_set_password_key.exit

psa_pake_set_password_key.exit:                   ; preds = %bb.p, %bb.q
  %i.av = phi i32 [ %i.au, %bb.q ], [ %.0.ph.ph.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.z

bb.r:                                             ; preds = %bb.a
  %i.aw = load i32, ptr %0, align 8, !tbaa !121
  %cond.i.i = icmp eq i32 %i.aw, 1
  br i1 %cond.i.i, label %bb.s, label %psa_pake_abort.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.ax) #20 ; 0 uses
  %.pr.i26 = load i8, ptr %i.b, align 4, !tbaa !116
  br label %psa_driver_wrapper_pake_abort.exit.i

psa_driver_wrapper_pake_abort.exit.i:             ; preds = %bb.a, %bb.s
  %i.az = phi i8 [ %.pr.i26, %bb.s ], [ %i.c, %bb.a ]
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.t, label %psa_pake_abort.exit

bb.t:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bc, null
  br i1 %.not.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bc, i64 noundef %i.be) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %.not14.i = icmp eq ptr %i.bg, null
  br i1 %.not14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.bg) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %.not15.i = icmp eq ptr %i.bi, null
  br i1 %.not15.i, label %psa_pake_abort.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.bi) #20
  br label %psa_pake_abort.exit

psa_pake_abort.exit:                              ; preds = %bb.c, %bb.b, %bb.r, %psa_driver_wrapper_pake_abort.exit.i, %bb.x, %bb.y
  %.02228 = phi i32 [ -137, %bb.r ], [ -137, %psa_driver_wrapper_pake_abort.exit.i ], [ -137, %bb.x ], [ -137, %bb.y ], [ -134, %bb.c ], [ -135, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %psa_pake_abort.exit, %psa_pake_set_password_key.exit
  %.0 = phi i32 [ %.02228, %psa_pake_abort.exit ], [ %i.av, %psa_pake_set_password_key.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_pake_abort(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !116   ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %psa_driver_wrapper_pake_abort.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !121
  %cond.i = icmp eq i32 %i.d, 1
  br i1 %cond.i, label %bb.c, label %psa_driver_wrapper_pake_abort.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.e) #20
  %.pr = load i8, ptr %i.a, align 4, !tbaa !116
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

end_hunk_0
begin_hunk_1_@psa_pake_set_context:bb.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_pake_output(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3, ptr noundef initializes((0, 8)) %4) local_unnamed_addr #6 {
bb.a:
  store i64 0, ptr %4, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !116   ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @psa_pake_complete_inputs(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %thread-pre-split, label %psa_crypto_local_output_free.exit.thread65

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i8, ptr %i.a, align 4, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.e = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ]
  %.not32 = icmp eq i8 %i.e, 2
  br i1 %.not32, label %bb.d, label %psa_crypto_local_output_free.exit.thread65

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %psa_crypto_local_output_free.exit.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !117
  %i.i = and i32 %i.h, -256
  %i.j = icmp eq i32 %i.i, 167772416
  br i1 %i.j, label %bb.f, label %psa_crypto_local_output_free.exit.thread65

bb.f:                                             ; preds = %bb.e
  %i.k = add i8 %1, -4
  %or.cond5.i = icmp ult i8 %i.k, -3
  br i1 %or.cond5.i, label %psa_crypto_local_output_free.exit.thread65, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !122  ; 2 uses
  %switch.i = icmp ult i32 %i.m, 2
  br i1 %switch.i, label %bb.h, label %psa_crypto_local_output_free.exit.thread65

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.o = load i8, ptr %i.n, align 2, !tbaa !120
  %.not23.i = icmp eq i8 %1, %i.o
  br i1 %.not23.i, label %bb.i, label %psa_crypto_local_output_free.exit.thread65

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i8 %1, 1
  br i1 %i.p, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 4, !tbaa !123
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !124
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.w, align 4, !tbaa !125
  br label %psa_jpake_prologue.exit

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !125
  %.not24.i = icmp eq i32 %i.y, 1
  br i1 %.not24.i, label %psa_jpake_prologue.exit, label %psa_crypto_local_output_free.exit.thread65

psa_jpake_prologue.exit:                          ; preds = %bb.m, %bb.l
  %trunc = trunc nuw i32 %i.m to i1
  br i1 %trunc, label %convert_jpake_computation_stage_to_driver_step.exit, label %bb.n

bb.n:                                             ; preds = %psa_jpake_prologue.exit
  %.0.in.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.0.in.in.i = load i8, ptr %.0.in.in.in.i, align 1, !tbaa !29
  %.0.in.i = icmp eq i8 %.0.in.in.i, 0
  %i.z = select i1 %.0.in.i, i32 0, i32 3
  br label %convert_jpake_computation_stage_to_driver_step.exit

convert_jpake_computation_stage_to_driver_step.exit: ; preds = %psa_jpake_prologue.exit, %bb.n
  %.09.i = phi i32 [ %i.z, %bb.n ], [ 6, %psa_jpake_prologue.exit ]
  %i.aa = zext nneg i8 %1 to i32
  %i.ab = add nuw nsw i32 %.09.i, %i.aa
  %i.ac = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 1) #19 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %psa_crypto_local_output_free.exit.thread65, label %bb.o

bb.o:                                             ; preds = %convert_jpake_computation_stage_to_driver_step.exit
  %i.ae = load i32, ptr %0, align 8, !tbaa !121
  %cond.i = icmp eq i32 %i.ae, 1
  br i1 %cond.i, label %psa_driver_wrapper_pake_output.exit, label %psa_crypto_local_output_alloc.exit

psa_driver_wrapper_pake_output.exit:              ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = tail call i32 @mbedtls_psa_pake_output(ptr noundef nonnull %i.af, i32 noundef range(i32 0, 265) %i.ab, ptr noundef nonnull %i.ac, i64 noundef range(i64 1, 0) %3, ptr noundef nonnull %4) #20 ; 2 uses
  %.not35 = icmp eq i32 %i.ag, 0
  br i1 %.not35, label %bb.p, label %psa_crypto_local_output_alloc.exit

bb.p:                                             ; preds = %psa_driver_wrapper_pake_output.exit
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !117
  %i.ai = and i32 %i.ah, -256
  %i.aj = icmp eq i32 %i.ai, 167772416
  br i1 %i.aj, label %bb.q, label %psa_crypto_local_output_alloc.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @psa_jpake_epilogue(ptr noundef nonnull %0, i32 noundef 1)
  br label %psa_crypto_local_output_alloc.exit

psa_crypto_local_output_alloc.exit:               ; preds = %bb.o, %psa_driver_wrapper_pake_output.exit, %bb.q, %bb.p
  %.0 = phi i32 [ -134, %bb.p ], [ %i.ag, %psa_driver_wrapper_pake_output.exit ], [ 0, %bb.q ], [ -135, %bb.o ] ; 2 uses
  %i.ak = icmp eq ptr %2, null
  br i1 %i.ak, label %psa_crypto_local_output_free.exit.thread65, label %psa_crypto_local_output_free.exit

psa_crypto_local_output_free.exit:                ; preds = %psa_crypto_local_output_alloc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull readonly align 1 %i.ac, i64 %3, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ac, i64 noundef %3) #20
  %.not37 = icmp eq i32 %.0, 0
  br i1 %.not37, label %bb.z, label %psa_crypto_local_output_free.exit.thread65

psa_crypto_local_output_free.exit.thread65:       ; preds = %bb.m, %bb.g, %bb.h, %bb.f, %convert_jpake_computation_stage_to_driver_step.exit, %bb.e, %bb.c, %bb.d, %bb.b, %psa_crypto_local_output_alloc.exit, %psa_crypto_local_output_free.exit
  %i.al = phi i32 [ %.0, %psa_crypto_local_output_free.exit ], [ -141, %convert_jpake_computation_stage_to_driver_step.exit ], [ -134, %bb.e ], [ -151, %psa_crypto_local_output_alloc.exit ], [ -137, %bb.c ], [ -135, %bb.d ], [ %i.d, %bb.b ], [ -137, %bb.m ], [ -137, %bb.g ], [ -137, %bb.h ], [ -135, %bb.f ]
  %i.am = load i8, ptr %i.a, align 4, !tbaa !116  ; 2 uses
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %bb.r, label %psa_driver_wrapper_pake_abort.exit.i

bb.r:                                             ; preds = %psa_crypto_local_output_free.exit.thread65
  %i.ao = load i32, ptr %0, align 8, !tbaa !121
  %cond.i.i = icmp eq i32 %i.ao, 1
  br i1 %cond.i.i, label %bb.s, label %psa_pake_abort.exit

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.ap) #20 ; 0 uses
  %.pr.i = load i8, ptr %i.a, align 4, !tbaa !116
  br label %psa_driver_wrapper_pake_abort.exit.i

psa_driver_wrapper_pake_abort.exit.i:             ; preds = %bb.s, %psa_crypto_local_output_free.exit.thread65
  %i.ar = phi i8 [ %.pr.i, %bb.s ], [ %i.am, %psa_crypto_local_output_free.exit.thread65 ]
  %i.as = icmp eq i8 %i.ar, 1
  br i1 %i.as, label %bb.t, label %psa_pake_abort.exit

bb.t:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.au, i64 noundef %i.aw) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %.not14.i = icmp eq ptr %i.ay, null
  br i1 %.not14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.ay) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29 ; 2 uses
  %.not15.i = icmp eq ptr %i.ba, null
  br i1 %.not15.i, label %psa_pake_abort.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.ba) #20
  br label %psa_pake_abort.exit

psa_pake_abort.exit:                              ; preds = %bb.r, %psa_driver_wrapper_pake_abort.exit.i, %bb.x, %bb.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %psa_pake_abort.exit, %psa_crypto_local_output_free.exit
  %i.bb = phi i32 [ %i.al, %psa_pake_abort.exit ], [ 0, %psa_crypto_local_output_free.exit ]
  ret i32 %i.bb
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_pake_complete_inputs(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.psa_crypto_driver_pake_inputs_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !tbaa.struct !157
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !108
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117
  %i.g = and i32 %i.f, -256
  %i.h = icmp eq i32 %i.g, 167772416
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !110
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 880) #20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !41
  %cond.i = icmp ult i32 %.val.i, 256
  br i1 %cond.i, label %bb.e, label %psa_driver_wrapper_pake_setup.exit

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @mbedtls_psa_pake_setup(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #20 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %psa_driver_wrapper_pake_setup.exit

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %0, align 8, !tbaa !121
  br label %psa_driver_wrapper_pake_setup.exit

psa_driver_wrapper_pake_setup.exit:               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.p, %bb.e ], [ 0, %bb.f ], [ -135, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !109
  %i.s = load i64, ptr %i.b, align 8, !tbaa !108
  call void @mbedtls_zeroize_and_free(ptr noundef %i.r, i64 noundef %i.s) #20
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  call void @free(ptr noundef %i.u) #20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  call void @free(ptr noundef %i.w) #20
  %i.x = icmp eq i32 %.0.i, 0
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %psa_driver_wrapper_pake_setup.exit
  %i.y = load i32, ptr %i.e, align 4, !tbaa !117
  %i.z = and i32 %i.y, -256
  %i.aa = icmp eq i32 %i.z, 167772416
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.ab, align 4, !tbaa !116
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
  %i.c = load i8, ptr %i.b, align 2, !tbaa !120   ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !123
  %i.g = add i8 %i.f, 1                           ; 2 uses
  store i8 %i.g, ptr %i.e, align 4, !tbaa !123
  %i.h = zext i8 %i.g to i32
  %i.i = load i32, ptr %i.a, align 4, !tbaa !122  ; 4 uses
  %i.j = icmp eq i32 %i.i, 2
  %i.k = icmp eq i32 %i.i, 0
  %i.l = select i1 %i.k, i32 2, i32 1
  %i.m = select i1 %i.j, i32 0, i32 %i.l          ; 3 uses
  %i.n = icmp eq i32 %i.m, %i.h
  br i1 %i.n, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !124
  %i.q = add i8 %i.p, 1                           ; 2 uses
  store i8 %i.q, ptr %i.o, align 1, !tbaa !124
  %i.r = zext i8 %i.q to i32
  %i.s = load i32, ptr %i.a, align 4, !tbaa !122  ; 4 uses
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
  store i32 %.sink, ptr %i.y, align 4, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.d
  %.pre-phi27 = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ], [ %.pre-phi27.ph, %.sink.split ]
  %i.z = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ], [ %.ph, %.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !123 ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp eq i32 %.pre-phi27, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !124
  %i.ag = icmp eq i8 %i.ab, %i.af
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.aa, align 4, !tbaa !123
  store i8 0, ptr %i.ae, align 1, !tbaa !124
  %i.ah = add i32 %i.z, 1
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !122
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ai = add i8 %i.c, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %storemerge = phi i8 [ %i.ai, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %i.b, align 2, !tbaa !120
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_pake_input(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !117
  %i.c = and i32 %i.b, -256
  %i.d = icmp eq i32 %i.c, 167772416
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !118
  %i.g = icmp eq i32 %i.f, 17957120
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i8 %1, -1
  %i.i = icmp ult i8 %i.h, 2
  %i.j = select i1 %i.i, i64 65, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.k = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !116   ; 2 uses
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc i32 @psa_pake_complete_inputs(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %thread-pre-split, label %psa_jpake_prologue.exit.thread

thread-pre-split:                                 ; preds = %bb.e
  %.pr = load i8, ptr %i.l, align 4, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.p = phi i8 [ %.pr, %thread-pre-split ], [ %i.m, %bb.d ]
  %.not33 = icmp eq i8 %i.p, 2
  br i1 %.not33, label %bb.g, label %psa_jpake_prologue.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = add i64 %3, -1
  %or.cond.not = icmp ult i64 %i.q, %i.k
  br i1 %or.cond.not, label %bb.h, label %psa_jpake_prologue.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.a, align 4, !tbaa !117
  %i.s = and i32 %i.r, -256
end_hunk_1
begin_hunk_2_@psa_tls12_prf_input:bb.a
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

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_pbkdf2_input(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i16 noundef zeroext %2, ptr noundef %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.psa_key_attributes_s, align 4 ; 7 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  switch i16 %2, label %psa_pbkdf2_set_salt.exit [
    i16 514, label %bb.b
    i16 258, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !94
  switch i32 %i.b, label %psa_pbkdf2_set_salt.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 8, !tbaa !94
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %psa_pbkdf2_set_salt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !96   ; 4 uses
  %i.f = add i64 %i.e, %4                         ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.f) #19 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %psa_pbkdf2_set_salt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %i.e, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !95 ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %.pre.i, i64 %i.e, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %3, i64 %4, i1 false)
  store i64 %i.f, ptr %i.d, align 8, !tbaa !96
  tail call void @free(ptr noundef %.pre.i) #20
  store ptr %i.g, ptr %.phi.trans.insert.i, align 8, !tbaa !95
  br label %psa_pbkdf2_set_salt.exit

bb.h:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !94
  %.not.i8 = icmp eq i32 %i.j, 2
  br i1 %.not.i8, label %bb.i, label %psa_pbkdf2_set_salt.exit

bb.i:                                             ; preds = %bb.h
  %i.k = and i32 %1, -256
  %i.l = icmp eq i32 %i.k, 142606592
  br i1 %i.l, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.m = and i32 %1, 255                          ; 3 uses
  %i.n = or disjoint i32 %i.m, 33554432
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %switch.tableidx = add nsw i32 %i.m, -3         ; 2 uses
  %i.q = icmp ult i32 %switch.tableidx, 17
  br i1 %i.q, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %bb.j
  %i.r = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.psa_pbkdf2_input.32, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %switch.lookup
  %i.s = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.j ]
  %i.t = icmp ugt i64 %4, %i.s
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 @psa_hash_compute(i32 noundef range(i32 33554432, 33554688) %i.n, ptr noundef readonly %3, i64 noundef %4, ptr noundef nonnull %i.o, i64 noundef 144, ptr noundef nonnull %i.p)
  br label %psa_pbkdf2_hmac_set_password.exit.i

bb.m:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %switch.tableidx12 = add nsw i32 %i.m, -3       ; 2 uses
  %i.v = icmp ult i32 %switch.tableidx12, 17
  br i1 %i.v, label %switch.lookup13, label %bb.p

switch.lookup13:                                  ; preds = %bb.o
  %i.w = zext nneg i32 %switch.tableidx12 to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table.psa_pbkdf2_input.32, i64 %i.w
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %switch.ext16 = zext i8 %switch.load15 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %switch.lookup13
  %i.x = phi i64 [ %switch.ext16, %switch.lookup13 ], [ 0, %bb.o ]
  store i64 %i.x, ptr %i.p, align 8, !tbaa !27
  br label %psa_pbkdf2_hmac_set_password.exit.i

bb.q:                                             ; preds = %bb.i
  %i.y = icmp eq i32 %1, 142606848
  br i1 %i.y, label %bb.r, label %psa_pbkdf2_set_salt.exit

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.not.i16.i = icmp eq i64 %4, 16
  br i1 %.not.i16.i, label %bb.s, label %psa_driver_wrapper_mac_compute.exit.i.i

psa_driver_wrapper_mac_compute.exit.i.i:          ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i16 9216, ptr %5, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 128, ptr %i.ac, align 2, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1024, ptr %i.ad, align 4, !tbaa !81
  %i.ae = call i32 @mbedtls_psa_mac_compute(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 62915072, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.z, i64 noundef 16, ptr noundef nonnull %i.aa) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %psa_pbkdf2_hmac_set_password.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  store i64 16, ptr %i.aa, align 8, !tbaa !27
  br label %psa_pbkdf2_hmac_set_password.exit.i

psa_pbkdf2_hmac_set_password.exit.i:              ; preds = %bb.s, %psa_driver_wrapper_mac_compute.exit.i.i, %bb.p, %bb.l
  %.015.i = phi i32 [ 0, %bb.p ], [ %i.u, %bb.l ], [ %i.ae, %psa_driver_wrapper_mac_compute.exit.i.i ], [ 0, %bb.s ]
  store i32 3, ptr %0, align 8, !tbaa !94
  br label %psa_pbkdf2_set_salt.exit

psa_pbkdf2_set_salt.exit:                         ; preds = %psa_pbkdf2_hmac_set_password.exit.i, %bb.q, %bb.h, %.thread.i, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ -135, %bb.a ], [ -141, %bb.e ], [ -137, %bb.b ], [ 0, %.thread.i ], [ -137, %bb.h ], [ %.015.i, %psa_pbkdf2_hmac_set_password.exit.i ], [ -135, %bb.q ]
  ret i32 %.0
}

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind }

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
!9 = !{!"p1 _ZTS17mbedtls_md_info_t", !8, i64 0}
!10 = !{!"mbedtls_md_context_t", !9, i64 0, !8, i64 8, !8, i64 16}
!11 = !{!"mbedtls_entropy_context", !10, i64 0, !5, i64 24, !5, i64 28, !4, i64 32}
!12 = !{!"long", !4, i64 0}
!13 = !{!"mbedtls_aes_context", !5, i64 0, !12, i64 8, !4, i64 16}
!14 = !{!"mbedtls_ctr_drbg_context", !4, i64 0, !5, i64 16, !5, i64 20, !12, i64 24, !5, i64 32, !13, i64 40, !8, i64 328, !8, i64 336}
!15 = !{!"", !8, i64 0, !8, i64 8, !11, i64 16, !14, i64 208}
!16 = !{!"", !4, i64 0, !4, i64 1, !15, i64 8}
!17 = !{!16, !4, i64 0}
!18 = !{!"short", !4, i64 0}
!19 = !{!"psa_key_policy_s", !5, i64 0, !5, i64 4, !5, i64 8}
!20 = !{!"psa_key_attributes_s", !18, i64 0, !18, i64 2, !5, i64 4, !19, i64 8, !5, i64 20}
!21 = !{!"p1 omnipotent char", !8, i64 0}
!22 = !{!"key_data", !21, i64 0, !12, i64 8}
!23 = !{!"", !20, i64 0, !5, i64 24, !4, i64 28, !4, i64 32, !22, i64 40}
!24 = !{!23, !21, i64 40}
!25 = !{!23, !12, i64 48}
!26 = !{!20, !18, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!23, !5, i64 24}
!29 = !{!4, !4, i64 0}
!30 = !{!23, !4, i64 28}
!31 = !{!8, !8, i64 0}
!32 = !{!23, !5, i64 4}
!33 = !{!23, !5, i64 20}
!34 = !{!18, !18, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{i64 0, i64 2, !34, i64 2, i64 2, !34, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 12, i64 4, !35, i64 16, i64 4, !35, i64 20, i64 4, !35}
!37 = !{!23, !18, i64 0}
!38 = !{!23, !5, i64 8}
!39 = !{!19, !5, i64 4}
!40 = !{!19, !5, i64 8}
!41 = !{!20, !5, i64 4}
!42 = !{!"psa_crypto_local_output_s", !21, i64 0, !21, i64 8, !12, i64 16}
!43 = !{!42, !21, i64 8}
!44 = !{!42, !12, i64 16}
!45 = !{!42, !21, i64 0}
!46 = !{!20, !5, i64 20}
!47 = !{!19, !5, i64 0}
!48 = !{!20, !18, i64 2}
!49 = !{!23, !18, i64 2}
!50 = !{!"psa_crypto_local_input_s", !21, i64 0, !12, i64 8}
!51 = !{!50, !21, i64 0}
!52 = !{!50, !12, i64 8}
!53 = !{!"psa_hash_operation_s", !5, i64 0, !4, i64 8}
!54 = !{!53, !5, i64 0}
!55 = !{!"psa_mac_operation_s", !5, i64 0, !4, i64 4, !5, i64 5, !4, i64 8}
!56 = !{!55, !5, i64 0}
!57 = !{!55, !4, i64 4}
!58 = !{!"psa_sign_hash_interruptible_operation_s", !5, i64 0, !4, i64 4, !5, i64 8, !5, i64 12}
!59 = !{!58, !5, i64 12}
!60 = !{!"psa_verify_hash_interruptible_operation_s", !5, i64 0, !4, i64 4, !5, i64 8, !5, i64 12}
!61 = !{!60, !5, i64 12}
!62 = !{!58, !5, i64 0}
!63 = !{!60, !5, i64 0}
!64 = !{!"psa_cipher_operation_s", !5, i64 0, !5, i64 4, !5, i64 4, !4, i64 5, !4, i64 8}
!65 = !{!64, !5, i64 0}
!66 = !{!64, !4, i64 5}
!67 = !{!16, !4, i64 1}
!68 = !{i64 2706846, i64 2706896, i64 2706968, i64 2707040, i64 2707112}
!69 = !{!"psa_aead_operation_s", !5, i64 0, !5, i64 4, !18, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !4, i64 40}
!70 = !{!69, !5, i64 0}
!71 = !{!69, !18, i64 8}
!72 = !{!69, !5, i64 4}
!73 = !{!69, !12, i64 16}
!74 = !{!69, !12, i64 24}
!75 = !{!"psa_key_derivation_s", !5, i64 0, !5, i64 4, !12, i64 8, !4, i64 16}
!76 = !{!75, !5, i64 0}
!77 = !{!75, !12, i64 8}
!78 = !{!"", !21, i64 0, !12, i64 8, !4, i64 16, !4, i64 17, !5, i64 18, !5, i64 18, !4, i64 19, !4, i64 83, !55, i64 152}
!79 = !{!78, !4, i64 16}
!80 = !{!78, !4, i64 17}
!81 = !{!20, !5, i64 8}
!82 = !{!78, !21, i64 0}
!83 = !{!78, !12, i64 8}
!84 = !{!"psa_tls12_prf_key_derivation_s", !4, i64 0, !4, i64 1, !5, i64 4, !21, i64 8, !12, i64 16, !21, i64 24, !12, i64 32, !21, i64 40, !12, i64 48, !21, i64 56, !12, i64 64, !4, i64 72, !4, i64 136}
!85 = !{!84, !5, i64 4}
!86 = !{!84, !21, i64 8}
!87 = !{!84, !12, i64 16}
!88 = !{!84, !21, i64 40}
!89 = !{!84, !12, i64 48}
!90 = !{!84, !21, i64 24}
!91 = !{!84, !12, i64 32}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"", !5, i64 0, !12, i64 8, !21, i64 16, !12, i64 24, !4, i64 32, !12, i64 176, !4, i64 184, !4, i64 248, !5, i64 252}
!94 = !{!93, !5, i64 0}
!95 = !{!93, !21, i64 16}
!96 = !{!93, !12, i64 24}
!97 = !{!93, !12, i64 8}
!98 = !{!"psa_custom_key_parameters_s", !5, i64 0}
!99 = !{!98, !5, i64 0}
!100 = !{!"p1 long", !8, i64 0}
!101 = !{!"mbedtls_mpi", !100, i64 0, !18, i64 8, !18, i64 10}
!102 = !{!"mbedtls_ecp_point", !101, i64 0, !101, i64 16, !101, i64 32}
!103 = !{!"p1 _ZTS17mbedtls_ecp_point", !8, i64 0}
!104 = !{!"mbedtls_ecp_group", !5, i64 0, !101, i64 8, !101, i64 24, !101, i64 40, !102, i64 56, !101, i64 104, !12, i64 120, !12, i64 128, !5, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !103, i64 176, !12, i64 184}
!105 = !{!15, !8, i64 8}
!106 = !{!"psa_pake_cipher_suite_s", !5, i64 0, !4, i64 4, !4, i64 5, !18, i64 6, !5, i64 8}
!107 = !{!"psa_crypto_driver_pake_inputs_s", !21, i64 0, !12, i64 8, !21, i64 16, !12, i64 24, !21, i64 32, !12, i64 40, !20, i64 48, !106, i64 72}
!108 = !{!107, !12, i64 8}
!109 = !{!107, !21, i64 0}
!110 = !{!107, !12, i64 24}
!111 = !{!107, !21, i64 16}
!112 = !{!107, !12, i64 40}
!113 = !{!107, !21, i64 32}
!114 = !{i64 0, i64 4, !35, i64 4, i64 1, !29, i64 5, i64 1, !29, i64 6, i64 2, !34, i64 8, i64 4, !35}
!115 = !{!"psa_pake_operation_s", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !4, i64 16, !4, i64 32}
!116 = !{!115, !4, i64 12}
!117 = !{!115, !5, i64 4}
!118 = !{!115, !5, i64 8}
!119 = !{!"psa_jpake_computation_stage_s", !5, i64 0, !5, i64 4, !4, i64 8, !4, i64 9, !4, i64 10}
!120 = !{!119, !4, i64 10}
!121 = !{!115, !5, i64 0}
!122 = !{!119, !5, i64 0}
!123 = !{!119, !4, i64 8}
!124 = !{!119, !4, i64 9}
!125 = !{!119, !5, i64 4}
!126 = distinct !{!126, !92}
!127 = !{!84, !4, i64 0}
!128 = !{!84, !4, i64 1}
!129 = distinct !{!129, !92}
!130 = distinct !{!130, !92, !136, !137}
!131 = distinct !{!131, !92, !136, !137}
!132 = distinct !{!132, !92, !137, !136}
!133 = !{!93, !12, i64 176}
!134 = !{!93, !4, i64 248}
!135 = !{!93, !5, i64 252}
!136 = !{!"llvm.loop.isvectorized", i32 1}
!137 = !{!"llvm.loop.unroll.runtime.disable"}
!138 = !{!"branch_weights", i32 4, i32 12}
!139 = distinct !{!139, !92}
!140 = !{!104, !12, i64 128}
!141 = !{!84, !12, i64 64}
!142 = !{!84, !21, i64 56}
!143 = !{!"mbedtls_ecp_keypair", !104, i64 0, !101, i64 192, !102, i64 208}
!144 = !{!"", !143, i64 0, !5, i64 256}
!145 = !{!"psa_generate_key_iop_s", !5, i64 0, !144, i64 8, !20, i64 272, !5, i64 296, !5, i64 300}
!146 = !{!145, !5, i64 300}
!147 = !{!16, !8, i64 8}
!148 = !{!16, !8, i64 16}
!149 = distinct !{null}
!150 = distinct !{null, null}
!151 = distinct !{ptr @mbedtls_psa_crypto_free, null}
!152 = !{!15, !8, i64 0}
!153 = !{!107, !5, i64 72}
!154 = !{!106, !5, i64 0}
!155 = !{!106, !18, i64 6}
!156 = !{!21, !21, i64 0}
!157 = !{i64 0, i64 8, !156, i64 8, i64 8, !27, i64 16, i64 8, !156, i64 24, i64 8, !27, i64 32, i64 8, !156, i64 40, i64 8, !27, i64 48, i64 2, !34, i64 50, i64 2, !34, i64 52, i64 4, !35, i64 56, i64 4, !35, i64 60, i64 4, !35, i64 64, i64 4, !35, i64 68, i64 4, !35, i64 72, i64 4, !35, i64 76, i64 1, !29, i64 77, i64 1, !29, i64 78, i64 2, !34, i64 80, i64 4, !35}
end_hunk_2
