inline.NumInlined: 31
inline.NumDeleted: 3
begin_hunk_0_@EVP_CIPHER_set_asn1_iv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, i64 noundef 16) #12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
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
  store ptr %i.b, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, i64 noundef 16) #12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
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
define dso_local i64 @EVP_CIPHER_get_flags(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 983048) i32 @EVP_CIPHER_get_mode(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %EVP_CIPHER_get_flags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 983047
  br label %EVP_CIPHER_get_flags.exit

EVP_CIPHER_get_flags.exit:                        ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_is_a(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call i32 @evp_is_a(ptr noundef nonnull %i.c, i32 noundef %i.e, ptr noundef null, ptr noundef %1) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %EVP_CIPHER_get_nid.exit.i, label %EVP_CIPHER_get0_name.exit

EVP_CIPHER_get_nid.exit.i:                        ; preds = %bb.d
  %i.i = load i32, ptr %0, align 8, !tbaa !42
  %i.j = tail call ptr @OBJ_nid2sn(i32 noundef %i.i) #12
  br label %EVP_CIPHER_get0_name.exit

EVP_CIPHER_get0_name.exit:                        ; preds = %bb.d, %EVP_CIPHER_get_nid.exit.i
  %.0.i = phi ptr [ %i.j, %EVP_CIPHER_get_nid.exit.i ], [ %i.h, %bb.d ]
  %i.k = tail call i32 @evp_is_a(ptr noundef null, i32 noundef 0, ptr noundef %.0.i, ptr noundef %1) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %EVP_CIPHER_get0_name.exit, %bb.c
  %.0 = phi i32 [ %i.k, %EVP_CIPHER_get0_name.exit ], [ %i.f, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @ASN1_TYPE_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @evp_cipher_set_asn1_aead_params(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %i.h = tail call i32 @ossl_asn1_type_set_octetstring_int(ptr noundef nonnull %1, i64 noundef %i.e, ptr noundef nonnull %2, i32 noundef %i.g) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @EVP_CIPHER_CTX_get_algor_params(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca [3 x %struct.ossl_param_st], align 16 ; 11 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.22, ptr noundef null, i64 noundef 0) #12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.12, ptr noundef null, i64 noundef 0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.e = call i32 @EVP_CIPHER_CTX_get_params(ptr noundef %0, ptr noundef nonnull %2) #12
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %2) #12
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i64, ptr %i.h, align 16
  %i.j = icmp eq i64 %i.i, 0
  %or.cond.not = select i1 %i.g, i1 true, i1 %i.j ; 2 uses
  %i.k = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %i.c) #12
  %i.l = icmp eq i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, 0
  %or.cond7.not = select i1 %i.l, i1 true, i1 %i.o ; 2 uses
  %i.p = select i1 %or.cond7.not, i1 %or.cond.not, i1 false
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = sext i1 %or.cond.not to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  store ptr %i.r, ptr %i.a, align 8, !tbaa !43
  %i.s = select i1 %or.cond7.not, i64 %spec.select, i64 1
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.s ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48   ; 3 uses
  %i.x = call noalias ptr @CRYPTO_malloc(i64 noundef %i.w, ptr noundef nonnull @.str.1, i32 noundef 1310) #12 ; 4 uses
  %.not30 = icmp eq ptr %i.x, null
  br i1 %.not30, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr %i.x, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef %i.u, ptr noundef nonnull %i.x, i64 noundef %i.w) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.y = call i32 @EVP_CIPHER_CTX_get_params(ptr noundef %0, ptr noundef nonnull %2) #12
  %.not31 = icmp eq i32 %i.y, 0
  br i1 %.not31, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %i.t) #12
  %.not32 = icmp eq i32 %i.z, 0
  br i1 %.not32, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sext = shl i64 %i.w, 32
  %i.aa = ashr exact i64 %sext, 32
  %i.ab = call ptr @d2i_ASN1_TYPE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.aa) #12
  %.not33 = icmp eq ptr %i.ab, null
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !43
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ 1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.b, %bb.a
  %.025 = phi ptr [ null, %bb.b ], [ %i.x, %bb.h ], [ null, %bb.c ], [ null, %bb.a ]
  %.1 = phi i32 [ -1, %bb.b ], [ %.0, %bb.h ], [ -1, %bb.c ], [ -1, %bb.a ]
  call void @CRYPTO_free(ptr noundef %.025, ptr noundef nonnull @.str.1, i32 noundef 1328) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.1
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 17) i32 @evp_cipher_get_asn1_aead_params(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @ossl_asn1_type_get_octetstring_int(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 16) #12 ; 4 uses
  %i.f = add i32 %i.e, -17
  %or.cond3 = icmp ult i32 %i.f, -16
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 16 %i.b, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.e, ptr %i.h, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_CTX_set_algor_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %2 = alloca [3 x %struct.ossl_param_st], align 16 ; 6 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = call i32 @i2d_ASN1_TYPE(ptr noundef %i.c, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.g = zext nneg i32 %i.d to i64                ; 2 uses
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.22, ptr noundef %i.f, i64 noundef %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !39
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.12, ptr noundef %i.i, i64 noundef %i.g) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.k = call i32 @EVP_CIPHER_CTX_set_params(ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !39
  call void @CRYPTO_free(ptr noundef %i.l, ptr noundef nonnull @.str.1, i32 noundef 1261) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare i32 @ossl_asn1_type_get_octetstring_int(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ossl_asn1_type_set_octetstring_int(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 659, 656) i32 @EVP_CIPHER_get_type(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %EVP_CIPHER_get_nid.exit.thread, label %EVP_CIPHER_get_nid.exit

EVP_CIPHER_get_nid.exit:                          ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  switch i32 %i.b, label %EVP_CIPHER_get_nid.exit.thread [
    i32 37, label %bb.g
    i32 166, label %bb.g
    i32 98, label %bb.g
    i32 5, label %bb.b
    i32 97, label %bb.b
    i32 421, label %bb.c
    i32 653, label %bb.c
    i32 650, label %bb.c
    i32 425, label %bb.d
    i32 654, label %bb.d
    i32 651, label %bb.d
    i32 429, label %bb.e
    i32 655, label %bb.e
    i32 652, label %bb.e
    i32 30, label %bb.f
    i32 657, label %bb.f
    i32 656, label %bb.f
    i32 61, label %bb.f
    i32 659, label %bb.f
    i32 658, label %bb.f
  ]

bb.b:                                             ; preds = %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit
  br label %bb.g

bb.c:                                             ; preds = %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit
  br label %bb.g

bb.d:                                             ; preds = %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit
  br label %bb.g

bb.e:                                             ; preds = %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit
  br label %bb.g

bb.f:                                             ; preds = %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit
  br label %bb.g

EVP_CIPHER_get_nid.exit.thread:                   ; preds = %bb.a, %EVP_CIPHER_get_nid.exit
  %i.c = phi i32 [ %i.b, %EVP_CIPHER_get_nid.exit ], [ 0, %bb.a ] ; 2 uses
  %i.d = tail call ptr @OBJ_nid2obj(i32 noundef %i.c) #12 ; 2 uses
  %i.e = tail call ptr @OBJ_get0_data(ptr noundef %i.d) #12
  %i.f = icmp eq ptr %i.e, null
  %spec.select = select i1 %i.f, i32 0, i32 %i.c
  tail call void @ASN1_OBJECT_free(ptr noundef %i.d) #12
  br label %bb.g

bb.g:                                             ; preds = %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit, %EVP_CIPHER_get_nid.exit.thread, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %spec.select, %EVP_CIPHER_get_nid.exit.thread ], [ 37, %EVP_CIPHER_get_nid.exit ], [ 5, %bb.b ], [ 421, %bb.c ], [ 425, %bb.d ], [ 429, %bb.e ], [ 30, %bb.f ], [ 37, %EVP_CIPHER_get_nid.exit ], [ 37, %EVP_CIPHER_get_nid.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @EVP_CIPHER_get_nid(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
end_hunk_0
