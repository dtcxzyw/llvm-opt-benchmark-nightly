Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/digest_extra?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.nid_to_digest = type { i32, ptr, ptr, ptr }
%struct.env_md_st = type { i32, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.anon = type { [9 x i8], i8, i32 }
%struct.cbs_st = type { ptr, i64 }
%struct.cbb_st = type { ptr, i8, %union.anon }
%union.anon = type { %struct.cbb_buffer_st }
%struct.cbb_buffer_st = type { ptr, i64, i64, i8 }

@_ZL21nid_to_digest_mapping = internal unnamed_addr constant [18 x %struct.nid_to_digest] [%struct.nid_to_digest { i32 257, ptr @EVP_md4, ptr @.str.1, ptr @.str.2 }, %struct.nid_to_digest { i32 4, ptr @EVP_md5, ptr @.str.3, ptr @.str.4 }, %struct.nid_to_digest { i32 64, ptr @EVP_sha1, ptr @.str.5, ptr @.str.6 }, %struct.nid_to_digest { i32 675, ptr @EVP_sha224, ptr @.str.7, ptr @.str.8 }, %struct.nid_to_digest { i32 672, ptr @EVP_sha256, ptr @.str.9, ptr @.str.10 }, %struct.nid_to_digest { i32 673, ptr @EVP_sha384, ptr @.str.11, ptr @.str.12 }, %struct.nid_to_digest { i32 674, ptr @EVP_sha512, ptr @.str.13, ptr @.str.14 }, %struct.nid_to_digest { i32 962, ptr @EVP_sha512_256, ptr @.str.15, ptr @.str.16 }, %struct.nid_to_digest { i32 114, ptr @EVP_md5_sha1, ptr @.str.17, ptr @.str.18 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha1, ptr @.str.19, ptr @.str.20 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha1, ptr @.str.21, ptr @.str.22 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha1, ptr @.str.23, ptr null }, %struct.nid_to_digest { i32 0, ptr @EVP_md5, ptr @.str.24, ptr @.str.25 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha1, ptr @.str.26, ptr @.str.27 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha224, ptr @.str.28, ptr @.str.29 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha256, ptr @.str.30, ptr @.str.31 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha384, ptr @.str.32, ptr @.str.33 }, %struct.nid_to_digest { i32 0, ptr @EVP_sha512, ptr @.str.34, ptr @.str.35 }], align 16
@.str = private unnamed_addr constant [89 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/digest/digest_extra.cc\00", align 1
@_ZL17evp_md_blake2b256 = internal constant %struct.env_md_st { i32 0, i32 32, i32 0, ptr @_ZL15blake2b256_initP13env_md_ctx_st, ptr @_ZL17blake2b256_updateP13env_md_ctx_stPKvm, ptr @_ZL16blake2b256_finalP13env_md_ctx_stPh, i32 128, i32 216 }, align 8
@_ZL10evp_md_md4 = internal constant %struct.env_md_st { i32 257, i32 16, i32 0, ptr @_ZL8md4_initP13env_md_ctx_st, ptr @_ZL10md4_updateP13env_md_ctx_stPKvm, ptr @_ZL9md4_finalP13env_md_ctx_stPh, i32 64, i32 92 }, align 8
@_ZL10evp_md_md5 = internal constant %struct.env_md_st { i32 4, i32 16, i32 0, ptr @_ZL8md5_initP13env_md_ctx_st, ptr @_ZL10md5_updateP13env_md_ctx_stPKvm, ptr @_ZL9md5_finalP13env_md_ctx_stPh, i32 64, i32 92 }, align 8
@_ZL15evp_md_md5_sha1 = internal constant %struct.env_md_st { i32 114, i32 36, i32 0, ptr @_ZL13md5_sha1_initP13env_md_ctx_st, ptr @_ZL15md5_sha1_updateP13env_md_ctx_stPKvm, ptr @_ZL14md5_sha1_finalP13env_md_ctx_stPh, i32 64, i32 188 }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"MD4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SHA224\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"SHA512-256\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"sha512-256\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"MD5-SHA1\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"md5-sha1\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"DSA-SHA\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"dsaWithSHA\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"DSA-SHA1\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"dsaWithSHA1\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"ecdsa-with-SHA1\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"RSA-MD5\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"md5WithRSAEncryption\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"RSA-SHA1\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"sha1WithRSAEncryption\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"RSA-SHA224\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"sha224WithRSAEncryption\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"RSA-SHA256\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"sha256WithRSAEncryption\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"RSA-SHA384\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"sha384WithRSAEncryption\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"RSA-SHA512\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"sha512WithRSAEncryption\00", align 1
@_ZL7kMDOIDs = internal constant [7 x %struct.anon] [%struct.anon { [9 x i8] c"*\86H\86\F7\0D\02\04\00", i8 8, i32 257 }, %struct.anon { [9 x i8] c"*\86H\86\F7\0D\02\05\00", i8 8, i32 4 }, %struct.anon { [9 x i8] c"+\0E\03\02\1A\00\00\00\00", i8 5, i32 64 }, %struct.anon { [9 x i8] c"`\86H\01e\03\04\02\01", i8 9, i32 672 }, %struct.anon { [9 x i8] c"`\86H\01e\03\04\02\02", i8 9, i32 673 }, %struct.anon { [9 x i8] c"`\86H\01e\03\04\02\03", i8 9, i32 674 }, %struct.anon { [9 x i8] c"`\86H\01e\03\04\02\04", i8 9, i32 675 }], align 16

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @EVP_get_digestbynid(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %.loopexit [
    i32 114, label %.fold.split22
    i32 257, label %bb.b
    i32 4, label %.fold.split
    i32 64, label %.fold.split16
    i32 675, label %.fold.split17
    i32 672, label %.fold.split18
    i32 673, label %.fold.split19
    i32 674, label %.fold.split20
    i32 962, label %.fold.split21
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

.fold.split16:                                    ; preds = %bb.a
  br label %bb.b

.fold.split17:                                    ; preds = %bb.a
  br label %bb.b

.fold.split18:                                    ; preds = %bb.a
  br label %bb.b

.fold.split19:                                    ; preds = %bb.a
  br label %bb.b

.fold.split20:                                    ; preds = %bb.a
  br label %bb.b

.fold.split21:                                    ; preds = %bb.a
  br label %bb.b

.fold.split22:                                    ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split22, %.fold.split21, %.fold.split20, %.fold.split19, %.fold.split18, %.fold.split17, %.fold.split16, %.fold.split
  %.lcssa = phi ptr [ @_ZL21nid_to_digest_mapping, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 224), %.fold.split21 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 32), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 64), %.fold.split16 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 96), %.fold.split17 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 128), %.fold.split18 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 160), %.fold.split19 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 192), %.fold.split20 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 256), %.fold.split22 ]
  %i.a = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call noundef ptr %i.b() #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b
  %.1 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @EVP_get_digestbyobj(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  switch i32 %i.b, label %EVP_get_digestbynid.exit [
    i32 0, label %bb.c
    i32 114, label %.fold.split22.i
    i32 257, label %bb.b
    i32 4, label %.fold.split.i
    i32 64, label %.fold.split16.i
    i32 675, label %.fold.split17.i
    i32 672, label %.fold.split18.i
    i32 673, label %.fold.split19.i
    i32 674, label %.fold.split20.i
    i32 962, label %.fold.split21.i
  ]

.fold.split.i:                                    ; preds = %bb.a
  br label %bb.b

.fold.split16.i:                                  ; preds = %bb.a
  br label %bb.b

.fold.split17.i:                                  ; preds = %bb.a
  br label %bb.b

.fold.split18.i:                                  ; preds = %bb.a
  br label %bb.b

.fold.split19.i:                                  ; preds = %bb.a
  br label %bb.b

.fold.split20.i:                                  ; preds = %bb.a
  br label %bb.b

.fold.split21.i:                                  ; preds = %bb.a
  br label %bb.b

.fold.split22.i:                                  ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split22.i, %.fold.split21.i, %.fold.split20.i, %.fold.split19.i, %.fold.split18.i, %.fold.split17.i, %.fold.split16.i, %.fold.split.i
  %.lcssa.i = phi ptr [ @_ZL21nid_to_digest_mapping, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 224), %.fold.split21.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 32), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 64), %.fold.split16.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 96), %.fold.split17.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 128), %.fold.split18.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 160), %.fold.split19.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 192), %.fold.split20.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 256), %.fold.split22.i ]
  %i.c = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = tail call noundef ptr %i.d() #6, !inline_history !15
  br label %EVP_get_digestbynid.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @OBJ_get0_data(ptr noundef nonnull %0) #6
  %i.g = tail call i64 @OBJ_length(ptr noundef nonnull %0) #6
  %i.h = tail call fastcc noundef ptr @_ZL9cbs_to_mdPK6cbs_st(ptr %i.f, i64 %i.g)
  br label %EVP_get_digestbynid.exit

EVP_get_digestbynid.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.0
}

declare ptr @OBJ_get0_data(ptr noundef) local_unnamed_addr #2

declare i64 @OBJ_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL9cbs_to_mdPK6cbs_st(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #0 {
bb.a:
  switch i64 %.8.val, label %EVP_get_digestbynid.exit [
    i64 8, label %_ZL14OPENSSL_memcmpPKvS0_m.exit
    i64 5, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.2
    i64 9, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.3
  ]

_ZL14OPENSSL_memcmpPKvS0_m.exit:                  ; preds = %bb.a
  %i.a = load i64, ptr %.0.val, align 1
  %i.b = icmp ne i64 %i.a, 288808682866116138
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.1

_ZL14OPENSSL_memcmpPKvS0_m.exit.thread:           ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.6, %_ZL14OPENSSL_memcmpPKvS0_m.exit.5, %_ZL14OPENSSL_memcmpPKvS0_m.exit.4, %_ZL14OPENSSL_memcmpPKvS0_m.exit.3, %_ZL14OPENSSL_memcmpPKvS0_m.exit.2, %_ZL14OPENSSL_memcmpPKvS0_m.exit.1, %_ZL14OPENSSL_memcmpPKvS0_m.exit
  %.lcssa = phi ptr [ @_ZL7kMDOIDs, %_ZL14OPENSSL_memcmpPKvS0_m.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 16), %_ZL14OPENSSL_memcmpPKvS0_m.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 32), %_ZL14OPENSSL_memcmpPKvS0_m.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 48), %_ZL14OPENSSL_memcmpPKvS0_m.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 64), %_ZL14OPENSSL_memcmpPKvS0_m.exit.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 80), %_ZL14OPENSSL_memcmpPKvS0_m.exit.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 96), %_ZL14OPENSSL_memcmpPKvS0_m.exit.6 ]
  %0 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 12
  %1 = load i32, ptr %0, align 4, !tbaa !24
  switch i32 %1, label %EVP_get_digestbynid.exit [
    i32 114, label %.fold.split22.i
    i32 257, label %bb.b
    i32 4, label %.fold.split.i
    i32 64, label %.fold.split16.i
    i32 675, label %.fold.split17.i
    i32 672, label %.fold.split18.i
    i32 673, label %.fold.split19.i
    i32 674, label %.fold.split20.i
    i32 962, label %.fold.split21.i
  ]

.fold.split.i:                                    ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

.fold.split16.i:                                  ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

.fold.split17.i:                                  ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

.fold.split18.i:                                  ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

.fold.split19.i:                                  ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

.fold.split20.i:                                  ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

.fold.split21.i:                                  ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

.fold.split22.i:                                  ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  br label %bb.b

bb.b:                                             ; preds = %.fold.split22.i, %.fold.split21.i, %.fold.split20.i, %.fold.split19.i, %.fold.split18.i, %.fold.split17.i, %.fold.split16.i, %.fold.split.i, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  %.lcssa.i = phi ptr [ @_ZL21nid_to_digest_mapping, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 224), %.fold.split21.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 32), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 64), %.fold.split16.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 96), %.fold.split17.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 128), %.fold.split18.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 160), %.fold.split19.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 192), %.fold.split20.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 256), %.fold.split22.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call noundef ptr %i.f() #6, !inline_history !15
  br label %EVP_get_digestbynid.exit

_ZL14OPENSSL_memcmpPKvS0_m.exit.1:                ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit
  %i.h = load i64, ptr %.0.val, align 1
  %i.i = icmp ne i64 %i.h, 360866276904044074
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %EVP_get_digestbynid.exit

_ZL14OPENSSL_memcmpPKvS0_m.exit.2:                ; preds = %bb.a
  %i.l = load i32, ptr %.0.val, align 1
  %i.m = xor i32 %i.l, 33754667
  %i.n = getelementptr i8, ptr %.0.val, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, 26
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %EVP_get_digestbynid.exit

_ZL14OPENSSL_memcmpPKvS0_m.exit.3:                ; preds = %bb.a
  %i.v = load i64, ptr %.0.val, align 1
  %i.w = xor i64 %i.v, 145244820330808928
  %i.x = getelementptr i8, ptr %.0.val, i64 8
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = xor i64 %i.z, 1
  %i.ab = or i64 %i.w, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.4

_ZL14OPENSSL_memcmpPKvS0_m.exit.4:                ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.3
  %i.af = load i64, ptr %.0.val, align 1
  %i.ag = xor i64 %i.af, 145244820330808928
  %i.ah = getelementptr i8, ptr %.0.val, i64 8
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = xor i64 %i.aj, 2
  %i.al = or i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.5

_ZL14OPENSSL_memcmpPKvS0_m.exit.5:                ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.4
  %i.ap = load i64, ptr %.0.val, align 1
  %i.aq = xor i64 %i.ap, 145244820330808928
  %i.ar = getelementptr i8, ptr %.0.val, i64 8
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = xor i64 %i.at, 3
  %i.av = or i64 %i.aq, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.6

_ZL14OPENSSL_memcmpPKvS0_m.exit.6:                ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.5
  %i.az = load i64, ptr %.0.val, align 1
  %i.ba = xor i64 %i.az, 145244820330808928
  %i.bb = getelementptr i8, ptr %.0.val, i64 8
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.bd, 4
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %EVP_get_digestbynid.exit

EVP_get_digestbynid.exit:                         ; preds = %bb.a, %_ZL14OPENSSL_memcmpPKvS0_m.exit.1, %_ZL14OPENSSL_memcmpPKvS0_m.exit.6, %_ZL14OPENSSL_memcmpPKvS0_m.exit.2, %bb.b, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  %2 = phi ptr [ null, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread ], [ %i.g, %bb.b ], [ null, %_ZL14OPENSSL_memcmpPKvS0_m.exit.2 ], [ null, %_ZL14OPENSSL_memcmpPKvS0_m.exit.6 ], [ null, %_ZL14OPENSSL_memcmpPKvS0_m.exit.1 ], [ null, %bb.a ]
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @EVP_parse_digest_algorithm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cbs_st, align 8             ; 6 uses
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = call i32 @CBS_get_asn1(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 536870928) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @CBS_get_asn1(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 6) #6
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @ERR_put_error(i32 noundef 29, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str, i32 noundef 132) #6
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.val = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val11 = load i64, ptr %i.c, align 8
  %i.d = call fastcc noundef ptr @_ZL9cbs_to_mdPK6cbs_st(ptr %.val, i64 %.val11) ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @ERR_put_error(i32 noundef 29, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str, i32 noundef 138) #6
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %.not7 = icmp eq i64 %i.g, 0
  br i1 %.not7, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.h = call i32 @CBS_get_asn1(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 5) #6
  %.not8 = icmp ne i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.not9 = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not8, i1 %.not9, i1 false
  %i.k = load i64, ptr %i.f, align 8
  %.not10 = icmp eq i64 %i.k, 0
  %or.cond13 = select i1 %or.cond, i1 %.not10, i1 false
  br i1 %or.cond13, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 29, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str, i32 noundef 151) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.critedge, %bb.h, %bb.f, %bb.c
  %.2 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %.critedge ], [ %i.d, %bb.h ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret ptr %.2
}

declare i32 @CBS_get_asn1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @EVP_marshal_digest_algorithm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL24marshal_digest_algorithmP6cbb_stPK9env_md_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL24marshal_digest_algorithmP6cbb_stPK9env_md_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbb_st, align 8             ; 5 uses
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %5 = alloca %struct.cbb_st, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = call i32 @CBB_add_asn1(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 536870928) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @CBB_add_asn1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 6) #6
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @EVP_MD_type(ptr noundef %1) #6
  switch i32 %i.c, label %.critedge [
    i32 257, label %bb.d
    i32 4, label %.fold.split
    i32 64, label %.fold.split40
    i32 672, label %.fold.split41
    i32 673, label %.fold.split42
    i32 674, label %.fold.split43
    i32 675, label %.fold.split44
  ]

.critedge:                                        ; preds = %bb.c
  call void @ERR_put_error(i32 noundef 29, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str, i32 noundef 180) #6
  br label %bb.g

.fold.split:                                      ; preds = %bb.c
  br label %bb.d

.fold.split40:                                    ; preds = %bb.c
  br label %bb.d

.fold.split41:                                    ; preds = %bb.c
  br label %bb.d

.fold.split42:                                    ; preds = %bb.c
  br label %bb.d

.fold.split43:                                    ; preds = %bb.c
  br label %bb.d

.fold.split44:                                    ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.fold.split44, %.fold.split43, %.fold.split42, %.fold.split41, %.fold.split40, %.fold.split
  %.0.ptr38.lcssa = phi ptr [ @_ZL7kMDOIDs, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 80), %.fold.split43 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 16), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 32), %.fold.split40 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 48), %.fold.split41 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 64), %.fold.split42 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7kMDOIDs, i64 96), %.fold.split44 ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ptr38.lcssa, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64
  %i.g = call i32 @CBB_add_bytes(ptr noundef nonnull %4, ptr noundef nonnull %.0.ptr38.lcssa, i64 noundef %i.f) #6
  %.not24.not = icmp eq i32 %i.g, 0
  br i1 %.not24.not, label %bb.g, label %.critedge35

.critedge35:                                      ; preds = %bb.d
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge35
  %i.h = call i32 @CBB_add_asn1(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 5) #6
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge35
  %i.i = call i32 @CBB_flush(ptr noundef %0) #6
  %.not27 = icmp ne i32 %i.i, 0
  %spec.select = zext i1 %.not27 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge, %bb.d, %bb.e, %bb.a, %bb.b
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %.critedge ], [ %spec.select, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @EVP_marshal_digest_algorithm_no_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL24marshal_digest_algorithmP6cbb_stPK9env_md_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @EVP_get_digestbyname(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.1, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.2, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.4, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.5, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.aj, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.6, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.aj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.7, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.9, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.aj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.10, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.aj, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.11, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.12, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.13, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.14, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.aj, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.15, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.aj, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.16, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.aj, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.17, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.18, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.19, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.20, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.21, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.22, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.23, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.24, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.25, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.26, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(22) @.str.27, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.28, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(24) @.str.29, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.30, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(24) @.str.31, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.32, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(24) @.str.33, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.34, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(24) @.str.35, ptr noundef nonnull dereferenceable(1) %0) #7
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @_ZL21nid_to_digest_mapping, %bb.b ], [ @_ZL21nid_to_digest_mapping, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 32), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 32), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 64), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 64), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 96), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 96), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 128), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 128), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 160), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 160), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 192), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 192), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 224), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 224), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 256), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 256), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 288), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 288), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 320), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 320), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 352), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 544), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 384), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 384), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 416), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 416), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 448), %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 448), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 480), %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 480), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 512), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 512), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @_ZL21nid_to_digest_mapping, i64 544), %bb.ah ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !14
  %i.bu = tail call noundef ptr %i.bt() #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.aj
  %i.bv = phi ptr [ %i.bu, %bb.aj ], [ null, %bb.ai ]
  ret ptr %i.bv
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_blake2b256() local_unnamed_addr #4 {
bb.a:
  ret ptr @_ZL17evp_md_blake2b256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_md4() #4 {
bb.a:
  ret ptr @_ZL10evp_md_md4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_md5() #4 {
bb.a:
  ret ptr @_ZL10evp_md_md5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_md5_sha1() #4 {
bb.a:
  ret ptr @_ZL15evp_md_md5_sha1
}

declare ptr @EVP_sha1() #2

declare ptr @EVP_sha224() #2

declare ptr @EVP_sha256() #2

declare ptr @EVP_sha384() #2

declare ptr @EVP_sha512() #2

declare ptr @EVP_sha512_256() #2

declare i32 @CBB_add_asn1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_type(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL15blake2b256_initP13env_md_ctx_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @BLAKE2B256_Init(ptr noundef %i.b) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL17blake2b256_updateP13env_md_ctx_stPKvm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @BLAKE2B256_Update(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL16blake2b256_finalP13env_md_ctx_stPh(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @BLAKE2B256_Final(ptr noundef %1, ptr noundef %i.b) #6
  ret void
}

declare void @BLAKE2B256_Init(ptr noundef) local_unnamed_addr #2

declare void @BLAKE2B256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLAKE2B256_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL8md4_initP13env_md_ctx_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @MD4_Init(ptr noundef %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL10md4_updateP13env_md_ctx_stPKvm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @MD4_Update(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL9md4_finalP13env_md_ctx_stPh(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @MD4_Final(ptr noundef %1, ptr noundef %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare i32 @MD4_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i32 @MD4_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @MD4_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL8md5_initP13env_md_ctx_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @MD5_Init(ptr noundef %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL10md5_updateP13env_md_ctx_stPKvm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @MD5_Update(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL9md5_finalP13env_md_ctx_stPh(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @MD5_Final(ptr noundef %1, ptr noundef %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare i32 @MD5_Init(ptr noundef) local_unnamed_addr #2

declare i32 @MD5_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @MD5_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL13md5_sha1_initP13env_md_ctx_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = tail call i32 @MD5_Init(ptr noundef %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.e = tail call i32 @SHA1_Init(ptr noundef nonnull %i.d) #6
  %.not3 = icmp eq i32 %i.e, 0
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @abort() #8
  unreachable

bb.d:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL15md5_sha1_updateP13env_md_ctx_stPKvm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = tail call i32 @MD5_Update(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.e = tail call i32 @SHA1_Update(ptr noundef nonnull %i.d, ptr noundef %1, i64 noundef %2) #6
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @abort() #8
  unreachable

bb.d:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL14md5_sha1_finalP13env_md_ctx_stPh(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = tail call i32 @MD5_Final(ptr noundef %1, ptr noundef %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = tail call i32 @SHA1_Final(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #6
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @abort() #8
  unreachable

bb.d:                                             ; preds = %bb.b
  ret void
}

declare i32 @SHA1_Init(ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SHA1_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTS13nid_to_digest", !8, i64 0, !11, i64 8, !12, i64 16, !12, i64 24}
!14 = !{!13, !11, i64 8}
!15 = !{ptr @EVP_get_digestbynid}
!16 = !{!"_ZTS3$_0", !7, i64 0, !7, i64 9, !8, i64 12}
!17 = !{!"p1 _ZTS9env_md_st", !11, i64 0}
!18 = !{!"p1 _ZTS15evp_pkey_ctx_st", !11, i64 0}
!19 = !{!"p1 _ZTS15evp_md_pctx_ops", !11, i64 0}
!20 = !{!"_ZTS13env_md_ctx_st", !17, i64 0, !11, i64 8, !18, i64 16, !19, i64 24}
!21 = !{!20, !11, i64 8}
!22 = !{!"_ZTS14asn1_object_st", !12, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !8, i64 32}
!23 = !{!22, !8, i64 16}
!24 = !{!16, !8, i64 12}
!25 = !{!"long", !7, i64 0}
!26 = !{!"_ZTS6cbs_st", !12, i64 0, !25, i64 8}
!27 = !{!26, !25, i64 8}
!28 = !{!16, !7, i64 9}
end_hunk_0
