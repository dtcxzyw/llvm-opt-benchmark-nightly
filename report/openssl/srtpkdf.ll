Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/srtpkdf?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ossl_kdf_srtpkdf_functions = local_unnamed_addr constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_new }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_dup }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_free }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_reset }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_derive }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_settable_ctx_params }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_set_ctx_params }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_gettable_ctx_params }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @kdf_srtpkdf_get_ctx_params }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str = private unnamed_addr constant [41 x i8] c"providers/implementations/kdfs/srtpkdf.c\00", align 1
@__func__.kdf_srtpkdf_derive = private unnamed_addr constant [19 x i8] c"kdf_srtpkdf_derive\00", align 1
@__func__.kdf_srtpkdf_check_key = private unnamed_addr constant [22 x i8] c"kdf_srtpkdf_check_key\00", align 1
@__func__.SRTPKDF = private unnamed_addr constant [8 x i8] c"SRTPKDF\00", align 1
@is_srtp.strp_table = internal unnamed_addr constant [8 x i8] c"\01\01\01\00\00\00\01\01", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"kdr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@srtp_set_ctx_params_list = internal constant [8 x { ptr, i32, [4 x i8], ptr, i64, i64 }] [{ ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.1, i32 4, [4 x i8] zeroinitializer, ptr null, i64 0, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.2, i32 4, [4 x i8] zeroinitializer, ptr null, i64 0, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.3, i32 5, [4 x i8] zeroinitializer, ptr null, i64 0, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.4, i32 5, [4 x i8] zeroinitializer, ptr null, i64 0, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.5, i32 5, [4 x i8] zeroinitializer, ptr null, i64 0, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.6, i32 2, [4 x i8] zeroinitializer, ptr null, i64 4, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.7, i32 2, [4 x i8] zeroinitializer, ptr null, i64 4, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [12 x i8] c"AES-128-CTR\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"AES-192-CTR\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"AES-256-CTR\00", align 1
@__func__.kdf_srtpkdf_set_ctx_params = private unnamed_addr constant [27 x i8] c"kdf_srtpkdf_set_ctx_params\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ipher\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"./providers/implementations/kdfs/srtpkdf.inc\00", align 1
@__func__.srtp_set_ctx_params_decoder = private unnamed_addr constant [28 x i8] c"srtp_set_ctx_params_decoder\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"param %s is repeated\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ndex\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"abel\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"roperties\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@srtp_get_ctx_params_list = internal constant [2 x { ptr, i32, [4 x i8], ptr, i64, i64 }] [{ ptr, i32, [4 x i8], ptr, i64, i64 } { ptr @.str.21, i32 2, [4 x i8] zeroinitializer, ptr null, i64 8, i64 -1 }, { ptr, i32, [4 x i8], ptr, i64, i64 } zeroinitializer], align 16
@__func__.srtp_get_ctx_params_decoder = private unnamed_addr constant [28 x i8] c"srtp_get_ctx_params_decoder\00", align 1

; Function Attrs: nounwind uwtable
define internal noalias ptr @kdf_srtpkdf_new(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 87) #8 ; 3 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.b, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @kdf_srtpkdf_dup(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = tail call i32 @ossl_prov_is_running() #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %kdf_srtpkdf_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 88, ptr noundef nonnull @.str, i32 noundef 87) #8 ; 20 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %kdf_srtpkdf_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.j = tail call i32 @ossl_prov_memdup(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #8
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %kdf_srtpkdf_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.q = tail call i32 @ossl_prov_memdup(ptr noundef %i.l, i64 noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #8
  %.not28 = icmp eq i32 %i.q, 0
  br i1 %.not28, label %kdf_srtpkdf_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.x = tail call i32 @ossl_prov_memdup(ptr noundef %i.s, i64 noundef %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #8
  %.not29 = icmp eq i32 %i.x, 0
  br i1 %.not29, label %kdf_srtpkdf_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = tail call i32 @ossl_prov_cipher_copy(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #8
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %kdf_srtpkdf_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !31
  store <2 x i32> %i.ad, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !21
  br label %kdf_srtpkdf_new.exit.thread

kdf_srtpkdf_free.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @ossl_prov_cipher_reset(ptr noundef nonnull %i.ai) #8
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !16
  tail call void @CRYPTO_clear_free(ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str, i32 noundef 134) #8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20
  tail call void @CRYPTO_clear_free(ptr noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull @.str, i32 noundef 135) #8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.aq, i64 noundef %i.as, ptr noundef nonnull @.str, i32 noundef 136) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i8 0, i64 80, i1 false)
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !14
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 124) #8
  br label %kdf_srtpkdf_new.exit.thread

kdf_srtpkdf_new.exit.thread:                      ; preds = %bb.b, %bb.a, %bb.g, %kdf_srtpkdf_free.exit
  %.0 = phi ptr [ null, %kdf_srtpkdf_free.exit ], [ %i.c, %bb.g ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @kdf_srtpkdf_free(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @ossl_prov_cipher_reset(ptr noundef nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  tail call void @CRYPTO_clear_free(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 134) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  tail call void @CRYPTO_clear_free(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 135) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.l, i64 noundef %i.n, ptr noundef nonnull @.str, i32 noundef 136) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 124) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kdf_srtpkdf_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_prov_cipher_reset(ptr noundef nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  tail call void @CRYPTO_clear_free(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 134) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  tail call void @CRYPTO_clear_free(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 135) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.l, i64 noundef %i.n, ptr noundef nonnull @.str, i32 noundef 136) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i8 0, i64 80, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_srtpkdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [16 x i8], align 16               ; 9 uses
  %i.f = tail call i32 @ossl_prov_is_running() #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @kdf_srtpkdf_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.h) #8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.j) #8 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @__func__.kdf_srtpkdf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 155, ptr noundef null) #8
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.j) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %kdf_srtpkdf_check_key.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef nonnull %i.m) #8
  %i.t = sext i32 %i.s to i64
  %.not6.i = icmp eq i64 %i.r, %i.t
  br i1 %.not6.i, label %bb.h, label %kdf_srtpkdf_check_key.exit

kdf_srtpkdf_check_key.exit:                       ; preds = %bb.f, %bb.g
  %.sink8.i = phi i32 [ 179, %bb.f ], [ 183, %bb.g ]
  %.sink.i = phi i32 [ 128, %bb.f ], [ 105, %bb.g ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink8.i, ptr noundef nonnull @__func__.kdf_srtpkdf_check_key) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef %.sink.i, ptr noundef null) #8
  br label %bb.ab

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 210, ptr noundef nonnull @__func__.kdf_srtpkdf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #8
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.aj = icmp eq ptr %1, null
  %i.ak = icmp ugt i64 %2, 2147483647
  %or.cond.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i, label %SRTPKDF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ai, label %SRTPKDF.exit [
    i32 0, label %bb.l
    i32 3, label %bb.l
    i32 6, label %bb.l
    i32 1, label %bb.n
    i32 4, label %bb.n
    i32 2, label %bb.m
    i32 7, label %bb.m
    i32 5, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.al = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef nonnull %i.k) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  %.061.i = phi i32 [ %i.al, %bb.l ], [ 20, %bb.k ], [ 20, %bb.k ], [ 14, %bb.m ] ; 3 uses
  %i.am = trunc nuw nsw i64 %2 to i32
  %i.an = icmp sgt i32 %.061.i, %i.am
  br i1 %i.an, label %SRTPKDF.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  store i16 0, ptr %i.ao, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(14) %i.v, i64 14, i1 false)
  %i.ap = tail call ptr @BN_new() #8              ; 5 uses
  %i.aq = tail call ptr @BN_new() #8              ; 5 uses
  %i.ar = icmp eq ptr %i.ap, null
  %i.as = icmp eq ptr %i.aq, null
  %or.cond3.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond3.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @BN_free(ptr noundef %i.ap) #8
  tail call void @BN_free(ptr noundef %i.aq) #8
  br label %SRTPKDF.exit

bb.q:                                             ; preds = %bb.o
  %4 = zext nneg i32 %i.ai to i64
  %5 = getelementptr inbounds nuw i8, ptr @is_srtp.strp_table, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !36, !range !37, !noundef !38
  %7 = trunc nuw i8 %6 to i1
  %i.at = select i1 %7, i32 6, i32 4              ; 3 uses
  %i.au = icmp ne ptr %i.aa, null
  %i.av = icmp ne i64 %i.ac, 0
  %or.cond5.i = and i1 %i.au, %i.av
  %i.aw = icmp ne i32 %i.ae, 0
  %or.cond7.i = and i1 %or.cond5.i, %i.aw
  br i1 %or.cond7.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q
  %i.ax = trunc i64 %i.ac to i32
  %i.ay = icmp sgt i32 %i.at, %i.ax
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 457, ptr noundef nonnull @__func__.SRTPKDF) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 259, ptr noundef null) #8
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.az = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.aa, i32 noundef %i.at, ptr noundef nonnull %i.ap) #8
  %.not.i24 = icmp eq ptr %i.az, null
  br i1 %.not.i24, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call i32 @BN_rshift(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ap, i32 noundef %i.ag) #8
  %.not74.i = icmp eq i32 %i.ba, 0
  br i1 %.not74.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = call i32 @BN_bn2bin(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.c) #8 ; 6 uses
  %.not751.i = icmp slt i32 %i.bb, 1
  br i1 %.not751.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.v
  %i.bc = zext nneg i32 %i.bb to i64              ; 3 uses
  %i.bd = add nuw i32 %i.bb, 1
  %wide.trip.count.i = zext i32 %i.bd to i64
  %i.be = zext nneg i32 %i.bb to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i32 %i.bb, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %i.be, 24
  %n.vec = and i64 %i.be, 2147483616              ; 4 uses
  %i.bg = or disjoint i64 %n.vec, 1
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.neg = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.neg ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.bi = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.bh, align 1, !tbaa !24
  %wide.load40 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !24
  %i.bj = sub nsw i64 13, %index
  %i.bk = getelementptr inbounds i8, ptr %i.e, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -15 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -31 ; 2 uses
  %wide.load41 = load <16 x i8>, ptr %i.bl, align 2, !tbaa !24
  %wide.load42 = load <16 x i8>, ptr %i.bm, align 2, !tbaa !24
  %i.bn = xor <16 x i8> %wide.load41, %wide.load
  %i.bo = xor <16 x i8> %wide.load42, %wide.load40
  store <16 x i8> %i.bn, ptr %i.bl, align 2, !tbaa !24
  store <16 x i8> %i.bo, ptr %i.bm, align 2, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.be
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.be, 2147483640            ; 3 uses
  %i.bq = or disjoint i64 %n.vec43, 1
  %invariant.gep51 = getelementptr i8, ptr %i.c, i64 %i.bc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %.neg50 = xor i64 %index44, -1
  %gep52 = getelementptr i8, ptr %invariant.gep51, i64 %.neg50
  %i.br = getelementptr inbounds i8, ptr %gep52, i64 -7
  %wide.load45 = load <8 x i8>, ptr %i.br, align 1, !tbaa !24
  %i.bs = sub nsw i64 13, %index44
  %i.bt = getelementptr inbounds i8, ptr %i.e, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -7 ; 2 uses
  %wide.load46 = load <8 x i8>, ptr %i.bu, align 2, !tbaa !24
  %i.bv = xor <8 x i8> %wide.load46, %wide.load45
  store <8 x i8> %i.bv, ptr %i.bu, align 2, !tbaa !24
  %index.next47 = add nuw i64 %index44, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next47, %n.vec43
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec43, %i.be
  br i1 %cmp.n48, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bx = sub nuw nsw i64 %i.bc, %indvars.iv.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = sub nsw i64 14, %indvars.iv.i
  %i.cb = getelementptr inbounds i8, ptr %i.e, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.cd = xor i8 %i.cc, %i.bz
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !34

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.v, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i16 0, ptr %i.ce, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.d, ptr noundef nonnull align 16 dereferenceable(14) %i.e, i64 14, i1 false)
  %i.cf = sub nuw nsw i32 13, %i.at
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cg ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !24
  %i.cj = trunc nuw nsw i32 %i.ai to i8
  %i.ck = xor i8 %i.ci, %i.cj
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !24
  %i.cl = sext i32 %.061.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.cl, i1 false)
  %i.cm = call ptr @EVP_CIPHER_CTX_new() #8       ; 9 uses
  %.not76.i = icmp eq ptr %i.cm, null
  br i1 %.not76.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.loopexit.i
  %i.cn = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef %i.y, ptr noundef nonnull %i.d) #8
  %i.co = icmp slt i32 %i.cn, 1
  br i1 %i.co, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.cm, i32 noundef 0) #8
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.cm, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.061.i) #8
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.cm, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #8
  %i.cu = icmp sgt i32 %i.ct, 0
  %spec.select.i = zext i1 %i.cu to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %.loopexit.i, %bb.u, %bb.t, %bb.s
  %.063.i = phi ptr [ null, %bb.s ], [ %i.cm, %bb.w ], [ %i.cm, %bb.x ], [ %i.cm, %bb.y ], [ %i.cm, %bb.z ], [ null, %bb.t ], [ null, %.loopexit.i ], [ null, %bb.u ]
  %.0.i23 = phi i32 [ 0, %bb.s ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ %spec.select.i, %bb.z ], [ 0, %bb.t ], [ 0, %.loopexit.i ], [ 0, %bb.u ]
  call void @EVP_CIPHER_CTX_free(ptr noundef %.063.i) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 16) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 16) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 16) #8
  call void @BN_clear_free(ptr noundef nonnull %i.ap) #8
  call void @BN_clear_free(ptr noundef nonnull %i.aq) #8
  br label %SRTPKDF.exit

SRTPKDF.exit:                                     ; preds = %bb.j, %bb.k, %bb.n, %bb.p, %bb.aa
  %.064.i = phi i32 [ %.0.i23, %bb.aa ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.p ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ab

bb.ab:                                            ; preds = %kdf_srtpkdf_check_key.exit, %bb.a, %bb.b, %SRTPKDF.exit, %bb.i, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.i ], [ %.064.i, %SRTPKDF.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %kdf_srtpkdf_check_key.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_srtpkdf_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @srtp_set_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_srtpkdf_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %.not62.i = icmp eq ptr %i.c, null
  br i1 %.not62.i, label %.thread129, label %.lr.ph.i

.thread129:                                       ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.d) #8 ; 0 uses
  br label %bb.ar

.lr.ph.i:                                         ; preds = %bb.c, %bb.q
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %i.f = phi ptr [ %i.az, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.g = phi ptr [ %i.ba, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.h = phi ptr [ %i.bb, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.i = phi ptr [ %i.bc, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.j = phi ptr [ %i.bd, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.k = phi ptr [ %i.be, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.l = phi ptr [ %i.bf, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.m = phi ptr [ %i.bh, %bb.q ], [ %i.c, %bb.c ] ; 12 uses
  %.04163.i = phi ptr [ %i.bg, %bb.q ], [ %1, %bb.c ] ; 15 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  switch i8 %i.n, label %bb.q [
    i8 99, label %bb.d
    i8 105, label %bb.f
    i8 107, label %bb.h
    i8 108, label %bb.k
    i8 112, label %bb.m
    i8 115, label %bb.o
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.12, ptr noundef nonnull dereferenceable(1) %i.o) #9
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.q, !prof !28

bb.e:                                             ; preds = %bb.d
  %.not50.i = icmp eq ptr %i.f, null
  br i1 %.not50.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !28

bb.f:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.15, ptr noundef nonnull dereferenceable(1) %i.r) #9
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.q, !prof !28

bb.g:                                             ; preds = %bb.f
  %.not49.i = icmp eq ptr %i.g, null
  br i1 %.not49.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !28

bb.h:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24
  switch i8 %i.v, label %bb.q [
    i8 100, label %sub_0.i
    i8 101, label %sub_052.i
  ]

sub_0.i:                                          ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 114, %i.y
  %.not65.i = icmp eq i8 %i.x, 114
  br i1 %.not65.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 0, %i.ac
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %i.ae = phi i32 [ %i.z, %sub_0.i ], [ %i.ad, %sub_1.i ]
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.q, !prof !28

bb.i:                                             ; preds = %.tail.i
  %.not48.i = icmp eq ptr %i.h, null
  br i1 %.not48.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !28

sub_052.i:                                        ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = sub nsw i32 121, %i.ai
  %.not64.i = icmp eq i8 %i.ah, 121
  br i1 %.not64.i, label %sub_153.i, label %.tail51.i

sub_153.i:                                        ; preds = %sub_052.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 0, %i.am
  br label %.tail51.i

.tail51.i:                                        ; preds = %sub_153.i, %sub_052.i
  %i.ao = phi i32 [ %i.aj, %sub_052.i ], [ %i.an, %sub_153.i ]
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.q, !prof !28

bb.j:                                             ; preds = %.tail51.i
  %.not47.i = icmp eq ptr %i.i, null
  br i1 %.not47.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !28

bb.k:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.18, ptr noundef nonnull dereferenceable(1) %i.aq) #9
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.q, !prof !28

bb.l:                                             ; preds = %bb.k
  %.not46.i = icmp eq ptr %i.j, null
  br i1 %.not46.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !28

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.19, ptr noundef nonnull dereferenceable(1) %i.at) #9
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.q, !prof !28

bb.n:                                             ; preds = %bb.m
  %.not45.i = icmp eq ptr %i.k, null
  br i1 %.not45.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !28

bb.o:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.20, ptr noundef nonnull dereferenceable(1) %i.aw) #9
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.q, !prof !28

bb.p:                                             ; preds = %bb.o
  %.not44.i = icmp eq ptr %i.l, null
  br i1 %.not44.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !28

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g, %bb.e, %bb.o, %bb.m, %bb.k, %.tail51.i, %.tail.i, %bb.h, %bb.f, %bb.d, %.lr.ph.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph.i ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.d ], [ %.04163.i, %bb.e ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %.tail.i ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0, %.tail51.i ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.k ], [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %bb.n ], [ %.sroa.0.0, %bb.p ] ; 3 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0, %.lr.ph.i ], [ %.sroa.5.0, %bb.o ], [ %.sroa.5.0, %bb.d ], [ %.sroa.5.0, %bb.e ], [ %.sroa.5.0, %bb.f ], [ %.sroa.5.0, %bb.h ], [ %.04163.i, %bb.g ], [ %.sroa.5.0, %.tail.i ], [ %.sroa.5.0, %bb.i ], [ %.sroa.5.0, %.tail51.i ], [ %.sroa.5.0, %bb.j ], [ %.sroa.5.0, %bb.k ], [ %.sroa.5.0, %bb.l ], [ %.sroa.5.0, %bb.m ], [ %.sroa.5.0, %bb.n ], [ %.sroa.5.0, %bb.p ] ; 3 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0, %.lr.ph.i ], [ %.sroa.7.0, %bb.o ], [ %.sroa.7.0, %bb.d ], [ %.sroa.7.0, %bb.e ], [ %.sroa.7.0, %bb.f ], [ %.sroa.7.0, %bb.h ], [ %.sroa.7.0, %bb.g ], [ %.sroa.7.0, %.tail.i ], [ %.04163.i, %bb.i ], [ %.sroa.7.0, %.tail51.i ], [ %.sroa.7.0, %bb.j ], [ %.sroa.7.0, %bb.k ], [ %.sroa.7.0, %bb.l ], [ %.sroa.7.0, %bb.m ], [ %.sroa.7.0, %bb.n ], [ %.sroa.7.0, %bb.p ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %.lr.ph.i ], [ %.sroa.9.0, %bb.o ], [ %.sroa.9.0, %bb.d ], [ %.sroa.9.0, %bb.e ], [ %.sroa.9.0, %bb.f ], [ %.sroa.9.0, %bb.h ], [ %.sroa.9.0, %bb.g ], [ %.sroa.9.0, %.tail.i ], [ %.sroa.9.0, %bb.i ], [ %.sroa.9.0, %.tail51.i ], [ %.04163.i, %bb.j ], [ %.sroa.9.0, %bb.k ], [ %.sroa.9.0, %bb.l ], [ %.sroa.9.0, %bb.m ], [ %.sroa.9.0, %bb.n ], [ %.sroa.9.0, %bb.p ] ; 3 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0, %.lr.ph.i ], [ %.sroa.11.0, %bb.o ], [ %.sroa.11.0, %bb.d ], [ %.sroa.11.0, %bb.e ], [ %.sroa.11.0, %bb.f ], [ %.sroa.11.0, %bb.h ], [ %.sroa.11.0, %bb.g ], [ %.sroa.11.0, %.tail.i ], [ %.sroa.11.0, %bb.i ], [ %.sroa.11.0, %.tail51.i ], [ %.sroa.11.0, %bb.j ], [ %.sroa.11.0, %bb.k ], [ %.04163.i, %bb.l ], [ %.sroa.11.0, %bb.m ], [ %.sroa.11.0, %bb.n ], [ %.sroa.11.0, %bb.p ] ; 3 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %.lr.ph.i ], [ %.sroa.13.0, %bb.o ], [ %.sroa.13.0, %bb.d ], [ %.sroa.13.0, %bb.e ], [ %.sroa.13.0, %bb.f ], [ %.sroa.13.0, %bb.h ], [ %.sroa.13.0, %bb.g ], [ %.sroa.13.0, %.tail.i ], [ %.sroa.13.0, %bb.i ], [ %.sroa.13.0, %.tail51.i ], [ %.sroa.13.0, %bb.j ], [ %.sroa.13.0, %bb.k ], [ %.sroa.13.0, %bb.l ], [ %.sroa.13.0, %bb.m ], [ %.04163.i, %bb.n ], [ %.sroa.13.0, %bb.p ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0, %.lr.ph.i ], [ %.sroa.15.0, %bb.o ], [ %.sroa.15.0, %bb.d ], [ %.sroa.15.0, %bb.e ], [ %.sroa.15.0, %bb.f ], [ %.sroa.15.0, %bb.h ], [ %.sroa.15.0, %bb.g ], [ %.sroa.15.0, %.tail.i ], [ %.sroa.15.0, %bb.i ], [ %.sroa.15.0, %.tail51.i ], [ %.sroa.15.0, %bb.j ], [ %.sroa.15.0, %bb.k ], [ %.sroa.15.0, %bb.l ], [ %.sroa.15.0, %bb.m ], [ %.sroa.15.0, %bb.n ], [ %.04163.i, %bb.p ] ; 3 uses
  %i.az = phi ptr [ %i.f, %.lr.ph.i ], [ %i.f, %bb.o ], [ %i.f, %bb.d ], [ %.04163.i, %bb.e ], [ %i.f, %bb.f ], [ %i.f, %bb.h ], [ %i.f, %bb.g ], [ %i.f, %.tail.i ], [ %i.f, %bb.i ], [ %i.f, %.tail51.i ], [ %i.f, %bb.j ], [ %i.f, %bb.k ], [ %i.f, %bb.l ], [ %i.f, %bb.m ], [ %i.f, %bb.n ], [ %i.f, %bb.p ]
  %i.ba = phi ptr [ %i.g, %.lr.ph.i ], [ %i.g, %bb.o ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.h ], [ %.04163.i, %bb.g ], [ %i.g, %.tail.i ], [ %i.g, %bb.i ], [ %i.g, %.tail51.i ], [ %i.g, %bb.j ], [ %i.g, %bb.k ], [ %i.g, %bb.l ], [ %i.g, %bb.m ], [ %i.g, %bb.n ], [ %i.g, %bb.p ]
  %i.bb = phi ptr [ %i.h, %.lr.ph.i ], [ %i.h, %bb.o ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %.tail.i ], [ %.04163.i, %bb.i ], [ %i.h, %.tail51.i ], [ %i.h, %bb.j ], [ %i.h, %bb.k ], [ %i.h, %bb.l ], [ %i.h, %bb.m ], [ %i.h, %bb.n ], [ %i.h, %bb.p ]
  %i.bc = phi ptr [ %i.i, %.lr.ph.i ], [ %i.i, %bb.o ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %.tail.i ], [ %i.i, %bb.i ], [ %i.i, %.tail51.i ], [ %.04163.i, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ], [ %i.i, %bb.p ]
  %i.bd = phi ptr [ %i.j, %.lr.ph.i ], [ %i.j, %bb.o ], [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %.tail.i ], [ %i.j, %bb.i ], [ %i.j, %.tail51.i ], [ %i.j, %bb.j ], [ %i.j, %bb.k ], [ %.04163.i, %bb.l ], [ %i.j, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %bb.p ]
  %i.be = phi ptr [ %i.k, %.lr.ph.i ], [ %i.k, %bb.o ], [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.h ], [ %i.k, %bb.g ], [ %i.k, %.tail.i ], [ %i.k, %bb.i ], [ %i.k, %.tail51.i ], [ %i.k, %bb.j ], [ %i.k, %bb.k ], [ %i.k, %bb.l ], [ %i.k, %bb.m ], [ %.04163.i, %bb.n ], [ %i.k, %bb.p ]
  %i.bf = phi ptr [ %i.l, %.lr.ph.i ], [ %i.l, %bb.o ], [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %.tail.i ], [ %i.l, %bb.i ], [ %i.l, %.tail51.i ], [ %i.l, %bb.j ], [ %i.l, %bb.k ], [ %i.l, %bb.l ], [ %i.l, %bb.m ], [ %i.l, %bb.n ], [ %.04163.i, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.04163.i, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.r, label %.lr.ph.i, !llvm.loop !42

srtp_set_ctx_params_decoder.exit:                 ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.l, %bb.n, %bb.p
  %.sink.i = phi i32 [ 114, %bb.n ], [ 103, %bb.l ], [ 91, %bb.j ], [ 80, %bb.i ], [ 65, %bb.g ], [ 54, %bb.e ], [ 125, %bb.p ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.13, i32 noundef %.sink.i, ptr noundef nonnull @__func__.srtp_set_ctx_params_decoder) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.m) #8
  br label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %0, align 8, !tbaa !14
  %i.bj = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.bi) #8
  %.not42 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not42, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = tail call i32 @ossl_prov_cipher_load(ptr noundef nonnull %i.bk, ptr noundef nonnull %.sroa.0.1, ptr noundef %.sroa.13.1, ptr noundef %i.bj) #8
  %.not43 = icmp eq i32 %i.bl, 0
  br i1 %.not43, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.bk) #8 ; 4 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = tail call i32 @EVP_CIPHER_is_a(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.9) #8
  %.not44 = icmp eq i32 %i.bo, 0
  br i1 %.not44, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bp = tail call i32 @EVP_CIPHER_is_a(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.10) #8
  %.not45 = icmp eq i32 %i.bp, 0
  br i1 %.not45, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bq = tail call i32 @EVP_CIPHER_is_a(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.11) #8
  %.not46 = icmp eq i32 %i.bq, 0
  br i1 %.not46, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.kdf_srtpkdf_set_ctx_params) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 260, ptr noundef null) #8
  br label %.critedge

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.r
  %.not47 = icmp eq ptr %.sroa.9.1, null
  br i1 %.not47, label %kdf_srtpkdf_check_key.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !30
  tail call void @CRYPTO_clear_free(ptr noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str, i32 noundef 144) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bv = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %.sroa.9.1, ptr noundef nonnull %i.br, i64 noundef 0, ptr noundef nonnull %i.bs) #8
  %.not48 = icmp eq i32 %i.bv, 0
  br i1 %.not48, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.bw) #8 ; 2 uses
  %.not.i61 = icmp eq ptr %i.bx, null
  br i1 %.not.i61, label %kdf_srtpkdf_check_key.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !15
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %kdf_srtpkdf_check_key.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.cb = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef nonnull %i.bx) #8
  %i.cc = sext i32 %i.cb to i64
  %.not6.i = icmp eq i64 %i.ca, %i.cc
  br i1 %.not6.i, label %kdf_srtpkdf_check_key.exit.thread, label %kdf_srtpkdf_check_key.exit

kdf_srtpkdf_check_key.exit:                       ; preds = %bb.ab, %bb.ac
  %.sink8.i = phi i32 [ 179, %bb.ab ], [ 183, %bb.ac ]
  %.sink.i62 = phi i32 [ 128, %bb.ab ], [ 105, %bb.ac ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink8.i, ptr noundef nonnull @__func__.kdf_srtpkdf_check_key) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef %.sink.i62, ptr noundef null) #8
  br label %.critedge

kdf_srtpkdf_check_key.exit.thread:                ; preds = %bb.aa, %bb.ac, %bb.y
  %.not50 = icmp eq ptr %.sroa.15.1, null
  br i1 %.not50, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %kdf_srtpkdf_check_key.exit.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !29
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !30
  tail call void @CRYPTO_clear_free(ptr noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str, i32 noundef 144) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %i.ch = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %.sroa.15.1, ptr noundef nonnull %i.cd, i64 noundef 0, ptr noundef nonnull %i.ce) #8
  %.not51 = icmp eq i32 %i.ch, 0
  br i1 %.not51, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.cj = icmp ult i64 %i.ci, 14
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 257, ptr noundef nonnull @__func__.kdf_srtpkdf_set_ctx_params) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 112, ptr noundef null) #8
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae, %kdf_srtpkdf_check_key.exit.thread
  %.not52 = icmp eq ptr %.sroa.7.1, null
  br i1 %.not52, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cl = tail call i32 @OSSL_PARAM_get_uint32(ptr noundef nonnull %.sroa.7.1, ptr noundef nonnull %i.ck) #8
  %.not53 = icmp eq i32 %i.cl, 0
  br i1 %.not53, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !22 ; 3 uses
  %.not54 = icmp eq i32 %i.cm, 0
  br i1 %.not54, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.cm)
  %or.cond.i = icmp eq i32 %i.cn, 1
  %i.co = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cm, i1 true) ; 2 uses
  %i.cp = icmp samesign ult i32 %i.co, 25
  %or.cond.not = select i1 %or.cond.i, i1 %i.cp, i1 false
  br i1 %or.cond.not, label %.thread123, label %bb.ak

.thread123:                                       ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !23
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @__func__.kdf_srtpkdf_set_ctx_params) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 256, ptr noundef null) #8
  br label %.critedge

bb.al:                                            ; preds = %.thread123, %bb.ai, %bb.ag
  %.not57 = icmp eq ptr %.sroa.11.1, null
  br i1 %.not57, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cs = tail call i32 @OSSL_PARAM_get_uint32(ptr noundef nonnull %.sroa.11.1, ptr noundef nonnull %i.cr) #8
  %.not58 = icmp eq i32 %i.cs, 0
  br i1 %.not58, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !21
  %i.cu = icmp ugt i32 %i.ct, 7
  br i1 %i.cu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 280, ptr noundef nonnull @__func__.kdf_srtpkdf_set_ctx_params) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 257, ptr noundef null) #8
  br label %.critedge

bb.ap:                                            ; preds = %bb.an, %bb.al
  %.not59 = icmp eq ptr %.sroa.5.1, null
  br i1 %.not59, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cx = tail call fastcc i32 @srtpkdf_set_membuf(ptr noundef %i.cv, ptr noundef %i.cw, ptr noundef %.sroa.5.1)
  %.not60 = icmp eq i32 %i.cx, 0
  br i1 %.not60, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %.thread129, %bb.aq, %bb.ap
  br label %.critedge

.critedge:                                        ; preds = %bb.ak, %kdf_srtpkdf_check_key.exit, %srtp_set_ctx_params_decoder.exit, %bb.s, %bb.t, %bb.x, %bb.aq, %bb.am, %bb.ah, %bb.ad, %bb.z, %bb.b, %bb.a, %bb.ar, %bb.ao, %bb.af
  %.3 = phi i32 [ 0, %bb.aq ], [ 1, %bb.a ], [ 0, %bb.af ], [ 0, %bb.ao ], [ 1, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.ah ], [ 0, %bb.ak ], [ 0, %bb.ad ], [ 0, %kdf_srtpkdf_check_key.exit ], [ 0, %bb.z ], [ 0, %bb.b ], [ 0, %srtp_set_ctx_params_decoder.exit ], [ 0, %bb.x ], [ 0, %bb.t ], [ 0, %bb.s ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_srtpkdf_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @srtp_get_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_srtpkdf_get_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %.not1215.i = icmp eq ptr %i.b, null
  br i1 %.not1215.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.d ], [ null, %.preheader.i ]
  %i.c = phi ptr [ %i.g, %bb.d ], [ null, %.preheader.i ] ; 2 uses
  %i.d = phi ptr [ %i.i, %bb.d ], [ %i.b, %.preheader.i ] ; 2 uses
  %.0916.i = phi ptr [ %i.h, %bb.d ], [ %1, %.preheader.i ] ; 3 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.21, ptr noundef nonnull dereferenceable(1) %i.d) #9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %.lr.ph.i
  %.not13.i = icmp eq ptr %i.c, null
  br i1 %.not13.i, label %bb.d, label %srtp_get_ctx_params_decoder.exit, !prof !28

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph.i ], [ %.0916.i, %bb.c ] ; 3 uses
  %i.g = phi ptr [ %i.c, %.lr.ph.i ], [ %.0916.i, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0916.i, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.e, label %.lr.ph.i, !llvm.loop !43

srtp_get_ctx_params_decoder.exit:                 ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.13, i32 noundef 163, ptr noundef nonnull @__func__.srtp_get_ctx_params_decoder) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.d) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not8 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not8, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.j) #8
  %i.l = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef %i.k) #8
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.m) #8
  %.not9.not = icmp eq i32 %i.n, 0
  br i1 %.not9.not, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.b, %.preheader.i, %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %srtp_get_ctx_params_decoder.exit, %bb.a, %bb.f, %.thread
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %.thread ], [ 0, %srtp_get_ctx_params_decoder.exit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ossl_prov_memdup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_prov_cipher_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ossl_prov_cipher_reset(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_prov_cipher_cipher(ptr noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_key_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @BN_new() local_unnamed_addr #3

declare void @BN_free(ptr noundef) local_unnamed_addr #3

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BN_rshift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare i32 @EVP_EncryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_set_padding(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_EncryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BN_clear_free(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_prov_cipher_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_is_a(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @srtpkdf_set_membuf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = load i64, ptr %1, align 8, !tbaa !30
  tail call void @CRYPTO_clear_free(ptr noundef %i.a, i64 noundef %i.b, ptr noundef nonnull @.str, i32 noundef 144) #8
  store ptr null, ptr %0, align 8, !tbaa !29
  store i64 0, ptr %1, align 8, !tbaa !30
  %i.c = tail call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %2, ptr noundef nonnull %0, i64 noundef 0, ptr noundef nonnull %1) #8
  ret i32 %i.c
}

declare i32 @OSSL_PARAM_get_uint32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!9 = !{!"p1 _ZTS13evp_cipher_st", !8, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 8}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"", !8, i64 0, !10, i64 8, !11, i64 24, !12, i64 32, !11, i64 40, !12, i64 48, !11, i64 56, !12, i64 64, !5, i64 72, !5, i64 76, !5, i64 80}
!14 = !{!13, !8, i64 0}
!15 = !{!13, !11, i64 24}
!16 = !{!13, !12, i64 32}
!17 = !{!13, !11, i64 40}
!18 = !{!13, !12, i64 48}
!19 = !{!13, !11, i64 56}
!20 = !{!13, !12, i64 64}
!21 = !{!13, !5, i64 80}
!22 = !{!13, !5, i64 72}
!23 = !{!13, !5, i64 76}
!24 = !{!4, !4, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"ossl_param_st", !11, i64 0, !5, i64 8, !8, i64 16, !12, i64 24, !12, i64 32}
!27 = !{!26, !11, i64 0}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = !{!11, !11, i64 0}
!30 = !{!12, !12, i64 0}
!31 = !{!5, !5, i64 0}
!32 = distinct !{!32, !25, !39, !40}
!33 = distinct !{!33, !25, !39, !40}
!34 = distinct !{!34, !25, !40, !39}
!35 = !{!"_Bool", !4, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 8, i32 24}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
end_hunk_0
