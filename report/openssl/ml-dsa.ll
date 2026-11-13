Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml-dsa?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_table_entry = type { ptr, ptr, ptr, ptr, ptr }
%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }

@ops = internal unnamed_addr constant [6 x %struct.op_table_entry] [%struct.op_table_entry { ptr @.str, ptr @.str.1, ptr @create_ml_dsa_raw_key, ptr null, ptr @cleanup_ml_dsa_keys }, %struct.op_table_entry { ptr @.str.2, ptr @.str.3, ptr @keygen_ml_dsa_real_key, ptr null, ptr @cleanup_ml_dsa_keys }, %struct.op_table_entry { ptr @.str.4, ptr @.str.5, ptr @keygen_ml_dsa_real_key, ptr @ml_dsa_sign_verify, ptr @cleanup_ml_dsa_keys }, %struct.op_table_entry { ptr @.str.6, ptr @.str.7, ptr @keygen_ml_dsa_real_key, ptr @ml_dsa_digest_sign_verify, ptr @cleanup_ml_dsa_keys }, %struct.op_table_entry { ptr @.str.8, ptr @.str.9, ptr @keygen_ml_dsa_real_key, ptr @ml_dsa_export_import, ptr @cleanup_ml_dsa_keys }, %struct.op_table_entry { ptr @.str.10, ptr @.str.11, ptr @keygen_ml_dsa_real_key, ptr @ml_dsa_compare, ptr @cleanup_ml_dsa_keys }], align 16
@.str = private unnamed_addr constant [24 x i8] c"Generate ML-DSA raw key\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Try generate a raw keypair using random data. Usually fails\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Generate ML-DSA keypair, using EVP_PKEY_keygen\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Generates a real ML-DSA keypair, should always work\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Do a sign/verify operation on a key\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Generate key, sign random data, verify it, should work\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Do a digest sign/verify operation on a key\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Generate key, digest sign random data, verify it, should work\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Do an export/import of key data\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Exercise EVP_PKEY_todata/fromdata\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Compare keys for equality\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Compare key1/key1 and key1/key2 for equality\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ML-DSA-44\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ML-DSA-65\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ML-DSA-87\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ML-DSA-33\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"Unable to generate valid keys\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Failed to generate ctx\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Failed to init keygen ctx\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Failed to generate new real key\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"context-string\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"A context string\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Failed to set tbslen\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"fuzz/ml-dsa.c\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Failed basic initialization\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Failed to sign message\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Failed to verify message\0A\00", align 1
@__const.ml_dsa_digest_sign_verify.params = private unnamed_addr constant [2 x { ptr, i32, [4 x i8], ptr, i64, i64 }] [{ ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.20, i32 5, [4 x i8] zeroinitializer, ptr @.str.21, i64 16, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [11 x i8] c"?fips=true\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Failed to sign digest with EVP_DigestSign\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"Failed to verify digest with EVP_DigestVerify\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Failed todata\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Failed new ctx\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Failed fromdata\0A\00", align 1
@switch.table.keygen_ml_dsa_real_key_helper = private unnamed_addr constant [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @FuzzerInitialize(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @FuzzerTestOneInput(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store ptr null, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store ptr null, ptr %i.f, align 8, !tbaa !10
  %i.g = icmp ult i64 %1, 32
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %0, align 1, !tbaa !11
  %i.i = add i64 %1, -1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.j, ptr %i.b, align 8, !tbaa !15
  %i.k = urem i8 %i.h, 6                          ; 2 uses
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [40 x i8], ptr @ops, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  call void %i.o(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #5
  %.not = icmp samesign ult i8 %i.k, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !10
  call void %i.q(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #5
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !10
  %.pre8 = load ptr, ptr %i.f, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ null, %bb.b ], [ %.pre8, %bb.c ]
  %i.u = phi ptr [ null, %bb.b ], [ %.pre, %bb.c ]
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !10
  call void @cleanup_ml_dsa_keys(ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.u, ptr noundef %i.t) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #1 {
bb.a:
  tail call void @OPENSSL_cleanup() #5
  ret void
}

declare void @OPENSSL_cleanup() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @create_ml_dsa_raw_key(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = alloca [4896 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.0.copyload.i.i = load i16, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 7 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !15
  %i.d = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = add i64 %i.d, -2
  store i64 %i.e, ptr %1, align 8, !tbaa !13
  %i.f = urem i16 %.0.copyload.i.i, 6
  switch i16 %i.f, label %bb.f [
    i16 0, label %select_keytype_and_size.exit
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.d
    i16 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %select_keytype_and_size.exit

bb.c:                                             ; preds = %bb.a
  br label %select_keytype_and_size.exit

bb.d:                                             ; preds = %bb.a
  br label %select_keytype_and_size.exit

bb.e:                                             ; preds = %bb.a
  %.0.copyload.i23.i = load i16, ptr %i.c, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !15
  %i.h = add i64 %i.d, -4
  store i64 %i.h, ptr %1, align 8, !tbaa !13
  %i.i = urem i16 %.0.copyload.i23.i, 2592
  %i.j = zext nneg i16 %i.i to i64
  br label %select_keytype_and_size.exit

bb.f:                                             ; preds = %bb.a
  br label %select_keytype_and_size.exit

select_keytype_and_size.exit:                     ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.k = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.e ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.a ]
  %.012 = phi ptr [ null, %bb.f ], [ @.str.14, %bb.e ], [ @.str.13, %bb.b ], [ @.str.14, %bb.c ], [ @.str.15, %bb.d ], [ @.str.12, %bb.a ] ; 2 uses
  %.sink.i = phi i64 [ 0, %bb.f ], [ %i.j, %bb.e ], [ 1952, %bb.b ], [ 2592, %bb.c ], [ 33, %bb.d ], [ 1312, %bb.a ] ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = and i8 %i.l, 1
  %.not6.not = icmp eq i8 %i.m, 0
  br i1 %.not6.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %select_keytype_and_size.exit
  switch i64 %.sink.i, label %bb.m [
    i64 1312, label %bb.j
    i64 1952, label %bb.h
    i64 2592, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0 = phi i64 [ 2560, %bb.g ], [ 4032, %bb.h ], [ 4896, %bb.i ] ; 2 uses
  %i.n = trunc nuw nsw i64 %.0 to i32
  %i.o = call i32 @RAND_bytes(ptr noundef nonnull %i.a, i32 noundef %i.n) #5
  %.not7 = icmp eq i32 %i.o, 0
  br i1 %.not7, label %bb.m, label %bb.k

.thread:                                          ; preds = %select_keytype_and_size.exit
  %i.p = trunc nuw nsw i64 %.sink.i to i32
  %i.q = call i32 @RAND_bytes(ptr noundef nonnull %i.a, i32 noundef %i.p) #5
  %.not714 = icmp eq i32 %i.q, 0
  br i1 %.not714, label %bb.m, label %.thread16

.thread16:                                        ; preds = %.thread
  %i.r = call ptr @EVP_PKEY_new_raw_public_key_ex(ptr noundef null, ptr noundef %.012, ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %.sink.i) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = call ptr @EVP_PKEY_new_raw_private_key_ex(ptr noundef null, ptr noundef %.012, ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %.0) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread16
  %.05 = phi ptr [ %i.r, %.thread16 ], [ %i.s, %bb.k ]
  store ptr %.05, ptr %2, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.j, %bb.g, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cleanup_ml_dsa_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  tail call void @EVP_PKEY_free(ptr noundef %0) #5
  tail call void @EVP_PKEY_free(ptr noundef %1) #5
  tail call void @EVP_PKEY_free(ptr noundef %2) #5
  tail call void @EVP_PKEY_free(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @keygen_ml_dsa_real_key(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = tail call fastcc i32 @keygen_ml_dsa_real_key_helper(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @keygen_ml_dsa_real_key_helper(ptr noundef %0, ptr noundef %1, ptr noundef %3)
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.16, i64 29, i64 1, ptr %i.c) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ml_dsa_sign_verify(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %6 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.b = tail call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef null, ptr noundef %2, ptr noundef null) #5 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call ptr @EVP_PKEY_get0_type_name(ptr noundef %2) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 16 dereferenceable(80) @__const.ml_dsa_digest_sign_verify.params, i64 80, i1 false)
  %i.d = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = icmp ult i64 %i.d, 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.22, i64 20, i64 1, ptr %i.f) #6 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i64
  %i.j = add i64 %i.d, -8
  store i64 %i.j, ptr %1, align 8, !tbaa !13
  %i.k = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %i.l = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.k, ptr noundef nonnull @.str.23, i32 noundef 322) #5 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp eq ptr %i.b, null
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  %i.o = icmp eq ptr %i.c, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.o
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @RAND_bytes_ex(ptr noundef null, ptr noundef nonnull %i.l, i64 noundef %i.k, i32 noundef 0) #5
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite43 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 28, i64 1, ptr %i.q) #6 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.r = tail call ptr @EVP_SIGNATURE_fetch(ptr noundef null, ptr noundef nonnull %i.c, ptr noundef null) #5 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.g

end_hunk_0
