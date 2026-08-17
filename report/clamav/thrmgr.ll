inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@thrmgr_dispatch_internal:bb.a
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25
  %i.m = add nsw i32 %i.l, %.pre10.i.us48
  %i.n = load i32, ptr %i.h, align 4, !tbaa !20
  %i.o = add nsw i32 %i.m, %i.n
  %i.p = load i32, ptr %i.i, align 8, !tbaa !21
  %i.q = sub i32 %i.o, %i.p
  %.not43.us51 = icmp slt i32 %i.q, %.pre12.i.us49
  br i1 %.not43.us51, label %.split45.us, label %thrmgr_contended.exit.thread.us

thrmgr_contended.exit.thread.us:                  ; preds = %.split.us, %thrmgr_contended.exit.thread.us
  %i.r = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.32) #12 ; 0 uses
  %i.s = tail call i32 @pthread_cond_wait(ptr noundef nonnull %.026, ptr noundef nonnull %0) #12 ; 0 uses
  %i.t = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.33) #12 ; 0 uses
  %.pre.i.us = load ptr, ptr %i.f, align 8, !tbaa !28
  %.phi.trans.insert9.i.us = getelementptr inbounds nuw i8, ptr %.pre.i.us, i64 16
  %.pre10.i.us = load i32, ptr %.phi.trans.insert9.i.us, align 8, !tbaa !25
  %.pre12.i.us = load i32, ptr %.phi.trans.insert11.i, align 8, !tbaa !54
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !25
  %i.x = add nsw i32 %i.w, %.pre10.i.us
  %i.y = load i32, ptr %i.h, align 4, !tbaa !20
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !21
  %i.ab = sub i32 %i.z, %i.aa
  %.not43.us = icmp slt i32 %i.ab, %.pre12.i.us
  br i1 %.not43.us, label %.split45.us, label %thrmgr_contended.exit.thread.us

.split:                                           ; preds = %bb.e, %thrmgr_contended.exit.thread
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !28
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre10.i = load i32, ptr %.phi.trans.insert9.i, align 8, !tbaa !25 ; 2 uses
  %.pre12.i = load i32, ptr %.phi.trans.insert11.i, align 8, !tbaa !54 ; 2 uses
  %i.ac = sdiv i32 %.pre12.i, 2
  %.not8.i = icmp slt i32 %.pre10.i, %i.ac
  br i1 %.not8.i, label %thrmgr_contended.exit, label %thrmgr_contended.exit.thread

thrmgr_contended.exit:                            ; preds = %.split
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !25
  %i.ag = add nsw i32 %i.af, %.pre10.i
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !20
  %i.ai = add nsw i32 %i.ag, %i.ah
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !21
  %i.ak = sub i32 %i.ai, %i.aj
  %.not43 = icmp slt i32 %i.ak, %.pre12.i
  br i1 %.not43, label %.split45.us, label %thrmgr_contended.exit.thread

thrmgr_contended.exit.thread:                     ; preds = %.split, %thrmgr_contended.exit
  %i.al = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.32) #12 ; 0 uses
  %i.am = tail call i32 @pthread_cond_wait(ptr noundef nonnull %.026, ptr noundef nonnull %0) #12 ; 0 uses
  %i.an = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.33) #12 ; 0 uses
  br label %.split

.split45.us:                                      ; preds = %thrmgr_contended.exit, %thrmgr_contended.exit.thread.us, %.split.us
  %.not.i37 = icmp eq ptr %.027, null
  br i1 %.not.i37, label %work_queue_add.exit.thread, label %bb.f

bb.f:                                             ; preds = %.split45.us
  %i.ao = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15 ; 8 uses
  %.not18.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i, label %work_queue_add.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.ao, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %1, ptr %i.ap, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = tail call i32 @gettimeofday(ptr noundef nonnull %i.aq, ptr noundef null) #12 ; 0 uses
  %i.as = load ptr, ptr %.027, align 8, !tbaa !47
  %i.at = icmp eq ptr %i.as, null
  %i.au = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 3 uses
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !59
  store ptr %i.ao, ptr %.027, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %.027, i64 16
  store i32 1, ptr %i.av, align 8, !tbaa !25
  br label %work_queue_add.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !59
  store ptr %i.ao, ptr %i.aw, align 8, !tbaa !51
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !59
  %i.ax = getelementptr inbounds nuw i8, ptr %.027, i64 16 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !25
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !25
  br label %work_queue_add.exit

work_queue_add.exit:                              ; preds = %bb.i, %bb.h
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !25
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !25
  %i.bg = add nsw i32 %i.bf, %i.bc
  %i.bh = load i32, ptr %i.i, align 8, !tbaa !21
  %i.bi = icmp slt i32 %i.bh, %i.bg
  br i1 %i.bi, label %bb.j, label %bb.n

bb.j:                                             ; preds = %work_queue_add.exit
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = icmp slt i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bn, ptr noundef nonnull @thrmgr_worker, ptr noundef nonnull %0) #12
  %.not35 = icmp eq i32 %i.bo, 0
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.34) #12 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !20
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.h, align 4, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %work_queue_add.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = call i32 @pthread_cond_signal(ptr noundef nonnull %i.bs) #12 ; 0 uses
  br label %work_queue_add.exit.thread

work_queue_add.exit.thread:                       ; preds = %.split45.us, %bb.f, %bb.d, %bb.n
  %.028 = phi i32 [ 0, %bb.d ], [ 1, %bb.n ], [ 0, %bb.f ], [ 0, %.split45.us ]
  %i.bu = call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12
  %.not36 = icmp eq i32 %i.bu, 0
  br i1 %.not36, label %bb.p, label %bb.o

bb.o:                                             ; preds = %work_queue_add.exit.thread
  %i.bv = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.19) #12 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %work_queue_add.exit.thread, %bb.a, %bb.o, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.o ], [ 0, %bb.a ], [ %.028, %work_queue_add.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @thrmgr_group_dispatch(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = tail call fastcc i32 @thrmgr_dispatch_internal(ptr noundef %0, ptr noundef %2, i32 noundef %3)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %1) #12 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !60
  %i.f = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef nonnull %1, i32 noundef %i.e) #12 ; 0 uses
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %1) #12 ; 0 uses
  %i.h = tail call fastcc i32 @thrmgr_dispatch_internal(ptr noundef %0, ptr noundef %2, i32 noundef %3)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %1) #12 ; 0 uses
  %i.k = load i32, ptr %i.c, align 8, !tbaa !60
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.c, align 8, !tbaa !60
  %i.m = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef nonnull %1, i32 noundef %i.l) #12 ; 0 uses
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.o = phi i32 [ %i.a, %.thread ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @thrmgr_group_finished(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60
  %i.d = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef nonnull %0, i32 noundef %i.c) #12 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !62
  switch i32 %1, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink36 = phi i64 [ 96, %bb.c ], [ 92, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.k = load i32, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %.thread29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i32 %i.k, -1                         ; 3 uses
  store i32 %i.l, ptr %i.b, align 8, !tbaa !60
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef nonnull %0, i32 noundef %i.l) #12 ; 0 uses
  %.pr = load i32, ptr %i.b, align 8, !tbaa !60
  %i.n = icmp eq i32 %.pr, 1
  br i1 %i.n, label %bb.h, label %.thread29

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.o) #12 ; 0 uses
  br label %.thread29

.thread29:                                        ; preds = %bb.h, %bb.g, %bb.e
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12 ; 0 uses
  %i.s = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef nonnull %0) #12 ; 0 uses
  %i.t = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #12 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.u) #12 ; 0 uses
  tail call void @free(ptr noundef nonnull %0) #12
  br label %bb.j

bb.j:                                             ; preds = %.thread29, %bb.i, %bb.a
  %.021 = phi i32 [ 1, %bb.a ], [ 1, %bb.i ], [ 0, %.thread29 ]
  ret i32 %.021
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @thrmgr_group_waitforall(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.g = call i32 @pthread_mutex_lock(ptr noundef nonnull @exit_mutex) #12 ; 0 uses
  %i.h = load i32, ptr @progexit, align 4, !tbaa !44 ; 2 uses
  %i.i = call i32 @pthread_mutex_unlock(ptr noundef nonnull @exit_mutex) #12 ; 0 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.j = call i64 @time(ptr noundef null) #12
  %i.k = add nsw i64 %i.j, 5
  store i64 %i.k, ptr %4, align 8, !tbaa !63
  store i64 0, ptr %i.e, align 8, !tbaa !65
  %i.l = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.f, ptr noundef nonnull %0, ptr noundef nonnull %4) #12 ; 0 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !60
  %i.n = icmp ugt i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !66
  store i32 %i.p, ptr %1, align 4, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !67
  %i.s = add i32 %i.r, %.1
  store i32 %i.s, ptr %2, align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.u = load i32, ptr %i.t, align 4, !tbaa !62
  store i32 %i.u, ptr %3, align 4, !tbaa !44
  %i.v = load i32, ptr %i.b, align 8, !tbaa !60
  %i.w = add i32 %i.v, -1                         ; 3 uses
  store i32 %i.w, ptr %i.b, align 8, !tbaa !60
  %.not22.not = icmp eq i32 %i.w, 0
  br i1 %.not22.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.x = call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef nonnull %0, i32 noundef %i.w) #12 ; 0 uses
  %i.y = call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.e

.critedge:                                        ; preds = %._crit_edge
  %i.z = call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12 ; 0 uses
  %i.aa = call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.23, ptr noundef nonnull %0) #12 ; 0 uses
  call void @free(ptr noundef nonnull %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @thrmgr_group_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #15 ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.a, ptr noundef null) #12
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.24) #12 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.a) #12
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.f, ptr noundef null) #12
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.25) #12 ; 0 uses
  %i.i = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.a) #12 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.a) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = tail call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %i.a, %bb.f ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @thrmgr_group_need_terminate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @exit_mutex) #12 ; 0 uses
  %i.f = load i32, ptr @progexit, align 4, !tbaa !44
  %i.g = or i32 %i.f, %.0
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @exit_mutex) #12 ; 0 uses
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local void @thrmgr_group_terminate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.b, align 8, !tbaa !68
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @thrmgr_worker(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #12
  %.not41 = icmp eq i32 %i.a, 0
  br i1 %.not41, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.phi.trans.insert11.i.i = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aa, %bb.a
  %i.o = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.35) #12 ; 0 uses
  call void @exit(i32 noundef -2) #14
  unreachable

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.not2743 = phi i1 [ true, %.lr.ph ], [ false, %bb.aa ]
  %.02442 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.aa ] ; 2 uses
  br i1 %.not2743, label %bb.c, label %stats_init.exit

bb.c:                                             ; preds = %bb.b
  %i.p = call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #16 ; 5 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %stats_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @pthread_once(ptr noundef nonnull @stats_tls_key_once, ptr noundef nonnull @stats_tls_key_alloc) #12 ; 0 uses
  %i.r = load i32, ptr @stats_tls_key, align 4, !tbaa !44
  %i.s = call i32 @pthread_setspecific(i32 noundef %i.r, ptr noundef nonnull %i.p) #12 ; 0 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %.not12.i = icmp eq ptr %i.t, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.t, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.p, ptr %i.v, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.p, ptr %i.b, align 8, !tbaa !52
  br label %stats_init.exit

stats_init.exit:                                  ; preds = %bb.f, %bb.c, %bb.b
  %i.w = call i32 @pthread_once(ptr noundef nonnull @stats_tls_key_once, ptr noundef nonnull @stats_tls_key_alloc) #12 ; 0 uses
  %i.x = load i32, ptr @stats_tls_key, align 4, !tbaa !44
  %i.y = call ptr @pthread_getspecific(i32 noundef %i.x) #12 ; 2 uses
  %.not.i34 = icmp eq ptr %i.y, null
  br i1 %.not.i34, label %thrmgr_setactiveengine.exit, label %bb.g

bb.g:                                             ; preds = %stats_init.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr null, ptr %i.z, align 8, !tbaa !40
  br label %thrmgr_setactiveengine.exit

thrmgr_setactiveengine.exit:                      ; preds = %stats_init.exit, %bb.g
  %i.aa = call i32 @pthread_once(ptr noundef nonnull @stats_tls_key_once, ptr noundef nonnull @stats_tls_key_alloc) #12 ; 0 uses
  %i.ab = load i32, ptr @stats_tls_key, align 4, !tbaa !44
  %i.ac = call ptr @pthread_getspecific(i32 noundef %i.ab) #12 ; 4 uses
  %.not.i35 = icmp eq ptr %i.ac, null
  br i1 %.not.i35, label %thrmgr_setactivetask.exit, label %bb.h

bb.h:                                             ; preds = %thrmgr_setactiveengine.exit
  store ptr null, ptr %i.ac, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = icmp eq ptr %i.ae, @.str.31
  br i1 %i.af, label %thrmgr_setactivetask.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @.str.31, ptr %i.ad, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = call i32 @gettimeofday(ptr noundef nonnull %i.ag, ptr noundef null) #12 ; 0 uses
  br label %thrmgr_setactivetask.exit

thrmgr_setactivetask.exit:                        ; preds = %thrmgr_setactiveengine.exit, %bb.h, %bb.i
  %i.ai = call i64 @time(ptr noundef null) #12
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !23
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %i.ai, %i.ak
  store i64 %i.al, ptr %1, align 8, !tbaa !63
  store i64 0, ptr %i.d, align 8, !tbaa !65
  %i.am = load i32, ptr %i.e, align 8, !tbaa !21
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.e, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.v, %thrmgr_setactivetask.exit
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !70
  %i.ar = icmp slt i32 %i.aq, 4
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !28  ; 3 uses
  br i1 %i.ar, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %work_queue_pop.exit.thread.thread.i, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %.048.i = phi i32 [ 1, %bb.k ], [ 4, %bb.j ]    ; 2 uses
  %.01946.i = phi ptr [ %i.ao, %bb.k ], [ %i.as, %bb.j ] ; 3 uses
  %.02044.i = phi ptr [ %i.as, %bb.k ], [ %i.ao, %bb.j ] ; 6 uses
  %i.at = load ptr, ptr %.02044.i, align 8, !tbaa !47 ; 4 uses
  %.not14.i.i = icmp eq ptr %i.at, null
  br i1 %.not14.i.i, label %work_queue_pop.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.thread.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58 ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  store ptr %i.aw, ptr %.02044.i, align 8, !tbaa !47
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.m, label %work_queue_pop.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.02044.i, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !59
  br label %work_queue_pop.exit.i

work_queue_pop.exit.i:                            ; preds = %bb.m, %bb.l
  call void @free(ptr noundef nonnull %i.at) #12
  %i.az = getelementptr inbounds nuw i8, ptr %.02044.i, i64 16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !25
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !25
  %.not.i36 = icmp eq ptr %i.av, null
  br i1 %.not.i36, label %work_queue_pop.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %work_queue_pop.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.02044.i, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !70
  %i.be = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !70
  %i.bf = icmp eq i32 %i.be, %.048.i
  br i1 %i.bf, label %work_queue_pop.exit30.thread.sink.split.i, label %work_queue_pop.exit30.thread.i

work_queue_pop.exit.thread.i:                     ; preds = %work_queue_pop.exit.i, %.thread.i
  %.not.i27.i = icmp eq ptr %.01946.i, null
  br i1 %.not.i27.i, label %work_queue_pop.exit30.thread.i, label %work_queue_pop.exit.thread.thread.i

work_queue_pop.exit.thread.thread.i:              ; preds = %work_queue_pop.exit.thread.i, %bb.k
  %.0495568.i = phi i32 [ %.048.i, %work_queue_pop.exit.thread.i ], [ 1, %bb.k ]
  %.019475667.i = phi ptr [ %.01946.i, %work_queue_pop.exit.thread.i ], [ %i.ao, %bb.k ] ; 5 uses
  %.020455766.i = phi ptr [ %.02044.i, %work_queue_pop.exit.thread.i ], [ null, %bb.k ]
  %i.bg = load ptr, ptr %.019475667.i, align 8, !tbaa !47 ; 4 uses
  %.not14.i28.i = icmp eq ptr %i.bg, null
  br i1 %.not14.i28.i, label %work_queue_pop.exit30.thread.i, label %bb.o

bb.o:                                             ; preds = %work_queue_pop.exit.thread.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 3 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !51 ; 2 uses
  store ptr %i.bj, ptr %.019475667.i, align 8, !tbaa !47
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.p, label %work_queue_pop.exit30.i

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.019475667.i, i64 8
  store ptr null, ptr %i.bl, align 8, !tbaa !59
  br label %work_queue_pop.exit30.i

work_queue_pop.exit30.i:                          ; preds = %bb.p, %bb.o
  call void @free(ptr noundef nonnull %i.bg) #12
  %i.bm = getelementptr inbounds nuw i8, ptr %.019475667.i, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !25
  %i.bo = add nsw i32 %i.bn, -1
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !25
  %.not24.i = icmp eq ptr %i.bi, null
  br i1 %.not24.i, label %work_queue_pop.exit30.thread.i, label %bb.q

bb.q:                                             ; preds = %work_queue_pop.exit30.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.019475667.i, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !70
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !70
  %i.bs = icmp eq i32 %i.br, %.0495568.i
  br i1 %i.bs, label %work_queue_pop.exit30.thread.sink.split.i, label %work_queue_pop.exit30.thread.i

work_queue_pop.exit30.thread.sink.split.i:        ; preds = %bb.q, %bb.n
  %.020455766.sink.i = phi ptr [ %.01946.i, %bb.n ], [ %.020455766.i, %bb.q ]
  %.021.ph.i = phi ptr [ %i.av, %bb.n ], [ %i.bi, %bb.q ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.020455766.sink.i, i64 20
  store i32 0, ptr %i.bt, align 4, !tbaa !70
  br label %work_queue_pop.exit30.thread.i

work_queue_pop.exit30.thread.i:                   ; preds = %work_queue_pop.exit30.thread.sink.split.i, %bb.q, %work_queue_pop.exit30.i, %work_queue_pop.exit.thread.thread.i, %work_queue_pop.exit.thread.i, %bb.n
  %.021.i = phi ptr [ null, %work_queue_pop.exit.thread.thread.i ], [ %i.av, %bb.n ], [ null, %work_queue_pop.exit.thread.i ], [ %i.bi, %bb.q ], [ null, %work_queue_pop.exit30.i ], [ %.021.ph.i, %work_queue_pop.exit30.thread.sink.split.i ] ; 2 uses
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !28
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre10.i.i = load i32, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !25 ; 2 uses
  %.pre12.i.i = load i32, ptr %.phi.trans.insert11.i.i, align 8, !tbaa !54 ; 2 uses
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !25
  %i.bx = add nsw i32 %i.bw, %.pre10.i.i
  %i.by = load i32, ptr %i.j, align 4, !tbaa !20
  %i.bz = add nsw i32 %i.bx, %i.by
  %i.ca = load i32, ptr %i.e, align 8, !tbaa !21
  %i.cb = sub i32 %i.bz, %i.ca
  %.not69.i = icmp slt i32 %i.cb, %.pre12.i.i
  br i1 %.not69.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %work_queue_pop.exit30.thread.i
  %i.cc = call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.37) #12 ; 0 uses
  %i.cd = call i32 @pthread_cond_signal(ptr noundef nonnull %i.k) #12 ; 0 uses
  %.pre.i33.pre.i = load ptr, ptr %i.i, align 8, !tbaa !28
  %.phi.trans.insert9.i34.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i33.pre.i, i64 16
  %.pre10.i35.pre.i = load i32, ptr %.phi.trans.insert9.i34.phi.trans.insert.i, align 8, !tbaa !25
  %.pre12.i37.pre.i = load i32, ptr %.phi.trans.insert11.i.i, align 8, !tbaa !54
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %work_queue_pop.exit30.thread.i
  %.pre12.i37.i = phi i32 [ %.pre12.i37.pre.i, %bb.r ], [ %.pre12.i.i, %work_queue_pop.exit30.thread.i ] ; 2 uses
  %.pre10.i35.i = phi i32 [ %.pre10.i35.pre.i, %bb.r ], [ %.pre10.i.i, %work_queue_pop.exit30.thread.i ] ; 2 uses
  %i.ce = sdiv i32 %.pre12.i37.i, 2
  %.not8.i38.i = icmp slt i32 %.pre10.i35.i, %i.ce
  br i1 %.not8.i38.i, label %thrmgr_contended.exit.i, label %thrmgr_pop.exit

thrmgr_contended.exit.i:                          ; preds = %bb.s
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !25
  %i.ci = add nsw i32 %i.ch, %.pre10.i35.i
  %i.cj = load i32, ptr %i.j, align 4, !tbaa !20
  %i.ck = add nsw i32 %i.ci, %i.cj
  %i.cl = load i32, ptr %i.e, align 8, !tbaa !21
  %i.cm = sub i32 %i.ck, %i.cl
  %.not70.i = icmp slt i32 %i.cm, %.pre12.i37.i
  br i1 %.not70.i, label %bb.t, label %thrmgr_pop.exit

bb.t:                                             ; preds = %thrmgr_contended.exit.i
  %i.cn = call i32 (i32, ptr, ...) @logg(i32 noundef 3, ptr noundef nonnull @.str.38) #12 ; 0 uses
  %i.co = call i32 @pthread_cond_signal(ptr noundef nonnull %i.l) #12 ; 0 uses
  br label %thrmgr_pop.exit

thrmgr_pop.exit:                                  ; preds = %bb.s, %thrmgr_contended.exit.i, %bb.t
  %i.cp = icmp eq ptr %.021.i, null               ; 3 uses
  %.pre44 = load i32, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  br i1 %i.cp, label %bb.u, label %.critedge

bb.u:                                             ; preds = %thrmgr_pop.exit
  %.not28 = icmp eq i32 %.pre44, 2
  br i1 %.not28, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = call i32 @pthread_cond_signal(ptr noundef nonnull %i.g) #12 ; 0 uses
  %i.cr = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.m, ptr noundef nonnull %0, ptr noundef nonnull %1) #12
  %i.cs = icmp eq i32 %i.cr, 110
  br i1 %i.cs, label %..critedge_crit_edge, label %bb.j

..critedge_crit_edge:                             ; preds = %bb.v
  %.pre = load i32, ptr %i.f, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %thrmgr_pop.exit, %bb.u, %..critedge_crit_edge
  %i.ct = phi i1 [ true, %..critedge_crit_edge ], [ %i.cp, %bb.u ], [ %i.cp, %thrmgr_pop.exit ]
  %i.cu = phi i32 [ %.pre, %..critedge_crit_edge ], [ 2, %bb.u ], [ %.pre44, %thrmgr_pop.exit ]
  %.125 = phi i32 [ 1, %..critedge_crit_edge ], [ %.02442, %bb.u ], [ %.02442, %thrmgr_pop.exit ]
  %i.cv = load i32, ptr %i.e, align 8, !tbaa !21
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !21
  %i.cx = icmp eq i32 %i.cu, 2
  %spec.select = select i1 %i.cx, i32 1, i32 %.125 ; 2 uses
  %i.cy = call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12
  %.not29 = icmp eq i32 %i.cy, 0
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.cz = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.36) #12 ; 0 uses
  call void @exit(i32 noundef -2) #14
  unreachable

bb.x:                                             ; preds = %.critedge
  br i1 %i.ct, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !56
  call void %i.da(ptr noundef nonnull %.021.i) #12
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %.not31 = icmp eq i32 %spec.select, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.db = call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #12
  %.not = icmp eq i32 %i.db, 0
  br i1 %.not, label %bb.b, label %._crit_edge

bb.ab:                                            ; preds = %bb.z
  %i.dc = call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #12
  %.not32 = icmp eq i32 %i.dc, 0
  br i1 %.not32, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.35) #12 ; 0 uses
  call void @exit(i32 noundef -2) #14
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.de = load i32, ptr %i.j, align 4, !tbaa !20
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.j, align 4, !tbaa !20
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dh = call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.m) #12 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.di = load i32, ptr @stats_tls_key, align 4, !tbaa !44
  %i.dj = call ptr @pthread_getspecific(i32 noundef %i.di) #12 ; 5 uses
  %.not.i37 = icmp eq ptr %i.dj, null
  br i1 %.not.i37, label %stats_destroy.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = call i32 @pthread_mutex_lock(ptr noundef nonnull @pools_lock) #12 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !69 ; 3 uses
  %.not14.i = icmp eq ptr %i.dm, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53 ; 4 uses
  br i1 %.not14.i, label %._crit_edge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr %.pre.i, ptr %i.dn, align 8, !tbaa !53
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ah, %bb.ag
  %.not15.i = icmp eq ptr %.pre.i, null
  br i1 %.not15.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i
  %i.do = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !69
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.dq = icmp eq ptr %i.dp, %i.dj
  br i1 %i.dq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %.pre.i, ptr %i.b, align 8, !tbaa !52
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @free(ptr noundef nonnull %i.dj) #12
  %i.dr = load i32, ptr @stats_tls_key, align 4, !tbaa !44
  %i.ds = call i32 @pthread_setspecific(i32 noundef %i.dr, ptr noundef null) #12 ; 0 uses
  %i.dt = call i32 @pthread_mutex_unlock(ptr noundef nonnull @pools_lock) #12 ; 0 uses
  br label %stats_destroy.exit

stats_destroy.exit:                               ; preds = %bb.af, %bb.al
  %i.du = call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #12
  %.not33 = icmp eq i32 %i.du, 0
  br i1 %.not33, label %bb.an, label %bb.am

bb.am:                                            ; preds = %stats_destroy.exit
  %i.dv = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.36) #12 ; 0 uses
  call void @exit(i32 noundef -2) #14
  unreachable

bb.an:                                            ; preds = %stats_destroy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret ptr null
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS15threadpool_list", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"threadpool_list", !14, i64 0, !10, i64 8}
!14 = !{!"p1 _ZTS14threadpool_tag", !11, i64 0}
!15 = !{!16, !6, i64 288}
!16 = !{!"threadpool_tag", !7, i64 0, !7, i64 40, !7, i64 88, !7, i64 144, !7, i64 192, !7, i64 240, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !17, i64 320, !11, i64 328, !18, i64 336, !18, i64 344}
!17 = !{!"p1 _ZTS9task_desc", !11, i64 0}
!18 = !{!"p1 _ZTS14work_queue_tag", !11, i64 0}
!19 = !{!13, !10, i64 8}
!20 = !{!16, !6, i64 300}
!21 = !{!16, !6, i64 304}
!22 = !{!16, !6, i64 292}
!23 = !{!16, !6, i64 312}
!24 = !{!16, !18, i64 344}
!25 = !{!26, !6, i64 16}
!26 = !{!"work_queue_tag", !27, i64 0, !27, i64 8, !6, i64 16, !6, i64 20}
!27 = !{!"p1 _ZTS13work_item_tag", !11, i64 0}
!28 = !{!16, !18, i64 336}
!29 = !{!17, !17, i64 0}
!30 = !{!31, !32, i64 8}
!31 = !{!"timeval", !32, i64 0, !32, i64 8}
!32 = !{!"long", !7, i64 0}
!33 = !{!34, !32, i64 24}
!34 = !{!"task_desc", !35, i64 0, !35, i64 8, !31, i64 16, !17, i64 32, !17, i64 40, !36, i64 48}
!35 = !{!"p1 omnipotent char", !11, i64 0}
!36 = !{!"p1 _ZTS9cl_engine", !11, i64 0}
!37 = !{!34, !32, i64 16}
!38 = !{!34, !35, i64 8}
!39 = !{!34, !35, i64 0}
!40 = !{!34, !36, i64 48}
!41 = !{!36, !36, i64 0}
!42 = !{!31, !32, i64 0}
!43 = !{!32, !32, i64 0}
!44 = !{!6, !6, i64 0}
!45 = !{!46, !6, i64 36}
!46 = !{!"mallinfo", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!47 = !{!26, !27, i64 0}
!48 = !{!49, !32, i64 24}
!49 = !{!"work_item_tag", !27, i64 0, !11, i64 8, !31, i64 16}
!50 = !{!49, !32, i64 16}
!51 = !{!49, !27, i64 0}
!52 = !{!16, !17, i64 320}
!53 = !{!34, !17, i64 40}
!54 = !{!16, !6, i64 296}
!55 = !{!16, !6, i64 308}
!56 = !{!16, !11, i64 328}
!57 = !{!18, !18, i64 0}
!58 = !{!49, !11, i64 8}
!59 = !{!26, !27, i64 8}
!60 = !{!61, !6, i64 88}
!61 = !{!"jobgroup", !7, i64 0, !7, i64 40, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104}
!62 = !{!61, !6, i64 100}
!63 = !{!64, !32, i64 0}
!64 = !{!"timespec", !32, i64 0, !32, i64 8}
!65 = !{!64, !32, i64 8}
!66 = !{!61, !6, i64 92}
!67 = !{!61, !6, i64 96}
!68 = !{!61, !6, i64 104}
!69 = !{!34, !17, i64 32}
!70 = !{!26, !6, i64 20}
end_hunk_0
