inline.NumInlined: 91
inline.NumDeleted: 25
begin_hunk_0_@background_thread_create_signals_masked:bb.a
bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @background_thread_entry(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !27
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext true) #12
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 7 uses
  tail call void @duckdb_je_tsd_state_set(ptr noundef %.0.i, i8 noundef zeroext 5) #12
  %i.g = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.h = and i64 %i.a, 4294967295
  %i.i = getelementptr inbounds nuw [208 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 3 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #12, !inline_history !39
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %atomic_store_b.exit.i.i

atomic_store_b.exit.i.i:                          ; preds = %tsd_fetch_impl.exit
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.j) #12, !inline_history !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store atomic i8 1, ptr %i.m monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %atomic_store_b.exit.i.i, %tsd_fetch_impl.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.r, %.0.i
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !16
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 172 ; 2 uses
  store atomic i8 1, ptr %i.v release, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  tail call void @duckdb_je_nstime_init(ptr noundef nonnull %i.w, i64 noundef -1) #12, !inline_history !39
  %i.x = icmp eq i32 %i.b, 0
  br i1 %i.x, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %malloc_mutex_lock.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  br label %.backedge.i

bb.e:                                             ; preds = %malloc_mutex_lock.exit.i
  tail call fastcc void @background_thread0_work(ptr noundef %.0.i), !inline_history !39
  br label %background_work.exit

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !22
  switch i32 %i.aa, label %bb.f [
    i32 0, label %background_work.exit
    i32 2, label %background_thread_pause_check.exit.i
  ], !prof !40

background_thread_pause_check.exit.i:             ; preds = %.backedge.i
  store atomic i8 0, ptr %i.z monotonic, align 8
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #12, !inline_history !39 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull @duckdb_je_background_thread_lock), !inline_history !39
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #12, !inline_history !39 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull %i.j), !inline_history !39
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %.backedge.i
  tail call fastcc void @background_work_sleep_once(ptr noundef %.0.i, ptr noundef nonnull %i.i, i32 noundef %i.b), !inline_history !39
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.f, %background_thread_pause_check.exit.i
  br label %.backedge.i

background_work.exit:                             ; preds = %.backedge.i, %bb.e
  store atomic i8 0, ptr %i.v release, align 4
  tail call void @duckdb_je_nstime_init(ptr noundef nonnull %i.w, i64 noundef 0) #12, !inline_history !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store atomic i8 0, ptr %i.ad monotonic, align 8
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #12, !inline_history !39 ; 0 uses
  ret ptr null
}

declare void @duckdb_je_malloc_printf(ptr noundef, ...) local_unnamed_addr #3

declare void @duckdb_je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @background_thread0_work(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !17
  %.fr54 = freeze i64 %i.a                        ; 9 uses
  %i.b = alloca i8, i64 %.fr54, align 16          ; 6 uses
  %i.c = icmp ugt i64 %.fr54, 1                   ; 2 uses
  br i1 %i.c, label %iter.check, label %.outer.split

iter.check:                                       ; preds = %bb.a
  %i.d = add i64 %.fr54, -1                       ; 5 uses
  %min.iters.check = icmp ult i64 %.fr54, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.e = add i64 %.fr54, -2                       ; 2 uses
  %i.f = and i64 %i.e, 4294967294
  %i.g = icmp eq i64 %i.f, 4294967294
  %i.h = icmp ugt i64 %i.e, 4294967295
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check76 = icmp ult i64 %.fr54, 33
  br i1 %min.iters.check76, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.j = or disjoint i64 %n.vec, 1
  %i.k = trunc i64 %n.vec to i32
  %i.l = or disjoint i32 %i.k, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  store <16 x i8> zeroinitializer, ptr %i.n, align 1, !tbaa !28
  store <16 x i8> zeroinitializer, ptr %i.o, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.outer.split.us.lr.ph, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %i.d, -8                     ; 4 uses
  %i.q = or disjoint i64 %n.vec79, 1
  %i.r = trunc i64 %n.vec79 to i32
  %i.s = or disjoint i32 %i.r, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %index80
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store <8 x i8> zeroinitializer, ptr %i.u, align 1, !tbaa !28
  %index.next81 = add nuw i64 %index80, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next81, %n.vec79
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.d, %n.vec79
  br i1 %cmp.n82, label %.outer.split.us.lr.ph, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  %.045.ph = phi i32 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %.lr.ph

.outer.split.us.lr.ph:                            ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  br label %.outer.split.us

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.y = phi i64 [ %i.ab, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.045 = phi i32 [ %i.aa, %.lr.ph ], [ %.045.ph, %.lr.ph.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !28
  %i.aa = add i32 %.045, 1                        ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i64 %.fr54, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.outer.split.us.lr.ph, !llvm.loop !46

.outer.split:                                     ; preds = %bb.a, %.outer.split.backedge
  %i.ad = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !22
  switch i32 %i.af, label %bb.b [
    i32 0, label %.preheader
    i32 2, label %background_thread_pause_check.exit
  ], !prof !40

.preheader:                                       ; preds = %.outer.split, %.backedge.us
  %i.ag = phi ptr [ %i.bg, %.backedge.us ], [ %i.ad, %.outer.split ]
  br i1 %i.c, label %.lr.ph53, label %._crit_edge

background_thread_pause_check.exit:               ; preds = %.outer.split
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store atomic i8 0, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aj) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull @duckdb_je_background_thread_lock)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.ah)
  br label %.outer.split.backedge

bb.b:                                             ; preds = %.outer.split
  %i.am = load i64, ptr @duckdb_je_n_background_threads, align 8, !tbaa !17
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %check_background_thread_creation.exit.thread, label %check_background_thread_creation.exit.thread38, !prof !38

check_background_thread_creation.exit.thread38:   ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store atomic i8 0, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.aq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ap) #12, !inline_history !47 ; 0 uses
  %i.ar = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.as), !inline_history !47
  %.pre59 = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  br label %check_background_thread_creation.exit.thread

bb.c:                                             ; preds = %.split.us
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !47
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.c, %.split.us
  %i.at = inttoptr i64 %indvars.iv to ptr
  %i.au = tail call fastcc i32 @background_thread_create_signals_masked(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.at), !inline_history !47 ; 2 uses
  %i.av = load i8, ptr %i.x, align 1, !tbaa !27
  %i.aw = add i8 %i.av, -1                        ; 2 uses
  store i8 %i.aw, ptr %i.x, align 1, !tbaa !27
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %post_reentrancy.exit.i

bb.d:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !47
  br label %post_reentrancy.exit.i

post_reentrancy.exit.i:                           ; preds = %bb.d, %pre_reentrancy.exit.i
  %i.ay = icmp eq i32 %i.au, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %post_reentrancy.exit.i
  %i.az = add i32 %.033.ph51, 1
  store i8 1, ptr %i.cr, align 1, !tbaa !28
  br label %check_background_thread_creation.exit

bb.f:                                             ; preds = %post_reentrancy.exit.i
  tail call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.4, i32 noundef %i.au) #12, !inline_history !47
  %i.ba = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !28, !range !20, !noundef !21
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %check_background_thread_creation.exit

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #13, !inline_history !47
  unreachable

check_background_thread_creation.exit:            ; preds = %bb.e, %bb.f
  %.134 = phi i32 [ %.033.ph51, %bb.f ], [ %i.az, %bb.e ] ; 2 uses
  %i.bc = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef nonnull %0, ptr noundef nonnull %i.bd), !inline_history !47
  %i.be = zext i32 %.134 to i64
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %check_background_thread_creation.exit, %.outer.split.us.lr.ph
  %i.bf = phi i64 [ 1, %.outer.split.us.lr.ph ], [ %i.be, %check_background_thread_creation.exit ]
  %.033.ph51 = phi i32 [ 1, %.outer.split.us.lr.ph ], [ %.134, %check_background_thread_creation.exit ] ; 2 uses
  br label %.backedge.us

.backedge.us:                                     ; preds = %.backedge.us.backedge, %.outer.split.us
  %i.bg = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 168
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !22
  switch i32 %i.bi, label %bb.h [
    i32 0, label %.preheader
    i32 2, label %background_thread_pause_check.exit.us
  ], !prof !40

background_thread_pause_check.exit.us:            ; preds = %.backedge.us
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  store atomic i8 0, ptr %i.bk monotonic, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bl) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull @duckdb_je_background_thread_lock)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  %i.bn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.bj)
  br label %.backedge.us.backedge

bb.h:                                             ; preds = %.backedge.us
  %i.bo = load i64, ptr @duckdb_je_n_background_threads, align 8, !tbaa !17
  %i.bp = icmp eq i64 %i.bo, %i.bf
  br i1 %i.bp, label %check_background_thread_creation.exit.thread.us, label %.lr.ph.preheader.i.us, !prof !38

.lr.ph.preheader.i.us:                            ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  store atomic i8 0, ptr %i.bq monotonic, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.br) #12, !inline_history !47 ; 0 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.l, %.lr.ph.preheader.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 1, %.lr.ph.preheader.i.us ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !28, !range !20, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.bw = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw [208 x i8], ptr %i.bw, i64 %indvars.iv ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 128 ; 2 uses
  %i.bz = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.by) #12
  %.not.i28.us = icmp eq i32 %i.bz, 0
  br i1 %.not.i28.us, label %bb.j, label %atomic_store_b.exit.i29.us

atomic_store_b.exit.i29.us:                       ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ca) #12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  store atomic i8 1, ptr %i.cb monotonic, align 1
  br label %bb.j

bb.j:                                             ; preds = %atomic_store_b.exit.i29.us, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 112 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !8
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 104 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15
  %.not.i.i30.us = icmp eq ptr %i.cg, %0
  br i1 %.not.i.i30.us, label %malloc_mutex_lock.exit31.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 96 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !16
  br label %malloc_mutex_lock.exit31.us

malloc_mutex_lock.exit31.us:                      ; preds = %bb.k, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 168
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !22
  %.not.i.us = icmp eq i32 %i.cl, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  store atomic i8 0, ptr %i.cm monotonic, align 8
  %i.cn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.by) #12, !inline_history !47 ; 0 uses
  br i1 %.not.i.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %malloc_mutex_lock.exit31.us, %.lr.ph.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.fr54
  br i1 %exitcond.not, label %check_background_thread_creation.exit.thread38.loopexit.us, label %.lr.ph.i.us

check_background_thread_creation.exit.thread.us:  ; preds = %check_background_thread_creation.exit.thread38.loopexit.us, %bb.h
  %i.co = phi ptr [ %.pre60, %check_background_thread_creation.exit.thread38.loopexit.us ], [ %i.bg, %bb.h ]
  tail call fastcc void @background_work_sleep_once(ptr noundef %0, ptr noundef %i.co, i32 noundef 0)
  br label %.backedge.us.backedge

.backedge.us.backedge:                            ; preds = %check_background_thread_creation.exit.thread.us, %background_thread_pause_check.exit.us
  br label %.backedge.us

check_background_thread_creation.exit.thread38.loopexit.us: ; preds = %bb.l
  %i.cp = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.cq), !inline_history !47
  %.pre60 = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  br label %check_background_thread_creation.exit.thread.us

.split.us:                                        ; preds = %malloc_mutex_lock.exit31.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.cs = load i8, ptr %i.w, align 8, !tbaa !27
  %i.ct = icmp eq i8 %i.cs, 0
  %i.cu = load i8, ptr %i.x, align 1, !tbaa !27
  %i.cv = add i8 %i.cu, 1
  store i8 %i.cv, ptr %i.x, align 1, !tbaa !27
  br i1 %i.ct, label %bb.c, label %pre_reentrancy.exit.i

check_background_thread_creation.exit.thread:     ; preds = %bb.b, %check_background_thread_creation.exit.thread38
  %i.cw = phi ptr [ %i.ad, %bb.b ], [ %.pre59, %check_background_thread_creation.exit.thread38 ]
  tail call fastcc void @background_work_sleep_once(ptr noundef %0, ptr noundef %i.cw, i32 noundef 0)
  br label %.outer.split.backedge

.outer.split.backedge:                            ; preds = %check_background_thread_creation.exit.thread, %background_thread_pause_check.exit
  br label %.outer.split

.lr.ph53:                                         ; preds = %.preheader, %bb.s
  %i.cx = phi i64 [ %i.dx, %bb.s ], [ 1, %.preheader ] ; 2 uses
  %.152 = phi i32 [ %i.dw, %bb.s ], [ 1, %.preheader ]
  %i.cy = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %i.cx ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cx
  %i.db = load i8, ptr %i.da, align 1, !tbaa !28, !range !20, !noundef !21
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph53
  %i.dd = tail call fastcc zeroext i1 @background_threads_disable_single(ptr noundef %0, ptr noundef %i.cz) ; 0 uses
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph53
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 128 ; 2 uses
  %i.df = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.de) #12
  %.not.i26 = icmp eq i32 %i.df, 0
  br i1 %.not.i26, label %bb.o, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.dg) #12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 120
  store atomic i8 1, ptr %i.dh monotonic, align 1
  br label %bb.o

bb.o:                                             ; preds = %atomic_store_b.exit.i, %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 112 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !8
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 104 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15
  %.not.i.i = icmp eq ptr %i.dm, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %0, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 96 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !16
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.o, %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 168 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !22
  %.not25 = icmp eq i32 %i.dr, 0
  br i1 %.not25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %malloc_mutex_lock.exit
  %i.ds = load i64, ptr @duckdb_je_n_background_threads, align 8, !tbaa !17
  %i.dt = add i64 %i.ds, -1
  store i64 %i.dt, ptr @duckdb_je_n_background_threads, align 8, !tbaa !17
  store i32 0, ptr %i.dq, align 8, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %malloc_mutex_lock.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 120
  store atomic i8 0, ptr %i.du monotonic, align 8
  %i.dv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.de) #12 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %i.dw = add i32 %.152, 1                        ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = icmp ugt i64 %.fr54, %i.dx
  br i1 %i.dy, label %.lr.ph53, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.dz = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ag, %.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 168
  store i32 0, ptr %i.ea, align 8, !tbaa !22
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
  %i.a = tail call i32 @duckdb_je_narenas_total_get() #12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 3 uses
  %i.c = load atomic i8, ptr %i.b acquire, align 1, !range !20, !noundef !21
  %i.d = icmp ult i32 %2, %i.a
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.02227.us = phi i64 [ %.2.us, %bb.c ], [ -1, %.lr.ph ] ; 3 uses
  %.02326.us = phi i32 [ %i.n, %bb.c ], [ %2, %.lr.ph ] ; 2 uses
  %i.f = zext i32 %.02326.us to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not.us = icmp eq ptr %i.h, null
  %i.i = icmp ult i64 %.02227.us, 100000001
  %or.cond = select i1 %.not.us, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 10664
  %i.k = tail call i64 @duckdb_je_pa_shard_time_until_deferred_work(ptr noundef %0, ptr noundef nonnull %i.j) #12
  %spec.select.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.02227.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %.2.us = phi i64 [ %.02227.us, %.lr.ph.split.us ], [ %spec.select.us, %bb.b ] ; 2 uses
  %i.l = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !17
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %.02326.us, %i.m                 ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.a
  br i1 %i.o, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.c, %bb.a
  %.022.lcssa = phi i64 [ -1, %bb.a ], [ %.2.us, %bb.c ], [ %.2, %bb.j ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 0, ptr %i.s, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.t = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.u = load i64, ptr %3, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = mul nsw i64 %i.w, 1000
  call void @duckdb_je_nstime_init2(ptr noundef nonnull %4, i64 noundef %i.u, i64 noundef %i.x) #12
  %i.y = icmp eq i64 %.022.lcssa, -1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  store atomic i8 1, ptr %i.b release, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @duckdb_je_nstime_init(ptr noundef nonnull %i.z, i64 noundef -1) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = call i32 @pthread_cond_wait(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) #12 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = call i64 @llvm.umax.i64(i64 %.022.lcssa, i64 100000000) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @duckdb_je_nstime_init_update(ptr noundef nonnull %5) #12
  call void @duckdb_je_nstime_iadd(ptr noundef nonnull %5, i64 noundef %i.ad) #12
  %i.ae = call i64 @duckdb_je_nstime_ns(ptr noundef nonnull %5) #12 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  %i.ag = zext i1 %i.af to i8
  store atomic i8 %i.ag, ptr %i.b release, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @duckdb_je_nstime_init(ptr noundef nonnull %i.ah, i64 noundef %i.ae) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @duckdb_je_nstime_copy(ptr noundef nonnull %6, ptr noundef nonnull %4) #12
  call void @duckdb_je_nstime_iadd(ptr noundef nonnull %6, i64 noundef %i.ad) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ai = call i64 @duckdb_je_nstime_sec(ptr noundef nonnull %6) #12
  store i64 %i.ai, ptr %7, align 8, !tbaa !52
  %i.aj = call i64 @duckdb_je_nstime_nsec(ptr noundef nonnull %6) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.an = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %7) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ap = load i64, ptr %3, align 8, !tbaa !49
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !51
  %i.ar = mul nsw i64 %i.aq, 1000
  call void @duckdb_je_nstime_init2(ptr noundef nonnull %8, i64 noundef %i.ap, i64 noundef %i.ar) #12
  %i.as = call i32 @duckdb_je_nstime_compare(ptr noundef nonnull %8, ptr noundef nonnull %4) #12
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.g, label %background_thread_sleep.exit

bb.g:                                             ; preds = %bb.f
  call void @duckdb_je_nstime_subtract(ptr noundef nonnull %8, ptr noundef nonnull %4) #12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @duckdb_je_nstime_add(ptr noundef nonnull %i.au, ptr noundef nonnull %8) #12
  br label %background_thread_sleep.exit

background_thread_sleep.exit:                     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.02227 = phi i64 [ %.2, %bb.j ], [ -1, %.lr.ph ] ; 4 uses
  %.02326 = phi i32 [ %i.bd, %bb.j ], [ %2, %.lr.ph ] ; 2 uses
  %i.av = zext i32 %.02326 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.av
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  tail call void @duckdb_je_arena_do_deferred_work(ptr noundef %0, ptr noundef nonnull %i.ax) #12
  %i.ay = icmp ult i64 %.02227, 100000001
  br i1 %i.ay, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 10664
  %i.ba = tail call i64 @duckdb_je_pa_shard_time_until_deferred_work(ptr noundef %0, ptr noundef nonnull %i.az) #12
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %.02227)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.lr.ph.split, %bb.i
  %.2 = phi i64 [ %.02227, %.lr.ph.split ], [ %spec.select, %bb.i ], [ %.02227, %bb.h ] ; 2 uses
  %i.bb = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !17
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %.02326, %i.bc                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, %i.a
  br i1 %i.be, label %.lr.ph.split, label %._crit_edge
}

declare void @duckdb_je_nstime_init(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @duckdb_je_arena_do_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @duckdb_je_pa_shard_time_until_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @duckdb_je_nstime_init2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_nstime_init_update(ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_nstime_iadd(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @duckdb_je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @duckdb_je_nstime_sec(ptr noundef) local_unnamed_addr #3

declare i64 @duckdb_je_nstime_nsec(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @duckdb_je_nstime_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_tsd_state_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @duckdb_je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #3

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
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{ptr @pthread_create}
!8 = !{!9, !11, i64 56}
!9 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !4, i64 32, !12, i64 36, !11, i64 40, !13, i64 48, !11, i64 56}
!10 = !{!"", !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"", !4, i64 0}
!13 = !{!"p1 _ZTS6tsdn_s", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!9, !13, i64 48}
!16 = !{!9, !11, i64 40}
!17 = !{!11, !11, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS24background_thread_info_s", !14, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!23, !4, i64 168}
!23 = !{!"background_thread_info_s", !11, i64 0, !5, i64 8, !24, i64 56, !4, i64 168, !25, i64 172, !10, i64 176, !11, i64 184, !11, i64 192, !10, i64 200}
!24 = !{!"malloc_mutex_s", !5, i64 0}
!25 = !{!"", !26, i64 0}
!26 = !{!"_Bool", !5, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{!26, !26, i64 0}
!29 = !{!23, !11, i64 0}
!30 = !{!31, !11, i64 0}
!31 = !{!"background_thread_stats_s", !11, i64 0, !11, i64 8, !10, i64 16, !9, i64 24}
!32 = !{!31, !11, i64 8}
!33 = !{!23, !11, i64 192}
!34 = !{!9, !11, i64 16}
!35 = !{!9, !11, i64 24}
!36 = !{!9, !4, i64 32}
!37 = !{!14, !14, i64 0}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = distinct !{null}
!40 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 8, i32 24}
!45 = distinct !{!45, !42, !43}
!46 = distinct !{!46, !42}
!47 = distinct !{null}
!48 = !{!23, !11, i64 184}
!49 = !{!50, !11, i64 0}
!50 = !{!"timeval", !11, i64 0, !11, i64 8}
!51 = !{!50, !11, i64 8}
!52 = !{!53, !11, i64 0}
!53 = !{!"timespec", !11, i64 0, !11, i64 8}
!54 = !{!53, !11, i64 8}
end_hunk_0
