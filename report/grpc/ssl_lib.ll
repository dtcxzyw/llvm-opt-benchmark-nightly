Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_lib?download=true
inline.NumInlined: 1559
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SSL_get_curve_id:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.d = load i16, ptr %i.c, align 2, !tbaa !441
  br label %SSL_get_group_id.exit

SSL_get_group_id.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi i16 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0.i
}

; Function Attrs: mustprogress uwtable
define ptr @SSL_get_curve_name(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SSL_get_group_name(i16 noundef zeroext %0)
  ret ptr %i.a
}

declare ptr @SSL_get_group_name(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i64 @SSL_get_all_curve_names(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @SSL_get_all_group_names(ptr noundef %0, i64 noundef %1)
  ret i64 %i.a
}

declare i64 @SSL_get_all_group_names(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_CTX_set1_curves(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = tail call fastcc noundef zeroext i1 @_ZL21ssl_nids_to_group_idsPN4bssl5ArrayItEENS_4SpanIKiEE(ptr noundef nonnull %i.a, ptr readonly %1, i64 %2)
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_set1_curves(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %SSL_set1_groups.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = tail call fastcc noundef zeroext i1 @_ZL21ssl_nids_to_group_idsPN4bssl5ArrayItEENS_4SpanIKiEE(ptr noundef nonnull %i.c, ptr readonly %1, i64 %2)
  %i.e = zext i1 %i.d to i32
  br label %SSL_set1_groups.exit

SSL_set1_groups.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_CTX_set1_curves_list(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = tail call fastcc noundef zeroext i1 @_ZL20ssl_str_to_group_idsPN4bssl5ArrayItEEPKc(ptr noundef nonnull %i.a, ptr noundef %1)
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_set1_curves_list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %SSL_set1_groups_list.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = tail call fastcc noundef zeroext i1 @_ZL20ssl_str_to_group_idsPN4bssl5ArrayItEEPKc(ptr noundef nonnull %i.c, ptr noundef %1)
  %i.e = zext i1 %i.d to i32
  br label %SSL_set1_groups_list.exit

SSL_set1_groups_list.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_compliance_policy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit [
    i32 1, label %bb.b
    i32 2, label %bb.j
    i32 3, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 1, ptr %i.a, align 8, !tbaa !274
  %i.b = tail call i32 @SSL_CTX_set_min_proto_version(ptr noundef %0, i16 noundef zeroext 771)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @SSL_CTX_set_max_proto_version(ptr noundef nonnull %0, i16 noundef zeroext 772)
  %.not7.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = and i16 %i.e, 2048
  %.not.i.i = icmp eq i16 %i.f, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i16 %i.e, 12
  %.lobit.i.i = and i16 %i.g, 1
  %i.h = zext nneg i16 %.lobit.i.i to i32
  br label %SSL_CTX_set_strict_cipher_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @EVP_has_aes_hardware()
  br label %SSL_CTX_set_strict_cipher_list.exit.i

SSL_CTX_set_strict_cipher_list.exit.i:            ; preds = %bb.f, %bb.e
  %i.j = phi i32 [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %i.k = icmp ne i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = tail call noundef zeroext i1 @_ZN4bssl22ssl_create_cipher_listEPSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEEbPKcb(ptr noundef nonnull %i.l, i1 noundef zeroext %i.k, ptr noundef nonnull @_ZN10fips202205L13kTLS12CiphersE, i1 noundef zeroext true)
  br i1 %i.m, label %.critedge.i.i.preheader.i, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit

.critedge.i.i.preheader.i:                        ; preds = %SSL_CTX_set_strict_cipher_list.exit.i
  %i.n = tail call noundef i32 @_ZN4bssl19ssl_group_id_to_nidEt(i16 noundef zeroext 23)
  %.not12.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not12.i.i.i, label %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i, label %.critedge.i.i.1.i

.critedge.i.i.1.i:                                ; preds = %.critedge.i.i.preheader.i
  %i.o = tail call noundef i32 @_ZN4bssl19ssl_group_id_to_nidEt(i16 noundef zeroext 24)
  %.not12.i.i.1.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i.i.1.i, label %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !211
  tail call void @OPENSSL_free(ptr noundef %i.q)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = tail call ptr @OPENSSL_malloc(i64 noundef 4) ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !211
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.h

_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i:    ; preds = %.critedge.i.i.1.i, %.critedge.i.i.preheader.i
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 239, ptr noundef nonnull @.str, i32 noundef 1819)
  br label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 2, ptr %i.t, align 8, !tbaa !276
  store i32 1572887, ptr %i.r, align 2
  %i.u = tail call i32 @SSL_CTX_set_signing_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN10fips202205L8kSigAlgsE, i64 noundef 8)
  %.not10.i = icmp eq i32 %i.u, 0
  br i1 %.not10.i, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @SSL_CTX_set_verify_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN10fips202205L8kSigAlgsE, i64 noundef 8)
  %i.w = icmp ne i32 %i.v, 0
  br label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit

bb.j:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 2, ptr %i.x, align 8, !tbaa !274
  %i.y = tail call i32 @SSL_CTX_set_min_proto_version(ptr noundef %0, i16 noundef zeroext 771)
  %.not.i4 = icmp eq i32 %i.y, 0
  br i1 %.not.i4, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = tail call i32 @SSL_CTX_set_max_proto_version(ptr noundef nonnull %0, i16 noundef zeroext 772)
  %.not7.i5 = icmp eq i32 %i.z, 0
  br i1 %.not7.i5, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ab = load i16, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i16 %i.ab, 2048
  %.not.i.i6 = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = lshr i16 %i.ab, 12
  %.lobit.i.i7 = and i16 %i.ad, 1
  %i.ae = zext nneg i16 %.lobit.i.i7 to i32
  br label %SSL_CTX_set_strict_cipher_list.exit.i8

bb.n:                                             ; preds = %bb.l
  %i.af = tail call i32 @EVP_has_aes_hardware()
  br label %SSL_CTX_set_strict_cipher_list.exit.i8

SSL_CTX_set_strict_cipher_list.exit.i8:           ; preds = %bb.n, %bb.m
  %i.ag = phi i32 [ %i.ae, %bb.m ], [ %i.af, %bb.n ]
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = tail call noundef zeroext i1 @_ZN4bssl22ssl_create_cipher_listEPSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEEbPKcb(ptr noundef nonnull %i.ai, i1 noundef zeroext %i.ah, ptr noundef nonnull @_ZN9wpa202304L13kTLS12CiphersE, i1 noundef zeroext true)
  br i1 %i.aj, label %.critedge.i.i.i, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit

bb.o:                                             ; preds = %.critedge.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211
  tail call void @OPENSSL_free(ptr noundef %i.al)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = tail call ptr @OPENSSL_malloc(i64 noundef 2) ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !211
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.p

.critedge.i.i.i:                                  ; preds = %SSL_CTX_set_strict_cipher_list.exit.i8
  %2 = tail call noundef i32 @_ZN4bssl19ssl_group_id_to_nidEt(i16 noundef zeroext 24)
  %.not12.i.i.i9 = icmp eq i32 %2, 0
  br i1 %.not12.i.i.i9, label %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i12, label %bb.o

_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i12:  ; preds = %.critedge.i.i.i
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 239, ptr noundef nonnull @.str, i32 noundef 1819)
  br label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 1, ptr %i.ao, align 8, !tbaa !276
  store i16 24, ptr %i.am, align 2, !tbaa !267
  %i.ap = tail call i32 @SSL_CTX_set_signing_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN9wpa202304L8kSigAlgsE, i64 noundef 5)
  %.not10.i11 = icmp eq i32 %i.ap, 0
  br i1 %.not10.i11, label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call i32 @SSL_CTX_set_verify_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN9wpa202304L8kSigAlgsE, i64 noundef 5)
  %i.ar = icmp ne i32 %i.aq, 0
  br label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit

bb.r:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 3, ptr %i.as, align 8, !tbaa !274
  br label %_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit

_ZN10fips202205L9ConfigureEP10ssl_ctx_st.exit:    ; preds = %bb.q, %bb.p, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i12, %bb.o, %SSL_CTX_set_strict_cipher_list.exit.i8, %bb.k, %bb.j, %bb.i, %bb.h, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i, %bb.g, %SSL_CTX_set_strict_cipher_list.exit.i, %bb.c, %bb.b, %bb.a, %bb.r
  %.0.shrunk = phi i1 [ true, %bb.r ], [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.h ], [ %i.w, %bb.i ], [ false, %SSL_CTX_set_strict_cipher_list.exit.i ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i ], [ false, %bb.p ], [ %i.ar, %bb.q ], [ false, %SSL_CTX_set_strict_cipher_list.exit.i8 ], [ false, %bb.k ], [ false, %bb.j ], [ false, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i12 ], [ false, %bb.o ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @SSL_CTX_get_compliance_policy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load i32, ptr %i.a, align 8, !tbaa !274
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_set_compliance_policy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit [
    i32 1, label %bb.b
    i32 2, label %bb.l
    i32 3, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i32 1, ptr %i.c, align 8, !tbaa !275
  %i.d = tail call i32 @SSL_set_min_proto_version(ptr noundef %0, i16 noundef zeroext 771)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @SSL_set_max_proto_version(ptr noundef nonnull %0, i16 noundef zeroext 772)
  %.not7.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  %.not6.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.i.i, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 269
  %i.h = load i16, ptr %i.g, align 1              ; 2 uses
  %i.i = and i16 %i.h, 2048
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i16 %i.h, 12
  %.lobit.i.i = and i16 %i.j, 1
  %i.k = zext nneg i16 %.lobit.i.i to i32
  br label %SSL_set_strict_cipher_list.exit.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call i32 @EVP_has_aes_hardware()
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !191
  br label %SSL_set_strict_cipher_list.exit.i

SSL_set_strict_cipher_list.exit.i:                ; preds = %bb.g, %bb.f
  %i.m = phi ptr [ %i.f, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.n = phi i32 [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.o = icmp ne i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = tail call noundef zeroext i1 @_ZN4bssl22ssl_create_cipher_listEPSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEEbPKcb(ptr noundef nonnull %i.p, i1 noundef zeroext %i.o, ptr noundef nonnull @_ZN10fips202205L13kTLS12CiphersE, i1 noundef zeroext true)
  br i1 %i.q, label %bb.h, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit

bb.h:                                             ; preds = %SSL_set_strict_cipher_list.exit.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !191
  %.not.i11.i = icmp eq ptr %i.r, null
  br i1 %.not.i11.i, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %.critedge.i.i.preheader.i

.critedge.i.i.preheader.i:                        ; preds = %bb.h
  %i.s = tail call noundef i32 @_ZN4bssl19ssl_group_id_to_nidEt(i16 noundef zeroext 23)
  %.not12.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i.i, label %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i, label %.critedge.i.i.1.i

.critedge.i.i.1.i:                                ; preds = %.critedge.i.i.preheader.i
  %i.t = tail call noundef i32 @_ZN4bssl19ssl_group_id_to_nidEt(i16 noundef zeroext 24)
  %.not12.i.i.1.i = icmp eq i32 %i.t, 0
  br i1 %.not12.i.i.1.i, label %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.1.i
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !191  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !211
  tail call void @OPENSSL_free(ptr noundef %i.w)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = tail call ptr @OPENSSL_malloc(i64 noundef 4) ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !211
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.j

_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i:    ; preds = %.critedge.i.i.1.i, %.critedge.i.i.preheader.i
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 239, ptr noundef nonnull @.str, i32 noundef 1819)
  br label %_ZN10fips202205L9ConfigureEP6ssl_st.exit

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store i64 2, ptr %i.z, align 8, !tbaa !276
  store i32 1572887, ptr %i.x, align 2
  %i.aa = tail call i32 @SSL_set_signing_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN10fips202205L8kSigAlgsE, i64 noundef 8)
  %.not10.i = icmp eq i32 %i.aa, 0
  br i1 %.not10.i, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i32 @SSL_set_verify_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN10fips202205L8kSigAlgsE, i64 noundef 8)
  %i.ac = icmp ne i32 %i.ab, 0
  br label %_ZN10fips202205L9ConfigureEP6ssl_st.exit

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !191
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  store i32 2, ptr %i.af, align 8, !tbaa !275
  %i.ag = tail call i32 @SSL_set_min_proto_version(ptr noundef %0, i16 noundef zeroext 771)
  %.not.i4 = icmp eq i32 %i.ag, 0
  br i1 %.not.i4, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i32 @SSL_set_max_proto_version(ptr noundef nonnull %0, i16 noundef zeroext 772)
  %.not7.i5 = icmp eq i32 %i.ah, 0
  br i1 %.not7.i5, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !191 ; 3 uses
  %.not6.i.i6 = icmp eq ptr %i.ai, null
  br i1 %.not6.i.i6, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 269
  %i.ak = load i16, ptr %i.aj, align 1            ; 2 uses
  %i.al = and i16 %i.ak, 2048
  %.not.i.i7 = icmp eq i16 %i.al, 0
  br i1 %.not.i.i7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = lshr i16 %i.ak, 12
  %.lobit.i.i8 = and i16 %i.am, 1
  %i.an = zext nneg i16 %.lobit.i.i8 to i32
  br label %SSL_set_strict_cipher_list.exit.i9

bb.q:                                             ; preds = %bb.o
  %i.ao = tail call i32 @EVP_has_aes_hardware()
  %.pre.i.i15 = load ptr, ptr %i.ad, align 8, !tbaa !191
  br label %SSL_set_strict_cipher_list.exit.i9

SSL_set_strict_cipher_list.exit.i9:               ; preds = %bb.q, %bb.p
  %i.ap = phi ptr [ %i.ai, %bb.p ], [ %.pre.i.i15, %bb.q ]
  %i.aq = phi i32 [ %i.an, %bb.p ], [ %i.ao, %bb.q ]
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = tail call noundef zeroext i1 @_ZN4bssl22ssl_create_cipher_listEPSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEEbPKcb(ptr noundef nonnull %i.as, i1 noundef zeroext %i.ar, ptr noundef nonnull @_ZN9wpa202304L13kTLS12CiphersE, i1 noundef zeroext true)
  br i1 %i.at, label %bb.r, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit

bb.r:                                             ; preds = %SSL_set_strict_cipher_list.exit.i9
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !191
  %.not.i11.i10 = icmp eq ptr %i.au, null
  br i1 %.not.i11.i10, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %.critedge.i.i.i

bb.s:                                             ; preds = %.critedge.i.i.i
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !191 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !211
  tail call void @OPENSSL_free(ptr noundef %i.ax)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ay = tail call ptr @OPENSSL_malloc(i64 noundef 2) ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !211
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.t

.critedge.i.i.i:                                  ; preds = %bb.r
  %2 = tail call noundef i32 @_ZN4bssl19ssl_group_id_to_nidEt(i16 noundef zeroext 24)
  %.not12.i.i.i11 = icmp eq i32 %2, 0
  br i1 %.not12.i.i.i11, label %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i14, label %bb.s

_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i14:  ; preds = %.critedge.i.i.i
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 239, ptr noundef nonnull @.str, i32 noundef 1819)
  br label %_ZN10fips202205L9ConfigureEP6ssl_st.exit

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store i64 1, ptr %i.ba, align 8, !tbaa !276
  store i16 24, ptr %i.ay, align 2, !tbaa !267
  %i.bb = tail call i32 @SSL_set_signing_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN9wpa202304L8kSigAlgsE, i64 noundef 5)
  %.not10.i13 = icmp eq i32 %i.bb, 0
  br i1 %.not10.i13, label %_ZN10fips202205L9ConfigureEP6ssl_st.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call i32 @SSL_set_verify_algorithm_prefs(ptr noundef nonnull %0, ptr noundef nonnull @_ZN9wpa202304L8kSigAlgsE, i64 noundef 5)
  %i.bd = icmp ne i32 %i.bc, 0
  br label %_ZN10fips202205L9ConfigureEP6ssl_st.exit

bb.v:                                             ; preds = %bb.a
  %i.be = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.be, align 8, !tbaa !191
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 264
  store i32 3, ptr %i.bf, align 8, !tbaa !275
  br label %_ZN10fips202205L9ConfigureEP6ssl_st.exit

_ZN10fips202205L9ConfigureEP6ssl_st.exit:         ; preds = %bb.u, %bb.t, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i14, %bb.s, %bb.r, %SSL_set_strict_cipher_list.exit.i9, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i, %bb.i, %bb.h, %SSL_set_strict_cipher_list.exit.i, %bb.d, %bb.c, %bb.b, %bb.a, %bb.v
  %.0.shrunk = phi i1 [ true, %bb.v ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.d ], [ false, %SSL_set_strict_cipher_list.exit.i ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ac, %bb.k ], [ false, %bb.h ], [ false, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i ], [ false, %bb.t ], [ false, %bb.n ], [ false, %SSL_set_strict_cipher_list.exit.i9 ], [ false, %bb.m ], [ false, %bb.l ], [ %i.bd, %bb.u ], [ false, %bb.r ], [ false, %_ZL15check_group_idsN4bssl4SpanIKtEE.exit.i.i14 ], [ false, %bb.s ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @SSL_get_compliance_policy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !275
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SSL_peer_matched_trust_anchor(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1616
  %i.f = load i32, ptr %i.e, align 8
  %i.g = lshr i32 %i.f, 27
  %.lobit = and i32 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %.lobit, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SSL_get0_peer_available_trust_anchors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1496
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1504
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ]
  %.sroa.05.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.b ]
  store ptr %.sroa.05.0, ptr %1, align 8, !tbaa !11
  store i64 %.sroa.5.0, ptr %2, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_CTX_set1_requested_trust_anchors(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4bssl30ssl_is_valid_trust_anchor_listENS_4SpanIKhEE(ptr %1, i64 %2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 328, ptr noundef nonnull @.str, i32 noundef 3417)
  br label %_ZN4bssl5ArrayIhED2Ev.exit10

bb.c:                                             ; preds = %bb.a
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.c = invoke ptr @OPENSSL_malloc(i64 noundef %2)
          to label %.noexc7 unwind label %bb.i    ; 6 uses

.noexc7:                                          ; preds = %bb.d
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit, label %bb.e

bb.e:                                             ; preds = %.noexc7
  %i.e = icmp sgt i64 %2, 1
  br i1 %i.e, label %bb.f, label %bb.g, !prof !278

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.g = load i8, ptr %1, align 1, !tbaa !107
  store i8 %i.g, ptr %i.c, align 1, !tbaa !107
  br label %bb.k

bb.i:                                             ; preds = %bb.m, %bb.l, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %.sroa.0.2.ph, %bb.l ], [ %.sroa.0.2.ph, %bb.m ], [ null, %bb.d ], [ null, %bb.c ]
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.0)
          to label %_ZN4bssl5ArrayIhED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit:                       ; preds = %bb.i
  resume { ptr, i32 } %i.h

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.h, %.noexc
  %.sroa.0.2.ph = phi ptr [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.c, %bb.f ], [ null, %.noexc ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !206, !range !193, !noundef !194
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !16
  invoke void @OPENSSL_free(ptr noundef %i.o)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.sroa.0.2.ph, ptr %i.k, align 8, !tbaa !11
  store i64 %2, ptr %i.p, align 8, !tbaa !14
  br label %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 16, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc9 unwind label %bb.i

.noexc9:                                          ; preds = %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.sroa.0.2.ph, ptr %i.k, align 8, !tbaa !11
  store i64 %2, ptr %i.q, align 8, !tbaa !14
  store i8 1, ptr %i.l, align 8, !tbaa !206
  br label %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit

_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit:    ; preds = %.noexc9, %.noexc8, %.noexc7
  %.0 = phi i32 [ 0, %.noexc7 ], [ 1, %.noexc8 ], [ 1, %.noexc9 ]
  invoke void @OPENSSL_free(ptr noundef null)
          to label %_ZN4bssl5ArrayIhED2Ev.exit10 unwind label %bb.n

bb.n:                                             ; preds = %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit10:                     ; preds = %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %.0, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit ]
  ret i32 %.1
}

declare noundef zeroext i1 @_ZN4bssl30ssl_is_valid_trust_anchor_listENS_4SpanIKhEE(ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_set1_requested_trust_anchors(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
