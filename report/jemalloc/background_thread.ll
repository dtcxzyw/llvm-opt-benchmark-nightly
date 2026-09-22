Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/background_thread?download=true
inline.NumInlined: 93
inline.NumDeleted: 26
begin_hunk_0_@background_thread_create_signals_masked:bb.a
bb.d:                                             ; preds = %bb.c
  call void @abort() #13
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @background_thread_entry(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = tail call i64 @pthread_self() #14
  %i.d = tail call i32 @pthread_setname_np(i64 noundef %i.c, ptr noundef nonnull @.str.4) #12 ; 0 uses
  %i.e = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !67
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.f = icmp ult i32 %i.b, 1024
  br i1 %i.f, label %bb.c, label %set_current_thread_affinity.exit

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.a, 63
  %i.h = shl nuw i64 1, %i.g
  %i.i = lshr i64 %i.a, 6
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  %i.m = or i64 %i.l, %i.h
  store i64 %i.m, ptr %i.k, align 8, !tbaa !22
  br label %set_current_thread_affinity.exit

set_current_thread_affinity.exit:                 ; preds = %bb.b, %bb.c
  %i.n = call i32 @sched_setaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.d

bb.d:                                             ; preds = %set_current_thread_affinity.exit, %bb.a
  %i.o = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 920
  %i.q = load i8, ptr %i.p, align 8, !tbaa !32
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.r = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext true) #12
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.d ] ; 7 uses
  call void @je_tsd_state_set(ptr noundef %.0.i, i8 noundef zeroext 5) #12
  %i.s = load ptr, ptr @je_background_thread_info, align 8, !tbaa !24
  %i.t = and i64 %i.a, 4294967295
  %i.u = getelementptr inbounds nuw [208 x i8], ptr %i.s, i64 %i.t ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  %i.x = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.w) #12, !inline_history !65
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.f

malloc_mutex_trylock_final.exit.i.i:              ; preds = %tsd_fetch_impl.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store atomic i8 1, ptr %i.y monotonic, align 1
  br label %bb.g

bb.f:                                             ; preds = %tsd_fetch_impl.exit
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.v) #12, !inline_history !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_trylock_final.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.ad, %.0.i
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.0.i, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 172 ; 2 uses
  store atomic i8 1, ptr %i.ah release, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 176 ; 2 uses
  call void @je_nstime_init(ptr noundef nonnull %i.ai, i64 noundef -1) #12, !inline_history !65
  %i.aj = icmp eq i32 %i.b, 0
  br i1 %i.aj, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %malloc_mutex_lock.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  br label %.backedge.i

bb.i:                                             ; preds = %malloc_mutex_lock.exit.i
  call fastcc void @background_thread0_work(ptr noundef %.0.i), !inline_history !65
  br label %background_work.exit

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !31
  switch i32 %i.am, label %bb.j [
    i32 0, label %background_work.exit
    i32 2, label %background_thread_pause_check.exit.i
  ], !prof !37

background_thread_pause_check.exit.i:             ; preds = %.backedge.i
  store atomic i8 0, ptr %i.al monotonic, align 8
  %i.an = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #12, !inline_history !65 ; 0 uses
  call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull @je_background_thread_lock), !inline_history !65
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64) monotonic, align 8
  %i.ao = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 72)) #12, !inline_history !65 ; 0 uses
  call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull %i.v), !inline_history !65
  br label %.backedge.i.backedge

bb.j:                                             ; preds = %.backedge.i
  call fastcc void @background_work_sleep_once(ptr noundef %.0.i, ptr noundef nonnull %i.u, i32 noundef %i.b), !inline_history !65
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.j, %background_thread_pause_check.exit.i
  br label %.backedge.i, !llvm.loop !66

background_work.exit:                             ; preds = %.backedge.i, %bb.i
  store atomic i8 0, ptr %i.ah release, align 4
  call void @je_nstime_init(ptr noundef nonnull %i.ai, i64 noundef 0) #12, !inline_history !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store atomic i8 0, ptr %i.ap monotonic, align 8
  %i.aq = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #12, !inline_history !65 ; 0 uses
  ret ptr null
}

declare void @je_malloc_printf(ptr noundef, ...) local_unnamed_addr #3

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_setname_np(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @background_thread0_work(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_max_background_threads, align 8, !tbaa !22
  %.fr53 = freeze i64 %i.a                        ; 9 uses
  %i.b = alloca i8, i64 %.fr53, align 16          ; 6 uses
  %i.c = icmp ugt i64 %.fr53, 1                   ; 2 uses
  br i1 %i.c, label %iter.check, label %.outer.split

iter.check:                                       ; preds = %bb.a
  %i.d = add i64 %.fr53, -1                       ; 5 uses
  %min.iters.check = icmp ult i64 %.fr53, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.e = add i64 %.fr53, -2                       ; 2 uses
  %i.f = and i64 %i.e, 4294967294
  %i.g = icmp eq i64 %i.f, 4294967294
  %i.h = icmp ugt i64 %i.e, 4294967295
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check75 = icmp ult i64 %.fr53, 33
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.k = or disjoint i64 %n.vec, 1
  %i.l = trunc i64 %n.vec to i32
  %i.m = or disjoint i32 %i.l, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store <16 x i8> zeroinitializer, ptr %i.o, align 1, !tbaa !33
  store <16 x i8> zeroinitializer, ptr %i.p, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.outer.split.us.lr.ph, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %i.d, -8                     ; 4 uses
  %i.r = or disjoint i64 %n.vec77, 1
  %i.s = trunc i64 %n.vec77 to i32
  %i.t = or disjoint i32 %i.s, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next79, %vec.epilog.vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %index78
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store <8 x i8> zeroinitializer, ptr %i.v, align 1, !tbaa !33
  %index.next79 = add nuw i64 %index78, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next79, %n.vec77
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n80 = icmp eq i64 %i.d, %n.vec77
  br i1 %cmp.n80, label %.outer.split.us.lr.ph, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  %.044.ph = phi i32 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph

.outer.split.us.lr.ph:                            ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  br label %.outer.split.us

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.z = phi i64 [ %i.ac, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.044 = phi i32 [ %i.ab, %.lr.ph ], [ %.044.ph, %.lr.ph.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !33
  %i.ab = add i32 %.044, 1                        ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp ugt i64 %.fr53, %i.ac
  br i1 %i.ad, label %.lr.ph, label %.outer.split.us.lr.ph, !llvm.loop !70

.outer.split:                                     ; preds = %bb.a, %.outer.split.backedge
  %i.ae = load ptr, ptr @je_background_thread_info, align 8, !tbaa !24 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  switch i32 %i.ag, label %bb.b [
    i32 0, label %.preheader
    i32 2, label %background_thread_pause_check.exit
  ], !prof !37

.preheader:                                       ; preds = %.outer.split, %.backedge.us
  %i.ah = phi ptr [ %i.bh, %.backedge.us ], [ %i.ae, %.outer.split ]
  br i1 %i.c, label %.lr.ph52, label %._crit_edge

background_thread_pause_check.exit:               ; preds = %.outer.split
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store atomic i8 0, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ak) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull @je_background_thread_lock)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64) monotonic, align 8
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 72)) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.ai)
  br label %.outer.split.backedge

bb.b:                                             ; preds = %.outer.split
  %i.an = load i64, ptr @je_n_background_threads, align 8, !tbaa !22
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %check_background_thread_creation.exit.thread, label %check_background_thread_creation.exit.thread37, !prof !36

check_background_thread_creation.exit.thread37:   ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store atomic i8 0, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aq) #12, !inline_history !71 ; 0 uses
  %i.as = load ptr, ptr @je_background_thread_info, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.at), !inline_history !71
  %.pre58 = load ptr, ptr @je_background_thread_info, align 8, !tbaa !24
  br label %check_background_thread_creation.exit.thread

bb.c:                                             ; preds = %.split.us
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !71
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.c, %.split.us
  %i.au = inttoptr i64 %indvars.iv to ptr
  %i.av = tail call fastcc i32 @background_thread_create_signals_masked(ptr noundef nonnull %i.by, ptr noundef nonnull %i.au), !inline_history !71 ; 2 uses
  %i.aw = load i8, ptr %i.y, align 1, !tbaa !32
  %i.ax = add i8 %i.aw, -1                        ; 2 uses
  store i8 %i.ax, ptr %i.y, align 1, !tbaa !32
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %post_reentrancy.exit.i

bb.d:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !71
  br label %post_reentrancy.exit.i

post_reentrancy.exit.i:                           ; preds = %bb.d, %pre_reentrancy.exit.i
  %i.az = icmp eq i32 %i.av, 0
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %post_reentrancy.exit.i
  %i.ba = add i32 %.032.ph50, 1
  store i8 1, ptr %i.cs, align 1, !tbaa !33
  br label %check_background_thread_creation.exit

bb.f:                                             ; preds = %post_reentrancy.exit.i
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.5, i32 noundef %i.av) #12, !inline_history !71
  %i.bb = load i8, ptr @je_opt_abort, align 1, !tbaa !33, !range !25, !noundef !26
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.g, label %check_background_thread_creation.exit

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #13, !inline_history !71
  unreachable

check_background_thread_creation.exit:            ; preds = %bb.e, %bb.f
  %.133 = phi i32 [ %.032.ph50, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bd = load ptr, ptr @je_background_thread_info, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef nonnull %0, ptr noundef nonnull %i.be), !inline_history !71
  %i.bf = zext i32 %.133 to i64
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %check_background_thread_creation.exit, %.outer.split.us.lr.ph
  %i.bg = phi i64 [ 1, %.outer.split.us.lr.ph ], [ %i.bf, %check_background_thread_creation.exit ]
  %.032.ph50 = phi i32 [ 1, %.outer.split.us.lr.ph ], [ %.133, %check_background_thread_creation.exit ] ; 2 uses
  br label %.backedge.us

.backedge.us:                                     ; preds = %.backedge.us.backedge, %.outer.split.us
  %i.bh = load ptr, ptr @je_background_thread_info, align 8, !tbaa !24 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !31
  switch i32 %i.bj, label %bb.h [
    i32 0, label %.preheader
    i32 2, label %background_thread_pause_check.exit.us
  ], !prof !37

background_thread_pause_check.exit.us:            ; preds = %.backedge.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store atomic i8 0, ptr %i.bl monotonic, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bm) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull @je_background_thread_lock)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64) monotonic, align 8
  %i.bo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 72)) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.bk)
  br label %.backedge.us.backedge

bb.h:                                             ; preds = %.backedge.us
  %i.bp = load i64, ptr @je_n_background_threads, align 8, !tbaa !22
  %i.bq = icmp eq i64 %i.bp, %i.bg
  br i1 %i.bq, label %check_background_thread_creation.exit.thread.us, label %.lr.ph.preheader.i.us, !prof !36

.lr.ph.preheader.i.us:                            ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store atomic i8 0, ptr %i.br monotonic, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bs) #12, !inline_history !71 ; 0 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.m, %.lr.ph.preheader.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 1, %.lr.ph.preheader.i.us ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !33, !range !25, !noundef !26
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.bx = load ptr, ptr @je_background_thread_info, align 8, !tbaa !24
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
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !19
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
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !31
  %.not.i.us = icmp eq i32 %i.cm, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  store atomic i8 0, ptr %i.cn monotonic, align 8
  %i.co = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bz) #12, !inline_history !71 ; 0 uses
  br i1 %.not.i.us, label %.split.us, label %bb.m

bb.m:                                             ; preds = %malloc_mutex_lock.exit30.us, %.lr.ph.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.fr53
  br i1 %exitcond.not, label %check_background_thread_creation.exit.thread37.loopexit.us, label %.lr.ph.i.us, !llvm.loop !72

check_background_thread_creation.exit.thread.us:  ; preds = %check_background_thread_creation.exit.thread37.loopexit.us, %bb.h
end_hunk_0
