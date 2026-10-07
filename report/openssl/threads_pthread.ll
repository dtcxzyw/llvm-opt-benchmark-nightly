Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/threads_pthread?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@OPENSSL_die
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ossl_rcu_write_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @ossl_rcu_write_unlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @ossl_synchronize_rcu(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !20
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !21   ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !33   ; 2 uses
  %i.k = sub i32 %i.i, %i.j
  %i.l = icmp ult i32 %i.k, 2
  br i1 %i.l, label %.lr.ph.i, label %update_qp.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.n = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.m, ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.o = load i32, ptr %i.g, align 4, !tbaa !21   ; 2 uses
  %i.p = load i32, ptr %i.h, align 4, !tbaa !33   ; 2 uses
  %i.q = sub i32 %i.o, %i.p
  %i.r = icmp ult i32 %i.q, 2
  br i1 %i.r, label %bb.b, label %update_qp.exit, !llvm.loop !29

update_qp.exit:                                   ; preds = %bb.b, %bb.a
  %.lcssa23.i = phi i32 [ %i.i, %bb.a ], [ %i.o, %bb.b ]
  %.lcssa.i = phi i32 [ %i.j, %bb.a ], [ %i.p, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = add i32 %.lcssa.i, 1
  store i32 %i.u, ptr %i.h, align 4, !tbaa !33
  %i.v = add i32 %i.t, 1
  %i.w = urem i32 %i.v, %.lcssa23.i               ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !36   ; 3 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 %i.w, ptr %i.aa release, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ad = zext i32 %i.t to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = atomicrmw or ptr %i.ae, i64 0 release, align 8 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ah = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.ag) #10 ; 0 uses
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ad
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.am = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.al) #10 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !37
  %.not26 = icmp eq i32 %i.ao, %i.y
  br i1 %.not26, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %update_qp.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.aq = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.al) #10 ; 0 uses
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !37
  %.not = icmp eq i32 %i.ar, %i.y
  br i1 %.not, label %.preheader.preheader, label %bb.c, !llvm.loop !30

.preheader.preheader:                             ; preds = %bb.c, %update_qp.exit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.as = load atomic i64, ptr %i.ak acquire, align 8
  %.not22 = icmp eq i64 %i.as, 0
  br i1 %.not22, label %bb.d, label %.preheader, !llvm.loop !31

bb.d:                                             ; preds = %.preheader
  %i.at = load i32, ptr %i.an, align 4, !tbaa !37
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.an, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aw = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.av) #10 ; 0 uses
  %i.ax = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.al) #10 ; 0 uses
  %i.ay = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.az = load i32, ptr %i.h, align 4, !tbaa !33
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr %i.h, align 4, !tbaa !33
  %i.bb = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.ag) #10 ; 0 uses
  %i.bc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #10 ; 0 uses
  %.not2327 = icmp eq ptr %i.c, null
  br i1 %.not2327, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.d, %.lr.ph29
  %.028 = phi ptr [ %i.be, %.lr.ph29 ], [ %i.c, %bb.d ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  %i.bf = load ptr, ptr %.028, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25
  tail call void %i.bf(ptr noundef %i.bh) #10
  tail call void @CRYPTO_free(ptr noundef nonnull %.028, ptr noundef nonnull @.str, i32 noundef 529) #10
  %.not23 = icmp eq ptr %i.be, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph29, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph29, %bb.d
  ret void
}

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias ptr @ossl_rcu_cb_item_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 535) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @ossl_rcu_cb_item_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 540) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_rcu_call(ptr nofree noundef captures(none) %0, ptr noundef initializes((0, 24)) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  store ptr %2, ptr %1, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !25
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !23
  store ptr %1, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define ptr @ossl_rcu_uptr_deref(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @ossl_rcu_assign_uptr(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store atomic ptr %i.a, ptr %0 release, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @ossl_rcu_lock_new(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %0, i32 2) ; 2 uses
  %i.a = tail call ptr @ossl_lib_ctx_get_concrete(ptr noundef %1) #10 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 264, ptr noundef nonnull @.str, i32 noundef 583) #10 ; 12 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.g = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.f, ptr noundef null) #10
  %.not.not = icmp eq i32 %i.g, 0
  br i1 %.not.not, label %bb.d, label %.preheader.1.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.h, ptr noundef null) #10
  %.not48.not = icmp eq i32 %i.i, 0
  br i1 %.not48.not, label %bb.e, label %.thread90

.thread90:                                        ; preds = %bb.d
  %2 = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.f) #10 ; 0 uses
  br label %.preheader.1.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.k = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.j, ptr noundef null) #10
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 3 uses
  %i.m = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.l, ptr noundef null) #10
  %.not50 = icmp eq i32 %i.m, 0
  br i1 %.not50, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.o = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.n, ptr noundef null) #10
  %.not51 = icmp eq i32 %i.o, 0
  br i1 %.not51, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %spec.store.select to i64
  %i.q = tail call noalias ptr @CRYPTO_calloc(i64 noundef %i.p, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 468) #10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %spec.store.select, ptr %i.r, align 4, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.q, ptr %i.s, align 8, !tbaa !19
  %i.t = icmp eq ptr %i.q, null
  br i1 %i.t, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.7.0.ph = phi ptr [ %i.j, %bb.h ], [ null, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %i.l, %bb.h ], [ null, %bb.e ], [ null, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %.sroa.5.0.ph = phi ptr [ %i.n, %bb.h ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ] ; 2 uses
  %i.u = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.f) #10 ; 0 uses
  %3 = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.h) #10 ; 0 uses
  %.not53.2 = icmp eq ptr %.sroa.7.0.ph, null
  br i1 %.not53.2, label %.preheader.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %.sroa.7.0.ph) #10 ; 0 uses
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j, %bb.i
  %.not52 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not52, label %.preheader.1, label %bb.k

bb.k:                                             ; preds = %.preheader.preheader
  %i.w = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %.sroa.0.0.ph) #10 ; 0 uses
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.k
  %.not52.1 = icmp eq ptr %.sroa.5.0.ph, null
  br i1 %.not52.1, label %.preheader.1.thread, label %bb.l

bb.l:                                             ; preds = %.preheader.1
  %i.x = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %.sroa.5.0.ph) #10 ; 0 uses
  br label %.preheader.1.thread

.preheader.1.thread:                              ; preds = %bb.c, %.thread90, %bb.l, %.preheader.1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  tail call void @CRYPTO_free(ptr noundef %i.z, ptr noundef nonnull @.str, i32 noundef 619) #10
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 620) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.b, %bb.a, %.preheader.1.thread
  %.043 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %.preheader.1.thread ], [ %i.c, %bb.h ]
  ret ptr %.043
}

declare ptr @ossl_lib_ctx_get_concrete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @ossl_rcu_lock_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ossl_synchronize_rcu(ptr noundef nonnull %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef 634) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.f) #10 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.h) #10 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.j) #10 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.l) #10 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 647) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 915) #10 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_rwlock_init(ptr noundef nonnull %i.a, ptr noundef null) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 920) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_THREAD_read_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_rdlock(ptr noundef %0) #10
  %i.b = icmp eq i32 %i.a, 0
  %. = zext i1 %i.b to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_THREAD_write_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_wrlock(ptr noundef %0) #10
  %i.b = icmp eq i32 %i.a, 0
  %. = zext i1 %i.b to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_THREAD_unlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_unlock(ptr noundef %0) #10
  %.not = icmp eq i32 %i.a, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_THREAD_lock_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_rwlock_destroy(ptr noundef nonnull %0) #10 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1010) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_THREAD_run_once(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef %0, ptr noundef %1) #10
  %.not = icmp eq i32 %i.a, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_THREAD_init_local(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_key_create(ptr noundef %0, ptr noundef %1) #10
  %.not = icmp eq i32 %i.a, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @CRYPTO_THREAD_get_local(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !26
  %i.b = tail call ptr @pthread_getspecific(i32 noundef %i.a) #10
  ret ptr %i.b
}

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_THREAD_set_local(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !26
  %i.b = tail call i32 @pthread_setspecific(i32 noundef %i.a, ptr noundef %1) #10
  %.not = icmp eq i32 %i.b, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_THREAD_cleanup_local(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !26
  %i.b = tail call i32 @pthread_key_delete(i32 noundef %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define i64 @CRYPTO_THREAD_get_current_id() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @pthread_self() #12
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @CRYPTO_THREAD_compare_id(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

end_hunk_0
