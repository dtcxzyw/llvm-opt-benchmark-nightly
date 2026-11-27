Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_generic_malloc:bb.a
  %i.ak = load ptr, ptr @GC_oom_fn, align 8
  br label %GC_get_oom_fn.exit

bb.y:                                             ; preds = %bb.x
  %i.al = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not.i44 = icmp eq i32 %i.al, 0
  br i1 %.not.i44, label %GC_lock.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.am = load i32, ptr @GC_nprocs, align 4
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ao = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ap = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit.i

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit.i

GC_lock.exit.i:                                   ; preds = %bb.ac, %bb.ab, %bb.y
  %.b.pr.i = load i1, ptr @GC_need_to_lock, align 4
  %i.aq = load ptr, ptr @GC_oom_fn, align 8       ; 2 uses
  br i1 %.b.pr.i, label %bb.ad, label %GC_get_oom_fn.exit

bb.ad:                                            ; preds = %GC_lock.exit.i
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_get_oom_fn.exit

GC_get_oom_fn.exit:                               ; preds = %GC_lock.exit.thread.i, %GC_lock.exit.i, %bb.ad
  %i.as = phi ptr [ %i.ak, %GC_lock.exit.thread.i ], [ %i.aq, %bb.ad ], [ %i.aq, %GC_lock.exit.i ]
  %i.at = tail call ptr %i.as(i64 noundef %0) #43
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.w, %GC_get_oom_fn.exit
  %.0 = phi ptr [ %i.at, %GC_get_oom_fn.exit ], [ %.032, %bb.w ], [ %i.z, %.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_notify_or_invoke_finalizers() unnamed_addr #2 {
bb.a:
  %i.a = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 344) monotonic, align 8
  %.not15 = icmp eq i64 %i.a, 0
  br i1 %.not15, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b8 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b8, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %GC_lock.exitthread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @GC_nprocs, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exitthread-pre-split

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exitthread-pre-split

GC_lock.exitthread-pre-split:                     ; preds = %bb.c, %bb.f, %bb.g
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 344), align 8
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %bb.h, label %.critedge

bb.h:                                             ; preds = %GC_lock.exitthread-pre-split
  %.b7 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b7, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.w

.critedge:                                        ; preds = %bb.b, %GC_lock.exitthread-pre-split
  %i.i = load i32, ptr @GC_finalize_on_demand, align 4
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.critedge
  %i.j = tail call i64 @pthread_self() #49        ; 4 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = xor i64 %i.m, %i.l
  %i.o = and i64 %i.n, 255
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %i.o
  %i.q = load volatile ptr, ptr %i.p, align 8     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %.not8.i9.i = icmp eq i64 %i.s, %i.j
  br i1 %.not8.i9.i, label %GC_lookup_thread.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.010.i10.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.q, %bb.j ]
  %i.t = load ptr, ptr %.010.i10.i, align 8, !nonnull !57, !noundef !57 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %.not8.i.i = icmp eq i64 %i.v, %i.j
  br i1 %.not8.i.i, label %GC_lookup_thread.exit.i, label %.lr.ph.i.i

GC_lookup_thread.exit.i:                          ; preds = %.lr.ph.i.i, %bb.j
  %.010.i.lcssa.i = phi ptr [ %i.q, %bb.j ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.lcssa.i, i64 44 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4               ; 3 uses
  %.not.i14 = icmp eq i8 %i.x, 0
  br i1 %.not.i14, label %bb.m, label %bb.k

bb.k:                                             ; preds = %GC_lookup_thread.exit.i
  %i.y = zext nneg i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i.lcssa.i, i64 42 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = add i16 %i.aa, 1                        ; 2 uses
  store i16 %i.ab, ptr %i.z, align 2
  %i.ac = zext i16 %i.ab to i32
  %.highbits.i = lshr i32 %i.ac, %i.y
  %i.ad = icmp eq i32 %.highbits.i, 0
  br i1 %i.ad, label %GC_check_finalizer_nested.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 0, ptr %i.z, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %GC_lookup_thread.exit.i
  %i.ae = add i8 %i.x, 1
  store i8 %i.ae, ptr %i.w, align 4
  br label %GC_check_finalizer_nested.exit

GC_check_finalizer_nested.exit:                   ; preds = %bb.k, %bb.m
  %.0.i = phi ptr [ %i.w, %bb.m ], [ null, %bb.k ] ; 2 uses
  %.b6 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b6, label %bb.n, label %bb.o

bb.n:                                             ; preds = %GC_check_finalizer_nested.exit
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %GC_check_finalizer_nested.exit
  %.not11 = icmp eq ptr %.0.i, null
  br i1 %.not11, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call i32 @GC_invoke_finalizers()   ; 0 uses
  store i8 0, ptr %.0.i, align 1
  br label %bb.w

bb.q:                                             ; preds = %.critedge
  %i.ah = load i64, ptr @last_finalizer_notification, align 8
  %i.ai = load i64, ptr @GC_gc_no, align 8        ; 2 uses
  %.not12 = icmp eq i64 %i.ah, %i.ai
  br i1 %.not12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr @GC_finalizer_notifier, align 8
  store i64 %i.ai, ptr @last_finalizer_notification, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0 = phi ptr [ %i.aj, %bb.r ], [ null, %bb.q ] ; 2 uses
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not13 = icmp eq ptr %.0, null
  br i1 %.not13, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void %.0() #43
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.o, %bb.p, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_alloc_large(i64 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 15) ; 2 uses
  %i.b = and i64 %i.a, -16                        ; 4 uses
  %i.c = icmp ult i64 %0, -4111
  %i.d = add i64 %i.a, 4080
  %i.e = lshr i64 %i.d, 12
  %i.f = select i1 %i.c, i64 %i.e, i64 4503599627370495, !prof !47 ; 5 uses
  %.b32 = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b32, label %bb.g, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %.b31 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b31, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @GC_init()
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @GC_lock()
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.a
  %i.i = load i32, ptr @GC_incremental, align 4
  %i.j = icmp eq i32 %i.i, 0
  %i.k = load i32, ptr @GC_dont_gc, align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i8 1, ptr @GC_collecting monotonic, align 4
  %i.m = trunc i64 %i.f to i32
  tail call fastcc void @GC_collect_a_little_inner(i32 noundef %i.m)
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = tail call fastcc ptr @GC_allochblk(i64 noundef %i.b, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.preheader, label %.critedge34

.preheader:                                       ; preds = %bb.i, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @GC_hblkfreelist, i64 %indvars.iv.i ; 3 uses
  %.083111.i = load ptr, ptr %i.p, align 8        ; 2 uses
  %.not112.i = icmp eq ptr %.083111.i, null
  br i1 %.not112.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader
  %.pre119.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @GC_free_bytes, i64 %indvars.iv.i ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.bh, %.lr.ph.i
  %i.r = phi ptr [ %.pre119.i, %.lr.ph.i ], [ %i.jx, %bb.bh ] ; 5 uses
  %.083113.i = phi ptr [ %.083111.i, %.lr.ph.i ], [ %.083.i, %bb.bh ] ; 8 uses
  %i.s = ptrtoint ptr %.083113.i to i64           ; 5 uses
  %i.t = lshr i64 %i.s, 22                        ; 2 uses
  %i.u = and i64 %i.t, 2047
  %i.v = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.u
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.082.in.i = phi ptr [ %i.v, %bb.j ], [ %i.ab, %bb.k ]
  %.082.i = load ptr, ptr %.082.in.i, align 8     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.082.i, i64 8208
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ne i64 %i.x, %i.t
  %i.z = icmp ne ptr %.082.i, %i.r
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %.082.i, i64 8216
  br i1 %i.aa, label %bb.k, label %bb.l, !llvm.loop !117

bb.l:                                             ; preds = %bb.k
  %i.ac = lshr i64 %i.s, 12
  %i.ad = and i64 %i.ac, 1023
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.082.i, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 9 uses
  %i.ai = add i64 %i.ah, %i.s                     ; 5 uses
  %i.aj = lshr i64 %i.ai, 22                      ; 3 uses
  %i.ak = and i64 %i.aj, 2047
  %i.al = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ak ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0.in.i = phi ptr [ %i.al, %bb.l ], [ %i.ar, %bb.m ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ne i64 %i.an, %i.aj
  %i.ap = icmp ne ptr %.0.i, %i.r
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.aq, label %bb.m, label %bb.n, !llvm.loop !118

bb.n:                                             ; preds = %bb.m
  %i.as = inttoptr i64 %i.ai to ptr               ; 5 uses
  %i.at = lshr i64 %i.ai, 12
  %i.au = and i64 %i.at, 1023                     ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8            ; 8 uses
  %.not91.i = icmp eq ptr %i.aw, null
  br i1 %.not91.i, label %bb.bh, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 4
  %.not92.i = icmp eq i32 %i.ba, 0
  br i1 %.not92.i, label %bb.bh, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 8 uses
  %i.bd = add i64 %i.bc, %i.ah
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %bb.q, label %bb.bh

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 25 ; 7 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bh = and i8 %i.bg, 2
  %i.bi = icmp ne i8 %i.bh, 0                     ; 3 uses
  %i.bj = and i32 %i.az, 2
  %i.bk = icmp eq i32 %i.bj, 0
  %or.cond.i = or i1 %i.bk, %i.bi
  br i1 %or.cond.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = icmp ugt i64 %i.ah, %i.bc
  %i.bm = load i64, ptr @GC_page_size, align 8    ; 5 uses
  %i.bn = sub i64 0, %i.bm                        ; 4 uses
  br i1 %i.bl, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bo = add i64 %i.ai, -1
  %i.bp = add i64 %i.bo, %i.bm
  %i.bq = and i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bm
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc ; 2 uses
  %i.bu = icmp ugt ptr %i.bs, %i.bt
  %i.bv = icmp eq i64 %i.bq, 0
  %i.bw = or i1 %i.bv, %i.bu
  br i1 %i.bw, label %GC_remap.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = and i64 %i.bn, %i.bx
  %.neg.i.i = sub i64 %i.bq, %i.by
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.ca = add i64 %.neg.i.i, %i.bz
  store i64 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  br label %GC_remap.exit.i

bb.u:                                             ; preds = %bb.r
  %i.cb = add i64 %i.s, -1
  %i.cc = add i64 %i.cb, %i.bm
  %i.cd = and i64 %i.cc, %i.bn
  %i.ce = inttoptr i64 %i.cd to ptr               ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bm
  %i.cg = getelementptr inbounds nuw i8, ptr %.083113.i, i64 %i.ah ; 2 uses
  %i.ch = icmp ugt ptr %i.cf, %i.cg
  %..i.i.i = select i1 %i.ch, ptr null, ptr %i.ce ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = and i64 %i.bn, %i.ci                    ; 2 uses
  %i.ck = ptrtoint ptr %..i.i.i to i64            ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp ne ptr %..i.i.i, null
  %i.cn = icmp ne i64 %i.cj, %i.ck
  %or.cond.i.i.i = and i1 %i.cm, %i.cn
  br i1 %or.cond.i.i.i, label %bb.v, label %GC_unmap.exit.i

bb.v:                                             ; preds = %bb.u
  %i.co = tail call i32 @madvise(ptr noundef nonnull %i.ce, i64 noundef %i.cl, i32 noundef 4) #43
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = tail call ptr @__errno_location() #49
  %i.cr = load i32, ptr %i.cq, align 4
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.180, ptr noundef nonnull %i.ce, i64 noundef %i.cl, i32 noundef %i.cr)
  %i.cs = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cs(ptr noundef nonnull @.str.181) #43, !inline_history !119
  tail call void @abort() #46
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ct = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.cu = add i64 %i.ct, %i.cl
  store i64 %i.cu, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
end_hunk_0
begin_hunk_1_@GC_reclaim_generic:bb.a

bb.k:                                             ; preds = %bb.a
  %i.as = icmp ne i32 %3, 0
  %.b = load i1, ptr @GC_debugging_started, align 4
  %or.cond = select i1 %i.as, i1 true, i1 %.b
  %i.at = sub i64 4096, %2                        ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at ; 3 uses
  %.not21.i = icmp slt i64 %i.at, 0               ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %.not21.i, label %GC_disclaim_and_reclaim.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aw = icmp ugt i64 %2, 16
  %i.ax = lshr i64 %2, 4                          ; 2 uses
  br i1 %i.aw, label %.lr.ph.split.us.i29, label %.lr.ph.split.i24

.lr.ph.split.us.i29:                              ; preds = %.lr.ph.i23, %bb.n
  %.024.us.i = phi ptr [ %.1.us.i30, %bb.n ], [ %0, %.lr.ph.i23 ] ; 7 uses
  %.01723.us.i = phi i64 [ %i.bf, %bb.n ], [ 0, %.lr.ph.i23 ] ; 2 uses
  %.01822.us.i = phi ptr [ %.119.us.i, %bb.n ], [ %4, %.lr.ph.i23 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.01723.us.i
  %i.az = load i8, ptr %i.ay, align 1
  %.not20.us.i = icmp eq i8 %i.az, 0
  br i1 %.not20.us.i, label %.lr.ph.i.preheader.us.i32, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i29
  %i.ba = getelementptr inbounds nuw i8, ptr %.024.us.i, i64 %2
  br label %bb.n

.lr.ph.i.preheader.us.i32:                        ; preds = %.lr.ph.split.us.i29
  store ptr %.01822.us.i, ptr %.024.us.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.us.i, i64 %2
  %i.bc = getelementptr inbounds nuw i8, ptr %.024.us.i, i64 8
  store i64 0, ptr %i.bc, align 8
  %.011.i.us.i33 = getelementptr inbounds nuw i8, ptr %.024.us.i, i64 16
  br label %.lr.ph.i.us.i34

.lr.ph.i.us.i34:                                  ; preds = %.lr.ph.i.us.i34, %.lr.ph.i.preheader.us.i32
  %.013.i.us.i35 = phi ptr [ %.0.i.us.i37, %.lr.ph.i.us.i34 ], [ %.011.i.us.i33, %.lr.ph.i.preheader.us.i32 ] ; 3 uses
  %.pn12.i.us.i36 = phi ptr [ %.013.i.us.i35, %.lr.ph.i.us.i34 ], [ %.024.us.i, %.lr.ph.i.preheader.us.i32 ]
  store i64 0, ptr %.013.i.us.i35, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn12.i.us.i36, i64 24
  store i64 0, ptr %i.bd, align 8
  %.0.i.us.i37 = getelementptr inbounds nuw i8, ptr %.013.i.us.i35, i64 16 ; 3 uses
  %i.be = icmp ult ptr %.0.i.us.i37, %i.bb
  br i1 %i.be, label %.lr.ph.i.us.i34, label %GC_clear_block.exit.loopexit.us.i38, !llvm.loop !136

bb.n:                                             ; preds = %GC_clear_block.exit.loopexit.us.i38, %bb.m
  %.119.us.i = phi ptr [ %.01822.us.i, %bb.m ], [ %.024.us.i, %GC_clear_block.exit.loopexit.us.i38 ] ; 2 uses
  %.1.us.i30 = phi ptr [ %i.ba, %bb.m ], [ %.0.i.us.i37, %GC_clear_block.exit.loopexit.us.i38 ] ; 2 uses
  %i.bf = add i64 %.01723.us.i, %i.ax
  %.not.us.i31 = icmp ugt ptr %.1.us.i30, %i.au
  br i1 %.not.us.i31, label %GC_disclaim_and_reclaim.exit, label %.lr.ph.split.us.i29, !llvm.loop !138

GC_clear_block.exit.loopexit.us.i38:              ; preds = %.lr.ph.i.us.i34
  %i.bg = load i64, ptr %5, align 8
  %i.bh = add i64 %i.bg, %2
  store i64 %i.bh, ptr %5, align 8
  br label %bb.n

.lr.ph.split.i24:                                 ; preds = %.lr.ph.i23, %bb.p
  %.024.i = phi ptr [ %.1.i25, %bb.p ], [ %0, %.lr.ph.i23 ] ; 5 uses
  %.01723.i = phi i64 [ %i.bo, %bb.p ], [ 0, %.lr.ph.i23 ] ; 2 uses
  %.01822.i = phi ptr [ %.119.i, %bb.p ], [ %4, %.lr.ph.i23 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 %.01723.i
  %i.bj = load i8, ptr %i.bi, align 1
  %.not20.i = icmp eq i8 %i.bj, 0
  br i1 %.not20.i, label %GC_clear_block.exit.i27, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i24
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i, i64 %2
  br label %bb.p

GC_clear_block.exit.i27:                          ; preds = %.lr.ph.split.i24
  store ptr %.01822.i, ptr %.024.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  store i64 0, ptr %i.bl, align 8
  %.011.i.i28 = getelementptr inbounds nuw i8, ptr %.024.i, i64 16
  %i.bm = load i64, ptr %5, align 8
  %i.bn = add i64 %i.bm, %2
  store i64 %i.bn, ptr %5, align 8
  br label %bb.p

bb.p:                                             ; preds = %GC_clear_block.exit.i27, %bb.o
  %.119.i = phi ptr [ %.01822.i, %bb.o ], [ %.024.i, %GC_clear_block.exit.i27 ] ; 2 uses
  %.1.i25 = phi ptr [ %i.bk, %bb.o ], [ %.011.i.i28, %GC_clear_block.exit.i27 ] ; 2 uses
  %i.bo = add i64 %.01723.i, %i.ax
  %.not.i26 = icmp ugt ptr %.1.i25, %i.au
  br i1 %.not.i26, label %GC_disclaim_and_reclaim.exit, label %.lr.ph.split.i24, !llvm.loop !138

bb.q:                                             ; preds = %bb.k
  br i1 %.not21.i, label %GC_reclaim_uninit.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = lshr i64 %2, 4
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i39
  %.027.i = phi i64 [ 0, %.lr.ph.i39 ], [ %.1.i40, %bb.t ] ; 2 uses
  %.01826.i = phi ptr [ %0, %.lr.ph.i39 ], [ %i.bu, %bb.t ] ; 3 uses
  %.01925.i = phi i64 [ 0, %.lr.ph.i39 ], [ %i.bv, %bb.t ] ; 2 uses
  %.02024.i = phi ptr [ %4, %.lr.ph.i39 ], [ %.121.i, %bb.t ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.01925.i
  %i.bs = load i8, ptr %i.br, align 1
  %.not22.i = icmp eq i8 %i.bs, 0
  br i1 %.not22.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = add i64 %.027.i, %2
  store ptr %.02024.i, ptr %.01826.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.121.i = phi ptr [ %.02024.i, %bb.r ], [ %.01826.i, %bb.s ] ; 2 uses
  %.1.i40 = phi i64 [ %.027.i, %bb.r ], [ %i.bt, %bb.s ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01826.i, i64 %2 ; 2 uses
  %i.bv = add i64 %.01925.i, %i.bq
  %.not.i41 = icmp ugt ptr %i.bu, %i.au
  br i1 %.not.i41, label %GC_reclaim_uninit.exit, label %bb.r, !llvm.loop !139

GC_reclaim_uninit.exit:                           ; preds = %bb.t, %bb.q
  %.020.lcssa.i = phi ptr [ %4, %bb.q ], [ %.121.i, %bb.t ]
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %.1.i40, %bb.t ]
  %i.bw = load i64, ptr %5, align 8
  %i.bx = add nsw i64 %i.bw, %.0.lcssa.i
  store i64 %i.bx, ptr %5, align 8
  br label %GC_disclaim_and_reclaim.exit

GC_disclaim_and_reclaim.exit:                     ; preds = %bb.j, %bb.f, %bb.p, %bb.n, %bb.l, %bb.b, %GC_reclaim_uninit.exit
  %.0 = phi ptr [ %.020.lcssa.i, %GC_reclaim_uninit.exit ], [ %.128.us.i, %bb.f ], [ %4, %bb.b ], [ %.119.i, %bb.p ], [ %4, %bb.l ], [ %.119.us.i, %bb.n ], [ %.128.i, %bb.j ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load i8, ptr %i.by, align 8
  %i.ca = and i8 %i.bz, -2
  %i.cb = icmp eq i8 %i.ca, 2
  br i1 %i.cb, label %bb.u, label %bb.y

bb.u:                                             ; preds = %GC_disclaim_and_reclaim.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = load i64, ptr %i.cc, align 8            ; 4 uses
  %i.ce = icmp ugt i64 %i.cd, 2048
  br i1 %i.ce, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.rhs.trunc.i = trunc nuw nsw i64 %i.cd to i16
  %i.cf = urem i16 4096, %.rhs.trunc.i
  %narrow.i = sub nuw nsw i16 4096, %i.cf
  %i.cg = lshr i16 %narrow.i, 4
  %i.ch = zext nneg i16 %i.cg to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = phi i32 [ %i.ch, %bb.v ], [ 256, %bb.u ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ck = lshr i64 %i.cd, 4
  %i.cl = trunc i64 %i.ck to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.012.i = phi i32 [ 0, %bb.w ], [ %i.co, %bb.x ] ; 2 uses
  %i.cm = zext nneg i32 %.012.i to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm
  store i8 1, ptr %i.cn, align 1
  %i.co = add i32 %.012.i, %i.cl                  ; 2 uses
  %.not.i42 = icmp ugt i32 %i.co, %i.ci
  br i1 %.not.i42, label %GC_set_hdr_marks.exit, label %bb.x, !llvm.loop !20

GC_set_hdr_marks.exit:                            ; preds = %bb.x
  %i.cp = udiv i64 4096, %i.cd
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store volatile i64 %i.cp, ptr %i.cq, align 8
  br label %bb.y

bb.y:                                             ; preds = %GC_set_hdr_marks.exit, %GC_disclaim_and_reclaim.exit
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_notify_all_builder() unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @builder_cv) #43
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.b(ptr noundef nonnull @.str.145) #43
  tail call void @abort() #46
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_allochblk(i64 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %3 = icmp ugt i64 %0, 9223372036854771712
  br i1 %3, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = add nuw nsw i64 %0, 4095
  %i.a = lshr i64 %4, 12                          ; 2 uses
  %i.b = icmp samesign ult i64 %0, 131073
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %i.a to i32
  br label %GC_hblk_fl_from_blocks.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %0, 1044480
  br i1 %i.d, label %GC_hblk_fl_from_blocks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = trunc nuw nsw i64 %i.a to i32
  %i.f = add nsw i32 %i.e, -32
  %i.g = lshr i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, 32
  br label %GC_hblk_fl_from_blocks.exit

GC_hblk_fl_from_blocks.exit:                      ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.c, %bb.c ], [ %i.h, %bb.e ], [ 60, %bb.d ] ; 3 uses
  %i.i = tail call fastcc ptr @GC_allochblk_nth(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %.0.i, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %GC_hblk_fl_from_blocks.exit
  %i.j = load i32, ptr @GC_use_entire_heap, align 4
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load i32, ptr @GC_dont_gc, align 4
  %i.m = icmp ne i32 %i.l, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr @GC_arrays, align 8
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 24), align 8
  %i.p = sub i64 %i.n, %i.o
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 8), align 8
  %i.r = icmp ult i64 %i.p, %i.q
  %i.s = load i32, ptr @GC_incremental, align 4
  %i.t = icmp ne i32 %i.s, 0
  %or.cond3 = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond3, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call fastcc i32 @GC_should_collect()
  %.not39 = icmp eq i32 %i.u, 0
  br i1 %.not39, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 96), align 8
  %i.w = load i64, ptr @GC_arrays, align 8
  %i.x = lshr i64 %i.w, 4
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 40), align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.011.i = phi i64 [ %i.z, %bb.j ], [ %i.ae, %bb.k ]
  %.0710.i = phi i32 [ 60, %bb.j ], [ %i.af, %bb.k ] ; 5 uses
  %i.ab = zext nneg i32 %.0710.i to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @GC_free_bytes, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, %.011.i                  ; 2 uses
  %.not.i = icmp uge i64 %i.ae, %i.aa
  %i.af = add nsw i32 %.0710.i, -1
  %.not12.i = icmp eq i32 %.0710.i, 0
  %or.cond.i = or i1 %.not12.i, %.not.i
  br i1 %or.cond.i, label %GC_enough_large_bytes_left.exit, label %bb.k, !llvm.loop !140

GC_enough_large_bytes_left.exit:                  ; preds = %bb.k
  %.inv = icmp slt i32 %.0710.i, 1
  %spec.select = select i1 %.inv, i32 1, i32 2
  br label %bb.l

bb.l:                                             ; preds = %GC_enough_large_bytes_left.exit, %bb.i, %bb.f, %bb.g, %bb.h
  %.026 = phi i32 [ %spec.select, %GC_enough_large_bytes_left.exit ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ]
  %.0 = phi i32 [ %.0710.i, %GC_enough_large_bytes_left.exit ], [ 60, %bb.f ], [ 0, %bb.i ], [ 60, %bb.h ], [ 60, %bb.g ] ; 2 uses
  %i.ag = icmp samesign ult i32 %.0.i, 32
  %i.ah = zext i1 %i.ag to i32
  %spec.select42 = add nuw nsw i32 %.0.i, %i.ah   ; 2 uses
  %.not4043 = icmp sgt i32 %spec.select42, %.0
  br i1 %.not4043, label %.loopexit, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.ai = add i32 %.12944, 1
  %exitcond.not = icmp eq i32 %.12944, %.0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !141

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.12944 = phi i32 [ %i.ai, %bb.m ], [ %spec.select42, %bb.l ] ; 3 uses
  %i.aj = tail call fastcc ptr @GC_allochblk_nth(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %.12944, i32 noundef %.026) ; 2 uses
  %.not41 = icmp eq ptr %i.aj, null
  br i1 %.not41, label %bb.m, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.m, %bb.l, %GC_hblk_fl_from_blocks.exit, %bb.a
  %.030 = phi ptr [ %i.i, %GC_hblk_fl_from_blocks.exit ], [ null, %bb.a ], [ null, %bb.l ], [ %i.aj, %.lr.ph ], [ null, %bb.m ]
  ret ptr %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc nonnull ptr @GC_build_fl(ptr noundef nonnull %0, i64 noundef range(i64 0, -1) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #20 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull %0, i32 1, i32 3, i32 1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.a, i32 1, i32 3, i32 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.b, i32 1, i32 3, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 378
  tail call void @llvm.prefetch.p0(ptr nonnull %i.c, i32 1, i32 3, i32 1)
  %.not38 = icmp eq i32 %2, 0                     ; 3 uses
  switch i64 %1, label %bb.n [
    i64 2, label %bb.b
    i64 4, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %3 to i64
  store i64 %i.d, ptr %0, align 8
  br i1 %.not38, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8
  %.0.ptr21.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.ptr23.i = phi ptr [ %.0.ptr21.i, %bb.c ], [ %.0.ptr.i.3, %bb.e ] ; 6 uses
  %.0.idx22.i = phi i64 [ 32, %bb.c ], [ %.0.add.i.3, %bb.e ] ; 5 uses
  %i.i = ptrtoint ptr %.0.ptr23.i to i64
  %i.j = getelementptr inbounds i8, ptr %.0.ptr23.i, i64 -16
  %i.k = ptrtoint ptr %i.j to i64
  store i64 %i.k, ptr %.0.ptr23.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.ptr23.i, i64 8
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.ptr23.i, i64 16
  store i64 %i.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.ptr23.i, i64 24
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx22.i ; 5 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.p = ptrtoint ptr %.0.ptr.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %.0.ptr.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %i.p, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx22.i ; 5 uses
  %.0.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.w = ptrtoint ptr %.0.ptr.i.1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %.0.ptr.i.1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i64 %i.w, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx22.i ; 6 uses
  %i.ad = icmp samesign ult i64 %.0.idx22.i, 4000
  br i1 %i.ad, label %bb.e, label %GC_build_fl_clear2.exit

bb.e:                                             ; preds = %bb.d
  %.0.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 2 uses
  %i.ae = ptrtoint ptr %.0.ptr.i.2 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %.0.ptr.i.2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store i64 %i.ae, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  store i64 0, ptr %i.aj, align 8
  %.0.add.i.3 = add nuw nsw i64 %.0.idx22.i, 128  ; 2 uses
  %.0.ptr.i.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.add.i.3
  br label %bb.d

GC_build_fl_clear2.exit:                          ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.al = ptrtoint ptr %0 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.am, align 8
  %.0.ptr17.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.ptr19.i = phi ptr [ %.0.ptr17.i, %bb.f ], [ %.0.ptr.i41.7, %bb.h ] ; 4 uses
  %.0.idx18.i = phi i64 [ 32, %bb.f ], [ %.0.add.i40.7, %bb.h ] ; 9 uses
  %i.an = ptrtoint ptr %.0.ptr19.i to i64
  %i.ao = getelementptr inbounds i8, ptr %.0.ptr19.i, i64 -16
  %i.ap = ptrtoint ptr %i.ao to i64
end_hunk_1
begin_hunk_2_@GC_default_push_other_roots:bb.a
  br label %GC_push_all_stack_sections.exit.i

bb.ac:                                            ; preds = %bb.x, %bb.w, %._crit_edge.i.i
  call void @GC_push_all_eager(ptr noundef %.07.lcssa.i.i, ptr noundef %.136.i), !inline_history !205
  %.pre91.i = ptrtoint ptr %.136.i to i64
  br label %GC_push_all_stack_sections.exit.i

GC_push_all_stack_sections.exit.i:                ; preds = %bb.ac, %bb.ab, %bb.y
  %.pre-phi.i = phi i64 [ %i.bz, %bb.y ], [ %i.bz, %bb.ab ], [ %.pre91.i, %bb.ac ]
  %i.cj = load ptr, ptr %i.b, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = add i64 %.pre-phi.i, %.13281.i
  %i.cm = sub i64 %i.cl, %i.ck
  br label %bb.ad

bb.ad:                                            ; preds = %GC_push_all_stack_sections.exit.i, %.lr.ph.i
  %.241.i = phi i32 [ %.14078.i, %.lr.ph.i ], [ %i.i, %GC_push_all_stack_sections.exit.i ] ; 2 uses
  %.233.i = phi i64 [ %.13281.i, %.lr.ph.i ], [ %i.cm, %GC_push_all_stack_sections.exit.i ] ; 2 uses
  %.3.i = phi i32 [ %.182.i, %.lr.ph.i ], [ %.2.i, %GC_push_all_stack_sections.exit.i ] ; 2 uses
  %i.cn = load ptr, ptr %.03779.i, align 8        ; 2 uses
  %.not50.i = icmp eq ptr %i.cn, null
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !208

._crit_edge.i:                                    ; preds = %bb.ad, %bb.c
  %.140.lcssa.i = phi i32 [ %.03985.i, %bb.c ], [ %.241.i, %bb.ad ] ; 2 uses
  %.132.lcssa.i = phi i64 [ %.03187.i, %bb.c ], [ %.233.i, %bb.ad ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.088.i, %bb.c ], [ %.3.i, %bb.ad ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %bb.ae, label %bb.c, !llvm.loop !209

bb.ae:                                            ; preds = %._crit_edge.i
  %i.co = load i32, ptr @GC_print_stats, align 4
  %.not.i = icmp eq i32 %i.co, 2
  br i1 %.not.i, label %bb.af, label %bb.ag, !prof !48

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.251, i32 noundef %.140.lcssa.i), !inline_history !205
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cp = icmp ne i32 %.1.lcssa.i, 0
  %.b49.i = load i1, ptr @GC_in_thread_creation, align 4
  %or.cond.i = select i1 %i.cp, i1 true, i1 %.b49.i
  br i1 %or.cond.i, label %GC_push_all_stacks.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr @GC_on_abort, align 8
  call void %i.cq(ptr noundef nonnull @.str.252) #43, !inline_history !205
  call void @abort() #46, !inline_history !205
  unreachable

GC_push_all_stacks.exit:                          ; preds = %bb.ag
  store i64 %.132.lcssa.i, ptr @GC_total_stacksize, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_set_push_other_roots(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  store ptr %0, ptr @GC_push_other_roots, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @GC_get_push_other_roots() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @GC_push_other_roots, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4) i32 @GC_incremental_protection_needs() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @clear_refs_fd, align 4
  %.not = icmp eq i32 %i.a, -1
  %i.b = load i64, ptr @GC_page_size, align 8
  %i.c = icmp eq i64 %i.b, 4096
  %. = select i1 %i.c, i32 1, i32 3
  %.0 = select i1 %.not, i32 %., i32 0
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_set_pages_executable(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = zext i1 %i.a to i32
  store i32 %i.b, ptr @GC_pages_executable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @GC_get_pages_executable() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @GC_pages_executable, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @GC_print_address_map() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [500 x i8], align 16              ; 4 uses
  %i.c = alloca [500 x i8], align 16              ; 4 uses
  %i.d = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.290, i32 noundef 0) #43 ; 4 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %GC_get_maps_len.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.d ]
  %i.f = call i64 @read(i32 noundef range(i32 0, -2147483648) %i.d, ptr noundef nonnull %i.c, i64 noundef 500) #43 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %GC_get_maps_len.exit.thread44.i, label %bb.d

GC_get_maps_len.exit.thread44.i:                  ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  %i.h = tail call i32 @close(i32 noundef %i.d) #43 ; 0 uses
  br label %GC_get_maps_len.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %i.f, %.0.i.i.i                  ; 3 uses
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.c, label %GC_get_maps_len.exit.i, !llvm.loop !210

GC_get_maps_len.exit.i:                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  %i.k = tail call i32 @close(i32 noundef %i.d) #43 ; 0 uses
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %GC_get_maps_len.exit.thread.i, label %.preheader59.i

GC_get_maps_len.exit.thread.i:                    ; preds = %GC_get_maps_len.exit.i, %GC_get_maps_len.exit.thread44.i, %bb.a
  %i.m = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.m(ptr noundef nonnull @.str.287) #43, !inline_history !211
  tail call void @abort() #46
  unreachable

.preheader59.i:                                   ; preds = %GC_get_maps_len.exit.i, %.preheader59.i.backedge
  %.1.i = phi i64 [ %.1.i.be, %.preheader59.i.backedge ], [ %i.i, %GC_get_maps_len.exit.i ] ; 5 uses
  %i.n = load i64, ptr @GC_get_maps.maps_buf_sz, align 8 ; 4 uses
  %.not.i = icmp ult i64 %.1.i, %i.n
  br i1 %.not.i, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %.preheader59.i
  %i.o = load ptr, ptr @GC_get_maps.maps_buf, align 8 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %GC_scratch_recycle_inner.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = load i64, ptr @GC_page_size, align 8     ; 3 uses
  %i.s = add nsw i64 %i.r, -1
  %i.t = and i64 %i.s, %i.q                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.t, 0
  %i.u = sub i64 %i.r, %i.t
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 %i.u ; 3 uses
  %i.v = icmp ugt i64 %i.n, %spec.select.i.i
  %i.w = sub nuw i64 %i.n, %spec.select.i.i
  %i.x = sub i64 0, %i.r
  %i.y = and i64 %i.w, %i.x
  %i.z = select i1 %i.v, i64 %i.y, i64 0          ; 3 uses
  %i.aa = load i32, ptr @GC_print_stats, align 4
  %.not18.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not18.i.i, label %bb.h, label %bb.g, !prof !47

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.154, i64 noundef %i.z, i64 noundef %i.n, ptr noundef nonnull %i.o), !inline_history !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not19.i.i = icmp eq i64 %i.z, 0
  br i1 %.not19.i.i, label %GC_scratch_recycle_inner.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add i64 %spec.select.i.i, %i.q
  %i.ac = inttoptr i64 %i.ab to ptr
  tail call fastcc void @GC_add_to_heap(ptr noundef %i.ac, i64 noundef %i.z), !inline_history !27
  br label %GC_scratch_recycle_inner.exit.i

GC_scratch_recycle_inner.exit.i:                  ; preds = %bb.i, %bb.h, %bb.e
  %GC_get_maps.maps_buf_sz.promoted.i = load i64, ptr @GC_get_maps.maps_buf_sz, align 8 ; 3 uses
  %.not2878.i = icmp ult i64 %.1.i, %GC_get_maps.maps_buf_sz.promoted.i
  br i1 %.not2878.i, label %bb.j, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_scratch_recycle_inner.exit.i, %.lr.ph.i
  %i.ad = phi i64 [ %i.ae, %.lr.ph.i ], [ %GC_get_maps.maps_buf_sz.promoted.i, %GC_scratch_recycle_inner.exit.i ]
  %i.ae = shl i64 %i.ad, 1                        ; 4 uses
  %.not28.i = icmp ult i64 %.1.i, %i.ae
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !212

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i64 %i.ae, ptr @GC_get_maps.maps_buf_sz, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %GC_scratch_recycle_inner.exit.i
  %.lcssa.i = phi i64 [ %i.ae, %._crit_edge.i ], [ %GC_get_maps.maps_buf_sz.promoted.i, %GC_scratch_recycle_inner.exit.i ] ; 3 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8 ; 4 uses
  %i.ag = tail call i64 @llvm.uadd.sat.i64(i64 %.lcssa.i, i64 15)
  %i.ah = and i64 %i.ag, -16                      ; 9 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.aj, %i.ak
  %.not33.i.i = icmp ugt i64 %i.ah, %i.al
  br i1 %.not33.i.i, label %.lr.ph.i.i, label %GC_scratch_alloc.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.am = icmp ugt i64 %.lcssa.i, 65520
  %i.an = load i64, ptr @GC_page_size, align 8    ; 3 uses
  br i1 %i.am, label %bb.p, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i.i
  %.pre100.i = load ptr, ptr @GC_unix_mmap_get_mem.last_addr, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.v, %.preheader.preheader.i
  %i.ao = phi ptr [ %.pre100.i, %.preheader.preheader.i ], [ %i.bn, %bb.v ]
  %i.ap = phi i64 [ %i.an, %.preheader.preheader.i ], [ %i.bh, %bb.v ] ; 3 uses
  %notsub.i.i = add nsw i64 %i.ap, -1
  %i.aq = icmp ult i64 %notsub.i.i, -65537
  %i.ar = add nsw i64 %i.ap, 65535
  %i.as = select i1 %i.aq, i64 %i.ar, i64 -1, !prof !47
  %i.at = sub i64 0, %i.ap
  %i.au = and i64 %i.as, %i.at                    ; 5 uses
  %i.av = load i32, ptr @GC_pages_executable, align 4
  %.not10.i.i38.i = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not10.i.i38.i, i32 3, i32 7
  %i.ax = tail call ptr @mmap(ptr noundef %i.ao, i64 noundef %i.au, i32 noundef %i.aw, i32 noundef 34, i32 noundef -1, i64 noundef 0) #43 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, inttoptr (i64 -1 to ptr)
  br i1 %i.ay, label %bb.k, label %bb.n, !prof !48

bb.k:                                             ; preds = %.preheader.i
  %i.az = load ptr, ptr @GC_unix_mmap_get_mem.last_addr, align 8
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = load i32, ptr @GC_pages_executable, align 4
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond.i.i41.i = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond.i.i41.i, label %bb.l, label %GC_unix_get_mem.exit42.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call ptr @__errno_location() #49
  %i.be = load i32, ptr %i.bd, align 4
  switch i32 %i.be, label %GC_unix_get_mem.exit42.thread.i [
    i32 13, label %bb.m
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bf = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bf(ptr noundef nonnull @.str.248) #43, !inline_history !213
  tail call void @abort() #46
  unreachable

bb.n:                                             ; preds = %.preheader.i
  %i.bg = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.bh = load i64, ptr @GC_page_size, align 8    ; 3 uses
  %i.bi = add i64 %i.bg, -1
  %i.bj = add i64 %i.bi, %i.au
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = sub i64 0, %i.bh
  %i.bm = and i64 %i.bk, %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  store ptr %i.bn, ptr @GC_unix_mmap_get_mem.last_addr, align 8
  %i.bo = and i64 %i.bg, 4095
  %.not11.i.i39.i = icmp eq i64 %i.bo, 0
  br i1 %.not11.i.i39.i, label %GC_unix_get_mem.exit42.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bp(ptr noundef nonnull @.str.249) #43, !inline_history !213
  tail call void @abort() #46
  unreachable

GC_unix_get_mem.exit42.i:                         ; preds = %bb.n
  %i.bq = icmp eq ptr %i.ax, null
  br i1 %i.bq, label %GC_unix_get_mem.exit42.thread.i, label %bb.v, !prof !65

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.br = sub nsw i64 0, %i.an                    ; 2 uses
  %i.bs = icmp ult i64 %i.ah, %i.br
  %i.bt = add i64 %i.ah, -1
  %i.bu = add i64 %i.bt, %i.an
  %i.bv = select i1 %i.bs, i64 %i.bu, i64 -1, !prof !47
  %i.bw = and i64 %i.bv, %i.br                    ; 3 uses
  %i.bx = load ptr, ptr @GC_unix_mmap_get_mem.last_addr, align 8
  %i.by = load i32, ptr @GC_pages_executable, align 4
  %.not10.i.i.i = icmp eq i32 %i.by, 0
  %i.bz = select i1 %.not10.i.i.i, i32 3, i32 7
  %i.ca = tail call ptr @mmap(ptr noundef %i.bx, i64 noundef %i.bw, i32 noundef %i.bz, i32 noundef 34, i32 noundef -1, i64 noundef 0) #43 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, inttoptr (i64 -1 to ptr)
  br i1 %i.cb, label %bb.q, label %bb.t, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr @GC_unix_mmap_get_mem.last_addr, align 8
  %i.cd = icmp eq ptr %i.cc, null
  %i.ce = load i32, ptr @GC_pages_executable, align 4
  %i.cf = icmp ne i32 %i.ce, 0
  %or.cond.i.i.i = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond.i.i.i, label %bb.r, label %GC_scratch_alloc.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cg = tail call ptr @__errno_location() #49
  %i.ch = load i32, ptr %i.cg, align 4
  switch i32 %i.ch, label %GC_scratch_alloc.exit.thread.i [
    i32 13, label %bb.s
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.ci = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ci(ptr noundef nonnull @.str.248) #43, !inline_history !213
  tail call void @abort() #46
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.cj = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.ck = load i64, ptr @GC_page_size, align 8    ; 2 uses
  %i.cl = add i64 %i.bw, -1
  %i.cm = add i64 %i.cl, %i.cj
  %i.cn = add i64 %i.cm, %i.ck
  %i.co = sub i64 0, %i.ck
  %i.cp = and i64 %i.cn, %i.co
  %i.cq = inttoptr i64 %i.cp to ptr
  store ptr %i.cq, ptr @GC_unix_mmap_get_mem.last_addr, align 8
  %i.cr = and i64 %i.cj, 4095
  %.not11.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not11.i.i.i, label %GC_unix_get_mem.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cs(ptr noundef nonnull @.str.249) #43, !inline_history !213
  tail call void @abort() #46
  unreachable

GC_unix_get_mem.exit.i:                           ; preds = %bb.t
  %.not30.i.i = icmp eq ptr %i.ca, null
  br i1 %.not30.i.i, label %GC_scratch_alloc.exit.thread.i, label %GC_scratch_alloc.exit.thread51.i

GC_unix_get_mem.exit42.thread.i:                  ; preds = %GC_unix_get_mem.exit42.i, %bb.l, %bb.k
  %i.ct = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.ct(ptr noundef nonnull @.str.153, i64 noundef %i.ah) #43, !inline_history !214
  %i.cu = load i64, ptr @GC_page_size, align 8    ; 2 uses
  %i.cv = sub nsw i64 0, %i.cu                    ; 2 uses
  %i.cw = icmp ult i64 %i.ah, %i.cv
  %i.cx = add nsw i64 %i.ah, -1
  %i.cy = add i64 %i.cx, %i.cu
  %i.cz = select i1 %i.cw, i64 %i.cy, i64 -1, !prof !47
  %i.da = and i64 %i.cz, %i.cv                    ; 2 uses
  %i.db = tail call ptr @GC_unix_get_mem(i64 noundef %i.da) ; 2 uses
  %.not29.i.i = icmp eq ptr %i.db, null
  br i1 %.not29.i.i, label %GC_scratch_alloc.exit.thread.i, label %GC_scratch_alloc.exit.thread51.i

bb.v:                                             ; preds = %GC_unix_get_mem.exit42.i
  %i.dc = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.dd = add i64 %i.dc, %i.au
  store i64 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  store ptr %i.de, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not.i29.i = icmp ugt i64 %i.ah, %i.au
  br i1 %.not.i29.i, label %.preheader.i, label %GC_scratch_alloc.exit.thread53.i

GC_scratch_alloc.exit.thread53.i:                 ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ah
  store ptr %i.df, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  br label %.sink.split.i

GC_scratch_alloc.exit.thread.i:                   ; preds = %GC_unix_get_mem.exit42.thread.i, %GC_unix_get_mem.exit.i, %bb.r, %bb.q
  store ptr null, ptr @GC_get_maps.maps_buf, align 8
  %.pre101.i = load i64, ptr @GC_get_maps.maps_buf_sz, align 8
  br label %.loopexit.i

GC_scratch_alloc.exit.thread51.i:                 ; preds = %GC_unix_get_mem.exit42.thread.i, %GC_unix_get_mem.exit.i
  %.sink147.i = phi i64 [ %i.bw, %GC_unix_get_mem.exit.i ], [ %i.da, %GC_unix_get_mem.exit42.thread.i ]
  %.026.i.ph.i = phi ptr [ %i.ca, %GC_unix_get_mem.exit.i ], [ %i.db, %GC_unix_get_mem.exit42.thread.i ]
  %i.dg = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.dh = add i64 %i.dg, %.sink147.i
  store i64 %i.dh, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %.sink.split.i

GC_scratch_alloc.exit.i:                          ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  store ptr %i.di, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  store ptr %i.af, ptr @GC_get_maps.maps_buf, align 8
  %i.dj = icmp eq ptr %i.af, null
  br i1 %i.dj, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %GC_scratch_alloc.exit.i, %GC_scratch_alloc.exit.thread.i
  %i.dk = phi i64 [ %.pre101.i, %GC_scratch_alloc.exit.thread.i ], [ %.lcssa.i, %GC_scratch_alloc.exit.i ]
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.288, i64 noundef %i.dk)
  %i.dl = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.dl(ptr noundef nonnull @.str.289) #43, !inline_history !211
  tail call void @abort() #46
  unreachable

.sink.split.i:                                    ; preds = %GC_scratch_alloc.exit.thread51.i, %GC_scratch_alloc.exit.thread53.i
  %.lcssa125.sink.i = phi ptr [ %i.ax, %GC_scratch_alloc.exit.thread53.i ], [ %.026.i.ph.i, %GC_scratch_alloc.exit.thread51.i ]
  store ptr %.lcssa125.sink.i, ptr @GC_get_maps.maps_buf, align 8
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i, %GC_scratch_alloc.exit.i
  %i.dm = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.290, i32 noundef 0) #43 ; 4 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %GC_get_maps_len.exit34.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  br label %bb.y
end_hunk_2
begin_hunk_3_@GC_mark_local:bb.a
  %i.br = icmp ult ptr %i.bq, %0
  br i1 %i.br, label %GC_release_mark_lock.exit.backedge, label %.lr.ph

GC_release_mark_lock.exit.backedge:               ; preds = %bb.av, %GC_steal_mark_stack.exit, %GC_release_mark_lock.exit.i46, %.critedge
  %.053.be = phi ptr [ %.1, %.critedge ], [ %.0.lcssa.i, %GC_release_mark_lock.exit.i46 ], [ %.0.lcssa.i, %GC_steal_mark_stack.exit ], [ %.0.lcssa.i, %bb.av ]
  br label %GC_release_mark_lock.exit

.lr.ph:                                           ; preds = %GC_steal_mark_stack.exit, %bb.av
  %i.bs = phi ptr [ %i.ec, %bb.av ], [ %i.bq, %GC_steal_mark_stack.exit ] ; 5 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = sub i64 %i.bt, %i.i                     ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 32752
  br i1 %i.bv, label %.loopexit39.i, label %bb.aj

.loopexit39.i:                                    ; preds = %.lr.ph
  %i.bw = ashr exact i64 %i.bu, 4
  %i.bx = add nsw i64 %i.bw, 1                    ; 3 uses
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.by = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 4
  %i.cf = add nsw i64 %i.ce, %i.bx
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.loopexit39.i
  %i.ci = load i32, ptr @GC_print_stats, align 4
  %.not.i48 = icmp eq i32 %i.ci, 0
  br i1 %.not.i48, label %bb.ae, label %bb.ad, !prof !47

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.148)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.ag

bb.af:                                            ; preds = %.loopexit39.i
  %i.cj = shl i64 %i.bx, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull align 8 %0, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bx
  %i.cl = ptrtoint ptr %i.ck to i64
  store atomic volatile i64 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160) release, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i.i45 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i45, label %GC_release_mark_lock.exit.i46, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cn(ptr noundef nonnull @.str.347) #43, !inline_history !292
  tail call void @abort() #46
  unreachable

GC_release_mark_lock.exit.i46:                    ; preds = %bb.ag
  %i.co = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @mark_cv) #43
  %.not.i13.i47 = icmp eq i32 %i.co, 0
  br i1 %.not.i13.i47, label %GC_release_mark_lock.exit.backedge, label %bb.ai

bb.ai:                                            ; preds = %GC_release_mark_lock.exit.i46
  %i.cp = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cp(ptr noundef nonnull @.str.145) #43, !inline_history !293
  tail call void @abort() #46
  unreachable

bb.aj:                                            ; preds = %.lr.ph
  %i.cq = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160) monotonic, align 8
  %i.cr = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 216) monotonic, align 8
  %i.cs = icmp ult i64 %i.cq, %i.cr
  %i.ct = icmp ugt ptr %i.bs, %i.j
  %or.cond.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond.i, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.cu = load i32, ptr @GC_active_count, align 4
  %i.cv = load i32, ptr @GC_helper_count, align 4
  %i.cw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i, label %has_inactive_helpers.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cx(ptr noundef nonnull @.str.347) #43, !inline_history !294
  tail call void @abort() #46
  unreachable

has_inactive_helpers.exit.i:                      ; preds = %bb.ak
  %.not.i43 = icmp ult i32 %i.cu, %i.cv
  br i1 %.not.i43, label %bb.am, label %bb.av

bb.am:                                            ; preds = %has_inactive_helpers.exit.i
  %i.cy = lshr i64 %i.bu, 5                       ; 3 uses
  %.idx = shl nuw nsw i64 %i.cy, 4                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %GC_return_mark_stack.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = add nsw i64 %.idx, -16
  %i.dc = ashr exact i64 %i.db, 4
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 3 uses
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.de = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 4
  %i.dl = add nsw i64 %i.dk, %i.dd
  %i.dm = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.do = load i32, ptr @GC_print_stats, align 4
  %.not.i44 = icmp eq i32 %i.do, 0
  br i1 %.not.i44, label %bb.aq, label %bb.ap, !prof !47

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.148)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.dp = shl nuw nsw i64 %i.dd, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.dp, i1 false)
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dd
  %i.dr = ptrtoint ptr %i.dq to i64
  store atomic volatile i64 %i.dr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160) release, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ds = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i, label %GC_release_mark_lock.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.dt(ptr noundef nonnull @.str.347) #43, !inline_history !292
  tail call void @abort() #46
  unreachable

GC_release_mark_lock.exit.i:                      ; preds = %bb.as
  %i.du = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @mark_cv) #43
  %.not.i13.i = icmp eq i32 %i.du, 0
  br i1 %.not.i13.i, label %GC_return_mark_stack.exit, label %bb.au

bb.au:                                            ; preds = %GC_release_mark_lock.exit.i
  %i.dv = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.dv(ptr noundef nonnull @.str.145) #43, !inline_history !293
  tail call void @abort() #46
  unreachable

GC_return_mark_stack.exit:                        ; preds = %bb.am, %GC_release_mark_lock.exit.i
  %i.dw = ptrtoint ptr %i.cz to i64
  %i.dx = sub i64 %i.bt, %i.dw
  %i.dy = and i64 %i.dx, -16
  %i.dz = add i64 %i.dy, 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.cz, i64 %i.dz, i1 false)
  %i.ea = sub nsw i64 0, %i.cy
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.ea
  br label %bb.av

bb.av:                                            ; preds = %GC_return_mark_stack.exit, %has_inactive_helpers.exit.i, %bb.aj
  %.2.i = phi ptr [ %i.eb, %GC_return_mark_stack.exit ], [ %i.bs, %has_inactive_helpers.exit.i ], [ %i.bs, %bb.aj ]
  %i.ec = tail call fastcc ptr @GC_mark_from(ptr noundef %.2.i, ptr noundef nonnull %0, ptr noundef nonnull %i.h) ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %0
  br i1 %i.ed, label %GC_release_mark_lock.exit.backedge, label %.lr.ph

bb.aw:                                            ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_scratch_alloc(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8 ; 2 uses
  %i.b = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 15)
  %i.c = and i64 %i.b, -16                        ; 8 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %.not33 = icmp ugt i64 %i.c, %i.g
  br i1 %.not33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = icmp ugt i64 %0, 65520
  br i1 %i.h, label %bb.b, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.p, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.c
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  br label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.j = load i64, ptr @GC_page_size, align 8     ; 3 uses
  %notsub = add nsw i64 %i.j, -1
  %i.k = icmp ult i64 %notsub, -65537
  %i.l = add nsw i64 %i.j, 65535
  %i.m = select i1 %i.k, i64 %i.l, i64 -1, !prof !47
  %i.n = sub i64 0, %i.j
  %i.o = and i64 %i.m, %i.n                       ; 4 uses
  %i.p = tail call ptr @GC_unix_get_mem(i64 noundef %i.o) ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.f, !prof !48

bb.b:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %i.t = icmp ult i64 %i.c, %i.s
  %i.u = add i64 %i.c, -1
  %i.v = add i64 %i.u, %i.r
  %i.w = select i1 %i.t, i64 %i.v, i64 -1, !prof !47
  %i.x = and i64 %i.w, %i.s                       ; 2 uses
  %i.y = tail call ptr @GC_unix_get_mem(i64 noundef %i.x) ; 2 uses
  %.not30 = icmp eq ptr %i.y, null
  br i1 %.not30, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.split
  %i.ab = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.ab(ptr noundef nonnull @.str.153, i64 noundef %i.c) #43
  %i.ac = load i64, ptr @GC_page_size, align 8    ; 2 uses
  %i.ad = sub nsw i64 0, %i.ac                    ; 2 uses
  %i.ae = icmp ult i64 %i.c, %i.ad
  %i.af = add nsw i64 %i.c, -1
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = select i1 %i.ae, i64 %i.ag, i64 -1, !prof !47
  %i.ai = and i64 %i.ah, %i.ad                    ; 2 uses
  %i.aj = tail call ptr @GC_unix_get_mem(i64 noundef %i.ai) ; 2 uses
  %.not29 = icmp eq ptr %i.aj, null
  br i1 %.not29, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.al = add i64 %i.ak, %i.ai
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.an = add i64 %i.am, %i.o
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not = icmp ugt i64 %i.c, %i.o
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %._crit_edge
  %.026 = phi ptr [ %.0.lcssa, %._crit_edge ], [ null, %bb.b ], [ %i.y, %bb.c ], [ %i.aj, %bb.e ], [ null, %bb.d ]
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_add_to_heap(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.ac, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.df, %bb.ac ] ; 5 uses
  %.tr57 = phi i64 [ %1, %bb.a ], [ %i.db, %bb.ac ] ; 4 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8 ; 3 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 256), align 8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %tailrecurse
  %.not = icmp eq i64 %i.a, 0
  %i.d = shl i64 %i.a, 1
  %i.e = select i1 %.not, i64 32, i64 %i.d        ; 2 uses
  %i.f = shl i64 %i.e, 4
  %i.g = tail call fastcc ptr @GC_scratch_alloc(i64 noundef %i.f) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8
  %i.j = add i64 %i.i, 32                         ; 2 uses
  %i.k = shl i64 %i.j, 4
  %i.l = tail call fastcc ptr @GC_scratch_alloc(i64 noundef %i.k) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.n(ptr noundef nonnull @.str.155) #43
  tail call void @abort() #46
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.038 = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.g, %bb.b ]  ; 2 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 256), align 8 ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8 ; 3 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8 ; 2 uses
  %.not52 = icmp eq i64 %i.q, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = shl i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %.038, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 256), align 8
  store ptr %.0, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8
  %i.s = load i32, ptr @GC_print_stats, align 4
  %.not53 = icmp eq i32 %i.s, 0
  br i1 %.not53, label %bb.i, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.156, i64 noundef %.038)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %tailrecurse
  %.040 = phi i64 [ 0, %tailrecurse ], [ %i.o, %bb.g ], [ %i.o, %bb.h ] ; 2 uses
  %.039 = phi ptr [ null, %tailrecurse ], [ %i.p, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  %i.t = icmp ult ptr %.tr, inttoptr (i64 4097 to ptr)
  br i1 %i.t, label %.lr.ph109, label %._crit_edge110

bb.j:                                             ; preds = %.lr.ph109
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 4096 ; 2 uses
  %i.v = icmp samesign ult ptr %i.u, inttoptr (i64 4097 to ptr)
  br i1 %i.v, label %.lr.ph109.1, label %._crit_edge110

.lr.ph109.1:                                      ; preds = %bb.j
  %i.w = add i64 %.tr57, -8192                    ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %GC_scratch_recycle_inner.exit, label %bb.k, !llvm.loop !295

bb.k:                                             ; preds = %.lr.ph109.1
  %i.y = getelementptr inbounds nuw i8, ptr %.tr, i64 8192 ; 2 uses
  %i.z = icmp samesign ult ptr %i.y, inttoptr (i64 4097 to ptr)
  br i1 %i.z, label %.lr.ph109.2, label %._crit_edge110

.lr.ph109.2:                                      ; preds = %bb.k
  %i.aa = add i64 %.tr57, -12288                  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %GC_scratch_recycle_inner.exit, label %bb.l, !llvm.loop !295

bb.l:                                             ; preds = %.lr.ph109.2
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr, i64 12288
  br label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.i
  %i.ad = add i64 %.tr57, -4096                   ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %GC_scratch_recycle_inner.exit, label %bb.j, !llvm.loop !295

._crit_edge110:                                   ; preds = %bb.j, %bb.k, %bb.l, %bb.i
  %.043.lcssa = phi ptr [ %.tr, %bb.i ], [ %i.u, %bb.j ], [ %i.y, %bb.k ], [ %i.ac, %bb.l ] ; 6 uses
  %.042.lcssa = phi i64 [ %.tr57, %bb.i ], [ %i.ad, %bb.j ], [ %i.w, %bb.k ], [ %i.aa, %bb.l ] ; 3 uses
  %i.af = ptrtoint ptr %.043.lcssa to i64         ; 4 uses
  %i.ag = add i64 %.042.lcssa, %i.af              ; 3 uses
  %.not5468 = icmp ugt i64 %i.ag, %i.af
  br i1 %.not5468, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge110, %bb.m
  %.04170 = phi i64 [ %i.aj, %bb.m ], [ %i.ag, %._crit_edge110 ]
  %.169 = phi i64 [ %i.ah, %bb.m ], [ %.042.lcssa, %._crit_edge110 ]
  %i.ah = add i64 %.169, -4096                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %GC_scratch_recycle_inner.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.aj = add i64 %.04170, -4096                  ; 3 uses
  %.not54 = icmp ugt i64 %i.aj, %i.af
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !296

._crit_edge:                                      ; preds = %bb.m, %._crit_edge110
  %.1.lcssa = phi i64 [ %.042.lcssa, %._crit_edge110 ], [ %i.ah, %bb.m ] ; 5 uses
  %.041.lcssa = phi i64 [ %i.ag, %._crit_edge110 ], [ %i.aj, %bb.m ]
  %i.ak = tail call fastcc ptr @GC_install_header(ptr noundef %.043.lcssa) ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %GC_scratch_recycle_inner.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an
end_hunk_3
