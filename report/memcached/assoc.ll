Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/assoc?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@assoc_start_expand:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @assoc_insert(ptr noundef initializes((16, 24)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.b = load i1, ptr @expanding, align 1
  %.pre = load i32, ptr @hashpower, align 4, !tbaa !12 ; 2 uses
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br i1 %.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %.pre, -1
  %i.c = zext nneg i32 %i.b to i64
  %notmask = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask, -1
  %i.e = and i64 %i.d, %i.a                       ; 2 uses
  %i.f = load i64, ptr @expand_bucket, align 8, !tbaa !25
  %.not = icmp ult i64 %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @old_hashtable, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !27
  store ptr %0, ptr %i.h, align 8, !tbaa !27
  br label %bb.d

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.k = load ptr, ptr @primary_hashtable, align 8, !tbaa !16
  %i.l = zext nneg i32 %.pre to i64
  %notmask8 = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask8, -1
  %i.n = and i64 %i.a, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  store ptr %0, ptr %i.o, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @assoc_delete(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b.i = load i1, ptr @expanding, align 1
  %.pre.i = load i32, ptr @hashpower, align 4, !tbaa !12 ; 2 uses
  %i.a = zext i32 %2 to i64                       ; 2 uses
  br i1 %.b.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %.pre.i, -1
  %i.c = zext nneg i32 %i.b to i64
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %i.e = and i64 %i.d, %i.a                       ; 2 uses
  %i.f = load i64, ptr @expand_bucket, align 8, !tbaa !25
  %.not.i = icmp ult i64 %i.e, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @old_hashtable, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @primary_hashtable, align 8, !tbaa !16
  %i.j = zext nneg i32 %.pre.i to i64
  %notmask16.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask16.i, -1
  %i.l = and i64 %i.k, %i.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %i.m, %._crit_edge.i ] ; 2 uses
  %i.n = load ptr, ptr %.0.i, align 8, !tbaa !27  ; 2 uses
  %.not1721.i = icmp eq ptr %i.n, null
  br i1 %.not1721.i, label %_hashitem_before.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge2.i
  %.pr = phi ptr [ %i.z, %.critedge2.i ], [ %i.n, %bb.d ] ; 5 uses
  %.122.i = phi ptr [ %i.y, %.critedge2.i ], [ %.0.i, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %.pr, i64 41
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i64
  %.not18.i = icmp eq i64 %1, %i.q
  br i1 %.not18.i, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 38
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30
  %i.u = shl i16 %i.t, 2
  %i.v = and i16 %i.u, 8
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %bcmp.i = tail call i32 @bcmp(ptr readonly %0, ptr nonnull %i.x, i64 %1)
  %.not20.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not20.i, label %_hashitem_before.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.e, %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %.not17.i = icmp eq ptr %i.z, null
  br i1 %.not17.i, label %_hashitem_before.exit.thread, label %.lr.ph.i, !llvm.loop !38

_hashitem_before.exit:                            ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27
  store ptr null, ptr %i.aa, align 8, !tbaa !27
  store ptr %i.ab, ptr %.122.i, align 8, !tbaa !27
  ret void

_hashitem_before.exit.thread:                     ; preds = %.critedge2.i, %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 188, ptr noundef nonnull @__PRETTY_FUNCTION__.assoc_delete) #18
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @start_assoc_maintenance_thread() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.3) #17 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #17, !inline_history !39
  %i.c = trunc i64 %i.b to i32
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 1)
  store i32 %spec.store.select, ptr @hash_bulk_move, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @pthread_create(ptr noundef nonnull @maintenance_tid, ptr noundef null, ptr noundef nonnull @assoc_maintenance_thread, ptr noundef null) #17 ; 2 uses
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.f = tail call ptr @strerror(i32 noundef %i.d) #17
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef %i.f) #19 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load i64, ptr @maintenance_tid, align 8, !tbaa !25
  tail call void @thread_setname(i64 noundef %i.h, ptr noundef nonnull @.str.5) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @assoc_maintenance_thread(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @maintenance_lock) #17 ; 0 uses
  %i.b = load volatile i32, ptr @do_run_maintenance_thread, align 4, !tbaa !12
  %.not25 = icmp eq i32 %i.b, 0
  br i1 %.not25, label %._crit_edge26, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.m
  %i.c = load i32, ptr @hash_bulk_move, align 4, !tbaa !12
  %i.d = icmp sgt i32 %i.c, 0
  %.b21 = load i1, ptr @expanding, align 1        ; 2 uses
  %i.e = select i1 %i.d, i1 %.b21, i1 false
  br i1 %i.e, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %.preheader, %bb.f
  %.01322 = phi i32 [ %i.ba, %bb.f ], [ 0, %.preheader ]
  %i.f = load i64, ptr @expand_bucket, align 8, !tbaa !25
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call ptr @item_trylock(i32 noundef %i.g) #17 ; 2 uses
  %.not16 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not16, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph23
  %i.i = load ptr, ptr @old_hashtable, align 8, !tbaa !16 ; 2 uses
  %i.j = load i64, ptr @expand_bucket, align 8, !tbaa !25 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.not1719 = icmp eq ptr %i.l, null
  br i1 %.not1719, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre29 = load i32, ptr @hashpower, align 4, !tbaa !12
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.020 = phi ptr [ %i.n, %.lr.ph ], [ %i.l, %bb.b ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = load ptr, ptr @hash, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %.020, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %.020, i64 38
  %i.r = load i16, ptr %i.q, align 2, !tbaa !30
  %i.s = shl i16 %i.r, 2
  %i.t = and i16 %i.s, 8
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.020, i64 41
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = zext i8 %i.x to i64
  %i.z = tail call i32 %i.o(ptr noundef nonnull %i.v, i64 noundef %i.y) #17
  %i.aa = zext i32 %i.z to i64
  %i.ab = load i32, ptr @hashpower, align 4, !tbaa !12 ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %notmask = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask, -1
  %i.ae = and i64 %i.ad, %i.aa
  %i.af = load ptr, ptr @primary_hashtable, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !27
  store ptr %.020, ptr %i.ag, align 8, !tbaa !27
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr @old_hashtable, align 8, !tbaa !16
  %.pre28 = load i64, ptr @expand_bucket, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.ai = phi i32 [ %i.ab, %._crit_edge.loopexit ], [ %.pre29, %.._crit_edge_crit_edge ]
  %i.aj = phi i64 [ %.pre28, %._crit_edge.loopexit ], [ %i.j, %.._crit_edge_crit_edge ] ; 2 uses
  %i.ak = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %.._crit_edge_crit_edge ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store ptr null, ptr %i.al, align 8, !tbaa !27
  %i.am = add i64 %i.aj, 1                        ; 2 uses
  store i64 %i.am, ptr @expand_bucket, align 8, !tbaa !25
  %i.an = add i32 %i.ai, -1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = icmp eq i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.c, label %1

bb.c:                                             ; preds = %._crit_edge
  store i1 false, ptr @expanding, align 1
  tail call void @free(ptr noundef nonnull %i.ak) #17
  tail call void @STATS_LOCK() #17
  %i.ar = load i32, ptr @hashpower, align 4, !tbaa !12
  %i.as = add i32 %i.ar, -1
  %i.at = zext nneg i32 %i.as to i64
  %.neg = shl i64 -8, %i.at
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 24), align 8, !tbaa !24
  %i.av = add i64 %.neg, %i.au
  store i64 %i.av, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 24), align 8, !tbaa !24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 52), align 4, !tbaa !44
  tail call void @STATS_UNLOCK() #17
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !49
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.d, label %1

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 26, i64 1, ptr %i.ay) #15 ; 0 uses
  br label %1

.thread:                                          ; preds = %.lr.ph23
  %i.az = tail call i32 @usleep(i32 noundef 9999) #17 ; 0 uses
  br label %1

1:                                                ; preds = %._crit_edge, %bb.d, %bb.c, %.thread
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %1
  tail call void @item_trylock_unlock(ptr noundef nonnull %i.h) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %1
  %i.ba = add nuw nsw i32 %.01322, 1              ; 2 uses
  %i.bb = load i32, ptr @hash_bulk_move, align 4, !tbaa !12
  %i.bc = icmp slt i32 %i.ba, %i.bb
  %.b = load i1, ptr @expanding, align 1          ; 2 uses
  %i.bd = select i1 %i.bc, i1 %.b, i1 false
  br i1 %i.bd, label %.lr.ph23, label %._crit_edge24, !llvm.loop !41

._crit_edge24:                                    ; preds = %bb.f, %.preheader
  %.b.lcssa = phi i1 [ %.b21, %.preheader ], [ %.b, %bb.f ]
  br i1 %.b.lcssa, label %bb.m, label %bb.g

bb.g:                                             ; preds = %._crit_edge24
  %i.be = tail call i32 @pthread_cond_wait(ptr noundef nonnull @maintenance_cond, ptr noundef nonnull @maintenance_lock) #17 ; 0 uses
  %i.bf = load volatile i32, ptr @do_run_maintenance_thread, align 4, !tbaa !12
  %.not15 = icmp eq i32 %i.bf, 0
  br i1 %.not15, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @pause_threads(i32 noundef 1) #17
  %i.bg = load ptr, ptr @primary_hashtable, align 8, !tbaa !16 ; 2 uses
  store ptr %i.bg, ptr @old_hashtable, align 8, !tbaa !16
  %i.bh = load i32, ptr @hashpower, align 4, !tbaa !12
  %i.bi = add i32 %i.bh, 1                        ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = tail call noalias ptr @calloc(i64 noundef %i.bk, i64 noundef 8) #14 ; 2 uses
  store ptr %i.bl, ptr @primary_hashtable, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !49
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %i.bo) #15 ; 0 uses
  %.pre.i = load i32, ptr @hashpower, align 4, !tbaa !12
  %.pre1.i = add i32 %.pre.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i = phi i32 [ %.pre1.i, %bb.j ], [ %i.bi, %bb.i ]
  store i32 %.pre-phi.i, ptr @hashpower, align 4, !tbaa !12
  store i1 true, ptr @expanding, align 1
  store i64 0, ptr @expand_bucket, align 8, !tbaa !25
  tail call void @STATS_LOCK() #17
  %i.bp = load i32, ptr @hashpower, align 4, !tbaa !12 ; 2 uses
  store i32 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 44), align 4, !tbaa !23
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 8, %i.bq
  %i.bs = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 24), align 8, !tbaa !24
  %i.bt = add i64 %i.bs, %i.br
  store i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 24), align 8, !tbaa !24
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 52), align 4, !tbaa !44
  tail call void @STATS_UNLOCK() #17
  br label %assoc_expand.exit

bb.l:                                             ; preds = %bb.h
  store ptr %i.bg, ptr @primary_hashtable, align 8, !tbaa !16
  br label %assoc_expand.exit

assoc_expand.exit:                                ; preds = %bb.k, %bb.l
  tail call void @pause_threads(i32 noundef 2) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %assoc_expand.exit, %._crit_edge24
  %i.bu = load volatile i32, ptr @do_run_maintenance_thread, align 4, !tbaa !12
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %._crit_edge26, label %.preheader, !llvm.loop !42

._crit_edge26:                                    ; preds = %bb.m, %bb.a
  %i.bv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @maintenance_lock) #17 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

declare void @thread_setname(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @stop_assoc_maintenance_thread() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @maintenance_lock) #17 ; 0 uses
  store volatile i32 0, ptr @do_run_maintenance_thread, align 4, !tbaa !12
  %i.b = tail call i32 @pthread_cond_signal(ptr noundef nonnull @maintenance_cond) #17 ; 0 uses
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @maintenance_lock) #17 ; 0 uses
  %i.d = load i64, ptr @maintenance_tid, align 8, !tbaa !25
  %i.e = tail call i32 @pthread_join(i64 noundef %i.d, ptr noundef null) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @assoc_get_iterator() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #14 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @maintenance_lock) #17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @assoc_iterate(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %1, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 4 uses
  %.not32 = icmp eq ptr %i.e, null
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  store ptr %i.h, ptr %i.d, align 8, !tbaa !50
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !36
  %i.j = trunc i64 %i.i to i32
  tail call void @item_unlock(i32 noundef %i.j) #17
  %i.k = load i64, ptr %0, align 8, !tbaa !36
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.e, ptr %1, align 8, !tbaa !27
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = load i64, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.n = load i32, ptr @hashpower, align 4, !tbaa !12
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %.not = icmp eq i64 %i.m, %i.p
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = trunc i64 %i.m to i32
  tail call void @item_lock(i32 noundef %i.q) #17
  store i8 1, ptr %i.a, align 8, !tbaa !33
  %i.r = load ptr, ptr @primary_hashtable, align 8, !tbaa !16
  %i.s = load i64, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !51
  %.not31 = icmp eq ptr %i.u, null
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !50
  store ptr %i.u, ptr %1, align 8, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = trunc i64 %i.s to i32
  tail call void @item_unlock(i32 noundef %i.z) #17
  store i8 0, ptr %i.a, align 8, !tbaa !33
  %i.aa = load i64, ptr %0, align 8, !tbaa !36
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %0, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ true, %bb.h ], [ true, %bb.i ]
end_hunk_0
