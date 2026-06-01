inline.NumInlined: 26
inline.NumDeleted: 12
begin_hunk_0_@process_error:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = icmp eq ptr %3, null
  %i.o = load ptr, ptr @bio_err, align 8, !tbaa !40 ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.o, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = call i64 @ASN1_INTEGER_get(ptr noundef nonnull %3) #4
  %i.r = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.o, ptr noundef nonnull @.str.8, i64 noundef %i.q) #4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = call i32 @OPENSSL_sk_num(ptr noundef %4) #4
  %i.t = icmp slt i32 %i.s, 1
  %i.u = load ptr, ptr @bio_err, align 8, !tbaa !40 ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.u, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.u, ptr noundef nonnull @.str.10) #4 ; 0 uses
  %i.x = call i32 @OPENSSL_sk_num(ptr noundef %4) #4
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %.pre = load ptr, ptr @bio_err, align 8, !tbaa !40
  %i.z = call ptr @OPENSSL_sk_value(ptr noundef %4, i32 noundef 0) #4
  %i.aa = call i32 @ASN1_STRING_print_ex(ptr noundef %.pre, ptr noundef %i.z, i64 noundef 8) #4 ; 0 uses
  %i.ab = call i32 @OPENSSL_sk_num(ptr noundef %4) #4
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  %.019 = phi i32 [ %i.ai, %.lr.ph.peel.next ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.ad = load ptr, ptr @bio_err, align 8, !tbaa !40
  %i.ae = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ad, ptr noundef nonnull @.str.11) #4 ; 0 uses
  %i.af = load ptr, ptr @bio_err, align 8, !tbaa !40
  %i.ag = call ptr @OPENSSL_sk_value(ptr noundef %4, i32 noundef %.019) #4
  %i.ah = call i32 @ASN1_STRING_print_ex(ptr noundef %i.af, ptr noundef %i.ag, i64 noundef 8) #4 ; 0 uses
  %i.ai = add nuw nsw i32 %.019, 1                ; 2 uses
  %i.aj = call i32 @OPENSSL_sk_num(ptr noundef %4) #4
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %.lr.ph.preheader, %bb.k
  %i.al = load ptr, ptr @bio_err, align 8, !tbaa !40
  %i.am = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.al, ptr noundef nonnull @.str.12) #4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @process_certConf(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3, ptr readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_CMP_SRV_CTX_get0_custom_ctx(ptr noundef %0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp eq ptr %3, null
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @OSSL_CMP_MSG_get_bodytype(ptr noundef nonnull %1) #4
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @X509_digest_sig(ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null) #4 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @ASN1_OCTET_STRING_cmp(ptr noundef nonnull %3, ptr noundef nonnull %i.m) #4
  %.not = icmp eq i32 %i.o, 0
  tail call void @ASN1_OCTET_STRING_free(ptr noundef nonnull %i.m) #4
  br i1 %.not, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.a
  %.sink28 = phi i32 [ 663, %bb.b ], [ 657, %bb.a ], [ 663, %bb.d ], [ 663, %bb.c ], [ 671, %bb.f ]
  %.sink = phi i32 [ 158, %bb.b ], [ 103, %bb.a ], [ 158, %bb.d ], [ 158, %bb.c ], [ 156, %bb.f ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink28, ptr noundef nonnull @__func__.process_certConf) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, ptr noundef null) #4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @process_pollReq(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_CMP_SRV_CTX_get0_custom_ctx(ptr noundef %0) #4 ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !44
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp eq ptr %4, null
  %or.cond5 = or i1 %i.d, %or.cond
  br i1 %or.cond5, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @__func__.process_pollReq) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, ptr noundef null) #4
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @OSSL_CMP_MSG_get_bodytype(ptr noundef nonnull %1) #4
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @__func__.process_pollReq) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, ptr noundef null) #4
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 700, ptr noundef nonnull @__func__.process_pollReq) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 105, ptr noundef null) #4
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28
  %.not29 = icmp slt i32 %i.o, %i.q
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.k, ptr %3, align 8, !tbaa !44
  store ptr null, ptr %i.j, align 8, !tbaa !30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29
  %i.t = sext i32 %i.s to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi i64 [ %i.t, %bb.j ], [ 0, %bb.i ]
  store i64 %storemerge, ptr %4, align 8, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.e, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ 0, %bb.e ], [ 0, %bb.g ], [ 1, %bb.k ]
  ret i32 %.0
}

declare i32 @OSSL_CMP_SRV_CTX_init_trans(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @delayed_delivery(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_CMP_SRV_CTX_get0_custom_ctx(ptr noundef %0) #4 ; 4 uses
  %i.b = tail call i32 @OSSL_CMP_MSG_get_bodytype(ptr noundef %1) #4 ; 2 uses
  %i.c = icmp eq ptr %i.a, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @__func__.delayed_delivery) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, ptr noundef null) #4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %2 = icmp ult i32 %i.b, 24
  %switch.shifted = lshr i32 8388757, %i.b
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond26 = select i1 %2, i1 %switch.lobit, i1 false
  br i1 %or.cond26, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @OSSL_CMP_MSG_dup(ptr noundef nonnull %1) #4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.k, ptr %i.l, align 8, !tbaa !30
  %i.m = icmp eq ptr %i.k, null
  %. = select i1 %i.m, i32 -1, i32 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.e ], [ %., %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clean_transaction(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_CMP_SRV_CTX_get0_custom_ctx(ptr noundef %0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 272, ptr noundef nonnull @__func__.clean_transaction) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, ptr noundef null) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  store i32 0, ptr %i.c, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.e) #4
  store ptr null, ptr %i.d, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mock_srv_ctx_free(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.c) #4
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @X509_free(ptr noundef %i.d) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  tail call void @X509_free(ptr noundef %i.f) #4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  tail call void @OSSL_STACK_OF_X509_free(ptr noundef %i.h) #4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  tail call void @OSSL_STACK_OF_X509_free(ptr noundef %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  tail call void @OSSL_CMP_MSG_free(ptr noundef %i.l) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 48) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @OSSL_CMP_SRV_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ossl_cmp_mock_srv_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @OSSL_CMP_SRV_CTX_get0_custom_ctx(ptr noundef nonnull %0) #4
  tail call fastcc void @mock_srv_ctx_free(ptr noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @OSSL_CMP_SRV_CTX_free(ptr noundef %0) #4
  ret void
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_PKISI_new() local_unnamed_addr #2

declare i32 @OSSL_CMP_MSG_get_bodytype(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_MSG_dup(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_HDR_get0_geninfo_ITAVs(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_MSG_get0_header(ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_ITAV_get0_type(ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_ITAV_get0_certProfile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ASN1_STRING_get0_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @OSSL_CRMF_MSG_get0_regCtrl_oldCertID(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CRMF_CERTID_get0_issuer(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CRMF_CERTID_get0_serialNumber(ptr noundef) local_unnamed_addr #2

declare ptr @X509_dup(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_MSG_centralkeygen_requested(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_PKEY_dup(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_CTX_set0_newPkey(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_SRV_CTX_get0_cmp_ctx(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_CMP_PKISI_dup(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get0_serialNumber(ptr noundef) local_unnamed_addr #2

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @process_genm_itav(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  switch i32 %1, label %bb.ac [
    i32 1223, label %bb.b
    i32 1254, label %bb.c
    i32 1256, label %bb.i
    i32 1225, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call ptr @OSSL_CMP_ITAV_new_caCerts(ptr noundef %i.h) #4
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store ptr null, ptr %i.d, align 8, !tbaa !31
  %i.j = call i32 @OSSL_CMP_ITAV_get0_rootCaCert(ptr noundef %2, ptr noundef nonnull %i.d) #4
  %.not41.not = icmp eq i32 %i.j, 0
  br i1 %.not41.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not42 = icmp eq ptr %i.k, null
  br i1 %.not42, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @X509_get_subject_name(ptr noundef nonnull %i.k) #4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = call ptr @X509_get_subject_name(ptr noundef %i.n) #4
  %i.p = call i32 @X509_NAME_cmp(ptr noundef %i.l, ptr noundef %i.o) #4
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @OSSL_CMP_ITAV_new_rootCaKeyUpdate(ptr noundef null, ptr noundef null, ptr noundef null) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = call ptr @OSSL_CMP_ITAV_new_rootCaKeyUpdate(ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.131 = phi ptr [ %i.x, %bb.g ], [ %i.q, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.ad

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store ptr null, ptr %i.e, align 8, !tbaa !47
  %i.y = call i32 @OSSL_CMP_ITAV_get0_crlStatusList(ptr noundef %2, ptr noundef nonnull %i.e) #4
end_hunk_0
