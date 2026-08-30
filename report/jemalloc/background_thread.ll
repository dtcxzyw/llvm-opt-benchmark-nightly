Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/background_thread?download=true
inline.NumInlined: 93
inline.NumDeleted: 26
begin_hunk_0_@background_thread0_work:bb.a
.lr.ph.preheader.i.us:                            ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store atomic i8 0, ptr %i.br monotonic, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bs) #12, !inline_history !74 ; 0 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.m, %.lr.ph.preheader.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 1, %.lr.ph.preheader.i.us ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !39, !range !25, !noundef !26
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.bx = load ptr, ptr @je_background_thread_info, align 8, !tbaa !23
  %i.by = getelementptr inbounds nuw [208 x i8], ptr %i.bx, i64 %indvars.iv ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 128 ; 2 uses
  %i.ca = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bz) #12
  %.not.i27.us = icmp eq i32 %i.ca, 0
  br i1 %.not.i27.us, label %malloc_mutex_trylock_final.exit.i29.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.cb) #12
  br label %bb.k

malloc_mutex_trylock_final.exit.i29.us:           ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  store atomic i8 1, ptr %i.cc monotonic, align 1
  br label %bb.k

bb.k:                                             ; preds = %malloc_mutex_trylock_final.exit.i29.us, %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 112 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20
  %.not.i.i28.us = icmp eq ptr %i.ch, %0
  br i1 %.not.i.i28.us, label %malloc_mutex_lock.exit30.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %0, ptr %i.cg, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 96 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !21
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit30.us

malloc_mutex_lock.exit30.us:                      ; preds = %bb.l, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !27
  %.not.i.us = icmp eq i32 %i.cm, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  store atomic i8 0, ptr %i.cn monotonic, align 8
  %i.co = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bz) #12, !inline_history !74 ; 0 uses
  br i1 %.not.i.us, label %.split.us, label %bb.m

bb.m:                                             ; preds = %malloc_mutex_lock.exit30.us, %.lr.ph.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.fr53
  br i1 %exitcond.not, label %check_background_thread_creation.exit.thread37.loopexit.us, label %.lr.ph.i.us, !llvm.loop !75

check_background_thread_creation.exit.thread.us:  ; preds = %check_background_thread_creation.exit.thread37.loopexit.us, %bb.h
  %i.cp = phi ptr [ %.pre59, %check_background_thread_creation.exit.thread37.loopexit.us ], [ %i.bh, %bb.h ]
  tail call fastcc void @background_work_sleep_once(ptr noundef %0, ptr noundef %i.cp, i32 noundef 0)
  br label %.backedge.us.backedge

.backedge.us.backedge:                            ; preds = %check_background_thread_creation.exit.thread.us, %background_thread_pause_check.exit.us
  br label %.backedge.us, !llvm.loop !76

check_background_thread_creation.exit.thread37.loopexit.us: ; preds = %bb.m
  %i.cq = load ptr, ptr @je_background_thread_info, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.cr), !inline_history !74
  %.pre59 = load ptr, ptr @je_background_thread_info, align 8, !tbaa !23
  br label %check_background_thread_creation.exit.thread.us

.split.us:                                        ; preds = %malloc_mutex_lock.exit30.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.ct = load i8, ptr %i.x, align 8, !tbaa !32
  %i.cu = icmp eq i8 %i.ct, 0
  %i.cv = load i8, ptr %i.y, align 1, !tbaa !32
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.y, align 1, !tbaa !32
  br i1 %i.cu, label %bb.c, label %pre_reentrancy.exit.i

check_background_thread_creation.exit.thread:     ; preds = %bb.b, %check_background_thread_creation.exit.thread37
  %i.cx = phi ptr [ %i.ae, %bb.b ], [ %.pre58, %check_background_thread_creation.exit.thread37 ]
  tail call fastcc void @background_work_sleep_once(ptr noundef %0, ptr noundef %i.cx, i32 noundef 0)
  br label %.outer.split.backedge

.outer.split.backedge:                            ; preds = %check_background_thread_creation.exit.thread, %background_thread_pause_check.exit
  br label %.outer.split, !llvm.loop !76

.lr.ph52:                                         ; preds = %.preheader, %bb.u
  %i.cy = phi i64 [ %i.dy, %bb.u ], [ 1, %.preheader ] ; 2 uses
  %.151 = phi i32 [ %i.dx, %bb.u ], [ 1, %.preheader ]
  %i.cz = load ptr, ptr @je_background_thread_info, align 8, !tbaa !23
  %i.da = getelementptr inbounds nuw [208 x i8], ptr %i.cz, i64 %i.cy ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !39, !range !25, !noundef !26
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph52
  %i.de = tail call fastcc zeroext i1 @background_threads_disable_single(ptr noundef %0, ptr noundef %i.da) ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %.lr.ph52
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 128 ; 2 uses
  %i.dg = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.df) #12
  %.not.i26 = icmp eq i32 %i.dg, 0
  br i1 %.not.i26, label %malloc_mutex_trylock_final.exit.i, label %bb.p

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  store atomic i8 1, ptr %i.dh monotonic, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.di) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %malloc_mutex_trylock_final.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 112 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !14
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 104 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.dn, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %0, ptr %i.dm, align 8, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !21
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.q, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 168 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !27
  %.not25 = icmp eq i32 %i.ds, 0
  br i1 %.not25, label %bb.t, label %bb.s

bb.s:                                             ; preds = %malloc_mutex_lock.exit
  %i.dt = load i64, ptr @je_n_background_threads, align 8, !tbaa !22
  %i.du = add i64 %i.dt, -1
  store i64 %i.du, ptr @je_n_background_threads, align 8, !tbaa !22
  store i32 0, ptr %i.dr, align 8, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %malloc_mutex_lock.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  store atomic i8 0, ptr %i.dv monotonic, align 8
  %i.dw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.df) #12 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %i.dx = add i32 %.151, 1                        ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = icmp ugt i64 %.fr53, %i.dy
  br i1 %i.dz, label %.lr.ph52, label %._crit_edge.loopexit, !llvm.loop !77

._crit_edge.loopexit:                             ; preds = %bb.u
  %.pre = load ptr, ptr @je_background_thread_info, align 8, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ea = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ah, %.preheader ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  store i32 0, ptr %i.eb, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @background_work_sleep_once(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 7 uses
  %4 = alloca %struct.nstime_t, align 8           ; 6 uses
  %5 = alloca %struct.nstime_t, align 8           ; 5 uses
  %6 = alloca %struct.nstime_t, align 8           ; 6 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.nstime_t, align 8           ; 6 uses
  %i.a = tail call i32 @je_narenas_total_get() #12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 3 uses
  %i.c = load atomic i8, ptr %i.b acquire, align 1, !range !25, !noundef !26
  %i.d = icmp ult i32 %2, %i.a
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.02227.us = phi i32 [ %i.n, %bb.c ], [ %2, %.lr.ph ] ; 2 uses
  %.02326.us = phi i64 [ %.2.us, %bb.c ], [ -1, %.lr.ph ] ; 3 uses
  %i.f = zext i32 %.02227.us to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not.us = icmp eq ptr %i.h, null
  %i.i = icmp ult i64 %.02326.us, 100000001
  %or.cond = select i1 %.not.us, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12288
  %i.k = tail call i64 @je_pa_shard_time_until_deferred_work(ptr noundef %0, ptr noundef nonnull %i.j) #12
  %spec.select.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.02326.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %.2.us = phi i64 [ %.02326.us, %.lr.ph.split.us ], [ %spec.select.us, %bb.b ] ; 2 uses
  %i.l = load i64, ptr @je_max_background_threads, align 8, !tbaa !22
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %.02227.us, %i.m                 ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.a
  br i1 %i.o, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.j, %bb.c, %bb.a
  %.022.lcssa = phi i64 [ -1, %bb.a ], [ %.2.us, %bb.c ], [ %.2, %bb.j ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 0, ptr %i.s, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.t = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.u = load i64, ptr %3, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82
  %i.x = mul nsw i64 %i.w, 1000
  call void @je_nstime_init2(ptr noundef nonnull %4, i64 noundef %i.u, i64 noundef %i.x) #12
  %i.y = icmp eq i64 %.022.lcssa, -1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  store atomic i8 1, ptr %i.b release, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @je_nstime_init(ptr noundef nonnull %i.z, i64 noundef -1) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store atomic i8 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ad = call i32 @pthread_cond_wait(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #12 ; 0 uses
  store atomic i8 1, ptr %i.aa monotonic, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ae = call i64 @llvm.umax.i64(i64 %.022.lcssa, i64 100000000) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @je_nstime_init_update(ptr noundef nonnull %5) #12
  call void @je_nstime_iadd(ptr noundef nonnull %5, i64 noundef %i.ae) #12
  %i.af = call i64 @je_nstime_ns(ptr noundef nonnull %5) #12 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = zext i1 %i.ag to i8
  store atomic i8 %i.ah, ptr %i.b release, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @je_nstime_init(ptr noundef nonnull %i.ai, i64 noundef %i.af) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @je_nstime_copy(ptr noundef nonnull %6, ptr noundef nonnull %4) #12
  call void @je_nstime_iadd(ptr noundef nonnull %6, i64 noundef %i.ae) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.aj = call i64 @je_nstime_sec(ptr noundef nonnull %6) #12
  store i64 %i.aj, ptr %7, align 8, !tbaa !83
  %i.ak = call i64 @je_nstime_nsec(ptr noundef nonnull %6) #12
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store atomic i8 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ap = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %7) #12 ; 0 uses
  store atomic i8 1, ptr %i.am monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ar = load i64, ptr %3, align 8, !tbaa !80
  %i.as = load i64, ptr %i.v, align 8, !tbaa !82
  %i.at = mul nsw i64 %i.as, 1000
  call void @je_nstime_init2(ptr noundef nonnull %8, i64 noundef %i.ar, i64 noundef %i.at) #12
  %i.au = call i32 @je_nstime_compare(ptr noundef nonnull %8, ptr noundef nonnull %4) #12
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.g, label %background_thread_sleep.exit

bb.g:                                             ; preds = %bb.f
  call void @je_nstime_subtract(ptr noundef nonnull %8, ptr noundef nonnull %4) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @je_nstime_add(ptr noundef nonnull %i.aw, ptr noundef nonnull %8) #12
  br label %background_thread_sleep.exit

background_thread_sleep.exit:                     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.02227 = phi i32 [ %i.bf, %bb.j ], [ %2, %.lr.ph ] ; 2 uses
  %.02326 = phi i64 [ %.2, %bb.j ], [ -1, %.lr.ph ] ; 4 uses
  %i.ax = zext i32 %.02227 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ax
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  tail call void @je_arena_do_deferred_work(ptr noundef %0, ptr noundef nonnull %i.az) #12
  %i.ba = icmp ult i64 %.02326, 100000001
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12288
  %i.bc = tail call i64 @je_pa_shard_time_until_deferred_work(ptr noundef %0, ptr noundef nonnull %i.bb) #12
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %.02326)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.lr.ph.split, %bb.i
  %.2 = phi i64 [ %.02326, %.lr.ph.split ], [ %spec.select, %bb.i ], [ %.02326, %bb.h ] ; 2 uses
  %i.bd = load i64, ptr @je_max_background_threads, align 8, !tbaa !22
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add i32 %.02227, %i.be                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %i.a
  br i1 %i.bg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !78
}

declare void @je_nstime_init(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @je_arena_do_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @je_pa_shard_time_until_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @je_nstime_init2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @je_nstime_init_update(ptr noundef) local_unnamed_addr #3

declare void @je_nstime_iadd(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @je_nstime_sec(ptr noundef) local_unnamed_addr #3

declare i64 @je_nstime_nsec(ptr noundef) local_unnamed_addr #3

declare i32 @je_nstime_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_tsd_state_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!15, !17, i64 56}
!15 = !{!"", !16, i64 0, !16, i64 8, !17, i64 16, !17, i64 24, !9, i64 32, !18, i64 36, !17, i64 40, !19, i64 48, !17, i64 56}
!16 = !{!"", !17, i64 0}
!17 = !{!"long", !10, i64 0}
!18 = !{!"", !9, i64 0}
!19 = !{!"p1 _ZTS6tsdn_s", !13, i64 0}
!20 = !{!15, !19, i64 48}
!21 = !{!15, !17, i64 40}
!22 = !{!17, !17, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS24background_thread_info_s", !13, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!28, !9, i64 168}
!28 = !{!"background_thread_info_s", !17, i64 0, !10, i64 8, !29, i64 56, !9, i64 168, !30, i64 172, !16, i64 176, !17, i64 184, !17, i64 192, !16, i64 200}
!29 = !{!"malloc_mutex_s", !10, i64 0}
!30 = !{!"", !31, i64 0}
!31 = !{!"_Bool", !10, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{ptr @background_thread_create_signals_masked}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"je_pthread_create_wrapper: argument 0"}
!36 = distinct !{!36, !"je_pthread_create_wrapper"}
!37 = distinct !{!37, !36, !"je_pthread_create_wrapper: argument 1"}
!38 = !{ptr @background_thread_create_signals_masked, ptr @je_pthread_create_wrapper}
!39 = !{!31, !31, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = !{!28, !17, i64 0}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !41}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !41}
!49 = !{!50, !17, i64 0}
!50 = !{!"background_thread_stats_s", !17, i64 0, !17, i64 8, !16, i64 16, !15, i64 24}
!51 = !{!50, !17, i64 8}
!52 = !{!28, !17, i64 192}
!53 = !{!15, !17, i64 16}
!54 = !{!15, !17, i64 24}
!55 = !{!15, !9, i64 32}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !41}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"je_pthread_create_wrapper: argument 0"}
!60 = distinct !{!60, !"je_pthread_create_wrapper"}
!61 = distinct !{!61, !60, !"je_pthread_create_wrapper: argument 1"}
!62 = !{ptr @je_pthread_create_wrapper}
!63 = !{!9, !9, i64 0}
!64 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!65 = distinct !{null}
!66 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"branch_weights", i32 8, i32 24}
!72 = distinct !{!72, !41, !69, !70}
!73 = distinct !{!73, !41, !69}
!74 = distinct !{null}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = !{!28, !17, i64 184}
!80 = !{!81, !17, i64 0}
!81 = !{!"timeval", !17, i64 0, !17, i64 8}
!82 = !{!81, !17, i64 8}
!83 = !{!84, !17, i64 0}
!84 = !{!"timespec", !17, i64 0, !17, i64 8}
!85 = !{!84, !17, i64 8}
end_hunk_0
