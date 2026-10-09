Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/v3_purp?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@X509_PURPOSE_get_by_sname:bb.a
  %spec.select11 = select i1 %.not.8, i32 8, i32 -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ 6, %bb.g ], [ 1, %bb.b ], [ %spec.select11, %bb.i ], [ 2, %bb.c ], [ 5, %bb.f ], [ 3, %bb.d ], [ 7, %bb.h ], [ 4, %bb.e ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_PURPOSE_get_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !62
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_PURPOSE_get0_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_PURPOSE_get0_sname(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_PURPOSE_get_trust(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_supported_extension(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_EXTENSION_get_object(ptr noundef %0) #7
  %i.b = tail call i32 @OBJ_obj2nid(ptr noundef %i.a) #7 ; 2 uses
  switch i32 %i.b, label %bb.b [
    i32 747, label %bb.c
    i32 666, label %bb.c
    i32 401, label %bb.c
    i32 126, label %bb.c
    i32 103, label %bb.c
    i32 89, label %bb.c
    i32 87, label %bb.c
    i32 85, label %bb.c
    i32 83, label %bb.c
    i32 71, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, 748
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %i.e
}

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #3

declare ptr @X509_EXTENSION_get_object(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_MUTEX_lock_read(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_MUTEX_unlock_read(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_MUTEX_lock_write(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_MUTEX_unlock_write(ptr noundef) local_unnamed_addr #3

declare i32 @X509_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_sha256() local_unnamed_addr #3

declare i64 @X509_get_version(ptr noundef) local_unnamed_addr #3

declare ptr @X509_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ASN1_INTEGER_get(ptr noundef) local_unnamed_addr #3

declare void @BASIC_CONSTRAINTS_free(ptr noundef) local_unnamed_addr #3

declare void @ASN1_BIT_STRING_free(ptr noundef) local_unnamed_addr #3

declare void @ASN1_OBJECT_free(ptr noundef) #3

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #3

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 32) i32 @X509_check_akid(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %.not28 = icmp eq ptr %i.a, null
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @ASN1_OCTET_STRING_cmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7
  %.not30 = icmp eq i32 %i.d, 0
  br i1 %.not30, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @X509_get_serialNumber(ptr noundef %0) #7
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.i = tail call i32 @ASN1_INTEGER_cmp(ptr noundef %i.g, ptr noundef %i.h) #7
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.l = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.k) #7
  %.not41 = icmp eq i64 %i.l, 0
  br i1 %.not41, label %.thread38, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.02140, 1                   ; 2 uses
  %i.n = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.k) #7
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread38, !llvm.loop !66

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.02140 = phi i64 [ %i.m, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.p = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.k, i64 noundef %.02140) #7 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %.not34 = icmp eq ptr %i.t, null
  br i1 %.not34, label %.thread38, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @X509_get_issuer_name(ptr noundef %0) #7
  %i.v = tail call i32 @X509_NAME_cmp(ptr noundef nonnull %i.t, ptr noundef %i.u) #7
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %.thread38, label %bb.k

.thread38:                                        ; preds = %bb.h, %.preheader, %bb.i, %bb.j
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %.thread38, %bb.j, %bb.f, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 30, %bb.d ], [ 31, %bb.j ], [ 31, %bb.f ], [ 0, %.thread38 ], [ 0, %bb.g ]
  ret i32 %.1
}

declare i32 @X509_get_ext_count(ptr noundef) local_unnamed_addr #3

declare ptr @X509_get_ext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_EXTENSION_get_critical(ptr noundef) local_unnamed_addr #3

declare i32 @x509_init_signature_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_check_ca(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %check_ca.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.d = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = and i32 %i.f, 4
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %check_ca.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = and i32 %i.c, 8256
  %i.i = icmp eq i32 %i.h, 8256
  br i1 %i.i, label %check_ca.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.c, 17
  %.not6.i = icmp eq i32 %i.j, 17
  %1 = zext i1 %.not6.i to i32
  br label %check_ca.exit

check_ca.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %1, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 33) i32 @X509_check_issued(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_get_subject_name(ptr noundef %0) #7
  %i.b = tail call ptr @X509_get_issuer_name(ptr noundef %1) #7
  %i.c = tail call i32 @X509_NAME_cmp(ptr noundef %i.a, ptr noundef %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @x509v3_cache_extensions(ptr noundef %1)
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @X509_check_akid(ptr noundef %0, ptr noundef nonnull %i.g) ; 2 uses
  %.not17.not = icmp eq i32 %i.h, 0
  br i1 %.not17.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24
  %i.k = and i32 %i.j, 2
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28
  %i.n = and i32 %i.m, 4
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.b, %bb.c, %bb.a, %bb.h
  %.1 = phi i32 [ 29, %bb.a ], [ 0, %bb.h ], [ 1, %bb.b ], [ %i.h, %bb.e ], [ 1, %bb.c ], [ 32, %bb.g ]
  ret i32 %.1
}

declare i32 @ASN1_OCTET_STRING_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ASN1_INTEGER_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @X509_get_serialNumber(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @X509_get_extension_flags(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @X509_get_key_usage(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = and i32 %i.c, 2
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @X509_get_extended_key_usage(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = and i32 %i.c, 4
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_get0_subject_key_id(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_get0_authority_key_id(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_get0_authority_issuer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_get0_authority_serial(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i64 @X509_get_pathlen(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.g, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @check_purpose_ssl_client(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = and i32 %i.e, 2
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %check_ca.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9 = icmp eq i32 %2, 0
  %i.g = and i32 %i.b, 2
  %.not10 = icmp eq i32 %i.g, 0                   ; 2 uses
  br i1 %.not9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = and i32 %i.i, 4
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %check_ca.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = and i32 %i.b, 8256
  %i.l = icmp eq i32 %i.k, 8256
  br i1 %i.l, label %check_ca.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = and i32 %i.b, 17
  %.not6.i = icmp eq i32 %i.m, 17
  %3 = zext i1 %.not6.i to i32
  br label %check_ca.exit

bb.h:                                             ; preds = %bb.c
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  %i.p = and i32 %i.o, 136
  %.not11 = icmp eq i32 %i.p, 0
  br i1 %.not11, label %check_ca.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = and i32 %i.b, 8
  %.not12 = icmp eq i32 %i.q, 0
  br i1 %.not12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
  %i.t = and i32 %i.s, 128
  %.not13 = icmp eq i32 %i.t, 0
  br i1 %.not13, label %check_ca.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %check_ca.exit

check_ca.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.k, %bb.i, %bb.b, %bb.l
  %.0 = phi i32 [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ %3, %bb.g ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @check_purpose_ssl_server(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = and i32 %i.e, 1
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %check_ca.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9 = icmp eq i32 %2, 0
  br i1 %.not9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.b, 2
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = and i32 %i.i, 4
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %check_ca.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = and i32 %i.b, 8256
  %i.l = icmp eq i32 %i.k, 8256
  br i1 %i.l, label %check_ca.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = and i32 %i.b, 17
  %.not6.i = icmp eq i32 %i.m, 17
  %3 = zext i1 %.not6.i to i32
  br label %check_ca.exit

bb.h:                                             ; preds = %bb.c
  %i.n = and i32 %i.b, 8
  %.not10 = icmp eq i32 %i.n, 0
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = and i32 %i.p, 64
  %.not11 = icmp eq i32 %i.q, 0
  br i1 %.not11, label %check_ca.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = and i32 %i.b, 2
  %.not12 = icmp eq i32 %i.r, 0
  br i1 %.not12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = and i32 %i.t, 168
  %.not13 = icmp eq i32 %i.u, 0
  br i1 %.not13, label %check_ca.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %check_ca.exit

check_ca.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.k, %bb.i, %bb.b, %bb.l
  %.0 = phi i32 [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ %3, %bb.g ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @check_purpose_ns_ssl_server(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = and i32 %i.b, 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = and i32 %i.e, 1
  %.not8.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i, label %check_purpose_ssl_server.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq i32 %2, 0
  br i1 %.not9.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.b, 2
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = and i32 %i.i, 4
  %.not5.i.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i.i, label %check_purpose_ssl_server.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = and i32 %i.b, 8256
  %i.l = icmp eq i32 %i.k, 8256
  br i1 %i.l, label %check_purpose_ssl_server.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = and i32 %i.b, 17
  %.not6.i.i = icmp eq i32 %i.m, 17
  %3 = zext i1 %.not6.i.i to i32
  br label %check_purpose_ssl_server.exit.thread

bb.h:                                             ; preds = %bb.c
  %i.n = and i32 %i.b, 8
  %.not10.i = icmp eq i32 %i.n, 0
  br i1 %.not10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = and i32 %i.p, 64
  %.not11.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i, label %check_purpose_ssl_server.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = and i32 %i.b, 2
  %.not12.i = icmp eq i32 %i.r, 0
  br i1 %.not12.i, label %check_purpose_ssl_server.exit.thread14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = and i32 %i.t, 168
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %check_purpose_ssl_server.exit.thread, label %check_purpose_ssl_server.exit

check_purpose_ssl_server.exit:                    ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !28
  %i.x = and i32 %i.w, 32
  %.not11 = icmp eq i32 %i.x, 0
  br i1 %.not11, label %check_purpose_ssl_server.exit.thread, label %check_purpose_ssl_server.exit.thread14

check_purpose_ssl_server.exit.thread14:           ; preds = %bb.j, %check_purpose_ssl_server.exit
  br label %check_purpose_ssl_server.exit.thread

check_purpose_ssl_server.exit.thread:             ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.i, %bb.k, %check_purpose_ssl_server.exit, %check_purpose_ssl_server.exit.thread14
  %.0 = phi i32 [ 0, %bb.k ], [ 1, %check_purpose_ssl_server.exit.thread14 ], [ 0, %check_purpose_ssl_server.exit ], [ 1, %bb.f ], [ %3, %bb.g ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @check_purpose_smime_sign(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = and i32 %i.b, 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = and i32 %i.e, 4
  %.not8.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i, label %purpose_smime.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq i32 %2, 0
  %i.g = and i32 %i.b, 8
  %.not10.i = icmp eq i32 %i.g, 0                 ; 2 uses
  br i1 %.not9.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %purpose_smime.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = and i32 %i.b, 2
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = and i32 %i.n, 4
  %.not5.i.i = icmp eq i32 %i.o, 0
  br i1 %.not5.i.i, label %purpose_smime.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = and i32 %i.b, 8256
  %i.q = icmp eq i32 %i.p, 8256
  br i1 %i.q, label %purpose_smime.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.b, 17
  %.not6.i.i = icmp eq i32 %i.r, 17
  %3 = zext i1 %.not6.i.i to i32
  br label %purpose_smime.exit.thread

bb.j:                                             ; preds = %bb.c
  br i1 %.not10.i, label %purpose_smime.exit.thread13, label %purpose_smime.exit

purpose_smime.exit:                               ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = and i32 %i.t, 32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %purpose_smime.exit.thread, label %purpose_smime.exit.thread13

purpose_smime.exit.thread13:                      ; preds = %bb.j, %purpose_smime.exit
  %i.w = and i32 %i.b, 2
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %purpose_smime.exit.thread13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !28
  %i.z = and i32 %i.y, 192
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %purpose_smime.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %purpose_smime.exit.thread13
  br label %purpose_smime.exit.thread

purpose_smime.exit.thread:                        ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.b, %bb.k, %purpose_smime.exit, %bb.l
  %.0 = phi i32 [ 0, %purpose_smime.exit ], [ 1, %bb.l ], [ 0, %bb.k ], [ 1, %bb.h ], [ %3, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @check_purpose_smime_encrypt(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = and i32 %i.b, 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = and i32 %i.e, 4
  %.not8.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i, label %purpose_smime.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq i32 %2, 0
  %i.g = and i32 %i.b, 8
  %.not10.i = icmp eq i32 %i.g, 0                 ; 2 uses
  br i1 %.not9.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %purpose_smime.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = and i32 %i.b, 2
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = and i32 %i.n, 4
  %.not5.i.i = icmp eq i32 %i.o, 0
  br i1 %.not5.i.i, label %purpose_smime.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = and i32 %i.b, 8256
  %i.q = icmp eq i32 %i.p, 8256
  br i1 %i.q, label %purpose_smime.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.b, 17
  %.not6.i.i = icmp eq i32 %i.r, 17
  %3 = zext i1 %.not6.i.i to i32
  br label %purpose_smime.exit.thread

bb.j:                                             ; preds = %bb.c
  br i1 %.not10.i, label %purpose_smime.exit.thread13, label %purpose_smime.exit

purpose_smime.exit:                               ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = and i32 %i.t, 32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %purpose_smime.exit.thread, label %purpose_smime.exit.thread13

purpose_smime.exit.thread13:                      ; preds = %bb.j, %purpose_smime.exit
  %i.w = and i32 %i.b, 2
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %purpose_smime.exit.thread13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !28
  %i.z = and i32 %i.y, 32
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %purpose_smime.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %purpose_smime.exit.thread13
  br label %purpose_smime.exit.thread

purpose_smime.exit.thread:                        ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.b, %bb.k, %purpose_smime.exit, %bb.l
  %.0 = phi i32 [ 0, %purpose_smime.exit ], [ 1, %bb.l ], [ 0, %bb.k ], [ 1, %bb.h ], [ %3, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @check_purpose_crl_sign(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = and i32 %i.b, 2
  %.not4 = icmp eq i32 %i.c, 0                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = and i32 %i.e, 4
  %.not5.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i, label %check_ca.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = and i32 %i.b, 8256
  %i.h = icmp eq i32 %i.g, 8256
  br i1 %i.h, label %check_ca.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.b, 17
  %.not6.i = icmp eq i32 %i.i, 17
  %3 = zext i1 %.not6.i to i32
  br label %check_ca.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = and i32 %i.k, 2
  %.not5 = icmp eq i32 %i.l, 0
  br i1 %.not5, label %check_ca.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %check_ca.exit

check_ca.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.h
  %.0 = phi i32 [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.c ], [ %3, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @no_check(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @ocsp_helper(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %check_ca.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = and i32 %i.b, 2
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = and i32 %i.e, 4
  %.not5.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i, label %check_ca.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = and i32 %i.b, 8256
  %i.h = icmp eq i32 %i.g, 8256
  br i1 %i.h, label %check_ca.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.b, 17
  %.not6.i = icmp eq i32 %i.i, 17
  %3 = zext i1 %.not6.i to i32
  br label %check_ca.exit

check_ca.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ %3, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_purpose_timestamp_sign(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = and i32 %i.b, 2
  %.not15 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = and i32 %i.e, 4
  %.not5.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i, label %check_ca.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = and i32 %i.b, 8256
  %i.h = icmp eq i32 %i.g, 8256
  br i1 %i.h, label %check_ca.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.b, 17
  %.not6.i = icmp eq i32 %i.i, 17
  %3 = zext i1 %.not6.i to i32
  br label %check_ca.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28   ; 2 uses
  %i.l = and i32 %i.k, -193
  %.not16 = icmp ne i32 %i.l, 0
  %.not17 = icmp eq i32 %i.k, 0
  %or.cond = or i1 %.not17, %.not16
  %i.m = and i32 %i.b, 4
  %.not18 = icmp eq i32 %i.m, 0
  %or.cond21 = or i1 %.not18, %or.cond
  br i1 %or.cond21, label %check_ca.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.old = and i32 %i.b, 4
  %.not18.old = icmp eq i32 %.old, 0
  br i1 %.not18.old, label %check_ca.exit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %.not19 = icmp eq i32 %i.o, 64
  br i1 %.not19, label %bb.j, label %check_ca.exit

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @X509_get_ext_by_NID(ptr noundef nonnull %1, i32 noundef 126, i32 noundef -1) #7 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = tail call ptr @X509_get_ext(ptr noundef nonnull %1, i32 noundef %i.p) #7
  %i.s = tail call i32 @X509_EXTENSION_get_critical(ptr noundef %i.r) #7
  %.not20.not = icmp eq i32 %i.s, 0
  br i1 %.not20.not, label %check_ca.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %check_ca.exit

check_ca.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.l, %bb.k, %bb.h, %bb.i, %bb.g
  %.2 = phi i32 [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %bb.l ], [ 0, %bb.c ], [ %3, %bb.e ], [ 1, %bb.d ]
  ret i32 %.2
}

declare i32 @X509_get_ext_by_NID(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_pop_free_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_ASN1_OBJECT_call_free_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  tail call void %0(ptr noundef %1) #7
  ret void
}

declare i32 @DIST_POINT_set_dpname(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"x509_purpose_st", !5, i64 0, !5, i64 4, !5, i64 8, !8, i64 16, !9, i64 24, !9, i64 32, !8, i64 40}
!11 = !{!"p1 _ZTS13X509_algor_st", !8, i64 0}
!12 = !{!"p1 _ZTS14asn1_string_st", !8, i64 0}
!13 = !{!"x509_sig_info_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!15 = !{!"crypto_ex_data_st", !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !8, i64 0}
!18 = !{!"p1 _ZTS19stack_st_DIST_POINT", !8, i64 0}
!19 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !8, i64 0}
!20 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !8, i64 0}
!21 = !{!"p1 _ZTS16x509_cert_aux_st", !8, i64 0}
!22 = !{!"p1 _ZTS16crypto_buffer_st", !8, i64 0}
!23 = !{!"x509_st", !8, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !5, i64 40, !15, i64 48, !16, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !12, i64 80, !17, i64 88, !18, i64 96, !19, i64 104, !20, i64 112, !4, i64 120, !21, i64 152, !22, i64 160, !4, i64 168}
!24 = !{!23, !5, i64 64}
!25 = !{!23, !16, i64 56}
!26 = !{!5, !5, i64 0}
!27 = !{!4, !4, i64 0}
!28 = !{!23, !5, i64 68}
!29 = !{!23, !5, i64 72}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!23, !5, i64 76}
!32 = !{!23, !12, i64 80}
!33 = !{!23, !17, i64 88}
!34 = !{!"GENERAL_NAME_st", !5, i64 0, !4, i64 8}
!35 = !{!34, !5, i64 0}
!36 = !{!"AUTHORITY_KEYID_st", !12, i64 0, !19, i64 8, !12, i64 16}
!37 = !{!36, !12, i64 0}
!38 = !{!36, !12, i64 16}
!39 = !{!36, !19, i64 8}
!40 = !{!10, !8, i64 16}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = !{!"BASIC_CONSTRAINTS_st", !5, i64 0, !12, i64 8}
!46 = !{!45, !5, i64 0}
!47 = !{!45, !12, i64 8}
!48 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !9, i64 8, !16, i64 16}
!49 = !{!48, !5, i64 4}
!50 = !{!48, !5, i64 0}
!51 = !{!48, !9, i64 8}
!52 = !{!23, !19, i64 104}
!53 = !{!23, !20, i64 112}
!54 = !{!23, !18, i64 96}
!55 = !{!"p1 _ZTS18DIST_POINT_NAME_st", !8, i64 0}
!56 = !{!"DIST_POINT_st", !55, i64 0, !12, i64 8, !19, i64 16}
!57 = !{!56, !55, i64 0}
!58 = !{!"p1 _ZTS12X509_name_st", !8, i64 0}
!59 = !{!"DIST_POINT_NAME_st", !5, i64 0, !4, i64 8, !58, i64 16}
!60 = !{!59, !5, i64 0}
!61 = !{!56, !19, i64 16}
!62 = !{!10, !5, i64 0}
!63 = !{!10, !9, i64 24}
!64 = !{!10, !9, i64 32}
!65 = !{!10, !5, i64 4}
!66 = distinct !{!66, !30}
end_hunk_0
