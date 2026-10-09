Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x509_set?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_set.c\00", align 1
@__func__.x509_sig_info_init = private unnamed_addr constant [19 x i8] c"x509_sig_info_init\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_set_version(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !36
  %i.c = tail call i64 @ASN1_INTEGER_get(ptr noundef %i.b) #7
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  %i.f = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ASN1_INTEGER_free(ptr noundef %i.f) #7
  store ptr null, ptr %0, align 8, !tbaa !36
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @ASN1_INTEGER_new() #7     ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !36
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi ptr [ %i.h, %bb.f ], [ %i.f, %bb.e ]
  %i.k = tail call i32 @ASN1_INTEGER_set(ptr noundef nonnull %i.j, i64 noundef %1) #7
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.l, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.g ], [ 1, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @X509_get_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = tail call i64 @ASN1_INTEGER_get(ptr noundef %i.a) #7
  ret i64 %i.b
}

declare void @ASN1_INTEGER_free(ptr noundef) local_unnamed_addr #1

declare ptr @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @X509_set_serialNumber(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @ASN1_STRING_copy(ptr noundef nonnull %i.b, ptr noundef %1) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.d, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ %i.c, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ASN1_STRING_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_set_issuer_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = tail call i32 @X509_NAME_set(ptr noundef nonnull %i.b, ptr noundef %1) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.d, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @X509_NAME_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_set_subject_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = tail call i32 @X509_NAME_set(ptr noundef nonnull %i.b, ptr noundef %1) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.d, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_x509_set1_time(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38
  %i.b = icmp eq ptr %i.a, %2
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ASN1_STRING_dup(ptr noundef %2) #7 ; 2 uses
  %i.d = icmp ne ptr %2, null
  %i.e = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @ASN1_TIME_free(ptr noundef %i.f) #7
  store ptr %i.c, ptr %1, align 8, !tbaa !38
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %0, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

declare ptr @ASN1_STRING_dup(ptr noundef) local_unnamed_addr #1

declare void @ASN1_TIME_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_set1_notBefore(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ossl_x509_set1_time.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %ossl_x509_set1_time.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @ASN1_STRING_dup(ptr noundef nonnull %1) #7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %ossl_x509_set1_time.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void @ASN1_TIME_free(ptr noundef %i.i) #7
  store ptr %i.g, ptr %i.d, align 8, !tbaa !38
  store i32 1, ptr %i.c, align 8, !tbaa !39
  br label %ossl_x509_set1_time.exit

ossl_x509_set1_time.exit:                         ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_set1_notAfter(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ossl_x509_set1_time.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %ossl_x509_set1_time.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @ASN1_STRING_dup(ptr noundef nonnull %1) #7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %ossl_x509_set1_time.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void @ASN1_TIME_free(ptr noundef %i.i) #7
  store ptr %i.g, ptr %i.d, align 8, !tbaa !38
  store i32 1, ptr %i.c, align 8, !tbaa !39
  br label %ossl_x509_set1_time.exit

ossl_x509_set1_time.exit:                         ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_set_pubkey(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call i32 @X509_PUBKEY_set(ptr noundef nonnull %i.b, ptr noundef %1) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.d, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @X509_PUBKEY_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @X509_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

declare i64 @ASN1_INTEGER_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_get0_notBefore(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_get0_notAfter(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_getm_notBefore(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_getm_notAfter(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define i32 @X509_get_signature_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @OBJ_obj2nid(ptr noundef %i.b) #7
  %i.d = tail call i32 @EVP_PKEY_type(i32 noundef %i.c) #7
  ret i32 %i.d
}

declare i32 @EVP_PKEY_type(i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_get_X509_PUBKEY(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_get0_extensions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @X509_get0_uids(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.b, ptr %1, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  store ptr %i.d, ptr %2, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @X509_get0_tbs_sigalg(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @X509_SIG_INFO_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !43
  store i32 %i.a, ptr %1, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !44
  store i32 %i.c, ptr %2, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45
  store i32 %i.e, ptr %3, align 4, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !46 ; 2 uses
  br i1 %.not18, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.pre, ptr %4, align 4, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.f = and i32 %.pre, 1
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @X509_SIG_INFO_set(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.b, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.c, align 4, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_get_signature_info(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @X509_check_purpose(ptr noundef %0, i32 noundef -1, i32 noundef -1) #7 ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i32, ptr %i.b, align 4, !tbaa !43
  store i32 %i.c, ptr %1, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16.i = icmp eq ptr %2, null
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44
  store i32 %i.e, ptr %2, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17.i = icmp eq ptr %3, null
  br i1 %.not17.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  store i32 %i.g, ptr %3, align 4, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18.i = icmp eq ptr %4, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !46 ; 2 uses
  br i1 %.not18.i, label %X509_SIG_INFO_get.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.pre.i, ptr %4, align 4, !tbaa !39
  br label %X509_SIG_INFO_get.exit

X509_SIG_INFO_get.exit:                           ; preds = %bb.g, %bb.h
  %i.h = and i32 %.pre.i, 1
  ret i32 %i.h
}

declare i32 @X509_check_purpose(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_x509_init_sig_info(ptr noundef %0, ptr noundef initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = tail call ptr @X509_PUBKEY_get0(ptr noundef %i.f) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %1, align 4, !tbaa !39
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.k = tail call i32 @OBJ_obj2nid(ptr noundef %i.j) #7
  %i.l = call i32 @OBJ_find_sigid_algs(i32 noundef %i.k, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load i32, ptr %i.a, align 4              ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 226, ptr noundef nonnull @__func__.x509_sig_info_init) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 144, ptr noundef null) #7
  br label %x509_sig_info_init.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.b, align 4, !tbaa !39   ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !43
  store i32 %i.n, ptr %i.p, align 4, !tbaa !44
  switch i32 %i.q, label %bb.k [
    i32 0, label %bb.d
    i32 64, label %.thread42.i
    i32 4, label %bb.i
    i32 809, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @evp_pkey_asn1_find(i32 noundef %i.n) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %.not36.i = icmp eq ptr %i.t, null
  br i1 %.not36.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 %i.t(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #7, !inline_history !51
  %.not37.i = icmp eq i32 %i.u, 0
  br i1 %.not37.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.not38.i = icmp eq ptr %i.g, null
  br i1 %.not38.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call i32 @EVP_PKEY_get_security_bits(ptr noundef nonnull %i.g) #7 ; 2 uses
  %.not39.i = icmp eq i32 %i.v, 0
  br i1 %.not39.i, label %.thread.i, label %.sink.split.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @__func__.x509_sig_info_init) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 142, ptr noundef null) #7
  br label %x509_sig_info_init.exit

.thread42.i:                                      ; preds = %bb.c
  store i32 63, ptr %i.h, align 4, !tbaa !45
  br label %bb.p

bb.i:                                             ; preds = %bb.c
  store i32 39, ptr %i.h, align 4, !tbaa !45
  br label %.thread41.i

bb.j:                                             ; preds = %bb.c
  store i32 105, ptr %i.h, align 4, !tbaa !45
  br label %.thread41.i

bb.k:                                             ; preds = %bb.c
  %i.w = call ptr @OBJ_nid2sn(i32 noundef %i.q) #7
  %i.x = call ptr @EVP_get_digestbyname(ptr noundef %i.w) #7 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 280, ptr noundef nonnull @__func__.x509_sig_info_init) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 141, ptr noundef null) #7
  br label %x509_sig_info_init.exit

bb.m:                                             ; preds = %bb.k
  %i.z = call i32 @EVP_MD_get_size(ptr noundef nonnull %i.x) #7 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %x509_sig_info_init.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = shl nuw nsw i32 %i.z, 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.h
  %.sink.i = phi i32 [ %i.ab, %bb.n ], [ %i.v, %bb.h ]
  store i32 %.sink.i, ptr %i.h, align 4, !tbaa !45
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.f
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !39
  switch i32 %.pr.i, label %.thread41.i [
    i32 64, label %bb.p
    i32 672, label %bb.p
    i32 673, label %bb.p
    i32 674, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %.thread42.i
  %i.ac = load i32, ptr %i.i, align 4, !tbaa !46
  %i.ad = or i32 %i.ac, 2
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !46
  br label %.thread41.i

.thread41.i:                                      ; preds = %bb.p, %bb.o, %bb.j, %bb.i
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !46
  %i.af = or i32 %i.ae, 1
  store i32 %i.af, ptr %i.i, align 4, !tbaa !46
  br label %x509_sig_info_init.exit

x509_sig_info_init.exit:                          ; preds = %bb.b, %.thread.i, %bb.l, %bb.m, %.thread41.i
  %.029.i = phi i32 [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %.thread.i ], [ 1, %.thread41.i ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.029.i
}

declare ptr @X509_PUBKEY_get0(ptr noundef) local_unnamed_addr #1

declare i32 @OBJ_find_sigid_algs(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @evp_pkey_asn1_find(i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_security_bits(ptr noundef) local_unnamed_addr #1

declare ptr @EVP_get_digestbyname(ptr noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14asn1_string_st", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !10, i64 8, !11, i64 16}
!13 = !{!"p1 _ZTS14asn1_object_st", !8, i64 0}
!14 = !{!"p1 _ZTS12asn1_type_st", !8, i64 0}
!15 = !{!"X509_algor_st", !13, i64 0, !14, i64 8}
!16 = !{!"p1 _ZTS12X509_name_st", !8, i64 0}
!17 = !{!"X509_val_st", !9, i64 0, !9, i64 8}
!18 = !{!"p1 _ZTS14X509_pubkey_st", !8, i64 0}
!19 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !8, i64 0}
!20 = !{!"ASN1_ENCODING_st", !10, i64 0, !11, i64 8, !5, i64 16}
!21 = !{!"x509_cinf_st", !9, i64 0, !12, i64 8, !15, i64 32, !16, i64 48, !17, i64 56, !16, i64 72, !18, i64 80, !9, i64 88, !9, i64 96, !19, i64 104, !20, i64 112}
!22 = !{!"x509_sig_info_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!23 = !{!"", !4, i64 0}
!24 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!25 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!26 = !{!"crypto_ex_data_st", !24, i64 0, !25, i64 8}
!27 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !8, i64 0}
!28 = !{!"p1 _ZTS20X509_POLICY_CACHE_st", !8, i64 0}
!29 = !{!"p1 _ZTS19stack_st_DIST_POINT", !8, i64 0}
!30 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !8, i64 0}
!31 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !8, i64 0}
!32 = !{!"p1 _ZTS24stack_st_IPAddressFamily", !8, i64 0}
!33 = !{!"p1 _ZTS16ASIdentifiers_st", !8, i64 0}
!34 = !{!"p1 _ZTS16x509_cert_aux_st", !8, i64 0}
!35 = !{!"x509_st", !21, i64 0, !15, i64 136, !12, i64 152, !22, i64 176, !23, i64 192, !26, i64 200, !11, i64 216, !11, i64 224, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !9, i64 248, !27, i64 256, !28, i64 264, !29, i64 272, !30, i64 280, !31, i64 288, !32, i64 296, !33, i64 304, !4, i64 312, !34, i64 336, !8, i64 344, !5, i64 352, !9, i64 360, !24, i64 368, !10, i64 376}
!36 = !{!35, !9, i64 0}
!37 = !{!35, !5, i64 128}
!38 = !{!9, !9, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!35, !9, i64 56}
!41 = !{!35, !9, i64 64}
!42 = !{!35, !18, i64 80}
!43 = !{!22, !5, i64 0}
!44 = !{!22, !5, i64 4}
!45 = !{!22, !5, i64 8}
!46 = !{!22, !5, i64 12}
!47 = !{!35, !13, i64 136}
!48 = !{!35, !19, i64 104}
!49 = !{!35, !9, i64 88}
!50 = !{!35, !9, i64 96}
!51 = distinct !{null}
!52 = !{!15, !13, i64 0}
!53 = !{!"evp_pkey_asn1_method_st", !5, i64 0, !5, i64 4, !11, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312}
!54 = !{!53, !8, i64 216}
end_hunk_0
