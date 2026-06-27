inline.NumInlined: 62
inline.NumDeleted: 14
begin_hunk_0_@EVP_PKEY_print_public_fp:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %EVP_PKEY_print_public.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %EVP_PKEY_print_public.exit

EVP_PKEY_print_public.exit:                       ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.h = tail call fastcc i32 @print_pkey(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 134, ptr noundef %i.g, ptr noundef %3)
  %i.i = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %EVP_PKEY_print_public.exit
  %.0 = phi i32 [ %i.h, %EVP_PKEY_print_public.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_PKEY_print_private_fp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #10 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %EVP_PKEY_print_private.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  br label %EVP_PKEY_print_private.exit

EVP_PKEY_print_private.exit:                      ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.h = tail call fastcc i32 @print_pkey(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 133, ptr noundef %i.g, ptr noundef %3)
  %i.i = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %EVP_PKEY_print_private.exit
  %.0 = phi i32 [ %i.h, %EVP_PKEY_print_private.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_PKEY_print_params_fp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #10 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %EVP_PKEY_print_params.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  br label %EVP_PKEY_print_params.exit

EVP_PKEY_print_params.exit:                       ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.h = tail call fastcc i32 @print_pkey(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 132, ptr noundef %i.g, ptr noundef %3)
  %i.i = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %EVP_PKEY_print_params.exit
  %.0 = phi i32 [ %i.h, %EVP_PKEY_print_params.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_PKEY_get_default_digest_nid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %evp_pkey_asn1_ctrl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @legacy_asn1_ctrl_to_param(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %1)
  br label %evp_pkey_asn1_ctrl.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %evp_pkey_asn1_ctrl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 %i.g(ptr noundef nonnull %0, i32 noundef 3, i64 noundef 0, ptr noundef %1) #10, !inline_history !96
  br label %evp_pkey_asn1_ctrl.exit

evp_pkey_asn1_ctrl.exit:                          ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.c ], [ %i.i, %bb.e ], [ -2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_PKEY_get_default_digest_name(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call i32 @evp_keymgmt_util_get_deflt_digest_name(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %1, i64 noundef %2) #10
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge, label %EVP_PKEY_get_default_digest_nid.exit

EVP_PKEY_get_default_digest_nid.exit:             ; preds = %bb.c
  %i.m = call i32 %i.k(ptr noundef nonnull %0, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.a) #10, !inline_history !97 ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %EVP_PKEY_get_default_digest_nid.exit
  %i.o = load i32, ptr %i.a, align 4, !tbaa !5
  %i.p = call ptr @OBJ_nid2sn(i32 noundef %i.o) #10
  %i.q = call i64 @OPENSSL_strlcpy(ptr noundef %1, ptr noundef %i.p, i64 noundef %2) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %EVP_PKEY_get_default_digest_nid.exit, %bb.d
  %.0.i13 = phi i32 [ %i.m, %bb.d ], [ %i.m, %EVP_PKEY_get_default_digest_nid.exit ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %.0.i13, %.critedge ]
  ret i32 %.0
}

declare i32 @evp_keymgmt_util_get_deflt_digest_name(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @EVP_PKEY_get_group_name(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_PKEY_get_utf8_string_param(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @EVP_PKEY_get_utf8_string_param(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [2 x %struct.ossl_param_st], align 16 ; 8 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) #10
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %EVP_PKEY_get_params.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not11.i = icmp eq ptr %i.d, null
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = call i32 @evp_keymgmt_get_params(ptr noundef nonnull %i.d, ptr noundef %i.f, ptr noundef nonnull %5) #10
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %.thread41

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8, !tbaa !29
  %.not12.i = icmp eq i32 %i.i, 0
  br i1 %.not12.i, label %EVP_PKEY_get_params.exit.thread, label %EVP_PKEY_get_params.exit

EVP_PKEY_get_params.exit.thread:                  ; preds = %bb.b, %bb.e
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2466, ptr noundef nonnull @__func__.EVP_PKEY_get_params) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, ptr noundef null) #10
  br label %.thread41

EVP_PKEY_get_params.exit:                         ; preds = %bb.e
  %i.j = call i32 @evp_pkey_get_params_to_ctrl(ptr noundef nonnull %0, ptr noundef nonnull %5) #10
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.thread41

bb.f:                                             ; preds = %EVP_PKEY_get_params.exit, %bb.d
  %i.l = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %5) #10
  %i.m = icmp ne i32 %i.l, 0                      ; 4 uses
  %i.n = icmp ne ptr %4, null
  %or.cond = and i1 %i.n, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = load i64, ptr %i.o, align 16             ; 3 uses
  br i1 %or.cond, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  store i64 %i.p, ptr %4, align 8, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.q = icmp eq i64 %i.p, %3
  %or.cond24 = select i1 %i.m, i1 %i.q, i1 false
  br i1 %or.cond24, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.r = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.r, %i.m
  br i1 %or.cond3, label %bb.i, label %.thread41

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !44
  br label %.thread41

.thread41:                                        ; preds = %bb.d, %EVP_PKEY_get_params.exit.thread, %EVP_PKEY_get_params.exit, %bb.i, %bb.h
  %.0.shrunk.i27334045 = phi i1 [ %i.m, %bb.h ], [ true, %bb.i ], [ false, %EVP_PKEY_get_params.exit ], [ false, %EVP_PKEY_get_params.exit.thread ], [ false, %bb.d ]
  %7 = zext i1 %.0.shrunk.i27334045 to i32
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a, %.thread41
  %.018 = phi i32 [ %7, %.thread41 ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_PKEY_digestsign_supports_digest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @EVP_MD_CTX_new() #10      ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ERR_set_mark() #10        ; 0 uses
  %i.d = tail call i32 @EVP_DigestSignInit_ex(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %0, ptr noundef null) #10
  %i.e = tail call i32 @ERR_pop_to_mark() #10     ; 0 uses
  tail call void @EVP_MD_CTX_free(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_PKEY_set1_encoded_public_key(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_PKEY_set_octet_string_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %1, i64 noundef %2)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = icmp ugt i64 %2, 2147483647
  br i1 %i.e, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %evp_pkey_asn1_ctrl.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %evp_pkey_asn1_ctrl.exit.thread, label %evp_pkey_asn1_ctrl.exit

evp_pkey_asn1_ctrl.exit:                          ; preds = %bb.f
  %i.l = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef 9, i64 noundef %2, ptr noundef %1) #10, !inline_history !96
  %.fr = freeze i32 %i.l
  %i.m = icmp slt i32 %.fr, 1
  br i1 %i.m, label %evp_pkey_asn1_ctrl.exit.thread, label %bb.g

evp_pkey_asn1_ctrl.exit.thread:                   ; preds = %bb.e, %bb.f, %evp_pkey_asn1_ctrl.exit
  br label %bb.g

bb.g:                                             ; preds = %evp_pkey_asn1_ctrl.exit.thread, %evp_pkey_asn1_ctrl.exit, %bb.d, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ %i.d, %bb.c ], [ 0, %bb.a ], [ 0, %evp_pkey_asn1_ctrl.exit.thread ], [ 1, %evp_pkey_asn1_ctrl.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_PKEY_set_octet_string_param(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %EVP_PKEY_set_params.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) #10
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not7.i = icmp eq ptr %i.d, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = call i32 @evp_keymgmt_set_params(ptr noundef nonnull %i.d, ptr noundef %i.i, ptr noundef nonnull %4) #10
  br label %EVP_PKEY_set_params.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2445, ptr noundef nonnull @__func__.EVP_PKEY_set_params) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, ptr noundef null) #10
  br label %EVP_PKEY_set_params.exit

EVP_PKEY_set_params.exit:                         ; preds = %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -1) i64 @EVP_PKEY_get1_encoded_public_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 -1, ptr %i.a, align 8, !tbaa !77
  %i.e = call i32 @EVP_PKEY_get_octet_string_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !77   ; 4 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %1, align 8, !tbaa !52
  %i.h = call noalias ptr @CRYPTO_malloc(i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 1474) #10 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @EVP_PKEY_get_octet_string_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.h, i64 noundef %i.f, ptr noundef null)
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @CRYPTO_free(ptr noundef nonnull %i.h, ptr noundef nonnull @.str, i32 noundef 1481) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.h, ptr %1, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g, %bb.f
  %.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.c ], [ %i.f, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %evp_pkey_asn1_ctrl.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %evp_pkey_asn1_ctrl.exit.thread, label %evp_pkey_asn1_ctrl.exit

evp_pkey_asn1_ctrl.exit:                          ; preds = %bb.j
  %i.q = tail call i32 %i.o(ptr noundef nonnull %0, i32 noundef 10, i64 noundef 0, ptr noundef %1) #10, !inline_history !96
  %.fr = freeze i32 %i.q                          ; 2 uses
  %i.r = icmp slt i32 %.fr, 1
  %i.s = zext nneg i32 %.fr to i64
  br i1 %i.r, label %evp_pkey_asn1_ctrl.exit.thread, label %bb.k

evp_pkey_asn1_ctrl.exit.thread:                   ; preds = %bb.i, %bb.j, %evp_pkey_asn1_ctrl.exit
  br label %bb.k

bb.k:                                             ; preds = %evp_pkey_asn1_ctrl.exit.thread, %evp_pkey_asn1_ctrl.exit, %bb.a, %bb.h
  %.2 = phi i64 [ 0, %bb.a ], [ %.0, %bb.h ], [ 0, %evp_pkey_asn1_ctrl.exit.thread ], [ %i.s, %evp_pkey_asn1_ctrl.exit ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @EVP_PKEY_get_octet_string_param(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [2 x %struct.ossl_param_st], align 16 ; 8 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) #10
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %EVP_PKEY_get_params.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not11.i = icmp eq ptr %i.d, null
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = call i32 @evp_keymgmt_get_params(ptr noundef nonnull %i.d, ptr noundef %i.f, ptr noundef nonnull %5) #10
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8, !tbaa !29
  %.not12.i = icmp eq i32 %i.i, 0
  br i1 %.not12.i, label %EVP_PKEY_get_params.exit.thread, label %EVP_PKEY_get_params.exit

EVP_PKEY_get_params.exit.thread:                  ; preds = %bb.b, %bb.e
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2466, ptr noundef nonnull @__func__.EVP_PKEY_get_params) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, ptr noundef null) #10
  br label %.thread

EVP_PKEY_get_params.exit:                         ; preds = %bb.e
  %i.j = call i32 @evp_pkey_get_params_to_ctrl(ptr noundef nonnull %0, ptr noundef nonnull %5) #10
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %EVP_PKEY_get_params.exit, %bb.d
  %i.l = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %5) #10
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = icmp ne ptr %4, null
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = load i64, ptr %i.o, align 16, !tbaa !99
  store i64 %i.p, ptr %4, align 8, !tbaa !77
  br label %.thread

.thread:                                          ; preds = %bb.d, %EVP_PKEY_get_params.exit.thread, %EVP_PKEY_get_params.exit, %bb.g, %bb.f
  %.0.shrunk.i1622 = phi i1 [ %i.m, %bb.f ], [ true, %bb.g ], [ false, %EVP_PKEY_get_params.exit ], [ false, %EVP_PKEY_get_params.exit.thread ], [ false, %bb.d ]
  %i.q = zext i1 %.0.shrunk.i1622 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.thread
  %.011 = phi i32 [ %i.q, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.011
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_PKEY_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 152, ptr noundef nonnull @.str, i32 noundef 1502) #10 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store atomic i32 1, ptr %i.d seq_cst, align 8, !tbaa !101
  %i.e = tail call ptr @CRYPTO_THREAD_lock_new() #10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !41
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 1, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = tail call i32 @CRYPTO_new_ex_data(i32 noundef 17, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #10
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 1515, %bb.b ], [ 1522, %bb.c ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.EVP_PKEY_new) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524303, ptr noundef null) #10
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !41
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.k) #10
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 1531) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.a, %bb.c ]
  ret ptr %.0
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal void @find_ameth(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call i32 @ERR_set_mark() #10        ; 0 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.d = trunc i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !66
  %i.e = call ptr @EVP_PKEY_asn1_find_str(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %i.d) #10
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.g = call i32 @ENGINE_finish(ptr noundef %i.f) #10 ; 0 uses
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %pkey_set_type.exit.thread, label %bb.b

pkey_set_type.exit.thread:                        ; preds = %bb.a
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1612, ptr noundef nonnull @__func__.pkey_set_type) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 156, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %1, align 8, !tbaa !52
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %1, align 8, !tbaa !52
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.k, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %pkey_set_type.exit.thread, %bb.c, %bb.e, %bb.d
  %i.n = call i32 @ERR_pop_to_mark() #10          ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @EVP_PKEY_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_PKEY_dup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1731, ptr noundef nonnull @__func__.EVP_PKEY_dup) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, ptr noundef null) #10
  br label %EVP_PKEY_free.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_PKEY_new()            ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %EVP_PKEY_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.e, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %.thread40, label %bb.f

.thread:                                          ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.i = tail call i32 @evp_keymgmt_util_copy(ptr noundef nonnull %i.b, ptr noundef nonnull %0, i32 noundef 135) #10
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %select.unfold, label %.thread40

bb.g:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call fastcc range(i32 0, 2) i32 @pkey_set_type(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef %i.d, ptr noundef null, i32 noundef -1, ptr noundef null)
  %.not34 = icmp eq i32 %i.s, 0
  br i1 %.not34, label %bb.k, label %.thread40

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1759, ptr noundef nonnull @__func__.EVP_PKEY_dup) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, ptr noundef null) #10
  br label %select.unfold

bb.l:                                             ; preds = %bb.h
  %i.t = tail call i32 %i.n(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #10
  %.not33 = icmp eq i32 %i.t, 0
  br i1 %.not33, label %select.unfold, label %.thread40

.thread40:                                        ; preds = %bb.j, %bb.l, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 17, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #10
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %.thread40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
