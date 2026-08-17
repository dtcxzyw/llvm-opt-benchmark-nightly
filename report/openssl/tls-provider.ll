inline.NumInlined: 143
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@xor_der2key_decode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %.pre93 = load ptr, ptr %i.c, align 8, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %.thread122, %bb.r, %bb.s, %bb.f
  %i.bt = phi ptr [ null, %bb.r ], [ %.pre93, %bb.s ], [ %i.ac, %bb.f ], [ null, %.thread122 ]
  %.077 = phi ptr [ null, %bb.r ], [ null, %bb.s ], [ %i.v, %bb.f ], [ null, %.thread122 ]
  %.0 = phi i32 [ 1, %bb.r ], [ %i.bs, %bb.s ], [ 0, %bb.f ], [ 1, %.thread122 ]
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !99
  call void %i.bw(ptr noundef %i.bt) #14
  call void @CRYPTO_free(ptr noundef %.077, ptr noundef nonnull @.str, i32 noundef 2423) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.039 = phi i32 [ 0, %bb.b ], [ %.0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal i32 @der2key_export_object(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %i.d, %bb.a ], [ %i.f, %bb.c ] ; 3 uses
  %i.e = load i32, ptr %.0.i, align 8, !tbaa !21  ; 2 uses
  switch i32 %i.e, label %bb.c [
    i32 0, label %xor_prov_get_keymgmt_export.exit.thread
    i32 42, label %xor_prov_get_keymgmt_export.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.b, !llvm.loop !103

xor_prov_get_keymgmt_export.exit:                 ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.0.i, i64 8
  %.0.val.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %i.h = icmp eq i64 %2, 8
  %i.i = icmp ne ptr %.0.val.i, null
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.d, label %xor_prov_get_keymgmt_export.exit.thread

bb.d:                                             ; preds = %xor_prov_get_keymgmt_export.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !86
  %i.m = tail call i32 %.0.val.i(ptr noundef %i.j, i32 noundef %i.l, ptr noundef %3, ptr noundef %4) #14
  br label %xor_prov_get_keymgmt_export.exit.thread

xor_prov_get_keymgmt_export.exit.thread:          ; preds = %bb.b, %xor_prov_get_keymgmt_export.exit, %bb.d
  %.0 = phi i32 [ %i.m, %bb.d ], [ 0, %xor_prov_get_keymgmt_export.exit ], [ %i.e, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @xorx_d2i_PKCS8(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr null, ptr %i.d, align 8, !tbaa !104
  %i.e = tail call ptr @d2i_PKCS8_PRIV_KEY_INFO(ptr noundef null, ptr noundef %1, i64 noundef %2) #14 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %xor_der2key_decode_p8.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @PKCS8_pkey_get0(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14
  %.not9.i = icmp eq i32 %i.f, 0
  br i1 %.not9.i, label %xor_der2key_decode_p8.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = call i32 @OBJ_obj2nid(ptr noundef %i.h) #14
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !84
  %i.n = icmp eq i32 %i.i, %i.m
  br i1 %i.n, label %bb.d, label %xor_der2key_decode_p8.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.o = call i32 @PKCS8_pkey_get0(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #14
  %.not.i2 = icmp eq i32 %i.o, 0
  br i1 %.not.i2, label %xor_key_from_pkcs8.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.b, align 4, !tbaa !14
  %i.q = sext i32 %i.p to i64
  %i.r = call ptr @d2i_ASN1_OCTET_STRING(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.q) #14 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = call ptr @ASN1_STRING_get0_data(ptr noundef nonnull %i.r) #14
  store ptr %i.t, ptr %i.a, align 8, !tbaa !27
  %i.u = call i32 @ASN1_STRING_length(ptr noundef nonnull %i.r) #14
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.f ]
  %storemerge.i = phi i32 [ %i.u, %bb.g ], [ 0, %bb.f ] ; 2 uses
  store i32 %storemerge.i, ptr %i.b, align 4, !tbaa !14
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.x = call fastcc ptr @xor_key_op(ptr noundef %i.w, ptr noundef %i.v, i32 noundef %storemerge.i, i32 noundef 1)
  call void @ASN1_OCTET_STRING_free(ptr noundef %i.r) #14
  br label %xor_key_from_pkcs8.exit

xor_key_from_pkcs8.exit:                          ; preds = %bb.d, %bb.h
  %.0.i3 = phi ptr [ %i.x, %bb.h ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %xor_der2key_decode_p8.exit

xor_der2key_decode_p8.exit:                       ; preds = %bb.a, %bb.b, %bb.c, %xor_key_from_pkcs8.exit
  %.0.i = phi ptr [ %.0.i3, %xor_key_from_pkcs8.exit ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @xorx_key_adjust(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  ret void
}

declare ptr @d2i_PKCS8_PRIV_KEY_INFO(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PKCS8_pkey_get0(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare ptr @d2i_ASN1_OCTET_STRING(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ASN1_STRING_get0_data(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @xor_key_op(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @X509_ALGOR_get0(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %0) #14
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %.not35 = icmp eq i32 %i.b, -1
  br i1 %.not35, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.b
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1214, ptr noundef nonnull @__func__.xor_key_op) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 7, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %xor_freekey.exit

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @OBJ_obj2nid(ptr noundef nonnull %i.c) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.f = icmp eq ptr %1, null
  %i.g = icmp eq i32 %i.e, 0
  %or.cond3 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond3, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.d
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1221, ptr noundef nonnull @__func__.xor_key_op) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 7, ptr noundef null) #14
  br label %xor_freekey.exit

bb.e:                                             ; preds = %bb.d
  %i.h = call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 690) #14 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1227, ptr noundef nonnull @__func__.xor_key_op) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 786688, ptr noundef null) #14
  br label %xor_freekey.exit

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  store atomic i32 1, ptr %i.j seq_cst, align 4, !tbaa !35
  %.not36 = icmp eq i32 %2, 32
  br i1 %.not36, label %4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #14
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1232, ptr noundef nonnull @__func__.xor_key_op) #14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 128, i32 noundef 7, ptr noundef null) #14
  br label %bb.j

4:                                                ; preds = %bb.g
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  store i32 1, ptr %8, align 4, !tbaa !44
  br label %bb.i

9:                                                ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 1, ptr %10, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %9, %6
  %i.k = call ptr @OBJ_nid2sn(i32 noundef %i.e) #14
  %i.l = call ptr @CRYPTO_strdup(ptr noundef %i.k, ptr noundef nonnull @.str, i32 noundef 1244) #14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.l, ptr %i.m, align 8, !tbaa !47
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.j, label %xor_freekey.exit

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.o = atomicrmw sub ptr %i.j, i32 1 release, align 4 ; 2 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %bb.j
  fence acquire
  br label %bb.k

CRYPTO_DOWN_REF.exit.i:                           ; preds = %bb.j
  %i.q = icmp sgt i32 %i.o, 1
  br i1 %i.q, label %xor_freekey.exit, label %bb.k

bb.k:                                             ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  call void @CRYPTO_free(ptr noundef %i.s, ptr noundef nonnull @.str, i32 noundef 718) #14
  store ptr null, ptr %i.r, align 8, !tbaa !47
  call void @CRYPTO_free(ptr noundef nonnull %i.h, ptr noundef nonnull @.str, i32 noundef 721) #14
  br label %xor_freekey.exit

xor_freekey.exit:                                 ; preds = %bb.k, %CRYPTO_DOWN_REF.exit.i, %bb.i, %.critedge, %bb.f, %.thread
  %.129 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ %i.h, %bb.i ], [ null, %.critedge ], [ null, %CRYPTO_DOWN_REF.exit.i ], [ null, %bb.k ]
  ret ptr %.129
}

declare void @ASN1_OCTET_STRING_free(ptr noundef) local_unnamed_addr #2

declare void @X509_ALGOR_get0(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_int(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @asn1_d2i_read_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @SubjectPublicKeyInfo_der2xorhmacsig_newctx(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 2258) #14 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %der2key_newctx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @SubjectPublicKeyInfo_xorhmacsig_desc, ptr %i.b, align 8, !tbaa !83
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @SubjectPublicKeyInfo_xorhmacsig_desc, i64 24), align 8, !tbaa !84
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %der2key_newctx.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @OBJ_sn2nid(ptr noundef nonnull @.str.2) #14
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @SubjectPublicKeyInfo_xorhmacsig_desc, i64 24), align 8, !tbaa !84
  br label %der2key_newctx.exit

der2key_newctx.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @SubjectPublicKeyInfo_der2xorhmacsig_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #11 {
bb.a:
  %SubjectPublicKeyInfo_xorhmacsig_desc.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @SubjectPublicKeyInfo_xorhmacsig_desc, i64 28), align 4
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
  %i.e = and i32 %.lcssa.i, %SubjectPublicKeyInfo_xorhmacsig_desc.val
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  br label %der2key_check_selection.exit

der2key_check_selection.exit:                     ; preds = %bb.a, %.preheader.2.i, %bb.b
  %.2.i = phi i32 [ 1, %bb.a ], [ %i.g, %bb.b ], [ 0, %.preheader.2.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @xor_d2i_PUBKEY(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.e = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 2169) #14 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !110
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %xorx_d2i_X509_PUBKEY_INTERNAL.exit.thread, label %xorx_d2i_X509_PUBKEY_INTERNAL.exit

xorx_d2i_X509_PUBKEY_INTERNAL.exit.thread:        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  br label %xor_key_from_x509pubkey.exit.thread

xorx_d2i_X509_PUBKEY_INTERNAL.exit:               ; preds = %bb.a
  %i.g = call ptr @ASN1_item_d2i_ex(ptr noundef nonnull %i.d, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @X509_PUBKEY_INTERNAL_it.local_it, ptr noundef null, ptr noundef null) #14 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %xor_key_from_x509pubkey.exit.thread, label %bb.b

bb.b:                                             ; preds = %xorx_d2i_X509_PUBKEY_INTERNAL.exit
  %i.h = call i32 @X509_PUBKEY_get0_param(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g) #14
  %.not6.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i, label %xor_key_from_x509pubkey.exit.thread, label %xor_key_from_x509pubkey.exit

xor_key_from_x509pubkey.exit.thread:              ; preds = %bb.b, %xorx_d2i_X509_PUBKEY_INTERNAL.exit, %xorx_d2i_X509_PUBKEY_INTERNAL.exit.thread
  %.0.i14.ph = phi ptr [ null, %xorx_d2i_X509_PUBKEY_INTERNAL.exit.thread ], [ null, %xorx_d2i_X509_PUBKEY_INTERNAL.exit ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.f

xor_key_from_x509pubkey.exit:                     ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.k = load i32, ptr %i.b, align 4, !tbaa !14
  %i.l = call fastcc ptr @xor_key_op(ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.k, i32 noundef 0) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp ne ptr %0, null
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %xor_key_from_x509pubkey.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !50     ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %xor_freekey.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.r = atomicrmw sub ptr %i.q, i32 1 release, align 4 ; 2 uses
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %bb.d
  fence acquire
  br label %bb.e

CRYPTO_DOWN_REF.exit.i:                           ; preds = %bb.d
  %i.t = icmp sgt i32 %i.r, 1
  br i1 %i.t, label %xor_freekey.exit, label %bb.e

bb.e:                                             ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  call void @CRYPTO_free(ptr noundef %i.v, ptr noundef nonnull @.str, i32 noundef 718) #14
  store ptr null, ptr %i.u, align 8, !tbaa !47
  call void @CRYPTO_free(ptr noundef nonnull %i.o, ptr noundef nonnull @.str, i32 noundef 721) #14
  br label %xor_freekey.exit

xor_freekey.exit:                                 ; preds = %bb.c, %CRYPTO_DOWN_REF.exit.i, %bb.e
  store ptr %i.l, ptr %0, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %xor_key_from_x509pubkey.exit.thread, %xor_freekey.exit, %xor_key_from_x509pubkey.exit
  %.0.i1119 = phi ptr [ null, %xor_key_from_x509pubkey.exit.thread ], [ %i.l, %xor_freekey.exit ], [ %i.l, %xor_key_from_x509pubkey.exit ]
  %.0.i1418 = phi ptr [ %.0.i14.ph, %xor_key_from_x509pubkey.exit.thread ], [ %i.g, %xor_freekey.exit ], [ %i.g, %xor_key_from_x509pubkey.exit ]
  call void @X509_PUBKEY_free(ptr noundef %.0.i1418) #14
  ret ptr %.0.i1119
}

declare ptr @ASN1_item_d2i_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_ALGOR_it() #2

declare ptr @ASN1_BIT_STRING_it() #2
end_hunk_0
