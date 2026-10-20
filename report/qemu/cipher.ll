Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cipher?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.QEnumLookup = type { ptr, ptr, i32 }
%struct.QCryptoCipherDriver = type { ptr, ptr, ptr, ptr }
%struct.gnutls_datum_t = type { ptr, i32 }

@.str = private unnamed_addr constant [32 x i8] c"alg < G_N_ELEMENTS(alg_key_len)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"../crypto/cipher.c\00", align 1
@__PRETTY_FUNCTION__.qcrypto_cipher_get_block_len = private unnamed_addr constant [55 x i8] c"size_t qcrypto_cipher_get_block_len(QCryptoCipherAlgo)\00", align 1
@alg_block_len = internal unnamed_addr constant [13 x i64] [i64 16, i64 16, i64 16, i64 8, i64 8, i64 8, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 0], align 16
@__PRETTY_FUNCTION__.qcrypto_cipher_get_key_len = private unnamed_addr constant [53 x i8] c"size_t qcrypto_cipher_get_key_len(QCryptoCipherAlgo)\00", align 1
@alg_key_len = internal unnamed_addr constant [13 x i64] [i64 16, i64 24, i64 32, i64 8, i64 24, i64 16, i64 16, i64 24, i64 32, i64 16, i64 24, i64 32, i64 0], align 16
@mode_need_iv = internal unnamed_addr constant [4 x i8] c"\00\01\01\01", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"../crypto/cipher-gnutls.c.inc\00", align 1
@__func__.qcrypto_cipher_ctx_new = private unnamed_addr constant [23 x i8] c"qcrypto_cipher_ctx_new\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Unsupported cipher algorithm %s with %s mode\00", align 1
@QCryptoCipherAlgo_lookup = external constant %struct.QEnumLookup, align 8
@QCryptoCipherMode_lookup = external constant %struct.QEnumLookup, align 8
@gnutls_driver = internal global %struct.QCryptoCipherDriver { ptr @qcrypto_gnutls_cipher_encrypt, ptr @qcrypto_gnutls_cipher_decrypt, ptr @qcrypto_gnutls_cipher_setiv, ptr @qcrypto_gnutls_cipher_free }, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Cannot initialize cipher: %s\00", align 1
@__func__.qcrypto_cipher_validate_key_length = private unnamed_addr constant [35 x i8] c"qcrypto_cipher_validate_key_length\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"XTS cipher key length should be a multiple of 2\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Cipher key length %zu should be %zu\00", align 1
@__func__.qcrypto_gnutls_cipher_encrypt = private unnamed_addr constant [30 x i8] c"qcrypto_gnutls_cipher_encrypt\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Length %zu must be a multiple of block size %zu\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Cannot encrypt data: %s\00", align 1
@__func__.qcrypto_gnutls_cipher_decrypt = private unnamed_addr constant [30 x i8] c"qcrypto_gnutls_cipher_decrypt\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Cannot decrypt data: %s\00", align 1
@__func__.qcrypto_gnutls_cipher_setiv = private unnamed_addr constant [28 x i8] c"qcrypto_gnutls_cipher_setiv\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Expected IV size %zu not %zu\00", align 1
@switch.table.qcrypto_cipher_new = private unnamed_addr constant [5 x i8] c"\04\09\05\12\03", align 4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @qcrypto_cipher_get_block_len(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.qcrypto_cipher_get_block_len) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @alg_block_len, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @qcrypto_cipher_get_key_len(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 81, ptr noundef nonnull @__PRETTY_FUNCTION__.qcrypto_cipher_get_key_len) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @alg_key_len, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @qcrypto_cipher_get_iv_len(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = zext nneg i32 %0 to i64
  %3 = icmp ugt i32 %0, 12
  %4 = icmp ugt i32 %1, 3
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %bb.c, label %5

5:                                                ; preds = %bb.a
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds nuw i8, ptr @mode_need_iv, i64 %6
  %8 = load i8, ptr %7, align 1, !range !9, !noundef !10
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %5
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @alg_block_len, i64 %2
  %i.b = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %5, %bb.a, %bb.b
  %.0 = phi i64 [ 0, %5 ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @qcrypto_cipher_supports(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %switch = icmp ult i32 %0, 5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %switch.and = and i32 %0, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ %switch, %bb.b ], [ %switch.selectcmp, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @qcrypto_cipher_new(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.gnutls_datum_t, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %2, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = trunc i64 %3 to i32
  store i32 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.c, align 4
  switch i32 %1, label %.critedge.i [
    i32 2, label %bb.b
    i32 0, label %bb.d
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.critedge.i [
    i32 0, label %bb.e
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.d = icmp ult i32 %0, 5
  br i1 %i.d, label %switch.lookup, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.b, %bb.a
  %i.e = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @QCryptoCipherAlgo_lookup, i32 noundef %0) #8
  %i.f = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @QCryptoCipherMode_lookup, i32 noundef %1) #8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 280, ptr noundef nonnull @__func__.qcrypto_cipher_ctx_new, ptr noundef nonnull @.str.3, ptr noundef %i.e, ptr noundef %i.f) #8
  br label %qcrypto_cipher_ctx_new.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.b
  %.078.i = phi i32 [ 32, %bb.b ], [ 33, %bb.c ]
  %i.g = and i64 %3, 1
  %.not24.i.i = icmp eq i64 %i.g, 0
  br i1 %.not24.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 122, ptr noundef nonnull @__func__.qcrypto_cipher_validate_key_length, ptr noundef nonnull @.str.7) #8
  br label %qcrypto_cipher_ctx_new.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @alg_key_len, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = lshr exact i64 %3, 1
  %.not25.i.i = icmp eq i64 %i.j, %i.k
  br i1 %.not25.i.i, label %qcrypto_cipher_validate_key_length.exit.thread88.i, label %bb.h

qcrypto_cipher_validate_key_length.exit.thread88.i: ; preds = %bb.g
  %i.l = tail call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @gnutls_driver, ptr %i.m, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = shl i64 %i.j, 1
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 128, ptr noundef nonnull @__func__.qcrypto_cipher_validate_key_length, ptr noundef nonnull @.str.8, i64 noundef %3, i64 noundef %i.n) #8
  br label %qcrypto_cipher_ctx_new.exit.thread

switch.lookup:                                    ; preds = %bb.d
  %i.o = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.qcrypto_cipher_new, i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.p = zext nneg i32 %0 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @alg_key_len, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %3
  br i1 %.not.i.i, label %qcrypto_cipher_validate_key_length.exit.i, label %bb.i

bb.i:                                             ; preds = %switch.lookup
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 134, ptr noundef nonnull @__func__.qcrypto_cipher_validate_key_length, ptr noundef nonnull @.str.8, i64 noundef %3, i64 noundef %i.r) #8
  br label %qcrypto_cipher_ctx_new.exit.thread

qcrypto_cipher_validate_key_length.exit.i:        ; preds = %switch.lookup
  %i.s = tail call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #9 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @gnutls_driver, ptr %i.t, align 8
  %i.u = icmp eq i32 %1, 0
  br i1 %i.u, label %.thread, label %bb.j

.thread:                                          ; preds = %qcrypto_cipher_validate_key_length.exit.i
  %i.v = tail call noalias ptr @g_malloc0(i64 noundef %3) #9 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.v, ptr %i.w, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.v, ptr noundef nonnull align 1 %2, i64 noundef %3, i1 noundef false) #8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %3, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %switch.ext, ptr %i.y, align 8
  %i.z = add nsw i32 %0, -3
  %or.cond.i14 = icmp ult i32 %i.z, 2
  %spec.select.i15 = select i1 %or.cond.i14, i64 8, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %spec.select.i15, ptr %i.aa, align 8
  br label %bb.n

bb.j:                                             ; preds = %qcrypto_cipher_validate_key_length.exit.i, %qcrypto_cipher_validate_key_length.exit.thread88.i
  %i.ab = phi ptr [ %i.l, %qcrypto_cipher_validate_key_length.exit.thread88.i ], [ %i.s, %qcrypto_cipher_validate_key_length.exit.i ] ; 5 uses
  %.0788490.i = phi i32 [ %.078.i, %qcrypto_cipher_validate_key_length.exit.thread88.i ], [ %switch.ext, %qcrypto_cipher_validate_key_length.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.ad = call i32 @gnutls_cipher_init(ptr noundef nonnull %i.ac, i32 noundef %.0788490.i, ptr noundef nonnull %5, ptr noundef null) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = call ptr @gnutls_strerror(i32 noundef %i.ad) #10
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 300, ptr noundef nonnull @__func__.qcrypto_cipher_ctx_new, ptr noundef nonnull @.str.4, ptr noundef %i.ae) #8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  call void @g_free(ptr noundef %i.ag) #8
  %i.ah = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i82.i = icmp eq ptr %i.ah, null
  br i1 %.not.i82.i, label %qcrypto_gnutls_cipher_free.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @gnutls_cipher_deinit(ptr noundef nonnull %i.ah) #8
  br label %qcrypto_gnutls_cipher_free.exit.i

qcrypto_gnutls_cipher_free.exit.i:                ; preds = %bb.l, %bb.k
  call void @g_free(ptr noundef nonnull %i.ab) #8
  br label %qcrypto_cipher_ctx_new.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %0, -3
  %or.cond.i = icmp ult i32 %i.ai, 2
  %spec.select.i = select i1 %or.cond.i, i64 8, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store i64 %spec.select.i, ptr %i.aj, align 8
  %i.ak = call noalias ptr @g_malloc0(i64 noundef %spec.select.i) #9 ; 2 uses
  %i.al = load ptr, ptr %i.ac, align 8
  %i.am = load i64, ptr %i.aj, align 8
  call void @gnutls_cipher_set_iv(ptr noundef %i.al, ptr noundef %i.ak, i64 noundef %i.am) #8
  call void @g_free(ptr noundef %i.ak) #8
  br label %bb.n

qcrypto_cipher_ctx_new.exit.thread:               ; preds = %.critedge.i, %qcrypto_gnutls_cipher_free.exit.i, %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %.thread
  %.0.i = phi ptr [ %i.ab, %bb.m ], [ %i.s, %.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  store i32 %0, ptr %.0.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %1, ptr %i.an, align 4
  br label %bb.o

bb.o:                                             ; preds = %qcrypto_cipher_ctx_new.exit.thread, %bb.n
  %.012 = phi ptr [ %.0.i, %bb.n ], [ null, %qcrypto_cipher_ctx_new.exit.thread ]
  ret ptr %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qcrypto_cipher_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #8
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qcrypto_cipher_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #8
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qcrypto_cipher_setiv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #8
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qcrypto_cipher_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @qapi_enum_lookup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #5

declare i32 @gnutls_cipher_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @gnutls_strerror(i32 noundef) local_unnamed_addr #6

declare void @gnutls_cipher_set_iv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @qcrypto_gnutls_cipher_free(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @gnutls_cipher_deinit(ptr noundef nonnull %i.d) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @g_free(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @qcrypto_gnutls_cipher_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %struct.gnutls_datum_t, align 8     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = urem i64 %3, %i.c
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 92, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_encrypt, ptr noundef nonnull @.str.9, i64 noundef %3, i64 noundef %i.c) #8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not67 = icmp eq ptr %i.f, null
  br i1 %.not67, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @gnutls_cipher_encrypt2(ptr noundef nonnull %i.f, ptr noundef %1, i64 noundef %3, ptr noundef %2, i64 noundef %3) #8 ; 2 uses
  %.not71 = icmp eq i32 %i.g, 0
  br i1 %.not71, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @gnutls_strerror(i32 noundef %i.g) #10
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 102, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_encrypt, ptr noundef nonnull @.str.10, ptr noundef %i.h) #8
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @g_malloc0(i64 noundef %i.c) #9 ; 3 uses
  %.not6877 = icmp eq i64 %3, 0
  br i1 %.not6877, label %.critedge73, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %.05780 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %bb.k ] ; 2 uses
  %.05979 = phi ptr [ %2, %.lr.ph ], [ %i.ae, %bb.k ] ; 2 uses
  %.06178 = phi i64 [ %3, %.lr.ph ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.o = load ptr, ptr %i.j, align 8
  store ptr %i.o, ptr %5, align 8
  %i.p = load i64, ptr %i.l, align 8
  %i.q = trunc i64 %i.p to i32
  store i32 %i.q, ptr %i.k, align 8
  store i32 0, ptr %i.m, align 4
  %i.r = load i32, ptr %i.n, align 8
  %i.s = call i32 @gnutls_cipher_init(ptr noundef nonnull %i.a, i32 noundef %i.r, ptr noundef nonnull %5, ptr noundef null) #8 ; 2 uses
  %.not69 = icmp eq i32 %i.s, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call ptr @gnutls_strerror(i32 noundef %i.s) #10
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 113, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_encrypt, ptr noundef nonnull @.str.4, ptr noundef %i.t) #8
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %i.b, align 8
  call void @gnutls_cipher_set_iv(ptr noundef %i.u, ptr noundef %i.i, i64 noundef %i.v) #8
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = load i64, ptr %i.b, align 8              ; 2 uses
  %i.y = call i32 @gnutls_cipher_encrypt2(ptr noundef %i.w, ptr noundef %.05780, i64 noundef %i.x, ptr noundef %.05979, i64 noundef %i.x) #8 ; 2 uses
  %.not70 = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr %i.a, align 8
  call void @gnutls_cipher_deinit(ptr noundef %i.z) #8
  br i1 %.not70, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call ptr @gnutls_strerror(i32 noundef %i.y) #10
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 125, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_encrypt, ptr noundef nonnull @.str.10, ptr noundef %i.aa) #8
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ac = sub i64 %.06178, %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05780, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.05979, i64 %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not68 = icmp eq i64 %i.ac, 0
  br i1 %.not68, label %.critedge73, label %bb.g, !llvm.loop !11

.critedge:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @g_free(ptr noundef %i.i) #8
  br label %bb.l

.critedge73:                                      ; preds = %bb.k, %bb.f
  call void @g_free(ptr noundef %i.i) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %.critedge73, %.critedge, %bb.e, %bb.b
  %.3 = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %.critedge ], [ 0, %.critedge73 ], [ 0, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @qcrypto_gnutls_cipher_decrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %struct.gnutls_datum_t, align 8     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = urem i64 %3, %i.c
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 152, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_decrypt, ptr noundef nonnull @.str.9, i64 noundef %3, i64 noundef %i.c) #8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not67 = icmp eq ptr %i.f, null
  br i1 %.not67, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @gnutls_cipher_decrypt2(ptr noundef nonnull %i.f, ptr noundef %1, i64 noundef %3, ptr noundef %2, i64 noundef %3) #8 ; 2 uses
  %.not71 = icmp eq i32 %i.g, 0
  br i1 %.not71, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @gnutls_strerror(i32 noundef %i.g) #10
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_decrypt, ptr noundef nonnull @.str.11, ptr noundef %i.h) #8
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @g_malloc0(i64 noundef %i.c) #9 ; 3 uses
  %.not6877 = icmp eq i64 %3, 0
  br i1 %.not6877, label %.critedge73, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %.05780 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %bb.k ] ; 2 uses
  %.05979 = phi ptr [ %2, %.lr.ph ], [ %i.ae, %bb.k ] ; 2 uses
  %.06178 = phi i64 [ %3, %.lr.ph ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.o = load ptr, ptr %i.j, align 8
  store ptr %i.o, ptr %5, align 8
  %i.p = load i64, ptr %i.l, align 8
  %i.q = trunc i64 %i.p to i32
  store i32 %i.q, ptr %i.k, align 8
  store i32 0, ptr %i.m, align 4
  %i.r = load i32, ptr %i.n, align 8
  %i.s = call i32 @gnutls_cipher_init(ptr noundef nonnull %i.a, i32 noundef %i.r, ptr noundef nonnull %5, ptr noundef null) #8 ; 2 uses
  %.not69 = icmp eq i32 %i.s, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call ptr @gnutls_strerror(i32 noundef %i.s) #10
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 174, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_decrypt, ptr noundef nonnull @.str.4, ptr noundef %i.t) #8
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %i.b, align 8
  call void @gnutls_cipher_set_iv(ptr noundef %i.u, ptr noundef %i.i, i64 noundef %i.v) #8
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = load i64, ptr %i.b, align 8              ; 2 uses
  %i.y = call i32 @gnutls_cipher_decrypt2(ptr noundef %i.w, ptr noundef %.05780, i64 noundef %i.x, ptr noundef %.05979, i64 noundef %i.x) #8 ; 2 uses
  %.not70 = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr %i.a, align 8
  call void @gnutls_cipher_deinit(ptr noundef %i.z) #8
  br i1 %.not70, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call ptr @gnutls_strerror(i32 noundef %i.y) #10
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 186, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_decrypt, ptr noundef nonnull @.str.10, ptr noundef %i.aa) #8
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ac = sub i64 %.06178, %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05780, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.05979, i64 %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not68 = icmp eq i64 %i.ac, 0
  br i1 %.not68, label %.critedge73, label %bb.g, !llvm.loop !12

.critedge:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @g_free(ptr noundef %i.i) #8
  br label %bb.l

.critedge73:                                      ; preds = %bb.k, %bb.f
  call void @g_free(ptr noundef %i.i) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %.critedge73, %.critedge, %bb.e, %bb.b
  %.3 = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %.critedge ], [ 0, %.critedge73 ], [ 0, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @qcrypto_gnutls_cipher_setiv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %2, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 209, ptr noundef nonnull @__func__.qcrypto_gnutls_cipher_setiv, ptr noundef nonnull @.str.12, i64 noundef %i.b, i64 noundef %2) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @gnutls_cipher_set_iv(ptr noundef %i.d, ptr noundef %1, i64 noundef %2) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @gnutls_cipher_encrypt2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gnutls_cipher_deinit(ptr noundef) local_unnamed_addr #4

declare i32 @gnutls_cipher_decrypt2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
end_hunk_0
