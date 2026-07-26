begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/ssl/ssl_rsa_legacy.c\00", align 1
@__func__.SSL_use_RSAPrivateKey = private unnamed_addr constant [22 x i8] c"SSL_use_RSAPrivateKey\00", align 1
@__func__.SSL_use_RSAPrivateKey_file = private unnamed_addr constant [27 x i8] c"SSL_use_RSAPrivateKey_file\00", align 1
@__func__.SSL_use_RSAPrivateKey_ASN1 = private unnamed_addr constant [27 x i8] c"SSL_use_RSAPrivateKey_ASN1\00", align 1
@__func__.SSL_CTX_use_RSAPrivateKey = private unnamed_addr constant [26 x i8] c"SSL_CTX_use_RSAPrivateKey\00", align 1
@__func__.SSL_CTX_use_RSAPrivateKey_file = private unnamed_addr constant [31 x i8] c"SSL_CTX_use_RSAPrivateKey_file\00", align 1
@__func__.SSL_CTX_use_RSAPrivateKey_ASN1 = private unnamed_addr constant [31 x i8] c"SSL_CTX_use_RSAPrivateKey_ASN1\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_use_RSAPrivateKey(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 23, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, ptr noundef null) #3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_PKEY_new() #3         ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 27, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #3
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @RSA_up_ref(ptr noundef nonnull %1) #3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @EVP_PKEY_free(ptr noundef nonnull %i.b) #3
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.e = tail call i32 @EVP_PKEY_assign(ptr noundef nonnull %i.b, i32 noundef 6, ptr noundef nonnull %1) #3
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @RSA_free(ptr noundef nonnull %1) #3
  tail call void @EVP_PKEY_free(ptr noundef nonnull %i.b) #3
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.g = tail call i32 @SSL_use_PrivateKey(ptr noundef %0, ptr noundef nonnull %i.b) #3
  tail call void @EVP_PKEY_free(ptr noundef nonnull %i.b) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ %i.g, %bb.i ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @RSA_up_ref(ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_assign(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RSA_free(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_use_PrivateKey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_use_RSAPrivateKey_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, ptr noundef null) #3
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @BIO_s_file() #3
  %i.c = tail call ptr @BIO_new(ptr noundef %i.b) #3 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, ptr noundef null) #3
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.c, i32 noundef 108, i64 noundef 3, ptr noundef nonnull %1) #3
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, ptr noundef null) #3
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  switch i32 %2, label %bb.j [
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.h = tail call ptr @d2i_RSAPrivateKey_bio(ptr noundef nonnull %i.c, ptr noundef null) #3
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.i = tail call ptr @SSL_get_default_passwd_cb(ptr noundef %0) #3
  %i.j = tail call ptr @SSL_get_default_passwd_cb_userdata(ptr noundef %0) #3
  %i.k = tail call ptr @PEM_read_bio_RSAPrivateKey(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef %i.i, ptr noundef %i.j) #3
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, ptr noundef null) #3
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.h
  %.018 = phi i32 [ 524301, %bb.h ], [ 524297, %bb.i ]
  %.0 = phi ptr [ %i.h, %bb.h ], [ %i.k, %bb.i ]  ; 3 uses
  %i.l = icmp eq ptr %.0, null
  br i1 %i.l, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 81, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.018, ptr noundef null) #3
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.m = tail call i32 @SSL_use_RSAPrivateKey(ptr noundef %0, ptr noundef nonnull %.0)
  tail call void @RSA_free(ptr noundef nonnull %.0) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.f, %bb.d, %bb.b
  %.017 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.l ], [ %i.m, %bb.m ], [ 0, %bb.j ]
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.c, %bb.f ], [ %i.c, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.j ]
  %i.n = tail call i32 @BIO_free(ptr noundef %.016) #3 ; 0 uses
  ret i32 %.017
}

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #2

declare ptr @BIO_s_file() local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @d2i_RSAPrivateKey_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PEM_read_bio_RSAPrivateKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SSL_get_default_passwd_cb(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_get_default_passwd_cb_userdata(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_use_RSAPrivateKey_ASN1(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  %i.b = call ptr @d2i_RSAPrivateKey(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %2) #3 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_new() #3
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @__func__.SSL_use_RSAPrivateKey_ASN1) #3
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, ptr noundef null) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call i32 @SSL_use_RSAPrivateKey(ptr noundef %0, ptr noundef nonnull %i.b)
  call void @RSA_free(ptr noundef nonnull %i.b) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

declare ptr @d2i_RSAPrivateKey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_CTX_use_RSAPrivateKey(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, ptr noundef null) #3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_PKEY_new() #3         ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #3
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @RSA_up_ref(ptr noundef nonnull %1) #3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @EVP_PKEY_free(ptr noundef nonnull %i.b) #3
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.e = tail call i32 @EVP_PKEY_assign(ptr noundef nonnull %i.b, i32 noundef 6, ptr noundef nonnull %1) #3
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @RSA_free(ptr noundef nonnull %1) #3
  tail call void @EVP_PKEY_free(ptr noundef nonnull %i.b) #3
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.g = tail call i32 @SSL_CTX_use_PrivateKey(ptr noundef %0, ptr noundef nonnull %i.b) #3
  tail call void @EVP_PKEY_free(ptr noundef nonnull %i.b) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ %i.g, %bb.i ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @SSL_CTX_use_PrivateKey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_CTX_use_RSAPrivateKey_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, ptr noundef null) #3
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @BIO_s_file() #3
  %i.c = tail call ptr @BIO_new(ptr noundef %i.b) #3 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, ptr noundef null) #3
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.c, i32 noundef 108, i64 noundef 3, ptr noundef nonnull %1) #3
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 156, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, ptr noundef null) #3
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  switch i32 %2, label %bb.j [
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.h = tail call ptr @d2i_RSAPrivateKey_bio(ptr noundef nonnull %i.c, ptr noundef null) #3
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.i = tail call ptr @SSL_CTX_get_default_passwd_cb(ptr noundef %0) #3
  %i.j = tail call ptr @SSL_CTX_get_default_passwd_cb_userdata(ptr noundef %0) #3
  %i.k = tail call ptr @PEM_read_bio_RSAPrivateKey(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef %i.i, ptr noundef %i.j) #3
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, ptr noundef null) #3
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.h
  %.018 = phi i32 [ 524301, %bb.h ], [ 524297, %bb.i ]
  %.0 = phi ptr [ %i.h, %bb.h ], [ %i.k, %bb.i ]  ; 3 uses
  %i.l = icmp eq ptr %.0, null
  br i1 %i.l, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey_file) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.018, ptr noundef null) #3
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.m = tail call i32 @SSL_CTX_use_RSAPrivateKey(ptr noundef %0, ptr noundef nonnull %.0)
  tail call void @RSA_free(ptr noundef nonnull %.0) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.f, %bb.d, %bb.b
  %.017 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.l ], [ %i.m, %bb.m ], [ 0, %bb.j ]
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.c, %bb.f ], [ %i.c, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.j ]
  %i.n = tail call i32 @BIO_free(ptr noundef %.016) #3 ; 0 uses
  ret i32 %.017
}

declare ptr @SSL_CTX_get_default_passwd_cb(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_CTX_get_default_passwd_cb_userdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_CTX_use_RSAPrivateKey_ASN1(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  %i.b = call ptr @d2i_RSAPrivateKey(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %2) #3 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_new() #3
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @__func__.SSL_CTX_use_RSAPrivateKey_ASN1) #3
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, ptr noundef null) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call i32 @SSL_CTX_use_RSAPrivateKey(ptr noundef %0, ptr noundef nonnull %i.b)
  call void @RSA_free(ptr noundef nonnull %i.b) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
end_hunk_0
