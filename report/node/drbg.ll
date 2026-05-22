inline.NumInlined: 25
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, i32 }
%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }

@.str = private unnamed_addr constant [66 x i8] c"../../deps/openssl/openssl/providers/implementations/rands/drbg.c\00", align 1
@__func__.ossl_drbg_get_seed = private unnamed_addr constant [19 x i8] c"ossl_drbg_get_seed\00", align 1
@__func__.ossl_prov_drbg_instantiate = private unnamed_addr constant [27 x i8] c"ossl_prov_drbg_instantiate\00", align 1
@ossl_pers_string = internal constant [29 x i8] c"OpenSSL NIST SP 800-90A DRBG\00", align 16
@__func__.ossl_prov_drbg_generate = private unnamed_addr constant [24 x i8] c"ossl_prov_drbg_generate\00", align 1
@__func__.ossl_drbg_enable_locking = private unnamed_addr constant [25 x i8] c"ossl_drbg_enable_locking\00", align 1
@__func__.ossl_rand_drbg_new = private unnamed_addr constant [19 x i8] c"ossl_rand_drbg_new\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"min_entropylen\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"max_entropylen\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"min_noncelen\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"max_noncelen\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"max_perslen\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"max_adinlen\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"reseed_requests\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"reseed_time\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"reseed_time_interval\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"max_request\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"reseed_counter\00", align 1
@__func__.ossl_drbg_verify_digest = private unnamed_addr constant [24 x i8] c"ossl_drbg_verify_digest\00", align 1
@__func__.get_entropy = private unnamed_addr constant [12 x i8] c"get_entropy\00", align 1
@__func__.ossl_drbg_lock_parent = private unnamed_addr constant [22 x i8] c"ossl_drbg_lock_parent\00", align 1
@__func__.ossl_prov_drbg_reseed_unlocked = private unnamed_addr constant [31 x i8] c"ossl_prov_drbg_reseed_unlocked\00", align 1
@__func__.get_parent_reseed_count = private unnamed_addr constant [24 x i8] c"get_parent_reseed_count\00", align 1
@__func__.get_parent_strength = private unnamed_addr constant [20 x i8] c"get_parent_strength\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ossl_drbg_lock(ptr noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ossl_drbg_unlock(ptr noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ossl_drbg_get_seed(ptr noundef %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef readnone captures(none) %6, i64 noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %0, ptr %i.a, align 8, !tbaa !9
  %i.b = add i32 %2, 7
  %i.c = lshr i32 %i.b, 3
  %.inv = icmp slt i32 %2, -7
  %narrow = select i1 %.inv, i32 0, i32 %i.c
  %i.d = zext nneg i32 %narrow to i64
  %.019 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.d)
  %.1 = tail call i64 @llvm.umin.i64(i64 %.019, i64 %4) ; 4 uses
  %i.e = tail call noalias ptr @CRYPTO_secure_malloc(i64 noundef %.1, ptr noundef nonnull @.str, i32 noundef 161) #8 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12
  %i.i = call i32 @ossl_prov_drbg_generate(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %.1, i32 noundef %i.h, i32 noundef %5, ptr noundef nonnull %i.a, i64 noundef 8)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @CRYPTO_secure_clear_free(ptr noundef nonnull %i.e, i64 noundef %.1, ptr noundef nonnull @.str, i32 noundef 177) #8
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @__func__.ossl_drbg_get_seed) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 191, ptr noundef null) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %.1, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noalias ptr @CRYPTO_secure_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_prov_drbg_generate(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not59 = icmp eq ptr %i.b, null
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef nonnull %i.b) #8
  %.not60 = icmp eq i32 %i.c, 0
  br i1 %.not60, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  switch i32 %i.e, label %bb.f [
    i32 1, label %bb.j
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #8, !inline_history !22 ; 0 uses
  %.pr.i = load i32, ptr %i.d, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.i = phi i32 [ %.pr.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %rand_drbg_restart.exit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i32, ptr %i.k, align 8, !tbaa !12
  %i.m = tail call i32 @ossl_prov_drbg_instantiate(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef 0, ptr noundef null, i64 noundef 0) ; 0 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !20
  br label %rand_drbg_restart.exit

rand_drbg_restart.exit:                           ; preds = %bb.f, %bb.g
  %i.n = phi i32 [ %i.i, %bb.f ], [ %.pre, %bb.g ]
  switch i32 %i.n, label %bb.j [
    i32 2, label %bb.h
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %rand_drbg_restart.exit
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 640, ptr noundef nonnull @__func__.ossl_prov_drbg_generate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 192, ptr noundef null) #8
  br label %bb.af

bb.i:                                             ; preds = %rand_drbg_restart.exit
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 644, ptr noundef nonnull @__func__.ossl_prov_drbg_generate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 193, ptr noundef null) #8
  br label %bb.af

bb.j:                                             ; preds = %bb.d, %rand_drbg_restart.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load i32, ptr %i.o, align 8, !tbaa !12
  %i.q = icmp ugt i32 %3, %i.p
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 649, ptr noundef nonnull @__func__.ossl_prov_drbg_generate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 181, ptr noundef null) #8
  br label %bb.af

bb.l:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = icmp ugt i64 %2, %i.s
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 654, ptr noundef nonnull @__func__.ossl_prov_drbg_generate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 196, ptr noundef null) #8
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = icmp ugt i64 %6, %i.v
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 658, ptr noundef nonnull @__func__.ossl_prov_drbg_generate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 184, ptr noundef null) #8
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %i.x = tail call i32 @openssl_get_fork_id() #8  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !25
  %.not62 = icmp eq i32 %i.z, %i.x
  br i1 %.not62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.x, ptr %i.y, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.047 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26 ; 2 uses
  %.not63 = icmp eq i32 %i.ab, 0
  br i1 %.not63, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !27
  %.not64 = icmp ult i32 %i.ad, %i.ab
  %spec.select = select i1 %.not64, i32 %.047, i32 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1 = phi i32 [ %.047, %bb.r ], [ %spec.select, %bb.s ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ah = tail call i64 @time(ptr noundef null) #8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !29 ; 2 uses
  %i.ak = icmp slt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = sub nsw i64 %i.ah, %i.aj
  %i.am = load i64, ptr %i.ae, align 8, !tbaa !28
  %.not65 = icmp slt i64 %i.al, %i.am
  br i1 %.not65, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %.3 = phi i32 [ %.1, %bb.t ], [ 1, %bb.w ], [ %.1, %bb.v ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  %.not66 = icmp eq ptr %i.ao, null
  br i1 %.not66, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ap = tail call fastcc i32 @get_parent_reseed_count(ptr noundef nonnull %0)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !31
  %.not67 = icmp eq i32 %i.ap, %i.ar
  %spec.select71 = select i1 %.not67, i32 %.3, i32 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
end_hunk_0
