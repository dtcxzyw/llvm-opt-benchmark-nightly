Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/dh_lib?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"crypto/dh/dh_lib.c\00", align 1
@__func__.dh_new_intern = private unnamed_addr constant [14 x i8] c"dh_new_intern\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @DH_set_method(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ossl_dh_get_method(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @DH_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @dh_new_intern(ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dh_new_intern(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 200, ptr noundef nonnull @.str, i32 noundef 72) #6 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CRYPTO_THREAD_lock_new() #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.c, ptr %i.d, align 8, !tbaa !24
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 79, ptr noundef nonnull @__func__.dh_new_intern) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 5, i32 noundef 524303, ptr noundef null) #6
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 80) #6
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store atomic i32 1, ptr %i.f seq_cst, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %0, ptr %i.g, align 8, !tbaa !25
  %i.h = tail call ptr @DH_get_default_method() #6 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.n = tail call i32 @CRYPTO_new_ex_data(i32 noundef 6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m) #6
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @ossl_ffc_params_init(ptr noundef nonnull %i.o) #6
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %.not23 = icmp eq ptr %i.r, null
  br i1 %.not23, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 %i.r(ptr noundef nonnull %i.a) #6
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 102, ptr noundef nonnull @__func__.dh_new_intern) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786693, ptr noundef null) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  tail call void @DH_free(ptr noundef nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.h, %bb.c
  %.0 = phi ptr [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.a ], [ %i.a, %bb.f ], [ %i.a, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @DH_new_method(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @dh_new_intern(ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ossl_dh_new_ex(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @dh_new_intern(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @DH_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = atomicrmw sub ptr %i.b, i32 1 release, align 4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %CRYPTO_DOWN_REF.exit.thread, label %CRYPTO_DOWN_REF.exit

CRYPTO_DOWN_REF.exit.thread:                      ; preds = %bb.b
  fence acquire
  br label %bb.c

CRYPTO_DOWN_REF.exit:                             ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %CRYPTO_DOWN_REF.exit.thread, %CRYPTO_DOWN_REF.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @CRYPTO_free_ex_data(i32 noundef 6, ptr noundef nonnull %0, ptr noundef nonnull %i.k) #6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_ffc_params_cleanup(ptr noundef nonnull %i.n) #6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  tail call void @BN_clear_free(ptr noundef %i.p) #6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  tail call void @BN_clear_free(ptr noundef %i.r) #6
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 138) #6
  br label %bb.g

bb.g:                                             ; preds = %CRYPTO_DOWN_REF.exit, %bb.a, %bb.f
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(ptr noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_cleanup(ptr noundef) local_unnamed_addr #2

declare void @BN_clear_free(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @DH_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ossl_dh_get0_libctx(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_dh_set0_libctx(ptr nofree noundef writeonly captures(none) initializes((168, 176)) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @DH_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #6
  ret i32 %i.b
}

declare i32 @CRYPTO_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @DH_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1) #6
  ret ptr %i.b
}

declare ptr @CRYPTO_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @DH_bits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_num_bits(ptr noundef nonnull %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -268435455, 268435456) i32 @DH_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_num_bits(ptr noundef nonnull %i.b) #6
  %i.d = add nsw i32 %i.c, 7
  %i.e = sdiv i32 %i.d, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @DH_security_bits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @BN_num_bits(ptr noundef nonnull %i.c) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not11 = icmp eq i32 %i.f, 0
  %. = select i1 %.not11, i32 -1, i32 %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %., %bb.c ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @BN_num_bits(ptr noundef nonnull %i.g) #6
  %i.i = tail call i32 @BN_security_bits(i32 noundef %i.h, i32 noundef %.0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.07 = phi i32 [ %i.i, %bb.e ], [ -1, %bb.d ]
  ret i32 %.07
}

declare i32 @BN_security_bits(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @DH_get0_pqg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_ffc_params_get0_pqg(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  ret void
}

declare void @ossl_ffc_params_get0_pqg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @DH_set0_pqg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq ptr %3, null
  %or.cond3 = and i1 %i.h, %i.g
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ossl_ffc_params_set0_pqg(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  tail call void @ossl_dh_cache_named_group(ptr noundef nonnull %0) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @ossl_ffc_params_set0_pqg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_dh_cache_named_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -2147483648, 2147483648) i64 @DH_get_length(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = sext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @DH_set_length(ptr nofree noundef captures(none) initializes((104, 108)) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.a, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !33
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @DH_get0_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  store ptr %i.b, ptr %1, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  store ptr %i.d, ptr %2, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @DH_set0_key(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  tail call void @BN_clear_free(ptr noundef %i.b) #6
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not10 = icmp eq ptr %2, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  tail call void @BN_clear_free(ptr noundef %i.d) #6
  store ptr %2, ptr %i.c, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !33
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DH_get0_p(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DH_get0_q(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DH_get0_g(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DH_get0_priv_key(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DH_get0_pub_key(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @DH_clear_flags(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = xor i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %i.d = and i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @DH_test_flags(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = and i32 %i.b, %1
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @DH_set_flags(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @ossl_dh_get0_params(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ossl_dh_get0_nid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  ret i32 %i.b
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DH_get_default_method() local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_init(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!9 = !{!"p1 _ZTS9bignum_st", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"ffc_params_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !10, i64 72, !10, i64 80, !5, i64 88}
!13 = !{!"p1 _ZTS14bn_mont_ctx_st", !8, i64 0}
!14 = !{!"", !4, i64 0}
!15 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!16 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!17 = !{!"crypto_ex_data_st", !15, i64 0, !16, i64 8}
!18 = !{!"p1 _ZTS9dh_method", !8, i64 0}
!19 = !{!"dh_st", !5, i64 0, !5, i64 4, !12, i64 8, !5, i64 104, !9, i64 112, !9, i64 120, !5, i64 128, !13, i64 136, !14, i64 144, !17, i64 152, !15, i64 168, !18, i64 176, !8, i64 184, !11, i64 192}
!20 = !{!19, !18, i64 176}
!21 = !{!"dh_method", !10, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48, !10, i64 56, !8, i64 64}
!22 = !{!21, !8, i64 40}
!23 = !{!21, !8, i64 32}
!24 = !{!19, !8, i64 184}
!25 = !{!19, !15, i64 168}
!26 = !{!19, !5, i64 128}
!27 = !{!19, !9, i64 112}
!28 = !{!19, !9, i64 120}
!29 = !{!19, !9, i64 8}
!30 = !{!19, !9, i64 16}
!31 = !{!19, !5, i64 104}
!32 = !{!19, !9, i64 24}
!33 = !{!19, !11, i64 192}
!34 = !{!14, !4, i64 0}
!35 = !{!21, !5, i64 48}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!9, !9, i64 0}
!38 = !{!19, !5, i64 60}
end_hunk_0
