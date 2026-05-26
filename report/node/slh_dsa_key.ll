inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"../../deps/openssl/openssl/crypto/slh_dsa/slh_dsa_key.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@__func__.ossl_slh_dsa_key_to_text = private unnamed_addr constant [25 x i8] c"ossl_slh_dsa_key_to_text\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"no %s key material available\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s Private-Key:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"priv:\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s Public-Key:\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pub:\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"SHAKE-256\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"SHA2-512\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_slh_dsa_key_get0_libctx(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_slh_dsa_key_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @ossl_slh_dsa_params_get(ptr noundef %2) #7 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 208, ptr noundef nonnull @.str, i32 noundef 107) #7 ; 20 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %0, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr %i.a, ptr %i.e, align 8, !tbaa !19
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 112) #7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %i.f, ptr %i.g, align 8, !tbaa !20
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %slh_dsa_key_hash_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.d ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.k, 0                   ; 3 uses
  %i.n = select i1 %.not.i, ptr @.str.9, ptr @.str.8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.p = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef %i.i) #7 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !25
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %slh_dsa_key_hash_init.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %bb.g, label %slh_dsa_key_hash_init.exit

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %i.m, 1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr %i.p, ptr %i.t, align 8, !tbaa !26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.i) #7 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr %i.u, ptr %i.v, align 8, !tbaa !26
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = phi ptr [ %i.u, %bb.i ], [ %i.p, %bb.h ]
  %i.y = tail call ptr @EVP_MAC_fetch(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %i.i) #7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.y, ptr %i.z, align 8, !tbaa !27
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %bb.k, label %slh_dsa_key_hash_init.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = phi ptr [ %i.x, %bb.j ], [ null, %bb.i ] ; 2 uses
  tail call void @CRYPTO_free(ptr noundef %i.i, ptr noundef nonnull @.str, i32 noundef 25) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.not.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i, label %slh_dsa_key_hash_cleanup.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @EVP_MD_free(ptr noundef %i.ab) #7
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !25
  br label %slh_dsa_key_hash_cleanup.exit.i

slh_dsa_key_hash_cleanup.exit.i:                  ; preds = %bb.l, %bb.k
  %i.ad = phi ptr [ %.pre.i.i, %bb.l ], [ %i.p, %bb.k ]
  store ptr null, ptr %i.ac, align 8, !tbaa !26
  tail call void @EVP_MD_free(ptr noundef %i.ad) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  tail call void @EVP_MAC_free(ptr noundef %i.af) #7
  store ptr null, ptr %i.q, align 8, !tbaa !25
  %.pre26 = load ptr, ptr %i.o, align 8, !tbaa !20
  br label %slh_dsa_key_hash_init.exit.thread

slh_dsa_key_hash_init.exit:                       ; preds = %bb.f, %bb.j
  %i.ag = zext i1 %.not.i to i32
  %i.ah = tail call ptr @ossl_slh_get_adrs_fn(i32 noundef %i.ag) #7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !28
  %i.aj = tail call ptr @ossl_slh_get_hash_fn(i32 noundef %i.k) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !29
  br label %bb.n

slh_dsa_key_hash_init.exit.thread:                ; preds = %bb.e, %slh_dsa_key_hash_cleanup.exit.i, %bb.d
  %i.al = phi ptr [ %i.i, %bb.e ], [ %.pre26, %slh_dsa_key_hash_cleanup.exit.i ], [ null, %bb.d ]
  tail call void @CRYPTO_free(ptr noundef %i.al, ptr noundef nonnull @.str, i32 noundef 25) #7
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i20, label %ossl_slh_dsa_key_free.exit, label %bb.m

bb.m:                                             ; preds = %slh_dsa_key_hash_init.exit.thread
  tail call void @EVP_MD_free(ptr noundef %i.an) #7
  br label %ossl_slh_dsa_key_free.exit

ossl_slh_dsa_key_free.exit:                       ; preds = %slh_dsa_key_hash_init.exit.thread, %bb.m
  store ptr null, ptr %i.am, align 8, !tbaa !26
  tail call void @EVP_MD_free(ptr noundef %i.ap) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27
  tail call void @EVP_MAC_free(ptr noundef %i.ar) #7
  store ptr null, ptr %i.ao, align 8, !tbaa !25
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 135) #7
  br label %bb.n

bb.n:                                             ; preds = %slh_dsa_key_hash_init.exit, %bb.b, %bb.a, %ossl_slh_dsa_key_free.exit
  %.0 = phi ptr [ null, %bb.a ], [ null, %ossl_slh_dsa_key_free.exit ], [ %i.c, %slh_dsa_key_hash_init.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ossl_slh_dsa_params_get(ptr noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ossl_slh_dsa_key_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef 25) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %slh_dsa_key_hash_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @EVP_MD_free(ptr noundef %i.e) #7
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !25
  br label %slh_dsa_key_hash_cleanup.exit

slh_dsa_key_hash_cleanup.exit:                    ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.c ], [ %i.g, %bb.b ]
  store ptr null, ptr %i.d, align 8, !tbaa !26
  tail call void @EVP_MD_free(ptr noundef %i.h) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  tail call void @EVP_MAC_free(ptr noundef %i.j) #7
  store ptr null, ptr %i.f, align 8, !tbaa !25
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 64) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 135) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %slh_dsa_key_hash_cleanup.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_slh_dsa_key_dup(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 208, ptr noundef nonnull @.str, i32 noundef 153) #7 ; 15 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %0, i64 208, i1 false), !tbaa.struct !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not10.i = icmp eq ptr %i.g, %i.i
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @EVP_MD_up_ref(ptr noundef nonnull %i.g) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not11.i = icmp eq ptr %i.l, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @EVP_MD_up_ref(ptr noundef nonnull %i.l) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %.not12.i = icmp eq ptr %i.o, null
  br i1 %.not12.i, label %slh_dsa_key_hash_dup.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @EVP_MAC_up_ref(ptr noundef nonnull %i.o) #7 ; 0 uses
  br label %slh_dsa_key_hash_dup.exit

slh_dsa_key_hash_dup.exit:                        ; preds = %bb.h, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not26 = icmp eq ptr %i.r, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %slh_dsa_key_hash_dup.exit
  %i.s = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %i.r, ptr noundef nonnull @.str, i32 noundef 161) #7 ; 2 uses
  store ptr %i.s, ptr %i.c, align 8, !tbaa !20
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j, %slh_dsa_key_hash_dup.exit
  %i.u = and i32 %1, 3
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !41
  %i.ab = shl i32 %i.aa, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = and i32 %1, 1
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !40
  store i32 %i.ag, ptr %i.e, align 8, !tbaa !40
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  tail call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 25) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %ossl_slh_dsa_key_free.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @EVP_MD_free(ptr noundef %i.ai) #7
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !25
  br label %ossl_slh_dsa_key_free.exit

ossl_slh_dsa_key_free.exit:                       ; preds = %bb.p, %bb.q
  %i.al = phi ptr [ %.pre.i.i, %bb.q ], [ %i.ak, %bb.p ]
  store ptr null, ptr %i.ah, align 8, !tbaa !26
  tail call void @EVP_MD_free(ptr noundef %i.al) #7
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  tail call void @EVP_MAC_free(ptr noundef %i.an) #7
  store ptr null, ptr %i.aj, align 8, !tbaa !25
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 135) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.n, %bb.o, %bb.k, %bb.a, %ossl_slh_dsa_key_free.exit
  %.0 = phi ptr [ null, %bb.a ], [ null, %ossl_slh_dsa_key_free.exit ], [ %i.b, %bb.k ], [ %i.b, %bb.o ], [ %i.b, %bb.n ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_key_equal(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 3
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %2, 2
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %.not24 = icmp eq ptr %i.j, null
  br i1 %.not24, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42
  %i.m = zext i32 %i.l to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull %i.j, i64 %i.m)
  %.not25 = icmp eq i32 %bcmp, 0
  br i1 %.not25, label %bb.j, label %bb.k

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.c
  %i.n = and i32 %2, 1
  %.not27 = icmp eq i32 %i.n, 0
  br i1 %.not27, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !42
  %i.u = zext i32 %i.t to i64
  %bcmp30 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull %1, i64 %i.u)
  %.not31 = icmp eq i32 %bcmp30, 0
  br i1 %.not31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.g, %bb.h, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 1, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.i ]
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.i, %bb.f, %bb.a, %bb.j
  %.017 = phi i32 [ 0, %bb.i ], [ 0, %bb.a ], [ %.1, %bb.j ], [ 0, %bb.f ], [ 1, %bb.b ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_key_has(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 1
  %.not4 = icmp eq i32 %i.e, 0
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_key_pairwise_check(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @ossl_slh_dsa_hash_ctx_new(ptr noundef nonnull %0) #7 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !43   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  call void %i.t(ptr noundef nonnull %i.a) #7, !inline_history !50
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !52
  %i.x = add i32 %i.w, -1
  call void %i.u(ptr noundef nonnull %i.a, i32 noundef %i.x) #7, !inline_history !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !41
  %i.ad = shl i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = call i32 @ossl_slh_xmss_node(ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef %i.z, ptr noundef %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.r) #7
  %.not21.i = icmp eq i32 %i.ag, 0
  br i1 %.not21.i, label %slh_dsa_compute_pk_root.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !41
  %i.al = mul i32 %i.ak, 3
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.an, i64 %i.r)
  %i.ao = icmp eq i32 %bcmp.i, 0
  %i.ap = zext i1 %i.ao to i32
  br label %slh_dsa_compute_pk_root.exit

slh_dsa_compute_pk_root.exit:                     ; preds = %bb.d, %bb.e
  %.in.i = phi i32 [ 0, %bb.d ], [ %i.ap, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @ossl_slh_dsa_hash_ctx_free(ptr noundef nonnull %i.i) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.b, %slh_dsa_compute_pk_root.exit
  %.0 = phi i32 [ %.in.i, %slh_dsa_compute_pk_root.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @ossl_slh_dsa_hash_ctx_new(ptr noundef) local_unnamed_addr #3

declare void @ossl_slh_dsa_hash_ctx_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ossl_slh_dsa_key_reset(ptr noundef initializes((128, 136)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !40
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 128) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_key_fromdata(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %ossl_slh_dsa_key_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  %i.h = shl i32 %i.g, 2
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = lshr exact i64 %i.i, 1                   ; 3 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.1) #7 ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.b, align 8, !tbaa !55
  %i.l = call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef %i.i, ptr noundef nonnull %i.a) #7
  %.not30 = icmp eq i32 %i.l, 0
  br i1 %.not30, label %ossl_slh_dsa_key_reset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.i
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.o, align 8, !tbaa !40
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41
  %i.s = shl i32 %i.r, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.u, ptr %i.v, align 8, !tbaa !39
  br label %ossl_slh_dsa_key_reset.exit

bb.g:                                             ; preds = %bb.e
  %.not31 = icmp eq i64 %i.m, %i.j
  br i1 %.not31, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.w, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.b
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  %i.aa = shl i32 %i.z, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !55
  %i.ad = call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.2) #7 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.b, i64 noundef %i.j, ptr noundef nonnull %i.a) #7
  %.not32 = icmp ne i32 %i.af, 0
  %i.ag = load i64, ptr %i.a, align 8
  %.not33 = icmp eq i64 %i.ag, %i.j
  %or.cond = select i1 %.not32, i1 %.not33, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !39
  br label %ossl_slh_dsa_key_reset.exit

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.aj, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %ossl_slh_dsa_key_reset.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !40
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 128) #7
  br label %ossl_slh_dsa_key_reset.exit

ossl_slh_dsa_key_reset.exit:                      ; preds = %bb.m, %bb.l, %bb.d, %bb.a, %bb.k, %bb.f
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.d ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 4294967293) i64 @ossl_slh_dsa_key_get_priv_len(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %i.e = shl i32 %i.d, 2
  %i.f = zext i32 %i.e to i64
  ret i64 %i.f
}

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_generate_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = shl nuw nsw i64 %i.f, 1                  ; 2 uses
  %i.h = shl i32 %i.e, 1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.k = icmp ne ptr %3, null
  %i.l = icmp ne i64 %4, 0
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = mul nuw nsw i64 %i.f, 3
  %.not = icmp eq i64 %4, %i.m
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = tail call i32 @RAND_priv_bytes_ex(ptr noundef %2, ptr noundef nonnull %1, i64 noundef %i.g, i32 noundef 0) #7
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @RAND_bytes_ex(ptr noundef %2, ptr noundef nonnull %i.j, i64 noundef %i.f, i32 noundef 0) #7
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 160 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  call void %i.aa(ptr noundef nonnull %i.a) #7, !inline_history !50
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ae = add i32 %i.ad, -1
  call void %i.ab(ptr noundef nonnull %i.a, i32 noundef %i.ae) #7, !inline_history !50
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !41
  %i.ai = mul i32 %i.ah, 3
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !41
  %i.aq = shl i32 %i.ap, 1
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.at = call i32 @ossl_slh_xmss_node(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef 0, i32 noundef %i.am, ptr noundef %i.as, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ak, i64 noundef %i.y) #7
  %.not21.i = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %.not21.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.j, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 1, ptr %i.av, align 8, !tbaa !40
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr null, ptr %i.aw, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 0, ptr %i.ax, align 8, !tbaa !40
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef %i.g) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.g ]
  ret i32 %.0
}

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_key_type_matches(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.c, ptr noundef %1) #7
  %i.e = icmp eq i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_slh_dsa_key_get_pub(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 4294967295) i64 @ossl_slh_dsa_key_get_pub_len(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %i.e = shl i32 %i.d, 1
  %i.f = zext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_slh_dsa_key_get_priv(ptr noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr null, ptr %0
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 4294967296) i64 @ossl_slh_dsa_key_get_n(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %i.e = zext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 4294967296) i64 @ossl_slh_dsa_key_get_sig_len(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = zext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ossl_slh_dsa_key_get_name(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ossl_slh_dsa_key_get_type(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_set_priv(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %i.e = shl i32 %i.d, 2
  %i.f = zext i32 %i.e to i64
  %.not = icmp eq i64 %2, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr align 1 %1, i64 %2, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.g, align 8, !tbaa !40
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.m, ptr %i.n, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_set_pub(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %i.e = shl i32 %i.d, 1
  %i.f = zext i32 %i.e to i64
  %.not = icmp eq i64 %2, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.g, ptr %i.h, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.i, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_dsa_key_to_text(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 486, ptr noundef nonnull @__func__.ossl_slh_dsa_key_to_text) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786690, ptr noundef null) #7
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 492, ptr noundef nonnull @__func__.ossl_slh_dsa_key_to_text) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %i.e) #7
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %2, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 499, ptr noundef nonnull @__func__.ossl_slh_dsa_key_to_text) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %i.e) #7
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.e) #7
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.j, align 8, !tbaa !40
  %.not.i25 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not.i25, ptr null, ptr %1
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41
  %i.s = shl i32 %i.r, 2
  %i.t = zext i32 %i.s to i64
  %i.u = tail call i32 @ossl_bio_print_labeled_buf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %i.o, i64 noundef %i.t) #7
  %.not23 = icmp eq i32 %i.u, 0
  br i1 %.not23, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.v = and i32 %2, 2
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %i.e) #7
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !41
  %i.ac = shl i32 %i.ab, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i32 @ossl_bio_print_labeled_buf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %i.y, i64 noundef %i.ad) #7
  %.not24 = icmp ne i32 %i.ae, 0
  %. = zext i1 %.not24 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ %., %bb.l ], [ 0, %bb.h ]
  ret i32 %.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ossl_bio_print_labeled_buf(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_MAC_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ossl_slh_get_adrs_fn(i32 noundef) local_unnamed_addr #3

declare ptr @ossl_slh_get_hash_fn(i32 noundef) local_unnamed_addr #3

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #3

declare void @EVP_MAC_free(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_MD_up_ref(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_MAC_up_ref(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_slh_xmss_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

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
!9 = !{!10, !13, i64 136}
!10 = !{!"slh_dsa_key_st", !7, i64 0, !11, i64 128, !13, i64 136, !11, i64 144, !6, i64 152, !14, i64 160, !15, i64 168, !16, i64 176, !17, i64 184, !17, i64 192, !18, i64 200}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!14 = !{!"p1 _ZTS17slh_dsa_params_st", !12, i64 0}
!15 = !{!"p1 _ZTS16slh_adrs_func_st", !12, i64 0}
!16 = !{!"p1 _ZTS16slh_hash_func_st", !12, i64 0}
!17 = !{!"p1 _ZTS9evp_md_st", !12, i64 0}
!18 = !{!"p1 _ZTS10evp_mac_st", !12, i64 0}
!19 = !{!10, !14, i64 160}
!20 = !{!10, !11, i64 144}
!21 = !{!22, !6, i64 12}
!22 = !{!"slh_dsa_params_st", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !23, i64 56}
!23 = !{!"long", !7, i64 0}
!24 = !{!22, !6, i64 44}
!25 = !{!10, !17, i64 184}
!26 = !{!10, !17, i64 192}
!27 = !{!10, !18, i64 200}
!28 = !{!10, !15, i64 168}
!29 = !{!10, !16, i64 176}
!30 = !{i64 0, i64 128, !31, i64 128, i64 8, !32, i64 136, i64 8, !33, i64 144, i64 8, !32, i64 152, i64 4, !5, i64 160, i64 8, !34, i64 168, i64 8, !35, i64 176, i64 8, !36, i64 184, i64 8, !37, i64 192, i64 8, !37, i64 200, i64 8, !38}
!31 = !{!7, !7, i64 0}
!32 = !{!11, !11, i64 0}
!33 = !{!13, !13, i64 0}
!34 = !{!14, !14, i64 0}
!35 = !{!15, !15, i64 0}
!36 = !{!16, !16, i64 0}
!37 = !{!17, !17, i64 0}
!38 = !{!18, !18, i64 0}
!39 = !{!10, !11, i64 128}
!40 = !{!10, !6, i64 152}
!41 = !{!22, !6, i64 16}
!42 = !{!22, !6, i64 48}
!43 = !{!44, !45, i64 0}
!44 = !{!"slh_dsa_hash_ctx_st", !45, i64 0, !46, i64 8, !46, i64 16, !47, i64 24, !6, i64 32}
!45 = !{!"p1 _ZTS14slh_dsa_key_st", !12, i64 0}
!46 = !{!"p1 _ZTS13evp_md_ctx_st", !12, i64 0}
!47 = !{!"p1 _ZTS14evp_mac_ctx_st", !12, i64 0}
!48 = !{!49, !12, i64 72}
!49 = !{!"slh_adrs_func_st", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80}
!50 = distinct !{null}
!51 = !{!49, !12, i64 0}
!52 = !{!22, !6, i64 24}
!53 = !{!22, !6, i64 28}
!54 = !{!23, !23, i64 0}
!55 = !{!12, !12, i64 0}
!56 = !{!22, !11, i64 0}
!57 = !{!22, !6, i64 52}
!58 = !{!22, !6, i64 8}
end_hunk_0
