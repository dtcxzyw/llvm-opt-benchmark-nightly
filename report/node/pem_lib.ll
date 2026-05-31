inline.NumInlined: 23
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evp_cipher_info_st = type { ptr, [16 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"Enter PEM pass phrase:\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/crypto/pem/pem_lib.c\00", align 1
@__func__.PEM_def_callback = private unnamed_addr constant [17 x i8] c"PEM_def_callback\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ENCRYPTED\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MIC-CLEAR\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"MIC-ONLY\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BAD-TYPE\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Proc-Type: 4,%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DEK-Info: %s,\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.PEM_ASN1_read = private unnamed_addr constant [14 x i8] c"PEM_ASN1_read\00", align 1
@__func__.PEM_ASN1_write = private unnamed_addr constant [15 x i8] c"PEM_ASN1_write\00", align 1
@__func__.PEM_do_header = private unnamed_addr constant [14 x i8] c"PEM_do_header\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Proc-Type:\00", align 1
@__func__.PEM_get_EVP_CIPHER_INFO = private unnamed_addr constant [24 x i8] c"PEM_get_EVP_CIPHER_INFO\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" \09\0D\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"DEK-Info:\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" \09,\00", align 1
@__func__.PEM_write = private unnamed_addr constant [10 x i8] c"PEM_write\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"-----END \00", align 1
@__func__.PEM_write_bio = private unnamed_addr constant [14 x i8] c"PEM_write_bio\00", align 1
@__func__.PEM_read = private unnamed_addr constant [9 x i8] c"PEM_read\00", align 1
@__func__.PEM_read_bio_ex = private unnamed_addr constant [16 x i8] c"PEM_read_bio_ex\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Expecting: \00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"ANY PRIVATE KEY\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"ENCRYPTED PRIVATE KEY\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"X9.42 DH PARAMETERS\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"DH PARAMETERS\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"X509 CERTIFICATE\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"NEW CERTIFICATE REQUEST\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"CERTIFICATE REQUEST\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"PKCS7\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"PKCS #7 SIGNED DATA\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"CMS\00", align 1
@__func__.PEM_ASN1_write_bio_internal = private unnamed_addr constant [28 x i8] c"PEM_ASN1_write_bio_internal\00", align 1
@__func__.load_iv = private unnamed_addr constant [8 x i8] c"load_iv\00", align 1
@__func__.get_name = private unnamed_addr constant [9 x i8] c"get_name\00", align 1
@__func__.get_header_and_data = private unnamed_addr constant [20 x i8] c"get_header_and_data\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @PEM_def_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #7
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.b) ; 2 uses
  %i.d = sext i32 %i.c to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %3, i64 %i.d, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @EVP_get_pw_prompt() #8    ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %spec.store.select = select i1 %i.f, ptr @.str, ptr %i.e
  %.not22 = icmp eq i32 %2, 0
  %i.g = select i1 %.not22, i32 0, i32 4
  %i.h = tail call i32 @EVP_read_pw_string_min(ptr noundef %0, i32 noundef %i.g, i32 noundef %1, ptr noundef nonnull %spec.store.select, i32 noundef %2) #8
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__func__.PEM_def_callback) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 109, ptr noundef null) #8
  %i.i = zext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.i, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %i.k = trunc i64 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.d ], [ %i.k, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @EVP_get_pw_prompt() local_unnamed_addr #3

declare i32 @EVP_read_pw_string_min(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @PEM_proc_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7 ; 2 uses
  switch i32 %1, label %bb.b [
    i32 10, label %bb.c
    i32 30, label %2
    i32 20, label %3
  ]

2:                                                ; preds = %bb.a
  br label %bb.c

3:                                                ; preds = %bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %2, %bb.b, %3
  %.0 = phi ptr [ @.str.5, %bb.b ], [ @.str.3, %2 ], [ @.str.4, %3 ], [ @.str.2, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = sub i64 1024, %i.a
  %i.d = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.b, i64 noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull %.0) #8 ; 0 uses
  ret void
}

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PEM_dek_info(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = trunc i64 %i.a to i32
  %i.d = sub i32 1024, %i.c                       ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.b, i64 noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef %1) #8 ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = sub nsw i32 %i.d, %i.f                   ; 2 uses
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = sext i32 %2 to i64
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.033 = phi i32 [ %i.s, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %.02532 = phi ptr [ %i.u, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.02631 = phi i64 [ %i.v, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.m = sext i32 %.033 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %.02631
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %.02532, i64 noundef %i.m, ptr noundef nonnull @.str.8, i32 noundef %i.p) #8 ; 3 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = sub nsw i32 %.033, %i.q                  ; 2 uses
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.02532, i64 %i.t ; 2 uses
  %i.v = add nuw nsw i64 %.02631, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.025.lcssa = phi ptr [ %i.j, %bb.b ], [ %i.u, %bb.c ]
  %.0.lcssa = phi i32 [ %i.h, %bb.b ], [ %i.s, %bb.c ]
  %i.w = icmp sgt i32 %.0.lcssa, 1
  br i1 %i.w, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  store i16 10, ptr %.025.lcssa, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PEM_ASN1_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_s_file() #8
  %i.b = tail call ptr @BIO_new(ptr noundef %i.a) #8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__func__.PEM_ASN1_read) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, ptr noundef null) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.b, i32 noundef 106, i64 noundef 0, ptr noundef %2) #8 ; 0 uses
  %i.e = tail call ptr @PEM_ASN1_read_bio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %4, ptr noundef %5) #8
  %i.f = tail call i32 @BIO_free(ptr noundef nonnull %i.b) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #3

declare ptr @BIO_s_file() local_unnamed_addr #3

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PEM_ASN1_read_bio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PEM_bytes_read_bio(ptr noundef writeonly captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @pem_bytes_read_bio_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pem_bytes_read_bio_flags(ptr noundef writeonly captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef %6, i32 noundef range(i32 2, 4) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %struct.evp_cipher_info_st, align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 0, ptr %i.e, align 8, !tbaa !15
  %i.f = and i32 %7, 1
  %.not.i = icmp eq i32 %i.f, 0                   ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.g = phi ptr [ null, %bb.a ], [ %i.r, %.backedge.backedge ] ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  call void @CRYPTO_secure_clear_free(ptr noundef %i.g, i64 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 253) #8
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @CRYPTO_secure_clear_free(ptr noundef %i.h, i64 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 254) #8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = load i64, ptr %i.e, align 8, !tbaa !15
  call void @CRYPTO_secure_clear_free(ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.1, i32 noundef 255) #8
  br label %pem_free.exit31

bb.c:                                             ; preds = %.backedge
  call void @CRYPTO_free(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 253) #8
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.k, ptr noundef nonnull @.str.1, i32 noundef 254) #8
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.l, ptr noundef nonnull @.str.1, i32 noundef 255) #8
  br label %pem_free.exit31

pem_free.exit31:                                  ; preds = %bb.b, %bb.c
  %i.m = call i32 @PEM_read_bio_ex(ptr noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %7)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %pem_free.exit31
  %i.n = call i64 @ERR_peek_error() #8            ; 2 uses
  %i.o = and i64 %i.n, 2147483648
  %.not.i32 = icmp eq i64 %i.o, 0
  %i.p = trunc i64 %i.n to i32
  %.0.v.i = select i1 %.not.i32, i32 8388607, i32 2147483647
  %.0.i = and i32 %.0.v.i, %i.p
  %i.q = icmp eq i32 %.0.i, 108
  br i1 %i.q, label %bb.e, label %pem_free.exit39

bb.e:                                             ; preds = %bb.d
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %3) #8
  br label %pem_free.exit39

bb.f:                                             ; preds = %pem_free.exit31
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !12   ; 19 uses
  %i.s = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %3) #7
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %check_pem.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str.20) #7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.w = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(22) @.str.21) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %check_pem.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(12) @.str.22) #7
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %check_pem.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.r) #7 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ab, 12
  br i1 %.not.i.i, label %bb.k, label %.backedge.backedge

bb.k:                                             ; preds = %bb.j
  %sext.i.i = and i64 %i.aa, 2147483647
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %sext.i.i ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -11
  %i.ae = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(12) @.str.22) #7
  %.not15.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not15.i.i, label %bb.l, label %.backedge.backedge

end_hunk_0
