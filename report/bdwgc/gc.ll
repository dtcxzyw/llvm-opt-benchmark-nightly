Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_exit_check:bb.a
bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @GC_try_to_collect_general(ptr noundef null, i32 noundef 0), !inline_history !188 ; 0 uses
  %i.g = load atomic volatile i64, ptr @GC_have_errors monotonic, align 8
  %i.h = and i64 %i.g, 4294967295
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %GC_gcollect.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @GC_print_all_errors(), !inline_history !188
  br label %GC_gcollect.exit

GC_gcollect.exit:                                 ; preds = %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_init_parallel() unnamed_addr #2 {
bb.a:
  %.b3 = load i1, ptr @parallel_initialized, align 4
  br i1 %.b3, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @parallel_initialized, align 4
  %.b2 = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @GC_init()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.b1 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1, label %bb.e, label %GC_lock.exit

bb.e:                                             ; preds = %bb.d
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %GC_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.b = load i32, ptr @GC_nprocs, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.i, %bb.h, %bb.d, %bb.e
  %i.f = tail call i64 @pthread_self() #49        ; 4 uses
  %i.g = lshr i64 %i.f, 8
  %i.h = xor i64 %i.g, %i.f                       ; 2 uses
  %i.i = lshr i64 %i.h, 16
  %i.j = xor i64 %i.i, %i.h
  %i.k = and i64 %i.j, 255
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %i.k
  %i.m = load volatile ptr, ptr %i.l, align 8     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.not8.i5 = icmp eq i64 %i.o, %i.f
  br i1 %.not8.i5, label %GC_lookup_thread.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_lock.exit, %.lr.ph.i
  %.010.i6 = phi ptr [ %i.p, %.lr.ph.i ], [ %i.m, %GC_lock.exit ]
  %i.p = load ptr, ptr %.010.i6, align 8, !nonnull !57, !noundef !57 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i = icmp eq i64 %i.r, %i.f
  br i1 %.not8.i, label %GC_lookup_thread.exit, label %.lr.ph.i

GC_lookup_thread.exit:                            ; preds = %.lr.ph.i, %GC_lock.exit
  %.010.i.lcssa = phi ptr [ %i.m, %GC_lock.exit ], [ %i.p, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.lcssa, i64 104
  tail call fastcc void @GC_init_thread_local(ptr noundef nonnull %i.s)
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.j, label %bb.k

bb.j:                                             ; preds = %GC_lookup_thread.exit
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %GC_lookup_thread.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_enable_incremental() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr @GC_find_leak, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.100) #43
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %.b4 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b4, label %bb.d, label %GC_lock.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %GC_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr @GC_nprocs, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.h, %bb.g, %bb.c, %bb.d
  %i.j = load i32, ptr @GC_incremental, align 4
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.i, label %bb.y

bb.i:                                             ; preds = %GC_lock.exit
  %i.k = tail call i32 @getpagesize() #49         ; 2 uses
  %i.l = zext i32 %i.k to i64
  store i64 %i.l, ptr @GC_page_size, align 8
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %bb.j, label %GC_setpagesize.exit

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.n(ptr noundef nonnull @.str.238) #43, !inline_history !189
  tail call void @abort() #46
  unreachable

GC_setpagesize.exit:                              ; preds = %bb.i
  %.b.i = load i1, ptr @installed_looping_handler, align 4
  br i1 %.b.i, label %maybe_install_looping_handler.exit, label %bb.k

bb.k:                                             ; preds = %GC_setpagesize.exit
  %i.o = tail call ptr @getenv(ptr noundef nonnull @.str.230) #43
  %.not.i11 = icmp eq ptr %i.o, null
  br i1 %.not.i11, label %maybe_install_looping_handler.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = tail call ptr @signal(i32 noundef 11, ptr noundef nonnull @looping_handler) #43
  store ptr %i.p, ptr @old_segv_handler, align 8
  %i.q = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @looping_handler) #43
  store ptr %i.q, ptr @old_bus_handler, align 8
  store i1 true, ptr @installed_looping_handler, align 4
  br label %maybe_install_looping_handler.exit

maybe_install_looping_handler.exit:               ; preds = %GC_setpagesize.exit, %bb.k, %bb.l
  %.b5 = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b5, label %bb.r, label %bb.m

bb.m:                                             ; preds = %maybe_install_looping_handler.exit
  %.b3 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  store i32 1, ptr @GC_incremental, align 4
  tail call void @GC_init()
  %.b2 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b2, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.s = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @GC_lock()
  br label %bb.u

bb.r:                                             ; preds = %maybe_install_looping_handler.exit
  %i.t = load i32, ptr @manual_vdb_allowed, align 4
  %.not9 = icmp eq i32 %i.t, 0
  br i1 %.not9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i1 true, ptr @GC_manual_vdb, align 4
  store i32 1, ptr @GC_incremental, align 4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %0 = tail call fastcc i32 @GC_dirty_init()
  store i32 %0, ptr @GC_incremental, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.p, %bb.q, %bb.o
  %i.u = load i32, ptr @GC_incremental, align 4
  %i.v = icmp eq i32 %i.u, 0
  %i.w = load i32, ptr @GC_dont_gc, align 4
  %i.x = icmp ne i32 %i.w, 0
  %or.cond = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.y = call i32 @pthread_setcancelstate(i32 noundef 1, ptr noundef nonnull %i.a) #43 ; 0 uses
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %.not10 = icmp eq i64 %i.z, 0
  br i1 %.not10, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = call fastcc i32 @GC_try_to_collect_inner(ptr noundef nonnull @GC_never_stop_func) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call fastcc void @GC_read_dirty(i32 noundef 0)
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = call i32 @pthread_setcancelstate(i32 noundef %i.ab, ptr noundef null) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.y

bb.y:                                             ; preds = %GC_lock.exit, %bb.x, %bb.u
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ad = call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.b, %bb.a
  tail call void @GC_init()
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.aa
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_read_dirty(i32 noundef range(i32 0, 2) %0) unnamed_addr #2 {
bb.a:
  %.b3 = load i1, ptr @GC_manual_vdb, align 4     ; 2 uses
  %i.a = load i32, ptr @clear_refs_fd, align 4
  %i.b = icmp eq i32 %i.a, -1                     ; 2 uses
  %or.cond.not = select i1 %.b3, i1 true, i1 %i.b
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 27128), ptr noundef nonnull align 8 dereferenceable(32768) getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 32768, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i8 0, i64 32768, i1 false)
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8
  %.not102.i = icmp eq i64 %i.c, 0
  %or.cond = select i1 %.b3, i1 true, i1 %.not102.i
  br i1 %or.cond, label %GC_protect_heap.exit, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.d
  %i.d = load i64, ptr @GC_page_size, align 8
  %i.e = icmp ne i64 %i.d, 4096
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph99.split.us.i, label %.lr.ph99.split.i

.lr.ph99.split.us.i:                              ; preds = %.lr.ph99.i, %bb.e
  %i.g = phi i64 [ %i.r, %bb.e ], [ 0, %.lr.ph99.i ]
  %.06497.us.i = phi i32 [ %i.q, %bb.e ], [ 0, %.lr.ph99.i ]
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = load i32, ptr @GC_pages_executable, align 4
  %.not76.us.i = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not76.us.i, i32 1, i32 5
  %i.o = tail call i32 @mprotect(ptr noundef %i.j, i64 noundef %i.l, i32 noundef %i.n) #43
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.e, label %.split.us.i

bb.e:                                             ; preds = %.lr.ph99.split.us.i
  %i.q = add i32 %.06497.us.i, 1                  ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8
  %i.t = icmp ugt i64 %i.s, %i.r
  br i1 %i.t, label %.lr.ph99.split.us.i, label %GC_protect_heap.exit, !llvm.loop !190

.lr.ph99.split.i:                                 ; preds = %.lr.ph99.i, %._crit_edge.thread.i
  %i.u = phi i64 [ %i.cl, %._crit_edge.thread.i ], [ 0, %.lr.ph99.i ]
  %.06497.i = phi i32 [ %i.ck, %._crit_edge.thread.i ], [ 0, %.lr.ph99.i ]
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %.not103.i = icmp eq i64 %i.z, 0
  br i1 %.not103.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph99.split.i
  %i.ab = ptrtoint ptr %i.x to i64
  %.pre114.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %.lr.ph.i

.split.us.i:                                      ; preds = %.lr.ph99.split.us.i
  %i.ac = load i32, ptr @GC_pages_executable, align 4
  %.not77.i = icmp eq i32 %i.ac, 0
  %i.ad = tail call ptr @__errno_location() #49
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  br i1 %.not77.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.i
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.278, ptr noundef %i.j, i64 noundef %i.l, i32 noundef %i.ae)
  %i.af = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.af(ptr noundef nonnull @.str.279) #43, !inline_history !191
  tail call void @abort() #46
  unreachable

bb.g:                                             ; preds = %.split.us.i
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.280, ptr noundef %i.j, i64 noundef %i.l, i32 noundef %i.ae)
  %i.ag = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ag(ptr noundef nonnull @.str.281) #43, !inline_history !191
  tail call void @abort() #46
  unreachable

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %i.ah = phi ptr [ %i.bv, %bb.t ], [ %.pre114.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.ai = phi i64 [ %i.bw, %bb.t ], [ %i.ab, %.lr.ph.preheader.i ] ; 3 uses
  %.06094.i = phi ptr [ %.2.i, %bb.t ], [ %i.x, %.lr.ph.preheader.i ] ; 6 uses
  %.06193.i = phi ptr [ %.263.i, %bb.t ], [ %i.x, %.lr.ph.preheader.i ] ; 4 uses
  %i.aj = lshr i64 %i.ai, 22                      ; 2 uses
  %i.ak = and i64 %i.aj, 2047
  %i.al = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ak
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.0.in.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ar, %bb.h ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ne i64 %i.an, %i.aj
  %i.ap = icmp ne ptr %.0.i, %i.ah
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.aq, label %bb.h, label %bb.i, !llvm.loop !192

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i64 %i.ai, 12
  %i.at = and i64 %i.as, 1023
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.aw = icmp ult ptr %i.av, inttoptr (i64 4096 to ptr)
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.06193.i, i64 4096 ; 2 uses
  br label %bb.t, !llvm.loop !193

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 25
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, 4
  %.not72.i = icmp eq i8 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  br i1 %.not72.i, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k
  %.05980.i = lshr i64 %i.bc, 12
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = add i64 %i.bc, 4095
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bf = load i64, ptr %i.be, align 8
  %.not.i = icmp eq i64 %i.bf, 0
  %.059.i = lshr i64 %i.bd, 12                    ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l, %.thread.i
  %.05981.i = phi i64 [ %.05980.i, %.thread.i ], [ %.059.i, %bb.l ]
  %i.bg = icmp ult ptr %.06094.i, %.06193.i
  br i1 %i.bg, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bh = ptrtoint ptr %.06094.i to i64
  %i.bi = sub i64 %i.ai, %i.bh                    ; 3 uses
  %i.bj = load i32, ptr @GC_pages_executable, align 4
  %.not74.i = icmp eq i32 %i.bj, 0
  %i.bk = select i1 %.not74.i, i32 1, i32 5
  %i.bl = tail call i32 @mprotect(ptr noundef %.06094.i, i64 noundef %i.bi, i32 noundef %i.bk) #43
  %i.bm = icmp sgt i32 %i.bl, -1
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br i1 %i.bm, label %bb.r, label %bb.o
end_hunk_0
