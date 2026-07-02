inline.NumInlined: 92
inline.NumDeleted: 25
begin_hunk_0_@background_thread_create_locked:bb.a
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
  %min.iters.check = icmp ult i64 %i.a, 8
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
  %n.mod.vf = and i64 %i.a, 24
  %n.vec = and i64 %i.a, 8589934560               ; 5 uses
  %i.h = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> zeroinitializer, ptr %i.i, align 16, !tbaa !38
  store <16 x i8> zeroinitializer, ptr %i.j, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.a, 8589934584             ; 4 uses
  %i.l = trunc i64 %n.vec65 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %index66
  store <8 x i8> zeroinitializer, ptr %i.m, align 8, !tbaa !38
  %index.next67 = add nuw i64 %index66, 8         ; 2 uses
  %i.n = icmp eq i64 %index.next67, %n.vec65
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %i.a, %n.vec65
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  %.03340.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  store i8 1, ptr %i.b, align 16, !tbaa !38
  %i.o = tail call i32 @je_narenas_total_get() #12 ; 4 uses
  %i.p = icmp ugt i32 %i.o, 1
  br i1 %i.p, label %.lr.ph44.preheader, label %._crit_edge45

.lr.ph44.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext i32 %i.o to i64
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.q = phi i64 [ %i.t, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.03340 = phi i32 [ %i.s, %.lr.ph ], [ %.03340.ph, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !38
  %i.s = add i32 %.03340, 1                       ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %i.a, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !45

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.f
  %i.v = phi i64 [ 1, %.lr.ph44.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.03242 = phi i32 [ 0, %.lr.ph44.preheader ], [ %.1, %bb.f ] ; 3 uses
  %1 = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  %i.w = urem i64 %i.v, %1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph44
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.v
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %2 = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  %i.ae = urem i64 %i.v, %2
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.ad, i64 %i.ae ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ag) #12
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ai) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store atomic i8 1, ptr %i.aj monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 104 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.ao, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  store i32 1, ptr %i.as, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 172
  store atomic i8 0, ptr %i.at release, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  tail call void @je_nstime_init(ptr noundef nonnull %i.au, i64 noundef 0) #12
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  tail call void @je_nstime_copy(ptr noundef nonnull %i.aw, ptr noundef nonnull @nstime_zero) #12
  %i.ax = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store atomic i8 0, ptr %i.az monotonic, align 8
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #12 ; 0 uses
  %i.bb = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 2 uses
  %i.bc = urem i64 %i.v, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bc
  store i8 1, ptr %i.bd, align 1, !tbaa !38
  %i.be = add i32 %.03242, 1                      ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.not = icmp eq i64 %i.bb, %i.bf
  br i1 %.not, label %._crit_edge45, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit, %.lr.ph44, %bb.b
  %.1 = phi i32 [ %.03242, %.lr.ph44 ], [ %.03242, %bb.b ], [ %i.be, %malloc_mutex_lock.exit ]
  %indvars.iv.next = add nuw nsw i64 %i.v, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %.lr.ph44, !llvm.loop !46

._crit_edge45:                                    ; preds = %malloc_mutex_lock.exit, %bb.f, %._crit_edge
  %i.bg = tail call fastcc zeroext i1 @background_thread_create_locked(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.bh = icmp eq i32 %i.o, 0
  %or.cond.not = or i1 %i.bh, %i.bg
  br i1 %or.cond.not, label %.loopexit, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %._crit_edge45
  %wide.trip.count55 = zext i32 %i.o to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.h
  %indvars.iv52 = phi i64 [ 0, %.lr.ph47.preheader ], [ %indvars.iv.next53, %bb.h ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv52
  %i.bj = load atomic ptr, ptr %i.bi acquire, align 8 ; 2 uses
  %.not38 = icmp eq ptr %i.bj, null
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 10648
  tail call void @je_pa_shard_set_deferral_allowed(ptr noundef %0, ptr noundef nonnull %i.bk, i1 noundef zeroext true) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph47
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph47, !llvm.loop !47

.loopexit:                                        ; preds = %bb.h, %._crit_edge45
  ret i1 %i.bg
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
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  store i32 0, ptr %i.t, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.w) #12 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  store atomic i8 0, ptr %i.y monotonic, align 8
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aa = load i64, ptr %1, align 8, !tbaa !49
  %i.ab = call i32 @pthread_join(i64 noundef %i.aa, ptr noundef nonnull %i.a) #12
  %.not = icmp ne i32 %i.ab, 0                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

.critedge:                                        ; preds = %malloc_mutex_lock.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #12 ; 0 uses
  %i.ae = load i8, ptr %i.e, align 1, !tbaa !31
  %i.af = add i8 %i.ae, -1                        ; 2 uses
  store i8 %i.af, ptr %i.e, align 1, !tbaa !31
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.f, label %post_reentrancy.exit

bb.f:                                             ; preds = %.critedge
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12
  br label %post_reentrancy.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.e, align 1, !tbaa !31
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.e, align 1, !tbaa !31
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %post_reentrancy.exit19.sink.split, label %post_reentrancy.exit19

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.am = load i8, ptr %i.e, align 1, !tbaa !31
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.e, align 1, !tbaa !31
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %post_reentrancy.exit19.sink.split, label %post_reentrancy.exit19

post_reentrancy.exit19.sink.split:                ; preds = %bb.h, %bb.g
  call void @je_tsd_slow_update(ptr noundef nonnull %0) #12
  br label %post_reentrancy.exit19

post_reentrancy.exit19:                           ; preds = %post_reentrancy.exit19.sink.split, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.f, %.critedge, %post_reentrancy.exit19
  %.1 = phi i1 [ %.not, %post_reentrancy.exit19 ], [ false, %.critedge ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @je_background_thread_is_started(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq i32 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @je_background_thread_wakeup_early(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
