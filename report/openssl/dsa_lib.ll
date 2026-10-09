Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/dsa_lib?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"crypto/dsa/dsa_lib.c\00", align 1
@__func__.dsa_new_intern = private unnamed_addr constant [15 x i8] c"dsa_new_intern\00", align 1

; Function Attrs: nounwind uwtable
define i32 @DSA_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #7
  ret i32 %i.b
}

declare i32 @CRYPTO_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @DSA_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1) #7
  ret ptr %i.b
}

declare ptr @CRYPTO_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @DSA_dup_DH(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @DH_new() #7               ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @ossl_dh_get0_params(ptr noundef nonnull %i.b) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call i32 @ossl_ffc_params_copy(ptr noundef %i.d, ptr noundef nonnull %i.e) #7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not31 = icmp eq ptr %i.h, null
  br i1 %.not31, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @BN_dup(ptr noundef nonnull %i.h) #7 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @BN_dup(ptr noundef nonnull %i.l) #7 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.m, %bb.g ], [ null, %bb.f ]  ; 2 uses
  %i.o = tail call i32 @DH_set0_key(ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef %.0) #7
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %.not32 = icmp eq ptr %i.q, null
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a
  %.020 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.b, %bb.e ], [ %i.b, %bb.g ], [ %i.b, %bb.h ], [ %i.b, %bb.i ], [ %i.b, %bb.c ]
  %.019 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ null, %bb.i ], [ null, %bb.c ]
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ %.0, %bb.h ], [ null, %bb.i ], [ null, %bb.c ]
  tail call void @BN_free(ptr noundef %.019) #7
  tail call void @BN_free(ptr noundef %.1) #7
  tail call void @DH_free(ptr noundef %.020) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.021 = phi ptr [ null, %bb.j ], [ %i.b, %bb.i ], [ %i.b, %bb.h ]
  ret ptr %.021
}

declare ptr @DH_new() local_unnamed_addr #1

declare i32 @ossl_ffc_params_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ossl_dh_get0_params(ptr noundef) local_unnamed_addr #1

declare ptr @BN_dup(ptr noundef) local_unnamed_addr #1

declare i32 @DH_set0_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_free(ptr noundef) local_unnamed_addr #1

declare void @DH_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @DSA_clear_flags(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = xor i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %i.d = and i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @DSA_test_flags(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = and i32 %i.b, %1
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @DSA_set_flags(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @DSA_set_method(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DSA_get_method(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @DSA_new_method(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @dsa_new_intern(ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dsa_new_intern(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 123) #7 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CRYPTO_THREAD_lock_new() #7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.c, ptr %i.d, align 8, !tbaa !27
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @__func__.dsa_new_intern) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 10, i32 noundef 524303, ptr noundef null) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 131) #7
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store atomic i32 1, ptr %i.f seq_cst, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %0, ptr %i.g, align 8, !tbaa !28
  %i.h = tail call ptr @DSA_get_default_method() #7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35
  %i.l = and i32 %i.k, -1025
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 %i.l, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.o = tail call i32 @ossl_crypto_new_ex_data_ex(ptr noundef %0, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.n) #7
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @ossl_ffc_params_init(ptr noundef nonnull %i.p) #7
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not24 = icmp eq ptr %i.s, null
  br i1 %.not24, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.a) #7
  %.not25 = icmp eq i32 %i.t, 0
  br i1 %.not25, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 155, ptr noundef nonnull @__func__.dsa_new_intern) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786693, ptr noundef null) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  tail call void @DSA_free(ptr noundef nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.h, %bb.c
  %.0 = phi ptr [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.a ], [ %i.a, %bb.f ], [ %i.a, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ossl_dsa_new(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @dsa_new_intern(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @DSA_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @dsa_new_intern(ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @DSA_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
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
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @CRYPTO_free_ex_data(i32 noundef 7, ptr noundef nonnull %0, ptr noundef nonnull %i.k) #7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.m) #7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_ffc_params_cleanup(ptr noundef nonnull %i.n) #7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  tail call void @BN_clear_free(ptr noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  tail call void @BN_clear_free(ptr noundef %i.r) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 211) #7
  br label %bb.g

bb.g:                                             ; preds = %CRYPTO_DOWN_REF.exit, %bb.a, %bb.f
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(ptr noundef) local_unnamed_addr #1

declare void @ossl_ffc_params_cleanup(ptr noundef) local_unnamed_addr #1

declare void @BN_clear_free(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @DSA_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ossl_dsa_get0_libctx(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_dsa_set0_libctx(ptr nofree noundef writeonly captures(none) initializes((176, 184)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind uwtable
define void @DSA_get0_pqg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_ffc_params_get0_pqg(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  ret void
}

declare void @ossl_ffc_params_get0_pqg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @DSA_set0_pqg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq ptr %2, null
  %or.cond3 = and i1 %i.h, %i.g
  br i1 %or.cond3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.l, %i.k
  br i1 %or.cond5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ossl_ffc_params_set0_pqg(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @ossl_ffc_params_set0_pqg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DSA_get0_p(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DSA_get0_q(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DSA_get0_g(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DSA_get0_pub_key(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @DSA_get0_priv_key(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @DSA_get0_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  store ptr %i.b, ptr %1, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  store ptr %i.d, ptr %2, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @DSA_set0_key(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @BN_free(ptr noundef %i.b) #7
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not10 = icmp eq ptr %2, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  tail call void @BN_free(ptr noundef %i.d) #7
  store ptr %2, ptr %i.c, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !32
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @DSA_security_bits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @BN_num_bits(ptr noundef nonnull %i.b) #7
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.g = tail call i32 @BN_num_bits(ptr noundef %i.f) #7
  %i.h = tail call i32 @BN_security_bits(i32 noundef %i.e, i32 noundef %i.g) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @BN_security_bits(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @DSA_bits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_num_bits(ptr noundef nonnull %i.b) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @ossl_dsa_get0_params(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ossl_dsa_ffc_params_fromdata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @ossl_ffc_params_fromdata(ptr noundef nonnull %i.a, ptr noundef %1) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.b
}

declare i32 @ossl_ffc_params_fromdata(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @DSA_get_default_method() local_unnamed_addr #1

declare i32 @ossl_crypto_new_ex_data_ex(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_ffc_params_init(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"p1 _ZTS9bignum_st", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"ffc_params_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !10, i64 72, !10, i64 80, !5, i64 88}
!13 = !{!"p1 _ZTS14bn_mont_ctx_st", !8, i64 0}
!14 = !{!"", !4, i64 0}
!15 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!16 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!17 = !{!"crypto_ex_data_st", !15, i64 0, !16, i64 8}
!18 = !{!"p1 _ZTS10dsa_method", !8, i64 0}
!19 = !{!"dsa_st", !5, i64 0, !5, i64 4, !12, i64 8, !9, i64 104, !9, i64 112, !5, i64 120, !13, i64 128, !14, i64 136, !17, i64 144, !18, i64 160, !8, i64 168, !15, i64 176, !11, i64 184}
!20 = !{!19, !9, i64 104}
!21 = !{!19, !9, i64 112}
!22 = !{!19, !5, i64 120}
!23 = !{!19, !18, i64 160}
!24 = !{!"dsa_method", !10, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !5, i64 64, !8, i64 72, !8, i64 80, !8, i64 88}
!25 = !{!24, !8, i64 56}
!26 = !{!24, !8, i64 48}
!27 = !{!19, !8, i64 168}
!28 = !{!19, !15, i64 176}
!29 = !{!19, !9, i64 8}
!30 = !{!19, !9, i64 16}
!31 = !{!19, !9, i64 24}
!32 = !{!19, !11, i64 184}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!14, !4, i64 0}
!35 = !{!24, !5, i64 64}
!36 = !{!9, !9, i64 0}
end_hunk_0
