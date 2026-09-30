Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_print_heap_sects:bb.a
  %i.q = lshr i64 %i.p, 12
  %i.r = lshr i64 %i.p, 18
  %i.s = and i64 %i.r, 4095                       ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.q, 63                         ; 2 uses
  %i.w = shl nuw i64 1, %i.v                      ; 3 uses
  %i.x = and i64 %i.u, %i.w
  %.not24.i.us = icmp eq i64 %i.x, 0
  br i1 %.not24.i.us, label %bb.b, label %GC_is_black_listed.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, %i.w
  %.not25.i.us = icmp eq i64 %i.aa, 0
  br i1 %.not25.i.us, label %bb.c, label %GC_is_black_listed.exit.us

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.s
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %GC_is_black_listed.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = and i64 %i.ac, %i.w
  %.not26.i.us = icmp eq i64 %i.ah, 0
  br i1 %.not26.i.us, label %bb.f, label %GC_is_black_listed.exit.us

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = lshr i64 %i.aj, %i.v
  %i.al = trunc i64 %i.ak to i32
  %spec.select19.us = and i32 %i.al, 1
  br label %GC_is_black_listed.exit.us

GC_is_black_listed.exit.us:                       ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.lr.ph.split.us
  %not..023.i.us = phi i32 [ 1, %.lr.ph.split.us ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.b ], [ %spec.select19.us, %bb.f ]
  %spec.select.us = add i32 %not..023.i.us, %.021.us ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01620.us, i64 4096 ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.j
  br i1 %i.an, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !87

.lr.ph.split:                                     ; preds = %.lr.ph, %GC_is_black_listed.exit
  %.021 = phi i32 [ %spec.select, %GC_is_black_listed.exit ], [ 0, %.lr.ph ]
  %.01620 = phi ptr [ %i.bf, %GC_is_black_listed.exit ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.ao = ptrtoint ptr %.01620 to i64             ; 2 uses
  %i.ap = lshr i64 %i.ao, 12
  %i.aq = lshr i64 %i.ao, 18
  %i.ar = and i64 %i.aq, 4095                     ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ar
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %GC_is_black_listed.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split
  %i.ay = and i64 %i.ap, 63                       ; 2 uses
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.at, %i.az
  %.not26.i = icmp eq i64 %i.ba, 0
  br i1 %.not26.i, label %bb.i, label %GC_is_black_listed.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ar
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = lshr i64 %i.bc, %i.ay
  %i.be = trunc i64 %i.bd to i32
  %spec.select19 = and i32 %i.be, 1
  br label %GC_is_black_listed.exit

GC_is_black_listed.exit:                          ; preds = %bb.i, %bb.h, %bb.g
  %not..023.i = phi i32 [ %spec.select19, %bb.i ], [ 0, %bb.g ], [ 1, %bb.h ]
  %spec.select = add i32 %not..023.i, %.021       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01620, i64 4096 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.j
  br i1 %i.bg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %GC_is_black_listed.exit, %GC_is_black_listed.exit.us, %.lr.ph26
  %.0.lcssa = phi i32 [ 0, %.lr.ph26 ], [ %spec.select.us, %GC_is_black_listed.exit.us ], [ %spec.select, %GC_is_black_listed.exit ]
  %i.bh = lshr i64 %i.i, 12
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.28, i32 noundef %.01724, ptr noundef %i.g, ptr noundef %i.j, i32 noundef %.0.lcssa, i64 noundef %i.bh)
  %i.bi = add i32 %.01724, 1                      ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8
  %i.bl = icmp ugt i64 %i.bk, %i.bj
  br i1 %i.bl, label %.lr.ph26, label %._crit_edge27, !llvm.loop !88

._crit_edge27:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_set_max_heap_size(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  store i64 %0, ptr @GC_max_heapsize, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @GC_expand_hp(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.b5 = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b5, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @GC_init()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.b4 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b4, label %bb.d, label %GC_lock.exit

bb.d:                                             ; preds = %bb.c
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %GC_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = load i32, ptr @GC_nprocs, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %i.f = lshr i64 %0, 12
  %i.g = tail call fastcc i32 @GC_expand_hp_inner(i64 noundef %i.f) ; 2 uses
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %GC_lock.exit
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 8), align 8
  %i.i = add i64 %i.h, %0
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 8), align 8
  br label %bb.j

bb.j:                                             ; preds = %GC_lock.exit, %bb.i
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_expand_hp_inner(i64 noundef range(i64 0, 9007199254740991) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %0, i64 16)
  %i.b = shl i64 %spec.store.select, 12           ; 2 uses
  %i.c = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.d = sub i64 0, %i.c                          ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  %i.f = add i64 %i.b, -1
  %i.g = add i64 %i.f, %i.c
  %i.h = select i1 %i.e, i64 %i.g, i64 -1, !prof !47
  %i.i = and i64 %i.h, %i.d                       ; 8 uses
  %i.j = load i64, ptr @GC_max_heapsize, align 8  ; 3 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @GC_arrays, align 8
  %i.m = sub nuw i64 %i.j, %i.i
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.o = tail call ptr @GC_unix_get_mem(i64 noundef %i.i) ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @GC_current_warn_proc, align 8
  %i.r = lshr i64 %i.i, 10
  tail call void %i.q(ptr noundef nonnull @.str.187, i64 noundef %i.r) #45
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.t = add i64 %i.s, %i.i
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.u = load i32, ptr @GC_print_stats, align 4
  %.not37 = icmp eq i32 %i.u, 0
  br i1 %.not37, label %bb.h, label %bb.g, !prof !47

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr @GC_arrays, align 8
  %i.w = add i64 %i.i, 511
  %i.x = add i64 %i.w, %i.v
  %i.y = lshr i64 %i.x, 10
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.188, i64 noundef %i.y, i64 noundef %i.z)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.b.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @GC_total_stacksize, align 8
  br label %min_bytes_allocd.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr @GC_stackbottom, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.ad = ptrtoint ptr %i.ac to i64
  store volatile i64 %i.ad, ptr %i.a, align 8
  %.0..0..0..0..0..0..0..0..i.i = load volatile i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ae, %.0..0..0..0..0..0..0..0..i.i
  br label %min_bytes_allocd.exit

min_bytes_allocd.exit:                            ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.aa, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = load i64, ptr @GC_root_size, align 8
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  %i.aj = lshr i64 %i.ai, 2
  %reass.add.i = add i64 %i.ah, %.0.i
  %reass.mul.i = shl i64 %reass.add.i, 1
  %i.ak = add i64 %i.aj, %i.ag
  %i.al = add i64 %i.ak, %reass.mul.i
  %i.am = load i64, ptr @GC_free_space_divisor, align 8
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = load i32, ptr @GC_incremental, align 4
  %.not.i = icmp ne i32 %i.ao, 0
  %i.ap = zext i1 %.not.i to i64
  %spec.select.i = lshr i64 %i.an, %i.ap
  %i.aq = load i64, ptr @min_bytes_allocd_minimum, align 8
  %i.ar = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.aq) ; 2 uses
  %i.as = add i64 %i.ar, 33554432                 ; 2 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 16), align 8 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  %.not38 = icmp sgt ptr %i.o, inttoptr (i64 -1 to ptr)
  %or.cond = and i1 %.not38, %i.au
  br i1 %or.cond, label %bb.k, label %1

1:                                                ; preds = %min_bytes_allocd.exit
  %.not39 = icmp ne ptr %i.at, null
  %2 = icmp ult ptr %i.at, %i.o
  %or.cond41 = and i1 %.not39, %2
  br i1 %or.cond41, label %bb.k, label %bb.m

bb.k:                                             ; preds = %1, %min_bytes_allocd.exit
  %3 = ptrtoint ptr %i.o to i64                   ; 2 uses
  %i.av = add i64 %i.i, %3
  %i.aw = add i64 %i.av, %i.as                    ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %3
  br i1 %i.ax, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = tail call noundef i64 @llvm.umax.i64(i64 %i.az, i64 %i.aw)
  br label %.sink.split

bb.m:                                             ; preds = %1
  %4 = ptrtoint ptr %i.o to i64                   ; 2 uses
  %i.bb = sub i64 %4, %i.as                       ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %4
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.bb)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.n
  %.sink48 = phi i64 [ %i.bf, %bb.n ], [ %i.ba, %bb.l ]
  %GC_least_plausible_heap_addr.sink = phi ptr [ @GC_least_plausible_heap_addr, %bb.n ], [ @GC_greatest_plausible_heap_addr, %bb.l ]
  %i.bg = inttoptr i64 %.sink48 to ptr
  store ptr %i.bg, ptr %GC_least_plausible_heap_addr.sink, align 8
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m, %bb.k
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 16), align 8
  tail call fastcc void @GC_add_to_heap(ptr noundef nonnull %i.o, i64 noundef %i.i)
  %i.bh = load i64, ptr @GC_arrays, align 8       ; 2 uses
  %i.bi = add i64 %i.ar, 16777216
  %spec.store.select1 = tail call i64 @llvm.uadd.sat.i64(i64 %i.bh, i64 %i.bi)
  store i64 %spec.store.select1, ptr @GC_collect_at_heapsize, align 8
  %i.bj = load ptr, ptr @GC_on_heap_resize, align 8 ; 2 uses
  %.not40 = icmp eq ptr %i.bj, null
  br i1 %.not40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.bj(i64 noundef %i.bh) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.b, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.p ], [ 1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_set_allocd_bytes_per_finalizer(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  store i64 %0, ptr @GC_allocd_bytes_per_finalizer, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_allocd_bytes_per_finalizer() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @GC_allocd_bytes_per_finalizer, align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_register_describe_type_fn(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr @GC_describe_type_fns, i64 %i.a
  store ptr %1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @GC_get_debug_header_size() local_unnamed_addr #11 {
bb.a:
  ret i64 32
}

; Function Attrs: nounwind uwtable
define void @GC_debug_register_displacement(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.b2 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b2, label %bb.b, label %GC_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %GC_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @GC_nprocs, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.a, %bb.b
  %i.f = icmp ugt i64 %0, 4095
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %GC_lock.exit
  %i.g = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.g(ptr noundef nonnull @.str.131) #45, !inline_history !5
  tail call void @abort() #48
  unreachable

bb.h:                                             ; preds = %GC_lock.exit
  %i.h = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %0 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1
  %.not.i3 = icmp eq i8 %i.i, 0
  br i1 %.not.i3, label %bb.i, label %GC_register_displacement_inner.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.h, align 1
  %i.j = and i64 %0, 7
  %i.k = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), i64 %i.j
  store i8 1, ptr %i.k, align 1
  br label %GC_register_displacement_inner.exit

GC_register_displacement_inner.exit:              ; preds = %bb.h, %bb.i
  %i.l = icmp samesign ugt i64 %0, 4063
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %GC_register_displacement_inner.exit
  %i.m = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.m(ptr noundef nonnull @.str.131) #45, !inline_history !5
  tail call void @abort() #48
  unreachable

bb.k:                                             ; preds = %GC_register_displacement_inner.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %.not.i4 = icmp eq i8 %i.o, 0
  br i1 %.not.i4, label %bb.l, label %GC_register_displacement_inner.exit5

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.n, align 1
  %i.p = and i64 %0, 7
  %i.q = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), i64 %i.p
  store i8 1, ptr %i.q, align 1
  br label %GC_register_displacement_inner.exit5

GC_register_displacement_inner.exit5:             ; preds = %bb.k, %bb.l
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %GC_register_displacement_inner.exit5
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %GC_register_displacement_inner.exit5, %bb.m
  ret void
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_malloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -41
  %i.d = icmp ult i64 %0, %i.c
  %reass.sub = add i64 %0, 40
  %i.e = sub i64 %reass.sub, %i.b
  %i.f = select i1 %i.d, i64 %i.e, i64 -1, !prof !47
  %i.g = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.f, i32 noundef 1) #53
  %i.h = tail call fastcc ptr @store_debug_info(ptr noundef %i.g, i64 noundef %0, ptr noundef nonnull @.str.29, ptr noundef %1, i32 noundef %2)
  ret ptr %i.h
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias ptr @GC_malloc_kind(i64 noundef %0, i32 noundef 1) #53
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @store_debug_info(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.200, ptr noundef %2, i64 noundef %1, ptr noundef %3, i32 noundef %4)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.b11 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b11, label %bb.d, label %GC_lock.exit

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %GC_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = load i32, ptr @GC_nprocs, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_0
begin_hunk_1_@GC_notify_or_invoke_finalizers:bb.a
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
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
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
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not13 = icmp eq ptr %.0, null
  br i1 %.not13, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void %.0() #45
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.o, %bb.p, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_alloc_large(i64 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 15) ; 3 uses
  %i.b = and i64 %i.a, -16                        ; 4 uses
  %i.c = icmp ult i64 %i.a, -4096
  %i.d = add nuw i64 %i.a, 4080
  %i.e = lshr i64 %i.d, 12
  %i.f = select i1 %i.c, i64 %i.e, i64 4503599627370495, !prof !47 ; 5 uses
  %.b32 = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b32, label %bb.g, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %.b31 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b31, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @GC_init()
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
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
  %i.bh = and i8 %i.bg, 2                         ; 2 uses
  %i.bi = icmp ne i8 %i.bh, 0
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
  %i.co = tail call i32 @madvise(ptr noundef nonnull %i.ce, i64 noundef %i.cl, i32 noundef 4) #45
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = tail call ptr @__errno_location() #51
  %i.cr = load i32, ptr %i.cq, align 4
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.180, ptr noundef nonnull %i.ce, i64 noundef %i.cl, i32 noundef %i.cr)
  %i.cs = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cs(ptr noundef nonnull @.str.181) #45, !inline_history !119
  tail call void @abort() #48
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ct = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.cu = add i64 %i.ct, %i.cl
  store i64 %i.cu, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  br label %GC_unmap.exit.i

GC_unmap.exit.i:                                  ; preds = %bb.x, %bb.u
  tail call fastcc void @GC_unmap_gap(ptr noundef %.083113.i, i64 noundef %i.ah, ptr noundef %i.as, i64 noundef %i.bc)
  %i.cv = load i8, ptr %i.bf, align 1
  %i.cw = or i8 %i.cv, 2
  store i8 %i.cw, ptr %i.bf, align 1
  br label %GC_remap.exit.i

bb.y:                                             ; preds = %bb.q
  %i.cx = and i8 %i.ay, 2
  %3 = icmp eq i8 %i.cx, 0
  %i.cy = icmp eq i8 %i.bh, 0                     ; 2 uses
  br i1 %3, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  br i1 %i.cy, label %GC_remap.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = icmp ugt i64 %i.ah, %i.bc
  %i.da = load i64, ptr @GC_page_size, align 8    ; 5 uses
  %i.db = sub i64 0, %i.da                        ; 4 uses
  br i1 %i.cz, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add i64 %i.ai, -1
  %i.dd = add i64 %i.dc, %i.da
  %i.de = and i64 %i.dd, %i.db
  %i.df = inttoptr i64 %i.de to ptr               ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.da
  %i.dh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc ; 2 uses
  %i.di = icmp ugt ptr %i.dg, %i.dh
  %..i.i94.i = select i1 %i.di, ptr null, ptr %i.df ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = and i64 %i.db, %i.dj                    ; 2 uses
  %i.dl = ptrtoint ptr %..i.i94.i to i64          ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = icmp ne ptr %..i.i94.i, null
  %i.do = icmp ne i64 %i.dk, %i.dl
  %or.cond.i.i95.i = and i1 %i.dn, %i.do
  br i1 %or.cond.i.i95.i, label %bb.ac, label %GC_unmap.exit96.i

bb.ac:                                            ; preds = %bb.ab
  %i.dp = tail call i32 @madvise(ptr noundef nonnull %i.df, i64 noundef %i.dm, i32 noundef 4) #45
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dr = tail call ptr @__errno_location() #51
  %i.ds = load i32, ptr %i.dr, align 4
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.180, ptr noundef nonnull %i.df, i64 noundef %i.dm, i32 noundef %i.ds)
  %i.dt = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.dt(ptr noundef nonnull @.str.181) #45, !inline_history !119
  tail call void @abort() #48
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.dv = add i64 %i.du, %i.dm
  store i64 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  br label %GC_unmap.exit96.i

GC_unmap.exit96.i:                                ; preds = %bb.ae, %bb.ab
  tail call fastcc void @GC_unmap_gap(ptr noundef %.083113.i, i64 noundef %i.ah, ptr noundef %i.as, i64 noundef %i.bc)
  br label %GC_remap.exit.i

bb.af:                                            ; preds = %bb.aa
  %i.dw = add i64 %i.s, -1
  %i.dx = add i64 %i.dw, %i.da
  %i.dy = and i64 %i.dx, %i.db                    ; 3 uses
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.da
  %i.eb = getelementptr inbounds nuw i8, ptr %.083113.i, i64 %i.ah ; 2 uses
  %i.ec = icmp ugt ptr %i.ea, %i.eb
  %i.ed = icmp eq i64 %i.dy, 0
  %i.ee = or i1 %i.ed, %i.ec
  br i1 %i.ee, label %GC_remap.exit98.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = and i64 %i.db, %i.ef
  %.neg.i97.i = sub i64 %i.dy, %i.eg
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.ei = add i64 %.neg.i97.i, %i.eh
  store i64 %i.ei, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %.pre120.i = load i8, ptr %i.bf, align 1
  br label %GC_remap.exit98.i

GC_remap.exit98.i:                                ; preds = %bb.ag, %bb.af
  %i.ej = phi i8 [ %i.bg, %bb.af ], [ %.pre120.i, %bb.ag ]
  %i.ek = and i8 %i.ej, -3
  store i8 %i.ek, ptr %i.bf, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.aw, i64 26
  %i.em = load i16, ptr %i.el, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  store i16 %i.em, ptr %i.en, align 2
  br label %GC_remap.exit.i

bb.ah:                                            ; preds = %bb.y
  br i1 %i.cy, label %GC_remap.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @GC_unmap_gap(ptr noundef %.083113.i, i64 noundef %i.ah, ptr noundef %i.as, i64 noundef %i.bc)
  br label %GC_remap.exit.i

GC_remap.exit.i:                                  ; preds = %bb.ai, %bb.ah, %GC_remap.exit98.i, %GC_unmap.exit96.i, %bb.z, %GC_unmap.exit.i, %bb.t, %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %GC_remap.exit.i
  %i.er = load ptr, ptr %i.af, align 8
  store ptr %i.er, ptr %i.p, align 8
  br label %bb.an

bb.ak:                                            ; preds = %GC_remap.exit.i
  %i.es = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.et = lshr i64 %i.es, 22                      ; 2 uses
  %i.eu = and i64 %i.et, 2047
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.eu
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.029.in.i.i = phi ptr [ %i.ev, %bb.ak ], [ %i.fc, %bb.al ]
  %.029.i.i = load ptr, ptr %.029.in.i.i, align 8 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8208
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = icmp ne i64 %i.ey, %i.et
  %i.fa = icmp ne ptr %.029.i.i, %i.ew
  %i.fb = select i1 %i.ez, i1 %i.fa, i1 false
  %i.fc = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8216
  br i1 %i.fb, label %bb.al, label %bb.am, !llvm.loop !12

bb.am:                                            ; preds = %bb.al
  %i.fd = lshr i64 %i.es, 12
  %i.fe = and i64 %i.fd, 1023
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.029.i.i, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.af, align 8
  store ptr %i.fh, ptr %i.fg, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %i.fi = load i64, ptr %i.ag, align 8
  %i.fj = load i64, ptr %i.q, align 8
  %i.fk = sub i64 %i.fj, %i.fi
  store i64 %i.fk, ptr %i.q, align 8
  %i.fl = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i, label %GC_remove_from_fl_at.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fn = lshr i64 %i.fm, 22                      ; 2 uses
  %i.fo = and i64 %i.fn, 2047
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.fo
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0.in.i.i = phi ptr [ %i.fp, %bb.ao ], [ %i.fw, %bb.ap ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = icmp ne i64 %i.fs, %i.fn
  %i.fu = icmp ne ptr %.0.i.i, %i.fq
  %i.fv = select i1 %i.ft, i1 %i.fu, i1 false
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.fv, label %bb.ap, label %bb.aq, !llvm.loop !13

bb.aq:                                            ; preds = %bb.ap
  %i.fx = lshr i64 %i.fm, 12
  %i.fy = and i64 %i.fx, 1023
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = load ptr, ptr %i.eo, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gb, ptr %i.gc, align 8
  br label %GC_remove_from_fl_at.exit.i

GC_remove_from_fl_at.exit.i:                      ; preds = %bb.aq, %bb.an
  %i.gd = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.ge = lshr i64 %i.gd, 12                      ; 2 uses
  %i.gf = icmp ult i64 %i.gd, 135168
  br i1 %i.gf, label %GC_hblk_fl_from_blocks.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %GC_remove_from_fl_at.exit.i
  %i.gg = icmp ugt i64 %i.gd, 1048575
  br i1 %i.gg, label %GC_hblk_fl_from_blocks.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = trunc nuw nsw i64 %i.ge to i32
  %i.gi = add nsw i32 %i.gh, -32
  %i.gj = lshr i32 %i.gi, 3
  %i.gk = add nuw nsw i32 %i.gj, 32
  %i.gl = zext nneg i32 %i.gk to i64
  br label %GC_hblk_fl_from_blocks.exit.i.i

GC_hblk_fl_from_blocks.exit.i.i:                  ; preds = %bb.as, %bb.ar, %GC_remove_from_fl_at.exit.i
  %.0.i.i.i = phi i64 [ 60, %bb.ar ], [ %i.gl, %bb.as ], [ %i.ge, %GC_remove_from_fl_at.exit.i ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.at, label %bb.au

bb.at:                                            ; preds = %GC_hblk_fl_from_blocks.exit.i.i
  %i.gp = load ptr, ptr %i.aw, align 8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @GC_hblkfreelist, i64 %.0.i.i.i
  store ptr %i.gp, ptr %i.gq, align 8
  br label %bb.ax

bb.au:                                            ; preds = %GC_hblk_fl_from_blocks.exit.i.i
  %i.gr = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gs = lshr i64 %i.gr, 22                      ; 2 uses
  %i.gt = and i64 %i.gs, 2047
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.gt
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.029.in.i.i.i = phi ptr [ %i.gu, %bb.au ], [ %i.hb, %bb.av ]
  %.029.i.i.i = load ptr, ptr %.029.in.i.i.i, align 8 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8208
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = icmp ne i64 %i.gx, %i.gs
  %i.gz = icmp ne ptr %.029.i.i.i, %i.gv
  %i.ha = select i1 %i.gy, i1 %i.gz, i1 false
  %i.hb = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8216
  br i1 %i.ha, label %bb.av, label %bb.aw, !llvm.loop !12

bb.aw:                                            ; preds = %bb.av
  %i.hc = lshr i64 %i.gr, 12
  %i.hd = and i64 %i.hc, 1023
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.029.i.i.i, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = load ptr, ptr %i.aw, align 8
  store ptr %i.hg, ptr %i.hf, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %i.hh = load i64, ptr %i.bb, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr @GC_free_bytes, i64 %.0.i.i.i ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = sub i64 %i.hj, %i.hh
  store i64 %i.hk, ptr %i.hi, align 8
  %i.hl = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i, label %GC_remove_from_fl.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hm = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.hn = lshr i64 %i.hm, 22                      ; 2 uses
  %i.ho = and i64 %i.hn, 2047
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ho
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %.0.in.i.i.i = phi ptr [ %i.hp, %bb.ay ], [ %i.hw, %bb.az ]
  %.0.i2.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 8208
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = icmp ne i64 %i.hs, %i.hn
  %i.hu = icmp ne ptr %.0.i2.i.i, %i.hq
  %i.hv = select i1 %i.ht, i1 %i.hu, i1 false
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 8216
  br i1 %i.hv, label %bb.az, label %bb.ba, !llvm.loop !13

bb.ba:                                            ; preds = %bb.az
  %i.hx = lshr i64 %i.hm, 12
  %i.hy = and i64 %i.hx, 1023
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.0.i2.i.i, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = load ptr, ptr %i.gm, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %i.ib, ptr %i.ic, align 8
  br label %GC_remove_from_fl.exit.i

GC_remove_from_fl.exit.i:                         ; preds = %bb.ba, %bb.ax
  %i.id = load i64, ptr %i.bb, align 8
  %i.ie = load i64, ptr %i.ag, align 8
  %i.if = add i64 %i.ie, %i.id
  store i64 %i.if, ptr %i.ag, align 8
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %GC_remove_from_fl.exit.i
  %.0.in.i99.i = phi ptr [ %i.al, %GC_remove_from_fl.exit.i ], [ %i.im, %bb.bb ]
  %.0.i100.i = load ptr, ptr %.0.in.i99.i, align 8 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i100.i, i64 8208
  %i.ii = load i64, ptr %i.ih, align 8
  %i.ij = icmp ne i64 %i.ii, %i.aj
  %i.ik = icmp ne ptr %.0.i100.i, %i.ig
  %i.il = select i1 %i.ij, i1 %i.ik, i1 false
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i100.i, i64 8216
  br i1 %i.il, label %bb.bb, label %GC_remove_header.exit.i, !llvm.loop !14

GC_remove_header.exit.i:                          ; preds = %bb.bb
end_hunk_1
begin_hunk_2_@GC_generic_malloc_uncollectable:bb.a
  %i.aa = tail call noalias ptr @GC_generic_malloc(i64 noundef %spec.select, i32 noundef %1) #53
  br label %bb.u

bb.n:                                             ; preds = %bb.b
  %i.ab = tail call noalias ptr @GC_generic_malloc(i64 noundef %0, i32 noundef %1) #53 ; 5 uses
  %.not33 = icmp eq ptr %i.ab, null
  br i1 %.not33, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = lshr i64 %i.ac, 22                      ; 2 uses
  %i.ae = and i64 %i.ad, 2047
  %i.af = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ae
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.in.i = phi ptr [ %i.af, %bb.o ], [ %i.am, %bb.p ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp ne i64 %i.ai, %i.ad
  %i.ak = icmp ne ptr %.0.i, %i.ag
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.al, label %bb.p, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.p
  %i.an = lshr i64 %i.ac, 12
  %i.ao = and i64 %i.an, 1023
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.b29 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b29, label %bb.q, label %.thread

.thread:                                          ; preds = %GC_find_header.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i8 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store volatile i64 1, ptr %i.as, align 8
  br label %bb.u

bb.q:                                             ; preds = %GC_find_header.exit
  %i.at = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not34 = icmp eq i32 %i.at, 0
  br i1 %.not34, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @GC_lock()
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.b.pr = load i1, ptr @GC_need_to_lock, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i8 1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store volatile i64 1, ptr %i.av, align 8
  br i1 %.b.pr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.s, %bb.t, %bb.m, %bb.j, %bb.i, %bb.n
  %.1 = phi ptr [ null, %bb.n ], [ %i.aa, %bb.m ], [ %i.r, %bb.j ], [ %i.r, %bb.i ], [ %i.ab, %bb.t ], [ %i.ab, %bb.s ], [ %i.ab, %.thread ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_freehblk(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 3 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.056.in = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.056 = load ptr, ptr %.056.in, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.056, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.056, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.056, i64 8216
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !123

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023                       ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.056, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 6 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 4095
  %i.s = and i64 %i.r, -4096                      ; 7 uses
  %i.t = icmp slt i64 %i.s, -4095
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.u(ptr noundef nonnull @.str.214) #45
  tail call void @abort() #48
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i64 %i.s, 4097
  br i1 %i.v, label %GC_remove_counts.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 4 uses
  %i.y = lshr i64 %i.x, 22                        ; 2 uses
  %i.z = and i64 %i.y, 2047
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.in.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.ag, %bb.g ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ne i64 %i.ac, %i.y
  %i.ae = icmp ne ptr %.0.i.i, %i.e
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.af, label %bb.g, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.g
  %i.ah = lshr i64 %i.x, 12
  %i.ai = and i64 %i.ah, 1023
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %GC_remove_counts.exit, label %.preheader.i

.preheader.i:                                     ; preds = %GC_find_header.exit.i
  %i.am = add i64 %i.s, %i.a                      ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.x
  br i1 %i.an, label %.lr.ph.i, label %GC_remove_counts.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %i.ao = phi i64 [ %i.bd, %bb.i ], [ %i.x, %.preheader.i ] ; 2 uses
  %.01619.i = phi ptr [ %i.bc, %bb.i ], [ %i.w, %.preheader.i ]
  %i.ap = lshr i64 %i.ao, 22                      ; 2 uses
  %i.aq = and i64 %i.ap, 2047
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.aq
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.0.in.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ay, %bb.h ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp ne i64 %i.au, %i.ap
  %i.aw = icmp ne ptr %.0.i, %i.as
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.ax, label %bb.h, label %bb.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.h
  %i.az = lshr i64 %i.ao, 12
  %i.ba = and i64 %i.az, 1023
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ba
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01619.i, i64 4096 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = icmp ugt i64 %i.am, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %GC_remove_counts.exit, !llvm.loop !17

GC_remove_counts.exit:                            ; preds = %bb.i, %bb.e, %GC_find_header.exit.i, %.preheader.i
  store i64 %i.s, ptr %i.p, align 8
  %i.bf = load i64, ptr @GC_gc_no, align 8
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 25 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = and i8 %i.bj, 4
  %.not = icmp eq i8 %i.bk, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %GC_remove_counts.exit
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.215, ptr noundef %0)
  %i.bl = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bl(ptr noundef nonnull @.str.216) #45
  tail call void @abort() #48
  unreachable

bb.k:                                             ; preds = %GC_remove_counts.exit
  %i.bm = or disjoint i8 %i.bj, 4
  store i8 %i.bm, ptr %i.bi, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = lshr i64 %i.bo, 22                      ; 3 uses
  %i.bq = and i64 %i.bp, 2047
  %i.br = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 8 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in = phi ptr [ %i.br, %bb.k ], [ %i.by, %bb.l ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 8208
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp ne i64 %i.bu, %i.bp
  %i.bw = icmp ne ptr %.0, %i.bs
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  %i.by = getelementptr inbounds nuw i8, ptr %.0, i64 8216
  br i1 %i.bx, label %bb.l, label %bb.m, !llvm.loop !124

bb.m:                                             ; preds = %bb.l
  %i.bz = lshr i64 %i.bo, 12
  %i.ca = and i64 %i.bz, 1023                     ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8            ; 7 uses
  %i.cd = getelementptr inbounds i8, ptr %0, i64 -4096 ; 3 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = lshr i64 %i.ce, 22                      ; 4 uses
  %i.cg = and i64 %i.cf, 2047
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cg ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.in.i.i65 = phi ptr [ %i.ch, %bb.m ], [ %i.cn, %bb.n ]
  %.0.i.i66 = load ptr, ptr %.0.in.i.i65, align 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 8208
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = icmp ne i64 %i.cj, %i.cf
  %i.cl = icmp ne ptr %.0.i.i66, %i.bs
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 8216
  br i1 %i.cm, label %bb.n, label %bb.o, !llvm.loop !125

bb.o:                                             ; preds = %bb.n
  %i.co = lshr i64 %i.ce, 12
  %i.cp = and i64 %i.co, 1023                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %i.cp
  %.02540.i.i = load ptr, ptr %i.cq, align 8      ; 3 uses
  %i.cr = icmp ne ptr %.02540.i.i, null           ; 2 uses
  %i.cs = icmp ult ptr %.02540.i.i, inttoptr (i64 4096 to ptr)
  %i.ct = and i1 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %GC_find_header.exit.i.i
  %.02542.i.i = phi ptr [ %.025.i.i, %GC_find_header.exit.i.i ], [ %.02540.i.i, %bb.o ]
  %.02641.i.i = phi ptr [ %i.cw, %GC_find_header.exit.i.i ], [ %i.cd, %bb.o ]
  %i.cu = ptrtoint ptr %.02542.i.i to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [4096 x i8], ptr %.02641.i.i, i64 %i.cv ; 3 uses
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = lshr i64 %i.cx, 22                      ; 2 uses
  %i.cz = and i64 %i.cy, 2047
  %i.da = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cz
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.0.in.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.dg, %bb.p ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = icmp ne i64 %i.dc, %i.cy
  %i.de = icmp ne ptr %.0.i.i.i, %i.bs
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.df, label %bb.p, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %bb.p
  %i.dh = lshr i64 %i.cx, 12
  %i.di = and i64 %i.dh, 1023
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.di
  %.025.i.i = load ptr, ptr %i.dj, align 8        ; 3 uses
  %i.dk = icmp ne ptr %.025.i.i, null             ; 2 uses
  %i.dl = icmp ult ptr %.025.i.i, inttoptr (i64 4096 to ptr)
  %i.dm = and i1 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !126

._crit_edge.i.i:                                  ; preds = %GC_find_header.exit.i.i, %bb.o
  %.026.lcssa.i.i = phi ptr [ %i.cd, %bb.o ], [ %i.cw, %GC_find_header.exit.i.i ]
  %.lcssa.i.i = phi i1 [ %i.cr, %bb.o ], [ %i.dk, %GC_find_header.exit.i.i ]
  br i1 %.lcssa.i.i, label %get_block_ending_at.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.i
  %.027.in.i.i.i = phi ptr [ %i.ds, %.preheader.i.i ], [ %i.ch, %._crit_edge.i.i ]
  %.027.i.i.i = load ptr, ptr %.027.in.i.i.i, align 8 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 8208
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp ne i64 %i.do, %i.cf
  %i.dq = icmp ne ptr %.027.i.i.i, %i.bs
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  %i.ds = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 8216
  br i1 %i.dr, label %.preheader.i.i, label %bb.q, !llvm.loop !127

bb.q:                                             ; preds = %.preheader.i.i
  %1 = icmp eq ptr %.027.i.i.i, %i.bs
  br i1 %1, label %.preheader42.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %bb.q
  %.153.i.i.i.ph = phi i64 [ %i.cp, %bb.q ], [ 1023, %.lr.ph.i.i.i ]
  %.23152.i.i.i.ph = phi ptr [ %.027.i.i.i, %bb.q ], [ %.02947.i.i.i, %.lr.ph.i.i.i ]
  br label %.preheader.i.i.i

.preheader42.i.i.i:                               ; preds = %bb.q
  %.02945.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 112), align 8 ; 2 uses
  %.not46.i.i.i = icmp eq ptr %.02945.i.i.i, null
  br i1 %.not46.i.i.i, label %get_block_ending_at.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader42.i.i.i, %bb.r
  %.02947.i.i.i = phi ptr [ %.029.i.i.i, %bb.r ], [ %.02945.i.i.i, %.preheader42.i.i.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.02947.i.i.i, i64 8208
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = icmp ugt i64 %i.du, %i.cf
  br i1 %i.dv, label %bb.r, label %.preheader.i.i.i.preheader

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.02947.i.i.i, i64 8200
  %.029.i.i.i = load ptr, ptr %i.dw, align 8      ; 2 uses
  %.not.i.i.i = icmp eq ptr %.029.i.i.i, null
  br i1 %.not.i.i.i, label %get_block_ending_at.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !128

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.x
  %.153.i.i.i = phi i64 [ 1023, %bb.x ], [ %.153.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %.23152.i.i.i = phi ptr [ %i.eg, %bb.x ], [ %.23152.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.preheader.i.i.i
  %.250.i.i.i = phi i64 [ %.153.i.i.i, %.preheader.i.i.i ], [ %.4.i.i.i, %bb.w ] ; 5 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.23152.i.i.i, i64 %.250.i.i.i
  %i.dy = load ptr, ptr %i.dx, align 8            ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = add nsw i64 %.250.i.i.i, -1
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.eb = icmp ult ptr %i.dy, inttoptr (i64 4096 to ptr)
  br i1 %i.eb, label %bb.v, label %GC_prev_block.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub nsw i64 %.250.i.i.i, %i.ec
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.4.i.i.i = phi i64 [ %i.ed, %bb.v ], [ %i.ea, %bb.t ] ; 2 uses
  %i.ee = icmp sgt i64 %.4.i.i.i, -1
  br i1 %i.ee, label %bb.s, label %bb.x, !llvm.loop !129

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %.23152.i.i.i, i64 8200
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not38.i.i.i, label %get_block_ending_at.exit.thread.i, label %.preheader.i.i.i, !llvm.loop !130

GC_prev_block.exit.i.i:                           ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %.23152.i.i.i, i64 8208
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = shl i64 %i.ei, 22
  %i.ek = shl i64 %.250.i.i.i, 12
  %i.el = add i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = inttoptr i64 %i.el to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i, label %get_block_ending_at.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %GC_prev_block.exit.i.i
  %i.en = lshr i64 %i.el, 22                      ; 2 uses
  %i.eo = and i64 %i.en, 2047
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.eo
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0.in.i30.i.i = phi ptr [ %i.ep, %bb.y ], [ %i.ev, %bb.z ]
  %.0.i31.i.i = load ptr, ptr %.0.in.i30.i.i, align 8 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i31.i.i, i64 8208
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = icmp ne i64 %i.er, %i.en
  %i.et = icmp ne ptr %.0.i31.i.i, %i.bs
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i31.i.i, i64 8216
  br i1 %i.eu, label %bb.z, label %GC_find_header.exit32.i.i, !llvm.loop !2

GC_find_header.exit32.i.i:                        ; preds = %bb.z
  %i.ew = and i64 %.250.i.i.i, 1023
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0.i31.i.i, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fa
  %i.fc = icmp eq ptr %i.fb, %0
  br i1 %i.fc, label %get_block_ending_at.exit.i, label %get_block_ending_at.exit.thread.i

get_block_ending_at.exit.i:                       ; preds = %GC_find_header.exit32.i.i, %._crit_edge.i.i
  %.027.i.i = phi ptr [ %i.em, %GC_find_header.exit32.i.i ], [ %.026.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.not.i = icmp eq ptr %.027.i.i, null
  br i1 %.not.i, label %get_block_ending_at.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %get_block_ending_at.exit.i
  %i.fd = ptrtoint ptr %.027.i.i to i64           ; 2 uses
  %i.fe = lshr i64 %i.fd, 22                      ; 2 uses
  %i.ff = and i64 %i.fe, 2047
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ff
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.in.i9.i = phi ptr [ %i.fg, %bb.aa ], [ %i.fm, %bb.ab ]
  %.0.i10.i = load ptr, ptr %.0.in.i9.i, align 8  ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8208
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = icmp ne i64 %i.fi, %i.fe
  %i.fk = icmp ne ptr %.0.i10.i, %i.bs
  %i.fl = select i1 %i.fj, i1 %i.fk, i1 false
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8216
  br i1 %i.fl, label %bb.ab, label %GC_find_header.exit.i67, !llvm.loop !2

GC_find_header.exit.i67:                          ; preds = %bb.ab
  %i.fn = lshr i64 %i.fd, 12
  %i.fo = and i64 %i.fn, 1023
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0.i10.i, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 25
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = and i8 %i.fs, 4
  %.not8.i = icmp eq i8 %i.ft, 0
  br i1 %.not8.i, label %get_block_ending_at.exit.thread.i, label %GC_free_block_ending_at.exit

get_block_ending_at.exit.thread.i:                ; preds = %bb.r, %bb.x, %GC_find_header.exit.i67, %get_block_ending_at.exit.i, %GC_find_header.exit32.i.i, %GC_prev_block.exit.i.i, %.preheader42.i.i.i
  br label %GC_free_block_ending_at.exit

GC_free_block_ending_at.exit:                     ; preds = %GC_find_header.exit.i67, %get_block_ending_at.exit.thread.i
  %.1.i = phi ptr [ null, %get_block_ending_at.exit.thread.i ], [ %.027.i.i, %GC_find_header.exit.i67 ] ; 3 uses
  %.not61 = icmp eq ptr %i.cc, null
  br i1 %.not61, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %GC_free_block_ending_at.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cc, i64 25
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = and i8 %i.fv, 6
  %or.cond = icmp eq i8 %i.fw, 4
  br i1 %or.cond, label %bb.ad, label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 3 uses
  %i.fy = load i64, ptr %i.fx, align 8            ; 4 uses
  %i.fz = add i64 %i.fy, %i.s
  %i.ga = icmp sgt i64 %i.fz, 0
  br i1 %i.ga, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.gb = lshr i64 %i.fy, 12                      ; 2 uses
  %i.gc = icmp ult i64 %i.fy, 135168
  br i1 %i.gc, label %GC_hblk_fl_from_blocks.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gd = icmp ugt i64 %i.fy, 1048575
  br i1 %i.gd, label %GC_hblk_fl_from_blocks.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ge = trunc nuw nsw i64 %i.gb to i32
  %i.gf = add nsw i32 %i.ge, -32
  %i.gg = lshr i32 %i.gf, 3
  %i.gh = add nuw nsw i32 %i.gg, 32
  %i.gi = zext nneg i32 %i.gh to i64
  br label %GC_hblk_fl_from_blocks.exit.i

GC_hblk_fl_from_blocks.exit.i:                    ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i.i68 = phi i64 [ 60, %bb.af ], [ %i.gi, %bb.ag ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %GC_hblk_fl_from_blocks.exit.i
  %i.gm = load ptr, ptr %i.cc, align 8
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr @GC_hblkfreelist, i64 %.0.i.i68
  store ptr %i.gm, ptr %i.gn, align 8
  br label %bb.al

bb.ai:                                            ; preds = %GC_hblk_fl_from_blocks.exit.i
  %i.go = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gp = lshr i64 %i.go, 22                      ; 2 uses
  %i.gq = and i64 %i.gp, 2047
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.gq
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.029.in.i.i = phi ptr [ %i.gr, %bb.ai ], [ %i.gx, %bb.aj ]
  %.029.i.i = load ptr, ptr %.029.in.i.i, align 8 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8208
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = icmp ne i64 %i.gt, %i.gp
  %i.gv = icmp ne ptr %.029.i.i, %i.bs
  %i.gw = select i1 %i.gu, i1 %i.gv, i1 false
  %i.gx = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8216
  br i1 %i.gw, label %bb.aj, label %bb.ak, !llvm.loop !12
end_hunk_2
begin_hunk_3_@GC_pthread_create:bb.a
  %i.d = call i32 @sem_init(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 0) #45
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @GC_on_abort, align 8
  call void %i.e(ptr noundef nonnull @.str.127) #45
  call void @abort() #48
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %2, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.f, align 8
  %.b10 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b10, label %bb.f, label %GC_lock.exit

bb.f:                                             ; preds = %bb.e
  %i.g = call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %GC_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load i32, ptr @GC_nprocs, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.j:                                             ; preds = %bb.h
  call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %.b12 = load i1, ptr @GC_thr_initialized, align 4
  br i1 %.b12, label %bb.l, label %bb.k, !prof !47

bb.k:                                             ; preds = %GC_lock.exit
  call fastcc void @GC_thr_init()
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %GC_lock.exit
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.a, align 4
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.m = call i32 @pthread_attr_getdetachstate(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #45
  %.not14 = icmp eq i32 %i.m, 0
  br i1 %.not14, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i32, ptr %i.a, align 4
  %i.n = icmp eq i32 %.pre, 1
  %i.o = select i1 %i.n, i64 2, i64 0
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.p = load ptr, ptr @GC_on_abort, align 8
  call void %i.p(ptr noundef nonnull @.str.128) #45
  call void @abort() #48
  unreachable

bb.p:                                             ; preds = %._crit_edge, %bb.m
  %spec.select = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.m ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %spec.select, ptr %i.q, align 8
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.r = call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.s = load i32, ptr @GC_parallel, align 4
  %.not15 = icmp eq i32 %i.s, 0
  %i.t = load i32, ptr @available_markers_m1, align 4
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = select i1 %.not15, i1 %i.u, i1 false
  br i1 %i.v, label %bb.s, label %bb.t, !prof !48

bb.s:                                             ; preds = %bb.r
  call void @GC_start_mark_threads()
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i1 true, ptr @GC_need_to_lock, align 4
  %i.w = call i32 @pthread_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @GC_start_routine, ptr noundef nonnull %4) #45 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.y = call i32 @pthread_setcancelstate(i32 noundef 1, ptr noundef nonnull %i.b) #45 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.z = call i32 @sem_wait(ptr noundef nonnull %i.c) #45
  %.not16 = icmp eq i32 %i.z, 0
  br i1 %.not16, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = tail call ptr @__errno_location() #51
  %i.ab = load i32, ptr %i.aa, align 4
  %.not17 = icmp eq i32 %i.ab, 4
  br i1 %.not17, label %bb.v, label %bb.x, !llvm.loop !230

bb.x:                                             ; preds = %bb.w
  %i.ac = load ptr, ptr @GC_on_abort, align 8
  call void %i.ac(ptr noundef nonnull @.str.129) #45
  call void @abort() #48
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ad = load i32, ptr %i.b, align 4
  %i.ae = call i32 @pthread_setcancelstate(i32 noundef %i.ad, ptr noundef null) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %i.af = call i32 @sem_destroy(ptr noundef nonnull %i.c) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.w
}

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_attr_getdetachstate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @GC_start_routine(ptr noundef %0) #2 {
bb.a:
  %1 = alloca %struct.GC_stack_base, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #45
  store ptr %1, ptr %1, align 8
  %i.a = call ptr @GC_inner_start_routine(ptr noundef nonnull %1, ptr noundef %0) #45, !inline_history !231
  %i.b = ptrtoint ptr %1 to i64
  store volatile i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 248), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  ret ptr %i.a
}

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #32

; Function Attrs: nounwind
declare i32 @sem_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_mark_some(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8 ; 4 uses
  switch i32 %i.a, label %bb.ea [
    i32 0, label %bb.eb
    i32 1, label %bb.b
    i32 2, label %bb.aw
    i32 3, label %bb.cf
    i32 5, label %bb.da
    i32 4, label %bb.da
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -32768
  %.not17 = icmp ult ptr %i.b, %i.d
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  %i.e = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8 ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = tail call fastcc ptr @GC_mark_from(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h)
  store volatile ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  br label %bb.eb

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 200), align 8 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = lshr i64 %i.k, 22                        ; 2 uses
  %i.m = and i64 %i.l, 2047
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.m
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 7 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.in.i.i = phi ptr [ %i.n, %bb.d ], [ %i.u, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp ne i64 %i.q, %i.l
  %i.s = icmp ne ptr %.0.i.i, %i.o
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.t, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.v = load i32, ptr @GC_incremental, align 4
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %GC_find_header.exit.i
  %i.w = lshr i64 %i.k, 12
  %i.x = and i64 %i.w, 1023
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.x
  %.03045.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 104), align 8 ; 2 uses
  %.not46.i.i = icmp eq ptr %.03045.i.i, null
  br label %bb.g

bb.f:                                             ; preds = %GC_find_header.exit.i
  %i.z = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.z(ptr noundef nonnull @.str.140) #45, !inline_history !232
  tail call void @abort() #48
  unreachable

bb.g:                                             ; preds = %GC_find_header.exit33.i, %.preheader.i
  %.019.i = phi ptr [ %i.ea, %GC_find_header.exit33.i ], [ %i.j, %.preheader.i ] ; 2 uses
  %.0.in.i = phi ptr [ %i.en, %GC_find_header.exit33.i ], [ %i.y, %.preheader.i ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %i.aa = icmp ult ptr %.0.i, inttoptr (i64 4096 to ptr)
  br i1 %i.aa, label %.critedge.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 25
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 4
  %.not57.i = icmp eq i8 %i.ad, 0
  br i1 %.not57.i, label %bb.s, label %.critedge.i, !prof !47

.critedge.i:                                      ; preds = %bb.h, %bb.g
  %i.ae = ptrtoint ptr %.019.i to i64             ; 2 uses
  %i.af = lshr i64 %i.ae, 22                      ; 3 uses
  %i.ag = and i64 %i.af, 2047
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.i
  %.028.in.i.i = phi ptr [ %i.ah, %.critedge.i ], [ %i.an, %bb.i ]
  %.028.i.i = load ptr, ptr %.028.in.i.i, align 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.028.i.i, i64 8208
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ne i64 %i.aj, %i.af
  %i.al = icmp ne ptr %.028.i.i, %i.o
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  %i.an = getelementptr inbounds nuw i8, ptr %.028.i.i, i64 8216
  br i1 %i.am, label %bb.i, label %bb.j, !llvm.loop !36

bb.j:                                             ; preds = %bb.i
  %i.ao = lshr i64 %i.ae, 12
  %i.ap = and i64 %i.ao, 1023
  %1 = icmp eq ptr %.028.i.i, %i.o
  br i1 %1, label %.preheader42.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.j
  %.153.i.i.ph = phi i64 [ %i.ap, %bb.j ], [ 0, %.lr.ph.i.i ]
  %.23252.i.i.ph = phi ptr [ %.028.i.i, %bb.j ], [ %.03047.i.i, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader42.i.i:                                 ; preds = %bb.j
  br i1 %.not46.i.i, label %GC_push_next_marked_dirty.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader42.i.i, %bb.k
  %.03047.i.i = phi ptr [ %.030.i.i, %bb.k ], [ %.03045.i.i, %.preheader42.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03047.i.i, i64 8208
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp ult i64 %i.ar, %i.af
  br i1 %i.as, label %bb.k, label %.preheader.i.i.preheader

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.03047.i.i, i64 8192
  %.030.i.i = load ptr, ptr %i.at, align 8        ; 2 uses
  %.not.i.i = icmp eq ptr %.030.i.i, null
  br i1 %.not.i.i, label %GC_push_next_marked_dirty.exit.thread, label %.lr.ph.i.i, !llvm.loop !37

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.p
  %.153.i.i = phi i64 [ 0, %bb.p ], [ %.153.i.i.ph, %.preheader.i.i.preheader ]
  %.23252.i.i = phi ptr [ %i.bf, %bb.p ], [ %.23252.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.preheader.i.i
  %.250.i.i = phi i64 [ %.153.i.i, %.preheader.i.i ], [ %.4.i.i, %bb.o ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.23252.i.i, i64 %.250.i.i
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp ult ptr %i.av, inttoptr (i64 4096 to ptr)
  br i1 %i.aw, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 25
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = and i8 %i.ay, 4
  %.not38.i.i = icmp eq i8 %i.az, 0
  br i1 %.not38.i.i, label %GC_next_block.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = lshr i64 %i.bb, 12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.pn.i.i = phi i64 [ %i.bc, %bb.n ], [ 1, %bb.l ]
  %.4.i.i = add nuw nsw i64 %.pn.i.i, %.250.i.i   ; 2 uses
  %i.bd = icmp samesign ult i64 %.4.i.i, 1024
  br i1 %i.bd, label %bb.l, label %bb.p, !llvm.loop !38

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.23252.i.i, i64 8192
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not37.i.i = icmp eq ptr %i.bf, null
  br i1 %.not37.i.i, label %GC_push_next_marked_dirty.exit.thread, label %.preheader.i.i, !llvm.loop !39

GC_next_block.exit.i:                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %.23252.i.i, i64 8208
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = shl i64 %i.bh, 22
  %i.bj = shl nuw nsw i64 %.250.i.i, 12
  %i.bk = add nuw nsw i64 %i.bi, %i.bj            ; 3 uses
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %GC_push_next_marked_dirty.exit.thread, label %bb.q

bb.q:                                             ; preds = %GC_next_block.exit.i
  %i.bn = lshr i64 %i.bk, 22                      ; 2 uses
  %i.bo = and i64 %i.bn, 2047
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bo
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.0.in.i25.i = phi ptr [ %i.bp, %bb.q ], [ %i.bv, %bb.r ]
  %.0.i26.i = load ptr, ptr %.0.in.i25.i, align 8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i26.i, i64 8208
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp ne i64 %i.br, %i.bn
  %i.bt = icmp ne ptr %.0.i26.i, %i.o
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i26.i, i64 8216
  br i1 %i.bu, label %bb.r, label %GC_find_header.exit27.i, !llvm.loop !2

GC_find_header.exit27.i:                          ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i26.i, i64 %.250.i.i
  %i.bx = load ptr, ptr %i.bw, align 8
  br label %bb.s

bb.s:                                             ; preds = %GC_find_header.exit27.i, %bb.h
  %.120.i = phi ptr [ %i.bl, %GC_find_header.exit27.i ], [ %.019.i, %bb.h ] ; 9 uses
  %.1.i = phi ptr [ %i.bx, %GC_find_header.exit27.i ], [ %.0.i, %bb.h ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8 ; 13 uses
  %i.ca = icmp ult i64 %i.bz, 2049
  %i.cb = ptrtoint ptr %.120.i to i64             ; 10 uses
  br i1 %i.ca, label %bb.t, label %.preheader.i28.i

.preheader.i28.i:                                 ; preds = %bb.s
  %i.cc = add i64 %i.bz, %i.cb                    ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i29.i, label %GC_block_was_dirty.exit.thread54.i

bb.t:                                             ; preds = %bb.s
  %i.ce = lshr i64 %i.cb, 22                      ; 2 uses
  %i.cf = and i64 %i.ce, 2047
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cf
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.in.i.i.i.i = phi ptr [ %i.cg, %bb.t ], [ %i.cm, %bb.u ]
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8208
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp ne i64 %i.ci, %i.ce
  %i.ck = icmp ne ptr %.0.i.i.i.i, %i.o
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8216
  br i1 %i.cl, label %bb.u, label %GC_find_header.exit.i.i.i, !llvm.loop !2

GC_find_header.exit.i.i.i:                        ; preds = %bb.u
  %i.cn = lshr i64 %i.cb, 12                      ; 2 uses
  %i.co = and i64 %i.cn, 1023
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %GC_block_was_dirty.exit.thread.i, label %GC_block_was_dirty.exit.i

bb.v:                                             ; preds = %GC_page_was_dirty.exit16.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4096 ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = icmp ugt i64 %i.cc, %i.ct
  br i1 %i.cu, label %.lr.ph.i29.i, label %GC_block_was_dirty.exit.thread54.i, !llvm.loop !233

.lr.ph.i29.i:                                     ; preds = %.preheader.i28.i, %bb.v
  %i.cv = phi i64 [ %i.ct, %bb.v ], [ %i.cb, %.preheader.i28.i ] ; 3 uses
  %.019.i.i = phi ptr [ %i.cs, %bb.v ], [ %.120.i, %.preheader.i28.i ]
  %i.cw = lshr i64 %i.cv, 22                      ; 2 uses
  %i.cx = and i64 %i.cw, 2047
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cx
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i29.i
  %.0.in.i.i12.i.i = phi ptr [ %i.cy, %.lr.ph.i29.i ], [ %i.de, %bb.w ]
  %.0.i.i13.i.i = load ptr, ptr %.0.in.i.i12.i.i, align 8 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i13.i.i, i64 8208
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp ne i64 %i.da, %i.cw
  %i.dc = icmp ne ptr %.0.i.i13.i.i, %i.o
  %i.dd = select i1 %i.db, i1 %i.dc, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i13.i.i, i64 8216
  br i1 %i.dd, label %bb.w, label %GC_find_header.exit.i14.i.i, !llvm.loop !2

GC_find_header.exit.i14.i.i:                      ; preds = %bb.w
  %i.df = lshr i64 %i.cv, 12                      ; 2 uses
  %i.dg = and i64 %i.df, 1023
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i13.i.i, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %GC_block_was_dirty.exit.thread.i, label %GC_page_was_dirty.exit16.i.i

GC_page_was_dirty.exit16.i.i:                     ; preds = %GC_find_header.exit.i14.i.i
  %i.dk = lshr i64 %i.cv, 18
  %i.dl = and i64 %i.dk, 4095
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 27128), i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = and i64 %i.df, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i30.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i30.i, label %bb.v, label %GC_block_was_dirty.exit.thread.i

GC_block_was_dirty.exit.i:                        ; preds = %GC_find_header.exit.i.i.i
  %i.dr = lshr i64 %i.cb, 18
  %i.ds = and i64 %i.dr, 4095
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 27128), i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = and i64 %i.cn, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.du, %i.dw
  %.not23.i = icmp eq i64 %i.dx, 0
  br i1 %.not23.i, label %GC_block_was_dirty.exit.thread54.i, label %GC_block_was_dirty.exit.thread.i

GC_block_was_dirty.exit.thread54.i:               ; preds = %bb.v, %GC_block_was_dirty.exit.i, %.preheader.i28.i
  %i.dy = add i64 %i.bz, 4095
  %i.dz = lshr i64 %i.dy, 12
  %i.ea = getelementptr inbounds nuw [4096 x i8], ptr %.120.i, i64 %i.dz ; 2 uses
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = lshr i64 %i.eb, 22                      ; 2 uses
  %i.ed = and i64 %i.ec, 2047
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ed
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %GC_block_was_dirty.exit.thread54.i
  %.0.in.i31.i = phi ptr [ %i.ee, %GC_block_was_dirty.exit.thread54.i ], [ %i.ek, %bb.x ]
  %.0.i32.i = load ptr, ptr %.0.in.i31.i, align 8 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 8208
  %i.eg = load i64, ptr %i.ef, align 8
end_hunk_3
begin_hunk_4_@GC_header_cache_miss:bb.a
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.l, 63
  %i.cd = shl nuw i64 1, %i.cc                    ; 2 uses
  %i.ce = and i64 %i.cb, %i.cd
  %.not.i65 = icmp eq i64 %i.ce, 0
  br i1 %.not.i65, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o, %GC_find_header.exit._crit_edge.i68
  %.pre-phi9.i66 = phi i64 [ %.pre8.i71, %GC_find_header.exit._crit_edge.i68 ], [ %i.bz, %bb.o ]
  %.pre-phi7.i67 = phi i64 [ %.pre6.i70, %GC_find_header.exit._crit_edge.i68 ], [ %i.cd, %bb.o ]
  %i.cf = load ptr, ptr @GC_incomplete_stack_bl, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.pre-phi9.i66 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = or i64 %i.ch, %.pre-phi7.i67
  store i64 %i.ci, ptr %i.cg, align 8
  br label %.critedge

bb.q:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cj = and i64 %i.a, 7
  %i.ck = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %.not.i73 = icmp eq i8 %i.cl, 0
  br i1 %.not.i73, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.r, %.preheader
  %.0.in.i.i74 = phi ptr [ %i.cr, %.preheader ], [ %i.d, %bb.r ]
  %.0.i.i75 = load ptr, ptr %.0.in.i.i74, align 8 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i75, i64 8208
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = icmp ne i64 %i.cn, %i.b
  %i.cp = icmp ne ptr %.0.i.i75, %i.e
  %i.cq = select i1 %i.co, i1 %i.cp, i1 false
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i75, i64 8216
  br i1 %i.cq, label %.preheader, label %GC_find_header.exit.i76, !llvm.loop !2

GC_find_header.exit.i76:                          ; preds = %.preheader
  %i.cs = and i64 %i.l, 262143                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i75, i64 %i.m
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %GC_find_header.exit._crit_edge.i80, label %bb.s

GC_find_header.exit._crit_edge.i80:               ; preds = %GC_find_header.exit.i76
  %.pre.i81 = and i64 %i.l, 63
  %.pre8.i82 = shl nuw i64 1, %.pre.i81
  %.pre10.i83 = lshr i64 %i.cs, 6
  br label %bb.t

bb.s:                                             ; preds = %GC_find_header.exit.i76
  %i.cw = load ptr, ptr @GC_old_normal_bl, align 8
  %i.cx = lshr i64 %i.cs, 6                       ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = and i64 %i.l, 63
  %i.db = shl nuw i64 1, %i.da                    ; 2 uses
  %i.dc = and i64 %i.cz, %i.db
  %.not7.i77 = icmp eq i64 %i.dc, 0
  br i1 %.not7.i77, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s, %GC_find_header.exit._crit_edge.i80
  %.pre-phi11.i78 = phi i64 [ %.pre10.i83, %GC_find_header.exit._crit_edge.i80 ], [ %i.cx, %bb.s ]
  %.pre-phi9.i79 = phi i64 [ %.pre8.i82, %GC_find_header.exit._crit_edge.i80 ], [ %i.db, %bb.s ]
  %i.dd = load ptr, ptr @GC_incomplete_normal_bl, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.pre-phi11.i78 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = or i64 %i.df, %.pre-phi9.i79
  store i64 %i.dg, ptr %i.de, align 8
  br label %.critedge

bb.u:                                             ; preds = %bb.c
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = and i8 %i.di, 4
  %.not = icmp eq i8 %i.dj, 0
  br i1 %.not, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = load i32, ptr @GC_all_interior_pointers, align 4
  %.not47 = icmp eq i32 %i.dk, 0
  br i1 %.not47, label %bb.y, label %.preheader110

.preheader110:                                    ; preds = %bb.v, %.preheader110
  %.0.in.i.i85 = phi ptr [ %i.dq, %.preheader110 ], [ %i.d, %bb.v ]
  %.0.i.i86 = load ptr, ptr %.0.in.i.i85, align 8 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 8208
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = icmp ne i64 %i.dm, %i.b
  %i.do = icmp ne ptr %.0.i.i86, %i.e
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 8216
  br i1 %i.dp, label %.preheader110, label %GC_find_header.exit.i87, !llvm.loop !2

GC_find_header.exit.i87:                          ; preds = %.preheader110
  %i.dr = and i64 %i.l, 262143                    ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i86, i64 %i.m
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %GC_find_header.exit._crit_edge.i91, label %bb.w

GC_find_header.exit._crit_edge.i91:               ; preds = %GC_find_header.exit.i87
  %.pre.i92 = and i64 %i.l, 63
  %.pre6.i93 = shl nuw i64 1, %.pre.i92
  %.pre8.i94 = lshr i64 %i.dr, 6
  br label %bb.x

bb.w:                                             ; preds = %GC_find_header.exit.i87
  %i.dv = load ptr, ptr @GC_old_stack_bl, align 8
  %i.dw = lshr i64 %i.dr, 6                       ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = and i64 %i.l, 63
  %i.ea = shl nuw i64 1, %i.dz                    ; 2 uses
  %i.eb = and i64 %i.dy, %i.ea
  %.not.i88 = icmp eq i64 %i.eb, 0
  br i1 %.not.i88, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w, %GC_find_header.exit._crit_edge.i91
  %.pre-phi9.i89 = phi i64 [ %.pre8.i94, %GC_find_header.exit._crit_edge.i91 ], [ %i.dw, %bb.w ]
  %.pre-phi7.i90 = phi i64 [ %.pre6.i93, %GC_find_header.exit._crit_edge.i91 ], [ %i.ea, %bb.w ]
  %i.ec = load ptr, ptr @GC_incomplete_stack_bl, align 8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.pre-phi9.i89 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = or i64 %i.ee, %.pre-phi7.i90
  store i64 %i.ef, ptr %i.ed, align 8
  br label %.critedge

bb.y:                                             ; preds = %bb.v
  %i.eg = and i64 %i.a, 7
  %i.eh = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1
  %.not.i96 = icmp eq i8 %i.ei, 0
  br i1 %.not.i96, label %.critedge, label %.preheader109

.preheader109:                                    ; preds = %bb.y, %.preheader109
  %.0.in.i.i97 = phi ptr [ %i.eo, %.preheader109 ], [ %i.d, %bb.y ]
  %.0.i.i98 = load ptr, ptr %.0.in.i.i97, align 8 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 8208
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = icmp ne i64 %i.ek, %i.b
  %i.em = icmp ne ptr %.0.i.i98, %i.e
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 8216
  br i1 %i.en, label %.preheader109, label %GC_find_header.exit.i99, !llvm.loop !2

GC_find_header.exit.i99:                          ; preds = %.preheader109
  %i.ep = and i64 %i.l, 262143                    ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i98, i64 %i.m
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %GC_find_header.exit._crit_edge.i103, label %bb.z

GC_find_header.exit._crit_edge.i103:              ; preds = %GC_find_header.exit.i99
  %.pre.i104 = and i64 %i.l, 63
  %.pre8.i105 = shl nuw i64 1, %.pre.i104
  %.pre10.i106 = lshr i64 %i.ep, 6
  br label %bb.aa

bb.z:                                             ; preds = %GC_find_header.exit.i99
  %i.et = load ptr, ptr @GC_old_normal_bl, align 8
  %i.eu = lshr i64 %i.ep, 6                       ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.l, 63
  %i.ey = shl nuw i64 1, %i.ex                    ; 2 uses
  %i.ez = and i64 %i.ew, %i.ey
  %.not7.i100 = icmp eq i64 %i.ez, 0
  br i1 %.not7.i100, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %GC_find_header.exit._crit_edge.i103
  %.pre-phi11.i101 = phi i64 [ %.pre10.i106, %GC_find_header.exit._crit_edge.i103 ], [ %i.eu, %bb.z ]
  %.pre-phi9.i102 = phi i64 [ %.pre8.i105, %GC_find_header.exit._crit_edge.i103 ], [ %i.ey, %bb.z ]
  %i.fa = load ptr, ptr @GC_incomplete_normal_bl, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.pre-phi11.i101 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = or i64 %i.fc, %.pre-phi9.i102
  store i64 %i.fd, ptr %i.fb, align 8
  br label %.critedge

bb.ab:                                            ; preds = %bb.u
  store i64 %i.l, ptr %1, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.o, ptr %i.fe, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.i, %bb.q, %bb.k, %bb.ab
  %.144 = phi ptr [ %i.o, %bb.ab ], [ null, %bb.t ], [ %i.aj, %bb.k ], [ null, %bb.q ], [ null, %bb.m ], [ null, %bb.p ], [ null, %bb.x ], [ null, %bb.n ], [ null, %bb.i ], [ null, %bb.o ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.w ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ]
  ret ptr %.144
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @GC_next_block(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 22                        ; 3 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.028.in = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.028 = load ptr, ptr %.028.in, align 8         ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.028, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.028, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.028, i64 8216
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !36

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %1 = icmp eq ptr %.028, %i.e
  br i1 %1, label %.preheader42, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %bb.c
  %.153.ph = phi i64 [ %i.m, %bb.c ], [ 0, %.lr.ph ]
  %.23252.ph = phi ptr [ %.028, %bb.c ], [ %.03047, %.lr.ph ]
  br label %.preheader

.preheader42:                                     ; preds = %bb.c
  %.03045 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 104), align 8 ; 2 uses
  %.not46 = icmp eq ptr %.03045, null
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42, %bb.d
  %.03047 = phi ptr [ %.030, %bb.d ], [ %.03045, %.preheader42 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03047, i64 8208
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ult i64 %i.o, %i.b
  br i1 %i.p, label %bb.d, label %.preheader.preheader

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.03047, i64 8192
  %.030 = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not = icmp eq ptr %.030, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !37

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %.153 = phi i64 [ 0, %bb.i ], [ %.153.ph, %.preheader.preheader ]
  %.23252 = phi ptr [ %i.ai, %bb.i ], [ %.23252.ph, %.preheader.preheader ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.h
  %.250 = phi i64 [ %.153, %.preheader ], [ %.4, %bb.h ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.23252, i64 %.250
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp ult ptr %i.s, inttoptr (i64 4096 to ptr)
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 4
  %.not38 = icmp eq i8 %i.w, 0
  br i1 %.not38, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.23252, i64 8208
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 22
  %i.aa = shl nuw nsw i64 %.250, 12
  %i.ab = add nuw nsw i64 %i.z, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = lshr i64 %i.ae, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.pn = phi i64 [ %i.af, %bb.g ], [ 1, %bb.e ]
  %.4 = add nuw nsw i64 %.pn, %.250               ; 2 uses
  %i.ag = icmp samesign ult i64 %.4, 1024
  br i1 %i.ag, label %bb.e, label %bb.i, !llvm.loop !38

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.23252, i64 8192
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.ai, null
  br i1 %.not37, label %.loopexit, label %.preheader, !llvm.loop !39

.loopexit:                                        ; preds = %bb.d, %bb.i, %.preheader42, %.thread
  %.336 = phi ptr [ %i.ac, %.thread ], [ null, %bb.i ], [ null, %.preheader42 ], [ null, %bb.d ]
  ret ptr %.336
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @GC_static_page_was_dirty(ptr noundef %0) #10 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 12
  %i.c = lshr i64 %i.a, 18
  %i.d = and i64 %i.c, 4095
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 27128), i64 %i.d
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.b, 63
  %i.h = lshr i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 1
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal void @GC_push_current_stack(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.c = ptrtoint ptr %i.b to i64
  store volatile i64 %i.c, ptr %i.a, align 8
  %.0..0..0..0..0..0..i = load volatile i64, ptr %i.a, align 8
  %i.d = inttoptr i64 %.0..0..0..0..0..0..i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @GC_push_all_eager(ptr noundef %i.d, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_mark_local(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @GC_active_count, align 4
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr @GC_active_count, align 4
  %i.c = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 216) monotonic, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr @GC_print_stats, align 4
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.146, i32 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %GC_release_mark_lock.exit.preheader, label %bb.d

GC_release_mark_lock.exit.preheader:              ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %GC_release_mark_lock.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.k(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

GC_release_mark_lock.exit:                        ; preds = %GC_release_mark_lock.exit.backedge, %GC_release_mark_lock.exit.preheader
  %.053 = phi ptr [ %i.d, %GC_release_mark_lock.exit.preheader ], [ %.053.be, %GC_release_mark_lock.exit.backedge ] ; 3 uses
  %i.l = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 216) monotonic, align 8 ; 5 uses
  %i.m = ptrtoint ptr %.053 to i64                ; 5 uses
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %GC_release_mark_lock.exit
  %i.o = inttoptr i64 %i.l to ptr
  br label %bb.h

bb.f:                                             ; preds = %GC_release_mark_lock.exit
  %i.p = icmp ult i64 %i.l, %i.m
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 216), i64 %i.l, i64 %i.m monotonic monotonic, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.pre-phi = phi i64 [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.l, %bb.e ] ; 3 uses
  %.1 = phi ptr [ %.053, %bb.f ], [ %.053, %bb.g ], [ %i.o, %bb.e ] ; 4 uses
  %i.r = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160) acquire, align 8 ; 3 uses
  %i.s = icmp ult i64 %i.r, %.pre-phi
  br i1 %i.s, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.t = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %.pre-phi
  %i.w = ashr exact i64 %i.v, 4
  %i.x = add nsw i64 %i.w, 1                      ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr @GC_active_count, align 4
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr @GC_active_count, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %GC_wait_marker.exit.preheader

GC_wait_marker.exit.preheader:                    ; preds = %bb.k, %bb.j
  br label %GC_wait_marker.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @mark_cv) #45
  %.not.i34 = icmp eq i32 %i.ac, 0
  br i1 %.not.i34, label %GC_wait_marker.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ad(ptr noundef nonnull @.str.145) #45, !inline_history !289
  tail call void @abort() #48
  unreachable

GC_wait_marker.exit:                              ; preds = %GC_wait_marker.exit.preheader, %bb.n
  %i.ae = load i32, ptr @GC_active_count, align 4 ; 2 uses
  %.not30 = icmp eq i32 %i.ae, 0
end_hunk_4
