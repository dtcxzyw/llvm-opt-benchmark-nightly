Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/burst_buffer_datawarp?download=true
inline.NumInlined: 92
inline.NumDeleted: 38
begin_hunk_0_@_save_bb_state:bb.a
  %.06688 = load ptr, ptr %i.n, align 8           ; 2 uses
  %.not8089 = icmp eq ptr %.06688, null
  br i1 %.not8089, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %.06691 = phi ptr [ %.066, %bb.r ], [ %.06688, %.preheader ] ; 10 uses
  %.190 = phi i32 [ %.2, %bb.r ], [ %.06592, %.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06691, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.not81 = icmp eq ptr %i.p, null
  br i1 %.not81, label %bb.r, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %.06691, align 8           ; 3 uses
  %.not82 = icmp eq ptr %i.q, null
  br i1 %.not82, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #17
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.063 = phi i32 [ %i.t, %bb.f ], [ 0, %bb.e ]
  tail call void @packmem(ptr noundef %i.q, i32 noundef %.063, ptr noundef %i.g) #14
  %i.u = getelementptr inbounds nuw i8, ptr %.06691, i64 40
  %i.v = load i64, ptr %i.u, align 8
  tail call void @pack_time(i64 noundef %i.v, ptr noundef %i.g) #14
  %i.w = getelementptr inbounds nuw i8, ptr %.06691, i64 60
  %i.x = load i32, ptr %i.w, align 4
  tail call void @pack32(i32 noundef %i.x, ptr noundef %i.g) #14
  %i.y = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not83 = icmp eq ptr %i.y, null
  br i1 %.not83, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #17
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.aa, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.062 = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  tail call void @packmem(ptr noundef %i.y, i32 noundef %.062, ptr noundef %i.g) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %.06691, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not84 = icmp eq ptr %i.ad, null
  br i1 %.not84, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #17
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.af, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.061 = phi i32 [ %i.ag, %bb.j ], [ 0, %bb.i ]
  tail call void @packmem(ptr noundef %i.ad, i32 noundef %.061, ptr noundef %i.g) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %.06691, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not85 = icmp eq ptr %i.ai, null
  br i1 %.not85, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #17
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %i.ak, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.060 = phi i32 [ %i.al, %bb.l ], [ 0, %bb.k ]
  tail call void @packmem(ptr noundef %i.ai, i32 noundef %.060, ptr noundef %i.g) #14
  %i.am = getelementptr inbounds nuw i8, ptr %.06691, i64 112
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not86 = icmp eq ptr %i.an, null
  br i1 %.not86, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #17
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %i.ap, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i32 [ %i.aq, %bb.n ], [ 0, %bb.m ]
  tail call void @packmem(ptr noundef %i.an, i32 noundef %.0, ptr noundef %i.g) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %.06691, i64 168
  %i.as = load i32, ptr %i.ar, align 8
  tail call void @pack32(i32 noundef %i.as, ptr noundef %i.g) #14
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.au = and i32 %i.at, 4
  %.not87 = icmp eq i32 %i.au, 0
  br i1 %.not87, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.06691, i64 136
  %i.aw = load i64, ptr %i.av, align 8
  tail call void @pack64(i64 noundef %i.aw, ptr noundef %i.g) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ax = add i32 %.190, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %.2 = phi i32 [ %i.ax, %bb.q ], [ %.190, %.lr.ph ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.06691, i64 80
  %.066 = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not80 = icmp eq ptr %.066, null
  br i1 %.not80, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.r, %.preheader
  %.1.lcssa = phi i32 [ %.06592, %.preheader ], [ %.2, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.s, label %.preheader, !llvm.loop !45

bb.s:                                             ; preds = %._crit_edge
  %i.az = tail call i64 @time(ptr noundef null) #14
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not77 = icmp eq i32 %i.ba, 0
  br i1 %.not77, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @__errno_location() #15
  store i32 %i.ba, ptr %i.bb, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._save_bb_state) #16
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bc = load i32, ptr %i.h, align 4
  store i32 %i.i, ptr %i.h, align 4
  tail call void @pack32(i32 noundef %.1.lcssa, ptr noundef %i.g) #14
  store i32 %i.bc, ptr %i.h, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.067 = phi i64 [ %i.az, %bb.u ], [ %i.a, %bb.b ]
  %i.bd = tail call i32 @save_buf_to_state(ptr noundef nonnull @.str.109, ptr noundef nonnull %i.g, ptr noundef null) #14
  %.not78 = icmp eq i32 %i.bd, 0
  br i1 %.not78, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 %.067, ptr @_save_bb_state.last_save_time, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @free_buf(ptr noundef nonnull %i.g) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bb_p_get_status(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.run_command_args_t, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i32 2000, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.f, align 4
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 80), align 8
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.9, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.m = add i32 %0, 2
  %i.n = zext i32 %i.m to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.o = call ptr @slurm_xcalloc(i64 noundef %i.n, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 2758, ptr noundef nonnull @__func__.bb_p_get_status) #14 ; 6 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  store ptr %i.o, ptr %i.c, align 8
  store ptr @.str.9, ptr %i.o, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %0, 10
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.q = sub i64 %i.p, %i.a
  %i.r = add i64 %i.q, 7
  %diff.check = icmp ult i64 %i.r, 31
  br i1 %diff.check, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x ptr>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <2 x ptr> %wide.load, ptr %i.u, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader8 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  store ptr %i.x, ptr %i.y, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  store ptr %i.o, ptr %i.g, align 8
  %i.z = call ptr @run_command(ptr noundef nonnull %4) #14
  store ptr %i.z, ptr %i.b, align 8
  %i.aa = load i32, ptr %i.d, align 4
  %i.ab = and i32 %i.aa, 65407
  %or.cond = icmp eq i32 %i.ab, 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #14
  %i.ac = call ptr @xstrdup(ptr noundef nonnull @.str.10) #14
  store ptr %i.ac, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.c) #14
  %i.ad = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret ptr %i.ad
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @run_command(ptr noundef) local_unnamed_addr #5

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bb_p_reconfig() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  %1 = alloca %struct.slurmdb_assoc_rec, align 8  ; 7 uses
  %2 = alloca %struct.slurmdb_qos_rec_t, align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #15
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bb_p_reconfig) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.e = and i64 %i.d, 1099511627776
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @get_log_level() #14
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.bb_p_reconfig) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8
  tail call void @bb_load_config(ptr noundef nonnull @bb_state, ptr noundef nonnull @plugin_type) #14
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @slurm_xfree(ptr noundef nonnull %i.a) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call fastcc void @_test_config()
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 264
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @__errno_location() #15
  store i32 %i.j, ptr %i.o, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.bb_p_reconfig) #16
  unreachable

bb.k:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 168), align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %.016 = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not1517 = icmp eq ptr %.016, null
  br i1 %.not1517, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_set_assoc_mgr_ptrs.exit
  %.018 = phi ptr [ %.0, %_set_assoc_mgr_ptrs.exit ], [ %.016, %bb.k ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) @__const._set_assoc_mgr_ptrs.assoc_locks, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %1, i8 0, i64 328, i1 false)
  %i.r = load ptr, ptr %.018, align 8
  store ptr %i.r, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.018, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.018, i64 168
  %i.v = load i32, ptr %i.u, align 8
  store i32 %i.v, ptr %i.m, align 4
  call void @assoc_mgr_lock(ptr noundef nonnull %0) #14
  %i.w = load ptr, ptr @acct_db_conn, align 8
  %i.x = load i16, ptr @accounting_enforce, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  %i.aa = call i32 @assoc_mgr_fill_in_assoc(ptr noundef %i.w, ptr noundef nonnull %1, i32 noundef %i.y, ptr noundef nonnull %i.z, i1 noundef zeroext true) #14
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.018, i64 16 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ac) #14
  %i.ad = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 132
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.102, i32 noundef %i.af) #14
  store ptr %i.ag, ptr %i.ac, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %2, i8 0, i64 344, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.018, i64 112 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.n, align 8
  %i.aj = load ptr, ptr @acct_db_conn, align 8
  %i.ak = load i16, ptr @accounting_enforce, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.018, i64 120
  %i.an = call i32 @assoc_mgr_fill_in_qos(ptr noundef %i.aj, ptr noundef nonnull %2, i32 noundef %i.al, ptr noundef nonnull %i.am, i1 noundef zeroext true) #14
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %_set_assoc_mgr_ptrs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
