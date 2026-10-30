Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_crypto_ecp?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@mbedtls_psa_ecp_export_key:bb.a
  %.not24 = icmp eq i32 %i.j, 0
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = tail call i32 @mbedtls_ecp_write_key_ext(ptr noundef %1, ptr noundef %4, ptr noundef %2, i64 noundef %3) #7
  %i.l = tail call i32 @mbedtls_to_psa_error(i32 noundef %i.k) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.f
  %.0 = phi i32 [ %i.l, %bb.f ], [ %i.h, %bb.c ], [ %i.j, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @mbedtls_ecp_is_zero(ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_ecp_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_psa_get_random(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @mbedtls_ecp_point_write_binary(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @mbedtls_ecp_write_key_ext(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_psa_ecp_export_public_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.b = load i16, ptr %0, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !23
  %i.e = zext i16 %i.d to i64
  %i.f = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %i.b, i64 noundef %i.e, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %0, align 4, !tbaa !22     ; 2 uses
  %i.h = and i16 %i.g, -12544
  switch i16 %i.h, label %bb.d [
    i16 16640, label %bb.c
    i16 17408, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = and i16 %i.g, 255
  %i.j = or disjoint i16 %i.i, 16640
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi i16 [ %i.j, %bb.c ], [ 16640, %bb.b ]
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.m = tail call i32 @mbedtls_psa_ecp_export_key(i16 noundef zeroext %i.k, ptr noundef %i.l, ptr noundef %3, i64 noundef %4, ptr noundef %5)
  tail call void @mbedtls_ecp_keypair_free(ptr noundef %i.l) #7
  tail call void @free(ptr noundef %i.l) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.m, %bb.d ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_psa_ecp_generate_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mbedtls_ecp_keypair, align 8 ; 8 uses
  %i.a = load i16, ptr %0, align 4, !tbaa !22     ; 2 uses
  %i.b = and i16 %i.a, -12544
  switch i16 %i.b, label %bb.c [
    i16 16640, label %bb.b
    i16 17408, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = trunc i16 %i.a to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !23
  %i.g = zext i16 %i.f to i64
  %i.h = tail call i32 @mbedtls_ecc_group_from_psa(i8 noundef zeroext %i.d, i64 noundef %i.g) #7 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @mbedtls_ecp_keypair_init(ptr noundef nonnull %4) #7
  %i.j = call i32 @mbedtls_ecp_group_load(ptr noundef nonnull %4, i32 noundef %i.h) #7 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.l = call i32 @mbedtls_ecp_gen_privkey(ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef nonnull @mbedtls_psa_get_random, ptr noundef null) #7 ; 2 uses
  %.not18 = icmp eq i32 %i.l, 0
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @mbedtls_ecp_write_key_ext(ptr noundef nonnull %4, ptr noundef %3, ptr noundef %1, i64 noundef %2) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  call void @mbedtls_ecp_keypair_free(ptr noundef nonnull %4) #7
  %i.n = call i32 @mbedtls_to_psa_error(i32 noundef %.0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.013 = phi i32 [ %i.n, %bb.g ], [ -134, %bb.c ]
  ret i32 %.013
}

declare i32 @mbedtls_ecp_gen_privkey(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_psa_ecdsa_sign_hash(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  %10 = alloca %struct.mbedtls_mpi, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.b = load i16, ptr %0, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !23
  %i.e = zext i16 %i.d to i64
  %i.f = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %i.b, i64 noundef %i.e, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = add i64 %i.i, 7
  %i.k = lshr i64 %i.j, 3                         ; 4 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %9) #7
  call void @mbedtls_mpi_init(ptr noundef nonnull %10) #7
  %i.l = shl nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.m = icmp ult i64 %7, %i.l
  br i1 %i.m, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %3, 256
  %.not41 = icmp eq i32 %i.n, 0
  br i1 %.not41, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %3, -256
  switch i32 %i.o, label %switch.early.test [
    i32 100664064, label %bb.e
    i32 100668160, label %bb.e
    i32 100665600, label %bb.e
  ]

switch.early.test:                                ; preds = %bb.d
  %i.p = and i32 %3, -512
  switch i32 %i.p, label %bb.f [
    i32 100664832, label %bb.e
    i32 100664320, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %switch.early.test, %switch.early.test
  %i.q = and i32 %3, 255
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.early.test
  %i.r = phi i32 [ 0, %switch.early.test ], [ %i.q, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.t = call i32 @mbedtls_ecdsa_sign_det_ext(ptr noundef nonnull %i.g, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %i.s, ptr noundef %4, i64 noundef %5, i32 noundef %i.r, ptr noundef nonnull @mbedtls_psa_get_random, ptr noundef null) #7 ; 2 uses
  %.not44 = icmp eq i32 %i.t, 0
  br i1 %.not44, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.v = call i32 @mbedtls_ecdsa_sign(ptr noundef nonnull %i.g, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %i.u, ptr noundef %4, i64 noundef %5, ptr noundef nonnull @mbedtls_psa_get_random, ptr noundef null) #7 ; 2 uses
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = call i32 @mbedtls_mpi_write_binary(ptr noundef nonnull %9, ptr noundef %6, i64 noundef %i.k) #7 ; 2 uses
  %.not45 = icmp eq i32 %i.w, 0
  br i1 %.not45, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 %i.k
  %i.y = call i32 @mbedtls_mpi_write_binary(ptr noundef nonnull %10, ptr noundef %i.x, i64 noundef %i.k) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.b, %bb.i, %bb.h, %bb.g
  %.033.a = phi i32 [ %i.v, %bb.g ], [ %i.w, %bb.h ], [ %i.y, %bb.i ], [ %i.t, %bb.f ], [ -138, %bb.b ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %9) #7
  call void @mbedtls_mpi_free(ptr noundef nonnull %10) #7
  %11 = icmp eq i32 %.033.a, 0
  br i1 %11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.l, ptr %8, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @mbedtls_ecp_keypair_free(ptr noundef nonnull %i.g) #7
  call void @free(ptr noundef nonnull %i.g) #7
  %i.z = call i32 @mbedtls_to_psa_error(i32 noundef %.033.a) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.034 = phi i32 [ %i.f, %bb.a ], [ %i.z, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.034
}

declare void @mbedtls_mpi_init(ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_ecdsa_sign_det_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_ecdsa_sign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_mpi_write_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @mbedtls_mpi_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_psa_ecp_load_public_part(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = tail call i32 @mbedtls_ecp_is_zero(ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = tail call i32 @mbedtls_ecp_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @mbedtls_psa_get_random, ptr noundef null) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call i32 @mbedtls_to_psa_error(i32 noundef %.0) #7
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_psa_ecdsa_verify_hash(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.b = load i16, ptr %0, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !23
  %i.e = zext i16 %i.d to i64
  %i.f = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %i.b, i64 noundef %i.e, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !19   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = add i64 %i.i, 7
  %i.k = lshr i64 %i.j, 3                         ; 4 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %8) #7
  call void @mbedtls_mpi_init(ptr noundef nonnull %9) #7
  %i.l = shl nuw nsw i64 %i.k, 1
  %.not24 = icmp eq i64 %7, %i.l
  br i1 %.not24, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %8, ptr noundef %6, i64 noundef %i.k) #7
  %i.n = call i32 @mbedtls_to_psa_error(i32 noundef %i.m) #7 ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 %i.k
  %i.p = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %9, ptr noundef %i.o, i64 noundef %i.k) #7
  %i.q = call i32 @mbedtls_to_psa_error(i32 noundef %i.p) #7 ; 2 uses
  %.not26 = icmp eq i32 %i.q, 0
  br i1 %.not26, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 3 uses
  %i.s = call i32 @mbedtls_ecp_is_zero(ptr noundef nonnull %i.r) #7
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %mbedtls_psa_ecp_load_public_part.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.v = call i32 @mbedtls_ecp_mul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull @mbedtls_psa_get_random, ptr noundef null) #7
  br label %mbedtls_psa_ecp_load_public_part.exit

mbedtls_psa_ecp_load_public_part.exit:            ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.v, %bb.f ], [ 0, %bb.e ]
  %i.w = call i32 @mbedtls_to_psa_error(i32 noundef %.0.i) #7 ; 2 uses
  %.not27 = icmp eq i32 %i.w, 0
  br i1 %.not27, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mbedtls_psa_ecp_load_public_part.exit
  %i.x = call i32 @mbedtls_ecdsa_verify(ptr noundef nonnull %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull %i.r, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %i.y = call i32 @mbedtls_to_psa_error(i32 noundef %i.x) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %mbedtls_psa_ecp_load_public_part.exit, %bb.d, %bb.c, %bb.g
  %.0 = phi i32 [ %i.y, %bb.g ], [ %i.n, %bb.c ], [ %i.q, %bb.d ], [ %i.w, %mbedtls_psa_ecp_load_public_part.exit ], [ -149, %bb.b ]
  call void @mbedtls_mpi_free(ptr noundef nonnull %8) #7
  call void @mbedtls_mpi_free(ptr noundef nonnull %9) #7
  call void @mbedtls_ecp_keypair_free(ptr noundef nonnull %i.g) #7
  call void @free(ptr noundef nonnull %i.g) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.019 = phi i32 [ %.0, %bb.h ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.019
}

declare i32 @mbedtls_mpi_read_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_ecdsa_verify(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_psa_key_agreement_ecdh(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %struct.mbedtls_ecdh_context, align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = load i16, ptr %0, align 4, !tbaa !22     ; 2 uses
  %i.e = and i16 %i.d, -256
  %i.f = icmp eq i16 %i.e, 28928
  %i.g = and i32 %3, -151060480
  %i.h = icmp eq i32 %i.g, 131072
  %or.cond = and i1 %i.h, %i.f
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = zext i16 %i.j to i64
  %i.l = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %i.d, i64 noundef %i.k, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %i.o = call zeroext i8 @mbedtls_ecc_group_to_psa(i32 noundef %i.n, ptr noundef nonnull %i.c) #7
  call void @mbedtls_ecdh_init(ptr noundef nonnull %9) #7
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.p, 16640
  %i.r = load i64, ptr %i.c, align 8, !tbaa !24
  %i.s = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %i.q, i64 noundef %i.r, ptr noundef %4, i64 noundef %5, ptr noundef nonnull %i.b) ; 2 uses
  %.not30 = icmp eq i32 %i.s, 0
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !19 ; 3 uses
  br i1 %.not30, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @mbedtls_ecdh_get_params(ptr noundef nonnull %9, ptr noundef %.pre.pre, i32 noundef 1) #7
  %i.u = call i32 @mbedtls_to_psa_error(i32 noundef %i.t) #7 ; 2 uses
  %.not31 = icmp eq i32 %i.u, 0
  br i1 %.not31, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = call i32 @mbedtls_ecdh_get_params(ptr noundef nonnull %9, ptr noundef nonnull %i.m, i32 noundef 0) #7
  %i.w = call i32 @mbedtls_to_psa_error(i32 noundef %i.v) #7 ; 2 uses
  %.not32 = icmp eq i32 %i.w, 0
  br i1 %.not32, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 @mbedtls_ecdh_calc_secret(ptr noundef nonnull %9, ptr noundef %8, ptr noundef %6, i64 noundef %7, ptr noundef nonnull @mbedtls_psa_get_random, ptr noundef null) #7
  %i.y = call i32 @mbedtls_to_psa_error(i32 noundef %i.x) #7 ; 2 uses
  %.not33 = icmp eq i32 %i.y, 0
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.c, align 8, !tbaa !24
  %i.aa = add i64 %i.z, 7
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = load i64, ptr %8, align 8, !tbaa !24
  %.not34 = icmp eq i64 %i.ab, %i.ac
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.ph = phi i32 [ -151, %bb.g ], [ %i.y, %bb.f ], [ %i.w, %bb.e ], [ %i.u, %bb.d ], [ %i.s, %bb.c ]
  call void @mbedtls_platform_zeroize(ptr noundef %6, i64 noundef %7) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.040 = phi i32 [ %.0.ph, %bb.h ], [ 0, %bb.g ]
  call void @mbedtls_ecdh_free(ptr noundef nonnull %9) #7
  call void @mbedtls_ecp_keypair_free(ptr noundef %.pre.pre) #7
  call void @free(ptr noundef %.pre.pre) #7
  call void @mbedtls_ecp_keypair_free(ptr noundef nonnull %i.m) #7
  call void @free(ptr noundef nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.023 = phi i32 [ %.040, %bb.i ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.1 = phi i32 [ %.023, %bb.j ], [ -135, %bb.a ]
  ret i32 %.1
}

declare zeroext i8 @mbedtls_ecc_group_to_psa(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @mbedtls_ecdh_init(ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_ecdh_get_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mbedtls_ecdh_calc_secret(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @mbedtls_ecdh_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

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
!9 = !{!"p1 long", !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"mbedtls_mpi", !9, i64 0, !10, i64 8, !10, i64 10}
!12 = !{!"mbedtls_ecp_point", !11, i64 0, !11, i64 16, !11, i64 32}
!13 = !{!"long", !4, i64 0}
!14 = !{!"p1 _ZTS17mbedtls_ecp_point", !8, i64 0}
!15 = !{!"mbedtls_ecp_group", !5, i64 0, !11, i64 8, !11, i64 24, !11, i64 40, !12, i64 56, !11, i64 104, !13, i64 120, !13, i64 128, !5, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !14, i64 176, !13, i64 184}
!16 = !{!"mbedtls_ecp_keypair", !15, i64 0, !11, i64 192, !12, i64 208}
!17 = !{!16, !5, i64 0}
!18 = !{!"p1 _ZTS19mbedtls_ecp_keypair", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"psa_key_policy_s", !5, i64 0, !5, i64 4, !5, i64 8}
!21 = !{!"psa_key_attributes_s", !10, i64 0, !10, i64 2, !5, i64 4, !20, i64 8, !5, i64 20}
!22 = !{!21, !10, i64 0}
!23 = !{!21, !10, i64 2}
!24 = !{!13, !13, i64 0}
!25 = !{!16, !13, i64 120}
!26 = !{!16, !13, i64 128}
end_hunk_0
