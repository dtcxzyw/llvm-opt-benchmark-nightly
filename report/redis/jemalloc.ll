Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/jemalloc?download=true
inline.NumInlined: 517
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@je_arena_init:bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_store_b.exit.i, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 56), align 8, !tbaa !165
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 56), align 8, !tbaa !165
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 48), align 8, !tbaa !166
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 48), align 8, !tbaa !166
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 40), align 8, !tbaa !167
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 40), align 8, !tbaa !167
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.g = icmp ugt i32 %1, 4094
  br i1 %i.g, label %arena_init_locked.exit.thread, label %bb.d

arena_init_locked.exit.thread:                    ; preds = %malloc_mutex_lock.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.i = load atomic i32, ptr @narenas_total acquire, align 4
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %arena_init_locked.exit, !prof !145

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @je_arena_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) #20, !inline_history !1
  br label %arena_init_locked.exit

arena_init_locked.exit:                           ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.p, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20 ; 0 uses
  %i.r = icmp eq i32 %1, 0
  br i1 %i.r, label %arena_new_create_background_thread.exit, label %bb.h

bb.h:                                             ; preds = %arena_init_locked.exit.thread, %arena_init_locked.exit
  %.0.i13 = phi ptr [ null, %arena_init_locked.exit.thread ], [ %.0.i, %arena_init_locked.exit ] ; 2 uses
  %i.s = tail call zeroext i1 @je_arena_is_huge(i32 noundef %1) #20
  br i1 %i.s, label %arena_new_create_background_thread.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %1) #20
  br i1 %i.t, label %bb.j, label %arena_new_create_background_thread.exit

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.147, i32 noundef %1) #20
  tail call void @abort() #21
  unreachable

arena_new_create_background_thread.exit:          ; preds = %arena_init_locked.exit, %bb.h, %bb.i
  %.0.i14 = phi ptr [ %.0.i, %arena_init_locked.exit ], [ %.0.i13, %bb.h ], [ %.0.i13, %bb.i ]
  ret ptr %.0.i14
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_migrate(ptr noundef initializes((144, 152)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !288 {
bb.a:
  tail call void @je_arena_nthreads_dec(ptr noundef %1, i1 noundef zeroext false) #20
  tail call void @je_arena_nthreads_inc(ptr noundef %2, i1 noundef zeroext false) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %2, ptr %i.a, align 8, !tbaa !169
  %i.b = tail call i32 @je_arena_nthreads_get(ptr noundef %1, i1 noundef zeroext false) #20
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @je_arena_nthreads_dec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_arena_nthreads_inc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_choose_hard(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 !guid !290 {
bb.a:
  %i.a = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !14
  %i.b = icmp ugt i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sched_getcpu() #20        ; 3 uses
  %i.d = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !14
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %percpu_arena_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @je_ncpus, align 4, !tbaa !14
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
  br i1 %i.m, label %bb.d, label %arena_get.exit, !prof !145

bb.d:                                             ; preds = %percpu_arena_choose.exit
  %i.n = tail call ptr @je_arena_init(ptr noundef %0, i32 noundef %.0.i, ptr noundef nonnull @je_arena_config_default), !inline_history !0
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %percpu_arena_choose.exit, %bb.d
  %.0.i84 = phi ptr [ %i.n, %bb.d ], [ %i.l, %percpu_arena_choose.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %.0.i84, i64 78928 ; 2 uses
  %.val83 = load i32, ptr %i.o, align 8, !tbaa !216
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef %.val83, i1 noundef zeroext false)
  %.val = load i32, ptr %i.o, align 8, !tbaa !216
  %i.p = zext i32 %.val to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.p
  %i.r = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  tail call void @je_arena_nthreads_inc(ptr noundef %i.r, i1 noundef zeroext true) #20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.r, ptr %i.s, align 8, !tbaa !169
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.t = load i32, ptr @je_narenas_auto, align 4, !tbaa !14 ; 3 uses
  %i.u = icmp ugt i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %arena_get.exit99

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.g, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.f
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_arenas_lock) #20
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %atomic_store_b.exit.i, %bb.f
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 56), align 8, !tbaa !165
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 56), align 8, !tbaa !165
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 48), align 8, !tbaa !166
  %.not.i.i = icmp eq ptr %i.y, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 48), align 8, !tbaa !166
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 40), align 8, !tbaa !167
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 40), align 8, !tbaa !167
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.g, %bb.h
  %i.ab = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %i.ac = icmp ugt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.loopexit113, %malloc_mutex_lock.exit
  %.sroa.0132.0 = phi i32 [ 0, %malloc_mutex_lock.exit ], [ %.sroa.0132.3, %.loopexit113 ] ; 4 uses
  %.sroa.10.0 = phi i32 [ 0, %malloc_mutex_lock.exit ], [ %.sroa.10.2, %.loopexit113 ] ; 4 uses
  %.0.lcssa = phi i32 [ %i.t, %malloc_mutex_lock.exit ], [ %.1, %.loopexit113 ] ; 10 uses
  %i.ad = icmp ugt i32 %.0.lcssa, 4094            ; 2 uses
  %i.ae = zext nneg i32 %.0.lcssa to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ae ; 2 uses
  %i.ag = zext i32 %.sroa.0132.0 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ag ; 2 uses
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8
  %i.aj = tail call i32 @je_arena_nthreads_get(ptr noundef %i.ai, i1 noundef zeroext false) #20
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load i32, ptr @je_narenas_auto, align 4
  %i.am = icmp eq i32 %.0.lcssa, %i.al
  %or.cond.not.not161 = select i1 %i.ak, i1 true, i1 %i.am ; 2 uses
  br i1 %or.cond.not.not161, label %bb.j, label %bb.m

.lr.ph:                                           ; preds = %malloc_mutex_lock.exit, %.loopexit113
  %.sroa.0132.1 = phi i32 [ %.sroa.0132.3, %.loopexit113 ], [ 0, %malloc_mutex_lock.exit ] ; 3 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.2, %.loopexit113 ], [ 0, %malloc_mutex_lock.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit113 ], [ 1, %malloc_mutex_lock.exit ] ; 5 uses
  %.0118 = phi i32 [ %.1, %.loopexit113 ], [ %i.t, %malloc_mutex_lock.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv ; 3 uses
  %i.ao = load atomic ptr, ptr %i.an acquire, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %arena_get.exit88.preheader, !prof !145

arena_get.exit88.preheader:                       ; preds = %.lr.ph
  %i.aq = load atomic ptr, ptr %i.an acquire, align 8
  %i.ar = tail call i32 @je_arena_nthreads_get(ptr noundef %i.aq, i1 noundef zeroext false) #20
  %i.as = zext i32 %.sroa.0132.1 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.as
  %i.au = load atomic ptr, ptr %i.at acquire, align 8
  %i.av = tail call i32 @je_arena_nthreads_get(ptr noundef %i.au, i1 noundef zeroext false) #20
  %i.aw = icmp ult i32 %i.ar, %i.av
  %i.ax = trunc nuw i64 %indvars.iv to i32
  %spec.select157 = select i1 %i.aw, i32 %i.ax, i32 %.sroa.0132.1
  %i.ay = load atomic ptr, ptr %i.an acquire, align 8
  %i.az = tail call i32 @je_arena_nthreads_get(ptr noundef %i.ay, i1 noundef zeroext true) #20
  %i.ba = zext i32 %.sroa.10.1 to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ba
  %i.bc = load atomic ptr, ptr %i.bb acquire, align 8
  %i.bd = tail call i32 @je_arena_nthreads_get(ptr noundef %i.bc, i1 noundef zeroext true) #20
  %i.be = icmp ult i32 %i.az, %i.bd
  %2 = trunc nuw i64 %indvars.iv to i32
  %.sroa.10.3 = select i1 %i.be, i32 %2, i32 %.sroa.10.1
  %.pre = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  br label %.loopexit113

bb.i:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr @je_narenas_auto, align 4, !tbaa !14 ; 2 uses
  %i.bg = icmp eq i32 %.0118, %i.bf
  %i.bh = trunc nuw i64 %indvars.iv to i32
  %spec.select = select i1 %i.bg, i32 %i.bh, i32 %.0118
  br label %.loopexit113

.loopexit113:                                     ; preds = %arena_get.exit88.preheader, %bb.i
  %i.bi = phi i32 [ %i.bf, %bb.i ], [ %.pre, %arena_get.exit88.preheader ]
  %.sroa.0132.3 = phi i32 [ %.sroa.0132.1, %bb.i ], [ %spec.select157, %arena_get.exit88.preheader ] ; 2 uses
  %.sroa.10.2 = phi i32 [ %.sroa.10.1, %bb.i ], [ %.sroa.10.3, %arena_get.exit88.preheader ] ; 2 uses
  %.1 = phi i32 [ %spec.select, %bb.i ], [ %.0118, %arena_get.exit88.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph, label %.preheader, !llvm.loop !289

bb.j:                                             ; preds = %.preheader
  br i1 %1, label %arena_get.exit94, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load atomic ptr, ptr %i.ah acquire, align 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.l, label %arena_get.exit94, !prof !145

bb.l:                                             ; preds = %bb.k
  br label %arena_get.exit94

bb.m:                                             ; preds = %.preheader
  br i1 %i.ad, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load atomic i32, ptr @narenas_total acquire, align 4
  %i.bo = icmp eq i32 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bq = load atomic ptr, ptr %i.af acquire, align 8 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %arena_init_locked.exit, label %arena_init_locked.exit.thread106, !prof !145

arena_init_locked.exit:                           ; preds = %bb.p
  %i.bs = tail call ptr @je_arena_new(ptr noundef %0, i32 noundef %.0.lcssa, ptr noundef nonnull @je_arena_config_default) #20, !inline_history !1 ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %.thread, label %arena_init_locked.exit.thread106

.thread:                                          ; preds = %arena_init_locked.exit.1, %bb.q, %arena_init_locked.exit, %bb.m
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20 ; 0 uses
  br label %.loopexit

arena_init_locked.exit.thread106:                 ; preds = %bb.p, %arena_init_locked.exit
  %.0.i95109 = phi ptr [ %i.bs, %arena_init_locked.exit ], [ %i.bq, %bb.p ]
  %spec.select81 = select i1 %1, ptr null, ptr %.0.i95109
  br label %arena_get.exit94

arena_get.exit94:                                 ; preds = %arena_init_locked.exit.thread106, %bb.l, %bb.k, %bb.j
  %.sroa.0132.4 = phi i32 [ %.sroa.0132.0, %bb.l ], [ %.sroa.0132.0, %bb.k ], [ %.sroa.0132.0, %bb.j ], [ %.0.lcssa, %arena_init_locked.exit.thread106 ] ; 5 uses
  %.376 = phi ptr [ null, %bb.l ], [ %i.bl, %bb.k ], [ null, %bb.j ], [ %spec.select81, %arena_init_locked.exit.thread106 ] ; 2 uses
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef %.sroa.0132.4, i1 noundef zeroext false)
  %i.bu = zext i32 %.sroa.10.0 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bu ; 2 uses
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8
  %i.bx = tail call i32 @je_arena_nthreads_get(ptr noundef %i.bw, i1 noundef zeroext true) #20
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = load i32, ptr @je_narenas_auto, align 4
  %i.ca = icmp eq i32 %.0.lcssa, %i.bz
  %or.cond.1.not.not164 = select i1 %i.by, i1 true, i1 %i.ca ; 2 uses
  br i1 %or.cond.1.not.not164, label %bb.u, label %bb.q

bb.q:                                             ; preds = %arena_get.exit94
  br i1 %i.ad, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = load atomic i32, ptr @narenas_total acquire, align 4
  %i.cc = icmp eq i32 %.0.lcssa, %i.cb
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = load atomic ptr, ptr %i.af acquire, align 8 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %arena_init_locked.exit.1, label %arena_init_locked.exit.thread106.1, !prof !145

arena_init_locked.exit.1:                         ; preds = %bb.t
  %i.cg = tail call ptr @je_arena_new(ptr noundef %0, i32 noundef %.0.lcssa, ptr noundef nonnull @je_arena_config_default) #20, !inline_history !1 ; 2 uses
  %.not.1 = icmp eq ptr %i.cg, null
  br i1 %.not.1, label %.thread, label %arena_init_locked.exit.thread106.1

arena_init_locked.exit.thread106.1:               ; preds = %arena_init_locked.exit.1, %bb.t
  %.0.i95109.1 = phi ptr [ %i.cg, %arena_init_locked.exit.1 ], [ %i.ce, %bb.t ]
  %spec.select81.1 = select i1 %1, ptr %.0.i95109.1, ptr %.376
  br label %arena_get.exit94.1

bb.u:                                             ; preds = %arena_get.exit94
  br i1 %1, label %bb.v, label %arena_get.exit94.1

bb.v:                                             ; preds = %bb.u
  %i.ch = load atomic ptr, ptr %i.bv acquire, align 8 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.w, label %arena_get.exit94.1, !prof !145

bb.w:                                             ; preds = %bb.v
  br label %arena_get.exit94.1

arena_get.exit94.1:                               ; preds = %bb.w, %bb.v, %bb.u, %arena_init_locked.exit.thread106.1
  %.sroa.10.4 = phi i32 [ %.sroa.10.0, %bb.w ], [ %.sroa.10.0, %bb.v ], [ %.sroa.10.0, %bb.u ], [ %.0.lcssa, %arena_init_locked.exit.thread106.1 ] ; 5 uses
  %.376.1 = phi ptr [ null, %bb.w ], [ %i.ch, %bb.v ], [ %.376, %bb.u ], [ %spec.select81.1, %arena_init_locked.exit.thread106.1 ] ; 3 uses
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef %.sroa.10.4, i1 noundef zeroext true)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 104) monotonic, align 8
  %i.cj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_arenas_lock, i64 64)) #20 ; 0 uses
  %i.ck = icmp eq i32 %.sroa.0132.4, 0
  %or.cond = or i1 %or.cond.not.not161, %i.ck
  br i1 %or.cond, label %arena_new_create_background_thread.exit, label %bb.x

bb.x:                                             ; preds = %arena_get.exit94.1
  %i.cl = tail call zeroext i1 @je_arena_is_huge(i32 noundef %.sroa.0132.4) #20
  br i1 %i.cl, label %arena_new_create_background_thread.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = tail call zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %.sroa.0132.4) #20
  br i1 %i.cm, label %bb.z, label %arena_new_create_background_thread.exit

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.lcssa = phi i32 [ %.sroa.0132.4, %bb.y ], [ %.sroa.10.4, %bb.ab ]
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.147, i32 noundef %.lcssa) #20
  tail call void @abort() #21
  unreachable

arena_new_create_background_thread.exit:          ; preds = %bb.y, %bb.x, %arena_get.exit94.1
  %i.cn = icmp eq i32 %.sroa.10.4, 0
  %or.cond158 = or i1 %or.cond.1.not.not164, %i.cn
  br i1 %or.cond158, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %arena_new_create_background_thread.exit
  %i.co = tail call zeroext i1 @je_arena_is_huge(i32 noundef %.sroa.10.4) #20
  br i1 %i.co, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = tail call zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %.sroa.10.4) #20
  br i1 %i.cp, label %bb.z, label %.loopexit

arena_get.exit99:                                 ; preds = %bb.e
  %i.cq = load atomic ptr, ptr @je_arenas acquire, align 64
  tail call fastcc void @arena_bind(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false)
  %i.cr = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  tail call void @je_arena_nthreads_inc(ptr noundef %i.cr, i1 noundef zeroext true) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !169
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.ab, %bb.aa, %arena_new_create_background_thread.exit, %arena_get.exit99, %arena_get.exit
  %.4 = phi ptr [ %.0.i84, %arena_get.exit ], [ %i.cq, %arena_get.exit99 ], [ null, %.thread ], [ %.376.1, %bb.ab ], [ %.376.1, %bb.aa ], [ %.376.1, %arena_new_create_background_thread.exit ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_bind(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 !guid !291 {
arena_get.exit:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.a
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 4 uses
  tail call void @je_arena_nthreads_inc(ptr noundef %i.c, i1 noundef zeroext %2) #20
  br i1 %2, label %bb.a, label %.loopexit.loopexit

bb.a:                                             ; preds = %arena_get.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.c, ptr %i.d, align 8, !tbaa !169
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %arena_get.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.c, ptr %i.e, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = atomicrmw add ptr %i.f, i32 1 monotonic, align 4 ; 39 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 20), align 4, !tbaa !220
  %i.j = urem i32 %i.g, %i.i
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.h, align 1, !tbaa !148
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 60), align 4, !tbaa !220
  %i.m = urem i32 %i.g, %i.l
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 %i.n, ptr %i.o, align 2, !tbaa !148
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 100), align 4, !tbaa !220
  %i.q = urem i32 %i.g, %i.p
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %i.r, ptr %i.s, align 1, !tbaa !148
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 140), align 4, !tbaa !220
  %i.u = urem i32 %i.g, %i.t
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.v, ptr %i.w, align 4, !tbaa !148
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 180), align 4, !tbaa !220
  %i.y = urem i32 %i.g, %i.x
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !148
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 220), align 4, !tbaa !220
  %i.ac = urem i32 %i.g, %i.ab
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !148
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 260), align 4, !tbaa !220
  %i.ag = urem i32 %i.g, %i.af
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 167
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !148
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 300), align 4, !tbaa !220
  %i.ak = urem i32 %i.g, %i.aj
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %i.al, ptr %i.am, align 8, !tbaa !148
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 340), align 4, !tbaa !220
  %i.ao = urem i32 %i.g, %i.an
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !148
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 380), align 4, !tbaa !220
  %i.as = urem i32 %i.g, %i.ar
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.at, ptr %i.au, align 2, !tbaa !148
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 420), align 4, !tbaa !220
  %i.aw = urem i32 %i.g, %i.av
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !148
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 460), align 4, !tbaa !220
  %i.ba = urem i32 %i.g, %i.az
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.bb, ptr %i.bc, align 4, !tbaa !148
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 500), align 4, !tbaa !220
  %i.be = urem i32 %i.g, %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !148
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 540), align 4, !tbaa !220
  %i.bi = urem i32 %i.g, %i.bh
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 174
  store i8 %i.bj, ptr %i.bk, align 2, !tbaa !148
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 580), align 4, !tbaa !220
  %i.bm = urem i32 %i.g, %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 175
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !148
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 620), align 4, !tbaa !220
  %i.bq = urem i32 %i.g, %i.bp
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !148
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 660), align 4, !tbaa !220
  %i.bu = urem i32 %i.g, %i.bt
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !148
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 700), align 4, !tbaa !220
  %i.by = urem i32 %i.g, %i.bx
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !148
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 740), align 4, !tbaa !220
  %i.cc = urem i32 %i.g, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !148
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 780), align 4, !tbaa !220
  %i.cg = urem i32 %i.g, %i.cf
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.ch, ptr %i.ci, align 4, !tbaa !148
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 820), align 4, !tbaa !220
  %i.ck = urem i32 %i.g, %i.cj
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !148
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 860), align 4, !tbaa !220
  %i.co = urem i32 %i.g, %i.cn
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i8 %i.cp, ptr %i.cq, align 2, !tbaa !148
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 900), align 4, !tbaa !220
  %i.cs = urem i32 %i.g, %i.cr
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 183
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !148
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 940), align 4, !tbaa !220
  %i.cw = urem i32 %i.g, %i.cv
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.cx, ptr %i.cy, align 8, !tbaa !148
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 980), align 4, !tbaa !220
  %i.da = urem i32 %i.g, %i.cz
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !148
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1020), align 4, !tbaa !220
  %i.de = urem i32 %i.g, %i.dd
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.df, ptr %i.dg, align 2, !tbaa !148
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1060), align 4, !tbaa !220
  %i.di = urem i32 %i.g, %i.dh
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 187
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !148
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1100), align 4, !tbaa !220
  %i.dm = urem i32 %i.g, %i.dl
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i8 %i.dn, ptr %i.do, align 4, !tbaa !148
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1140), align 4, !tbaa !220
  %i.dq = urem i32 %i.g, %i.dp
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 189
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !148
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1180), align 4, !tbaa !220
  %i.du = urem i32 %i.g, %i.dt
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i8 %i.dv, ptr %i.dw, align 2, !tbaa !148
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1220), align 4, !tbaa !220
  %i.dy = urem i32 %i.g, %i.dx
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 191
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !148
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1260), align 4, !tbaa !220
  %i.ec = urem i32 %i.g, %i.eb
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %i.ed, ptr %i.ee, align 8, !tbaa !148
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1300), align 4, !tbaa !220
  %i.eg = urem i32 %i.g, %i.ef
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !148
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1340), align 4, !tbaa !220
  %i.ek = urem i32 %i.g, %i.ej
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i8 %i.el, ptr %i.em, align 2, !tbaa !148
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1380), align 4, !tbaa !220
  %i.eo = urem i32 %i.g, %i.en
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 195
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !148
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @je_bin_infos, i64 1420), align 4, !tbaa !220
  %i.es = urem i32 %i.g, %i.er
  %i.et = trunc i32 %i.es to i8
end_hunk_0
