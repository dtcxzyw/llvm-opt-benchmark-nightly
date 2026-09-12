Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ossl_store_test?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@test_store_open:bb.a
  %i.d = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 47, ptr noundef nonnull @.str.26, ptr noundef %i.c) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @OSSL_STORE_SEARCH_by_alias(ptr noundef nonnull @.str.28) #4 ; 7 uses
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 48, ptr noundef nonnull @.str.27, ptr noundef %i.e) #4
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @UI_create_method(ptr noundef nonnull @.str.30) #4 ; 6 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 49, ptr noundef nonnull @.str.29, ptr noundef %i.g) #4
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @OSSL_STORE_open_ex(ptr noundef %i.c, ptr noundef null, ptr noundef null, ptr noundef %i.g, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #4 ; 6 uses
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 51, ptr noundef nonnull @.str.31, ptr noundef %i.i) #4
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @OSSL_STORE_find(ptr noundef %i.i, ptr noundef null) #4
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = tail call i32 @test_false(ptr noundef nonnull @.str.18, i32 noundef 52, ptr noundef nonnull @.str.32, i32 noundef %i.m) #4
  %.not15 = icmp eq i32 %i.n, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @OSSL_STORE_find(ptr noundef %i.i, ptr noundef %i.e) #4
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 53, ptr noundef nonnull @.str.33, i32 noundef %i.q) #4
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.011 = phi ptr [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.010 = phi ptr [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ]
  %.0 = phi ptr [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.u = phi i32 [ %i.t, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  tail call void @UI_destroy_method(ptr noundef %.0) #4
  tail call void @OSSL_STORE_SEARCH_free(ptr noundef %.010) #4
  %i.v = tail call i32 @OSSL_STORE_close(ptr noundef %.011) #4 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.18, i32 noundef 57) #4
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define internal i32 @test_store_search_by_key_fingerprint_fail() #1 {
bb.a:
  %i.a = tail call ptr @EVP_sha256() #4
  %i.b = tail call ptr @OSSL_STORE_SEARCH_by_key_fingerprint(ptr noundef %i.a, ptr noundef null, i64 noundef 0) #4 ; 2 uses
  %i.c = tail call i32 @test_ptr_null(ptr noundef nonnull @.str.18, i32 noundef 136, ptr noundef nonnull @.str.34, ptr noundef %i.b) #4
  tail call void @OSSL_STORE_SEARCH_free(ptr noundef %i.b) #4
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @test_store_delete_null_uri() #1 {
bb.a:
  %i.a = tail call i32 @OSSL_STORE_delete(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #4
  %i.b = tail call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 255, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %i.a, i32 noundef 0) #4
  ret i32 %i.b
}

declare void @add_all_tests(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_store_get_params(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp ult i32 %0, 3
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.18, i32 noundef 198, ptr noundef nonnull @.str.40) #4
  br label %bb.h

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.test_store_get_params, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.d = load ptr, ptr @datadir, align 8, !tbaa !11
  %i.e = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef %i.d, ptr noundef nonnull %switch.load) #4
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 211, ptr noundef nonnull @.str.42, i32 noundef %i.g) #4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.18, i32 noundef 214, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.a) #4
  %i.i = call ptr @OSSL_STORE_open_ex(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #4 ; 5 uses
  %i.j = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 149, ptr noundef nonnull @.str.45, ptr noundef %i.i) #4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %get_params.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.k = call i32 @OSSL_STORE_eof(ptr noundef %i.i) #4
  %.not1719.i = icmp eq i32 %i.k, 0
  br i1 %.not1719.i, label %.lr.ph.i, label %.critedge.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.01420.i = phi ptr [ %.115.i, %bb.f ], [ null, %.preheader.i ] ; 2 uses
  %i.l = call ptr @OSSL_STORE_load(ptr noundef %i.i) #4 ; 4 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp eq ptr %.01420.i, null
  %or.cond.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = call i32 @OSSL_STORE_INFO_get_type(ptr noundef nonnull %i.l) #4
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call ptr @OSSL_STORE_INFO_get1_PARAMS(ptr noundef nonnull %i.l) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.115.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ] ; 2 uses
  call void @OSSL_STORE_INFO_free(ptr noundef nonnull %i.l) #4
  %i.r = call i32 @OSSL_STORE_eof(ptr noundef %i.i) #4
  %.not17.i = icmp eq i32 %i.r, 0
  br i1 %.not17.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !14

.critedge.i:                                      ; preds = %bb.f, %.lr.ph.i
  %.014.lcssa.i = phi ptr [ %.01420.i, %.lr.ph.i ], [ %.115.i, %bb.f ] ; 3 uses
  %.not18.i = icmp eq ptr %.014.lcssa.i, null
  br i1 %.not18.i, label %.critedge.thread.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  %i.s = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %.014.lcssa.i, ptr noundef nonnull %switch.load) #4
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.g, %.critedge.i, %.preheader.i
  %.014.lcssa26.i = phi ptr [ %.014.lcssa.i, %bb.g ], [ null, %.critedge.i ], [ null, %.preheader.i ]
  %.0.i = phi i32 [ %i.u, %bb.g ], [ 0, %.critedge.i ], [ 0, %.preheader.i ]
  call void @EVP_PKEY_free(ptr noundef %.014.lcssa26.i) #4
  br label %get_params.exit

get_params.exit:                                  ; preds = %bb.c, %.critedge.thread.i
  %.1.i = phi i32 [ %.0.i, %.critedge.thread.i ], [ 0, %bb.c ]
  %i.v = call i32 @OSSL_STORE_close(ptr noundef %i.i) #4 ; 0 uses
  %i.w = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 215, ptr noundef nonnull @.str.44, i32 noundef %.1.i) #4
  %.not5 = icmp ne i32 %i.w, 0
  %. = zext i1 %.not5 to i32
  br label %bb.h

bb.h:                                             ; preds = %get_params.exit, %switch.lookup, %bb.b
  %.04 = phi i32 [ 0, %bb.b ], [ 0, %switch.lookup ], [ %., %get_params.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_store_attach_unregistered_scheme() #1 {
bb.a:
  %i.a = load ptr, ptr @inputdir, align 8, !tbaa !11
  %i.b = load ptr, ptr @sm2file, align 8, !tbaa !11
  %i.c = tail call ptr @test_mk_file_path(ptr noundef %i.a, ptr noundef %i.b) #4 ; 3 uses
  %i.d = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 234, ptr noundef nonnull @.str.26, ptr noundef %i.c) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @OSSL_LIB_CTX_new() #4     ; 9 uses
  %i.f = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.46, ptr noundef %i.e) #4
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @OSSL_PROVIDER_load(ptr noundef %i.e, ptr noundef nonnull @.str.48) #4 ; 6 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 236, ptr noundef nonnull @.str.47, ptr noundef %i.g) #4
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @BIO_new_file(ptr noundef %i.c, ptr noundef nonnull @.str.50) #4 ; 6 uses
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 237, ptr noundef nonnull @.str.49, ptr noundef %i.i) #4
  %.not15 = icmp eq i32 %i.j, 0
  br i1 %.not15, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @OSSL_STORE_attach(ptr noundef %i.i, ptr noundef nonnull @.str.52, ptr noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #4 ; 4 uses
  %i.l = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 239, ptr noundef nonnull @.str.51, ptr noundef %i.k) #4
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @ERR_peek_error() #4       ; 2 uses
  %i.n = and i64 %i.m, 2147483648
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = trunc i64 %i.m to i32
  %0 = lshr i32 %i.o, 23
  %.0.i = select i1 %.not.i, i32 %0, i32 2
  %i.p = tail call i32 @test_int_ne(ptr noundef nonnull @.str.18, i32 noundef 240, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %.0.i, i32 noundef 44) #4
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @ERR_peek_error() #4       ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not.i18 = icmp eq i64 %i.r, 0
  %i.s = trunc i64 %i.q to i32
  %.0.v.i = select i1 %.not.i18, i32 8388607, i32 2147483647
  %.0.i19 = and i32 %.0.v.i, %i.s
  %i.t = tail call i32 @test_int_ne(ptr noundef nonnull @.str.18, i32 noundef 242, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %.0.i19, i32 noundef 105) #4
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.012 = phi ptr [ %i.k, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.011 = phi ptr [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.010 = phi ptr [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ]
  %.0 = phi ptr [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.w = phi i32 [ %i.v, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.x = tail call i32 @BIO_free(ptr noundef %.0) #4 ; 0 uses
  %i.y = tail call i32 @OSSL_STORE_close(ptr noundef %.012) #4 ; 0 uses
  %i.z = tail call i32 @OSSL_PROVIDER_unload(ptr noundef %.011) #4 ; 0 uses
  tail call void @OSSL_LIB_CTX_free(ptr noundef %.010) #4
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.18, i32 noundef 248) #4
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @test_mk_file_path(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_SEARCH_by_alias(ptr noundef) local_unnamed_addr #3

declare ptr @UI_create_method(ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_open_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_false(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @UI_destroy_method(ptr noundef) local_unnamed_addr #3

declare void @OSSL_STORE_SEARCH_free(ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_close(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @test_ptr_null(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_SEARCH_by_key_fingerprint(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @EVP_sha256() local_unnamed_addr #3

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @OSSL_STORE_eof(ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_load(ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_INFO_get_type(ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_INFO_get1_PARAMS(ptr noundef) local_unnamed_addr #3

declare void @OSSL_STORE_INFO_free(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_is_a(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_LIB_CTX_new() local_unnamed_addr #3

declare ptr @OSSL_PROVIDER_load(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_int_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @ERR_peek_error() local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PROVIDER_unload(ptr noundef) local_unnamed_addr #3

declare void @OSSL_LIB_CTX_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
end_hunk_0
