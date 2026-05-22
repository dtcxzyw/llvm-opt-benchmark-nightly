inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x509_lookup_method_st = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cached_store_st = type { ptr, ptr, ptr }

@x509_store_lookup = internal global %struct.x509_lookup_method_st { ptr @.str, ptr null, ptr @by_store_free, ptr null, ptr null, ptr @by_store_ctrl, ptr @by_store_subject, ptr null, ptr null, ptr null, ptr null, ptr @by_store_ctrl_ex }, align 8
@.str = private unnamed_addr constant [27 x i8] c"Load certs from STORE URIs\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"../../deps/openssl/openssl/crypto/x509/by_store.c\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @X509_LOOKUP_store() local_unnamed_addr #0 {
bb.a:
  ret ptr @x509_store_lookup
}

; Function Attrs: nounwind uwtable
define internal void @by_store_free(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @X509_LOOKUP_get_method_data(ptr noundef %0) #4
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.a, ptr noundef nonnull @free_store) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @by_store_ctrl(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readnone captures(none) %4) #1 {
bb.a:
  %i.a = tail call i32 @by_store_ctrl_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 poison, ptr poison, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @by_store_subject(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = tail call ptr @OSSL_STORE_SEARCH_by_name(ptr noundef %2) #4 ; 3 uses
  %i.b = tail call ptr @X509_LOOKUP_get_method_data(ptr noundef %0) #4 ; 3 uses
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %.critedge.critedge

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw nsw i32 %.091.i, 1               ; 2 uses
  %i.f = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #4
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.critedge.critedge, !llvm.loop !9

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.091.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = tail call ptr @OPENSSL_sk_value(ptr noundef %i.b, i32 noundef %.091.i) #4
  %i.i = tail call fastcc i32 @cache_objects(ptr noundef %0, ptr noundef %i.h, ptr noundef %i.a, i32 noundef 1)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %4 = tail call ptr @X509_LOOKUP_get_store(ptr noundef %0) #4
  %5 = tail call ptr @X509_STORE_get0_objects(ptr noundef %4) #4
  tail call void @OSSL_STORE_SEARCH_free(ptr noundef %i.a) #4
  %i.j = tail call ptr @X509_LOOKUP_get_store(ptr noundef %0) #4 ; 2 uses
  %i.k = tail call i32 @ossl_x509_store_read_lock(ptr noundef %i.j) #4
  %.not34.not = icmp eq i32 %i.k, 0
  br i1 %.not34.not, label %.thread39, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @X509_OBJECT_retrieve_by_subject(ptr noundef %5, i32 noundef %1, ptr noundef %2) #4 ; 3 uses
  %i.m = tail call i32 @X509_STORE_unlock(ptr noundef %i.j) #4 ; 0 uses
  %.not35 = icmp eq ptr %i.l, null
  br i1 %.not35, label %.thread39, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %1, label %.thread39 [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.p = tail call i32 @X509_OBJECT_set1_X509(ptr noundef %3, ptr noundef %i.o) #4 ; 2 uses
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %.thread39, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !11
  tail call void @X509_free(ptr noundef %i.q) #4
  br label %.thread39

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = tail call i32 @X509_OBJECT_set1_X509_CRL(ptr noundef %3, ptr noundef %i.s) #4 ; 2 uses
  %.not36 = icmp eq i32 %i.t, 0
  br i1 %.not36, label %.thread39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !11
  tail call void @X509_CRL_free(ptr noundef %i.u) #4
  br label %.thread39

.critedge.critedge:                               ; preds = %bb.b, %bb.a
  %6 = tail call ptr @X509_LOOKUP_get_store(ptr noundef %0) #4
  %7 = tail call ptr @X509_STORE_get0_objects(ptr noundef %6) #4 ; 0 uses
  tail call void @OSSL_STORE_SEARCH_free(ptr noundef %i.a) #4
  br label %.thread39

.thread39:                                        ; preds = %.critedge.critedge, %bb.c, %bb.d, %bb.h, %bb.i, %bb.f, %bb.g, %bb.e
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.e ], [ %i.p, %bb.g ], [ 0, %bb.f ], [ %i.t, %bb.i ], [ 0, %bb.h ], [ 0, %.critedge.critedge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @by_store_ctrl_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 %3, ptr readnone captures(none) %4, ptr noundef %5, ptr noundef %6) #1 {
bb.a:
  %7 = alloca %struct.cached_store_st, align 8    ; 6 uses
  switch i32 %1, label %bb.m [
    i32 3, label %bb.b
    i32 4, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call ptr @X509_LOOKUP_get_method_data(ptr noundef %0) #4 ; 2 uses
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str.1, i32 noundef 132) #4 ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 139) #4
  store ptr %i.d, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !17
  %.not41 = icmp eq ptr %6, null
  br i1 %.not41, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @OSSL_STORE_open_ex(ptr noundef nonnull %2, ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %free_store.exit, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.h = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, i32 noundef 142) #4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !18
  %i.j = tail call ptr @OSSL_STORE_open_ex(ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #4 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %free_store.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %free_store.exit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = phi ptr [ %i.j, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %free_store.exit, label %bb.h

free_store.exit:                                  ; preds = %.thread, %bb.g, %bb.f, %bb.e
  %i.q = phi ptr [ null, %.thread ], [ %i.n, %bb.g ], [ %i.j, %bb.f ], [ null, %bb.e ]
  %i.r = tail call i32 @OSSL_STORE_close(ptr noundef %i.q) #4 ; 0 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !12
  tail call void @CRYPTO_free(ptr noundef %i.s, ptr noundef nonnull @.str.1, i32 noundef 112) #4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef %i.u, ptr noundef nonnull @.str.1, i32 noundef 113) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1, i32 noundef 114) #4
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @OSSL_STORE_close(ptr noundef nonnull %i.n) #4 ; 0 uses
  %i.w = icmp eq ptr %i.a, null
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @OPENSSL_sk_new_null() #4  ; 3 uses
  %.not42 = icmp eq ptr %i.x, null
  br i1 %.not42, label %free_store.exit44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 @X509_LOOKUP_set_method_data(ptr noundef %0, ptr noundef nonnull %i.x) #4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.033.ph = phi ptr [ %i.a, %bb.h ], [ %i.x, %bb.j ]
  %i.z = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %.033.ph, ptr noundef nonnull %i.b) #4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %free_store.exit44, label %bb.m

free_store.exit44:                                ; preds = %bb.i, %bb.k
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !12
  tail call void @CRYPTO_free(ptr noundef %i.ab, ptr noundef nonnull @.str.1, i32 noundef 112) #4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef %i.ad, ptr noundef nonnull @.str.1, i32 noundef 113) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1, i32 noundef 114) #4
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  store ptr %2, ptr %7, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.af, align 8, !tbaa !18
  %i.ag = call fastcc i32 @cache_objects(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %free_store.exit, %free_store.exit44, %bb.c, %bb.k, %bb.l
  %.1 = phi i32 [ 1, %bb.b ], [ %i.ag, %bb.l ], [ 1, %bb.k ], [ 0, %bb.c ], [ 0, %free_store.exit ], [ 0, %free_store.exit44 ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @X509_LOOKUP_get_method_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @free_store(ptr noundef %0) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str.1, i32 noundef 112) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.1, i32 noundef 113) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 114) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_SEARCH_by_name(ptr noundef) local_unnamed_addr #3

declare ptr @X509_STORE_get0_objects(ptr noundef) local_unnamed_addr #3

declare ptr @X509_LOOKUP_get_store(ptr noundef) local_unnamed_addr #3

declare void @OSSL_STORE_SEARCH_free(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_x509_store_read_lock(ptr noundef) local_unnamed_addr #3

declare ptr @X509_OBJECT_retrieve_by_subject(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509_STORE_unlock(ptr noundef) local_unnamed_addr #3

declare i32 @X509_OBJECT_set1_X509(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @X509_free(ptr noundef) local_unnamed_addr #3

declare i32 @X509_OBJECT_set1_X509_CRL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @X509_CRL_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cache_objects(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.cached_store_st, align 8    ; 5 uses
  %i.a = tail call ptr @X509_LOOKUP_get_store(ptr noundef %0) #4 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call ptr @OSSL_STORE_open_ex(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #4 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @OSSL_STORE_find(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call ptr @OSSL_STORE_load(ptr noundef nonnull %i.g) #4 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.not35 = icmp eq i32 %3, 0
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not35, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %i.m = phi ptr [ %i.o, %bb.e ], [ %i.j, %.lr.ph ] ; 5 uses
  %i.n = tail call i32 @OSSL_STORE_INFO_get_type(ptr noundef nonnull %i.m) #4
  switch i32 %i.n, label %.thread [
    i32 6, label %bb.f
end_hunk_0
