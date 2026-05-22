inline.NumInlined: 31
inline.NumDeleted: 3
begin_hunk_0_@evp_cipher_param_to_asn1_ex:bb.a
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %evp_cipher_set_asn1_aead_params.exit

EVP_CIPHER_get_flags.exit:                        ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = and i64 %i.h, 16777216
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %EVP_CIPHER_get_mode.exit, label %bb.j

EVP_CIPHER_get_mode.exit:                         ; preds = %EVP_CIPHER_get_flags.exit
  %i.k = trunc i64 %i.h to i32
  %i.l = and i32 %i.k, 983047
  switch i32 %i.l, label %bb.i [
    i32 65538, label %bb.e
    i32 6, label %bb.g
    i32 7, label %evp_cipher_set_asn1_aead_params.exit.thread31
    i32 65537, label %evp_cipher_set_asn1_aead_params.exit.thread31
    i32 65539, label %evp_cipher_set_asn1_aead_params.exit.thread31
  ]

bb.e:                                             ; preds = %EVP_CIPHER_get_mode.exit
  %i.m = tail call i32 @EVP_CIPHER_is_a(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2)
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %evp_cipher_set_asn1_aead_params.exit.thread.thread37, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ASN1_TYPE_set(ptr noundef %1, i32 noundef 5, ptr noundef null) #12
  br label %evp_cipher_set_asn1_aead_params.exit.thread.thread37

bb.g:                                             ; preds = %EVP_CIPHER_get_mode.exit
  %i.n = icmp eq ptr %1, null
  %i.o = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %evp_cipher_set_asn1_aead_params.exit.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23
  %i.u = tail call i32 @ossl_asn1_type_set_octetstring_int(ptr noundef nonnull %1, i64 noundef %i.r, ptr noundef nonnull %2, i32 noundef %i.t) #12
  br label %evp_cipher_set_asn1_aead_params.exit

bb.i:                                             ; preds = %EVP_CIPHER_get_mode.exit
  %i.v = tail call i32 @EVP_CIPHER_set_asn1_iv(ptr noundef nonnull %0, ptr noundef %1)
  br label %evp_cipher_set_asn1_aead_params.exit

bb.j:                                             ; preds = %EVP_CIPHER_get_flags.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %evp_cipher_set_asn1_aead_params.exit.thread31, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.y, align 8, !tbaa !29
  %i.z = call i32 @EVP_CIPHER_CTX_get_algor_params(ptr noundef nonnull %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %evp_cipher_set_asn1_aead_params.exit.thread

evp_cipher_set_asn1_aead_params.exit:             ; preds = %bb.h, %bb.d, %bb.i
  %.0 = phi i32 [ %i.v, %bb.i ], [ %i.u, %bb.h ], [ %i.f, %bb.d ] ; 2 uses
  %i.aa = icmp eq i32 %.0, -2
  br i1 %i.aa, label %evp_cipher_set_asn1_aead_params.exit.thread31, label %evp_cipher_set_asn1_aead_params.exit.thread

evp_cipher_set_asn1_aead_params.exit.thread31:    ; preds = %bb.j, %EVP_CIPHER_get_mode.exit, %EVP_CIPHER_get_mode.exit, %EVP_CIPHER_get_mode.exit, %evp_cipher_set_asn1_aead_params.exit
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef nonnull @__func__.evp_cipher_param_to_asn1_ex) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 107, ptr noundef null) #12
  br label %evp_cipher_set_asn1_aead_params.exit.thread.thread37

evp_cipher_set_asn1_aead_params.exit.thread:      ; preds = %bb.k, %evp_cipher_set_asn1_aead_params.exit
  %.028 = phi i32 [ %.0, %evp_cipher_set_asn1_aead_params.exit ], [ %i.z, %bb.k ] ; 3 uses
  %i.ab = icmp slt i32 %.028, 1
  br i1 %i.ab, label %evp_cipher_set_asn1_aead_params.exit.thread.thread, label %evp_cipher_set_asn1_aead_params.exit.thread.thread37

evp_cipher_set_asn1_aead_params.exit.thread.thread: ; preds = %bb.a, %bb.b, %bb.g, %evp_cipher_set_asn1_aead_params.exit.thread
  %.02835 = phi i32 [ %.028, %evp_cipher_set_asn1_aead_params.exit.thread ], [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %bb.g ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @__func__.evp_cipher_param_to_asn1_ex) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 122, ptr noundef null) #12
  br label %evp_cipher_set_asn1_aead_params.exit.thread.thread37

evp_cipher_set_asn1_aead_params.exit.thread.thread37: ; preds = %bb.f, %bb.e, %evp_cipher_set_asn1_aead_params.exit.thread, %evp_cipher_set_asn1_aead_params.exit.thread.thread, %evp_cipher_set_asn1_aead_params.exit.thread31
  %.029 = phi i32 [ %.028, %evp_cipher_set_asn1_aead_params.exit.thread ], [ %.02835, %evp_cipher_set_asn1_aead_params.exit.thread.thread ], [ -2, %evp_cipher_set_asn1_aead_params.exit.thread31 ], [ 1, %bb.e ], [ 1, %bb.f ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.029, i32 -1)
  ret i32 %spec.store.select
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @EVP_CIPHER_asn1_to_param(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @evp_cipher_asn1_to_param_ex(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @evp_cipher_asn1_to_param_ex(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.X509_algor_st, align 8      ; 5 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread.thread34.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread.thread34.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %EVP_CIPHER_get_flags.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %bb.i

EVP_CIPHER_get_flags.exit:                        ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = and i64 %i.h, 16777216
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %EVP_CIPHER_get_mode.exit, label %bb.g

EVP_CIPHER_get_mode.exit:                         ; preds = %EVP_CIPHER_get_flags.exit
  %i.k = trunc i64 %i.h to i32
  %i.l = and i32 %i.k, 983047
  switch i32 %i.l, label %bb.f [
    i32 65538, label %.thread.thread34
    i32 6, label %bb.e
    i32 7, label %.thread.thread34.sink.split
    i32 65537, label %.thread.thread34.sink.split
    i32 65539, label %.thread.thread34.sink.split
  ]

bb.e:                                             ; preds = %EVP_CIPHER_get_mode.exit
  %i.m = tail call i32 @evp_cipher_get_asn1_aead_params(ptr nonnull poison, ptr noundef %1, ptr noundef %2)
  br label %.thread

bb.f:                                             ; preds = %EVP_CIPHER_get_mode.exit
  %i.n = tail call i32 @EVP_CIPHER_get_asn1_iv(ptr noundef nonnull %0, ptr noundef %1)
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.thread.thread34, label %.thread.thread34.sink.split

bb.g:                                             ; preds = %EVP_CIPHER_get_flags.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %.not23 = icmp eq ptr %i.q, null
  br i1 %.not23, label %.thread.thread34.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.r, align 8, !tbaa !29
  %i.s = call i32 @EVP_CIPHER_CTX_set_algor_params(ptr noundef nonnull %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.0 = phi i32 [ %i.s, %bb.h ], [ %i.f, %bb.d ]  ; 2 uses
  %i.t = icmp eq i32 %.0, -2
  br i1 %i.t, label %.thread.thread34.sink.split, label %.thread

.thread:                                          ; preds = %bb.e, %bb.i
  %.025 = phi i32 [ %.0, %bb.i ], [ %i.m, %bb.e ] ; 3 uses
  %i.u = icmp slt i32 %.025, 1
  br i1 %i.u, label %.thread.thread34.sink.split, label %.thread.thread34

.thread.thread34.sink.split:                      ; preds = %.thread, %bb.f, %bb.b, %bb.a, %bb.i, %bb.g, %EVP_CIPHER_get_mode.exit, %EVP_CIPHER_get_mode.exit, %EVP_CIPHER_get_mode.exit
  %.sink39 = phi i32 [ 213, %bb.i ], [ 213, %EVP_CIPHER_get_mode.exit ], [ 213, %EVP_CIPHER_get_mode.exit ], [ 213, %EVP_CIPHER_get_mode.exit ], [ 213, %bb.g ], [ 215, %bb.a ], [ 215, %bb.b ], [ 215, %bb.f ], [ 215, %.thread ]
  %.sink = phi i32 [ 107, %bb.i ], [ 107, %EVP_CIPHER_get_mode.exit ], [ 107, %EVP_CIPHER_get_mode.exit ], [ 107, %EVP_CIPHER_get_mode.exit ], [ 107, %bb.g ], [ 122, %bb.a ], [ 122, %bb.b ], [ 122, %bb.f ], [ 122, %.thread ]
  %.026.ph = phi i32 [ -2, %bb.i ], [ -2, %EVP_CIPHER_get_mode.exit ], [ -2, %EVP_CIPHER_get_mode.exit ], [ -2, %EVP_CIPHER_get_mode.exit ], [ -2, %bb.g ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.f ], [ %.025, %.thread ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef %.sink39, ptr noundef nonnull @__func__.evp_cipher_asn1_to_param_ex) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, ptr noundef null) #12
  br label %.thread.thread34

.thread.thread34:                                 ; preds = %.thread.thread34.sink.split, %bb.f, %EVP_CIPHER_get_mode.exit, %.thread
  %.026 = phi i32 [ %.025, %.thread ], [ 1, %EVP_CIPHER_get_mode.exit ], [ 1, %bb.f ], [ %.026.ph, %.thread.thread34.sink.split ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.026, i32 -1)
  ret i32 %spec.store.select
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 17) i32 @EVP_CIPHER_get_asn1_iv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %0) ; 4 uses
  %i.c = icmp ult i32 %i.b, 17
  br i1 %i.c, label %bb.c, label %.critedge, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @ASN1_TYPE_get_octetstring(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.b) #12
  %.not16 = icmp eq i32 %i.d, %i.b
  br i1 %.not16, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @EVP_CipherInit_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef -1) #12
  %.not17.not = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %spec.select = select i1 %.not17.not, i32 -1, i32 %i.b
  br label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %.critedge
  %.1 = phi i32 [ -1, %.critedge ], [ %spec.select, %bb.d ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca [2 x %struct.ossl_param_st], align 16 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %EVP_CIPHER_get_iv_length.exit, label %bb.i

EVP_CIPHER_get_iv_length.exit:                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33   ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.j = sext i32 %i.i to i64
  store i64 %i.j, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %EVP_CIPHER_get_flags.exit, label %bb.c

bb.c:                                             ; preds = %EVP_CIPHER_get_iv_length.exit
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) #12
  %i.m = load ptr, ptr %0, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %1) #12 ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %1) #12
  %.not18 = icmp eq i32 %i.r, 0
  br i1 %.not18, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #12
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %.sink.split, label %bb.h

bb.f:                                             ; preds = %bb.c
  %.not17 = icmp eq i32 %i.p, -1
  br i1 %.not17, label %bb.h, label %.sink.split

EVP_CIPHER_get_flags.exit:                        ; preds = %EVP_CIPHER_get_iv_length.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20
  %i.v = and i64 %i.u, 2048
  %.not16 = icmp eq i64 %i.v, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %EVP_CIPHER_get_flags.exit
  %i.w = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %0, i32 noundef 37, i32 noundef 0, ptr noundef nonnull %i.a) #12
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.g, %EVP_CIPHER_get_flags.exit
  %i.y = load i32, ptr %i.a, align 4, !tbaa !5    ; 2 uses
  store i32 %i.y, ptr %i.e, align 4, !tbaa !32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.e, %bb.f, %bb.h
  %.1.ph = phi i32 [ %i.y, %bb.h ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.1 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

declare i32 @ASN1_TYPE_get_octetstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_set_asn1_iv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, i64 noundef 16) #12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %2) #12
  %i.h = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.i = call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef nonnull %0) ; 2 uses
  %i.j = icmp ult i32 %i.i, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 75) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.g, 0
  %i.k = select i1 %.not.i, ptr null, ptr %i.h
  %i.l = call i32 @ASN1_TYPE_set_octetstring(ptr noundef nonnull %1, ptr noundef %i.k, i32 noundef %i.i) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %i.l, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_CTX_original_iv(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, i64 noundef 16) #12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %1) #12
  %.not = icmp eq i32 %i.g, 0
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = select i1 %.not, ptr null, ptr %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.i
}

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_TYPE_set_octetstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @EVP_CIPHER_get_flags(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 983048) i32 @EVP_CIPHER_get_mode(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %EVP_CIPHER_get_flags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 983047
  br label %EVP_CIPHER_get_flags.exit

EVP_CIPHER_get_flags.exit:                        ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.f
}
end_hunk_0
