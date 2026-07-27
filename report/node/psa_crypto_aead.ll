inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@mbedtls_psa_aead_encrypt:bb.a
bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %i.b, align 1, !tbaa !8
  %i.r = zext i8 %i.q to i64
  %i.s = add i64 %9, %i.r
  store i64 %i.s, ptr %12, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.i, %bb.a
  %.1.ph = phi i32 [ %i.o, %bb.h ], [ 0, %bb.i ], [ -138, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %.pr = load i32, ptr %13, align 8, !tbaa !11
  switch i32 %.pr, label %mbedtls_psa_aead_abort.exit [
    i32 89129216, label %bb.k
    i32 89129472, label %bb.l
    i32 84935936, label %.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @mbedtls_ccm_free(ptr noundef nonnull %i.t) #4
  br label %mbedtls_psa_aead_abort.exit

bb.l:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @mbedtls_gcm_free(ptr noundef nonnull %i.u) #4
  br label %mbedtls_psa_aead_abort.exit

.thread:                                          ; preds = %bb.f, %bb.j
  %.141 = phi i32 [ %.1.ph, %bb.j ], [ -134, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @mbedtls_chachapoly_free(ptr noundef nonnull %i.v) #4
  br label %mbedtls_psa_aead_abort.exit

mbedtls_psa_aead_abort.exit:                      ; preds = %.thread, %bb.l, %bb.k, %bb.j, %bb.c
  %.0 = phi i32 [ -134, %bb.c ], [ %.1.ph, %bb.j ], [ %.1.ph, %bb.k ], [ %.1.ph, %bb.l ], [ %.141, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_aead_setup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !14
  %i.f = zext i16 %i.e to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !12
  %i.g = load i16, ptr %1, align 4, !tbaa !17
  %i.h = call i32 @mbedtls_cipher_values_from_psa(i32 noundef %3, i16 noundef zeroext %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %3, -4161537
  switch i32 %i.i, label %bb.j [
    i32 88080640, label %bb.c
    i32 88080896, label %bb.e
    i32 83887360, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  store i32 89129216, ptr %0, align 8, !tbaa !11
  %i.j = load i16, ptr %1, align 4, !tbaa !17
  %i.k = and i16 %i.j, 30464
  %.not41 = icmp eq i16 %i.k, 9216
  br i1 %.not41, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @mbedtls_ccm_init(ptr noundef nonnull %i.l) #4
  %i.m = load i32, ptr %i.a, align 4, !tbaa !4
  %i.n = load i64, ptr %i.c, align 8, !tbaa !12
  %i.o = trunc i64 %i.n to i32
  %i.p = call i32 @mbedtls_ccm_setkey(ptr noundef nonnull %i.l, i32 noundef %i.m, ptr noundef %2, i32 noundef %i.o) #4
  %i.q = call i32 @mbedtls_to_psa_error(i32 noundef %i.p) #4 ; 2 uses
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %bb.i, label %bb.j

bb.e:                                             ; preds = %bb.b
  store i32 89129472, ptr %0, align 8, !tbaa !11
  %i.r = load i16, ptr %1, align 4, !tbaa !17
  %i.s = and i16 %i.r, 30464
  %.not39 = icmp eq i16 %i.s, 9216
  br i1 %.not39, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @mbedtls_gcm_init(ptr noundef nonnull %i.t) #4
  %i.u = load i32, ptr %i.a, align 4, !tbaa !4
  %i.v = load i64, ptr %i.c, align 8, !tbaa !12
  %i.w = trunc i64 %i.v to i32
  %i.x = call i32 @mbedtls_gcm_setkey(ptr noundef nonnull %i.t, i32 noundef %i.u, ptr noundef %2, i32 noundef %i.w) #4
  %i.y = call i32 @mbedtls_to_psa_error(i32 noundef %i.x) #4 ; 2 uses
  %.not40 = icmp eq i32 %i.y, 0
  br i1 %.not40, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.b
  store i32 84935936, ptr %0, align 8, !tbaa !11
  %.not37 = icmp eq i32 %3, 84935936
  br i1 %.not37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @mbedtls_chachapoly_init(ptr noundef nonnull %i.z) #4
  %i.aa = call i32 @mbedtls_chachapoly_setkey(ptr noundef nonnull %i.z, ptr noundef %2) #4
  %i.ab = call i32 @mbedtls_to_psa_error(i32 noundef %i.aa) #4 ; 2 uses
  %.not38 = icmp eq i32 %i.ab, 0
  br i1 %.not38, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.d
  %.val = load i16, ptr %1, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.val, ptr %i.ac, align 4, !tbaa !18
  %i.ad = lshr i32 %3, 16
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.i
  %.0 = phi i32 [ -134, %bb.g ], [ %i.ab, %bb.h ], [ %i.h, %bb.a ], [ -135, %bb.c ], [ 0, %bb.i ], [ %i.q, %bb.d ], [ -135, %bb.e ], [ %i.y, %bb.f ], [ -134, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare i32 @mbedtls_to_psa_error(i32 noundef) local_unnamed_addr #3

declare i32 @mbedtls_ccm_encrypt_and_tag(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_gcm_crypt_and_tag(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_chachapoly_encrypt_and_tag(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @mbedtls_psa_aead_abort(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  switch i32 %i.a, label %bb.e [
    i32 89129216, label %bb.b
    i32 89129472, label %bb.c
    i32 84935936, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @mbedtls_ccm_free(ptr noundef nonnull %i.b) #4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @mbedtls_gcm_free(ptr noundef nonnull %i.c) #4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @mbedtls_chachapoly_free(ptr noundef nonnull %i.d) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, -2
  store i8 %i.g, ptr %i.e, align 2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_aead_decrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, ptr nofree noundef writeonly captures(none) %12) local_unnamed_addr #0 {
bb.a:
  %13 = alloca %struct.mbedtls_psa_aead_operation_t, align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %13, i8 0, i64 432, i1 false)
  %i.a = call fastcc i32 @psa_aead_setup(ptr noundef nonnull %13, ptr noundef %0, ptr noundef %1, i32 noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %psa_aead_unpadded_locate_tag.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 7 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 4 uses
  %i.e = icmp ult i64 %9, %i.d
  br i1 %i.e, label %psa_aead_unpadded_locate_tag.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %9, %i.d                     ; 5 uses
  %i.g = icmp ugt i64 %i.f, %11
  br i1 %i.g, label %psa_aead_unpadded_locate_tag.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 %i.f ; 3 uses
  %i.i = load i32, ptr %13, align 8, !tbaa !11
  switch i32 %i.i, label %bb.n [
    i32 89129216, label %bb.e
    i32 89129472, label %bb.f
    i32 84935936, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.k = call i32 @mbedtls_ccm_auth_decrypt(ptr noundef nonnull %i.j, i64 noundef %i.f, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %i.h, i64 noundef %i.d) #4
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.m = call i32 @mbedtls_gcm_auth_decrypt(ptr noundef nonnull %i.l, i64 noundef %i.f, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %i.h, i64 noundef %i.d, ptr noundef %8, ptr noundef %10) #4
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not41 = icmp eq i8 %i.c, 16
  br i1 %.not41, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.o = call i32 @mbedtls_chachapoly_auth_decrypt(ptr noundef nonnull %i.n, i64 noundef %i.f, ptr noundef %4, ptr noundef %6, i64 noundef %7, ptr noundef %i.h, ptr noundef %8, ptr noundef %10) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  %.sink = phi i32 [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.k, %bb.e ]
  %i.p = call i32 @mbedtls_to_psa_error(i32 noundef %.sink) #4 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %psa_aead_unpadded_locate_tag.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i8, ptr %i.b, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i64
  %i.t = sub i64 %9, %i.s
  store i64 %i.t, ptr %12, align 8, !tbaa !12
  br label %psa_aead_unpadded_locate_tag.exit.thread

psa_aead_unpadded_locate_tag.exit.thread:         ; preds = %bb.c, %bb.b, %bb.i, %bb.j, %bb.a
  %.1.ph = phi i32 [ %i.p, %bb.i ], [ 0, %bb.j ], [ %i.a, %bb.a ], [ -138, %bb.c ], [ -135, %bb.b ] ; 4 uses
  %.pr = load i32, ptr %13, align 8, !tbaa !11
  switch i32 %.pr, label %mbedtls_psa_aead_abort.exit [
    i32 89129216, label %bb.k
    i32 89129472, label %bb.l
    i32 84935936, label %.thread
  ]

bb.k:                                             ; preds = %psa_aead_unpadded_locate_tag.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @mbedtls_ccm_free(ptr noundef nonnull %i.u) #4
  br label %mbedtls_psa_aead_abort.exit

bb.l:                                             ; preds = %psa_aead_unpadded_locate_tag.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @mbedtls_gcm_free(ptr noundef nonnull %i.v) #4
  br label %mbedtls_psa_aead_abort.exit

.thread:                                          ; preds = %bb.g, %psa_aead_unpadded_locate_tag.exit.thread
  %.149 = phi i32 [ %.1.ph, %psa_aead_unpadded_locate_tag.exit.thread ], [ -134, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @mbedtls_chachapoly_free(ptr noundef nonnull %i.w) #4
  br label %mbedtls_psa_aead_abort.exit

mbedtls_psa_aead_abort.exit:                      ; preds = %psa_aead_unpadded_locate_tag.exit.thread, %bb.k, %bb.l, %.thread
  %.150 = phi i32 [ %.1.ph, %psa_aead_unpadded_locate_tag.exit.thread ], [ %.1.ph, %bb.k ], [ %.1.ph, %bb.l ], [ %.149, %.thread ] ; 2 uses
  %i.x = icmp eq i32 %.150, 0
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %mbedtls_psa_aead_abort.exit
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = zext i8 %i.z to i64
  %i.ab = sub i64 %9, %i.aa
  store i64 %i.ab, ptr %12, align 8, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %mbedtls_psa_aead_abort.exit, %bb.m, %bb.d
  %.036 = phi i32 [ -134, %bb.d ], [ 0, %bb.m ], [ %.150, %mbedtls_psa_aead_abort.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  ret i32 %.036
}

declare i32 @mbedtls_ccm_auth_decrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_gcm_auth_decrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_chachapoly_auth_decrypt(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_aead_encrypt_setup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @psa_aead_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2
  %i.e = or i8 %i.d, 1
  store i8 %i.e, ptr %i.c, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_aead_decrypt_setup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @psa_aead_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_aead_set_nonce(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  switch i32 %i.a, label %bb.f [
    i32 89129472, label %bb.b
    i32 89129216, label %bb.c
    i32 84935936, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = load i8, ptr %i.c, align 2
  %i.e = and i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i32
  %i.g = tail call i32 @mbedtls_gcm_starts(ptr noundef nonnull %i.b, i32 noundef %i.f, ptr noundef %1, i64 noundef %2) #4
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i8, ptr %i.i, align 2
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i32
  %i.m = tail call i32 @mbedtls_ccm_starts(ptr noundef nonnull %i.h, i32 noundef %i.l, ptr noundef %1, i64 noundef %2) #4
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 12
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.p = load i8, ptr %i.o, align 2
  %i.q = and i8 %i.p, 1
  %i.r = xor i8 %i.q, 1
  %i.s = zext nneg i8 %i.r to i32
  %i.t = tail call i32 @mbedtls_chachapoly_starts(ptr noundef nonnull %i.n, ptr noundef %1, i32 noundef %i.s) #4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e, %bb.b
  %.sink = phi i32 [ %i.g, %bb.b ], [ %i.t, %bb.e ], [ %i.m, %bb.c ]
  %i.u = tail call i32 @mbedtls_to_psa_error(i32 noundef %.sink) #4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.d
  %.016 = phi i32 [ -134, %bb.a ], [ -135, %bb.d ], [ %i.u, %.sink.split ]
  ret i32 %.016
}

declare i32 @mbedtls_gcm_starts(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_ccm_starts(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_chachapoly_starts(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_aead_set_lengths(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  %i.b = icmp eq i32 %i.a, 89129216
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i64
  %i.g = tail call i32 @mbedtls_ccm_set_lengths(ptr noundef nonnull %i.c, i64 noundef %1, i64 noundef %2, i64 noundef %i.f) #4
  %i.h = tail call i32 @mbedtls_to_psa_error(i32 noundef %i.g) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @mbedtls_ccm_set_lengths(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_aead_update_ad(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  switch i32 %i.a, label %bb.e [
    i32 89129472, label %bb.b
    i32 89129216, label %bb.c
    i32 84935936, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call i32 @mbedtls_gcm_update_ad(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2) #4
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call i32 @mbedtls_ccm_update_ad(ptr noundef nonnull %i.d, ptr noundef %1, i64 noundef %2) #4
end_hunk_0
