Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/jemalloc?download=true
inline.NumInlined: 639
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@je_arena_init:bb.a
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 64) monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @arenas_lock) #20, !inline_history !2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 56), align 8, !tbaa !46
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 56), align 8, !tbaa !46
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 48), align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 48), align 8, !tbaa !47
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 40), align 8, !tbaa !48
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 40), align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = icmp ugt i32 %1, 4094
  br i1 %i.g, label %arena_init_locked.exit.thread, label %bb.e

arena_init_locked.exit.thread:                    ; preds = %malloc_mutex_lock.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 64) monotonic, align 8
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.i = load atomic i32, ptr @narenas_total acquire, align 4
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %arena_init_locked.exit, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @je_arena_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) #20, !inline_history !4
  br label %arena_init_locked.exit

arena_init_locked.exit:                           ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.p, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 64) monotonic, align 8
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  %i.r = icmp eq i32 %1, 0
  br i1 %i.r, label %arena_new_create_background_thread.exit, label %bb.i

bb.i:                                             ; preds = %arena_init_locked.exit.thread, %arena_init_locked.exit
  %.0.i12 = phi ptr [ null, %arena_init_locked.exit.thread ], [ %.0.i, %arena_init_locked.exit ]
  %i.s = tail call zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %1) #20, !inline_history !5
  br i1 %i.s, label %bb.j, label %arena_new_create_background_thread.exit

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.90, i32 noundef %1) #20, !inline_history !5
  tail call void @abort() #21, !inline_history !5
  unreachable

arena_new_create_background_thread.exit:          ; preds = %arena_init_locked.exit, %bb.i
  %.0.i13 = phi ptr [ %.0.i, %arena_init_locked.exit ], [ %.0.i12, %bb.i ]
  ret ptr %.0.i13
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_migrate(ptr noundef initializes((200, 208)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  tail call void @je_arena_nthreads_dec(ptr noundef %1, i1 noundef zeroext false) #20
  tail call void @je_arena_nthreads_inc(ptr noundef %2, i1 noundef zeroext false) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %2, ptr %i.a, align 8, !tbaa !50
  %i.b = tail call i32 @je_arena_nthreads_get(ptr noundef %1, i1 noundef zeroext false) #20
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @je_arena_nthreads_dec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @je_arena_nthreads_inc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @je_arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_choose_hard(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.b = icmp ugt i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sched_getcpu() #20        ; 3 uses
  %i.d = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %percpu_arena_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @je_ncpus, align 4, !tbaa !20
  %i.g = lshr i32 %i.f, 1                         ; 2 uses
  %i.h = icmp ult i32 %i.c, %i.g
  %i.i = select i1 %i.h, i32 0, i32 %i.g
  %spec.select.i = sub nuw i32 %i.c, %i.i
  br label %percpu_arena_choose.exit

percpu_arena_choose.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.j = zext i32 %.0.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.j
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %arena_get.exit, !prof !21

bb.d:                                             ; preds = %percpu_arena_choose.exit
  %i.n = tail call ptr @je_arena_init(ptr noundef %0, i32 noundef %.0.i, ptr noundef nonnull @je_arena_config_default), !inline_history !0
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %percpu_arena_choose.exit, %bb.d
  %.0.i84 = phi ptr [ %i.n, %bb.d ], [ %i.l, %percpu_arena_choose.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %.0.i84, i64 80640 ; 2 uses
  %.val83 = load i32, ptr %i.o, align 64, !tbaa !96
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef %.val83, i1 noundef zeroext false)
  %.val = load i32, ptr %i.o, align 64, !tbaa !96
  %i.p = zext i32 %.val to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.p
  %i.r = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  tail call void @je_arena_nthreads_inc(ptr noundef %i.r, i1 noundef zeroext true) #20, !inline_history !153
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.r, ptr %i.s, align 8, !tbaa !50
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.t = load i32, ptr @je_narenas_auto, align 4, !tbaa !20 ; 3 uses
  %i.u = icmp ugt i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %arena_get.exit97

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 72)) #20, !inline_history !1
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.g

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.f
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 64) monotonic, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @arenas_lock) #20, !inline_history !2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %malloc_mutex_trylock_final.exit.i
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 56), align 8, !tbaa !46
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 56), align 8, !tbaa !46
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 48), align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.y, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 48), align 8, !tbaa !47
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 40), align 8, !tbaa !48
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 40), align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.h, %bb.i
  %i.ab = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %i.ac = icmp ugt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.loopexit111, %malloc_mutex_lock.exit
  %.sroa.0130.0 = phi i32 [ 0, %malloc_mutex_lock.exit ], [ %.sroa.0130.3, %.loopexit111 ] ; 4 uses
  %.sroa.10.0 = phi i32 [ 0, %malloc_mutex_lock.exit ], [ %.sroa.10.2, %.loopexit111 ] ; 4 uses
  %.0.lcssa = phi i32 [ %i.t, %malloc_mutex_lock.exit ], [ %.1, %.loopexit111 ] ; 10 uses
  %i.ad = icmp ugt i32 %.0.lcssa, 4094            ; 2 uses
  %i.ae = zext nneg i32 %.0.lcssa to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ae ; 2 uses
  %i.ag = zext i32 %.sroa.10.0 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ag ; 2 uses
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8
  %i.aj = tail call i32 @je_arena_nthreads_get(ptr noundef %i.ai, i1 noundef zeroext false) #20
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load i32, ptr @je_narenas_auto, align 4
  %i.am = icmp eq i32 %.0.lcssa, %i.al
  %or.cond.not.not159 = select i1 %i.ak, i1 true, i1 %i.am ; 2 uses
  br i1 %or.cond.not.not159, label %bb.k, label %bb.n

.lr.ph:                                           ; preds = %malloc_mutex_lock.exit, %.loopexit111
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit111 ], [ 1, %malloc_mutex_lock.exit ] ; 4 uses
  %.sroa.10.1 = phi i32 [ %.1, %.loopexit111 ], [ %i.t, %malloc_mutex_lock.exit ] ; 3 uses
  %.sroa.064.1194 = phi i32 [ %.sroa.10.2, %.loopexit111 ], [ 0, %malloc_mutex_lock.exit ] ; 3 uses
  %.0116 = phi i32 [ %.sroa.0130.3, %.loopexit111 ], [ 0, %malloc_mutex_lock.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv ; 3 uses
  %i.ao = load atomic ptr, ptr %i.an acquire, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %arena_get.exit88.preheader, !prof !21

arena_get.exit88.preheader:                       ; preds = %.lr.ph
  %i.aq = load atomic ptr, ptr %i.an acquire, align 8
  %i.ar = tail call i32 @je_arena_nthreads_get(ptr noundef %i.aq, i1 noundef zeroext false) #20
  %i.as = zext i32 %.sroa.064.1194 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.as
  %i.au = load atomic ptr, ptr %i.at acquire, align 8
  %i.av = tail call i32 @je_arena_nthreads_get(ptr noundef %i.au, i1 noundef zeroext false) #20
  %i.aw = icmp ult i32 %i.ar, %i.av
  %i.ax = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %spec.select155 = select i1 %i.aw, i32 %i.ax, i32 %.sroa.064.1194
  %i.ay = load atomic ptr, ptr %i.an acquire, align 8
  %i.az = tail call i32 @je_arena_nthreads_get(ptr noundef %i.ay, i1 noundef zeroext true) #20
  %i.ba = zext i32 %.0116 to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ba
  %i.bc = load atomic ptr, ptr %i.bb acquire, align 8
  %i.bd = tail call i32 @je_arena_nthreads_get(ptr noundef %i.bc, i1 noundef zeroext true) #20
  %i.be = icmp ult i32 %i.az, %i.bd
  %.sroa.10.3 = select i1 %i.be, i32 %i.ax, i32 %.0116
  %.pre = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  br label %.loopexit111

bb.j:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr @je_narenas_auto, align 4, !tbaa !20 ; 2 uses
  %i.bg = icmp eq i32 %.sroa.10.1, %i.bf
  %i.bh = trunc nuw i64 %indvars.iv to i32
  %spec.select = select i1 %i.bg, i32 %i.bh, i32 %.sroa.10.1
  br label %.loopexit111

.loopexit111:                                     ; preds = %arena_get.exit88.preheader, %bb.j
  %i.bi = phi i32 [ %i.bf, %bb.j ], [ %.pre, %arena_get.exit88.preheader ]
  %.sroa.0130.3 = phi i32 [ %.0116, %bb.j ], [ %.sroa.10.3, %arena_get.exit88.preheader ] ; 2 uses
  %.sroa.10.2 = phi i32 [ %.sroa.064.1194, %bb.j ], [ %spec.select155, %arena_get.exit88.preheader ] ; 2 uses
  %.1 = phi i32 [ %spec.select, %bb.j ], [ %.sroa.10.1, %arena_get.exit88.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph, label %.preheader, !llvm.loop !152

bb.k:                                             ; preds = %.preheader
  br i1 %1, label %arena_get.exit94, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load atomic ptr, ptr %i.ah acquire, align 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %arena_get.exit94, !prof !21

bb.m:                                             ; preds = %bb.l
  br label %arena_get.exit94

bb.n:                                             ; preds = %.preheader
  br i1 %i.ad, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load atomic i32, ptr @narenas_total acquire, align 4
  %i.bo = icmp eq i32 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = load atomic ptr, ptr %i.af acquire, align 8 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %arena_init_locked.exit, label %arena_init_locked.exit.thread104, !prof !21

arena_init_locked.exit:                           ; preds = %bb.q
  %i.bs = tail call ptr @je_arena_new(ptr noundef %0, i32 noundef %.0.lcssa, ptr noundef nonnull @je_arena_config_default) #20, !inline_history !4 ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %.thread, label %arena_init_locked.exit.thread104

.thread:                                          ; preds = %arena_init_locked.exit.1, %bb.r, %arena_init_locked.exit, %bb.n
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 64) monotonic, align 8
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  br label %.loopexit

arena_init_locked.exit.thread104:                 ; preds = %bb.q, %arena_init_locked.exit
  %.0.i95107 = phi ptr [ %i.bs, %arena_init_locked.exit ], [ %i.bq, %bb.q ]
  %spec.select81 = select i1 %1, ptr null, ptr %.0.i95107
  br label %arena_get.exit94

arena_get.exit94:                                 ; preds = %arena_init_locked.exit.thread104, %bb.m, %bb.l, %bb.k
  %.3146 = phi ptr [ %spec.select81, %arena_init_locked.exit.thread104 ], [ null, %bb.k ], [ %i.bl, %bb.l ], [ null, %bb.m ] ; 2 uses
  %.sroa.064.6 = phi i32 [ %.0.lcssa, %arena_init_locked.exit.thread104 ], [ %.sroa.10.0, %bb.k ], [ %.sroa.10.0, %bb.l ], [ %.sroa.10.0, %bb.m ] ; 4 uses
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef %.sroa.064.6, i1 noundef zeroext false)
  %i.bu = zext i32 %.sroa.0130.0 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bu ; 2 uses
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8
  %i.bx = tail call i32 @je_arena_nthreads_get(ptr noundef %i.bw, i1 noundef zeroext true) #20
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = load i32, ptr @je_narenas_auto, align 4
  %i.ca = icmp eq i32 %.0.lcssa, %i.bz
  %or.cond.1.not.not162 = select i1 %i.by, i1 true, i1 %i.ca ; 2 uses
  br i1 %or.cond.1.not.not162, label %bb.v, label %bb.r

bb.r:                                             ; preds = %arena_get.exit94
  br i1 %i.ad, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load atomic i32, ptr @narenas_total acquire, align 4
  %i.cc = icmp eq i32 %.0.lcssa, %i.cb
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = load atomic ptr, ptr %i.af acquire, align 8 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %arena_init_locked.exit.1, label %arena_init_locked.exit.thread104.1, !prof !21

arena_init_locked.exit.1:                         ; preds = %bb.u
  %i.cg = tail call ptr @je_arena_new(ptr noundef %0, i32 noundef %.0.lcssa, ptr noundef nonnull @je_arena_config_default) #20, !inline_history !4 ; 2 uses
  %.not.1 = icmp eq ptr %i.cg, null
  br i1 %.not.1, label %.thread, label %arena_init_locked.exit.thread104.1

arena_init_locked.exit.thread104.1:               ; preds = %arena_init_locked.exit.1, %bb.u
  %.0.i95107.1 = phi ptr [ %i.cg, %arena_init_locked.exit.1 ], [ %i.ce, %bb.u ]
  %spec.select81.1 = select i1 %1, ptr %.0.i95107.1, ptr %.3146
  br label %arena_get.exit94.1

bb.v:                                             ; preds = %arena_get.exit94
  br i1 %1, label %bb.w, label %arena_get.exit94.1

bb.w:                                             ; preds = %bb.v
  %i.ch = load atomic ptr, ptr %i.bv acquire, align 8 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.x, label %arena_get.exit94.1, !prof !21

bb.x:                                             ; preds = %bb.w
  br label %arena_get.exit94.1

arena_get.exit94.1:                               ; preds = %bb.x, %bb.w, %bb.v, %arena_init_locked.exit.thread104.1
  %.3146.1 = phi ptr [ %spec.select81.1, %arena_init_locked.exit.thread104.1 ], [ %.3146, %bb.v ], [ %i.ch, %bb.w ], [ null, %bb.x ] ; 2 uses
  %.sroa.11.6.1 = phi i32 [ %.0.lcssa, %arena_init_locked.exit.thread104.1 ], [ %.sroa.0130.0, %bb.v ], [ %.sroa.0130.0, %bb.w ], [ %.sroa.0130.0, %bb.x ] ; 4 uses
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef %.sroa.11.6.1, i1 noundef zeroext true)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 64) monotonic, align 8
  %i.cj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @arenas_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  %i.ck = icmp eq i32 %.sroa.064.6, 0
  %or.cond = or i1 %or.cond.not.not159, %i.ck
  br i1 %or.cond, label %arena_new_create_background_thread.exit, label %bb.y

bb.y:                                             ; preds = %arena_get.exit94.1
  %i.cl = tail call zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %.sroa.064.6) #20, !inline_history !5
  br i1 %i.cl, label %bb.z, label %arena_new_create_background_thread.exit

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.lcssa = phi i32 [ %.sroa.064.6, %bb.y ], [ %.sroa.11.6.1, %bb.aa ]
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.90, i32 noundef %.lcssa) #20, !inline_history !5
  tail call void @abort() #21, !inline_history !5
  unreachable

arena_new_create_background_thread.exit:          ; preds = %bb.y, %arena_get.exit94.1
  %i.cm = icmp eq i32 %.sroa.11.6.1, 0
  %or.cond156 = or i1 %or.cond.1.not.not162, %i.cm
  br i1 %or.cond156, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %arena_new_create_background_thread.exit
  %i.cn = tail call zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %.sroa.11.6.1) #20, !inline_history !5
  br i1 %i.cn, label %bb.z, label %.loopexit

arena_get.exit97:                                 ; preds = %bb.e
  %i.co = load atomic ptr, ptr @je_arenas acquire, align 64
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false)
  %i.cp = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  tail call void @je_arena_nthreads_inc(ptr noundef %i.cp, i1 noundef zeroext true) #20, !inline_history !153
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %arena_new_create_background_thread.exit, %bb.aa, %.thread, %arena_get.exit97, %arena_get.exit
  %.4 = phi ptr [ %.0.i84, %arena_get.exit ], [ %i.co, %arena_get.exit97 ], [ null, %.thread ], [ %.3146.1, %bb.aa ], [ %.3146.1, %arena_new_create_background_thread.exit ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_bind(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
arena_get.exit:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.a
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 4 uses
  tail call void @je_arena_nthreads_inc(ptr noundef %i.c, i1 noundef zeroext %2) #20
  br i1 %2, label %bb.a, label %.loopexit.loopexit

bb.a:                                             ; preds = %arena_get.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.c, ptr %i.d, align 8, !tbaa !50
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %arena_get.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.c, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = atomicrmw add ptr %i.f, i32 1 monotonic, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.i = and i32 %i.g, 255                        ; 36 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 20), align 4, !tbaa !154
  %i.k = urem i32 %i.i, %i.j
  %i.l = trunc nuw i32 %i.k to i8
  store i8 %i.l, ptr %i.h, align 1, !tbaa !24
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 60), align 4, !tbaa !154
  %i.n = urem i32 %i.i, %i.m
  %i.o = trunc nuw i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i8 %i.o, ptr %i.p, align 2, !tbaa !24
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 100), align 4, !tbaa !154
  %i.r = urem i32 %i.i, %i.q
  %i.s = trunc nuw i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 219
  store i8 %i.s, ptr %i.t, align 1, !tbaa !24
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 140), align 4, !tbaa !154
  %i.v = urem i32 %i.i, %i.u
  %i.w = trunc nuw i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i8 %i.w, ptr %i.x, align 4, !tbaa !24
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 180), align 4, !tbaa !154
  %i.z = urem i32 %i.i, %i.y
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 221
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !24
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 220), align 4, !tbaa !154
  %i.ad = urem i32 %i.i, %i.ac
  %i.ae = trunc nuw i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !24
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 260), align 4, !tbaa !154
  %i.ah = urem i32 %i.i, %i.ag
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 223
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !24
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 300), align 4, !tbaa !154
  %i.al = urem i32 %i.i, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.am, ptr %i.an, align 8, !tbaa !24
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 340), align 4, !tbaa !154
  %i.ap = urem i32 %i.i, %i.ao
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 380), align 4, !tbaa !154
  %i.at = urem i32 %i.i, %i.as
  %i.au = trunc nuw i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i8 %i.au, ptr %i.av, align 2, !tbaa !24
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 420), align 4, !tbaa !154
  %i.ax = urem i32 %i.i, %i.aw
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 227
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !24
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 460), align 4, !tbaa !154
  %i.bb = urem i32 %i.i, %i.ba
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i8 %i.bc, ptr %i.bd, align 4, !tbaa !24
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 500), align 4, !tbaa !154
  %i.bf = urem i32 %i.i, %i.be
  %i.bg = trunc nuw i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 229
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !24
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 540), align 4, !tbaa !154
  %i.bj = urem i32 %i.i, %i.bi
  %i.bk = trunc nuw i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 230
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !24
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 580), align 4, !tbaa !154
  %i.bn = urem i32 %i.i, %i.bm
  %i.bo = trunc nuw i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 231
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !24
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 620), align 4, !tbaa !154
  %i.br = urem i32 %i.i, %i.bq
  %i.bs = trunc nuw i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %i.bs, ptr %i.bt, align 8, !tbaa !24
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 660), align 4, !tbaa !154
  %i.bv = urem i32 %i.i, %i.bu
  %i.bw = trunc nuw i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !24
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 700), align 4, !tbaa !154
  %i.bz = urem i32 %i.i, %i.by
  %i.ca = trunc nuw i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 234
  store i8 %i.ca, ptr %i.cb, align 2, !tbaa !24
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 740), align 4, !tbaa !154
  %i.cd = urem i32 %i.i, %i.cc
  %i.ce = trunc nuw i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 235
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !24
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 780), align 4, !tbaa !154
  %i.ch = urem i32 %i.i, %i.cg
  %i.ci = trunc nuw i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i8 %i.ci, ptr %i.cj, align 4, !tbaa !24
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 820), align 4, !tbaa !154
  %i.cl = urem i32 %i.i, %i.ck
  %i.cm = trunc nuw i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 237
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !24
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 860), align 4, !tbaa !154
  %i.cp = urem i32 %i.i, %i.co
  %i.cq = trunc nuw i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 238
  store i8 %i.cq, ptr %i.cr, align 2, !tbaa !24
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 900), align 4, !tbaa !154
  %i.ct = urem i32 %i.i, %i.cs
  %i.cu = trunc nuw i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 239
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !24
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 940), align 4, !tbaa !154
  %i.cx = urem i32 %i.i, %i.cw
  %i.cy = trunc nuw i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.cy, ptr %i.cz, align 8, !tbaa !24
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 980), align 4, !tbaa !154
  %i.db = urem i32 %i.i, %i.da
  %i.dc = trunc nuw i32 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !24
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1020), align 4, !tbaa !154
  %i.df = urem i32 %i.i, %i.de
  %i.dg = trunc nuw i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 242
  store i8 %i.dg, ptr %i.dh, align 2, !tbaa !24
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1060), align 4, !tbaa !154
  %i.dj = urem i32 %i.i, %i.di
  %i.dk = trunc nuw i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 243
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !24
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1100), align 4, !tbaa !154
  %i.dn = urem i32 %i.i, %i.dm
  %i.do = trunc nuw i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i8 %i.do, ptr %i.dp, align 4, !tbaa !24
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1140), align 4, !tbaa !154
  %i.dr = urem i32 %i.i, %i.dq
  %i.ds = trunc nuw i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 245
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !24
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1180), align 4, !tbaa !154
  %i.dv = urem i32 %i.i, %i.du
  %i.dw = trunc nuw i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 246
  store i8 %i.dw, ptr %i.dx, align 2, !tbaa !24
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1220), align 4, !tbaa !154
  %i.dz = urem i32 %i.i, %i.dy
  %i.ea = trunc nuw i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !24
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1260), align 4, !tbaa !154
  %i.ed = urem i32 %i.i, %i.ec
  %i.ee = trunc nuw i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %i.ee, ptr %i.ef, align 8, !tbaa !24
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1300), align 4, !tbaa !154
  %i.eh = urem i32 %i.i, %i.eg
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !24
  %i.ek = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1340), align 4, !tbaa !154
  %i.el = urem i32 %i.i, %i.ek
  %i.em = trunc nuw i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 250
  store i8 %i.em, ptr %i.en, align 2, !tbaa !24
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1380), align 4, !tbaa !154
  %i.ep = urem i32 %i.i, %i.eo
  %i.eq = trunc nuw i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 251
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !24
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1420), align 4, !tbaa !154
  %i.et = urem i32 %i.i, %i.es
end_hunk_0
