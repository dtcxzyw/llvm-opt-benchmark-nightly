Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/tls-provider?download=true
inline.NumInlined: 143
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@xor_decapsulate:bb.a
  store i64 32, ptr %2, align 8, !tbaa !47
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 32
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %xor_freekey.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store atomic i32 1, ptr %i.f seq_cst, align 4, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 466) #14 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkemkexctx.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.k, align 8, !tbaa !52
  %i.l = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %xor_newkemkexctx.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.l, ptr %i.i, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.c, ptr %i.n, align 8, !tbaa !54
  %i.o = tail call i32 @xor_derive(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noundef %2, i64 noundef 32)
  br label %xor_newkemkexctx.exit.thread

xor_newkemkexctx.exit.thread:                     ; preds = %bb.g, %bb.f, %bb.h
  %.021.ph = phi i32 [ %i.o, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %i.p = atomicrmw add ptr %i.f, i32 -1 release, align 4 ; 2 uses
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %xor_newkemkexctx.exit.thread
  fence acquire
  br label %bb.i

CRYPTO_DOWN_REF.exit.i:                           ; preds = %xor_newkemkexctx.exit.thread
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %xor_freekey.exit, label %bb.i

bb.i:                                             ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  tail call void @CRYPTO_free(ptr noundef %i.t, ptr noundef nonnull @.str, i32 noundef 718) #14
  store ptr null, ptr %i.s, align 8, !tbaa !46
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 721) #14
  br label %xor_freekey.exit

xor_freekey.exit:                                 ; preds = %bb.e, %CRYPTO_DOWN_REF.exit.i, %bb.i
  %.039 = phi ptr [ %i.i, %bb.i ], [ %i.i, %CRYPTO_DOWN_REF.exit.i ], [ null, %bb.e ]
  %.02137 = phi i32 [ %.021.ph, %bb.i ], [ %.021.ph, %CRYPTO_DOWN_REF.exit.i ], [ 0, %bb.e ]
  tail call void @CRYPTO_free(ptr noundef %.039, ptr noundef nonnull @.str, i32 noundef 521) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.b, %xor_freekey.exit, %bb.c
  %.022 = phi i32 [ %.02137, %xor_freekey.exit ], [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal noalias ptr @key2any_newctx(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1722) #14 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @key2any_freectx(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  tail call void @EVP_CIPHER_free(ptr noundef %i.b) #14
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1737) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @key2any_settable_ctx_params(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret ptr @key2any_settable_ctx_params.settables
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @key2any_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.33) #14 ; 2 uses
  %i.f = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.34) #14 ; 2 uses
  %i.g = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.35) #14 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.h = call i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #14
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b) #14
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  call void @EVP_CIPHER_free(ptr noundef %i.k) #14
  store ptr null, ptr %i.j, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.m = icmp ne ptr %i.l, null                   ; 2 uses
  %i.n = zext i1 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.n, ptr %i.o, align 4, !tbaa !60
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.q = call ptr @EVP_CIPHER_fetch(ptr noundef %i.d, ptr noundef nonnull %i.l, ptr noundef %i.p) #14 ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !59
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.g, ptr noundef nonnull %i.s) #14
  %.not28 = icmp eq i32 %i.t, 0
  br i1 %.not28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

.critedge:                                        ; preds = %bb.f, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.critedge, %bb.j
  %.1 = phi i32 [ 1, %bb.j ], [ 0, %.critedge ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsig_to_PrivateKeyInfo_der_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsig_to_PrivateKeyInfo_der_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsig_to_PrivateKeyInfo_der_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsig_to_PrivateKeyInfo_der_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2020, ptr noundef nonnull @__func__.xorhmacsig_to_PrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %4, 1
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14 ; 2 uses
  %i.c = icmp eq ptr %2, null
  %i.d = icmp slt i32 %i.b, 1
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.f, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.i, align 8, !tbaa !62
  %i.j = tail call fastcc i32 @key_to_pki_der_priv_bio(ptr noundef nonnull %i.g, ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef nonnull @prepare_xorx_params, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull %0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.k = tail call i32 @BIO_free(ptr noundef %i.g) #14 ; 0 uses
  br label %key2any_encode.exit

bb.i:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2020, ptr noundef nonnull @__func__.xorhmacsig_to_PrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.h, %bb.e, %bb.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %.0.i, %bb.h ]
  ret i32 %.0
}

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @key_to_pki_der_priv_bio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 -1, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %.not18.i = icmp eq ptr %3, null
  br i1 %.not18.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = call i32 %3(ptr noundef %1, i32 noundef %2, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !97
  %.not19.i = icmp eq i32 %i.i, 0
  br i1 %.not19.i, label %key_to_epki_der_priv_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre21.i = load i32, ptr %i.b, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.b
  %i.j = phi i32 [ %.pre21.i, %._crit_edge.i ], [ -1, %bb.b ]
  %i.k = phi ptr [ %.pre.i, %._crit_edge.i ], [ null, %bb.b ]
  %i.l = call fastcc ptr @key_to_encp8(ptr noundef %1, i32 noundef %2, ptr noundef %i.k, i32 noundef %i.j, ptr noundef readonly %4, ptr noundef nonnull readonly %5) ; 3 uses
  %.not20.i = icmp eq ptr %i.l, null
  br i1 %.not20.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @i2d_PKCS8_bio(ptr noundef %0, ptr noundef nonnull %i.l) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.m, %bb.e ], [ 0, %bb.d ]
  call void @X509_SIG_free(ptr noundef %i.l) #14
  br label %key_to_epki_der_priv_bio.exit

key_to_epki_der_priv_bio.exit:                    ; preds = %bb.c, %bb.f
  %.015.i = phi i32 [ %.0.i, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !58
  %i.p = call i32 %3(ptr noundef %1, i32 noundef %2, i32 noundef %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #14
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.q = call fastcc ptr @key_to_p8info(ptr noundef %1, i32 noundef %2, ptr noundef %4) ; 3 uses
  %.not26 = icmp eq ptr %i.q, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.r = call i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(ptr noundef %0, ptr noundef nonnull %i.q) #14
  br label %free_asn1_data.exit

bb.j:                                             ; preds = %._crit_edge
  %i.s = load i32, ptr %i.d, align 4, !tbaa !22
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  switch i32 %i.s, label %free_asn1_data.exit [
    i32 6, label %bb.k
    i32 16, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @ASN1_OBJECT_free(ptr noundef %i.t) #14
  br label %free_asn1_data.exit

bb.l:                                             ; preds = %bb.j
  call void @ASN1_STRING_free(ptr noundef %i.t) #14
  br label %free_asn1_data.exit

free_asn1_data.exit:                              ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0 = phi i32 [ %i.r, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef %i.q) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %free_asn1_data.exit, %key_to_epki_der_priv_bio.exit
  %.021 = phi i32 [ %.015.i, %key_to_epki_der_priv_bio.exit ], [ %.0, %free_asn1_data.exit ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @prepare_xorx_params(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
end_hunk_0
begin_hunk_1_@xorx_pki_priv_to_der:bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1678, ptr noundef nonnull @__func__.xorx_pki_priv_to_der) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_secure_malloc(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 1682) #14 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !99
  store i32 32, ptr %2, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !101
  %i.e = call i32 @i2d_ASN1_OCTET_STRING(ptr noundef nonnull %2, ptr noundef %1) #14 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1691, ptr noundef nonnull @__func__.xorx_pki_priv_to_der) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786688, ptr noundef null) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ %i.e, %bb.c ]
  call void @CRYPTO_secure_clear_free(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 1695) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.09 = phi i32 [ 0, %bb.b ], [ %.0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.09
}

declare i32 @OBJ_sn2nid(ptr noundef) local_unnamed_addr #2

declare ptr @BIO_new_from_core_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @key_to_p8info(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = tail call ptr @PKCS8_PRIV_KEY_INFO_new() #14 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 %2(ptr noundef %0, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @OBJ_nid2obj(i32 noundef %1) #14
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.h = call i32 @PKCS8_pkey_set0(ptr noundef nonnull %i.b, ptr noundef %i.f, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef %i.g, i32 noundef %i.d) #14
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1361, ptr noundef nonnull @__func__.key_to_p8info) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786688, ptr noundef null) #14
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef %i.b) #14
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  call void @CRYPTO_free(ptr noundef %i.i, ptr noundef nonnull @.str, i32 noundef 1363) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @key_to_encp8(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = tail call fastcc ptr @key_to_p8info(ptr noundef %0, i32 noundef %1, ptr noundef %4) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %free_asn1_data.exit [
    i32 6, label %bb.c
    i32 16, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @ASN1_OBJECT_free(ptr noundef %2) #14
  br label %free_asn1_data.exit

bb.d:                                             ; preds = %bb.b
  tail call void @ASN1_STRING_free(ptr noundef %2) #14
  br label %free_asn1_data.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !47
  %i.e = load ptr, ptr %5, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %p8info_to_encp8.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %p8info_to_encp8.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = call i32 %i.k(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %i.n) #14, !inline_history !102
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1382, ptr noundef nonnull @__func__.p8info_to_encp8) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 159, ptr noundef null) #14
  br label %p8info_to_encp8.exit

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.q = load i64, ptr %i.b, align 8, !tbaa !47
  %i.r = trunc i64 %i.q to i32
  %i.s = call ptr @PKCS8_encrypt_ex(i32 noundef -1, ptr noundef %i.p, ptr noundef nonnull %i.a, i32 noundef %i.r, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef %i.f, ptr noundef null) #14
  %i.t = load i64, ptr %i.b, align 8, !tbaa !47
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.t) #14
  br label %p8info_to_encp8.exit

p8info_to_encp8.exit:                             ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.h ], [ %i.s, %bb.i ], [ null, %bb.f ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef nonnull %i.c) #14
  br label %free_asn1_data.exit

free_asn1_data.exit:                              ; preds = %bb.d, %bb.c, %bb.b, %p8info_to_encp8.exit
  %.0 = phi ptr [ %.0.i, %p8info_to_encp8.exit ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.0
}

declare i32 @i2d_PKCS8_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_SIG_free(ptr noundef) local_unnamed_addr #2

declare ptr @PKCS8_encrypt_ex(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PKCS8_PRIV_KEY_INFO_new() local_unnamed_addr #2

declare i32 @PKCS8_pkey_set0(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(ptr noundef) local_unnamed_addr #2

declare void @ASN1_STRING_free(ptr noundef) local_unnamed_addr #2

declare i64 @OBJ_length(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_secure_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @i2d_ASN1_OCTET_STRING(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_secure_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsig_to_PrivateKeyInfo_pem_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsig_to_PrivateKeyInfo_pem_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsig_to_PrivateKeyInfo_pem_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsig_to_PrivateKeyInfo_pem_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2021, ptr noundef nonnull @__func__.xorhmacsig_to_PrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %4, 1
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14 ; 2 uses
  %i.c = icmp eq ptr %2, null
  %i.d = icmp slt i32 %i.b, 1
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.f, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.i, align 8, !tbaa !62
  %i.j = tail call fastcc i32 @key_to_pki_pem_priv_bio(ptr noundef nonnull %i.g, ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef nonnull @prepare_xorx_params, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull %0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.k = tail call i32 @BIO_free(ptr noundef %i.g) #14 ; 0 uses
  br label %key2any_encode.exit

bb.i:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2021, ptr noundef nonnull @__func__.xorhmacsig_to_PrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.h, %bb.e, %bb.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %.0.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @key_to_pki_pem_priv_bio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 -1, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %.not18.i = icmp eq ptr %3, null
  br i1 %.not18.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = call i32 %3(ptr noundef %1, i32 noundef %2, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !103
  %.not19.i = icmp eq i32 %i.i, 0
  br i1 %.not19.i, label %key_to_epki_pem_priv_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre21.i = load i32, ptr %i.b, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.b
  %i.j = phi i32 [ %.pre21.i, %._crit_edge.i ], [ -1, %bb.b ]
  %i.k = phi ptr [ %.pre.i, %._crit_edge.i ], [ null, %bb.b ]
  %i.l = call fastcc ptr @key_to_encp8(ptr noundef %1, i32 noundef %2, ptr noundef %i.k, i32 noundef %i.j, ptr noundef readonly %4, ptr noundef nonnull readonly %5) ; 3 uses
  %.not20.i = icmp eq ptr %i.l, null
  br i1 %.not20.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @PEM_write_bio_PKCS8(ptr noundef %0, ptr noundef nonnull %i.l) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.m, %bb.e ], [ 0, %bb.d ]
  call void @X509_SIG_free(ptr noundef %i.l) #14
  br label %key_to_epki_pem_priv_bio.exit

key_to_epki_pem_priv_bio.exit:                    ; preds = %bb.c, %bb.f
  %.015.i = phi i32 [ %.0.i, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !58
  %i.p = call i32 %3(ptr noundef %1, i32 noundef %2, i32 noundef %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #14
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.q = call fastcc ptr @key_to_p8info(ptr noundef %1, i32 noundef %2, ptr noundef %4) ; 3 uses
  %.not26 = icmp eq ptr %i.q, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.r = call i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(ptr noundef %0, ptr noundef nonnull %i.q) #14
  br label %free_asn1_data.exit

bb.j:                                             ; preds = %._crit_edge
  %i.s = load i32, ptr %i.d, align 4, !tbaa !22
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  switch i32 %i.s, label %free_asn1_data.exit [
    i32 6, label %bb.k
    i32 16, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @ASN1_OBJECT_free(ptr noundef %i.t) #14
  br label %free_asn1_data.exit

bb.l:                                             ; preds = %bb.j
  call void @ASN1_STRING_free(ptr noundef %i.t) #14
  br label %free_asn1_data.exit

free_asn1_data.exit:                              ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0 = phi i32 [ %i.r, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef %i.q) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %free_asn1_data.exit, %key_to_epki_pem_priv_bio.exit
  %.021 = phi i32 [ %.015.i, %key_to_epki_pem_priv_bio.exit ], [ %.0, %free_asn1_data.exit ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret i32 %.021
}

declare i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_PKCS8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsig_to_EncryptedPrivateKeyInfo_der_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsig_to_EncryptedPrivateKeyInfo_der_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsig_to_EncryptedPrivateKeyInfo_der_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2018, ptr noundef nonnull @__func__.xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 1
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %key_to_epki_der_priv_bio.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !4
  %.not19.i = icmp eq i32 %i.n, 0
  br i1 %.not19.i, label %key_to_epki_der_priv_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre21.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.o = tail call fastcc ptr @key_to_encp8(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %.pre.i, i32 noundef %.pre21.i, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull readonly %0) ; 3 uses
  %.not20.i = icmp eq ptr %i.o, null
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.p = tail call i32 @i2d_PKCS8_bio(ptr noundef nonnull %i.i, ptr noundef nonnull %i.o) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.0.i8 = phi i32 [ %i.p, %bb.i ], [ 0, %._crit_edge.i ]
  tail call void @X509_SIG_free(ptr noundef %i.o) #14
  br label %key_to_epki_der_priv_bio.exit

key_to_epki_der_priv_bio.exit:                    ; preds = %bb.g, %bb.h, %bb.j
  %.015.i = phi i32 [ %.0.i8, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %key_to_epki_der_priv_bio.exit, %bb.f
  %.0.i = phi i32 [ %.015.i, %key_to_epki_der_priv_bio.exit ], [ 0, %bb.f ]
  %i.q = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.l:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2018, ptr noundef nonnull @__func__.xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.k, %bb.e, %bb.l, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %bb.e ], [ %.0.i, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsig_to_EncryptedPrivateKeyInfo_pem_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsig_to_EncryptedPrivateKeyInfo_pem_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsig_to_EncryptedPrivateKeyInfo_pem_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2019, ptr noundef nonnull @__func__.xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 1
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %key_to_epki_pem_priv_bio.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !5
  %.not19.i = icmp eq i32 %i.n, 0
  br i1 %.not19.i, label %key_to_epki_pem_priv_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre21.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.o = tail call fastcc ptr @key_to_encp8(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %.pre.i, i32 noundef %.pre21.i, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull readonly %0) ; 3 uses
  %.not20.i = icmp eq ptr %i.o, null
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.p = tail call i32 @PEM_write_bio_PKCS8(ptr noundef nonnull %i.i, ptr noundef nonnull %i.o) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.0.i8 = phi i32 [ %i.p, %bb.i ], [ 0, %._crit_edge.i ]
  tail call void @X509_SIG_free(ptr noundef %i.o) #14
  br label %key_to_epki_pem_priv_bio.exit

key_to_epki_pem_priv_bio.exit:                    ; preds = %bb.g, %bb.h, %bb.j
  %.015.i = phi i32 [ %.0.i8, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %key_to_epki_pem_priv_bio.exit, %bb.f
  %.0.i = phi i32 [ %.015.i, %key_to_epki_pem_priv_bio.exit ], [ 0, %bb.f ]
  %i.q = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.l:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2019, ptr noundef nonnull @__func__.xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.k, %bb.e, %bb.l, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %bb.e ], [ %.0.i, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @xorhmacsig_to_SubjectPublicKeyInfo_der_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %key2any_check_selection.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.b = and i32 %1, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.preheader.1.i, label %key2any_check_selection.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.c = lshr exact i32 %1, 1
  %.lobit = and i32 %i.c, 1
  br label %key2any_check_selection.exit

key2any_check_selection.exit:                     ; preds = %.preheader.1.i, %.preheader.preheader.i, %bb.a
  %.2.i = phi i32 [ 1, %bb.a ], [ %.lobit, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsig_to_SubjectPublicKeyInfo_der_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsig_to_SubjectPublicKeyInfo_der_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsig_to_SubjectPublicKeyInfo_der_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2022, ptr noundef nonnull @__func__.xorhmacsig_to_SubjectPublicKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 2
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !6
  %.not16.i = icmp eq i32 %i.l, 0
  br i1 %.not16.i, label %key_to_spki_der_pub_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %i.m = tail call fastcc ptr @xorx_key_to_pubkey(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef nonnull @xorx_spki_pub_to_der) ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.n = tail call i32 @i2d_X509_PUBKEY_bio(ptr noundef nonnull %i.i, ptr noundef nonnull %i.m) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.0.i8 = phi i32 [ %i.n, %bb.h ], [ 0, %._crit_edge.i ]
  tail call void @X509_PUBKEY_free(ptr noundef %i.m) #14
  br label %key_to_spki_der_pub_bio.exit

key_to_spki_der_pub_bio.exit:                     ; preds = %bb.g, %bb.i
  %.013.i = phi i32 [ %.0.i8, %bb.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

bb.j:                                             ; preds = %key_to_spki_der_pub_bio.exit, %bb.f
  %.0.i = phi i32 [ %.013.i, %key_to_spki_der_pub_bio.exit ], [ 0, %bb.f ]
  %i.o = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.k:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2022, ptr noundef nonnull @__func__.xorhmacsig_to_SubjectPublicKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.j, %bb.e, %bb.k, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.e ], [ %.0.i, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 33) i32 @xorx_spki_pub_to_der(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1656, ptr noundef nonnull @__func__.xorx_spki_pub_to_der) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 1660) #14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1662, ptr noundef nonnull @__func__.xorx_spki_pub_to_der) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786688, ptr noundef null) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.c, ptr %1, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 32, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @xorx_key_to_pubkey(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = tail call ptr @X509_PUBKEY_new() #14     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 %2(ptr noundef %0, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @OBJ_nid2obj(i32 noundef %1) #14
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.h = call i32 @X509_PUBKEY_set0_param(ptr noundef nonnull %i.b, ptr noundef %i.f, i32 noundef -1, ptr noundef null, ptr noundef %i.g, i32 noundef %i.d) #14
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1423, ptr noundef nonnull @__func__.xorx_key_to_pubkey) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786688, ptr noundef null) #14
  call void @X509_PUBKEY_free(ptr noundef %i.b) #14
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  call void @CRYPTO_free(ptr noundef %i.i, ptr noundef nonnull @.str, i32 noundef 1425) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare i32 @i2d_X509_PUBKEY_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_PUBKEY_free(ptr noundef) local_unnamed_addr #2

declare ptr @X509_PUBKEY_new() local_unnamed_addr #2

declare i32 @X509_PUBKEY_set0_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @xorhmacsig_to_SubjectPublicKeyInfo_pem_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %key2any_check_selection.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.b = and i32 %1, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.preheader.1.i, label %key2any_check_selection.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.c = lshr exact i32 %1, 1
  %.lobit = and i32 %i.c, 1
  br label %key2any_check_selection.exit

key2any_check_selection.exit:                     ; preds = %.preheader.1.i, %.preheader.preheader.i, %bb.a
  %.2.i = phi i32 [ 1, %bb.a ], [ %.lobit, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsig_to_SubjectPublicKeyInfo_pem_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsig_to_SubjectPublicKeyInfo_pem_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsig_to_SubjectPublicKeyInfo_pem_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2023, ptr noundef nonnull @__func__.xorhmacsig_to_SubjectPublicKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 2
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !7
  %.not16.i = icmp eq i32 %i.l, 0
  br i1 %.not16.i, label %key_to_spki_pem_pub_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.m = tail call fastcc ptr @xorx_key_to_pubkey(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef nonnull @xorx_spki_pub_to_der) ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.n = tail call i32 @PEM_write_bio_X509_PUBKEY(ptr noundef nonnull %i.i, ptr noundef nonnull %i.m) #14
  br label %free_asn1_data.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  switch i32 %.pre.i, label %free_asn1_data.exit.i [
    i32 6, label %bb.j
    i32 16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @ASN1_OBJECT_free(ptr noundef %i.o) #14
  br label %free_asn1_data.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @ASN1_STRING_free(ptr noundef %i.o) #14
  br label %free_asn1_data.exit.i

free_asn1_data.exit.i:                            ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i8 = phi i32 [ %i.n, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  tail call void @X509_PUBKEY_free(ptr noundef %i.m) #14
  br label %key_to_spki_pem_pub_bio.exit

key_to_spki_pem_pub_bio.exit:                     ; preds = %bb.g, %free_asn1_data.exit.i
  %.013.i = phi i32 [ %.0.i8, %free_asn1_data.exit.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.l

bb.l:                                             ; preds = %key_to_spki_pem_pub_bio.exit, %bb.f
  %.0.i = phi i32 [ %.013.i, %key_to_spki_pem_pub_bio.exit ], [ 0, %bb.f ]
  %i.p = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.m:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2023, ptr noundef nonnull @__func__.xorhmacsig_to_SubjectPublicKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.l, %bb.e, %bb.m, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.m ], [ 0, %bb.e ], [ %.0.i, %bb.l ]
  ret i32 %.0
}

declare i32 @PEM_write_bio_X509_PUBKEY(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsha2sig_to_PrivateKeyInfo_der_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsha2sig_to_PrivateKeyInfo_der_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsha2sig_to_PrivateKeyInfo_der_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsha2sig_to_PrivateKeyInfo_der_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2026, ptr noundef nonnull @__func__.xorhmacsha2sig_to_PrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %4, 1
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.5) #14 ; 2 uses
  %i.c = icmp eq ptr %2, null
  %i.d = icmp slt i32 %i.b, 1
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.f, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.i, align 8, !tbaa !62
  %i.j = tail call fastcc i32 @key_to_pki_der_priv_bio(ptr noundef nonnull %i.g, ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef nonnull @prepare_xorx_params, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull %0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.k = tail call i32 @BIO_free(ptr noundef %i.g) #14 ; 0 uses
  br label %key2any_encode.exit

bb.i:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2026, ptr noundef nonnull @__func__.xorhmacsha2sig_to_PrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.h, %bb.e, %bb.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %.0.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsha2sig_to_PrivateKeyInfo_pem_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsha2sig_to_PrivateKeyInfo_pem_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsha2sig_to_PrivateKeyInfo_pem_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsha2sig_to_PrivateKeyInfo_pem_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2027, ptr noundef nonnull @__func__.xorhmacsha2sig_to_PrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %4, 1
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.5) #14 ; 2 uses
  %i.c = icmp eq ptr %2, null
  %i.d = icmp slt i32 %i.b, 1
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.f, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.i, align 8, !tbaa !62
  %i.j = tail call fastcc i32 @key_to_pki_pem_priv_bio(ptr noundef nonnull %i.g, ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef nonnull @prepare_xorx_params, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull %0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.k = tail call i32 @BIO_free(ptr noundef %i.g) #14 ; 0 uses
  br label %key2any_encode.exit

bb.i:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2027, ptr noundef nonnull @__func__.xorhmacsha2sig_to_PrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.h, %bb.e, %bb.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %.0.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2024, ptr noundef nonnull @__func__.xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 1
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.5) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %key_to_epki_der_priv_bio.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !4
  %.not19.i = icmp eq i32 %i.n, 0
  br i1 %.not19.i, label %key_to_epki_der_priv_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre21.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.o = tail call fastcc ptr @key_to_encp8(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %.pre.i, i32 noundef %.pre21.i, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull readonly %0) ; 3 uses
  %.not20.i = icmp eq ptr %i.o, null
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.p = tail call i32 @i2d_PKCS8_bio(ptr noundef nonnull %i.i, ptr noundef nonnull %i.o) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.0.i8 = phi i32 [ %i.p, %bb.i ], [ 0, %._crit_edge.i ]
  tail call void @X509_SIG_free(ptr noundef %i.o) #14
  br label %key_to_epki_der_priv_bio.exit

key_to_epki_der_priv_bio.exit:                    ; preds = %bb.g, %bb.h, %bb.j
  %.015.i = phi i32 [ %.0.i8, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %key_to_epki_der_priv_bio.exit, %bb.f
  %.0.i = phi i32 [ %.015.i, %key_to_epki_der_priv_bio.exit ], [ 0, %bb.f ]
  %i.q = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.l:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2024, ptr noundef nonnull @__func__.xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.k, %bb.e, %bb.l, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %bb.e ], [ %.0.i, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
key2any_check_selection.exit:
  %i.a = icmp eq i32 %1, 0
  %i.b = and i32 %1, 135
  %or.cond1 = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 1
  %spec.select = select i1 %or.cond1, i32 0, i32 %i.c
  %.2.i = select i1 %i.a, i32 1, i32 %spec.select
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2025, ptr noundef nonnull @__func__.xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 1
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.5) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %key_to_epki_pem_priv_bio.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !5
  %.not19.i = icmp eq i32 %i.n, 0
  br i1 %.not19.i, label %key_to_epki_pem_priv_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre21.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.o = tail call fastcc ptr @key_to_encp8(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %.pre.i, i32 noundef %.pre21.i, ptr noundef nonnull @xorx_pki_priv_to_der, ptr noundef nonnull readonly %0) ; 3 uses
  %.not20.i = icmp eq ptr %i.o, null
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.p = tail call i32 @PEM_write_bio_PKCS8(ptr noundef nonnull %i.i, ptr noundef nonnull %i.o) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.0.i8 = phi i32 [ %i.p, %bb.i ], [ 0, %._crit_edge.i ]
  tail call void @X509_SIG_free(ptr noundef %i.o) #14
  br label %key_to_epki_pem_priv_bio.exit

key_to_epki_pem_priv_bio.exit:                    ; preds = %bb.g, %bb.h, %bb.j
  %.015.i = phi i32 [ %.0.i8, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %key_to_epki_pem_priv_bio.exit, %bb.f
  %.0.i = phi i32 [ %.015.i, %key_to_epki_pem_priv_bio.exit ], [ 0, %bb.f ]
  %i.q = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.l:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2025, ptr noundef nonnull @__func__.xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.k, %bb.e, %bb.l, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %bb.e ], [ %.0.i, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @xorhmacsha2sig_to_SubjectPublicKeyInfo_der_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %key2any_check_selection.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.b = and i32 %1, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.preheader.1.i, label %key2any_check_selection.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.c = lshr exact i32 %1, 1
  %.lobit = and i32 %i.c, 1
  br label %key2any_check_selection.exit

key2any_check_selection.exit:                     ; preds = %.preheader.1.i, %.preheader.preheader.i, %bb.a
  %.2.i = phi i32 [ 1, %bb.a ], [ %.lobit, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsha2sig_to_SubjectPublicKeyInfo_der_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsha2sig_to_SubjectPublicKeyInfo_der_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2028, ptr noundef nonnull @__func__.xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 2
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.5) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !6
  %.not16.i = icmp eq i32 %i.l, 0
  br i1 %.not16.i, label %key_to_spki_der_pub_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %i.m = tail call fastcc ptr @xorx_key_to_pubkey(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef nonnull @xorx_spki_pub_to_der) ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.n = tail call i32 @i2d_X509_PUBKEY_bio(ptr noundef nonnull %i.i, ptr noundef nonnull %i.m) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.0.i8 = phi i32 [ %i.n, %bb.h ], [ 0, %._crit_edge.i ]
  tail call void @X509_PUBKEY_free(ptr noundef %i.m) #14
  br label %key_to_spki_der_pub_bio.exit

key_to_spki_der_pub_bio.exit:                     ; preds = %bb.g, %bb.i
  %.013.i = phi i32 [ %.0.i8, %bb.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

bb.j:                                             ; preds = %key_to_spki_der_pub_bio.exit, %bb.f
  %.0.i = phi i32 [ %.013.i, %key_to_spki_der_pub_bio.exit ], [ 0, %bb.f ]
  %i.o = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.k:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2028, ptr noundef nonnull @__func__.xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.j, %bb.e, %bb.k, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.e ], [ %.0.i, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %key2any_check_selection.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.b = and i32 %1, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.preheader.1.i, label %key2any_check_selection.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.c = lshr exact i32 %1, 1
  %.lobit = and i32 %i.c, 1
  br label %key2any_check_selection.exit

key2any_check_selection.exit:                     ; preds = %.preheader.1.i, %.preheader.preheader.i, %bb.a
  %.2.i = phi i32 [ 1, %bb.a ], [ %.lobit, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_import_object(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
xor_prov_get_keymgmt_new.exit.i:
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %xor_prov_get_keymgmt_new.exit.i
  %.0.i21.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_new.exit.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i21.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_free.exit.i
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.i21.i, i64 8
  %.0.val.i22.i = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %xor_prov_get_keymgmt_free.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 16
  br label %bb.a, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.a, %bb.b
  %.05.i23.i = phi ptr [ %.0.val.i22.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %xor_prov_get_keymgmt_free.exit.i
  %.0.i24.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %xor_prov_get_keymgmt_free.exit.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.d = load i32, ptr %.0.i24.i, align 16, !tbaa !27
  switch i32 %i.d, label %bb.e [
    i32 0, label %xor_prov_import_key.exit
    i32 40, label %xor_prov_get_keymgmt_import.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i24.i, i64 16
  br label %bb.d, !llvm.loop !1

xor_prov_get_keymgmt_import.exit.i:               ; preds = %bb.d
  %i.f = getelementptr i8, ptr %.0.i24.i, i64 8
  %.0.val.i25.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp ne ptr %.0.val.i25.i, null
  %i.h = icmp ne ptr %.05.i23.i, null
  %or.cond3.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3.i, label %bb.f, label %xor_prov_import_key.exit

bb.f:                                             ; preds = %xor_prov_get_keymgmt_import.exit.i
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %xor_newkey.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store atomic i32 1, ptr %i.k seq_cst, align 4, !tbaa !37
  %i.l = tail call i32 %.0.val.i25.i(ptr noundef nonnull %i.i, i32 noundef %1, ptr noundef %2) #14, !inline_history !2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %xor_newkey.exit.thread, label %xor_prov_import_key.exit

xor_newkey.exit.thread:                           ; preds = %bb.f, %bb.g
  tail call void %.05.i23.i(ptr noundef %i.i) #14, !inline_history !2
  br label %xor_prov_import_key.exit

xor_prov_import_key.exit:                         ; preds = %bb.d, %xor_prov_get_keymgmt_import.exit.i, %bb.g, %xor_newkey.exit.thread
  %.0.i = phi ptr [ null, %xor_newkey.exit.thread ], [ %i.i, %bb.g ], [ null, %xor_prov_get_keymgmt_import.exit.i ], [ null, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_free_object(ptr noundef %0) #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi ptr [ @xor_xorhmacsha2sig_keymgmt_functions, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.a = load i32, ptr %.0.i.i, align 16, !tbaa !27
  switch i32 %i.a, label %bb.c [
    i32 0, label %xor_prov_free_key.exit
    i32 10, label %xor_prov_get_keymgmt_free.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.b, !llvm.loop !0

xor_prov_get_keymgmt_free.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i, label %xor_prov_free_key.exit, label %bb.d

bb.d:                                             ; preds = %xor_prov_get_keymgmt_free.exit.i
  tail call void %.0.val.i.i(ptr noundef %0) #14, !inline_history !3
  br label %xor_prov_free_key.exit

xor_prov_free_key.exit:                           ; preds = %bb.b, %xor_prov_get_keymgmt_free.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2029, ptr noundef nonnull @__func__.xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %4, 2
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.5) #14 ; 3 uses
  %i.e = icmp eq ptr %2, null
  %i.f = icmp slt i32 %i.d, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.key2any_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786690, ptr noundef null) #14
  br label %key2any_encode.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @BIO_new_from_core_bio(ptr noundef %i.h, ptr noundef %1) #14 ; 3 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.k, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4, !tbaa !22
  %i.l = call i32 @prepare_xorx_params(ptr noundef nonnull %2, i32 noundef %i.d, i32 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !7
  %.not16.i = icmp eq i32 %i.l, 0
  br i1 %.not16.i, label %key_to_spki_pem_pub_bio.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.m = tail call fastcc ptr @xorx_key_to_pubkey(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef nonnull @xorx_spki_pub_to_der) ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.n = tail call i32 @PEM_write_bio_X509_PUBKEY(ptr noundef nonnull %i.i, ptr noundef nonnull %i.m) #14
  br label %free_asn1_data.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  switch i32 %.pre.i, label %free_asn1_data.exit.i [
    i32 6, label %bb.j
    i32 16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @ASN1_OBJECT_free(ptr noundef %i.o) #14
  br label %free_asn1_data.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @ASN1_STRING_free(ptr noundef %i.o) #14
  br label %free_asn1_data.exit.i

free_asn1_data.exit.i:                            ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i8 = phi i32 [ %i.n, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  tail call void @X509_PUBKEY_free(ptr noundef %i.m) #14
  br label %key_to_spki_pem_pub_bio.exit

key_to_spki_pem_pub_bio.exit:                     ; preds = %bb.g, %free_asn1_data.exit.i
  %.013.i = phi i32 [ %.0.i8, %free_asn1_data.exit.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.l

bb.l:                                             ; preds = %key_to_spki_pem_pub_bio.exit, %bb.f
  %.0.i = phi i32 [ %.013.i, %key_to_spki_pem_pub_bio.exit ], [ 0, %bb.f ]
  %i.p = tail call i32 @BIO_free(ptr noundef %i.i) #14 ; 0 uses
  br label %key2any_encode.exit

bb.m:                                             ; preds = %bb.c
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2029, ptr noundef nonnull @__func__.xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 524550, ptr noundef null) #14
  br label %key2any_encode.exit

key2any_encode.exit:                              ; preds = %bb.l, %bb.e, %bb.m, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.m ], [ 0, %bb.e ], [ %.0.i, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noalias ptr @PrivateKeyInfo_der2xorhmacsig_newctx(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 2258) #14 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %der2key_newctx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @PrivateKeyInfo_xorhmacsig_desc, ptr %i.b, align 8, !tbaa !66
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @PrivateKeyInfo_xorhmacsig_desc, i64 24), align 8, !tbaa !68
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %der2key_newctx.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @PrivateKeyInfo_xorhmacsig_desc, i64 24), align 8, !tbaa !68
  br label %der2key_newctx.exit

der2key_newctx.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @der2key_freectx(ptr noundef %0) #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2274) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @PrivateKeyInfo_der2xorhmacsig_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #11 {
bb.a:
  %PrivateKeyInfo_xorhmacsig_desc.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @PrivateKeyInfo_xorhmacsig_desc, i64 28), align 4
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %der2key_check_selection.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.b = and i32 %1, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.preheader.1.i, label %bb.b

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.c = and i32 %1, 2
  %.not.1.i = icmp eq i32 %i.c, 0
  br i1 %.not.1.i, label %.preheader.2.i, label %bb.b

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.d = and i32 %1, 132
  %.not.2.i = icmp eq i32 %i.d, 0
  br i1 %.not.2.i, label %der2key_check_selection.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi i32 [ 1, %.preheader.preheader.i ], [ 2, %.preheader.1.i ], [ 132, %.preheader.2.i ]
  %i.e = and i32 %.lcssa.i, %PrivateKeyInfo_xorhmacsig_desc.val
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  br label %der2key_check_selection.exit

der2key_check_selection.exit:                     ; preds = %bb.a, %.preheader.2.i, %bb.b
  %.2.i = phi i32 [ 1, %bb.a ], [ %i.g, %bb.b ], [ 0, %.preheader.2.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal i32 @xor_der2key_decode(ptr noundef initializes((16, 20)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %7 = alloca [4 x %struct.ossl_param_st], align 16 ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
end_hunk_1
