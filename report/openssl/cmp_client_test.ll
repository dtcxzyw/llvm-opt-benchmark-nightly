Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cmp_client_test?download=true
inline.NumInlined: 36
inline.NumDeleted: 11
begin_hunk_0_@set_up:bb.a
  tail call void @OPENSSL_sk_free(ptr noundef %i.ar) #5
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 51) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s, %bb.r
  %.0 = phi ptr [ null, %bb.s ], [ %i.a, %bb.r ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @OSSL_CMP_CTX_set1_oldCert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @execute_exec_RR_ses_test(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef %i.d) #5
  %i.f = tail call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 129, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %i.e, i32 noundef -1) #5
  %.not = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !25   ; 5 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @OSSL_CMP_exec_RR_ses(ptr noundef %i.g) #5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = tail call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 131, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %i.h, i32 noundef %i.l) #5
  %.not8 = icmp eq i32 %i.m, 0
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !25   ; 4 uses
  %i.o = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef %i.n) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = call ptr @OSSL_CMP_CTX_snprint_PKIStatus(ptr noundef %i.n, ptr noundef nonnull %i.b, i64 noundef 1024) #5 ; 2 uses
  call void @OSSL_CMP_CTX_print_errors(ptr noundef %i.n) #5
  %i.q = icmp sgt i32 %i.o, 0
  %i.r = icmp ne ptr %i.p, null
  %or.cond.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.c, label %print_errors_PKIStatusInfo.exit

bb.c:                                             ; preds = %bb.b
  %i.s = call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef 4, ptr noundef %i.n, ptr noundef nonnull @__func__.print_errors_PKIStatusInfo, ptr noundef nonnull @.str.14, i32 noundef 123, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.p) #5 ; 0 uses
  br label %print_errors_PKIStatusInfo.exit

print_errors_PKIStatusInfo.exit:                  ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br i1 %.not8, label %bb.f, label %bb.d

bb.d:                                             ; preds = %print_errors_PKIStatusInfo.exit
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.u = call i32 @OSSL_CMP_CTX_get_status(ptr noundef %i.t) #5
  %i.v = load i32, ptr %i.i, align 4, !tbaa !24
  %i.w = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 134, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.63, i32 noundef %i.u, i32 noundef %i.v) #5
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  %i.z = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.aa = call ptr @OSSL_CMP_CTX_snprint_PKIStatus(ptr noundef %i.g, ptr noundef nonnull %i.a, i64 noundef 1024) #5 ; 2 uses
  call void @OSSL_CMP_CTX_print_errors(ptr noundef %i.g) #5
  %i.ab = icmp sgt i32 %i.z, 0
  %i.ac = icmp ne ptr %i.aa, null
  %or.cond.i6 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i6, label %bb.e, label %print_errors_PKIStatusInfo.exit7

bb.e:                                             ; preds = %.critedge
  %i.ad = call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef 4, ptr noundef %i.g, ptr noundef nonnull @__func__.print_errors_PKIStatusInfo, ptr noundef nonnull @.str.14, i32 noundef 123, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.aa) #5 ; 0 uses
  br label %print_errors_PKIStatusInfo.exit7

print_errors_PKIStatusInfo.exit7:                 ; preds = %.critedge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %print_errors_PKIStatusInfo.exit7, %bb.d, %print_errors_PKIStatusInfo.exit
  %i.ae = phi i32 [ 0, %print_errors_PKIStatusInfo.exit ], [ %i.y, %bb.d ], [ 0, %print_errors_PKIStatusInfo.exit7 ]
  ret i32 %i.ae
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ossl_cmp_mock_srv_new(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_SRV_CTX_set_accept_unprotected(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_mock_srv_set1_refCert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_mock_srv_set1_certOut(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_CMP_SRV_CTX_get0_cmp_ctx(ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set1_cert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set1_pkey(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_CMP_CTX_new(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set_log_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @print_to_bio_out(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @OSSL_CMP_CTX_set_transfer_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ossl_cmp_mock_server_perform(ptr noundef, ptr noundef) #1

declare i32 @OSSL_CMP_CTX_set_transfer_cb_arg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set_option(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @set_simple_trust(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_STORE_new() #5       ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @X509_STORE_add_cert(ptr noundef nonnull %i.a, ptr noundef %1) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @X509_STORE_get0_param(ptr noundef nonnull %i.a) #5
  %i.e = tail call i32 @X509_VERIFY_PARAM_set_flags(ptr noundef %i.d, i64 noundef 2621440) #5
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @OSSL_CMP_CTX_set0_trustedStore(ptr noundef %0, ptr noundef nonnull %i.a) #5
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  tail call void @X509_STORE_free(ptr noundef %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

declare i32 @OSSL_CMP_CTX_set1_referenceValue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @X509_STORE_new() local_unnamed_addr #1

declare i32 @X509_STORE_add_cert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @X509_STORE_get0_param(ptr noundef) local_unnamed_addr #1

declare i32 @X509_VERIFY_PARAM_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set0_trustedStore(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @X509_STORE_free(ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_get_status(ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_exec_RR_ses(ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_CMP_CTX_snprint_PKIStatus(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_CMP_CTX_print_errors(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_print_log(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @OSSL_CMP_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @ossl_cmp_mock_srv_free(ptr noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_mock_srv_set_statusInfo(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_mock_srv_set_sendError(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @test_exec_CR_ses(i32 noundef range(i32 0, 2) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @__func__.test_exec_CR_ses) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.e, i32 noundef 25, i32 noundef %0) #5 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = tail call i32 @OSSL_CMP_SRV_CTX_set_grant_implicit_confirm(ptr noundef %i.h, i32 noundef %1) #5 ; 0 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26
  %.not = icmp eq i32 %2, 0
  %i.k = select i1 %.not, i32 -1, i32 24
  %i.l = tail call i32 @ossl_cmp_mock_srv_set_sendError(ptr noundef %i.j, i32 noundef %i.k) #5 ; 0 uses
  %3 = shl nuw nsw i32 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %3, ptr %i.m, align 4, !tbaa !24
  %i.n = tail call fastcc i32 @execute_exec_certrequest_ses_test(ptr noundef %i.a)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.o) #5
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !26
  tail call void @ossl_cmp_mock_srv_free(ptr noundef %i.p) #5
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  tail call void @OPENSSL_sk_free(ptr noundef %i.r) #5
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 51) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.014 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  ret i32 %.014
}

declare i32 @OSSL_CMP_SRV_CTX_set_grant_implicit_confirm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @execute_exec_certrequest_ses_test(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = tail call ptr @OSSL_CMP_exec_certreq(ptr noundef %i.c, i32 noundef %i.e, ptr noundef null) #5 ; 3 uses
  %i.g = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef %i.c) #5
  %i.h = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.i = call ptr @OSSL_CMP_CTX_snprint_PKIStatus(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1024) #5 ; 2 uses
  call void @OSSL_CMP_CTX_print_errors(ptr noundef %i.c) #5
  %i.j = icmp sgt i32 %i.h, 0
  %i.k = icmp ne ptr %i.i, null
  %or.cond.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.b, label %print_errors_PKIStatusInfo.exit

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef 4, ptr noundef %i.c, ptr noundef nonnull @__func__.print_errors_PKIStatusInfo, ptr noundef nonnull @.str.14, i32 noundef 123, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.i) #5 ; 0 uses
  br label %print_errors_PKIStatusInfo.exit

print_errors_PKIStatusInfo.exit:                  ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 170, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %i.g, i32 noundef %i.n) #5
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %print_errors_PKIStatusInfo.exit
  %i.p = load i32, ptr %i.m, align 4, !tbaa !24
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @test_ptr_null(ptr noundef nonnull @.str.14, i32 noundef 173, ptr noundef nonnull @.str.69, ptr noundef %i.f) #5
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.r = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 175, ptr noundef nonnull @.str.69, ptr noundef %i.f) #5
  %.not18 = icmp eq i32 %i.r, 0
  br i1 %.not18, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @client_cert, align 8, !tbaa !11
  %i.t = call i32 @X509_cmp(ptr noundef %i.f, ptr noundef %i.s) #5
  %i.u = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 175, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %i.t, i32 noundef 0) #5
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %.not20 = icmp eq ptr %i.w, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.y = call ptr @OSSL_CMP_CTX_get1_caPubs(ptr noundef %i.x) #5 ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.aa = call i32 @STACK_OF_X509_cmp(ptr noundef %i.z, ptr noundef %i.y) #5
  %i.ab = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 179, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef %i.aa, i32 noundef 0) #5
  call void @OSSL_STACK_OF_X509_free(ptr noundef %i.y) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.f, %print_errors_PKIStatusInfo.exit, %bb.h, %bb.d
  %.0 = phi i32 [ %i.q, %bb.d ], [ %i.ab, %bb.h ], [ 0, %bb.e ], [ 0, %print_errors_PKIStatusInfo.exit ], [ 0, %bb.f ], [ 1, %bb.g ]
  ret i32 %.0
}

declare ptr @OSSL_CMP_exec_certreq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_ptr_null(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @X509_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_CMP_CTX_get1_caPubs(ptr noundef) local_unnamed_addr #1

declare i32 @STACK_OF_X509_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_STACK_OF_X509_free(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_set_thunks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_X509_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  tail call void %0(ptr noundef %1) #5
  ret void
}

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_mock_srv_set1_caPubsOut(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @test_exec_REQ_ses_poll(i32 noundef range(i32 0, 22) %0, i32 noundef range(i32 1, 4) %1, i32 noundef range(i32 0, 16) %2, i32 noundef range(i32 -2, 1) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @set_up(ptr noundef nonnull @__func__.test_exec_REQ_ses_poll) ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %0, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %3, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = tail call i32 @ossl_cmp_mock_srv_set_checkAfterTime(ptr noundef %i.f, i32 noundef 1) #5 ; 0 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.i = tail call i32 @ossl_cmp_mock_srv_set_pollCount(ptr noundef %i.h, i32 noundef %1) #5 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = tail call i32 @OSSL_CMP_CTX_set_option(ptr noundef %i.k, i32 noundef 12, i32 noundef %2) #5 ; 0 uses
  switch i32 %0, label %bb.h [
    i32 0, label %bb.c
    i32 21, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc i32 @execute_exec_certrequest_ses_test(ptr noundef %i.a)
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.n = tail call fastcc i32 @execute_exec_GENM_ses_test_single(ptr noundef nonnull readonly %i.a)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.p = tail call i32 @OSSL_CMP_CTX_reinit(ptr noundef %i.o) #5
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.r = tail call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef 6, ptr noundef %i.q, ptr noundef nonnull @__func__.execute_exec_GENM_ses_test, ptr noundef nonnull @.str.14, i32 noundef 159, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #5
  %.not5.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc i32 @execute_exec_GENM_ses_test_single(ptr noundef nonnull readonly %i.a)
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.021.ph = phi i32 [ %i.m, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ %i.u, %bb.g ]
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !25
  tail call void @OSSL_CMP_CTX_free(ptr noundef %i.v) #5
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !26
  tail call void @ossl_cmp_mock_srv_free(ptr noundef %i.w) #5
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  tail call void @OPENSSL_sk_free(ptr noundef %i.y) #5
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i32 noundef 51) #5
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.021.ph, %.sink.split ]
  ret i32 %.021
}

declare i32 @ossl_cmp_mock_srv_set_checkAfterTime(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_mock_srv_set_pollCount(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @execute_exec_GENM_ses_test_single(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 7 uses
  %i.d = tail call ptr @OBJ_txt2obj(ptr noundef nonnull @.str.76, i32 noundef 1) #5
  %i.e = tail call ptr @OSSL_CMP_ITAV_create(ptr noundef %i.d, ptr noundef null) #5
end_hunk_0
