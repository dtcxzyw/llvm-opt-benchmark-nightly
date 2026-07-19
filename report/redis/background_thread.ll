inline.NumInlined: 92
inline.NumDeleted: 25
begin_hunk_0_@background_thread_create_locked:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.n, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.r = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !24, !noundef !25
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.t, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  store atomic i8 0, ptr %i.w release, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  tail call void @je_nstime_init(ptr noundef nonnull %i.x, i64 noundef 0) #12
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  tail call void @je_nstime_copy(ptr noundef nonnull %i.z, ptr noundef nonnull @nstime_zero) #12
  %i.aa = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 3 uses
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #12 ; 0 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.i, label %bb.f

.critedge:                                        ; preds = %malloc_mutex_lock.exit, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store atomic i8 0, ptr %i.ae monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #12 ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ah) #12
  %.not.i34 = icmp eq i32 %i.ai, 0
  br i1 %.not.i34, label %bb.g, label %atomic_store_b.exit.i35

atomic_store_b.exit.i35:                          ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.aj) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  store atomic i8 1, ptr %i.ak monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %atomic_store_b.exit.i35, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 112 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !13
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 104 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %.not.i.i36 = icmp eq ptr %i.ap, %0
  br i1 %.not.i.i36, label %malloc_mutex_lock.exit37, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.ao, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 96 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit37

malloc_mutex_lock.exit37:                         ; preds = %bb.g, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.au = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.at) #12 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  store atomic i8 0, ptr %i.av monotonic, align 8
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #12 ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !31
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !31
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !31
  br i1 %i.az, label %bb.j, label %pre_reentrancy.exit

bb.j:                                             ; preds = %bb.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bd = call i32 @sigfillset(ptr noundef nonnull %2) #12, !inline_history !32 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.be = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %3) #12, !inline_history !32 ; 2 uses
  %.not.i39 = icmp eq i32 %i.be, 0
  br i1 %.not.i39, label %bb.k, label %background_thread_create_signals_masked.exit

bb.k:                                             ; preds = %pre_reentrancy.exit
  %i.bf = inttoptr i64 %i.c to ptr
  %i.bg = load ptr, ptr @pthread_create_fptr, align 8, !tbaa !11, !noalias !33
  %i.bh = call i32 %i.bg(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull @background_thread_entry, ptr noundef %i.bf) #12, !inline_history !37 ; 3 uses
  %i.bi = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %3, ptr noundef null) #12, !inline_history !32 ; 2 uses
  %.not12.i = icmp eq i32 %i.bi, 0
  br i1 %.not12.i, label %background_thread_create_signals_masked.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.3, i32 noundef %i.bh, i32 noundef %i.bi) #12, !inline_history !32
  %i.bj = load i8, ptr @je_opt_abort, align 1, !tbaa !38, !range !24, !noundef !25
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.m, label %background_thread_create_signals_masked.exit

bb.m:                                             ; preds = %bb.l
  call void @abort() #13, !inline_history !32
  unreachable

background_thread_create_signals_masked.exit:     ; preds = %pre_reentrancy.exit, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.be, %pre_reentrancy.exit ], [ %i.bh, %bb.l ], [ %i.bh, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.bl = load i8, ptr %i.ba, align 1, !tbaa !31
  %i.bm = add i8 %i.bl, -1                        ; 2 uses
  store i8 %i.bm, ptr %i.ba, align 1, !tbaa !31
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %post_reentrancy.exit

bb.n:                                             ; preds = %background_thread_create_signals_masked.exit
  call void @je_tsd_slow_update(ptr noundef nonnull %0) #12
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %background_thread_create_signals_masked.exit, %bb.n
  %.not30.not = icmp eq i32 %.0.i, 0
  br i1 %.not30.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %post_reentrancy.exit
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.2, i32 noundef %.0.i) #12
  %i.bo = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #12
  %.not.i40 = icmp eq i32 %i.bo, 0
  br i1 %.not.i40, label %bb.p, label %atomic_store_b.exit.i41

atomic_store_b.exit.i41:                          ; preds = %bb.o
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.f) #12
  store atomic i8 1, ptr %i.ac monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %atomic_store_b.exit.i41, %bb.o
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !13
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.j, align 8, !tbaa !13
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !19
  %.not.i.i42 = icmp eq ptr %i.br, %0
  br i1 %.not.i.i42, label %malloc_mutex_lock.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %0, ptr %i.m, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit43

malloc_mutex_lock.exit43:                         ; preds = %bb.p, %bb.q
  store i32 0, ptr %i.t, align 8, !tbaa !26
  %i.bv = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.bw = add i64 %i.bv, -1
  store i64 %i.bw, ptr @je_n_background_threads, align 8, !tbaa !21
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.bx = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #12 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %malloc_mutex_lock.exit43, %post_reentrancy.exit, %.critedge, %malloc_mutex_lock.exit37
  %.1 = phi i1 [ false, %malloc_mutex_lock.exit37 ], [ true, %malloc_mutex_lock.exit43 ], [ false, %.critedge ], [ false, %post_reentrancy.exit ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_background_threads_enable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 11 uses
  %i.b = alloca i8, i64 %i.a, align 16            ; 6 uses
  %.not49 = icmp eq i64 %i.a, 0
  br i1 %.not49, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.c = add i64 %i.a, -1                         ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 4294967295
  %i.f = icmp ugt i64 %i.c, 4294967295
  %i.g = or i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check63 = icmp ult i64 %i.a, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.a, 28
  %n.vec = and i64 %i.a, 8589934560               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> zeroinitializer, ptr %i.h, align 16, !tbaa !38
  store <16 x i8> zeroinitializer, ptr %i.i, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.a, 8589934588             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %index66
  store <4 x i8> zeroinitializer, ptr %i.k, align 4, !tbaa !38
  %index.next67 = add nuw i64 %index66, 4         ; 2 uses
  %i.l = icmp eq i64 %index.next67, %n.vec65
  br i1 %i.l, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %i.a, %n.vec65
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  store i8 1, ptr %i.b, align 16, !tbaa !38
  %i.m = tail call i32 @je_narenas_total_get() #12 ; 4 uses
  %i.n = icmp ugt i32 %i.m, 1
  br i1 %i.n, label %.lr.ph44.preheader, label %._crit_edge45

.lr.ph44.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext i32 %i.m to i64
  %.pre57 = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.o = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !38
  %indvars.iv.next = add i64 %i.o, 1              ; 2 uses
  %1 = and i64 %indvars.iv.next, 4294967295
  %i.q = icmp ugt i64 %i.a, %1
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !45

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.f
  %i.r = phi i64 [ %.pre57, %.lr.ph44.preheader ], [ %i.bc, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph44.preheader ], [ %indvars.iv.next.a, %bb.f ] ; 5 uses
  %.03242 = phi i32 [ 0, %.lr.ph44.preheader ], [ %.1, %bb.f ] ; 3 uses
  %i.s = urem i64 %indvars.iv, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !38, !range !24, !noundef !25
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph44
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %i.y = icmp eq ptr %i.x, null
  %.pre = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.aa = urem i64 %indvars.iv, %.pre
  %i.ab = getelementptr inbounds nuw [208 x i8], ptr %i.z, i64 %i.aa ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120 ; 2 uses
  %i.ad = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ac) #12
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ae) #12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  store atomic i8 1, ptr %i.af monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 112 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 104 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.ak, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  store i32 1, ptr %i.ao, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 172
  store atomic i8 0, ptr %i.ap release, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  tail call void @je_nstime_init(ptr noundef nonnull %i.aq, i64 noundef 0) #12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  tail call void @je_nstime_copy(ptr noundef nonnull %i.as, ptr noundef nonnull @nstime_zero) #12
  %i.at = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  store atomic i8 0, ptr %i.av monotonic, align 8
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #12 ; 0 uses
  %i.ax = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 3 uses
  %i.ay = urem i64 %indvars.iv, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ay
  store i8 1, ptr %i.az, align 1, !tbaa !38
  %i.ba = add i32 %.03242, 1                      ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %.not = icmp eq i64 %i.ax, %i.bb
  br i1 %.not, label %._crit_edge45, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit, %.lr.ph44, %bb.b
  %i.bc = phi i64 [ %i.r, %.lr.ph44 ], [ %.pre, %bb.b ], [ %i.ax, %malloc_mutex_lock.exit ]
  %.1 = phi i32 [ %.03242, %.lr.ph44 ], [ %.03242, %bb.b ], [ %i.ba, %malloc_mutex_lock.exit ]
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %.lr.ph44, !llvm.loop !46

._crit_edge45:                                    ; preds = %malloc_mutex_lock.exit, %bb.f, %._crit_edge
  %i.bd = tail call fastcc zeroext i1 @background_thread_create_locked(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.be = icmp eq i32 %i.m, 0
  %or.cond.not = or i1 %i.be, %i.bd
  br i1 %or.cond.not, label %.loopexit, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %._crit_edge45
  %wide.trip.count55 = zext i32 %i.m to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.h
  %indvars.iv52 = phi i64 [ 0, %.lr.ph47.preheader ], [ %indvars.iv.next53, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv52
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8 ; 2 uses
  %.not38 = icmp eq ptr %i.bg, null
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10648
  tail call void @je_pa_shard_set_deferral_allowed(ptr noundef %0, ptr noundef nonnull %i.bh, i1 noundef zeroext true) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph47
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph47, !llvm.loop !47

.loopexit:                                        ; preds = %bb.h, %._crit_edge45
  ret i1 %i.bd
}

declare i32 @je_narenas_total_get() local_unnamed_addr #3

declare void @je_pa_shard_set_deferral_allowed(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_background_threads_disable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.b = tail call fastcc zeroext i1 @background_threads_disable_single(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @je_narenas_total_get() #12 ; 2 uses
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10648
  tail call void @je_pa_shard_set_deferral_allowed(ptr noundef %0, ptr noundef nonnull %i.f, i1 noundef zeroext false) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !48

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @background_threads_disable_single(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !31
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 8 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !31
  %i.g = add i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 1, !tbaa !31
  br i1 %i.d, label %bb.b, label %pre_reentrancy.exit

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.i = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.h) #12
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %pre_reentrancy.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %atomic_store_b.exit.i, %pre_reentrancy.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.p, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.o, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@background_thread_entry:bb.a
bb.a:
  %1 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = tail call i64 @pthread_self() #14
  %i.d = tail call i32 @pthread_setname_np(i64 noundef %i.c, ptr noundef nonnull @.str.4) #12 ; 0 uses
  %i.e = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
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
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = or i64 %i.l, %i.h
  store i64 %i.m, ptr %i.k, align 8, !tbaa !21
  br label %set_current_thread_affinity.exit

set_current_thread_affinity.exit:                 ; preds = %bb.b, %bb.c
  %i.n = call i32 @sched_setaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.d

bb.d:                                             ; preds = %set_current_thread_affinity.exit, %bb.a
  %i.o = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %i.q = load i8, ptr %i.p, align 8, !tbaa !31
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.e, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.r = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext true) #12
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.d ] ; 7 uses
  call void @je_tsd_state_set(ptr noundef %.0.i, i8 noundef zeroext 5) #12
  %i.s = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.t = and i64 %i.a, 4294967295
  %i.u = getelementptr inbounds nuw [208 x i8], ptr %i.s, i64 %i.t ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 3 uses
  %i.x = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.w) #12, !inline_history !69
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.f, label %atomic_store_b.exit.i.i

atomic_store_b.exit.i.i:                          ; preds = %tsd_fetch_impl.exit
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.v) #12, !inline_history !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store atomic i8 1, ptr %i.y monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %atomic_store_b.exit.i.i, %tsd_fetch_impl.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.ad, %.0.i
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 172 ; 2 uses
  store atomic i8 1, ptr %i.ah release, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 176 ; 2 uses
  call void @je_nstime_init(ptr noundef nonnull %i.ai, i64 noundef -1) #12, !inline_history !69
  %i.aj = icmp eq i32 %i.b, 0
  br i1 %i.aj, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %malloc_mutex_lock.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  br label %.backedge.i

bb.h:                                             ; preds = %malloc_mutex_lock.exit.i
  call fastcc void @background_thread0_work(ptr noundef %.0.i), !inline_history !69
  br label %background_work.exit

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !26
  switch i32 %i.am, label %bb.i [
    i32 0, label %background_work.exit
    i32 2, label %background_thread_pause_check.exit.i
  ], !prof !70

background_thread_pause_check.exit.i:             ; preds = %.backedge.i
  store atomic i8 0, ptr %i.al monotonic, align 8
  %i.an = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #12, !inline_history !69 ; 0 uses
  call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull @je_background_thread_lock), !inline_history !69
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  %i.ao = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #12, !inline_history !69 ; 0 uses
  call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull %i.v), !inline_history !69
  br label %.backedge.i.backedge

bb.i:                                             ; preds = %.backedge.i
  call fastcc void @background_work_sleep_once(ptr noundef %.0.i, ptr noundef nonnull %i.u, i32 noundef %i.b), !inline_history !69
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.i, %background_thread_pause_check.exit.i
  br label %.backedge.i, !llvm.loop !71

background_work.exit:                             ; preds = %.backedge.i, %bb.h
  store atomic i8 0, ptr %i.ah release, align 4
  call void @je_nstime_init(ptr noundef nonnull %i.ai, i64 noundef 0) #12, !inline_history !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store atomic i8 0, ptr %i.ap monotonic, align 8
  %i.aq = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #12, !inline_history !69 ; 0 uses
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
  %i.a = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 7 uses
  %i.b = alloca i8, i64 %i.a, align 16            ; 6 uses
  %i.c = icmp ugt i64 %i.a, 1
  br i1 %i.c, label %iter.check, label %.preheader35

iter.check:                                       ; preds = %bb.a
  %i.d = add i64 %i.a, -1                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.a, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.e = add i64 %i.a, -2                         ; 2 uses
  %i.f = and i64 %i.e, 4294967294
  %i.g = icmp eq i64 %i.f, 4294967294
  %i.h = icmp ugt i64 %i.e, 4294967295
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check64 = icmp ult i64 %i.a, 33
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

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
  store <16 x i8> zeroinitializer, ptr %i.n, align 1, !tbaa !38
  store <16 x i8> zeroinitializer, ptr %i.o, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader35, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec67 = and i64 %i.d, -8                     ; 4 uses
  %i.q = or disjoint i64 %n.vec67, 1
  %i.r = trunc i64 %n.vec67 to i32
  %i.s = or disjoint i32 %i.r, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %index68
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store <8 x i8> zeroinitializer, ptr %i.u, align 1, !tbaa !38
  %index.next69 = add nuw i64 %index68, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next69, %n.vec67
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n70 = icmp eq i64 %i.d, %n.vec67
  br i1 %cmp.n70, label %.preheader35, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  %.040.ph = phi i32 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader35:                                     ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  br label %.outer

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.y = phi i64 [ %i.ab, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.040 = phi i32 [ %i.aa, %.lr.ph ], [ %.040.ph, %.lr.ph.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !38
  %i.aa = add i32 %.040, 1                        ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i64 %i.a, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.preheader35, !llvm.loop !75

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %i.ad = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !26
  switch i32 %i.af, label %bb.b [
    i32 0, label %.preheader
    i32 2, label %background_thread_pause_check.exit
  ], !prof !70

.preheader:                                       ; preds = %.backedge
  %i.ag = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %.lr.ph43, label %._crit_edge

background_thread_pause_check.exit:               ; preds = %.backedge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store atomic i8 0, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ak) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull @je_background_thread_lock)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #12 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.ai)
  br label %.backedge.backedge

bb.b:                                             ; preds = %.backedge
  %i.an = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.ao = icmp eq i64 %i.an, %i.cn
  br i1 %i.ao, label %check_background_thread_creation.exit.thread, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store atomic i8 0, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aq) #12, !inline_history !76 ; 0 uses
  %i.as = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %.lr.ph.i, label %check_background_thread_creation.exit.thread33

.lr.ph.i:                                         ; preds = %bb.c, %bb.m
  %i.au = phi i64 [ %i.cf, %bb.m ], [ %i.as, %bb.c ]
  %i.av = phi i64 [ %i.ch, %bb.m ], [ 1, %bb.c ]  ; 4 uses
  %.02939.i = phi i32 [ %i.cg, %bb.m ], [ 1, %bb.c ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !38, !range !24, !noundef !25
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.az = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw [208 x i8], ptr %i.az, i64 %i.av ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 2 uses
  %i.bc = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bb) #12
  %.not.i23 = icmp eq i32 %i.bc, 0
  br i1 %.not.i23, label %bb.e, label %atomic_store_b.exit.i24

atomic_store_b.exit.i24:                          ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bd) #12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  store atomic i8 1, ptr %i.be monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %atomic_store_b.exit.i24, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 112 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19
  %.not.i.i25 = icmp eq ptr %i.bj, %0
  br i1 %.not.i.i25, label %malloc_mutex_lock.exit26, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.bi, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !20
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit26

malloc_mutex_lock.exit26:                         ; preds = %bb.e, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.bo, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  store atomic i8 0, ptr %i.bp monotonic, align 8
  %i.bq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bb) #12, !inline_history !76 ; 0 uses
  br i1 %.not.i, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %malloc_mutex_lock.exit26
  %.pre.i = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  br label %bb.m

bb.g:                                             ; preds = %malloc_mutex_lock.exit26
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  %i.bs = load i8, ptr %i.w, align 8, !tbaa !31
  %i.bt = icmp eq i8 %i.bs, 0
  %i.bu = load i8, ptr %i.x, align 1, !tbaa !31
  %i.bv = add i8 %i.bu, 1
  store i8 %i.bv, ptr %i.x, align 1, !tbaa !31
  br i1 %i.bt, label %bb.h, label %pre_reentrancy.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !76
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.h, %bb.g
  %i.bw = inttoptr i64 %i.av to ptr
  %i.bx = tail call fastcc i32 @background_thread_create_signals_masked(ptr noundef nonnull %i.ba, ptr noundef %i.bw), !inline_history !76 ; 2 uses
  %i.by = load i8, ptr %i.x, align 1, !tbaa !31
  %i.bz = add i8 %i.by, -1                        ; 2 uses
  store i8 %i.bz, ptr %i.x, align 1, !tbaa !31
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %post_reentrancy.exit.i

bb.i:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !76
  br label %post_reentrancy.exit.i

post_reentrancy.exit.i:                           ; preds = %bb.i, %pre_reentrancy.exit.i
  %i.cb = icmp eq i32 %i.bx, 0
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %post_reentrancy.exit.i
  %i.cc = add i32 %.028.ph, 1
  store i8 1, ptr %i.br, align 1, !tbaa !38
  br label %check_background_thread_creation.exit

bb.k:                                             ; preds = %post_reentrancy.exit.i
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.5, i32 noundef %i.bx) #12, !inline_history !76
  %i.cd = load i8, ptr @je_opt_abort, align 1, !tbaa !38, !range !24, !noundef !25
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.l, label %check_background_thread_creation.exit

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #13, !inline_history !76
  unreachable

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph.i
  %i.cf = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %i.cg = add i32 %.02939.i, 1                    ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp ugt i64 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i, label %check_background_thread_creation.exit.thread33, !llvm.loop !77

check_background_thread_creation.exit.thread33:   ; preds = %bb.m, %bb.c
  %i.cj = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.ck), !inline_history !76
  %.pre46 = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  br label %check_background_thread_creation.exit.thread

check_background_thread_creation.exit:            ; preds = %bb.j, %bb.k
  %.129 = phi i32 [ %.028.ph, %bb.k ], [ %i.cc, %bb.j ]
  %i.cl = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef nonnull %0, ptr noundef nonnull %i.cm), !inline_history !76
  br label %.outer, !llvm.loop !78

.outer:                                           ; preds = %.preheader35, %check_background_thread_creation.exit
  %.028.ph = phi i32 [ 1, %.preheader35 ], [ %.129, %check_background_thread_creation.exit ] ; 3 uses
  %i.cn = zext i32 %.028.ph to i64
  br label %.backedge

check_background_thread_creation.exit.thread:     ; preds = %bb.b, %check_background_thread_creation.exit.thread33
  %i.co = phi ptr [ %i.ad, %bb.b ], [ %.pre46, %check_background_thread_creation.exit.thread33 ]
  tail call fastcc void @background_work_sleep_once(ptr noundef %0, ptr noundef %i.co, i32 noundef 0)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %check_background_thread_creation.exit.thread, %background_thread_pause_check.exit
  br label %.backedge, !llvm.loop !78

.lr.ph43:                                         ; preds = %.preheader, %bb.t
  %i.cp = phi i64 [ %i.dp, %bb.t ], [ 1, %.preheader ] ; 2 uses
  %.142 = phi i32 [ %i.do, %bb.t ], [ 1, %.preheader ]
  %i.cq = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw [208 x i8], ptr %i.cq, i64 %i.cp ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cp
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !38, !range !24, !noundef !25
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph43
  %i.cv = tail call fastcc zeroext i1 @background_threads_disable_single(ptr noundef %0, ptr noundef %i.cr) ; 0 uses
  br label %bb.t

bb.o:                                             ; preds = %.lr.ph43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 120 ; 2 uses
  %i.cx = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cw) #12
  %.not.i21 = icmp eq i32 %i.cx, 0
  br i1 %.not.i21, label %bb.p, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.cy) #12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  store atomic i8 1, ptr %i.cz monotonic, align 1
  br label %bb.p

bb.p:                                             ; preds = %atomic_store_b.exit.i, %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 112 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !13
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 104 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.de, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %0, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 96 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !20
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.p, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 168 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !26
  %.not20 = icmp eq i32 %i.dj, 0
  br i1 %.not20, label %bb.s, label %bb.r

bb.r:                                             ; preds = %malloc_mutex_lock.exit
  %i.dk = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.dl = add i64 %i.dk, -1
  store i64 %i.dl, ptr @je_n_background_threads, align 8, !tbaa !21
  store i32 0, ptr %i.di, align 8, !tbaa !26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %malloc_mutex_lock.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  store atomic i8 0, ptr %i.dm monotonic, align 8
  %i.dn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cw) #12 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.do = add i32 %.142, 1                        ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  %i.dr = icmp ugt i64 %i.dq, %i.dp
  br i1 %i.dr, label %.lr.ph43, label %._crit_edge.loopexit, !llvm.loop !79

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ds = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ad, %.preheader ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 168
  store i32 0, ptr %i.dt, align 8, !tbaa !26
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
  %i.c = load atomic i8, ptr %i.b acquire, align 1, !range !24, !noundef !25
  %i.d = icmp ult i32 %2, %i.a
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.02227.us = phi i64 [ %.2.us, %bb.c ], [ -1, %.lr.ph ] ; 3 uses
  %.02326.us = phi i32 [ %i.n, %bb.c ], [ %2, %.lr.ph ] ; 2 uses
  %i.f = zext i32 %.02326.us to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not.us = icmp eq ptr %i.h, null
  %i.i = icmp ult i64 %.02227.us, 100000001
  %or.cond = select i1 %.not.us, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 10648
  %i.k = tail call i64 @je_pa_shard_time_until_deferred_work(ptr noundef %0, ptr noundef nonnull %i.j) #12
  %spec.select.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.02227.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %.2.us = phi i64 [ %.02227.us, %.lr.ph.split.us ], [ %spec.select.us, %bb.b ] ; 2 uses
  %i.l = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %.02326.us, %i.m                 ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.a
  br i1 %i.o, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.j, %bb.c, %bb.a
  %.022.lcssa = phi i64 [ -1, %bb.a ], [ %.2.us, %bb.c ], [ %.2, %bb.j ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !57
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 0, ptr %i.s, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.t = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.u = load i64, ptr %3, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !84
  %i.x = mul nsw i64 %i.w, 1000
  call void @je_nstime_init2(ptr noundef nonnull %4, i64 noundef %i.u, i64 noundef %i.x) #12
  %i.y = icmp eq i64 %.022.lcssa, -1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  store atomic i8 1, ptr %i.b release, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @je_nstime_init(ptr noundef nonnull %i.z, i64 noundef -1) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = call i32 @pthread_cond_wait(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) #12 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = call i64 @llvm.umax.i64(i64 %.022.lcssa, i64 100000000) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @je_nstime_init_update(ptr noundef nonnull %5) #12
  call void @je_nstime_iadd(ptr noundef nonnull %5, i64 noundef %i.ad) #12
  %i.ae = call i64 @je_nstime_ns(ptr noundef nonnull %5) #12 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  %i.ag = zext i1 %i.af to i8
  store atomic i8 %i.ag, ptr %i.b release, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @je_nstime_init(ptr noundef nonnull %i.ah, i64 noundef %i.ae) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @je_nstime_copy(ptr noundef nonnull %6, ptr noundef nonnull %4) #12
  call void @je_nstime_iadd(ptr noundef nonnull %6, i64 noundef %i.ad) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ai = call i64 @je_nstime_sec(ptr noundef nonnull %6) #12
  store i64 %i.ai, ptr %7, align 8, !tbaa !85
  %i.aj = call i64 @je_nstime_nsec(ptr noundef nonnull %6) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %7) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ap = load i64, ptr %3, align 8, !tbaa !82
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !84
  %i.ar = mul nsw i64 %i.aq, 1000
  call void @je_nstime_init2(ptr noundef nonnull %8, i64 noundef %i.ap, i64 noundef %i.ar) #12
  %i.as = call i32 @je_nstime_compare(ptr noundef nonnull %8, ptr noundef nonnull %4) #12
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.g, label %background_thread_sleep.exit

bb.g:                                             ; preds = %bb.f
  call void @je_nstime_subtract(ptr noundef nonnull %8, ptr noundef nonnull %4) #12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @je_nstime_add(ptr noundef nonnull %i.au, ptr noundef nonnull %8) #12
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
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.av
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  tail call void @je_arena_do_deferred_work(ptr noundef %0, ptr noundef nonnull %i.ax) #12
  %i.ay = icmp ult i64 %.02227, 100000001
  br i1 %i.ay, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 10648
  %i.ba = tail call i64 @je_pa_shard_time_until_deferred_work(ptr noundef %0, ptr noundef nonnull %i.az) #12
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %.02227)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.lr.ph.split, %bb.i
  %.2 = phi i64 [ %.02227, %.lr.ph.split ], [ %spec.select, %bb.i ], [ %.02227, %bb.h ] ; 2 uses
  %i.bb = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %.02326, %i.bc                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, %i.a
  br i1 %i.be, label %.lr.ph.split, label %._crit_edge, !llvm.loop !80
}

declare void @je_nstime_init(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @je_arena_do_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @je_pa_shard_time_until_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @je_nstime_init2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_nstime_init_update(ptr noundef) local_unnamed_addr #3

declare void @je_nstime_iadd(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @je_nstime_sec(ptr noundef) local_unnamed_addr #3

declare i64 @je_nstime_nsec(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @je_nstime_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

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
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !16, i64 56}
!14 = !{!"", !15, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !17, i64 36, !16, i64 40, !18, i64 48, !16, i64 56}
!15 = !{!"", !16, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"", !8, i64 0}
!18 = !{!"p1 _ZTS6tsdn_s", !12, i64 0}
!19 = !{!14, !18, i64 48}
!20 = !{!14, !16, i64 40}
!21 = !{!16, !16, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS24background_thread_info_s", !12, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!27, !8, i64 168}
!27 = !{!"background_thread_info_s", !16, i64 0, !9, i64 8, !28, i64 56, !8, i64 168, !29, i64 172, !15, i64 176, !16, i64 184, !16, i64 192, !15, i64 200}
!28 = !{!"malloc_mutex_s", !9, i64 0}
!29 = !{!"", !30, i64 0}
!30 = !{!"_Bool", !9, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{ptr @background_thread_create_signals_masked}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"je_pthread_create_wrapper: argument 0"}
!35 = distinct !{!35, !"je_pthread_create_wrapper"}
!36 = distinct !{!36, !35, !"je_pthread_create_wrapper: argument 1"}
!37 = !{ptr @background_thread_create_signals_masked, ptr @je_pthread_create_wrapper}
!38 = !{!30, !30, i64 0}
!39 = distinct !{!39, !40, !41, !42}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 4, i32 28}
!44 = distinct !{!44, !40, !41, !42}
!45 = distinct !{!45, !40, !41}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !40}
!49 = !{!27, !16, i64 0}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = !{!55, !16, i64 0}
!55 = !{!"background_thread_stats_s", !16, i64 0, !16, i64 8, !15, i64 16, !14, i64 24}
!56 = !{!55, !16, i64 8}
!57 = !{!27, !16, i64 192}
!58 = !{!14, !16, i64 16}
!59 = !{!14, !16, i64 24}
!60 = !{!14, !8, i64 32}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"je_pthread_create_wrapper: argument 0"}
!65 = distinct !{!65, !"je_pthread_create_wrapper"}
!66 = distinct !{!66, !65, !"je_pthread_create_wrapper: argument 1"}
!67 = !{ptr @je_pthread_create_wrapper}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = distinct !{null}
!70 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !40, !41, !42}
!73 = !{!"branch_weights", i32 8, i32 24}
!74 = distinct !{!74, !40, !41, !42}
!75 = distinct !{!75, !40, !41}
!76 = distinct !{null}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = !{!27, !16, i64 184}
!82 = !{!83, !16, i64 0}
!83 = !{!"timeval", !16, i64 0, !16, i64 8}
!84 = !{!83, !16, i64 8}
!85 = !{!86, !16, i64 0}
!86 = !{!"timespec", !16, i64 0, !16, i64 8}
!87 = !{!86, !16, i64 8}
end_hunk_1
