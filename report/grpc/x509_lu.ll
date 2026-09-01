Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/x509_lu?download=true
inline.NumInlined: 60
inline.NumDeleted: 29
begin_hunk_0_@X509_STORE_CTX_get_by_subject:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit.thread, label %_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit

_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit: ; preds = %bb.f
  %i.aa = call noundef i32 %i.y(ptr noundef nonnull %i.u, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %9) #7, !inline_history !72
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit.thread, label %._crit_edge.thread

_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit.thread: ; preds = %.lr.ph, %bb.f, %_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit
  %i.ac = add nuw i64 %.02433, 1                  ; 2 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.ae = call i64 @OPENSSL_sk_num(ptr noundef %i.ad) #7
  %i.af = icmp ult i64 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit.thread, %.preheader
  %i.ag = icmp eq ptr %.0.i, null
  br i1 %i.ag, label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit, %._crit_edge, %_ZL31X509_OBJECT_retrieve_by_subjectP20stack_st_X509_OBJECTiP12X509_name_st.exit
  %.3 = phi ptr [ %.0.i, %._crit_edge ], [ %.0.i, %_ZL31X509_OBJECT_retrieve_by_subjectP20stack_st_X509_OBJECTiP12X509_name_st.exit ], [ %9, %_ZL22X509_LOOKUP_by_subjectP14x509_lookup_stiP12X509_name_stP14x509_object_st.exit ] ; 2 uses
  %i.ah = load i32, ptr %.3, align 8, !tbaa !29   ; 2 uses
  store i32 %i.ah, ptr %3, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !31
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  switch i32 %i.ah, label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %._crit_edge.thread
  %i.am = call i32 @X509_up_ref(ptr noundef %i.al) #7 ; 0 uses
  br label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit

bb.h:                                             ; preds = %._crit_edge.thread
  %i.an = call i32 @X509_CRL_up_ref(ptr noundef %i.al) #7 ; 0 uses
  br label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit

_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit: ; preds = %bb.h, %bb.g, %._crit_edge.thread, %._crit_edge
  %.026 = phi i32 [ 0, %._crit_edge ], [ 1, %._crit_edge.thread ], [ 1, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i32 %.026
}

declare void @CRYPTO_MUTEX_lock_write(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_MUTEX_unlock_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @X509_STORE_add_cert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL14x509_store_addP13x509_store_stPvi(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14x509_store_addP13x509_store_stPvi(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_zalloc(i64 noundef 16) #7 ; 15 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.c, align 8, !tbaa !29
  store ptr %1, ptr %i.e, align 8, !tbaa !31
  %i.f = tail call i32 @X509_up_ref(ptr noundef nonnull %1) #7 ; 0 uses
  br label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.c, align 8, !tbaa !29
  store ptr %1, ptr %i.e, align 8, !tbaa !31
  %i.g = tail call i32 @X509_CRL_up_ref(ptr noundef nonnull %1) #7 ; 0 uses
  br label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit

_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit: ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @CRYPTO_MUTEX_lock_write(ptr noundef nonnull %i.h) #7
  %i.i = load ptr, ptr %0, align 8, !tbaa !24     ; 6 uses
  tail call void @OPENSSL_sk_sort(ptr noundef %i.i, ptr noundef nonnull @sk_X509_OBJECT_call_cmp_func) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = call i32 @OPENSSL_sk_find(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull @sk_X509_OBJECT_call_cmp_func) #7
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit
  %i.k = load i32, ptr %i.c, align 8, !tbaa !29
  %.off.i = add i32 %i.k, -1
  %switch.i = icmp ult i32 %.off.i, 2
  %i.l = load i64, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  br i1 %switch.i, label %bb.g, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit

bb.g:                                             ; preds = %bb.f
  %i.m = call i64 @OPENSSL_sk_num(ptr noundef %i.i) #7
  %.not3543.i = icmp ult i64 %i.l, %i.m
  br i1 %.not3543.i, label %.lr.ph.i, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %.lr.ph.i
  %.044.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.ai, %bb.n ] ; 2 uses
  %i.o = call ptr @OPENSSL_sk_value(ptr noundef %i.i, i64 noundef %.044.i) #7 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !29
  %.not.i.i = icmp eq i32 %i.p, %i.q
  br i1 %.not.i.i, label %bb.i, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread

bb.i:                                             ; preds = %bb.h
  switch i32 %i.p, label %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.thread.i [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.u = call i32 @X509_subject_name_cmp(ptr noundef %i.s, ptr noundef %i.t) #7
  br label %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.y = call i32 @X509_CRL_cmp(ptr noundef %i.w, ptr noundef %i.x) #7
  br label %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.i

_ZL15x509_object_cmpPK14x509_object_stS1_.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.y, %bb.k ], [ %i.u, %bb.j ]
  %.not32.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not32.i, label %thread-pre-split.i, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread

thread-pre-split.i:                               ; preds = %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.i
  %.pr.i = load i32, ptr %i.c, align 8, !tbaa !29
  br label %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.thread.i

_ZL15x509_object_cmpPK14x509_object_stS1_.exit.thread.i: ; preds = %thread-pre-split.i, %bb.i
  %i.z = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.p, %bb.i ]
  switch i32 %i.z, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread28 [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.thread.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ad = call i32 @X509_cmp(ptr noundef %i.ab, ptr noundef %i.ac) #7
  %.not34.i = icmp eq i32 %i.ad, 0
  br i1 %.not34.i, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread28, label %bb.n

bb.m:                                             ; preds = %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ah = call i32 @X509_CRL_match(ptr noundef %i.af, ptr noundef %i.ag) #7
  %.not33.i = icmp eq i32 %i.ah, 0
  br i1 %.not33.i, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread28, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = add nuw i64 %.044.i, 1                  ; 2 uses
  %i.aj = call i64 @OPENSSL_sk_num(ptr noundef %i.i) #7
  %.not35.i = icmp ult i64 %i.ai, %i.aj
  br i1 %.not35.i, label %bb.h, label %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread, !llvm.loop !75

_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread: ; preds = %bb.h, %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.i, %bb.n, %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.o

_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread28: ; preds = %_ZL15x509_object_cmpPK14x509_object_stS1_.exit.thread.i, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread31

_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit: ; preds = %bb.f
  %i.ak = call ptr @OPENSSL_sk_value(ptr noundef %i.i, i64 noundef %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not23 = icmp eq ptr %i.ak, null
  br i1 %.not23, label %bb.o, label %.thread31

.thread31:                                        ; preds = %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit, %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread28
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.h) #7
  br label %bb.p

bb.o:                                             ; preds = %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit, %_ZL26X509_OBJECT_retrieve_matchP20stack_st_X509_OBJECTP14x509_object_st.exit.thread
  %i.al = load ptr, ptr %0, align 8, !tbaa !24
  %i.am = call i64 @OPENSSL_sk_push(ptr noundef %i.al, ptr noundef nonnull %i.c) #7
  %.not39 = icmp eq i64 %i.am, 0
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.h) #7
  br i1 %.not39, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o, %.thread31
  %.01934 = phi i32 [ 1, %.thread31 ], [ 0, %bb.o ]
  %i.an = load i32, ptr %i.c, align 8, !tbaa !29
  switch i32 %i.an, label %X509_OBJECT_free.exit [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  call void @X509_free(ptr noundef %i.ap) #7
  br label %X509_OBJECT_free.exit

bb.r:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  call void @X509_CRL_free(ptr noundef %i.ar) #7
  br label %X509_OBJECT_free.exit

X509_OBJECT_free.exit:                            ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @OPENSSL_free(ptr noundef nonnull %i.c) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %X509_OBJECT_free.exit, %bb.o, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.01934, %X509_OBJECT_free.exit ], [ 1, %bb.o ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @X509_STORE_add_crl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL14x509_store_addP13x509_store_stPvi(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_OBJECT_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 16) #7
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @X509_OBJECT_free_contents(ptr nofree noundef captures(none) initializes((4, 8)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.a, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @X509_free(ptr noundef %i.c) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call void @X509_CRL_free(ptr noundef %i.e) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @X509_free(ptr noundef) #1

declare void @X509_CRL_free(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_OBJECT_get_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_OBJECT_get0_X509(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !29
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_STORE_get1_objects(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @CRYPTO_MUTEX_lock_read(ptr noundef nonnull %i.a) #7
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = tail call ptr @OPENSSL_sk_deep_copy(ptr noundef %i.b, ptr noundef nonnull @sk_X509_OBJECT_call_copy_func, ptr noundef nonnull @_ZL15x509_object_dupPK14x509_object_st, ptr noundef nonnull @sk_X509_OBJECT_call_free_func, ptr noundef nonnull @X509_OBJECT_free) #7
  tail call void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.a) #7
  ret ptr %i.c
}

declare void @CRYPTO_MUTEX_lock_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL15x509_object_dupPK14x509_object_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 16) #7 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  store i64 %i.f, ptr %i.e, align 8, !tbaa !31
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  switch i32 %i.c, label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @X509_up_ref(ptr noundef %i.g) #7 ; 0 uses
  br label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @X509_CRL_up_ref(ptr noundef %i.g) #7 ; 0 uses
  br label %_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit

_ZL24X509_OBJECT_up_ref_countP14x509_object_st.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

declare void @CRYPTO_MUTEX_unlock_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_STORE_get0_objects(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_STORE_CTX_get1_certs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.x509_object_st, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call ptr @OPENSSL_sk_new_null() #7  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @CRYPTO_MUTEX_lock_write(ptr noundef nonnull %i.e) #7
  %i.f = load ptr, ptr %0, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = call fastcc noundef i32 @_ZL19x509_object_idx_cntP20stack_st_X509_OBJECTiP12X509_name_stPi(ptr noundef %i.g, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.j = load ptr, ptr %0, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.k) #7
  %i.l = call i32 @X509_STORE_CTX_get_by_subject(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %2, align 8, !tbaa !29
  switch i32 %i.m, label %X509_OBJECT_free_contents.exit [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  call void @X509_free(ptr noundef %i.o) #7
  br label %X509_OBJECT_free_contents.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  call void @X509_CRL_free(ptr noundef %i.q) #7
  br label %X509_OBJECT_free_contents.exit

X509_OBJECT_free_contents.exit:                   ; preds = %bb.d, %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @CRYPTO_MUTEX_lock_write(ptr noundef nonnull %i.s) #7
  %i.t = load ptr, ptr %0, align 8, !tbaa !38
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.v = call fastcc noundef i32 @_ZL19x509_object_idx_cntP20stack_st_X509_OBJECTiP12X509_name_stPi(ptr noundef %i.u, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %X509_OBJECT_free_contents.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.y) #7
  br label %.critedge

bb.h:                                             ; preds = %X509_OBJECT_free_contents.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.1 = phi i32 [ %i.v, %bb.h ], [ %i.h, %bb.b ]
  %i.z = load i32, ptr %i.a, align 4, !tbaa !76   ; 2 uses
end_hunk_0
