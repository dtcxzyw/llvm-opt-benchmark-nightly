Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_err_printf:bb.a
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.p = tail call ptr @__errno_location() #51
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %GC_err_puts.exit, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = add nsw i32 %.01322.i.i, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i.i = phi i32 [ %i.s, %bb.e ], [ %.01322.i.i, %bb.d ] ; 2 uses
  %i.t = zext i32 %.1.i.i to i64
  %i.u = icmp ugt i64 %i.h, %i.t
  br i1 %i.u, label %.lr.ph.i.i, label %GC_err_puts.exit

GC_err_puts.exit:                                 ; preds = %bb.d, %bb.f, %bb.c
  %i.v = load i32, ptr %i.a, align 4
  %i.w = call i32 @pthread_setcancelstate(i32 noundef %i.v, ptr noundef null) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  ret void
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_gcj_malloc_ignore_off_page(i64 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %0, 2048
  br i1 %i.a, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @GC_all_interior_pointers, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = sub nsw i64 2048, %i.c
  %.not = icmp ugt i64 %0, %i.d
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.b33 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b33, label %bb.d, label %GC_lock.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not36 = icmp eq i32 %i.e, 0
  br i1 %.not36, label %GC_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr @GC_nprocs, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %0
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 272), align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.split, !prof !48

bb.i:                                             ; preds = %GC_lock.exit
  tail call fastcc void @maybe_finalize()
  %i.p = load i32, ptr @GC_gcj_kind, align 4
  %i.q = tail call fastcc ptr @GC_generic_malloc_inner_ignore_off_page(i64 noundef %0, i32 noundef %i.p) ; 3 uses
  %i.r = tail call ptr @GC_clear_stack(ptr noundef %i.q) ; 0 uses
  %i.s = icmp eq ptr %i.q, null
  %.b.pre40 = load i1, ptr @GC_need_to_lock, align 4 ; 2 uses
  br i1 %i.s, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr @GC_oom_fn, align 8
  br i1 %.b.pre40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.l

.split:                                           ; preds = %GC_lock.exit
  %i.v = load ptr, ptr %i.n, align 8
  store ptr %i.v, ptr %i.m, align 8
  %i.w = shl i64 %i.k, 4
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %.b.pre = load i1, ptr @GC_need_to_lock, align 4
  store ptr %1, ptr %i.n, align 8
  br i1 %.b.pre, label %bb.t, label %bb.u

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.z = tail call ptr %i.t(i64 noundef %0) #45
  br label %bb.x

bb.m:                                             ; preds = %bb.b
  %.b31 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b31, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not35 = icmp eq i32 %i.aa, 0
  br i1 %.not35, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @GC_lock()
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  tail call fastcc void @maybe_finalize()
  %i.ab = load i32, ptr @GC_gcj_kind, align 4
  %i.ac = tail call fastcc ptr @GC_generic_malloc_inner_ignore_off_page(i64 noundef %0, i32 noundef %i.ab) ; 3 uses
  %i.ad = tail call ptr @GC_clear_stack(ptr noundef %i.ac) ; 0 uses
  %i.ae = icmp eq ptr %i.ac, null
  %.b.pre41 = load i1, ptr @GC_need_to_lock, align 4 ; 2 uses
  br i1 %i.ae, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr @GC_oom_fn, align 8
  br i1 %.b.pre41, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ah = tail call ptr %i.af(i64 noundef %0) #45
  br label %bb.x

.thread:                                          ; preds = %bb.i, %bb.p
  %.b = phi i1 [ %.b.pre41, %bb.p ], [ %.b.pre40, %bb.i ]
  %.2 = phi ptr [ %i.ac, %bb.p ], [ %i.q, %bb.i ] ; 3 uses
  store ptr %1, ptr %.2, align 8
  br i1 %.b, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.split, %.thread
  %.247 = phi ptr [ %i.n, %.split ], [ %.2, %.thread ]
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.split, %bb.t, %.thread
  %.246 = phi ptr [ %i.n, %.split ], [ %.247, %bb.t ], [ %.2, %.thread ] ; 2 uses
  %.b34 = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b34, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aj = ptrtoint ptr %.246 to i64               ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = lshr i64 %i.aj, 18
  %i.am = and i64 %i.al, 4095
  %i.an = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.am
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = atomicrmw volatile or ptr %i.an, i64 %i.ap monotonic, align 8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %1) #45, !srcloc !68
  br label %bb.x

bb.x:                                             ; preds = %bb.l, %bb.w, %bb.s
  %.124 = phi ptr [ %.246, %bb.w ], [ %i.z, %bb.l ], [ %i.ah, %bb.s ]
  ret ptr %.124
}

; Function Attrs: nofree nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @GC_clear_stack(ptr noundef returned %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.c = ptrtoint ptr %i.b to i64
  store volatile i64 %i.c, ptr %i.a, align 8
  %.0..0..0..0..0..0..i = load volatile i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i32, ptr @next_random_no.random_no, align 4
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr @next_random_no.random_no, align 4
  %i.f = urem i32 %i.e, 13
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.0..0..0..0..0..0..i, -16
  %i.i = add i64 %i.h, -16384
  %i.j = inttoptr i64 %i.i to ptr
  %1 = tail call ptr @GC_clear_stack_inner(ptr noundef %0, ptr noundef %i.j) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_generic_malloc_inner_ignore_off_page(i64 noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 4097
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef %0, i32 noundef %1)
  br label %GC_alloc_large_and_clear.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @GC_all_interior_pointers, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %i.d, i64 %0) ; 3 uses
  %i.f = tail call fastcc ptr @GC_alloc_large(i64 noundef %i.e, i32 noundef %1, i32 noundef 1) #52, !inline_history !51 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %GC_alloc_large_and_clear.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.b.i = load i1, ptr @GC_debugging_started, align 4
  br i1 %.b.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [48 x i8], ptr @GC_obj_kinds, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %.not8.i = icmp eq i32 %i.j, 0
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = add i64 %i.e, 4095
  %i.l = and i64 %i.k, -4096
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %i.l, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.n = add i64 %i.m, %i.e
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  br label %GC_alloc_large_and_clear.exit

GC_alloc_large_and_clear.exit:                    ; preds = %bb.c, %bb.g, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.g ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @GC_apply_to_all_blocks(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.021 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 104), align 8 ; 2 uses
  %.not22 = icmp eq ptr %.021, null
  br i1 %.not22, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.j
  %.023 = phi ptr [ %.0, %bb.j ], [ %.021, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.023, i64 8208
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.i
  %.01720 = phi i64 [ 1023, %.preheader ], [ %.1, %bb.i ] ; 5 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.023, i64 %.01720
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = icmp ult ptr %i.c, inttoptr (i64 4096 to ptr)
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 4
  %.not19 = icmp eq i8 %i.h, 0
  br i1 %.not19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.a, align 8
  %i.j = shl i64 %i.i, 22
  %i.k = shl i64 %.01720, 12
  %i.l = add i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr
  tail call void %0(ptr noundef %i.m, i64 noundef %1) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = add nsw i64 %.01720, -1
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.o = icmp eq ptr %i.c, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i64 %.01720, -1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = sub nsw i64 %.01720, %i.d
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.1 = phi i64 [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = icmp sgt i64 %.1, -1
  br i1 %i.r, label %bb.b, label %bb.j, !llvm.loop !3

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.023, i64 8192
  %.0 = load ptr, ptr %i.s, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_register_displacement(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.b1 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1, label %bb.b, label %GC_lock.exit

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
  %i.h = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %0 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %.not.i2 = icmp eq i8 %i.i, 0
  br i1 %.not.i2, label %bb.i, label %GC_register_displacement_inner.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.h, align 1
  %i.j = and i64 %0, 7
  %i.k = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), i64 %i.j
  store i8 1, ptr %i.k, align 1
  br label %GC_register_displacement_inner.exit

GC_register_displacement_inner.exit:              ; preds = %bb.h, %bb.i
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.j, label %bb.k

bb.j:                                             ; preds = %GC_register_displacement_inner.exit
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %GC_register_displacement_inner.exit, %bb.j
  ret void
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @GC_default_same_obj_print_proc(ptr noundef %0, ptr noundef %1) #8 {
bb.a:
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.132, ptr noundef %0, ptr noundef %1)
  %i.a = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.a(ptr noundef nonnull @.str.133) #45
  tail call void @abort() #48
  unreachable
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_same_obj(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b, label %bb.c, label %bb.b, !prof !47

end_hunk_0
begin_hunk_1_@GC_print_heap_sects:bb.a
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
  %i.o = tail call ptr @GC_unix_get_mem(i64 noundef %i.i) ; 6 uses
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
  %1 = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.aq) ; 2 uses
  %i.ar = add i64 %1, 33554432                    ; 2 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 16), align 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null                 ; 2 uses
  %.not38 = icmp sgt ptr %i.o, inttoptr (i64 -1 to ptr)
  %or.cond = and i1 %.not38, %i.at
  %i.au = icmp ult ptr %i.as, %i.o
  %or.cond41 = xor i1 %i.at, %i.au
  %or.cond49 = or i1 %or.cond, %or.cond41
  %i.av = ptrtoint ptr %i.o to i64                ; 4 uses
  br i1 %or.cond49, label %bb.k, label %bb.m

bb.k:                                             ; preds = %min_bytes_allocd.exit
  %i.aw = add i64 %i.i, %i.av
  %i.ax = add i64 %i.aw, %i.ar                    ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %i.av
  br i1 %i.ay, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %2 = tail call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ax)
  br label %.sink.split

bb.m:                                             ; preds = %min_bytes_allocd.exit
  %i.bb = sub i64 %i.av, %i.ar                    ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.av
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %3 = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.bb)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.n
  %.sink50 = phi i64 [ %3, %bb.n ], [ %2, %bb.l ]
  %GC_least_plausible_heap_addr.sink = phi ptr [ @GC_least_plausible_heap_addr, %bb.n ], [ @GC_greatest_plausible_heap_addr, %bb.l ]
  %i.bf = inttoptr i64 %.sink50 to ptr
  store ptr %i.bf, ptr %GC_least_plausible_heap_addr.sink, align 8
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m, %bb.k
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 16), align 8
  tail call fastcc void @GC_add_to_heap(ptr noundef nonnull %i.o, i64 noundef %i.i)
  %i.bg = load i64, ptr @GC_arrays, align 8       ; 2 uses
  %i.bh = add i64 %1, 16777216
  %spec.store.select1 = tail call i64 @llvm.uadd.sat.i64(i64 %i.bg, i64 %i.bh)
  store i64 %spec.store.select1, ptr @GC_collect_at_heapsize, align 8
  %i.bi = load ptr, ptr @GC_on_heap_resize, align 8 ; 2 uses
  %.not40 = icmp eq ptr %i.bi, null
  br i1 %.not40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.bi(i64 noundef %i.bg) #45
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
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %.b12 = load i1, ptr @GC_debugging_started, align 4
  br i1 %.b12, label %GC_start_debugging_inner.exit, label %bb.i

bb.i:                                             ; preds = %GC_lock.exit
  store ptr @GC_debug_print_heap_obj_proc, ptr @GC_print_heap_obj, align 8
  store i1 true, ptr @GC_debugging_started, align 4
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23064), align 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %bb.j, label %GC_start_debugging_inner.exit

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23064), align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), align 8
  br label %GC_start_debugging_inner.exit

GC_start_debugging_inner.exit:                    ; preds = %bb.j, %bb.i, %GC_lock.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
end_hunk_1
begin_hunk_2_@GC_alloc_large:bb.a
bb.bi:                                            ; preds = %._crit_edge.i
  %i.jy = tail call fastcc ptr @GC_allochblk(i64 noundef %i.b, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %.lr.ph.preheader, label %.critedge34

.lr.ph.preheader:                                 ; preds = %bb.bi
  %i.ka = tail call fastcc i32 @GC_collect_or_expand(i64 noundef %i.f, i32 noundef %2, i32 noundef 0)
  %.not33.peel = icmp eq i32 %i.ka, 0
  br i1 %.not33.peel, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.preheader
  %i.kb = tail call fastcc ptr @GC_allochblk(i64 noundef %i.b, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %.lr.ph, label %.critedge34

.lr.ph:                                           ; preds = %bb.bj, %bb.bk
  %i.kd = tail call fastcc i32 @GC_collect_or_expand(i64 noundef %i.f, i32 noundef %2, i32 noundef 1)
  %.not33 = icmp eq i32 %i.kd, 0
  br i1 %.not33, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph
  %i.ke = tail call fastcc ptr @GC_allochblk(i64 noundef %i.b, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %.lr.ph, label %.critedge34, !llvm.loop !122

.critedge34:                                      ; preds = %bb.bk, %bb.i, %bb.bj, %bb.bi
  %.1.lcssa = phi ptr [ %i.jy, %bb.bi ], [ %i.n, %bb.i ], [ %i.kb, %bb.bj ], [ %i.ke, %bb.bk ] ; 3 uses
  %i.kg = icmp samesign ugt i64 %i.f, 1
  br i1 %i.kg, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %.critedge34
  %i.kh = shl nuw i64 %i.f, 12
  %i.ki = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.kj = add i64 %i.ki, %i.kh                    ; 3 uses
  store i64 %i.kj, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.kk = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 40), align 8
  %i.kl = icmp ugt i64 %i.kj, %i.kk
  br i1 %i.kl, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.kj, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 40), align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %.critedge34, %bb.bm, %bb.bl
  %.137 = phi ptr [ %.1.lcssa, %bb.bl ], [ %.1.lcssa, %.critedge34 ], [ %.1.lcssa, %bb.bm ], [ null, %.lr.ph.preheader ], [ null, %.lr.ph ]
  ret ptr %.137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define ptr @GC_get_oom_fn() local_unnamed_addr #2 {
bb.a:
  %.b1 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1, label %bb.b, label %GC_lock.exit.thread

GC_lock.exit.thread:                              ; preds = %bb.a
  %i.a = load ptr, ptr @GC_oom_fn, align 8
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %GC_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @GC_nprocs, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.b
  %.b.pr = load i1, ptr @GC_need_to_lock, align 4
  %i.g = load ptr, ptr @GC_oom_fn, align 8        ; 2 uses
  br i1 %.b.pr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %GC_lock.exit
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %GC_lock.exit.thread, %bb.g, %GC_lock.exit
  %i.i = phi ptr [ %i.a, %GC_lock.exit.thread ], [ %i.g, %bb.g ], [ %i.g, %GC_lock.exit ]
  ret ptr %i.i
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_kind_global(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ult i64 %0, 2048
  br i1 %i.b, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @GC_all_interior_pointers, align 4
  %i.d = and i32 %i.c, 255
  %narrow = sub nuw nsw i32 2048, %i.d
  %i.e = zext nneg i32 %narrow to i64
  %.not = icmp ugt i64 %0, %i.e
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.b22 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b22, label %bb.d, label %GC_lock.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %GC_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr @GC_nprocs, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %0
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [48 x i8], ptr @GC_obj_kinds, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %.not24.not = icmp eq ptr %i.q, null
  br i1 %.not24.not, label %bb.m, label %bb.i, !prof !48

bb.i:                                             ; preds = %GC_lock.exit
  %i.r = icmp eq i32 %1, 0
  %i.s = load ptr, ptr %i.q, align 8
  store ptr %i.s, ptr %i.p, align 8
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.q, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.t = shl i64 %i.l, 4
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.v = add i64 %i.u, %i.t
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %.b21 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b21, label %bb.l, label %GC_clear_stack.exit

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_clear_stack.exit

bb.m:                                             ; preds = %GC_lock.exit
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %bb.b
  %i.y = tail call noalias ptr @GC_generic_malloc(i64 noundef %0, i32 noundef %1) #53 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.aa = ptrtoint ptr %i.z to i64
  store volatile i64 %i.aa, ptr %i.a, align 8
  %.0..0..0..0..0..0..0..0..i.i = load volatile i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = load i32, ptr @next_random_no.random_no, align 4
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr @next_random_no.random_no, align 4
  %i.ad = urem i32 %i.ac, 13
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %GC_clear_stack.exit

bb.o:                                             ; preds = %.thread
  %i.af = and i64 %.0..0..0..0..0..0..0..0..i.i, -16
  %i.ag = add i64 %i.af, -16384
  %i.ah = inttoptr i64 %i.ag to ptr
  %2 = tail call ptr @GC_clear_stack_inner(ptr noundef %i.y, ptr noundef %i.ah) ; 0 uses
  br label %GC_clear_stack.exit

GC_clear_stack.exit:                              ; preds = %bb.o, %.thread, %bb.l, %bb.k
  %.1 = phi ptr [ %i.q, %bb.l ], [ %i.q, %bb.k ], [ %i.y, %.thread ], [ %i.y, %bb.o ]
  ret ptr %.1
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %0, 2048
  %.pre = load i32, ptr @GC_all_interior_pointers, align 4 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %.pre to i64
  %i.c = sub nsw i64 2048, %i.b
  %.not = icmp ugt i64 %0, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp ne i32 %.pre, 0
  %i.e = icmp ne i64 %0, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = sext i1 %or.cond to i64
  %spec.select = add i64 %0, %i.f                 ; 2 uses
  %.b32 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b32, label %bb.d, label %GC_lock.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not35 = icmp eq i32 %i.g, 0
  br i1 %.not35, label %GC_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr @GC_nprocs, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %spec.select
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [48 x i8], ptr @GC_obj_kinds, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 16
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.k, label %bb.i, !prof !48

bb.i:                                             ; preds = %GC_lock.exit
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.q, align 8
  store ptr null, ptr %i.r, align 8
  %i.t = shl i64 %i.m, 4                          ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.v = add i64 %i.u, %i.t
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.w = load i64, ptr @GC_non_gc_bytes, align 8
  %i.x = add i64 %i.w, %i.t
  store i64 %i.x, ptr @GC_non_gc_bytes, align 8
  %.b31 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b31, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.u

bb.k:                                             ; preds = %GC_lock.exit
  %.b30 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b30, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
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
end_hunk_2
begin_hunk_3_@GC_generic_malloc_many:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  tail call fastcc void @GC_notify_or_invoke_finalizers()
  %.b109 = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b109, label %bb.l, label %bb.k, !prof !47

bb.k:                                             ; preds = %bb.j
  tail call void @GC_init()
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.b104 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b104, label %bb.m, label %GC_lock.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not110 = icmp eq i32 %i.aj, 0
  br i1 %.not110, label %GC_lock.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr @GC_nprocs, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.q:                                             ; preds = %bb.o
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.q, %bb.p, %bb.m, %bb.l
  %i.ao = load i32, ptr @GC_incremental, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = load i32, ptr @GC_dont_gc, align 4
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond3 = select i1 %i.ap, i1 true, i1 %i.ar
  br i1 %or.cond3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %GC_lock.exit
  store atomic i8 1, ptr @GC_collecting monotonic, align 4
  tail call fastcc void @GC_collect_a_little_inner(i32 noundef 1)
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %GC_lock.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not111 = icmp eq ptr %i.at, null
  br i1 %.not111, label %.thread, label %GC_clear_stack.exit.preheader

GC_clear_stack.exit.preheader:                    ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  br label %GC_clear_stack.exit.outer

GC_clear_stack.exit.outer:                        ; preds = %GC_clear_stack.exit.preheader, %GC_lock.exit137
  %.082.ph = phi ptr [ %i.at, %GC_clear_stack.exit.preheader ], [ %i.dj, %GC_lock.exit137 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.082.ph, i64 %i.ah ; 2 uses
  br label %GC_clear_stack.exit

GC_clear_stack.exit:                              ; preds = %GC_clear_stack.exit.outer, %bb.ap
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %.not112 = icmp eq ptr %i.aw, null
  br i1 %.not112, label %.thread, label %bb.t

bb.t:                                             ; preds = %GC_clear_stack.exit
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = lshr i64 %i.ax, 22                      ; 2 uses
  %i.az = and i64 %i.ay, 2047
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.az
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.in.i126 = phi ptr [ %i.ba, %bb.t ], [ %i.bh, %bb.u ]
  %.0.i127 = load ptr, ptr %.0.in.i126, align 8   ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i127, i64 8208
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp ne i64 %i.bd, %i.ay
  %i.bf = icmp ne ptr %.0.i127, %i.bb
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i127, i64 8216
  br i1 %i.bg, label %bb.u, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.u
  %i.bi = lshr i64 %i.ax, 12
  %i.bj = and i64 %i.bi, 1023
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.0.i127, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8            ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  store ptr %i.bm, ptr %i.av, align 8
  %i.bn = load i64, ptr @GC_gc_no, align 8
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 26
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = load i32, ptr @GC_parallel, align 4
  %.not113 = icmp eq i32 %i.bq, 0
  br i1 %.not113, label %bb.ap, label %bb.v

bb.v:                                             ; preds = %GC_find_header.exit
  %i.br = load atomic volatile i64, ptr @GC_bytes_allocd_tmp monotonic, align 8 ; 3 uses
  %.not115 = icmp eq i64 %i.br, 0
  br i1 %.not115, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = atomicrmw volatile add ptr @GC_bytes_allocd_tmp, i64 %i.bs monotonic, align 8 ; 0 uses
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.bv = add i64 %i.bu, %i.br
  store i64 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.bw = load i64, ptr @GC_fl_builder_count, align 8
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr @GC_fl_builder_count, align 8
  %.b103 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b103, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i128 = icmp eq i32 %i.bz, 0
  br i1 %.not.i128, label %GC_release_mark_lock.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ca(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

GC_release_mark_lock.exit:                        ; preds = %bb.z
  %i.cb = load i32, ptr %i.au, align 4
  %i.cc = call fastcc ptr @GC_reclaim_generic(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.bl, i64 noundef %0, i32 noundef %i.cb, ptr noundef null, ptr noundef nonnull %i.d) ; 2 uses
  %.not116 = icmp eq ptr %i.cc, null
  br i1 %.not116, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %GC_release_mark_lock.exit
  store ptr %i.cc, ptr %2, align 8
  %i.cd = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ce = atomicrmw volatile add ptr @GC_bytes_allocd_tmp, i64 %i.cd monotonic, align 8 ; 0 uses
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.cf = load i64, ptr @GC_fl_builder_count, align 8
  %i.cg = add nsw i64 %i.cf, -1                   ; 2 uses
  store i64 %i.cg, ptr @GC_fl_builder_count, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.ac, label %GC_notify_all_builder.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @builder_cv) #45
  %.not.i129 = icmp eq i32 %i.ci, 0
  br i1 %.not.i129, label %GC_notify_all_builder.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cj(ptr noundef nonnull @.str.145) #45, !inline_history !58
  tail call void @abort() #48
  unreachable

GC_notify_all_builder.exit:                       ; preds = %bb.ac, %bb.ab
  %i.ck = load i64, ptr @GC_bytes_found, align 8
  %i.cl = add nsw i64 %i.ck, %i.cd
  store i64 %i.cl, ptr @GC_bytes_found, align 8
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i130 = icmp eq i32 %i.cm, 0
  br i1 %.not.i130, label %GC_release_mark_lock.exit131, label %bb.ae

bb.ae:                                            ; preds = %GC_notify_all_builder.exit
  %i.cn = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cn(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

GC_release_mark_lock.exit131:                     ; preds = %GC_notify_all_builder.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.co = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.cp = ptrtoint ptr %i.co to i64
  store volatile i64 %i.cp, ptr %i.c, align 8
  %.0..0..0..0..0..0..0..0..i.i = load volatile i64, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cq = load i32, ptr @next_random_no.random_no, align 4
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cr, ptr @next_random_no.random_no, align 4
  %i.cs = urem i32 %i.cr, 13
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.af, label %GC_clear_stack.exit149

bb.af:                                            ; preds = %GC_release_mark_lock.exit131
  %i.cu = and i64 %.0..0..0..0..0..0..0..0..i.i, -16
  %i.cv = add i64 %i.cu, -16384
  %i.cw = inttoptr i64 %i.cv to ptr
  %3 = tail call ptr @GC_clear_stack_inner(ptr noundef null, ptr noundef %i.cw) ; 0 uses
  br label %GC_clear_stack.exit149

bb.ag:                                            ; preds = %GC_release_mark_lock.exit
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.cx = load i64, ptr @GC_fl_builder_count, align 8
  %i.cy = add nsw i64 %i.cx, -1                   ; 2 uses
  store i64 %i.cy, ptr @GC_fl_builder_count, align 8
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.ah, label %GC_notify_all_builder.exit133

bb.ah:                                            ; preds = %bb.ag
  %i.da = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @builder_cv) #45
  %.not.i132 = icmp eq i32 %i.da, 0
  br i1 %.not.i132, label %GC_notify_all_builder.exit133, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.db(ptr noundef nonnull @.str.145) #45, !inline_history !58
  tail call void @abort() #48
  unreachable

GC_notify_all_builder.exit133:                    ; preds = %bb.ah, %bb.ag
  %i.dc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i134 = icmp eq i32 %i.dc, 0
  br i1 %.not.i134, label %GC_release_mark_lock.exit135, label %bb.aj

bb.aj:                                            ; preds = %GC_notify_all_builder.exit133
  %i.dd = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.dd(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

GC_release_mark_lock.exit135:                     ; preds = %GC_notify_all_builder.exit133
  %.b102 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b102, label %bb.ak, label %GC_lock.exit137

bb.ak:                                            ; preds = %GC_release_mark_lock.exit135
  %i.de = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not117 = icmp eq i32 %i.de, 0
  br i1 %.not117, label %GC_lock.exit137, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = load i32, ptr @GC_nprocs, align 4
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i136 = icmp eq i8 %i.dh, 0
  br i1 %.not.i136, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.di = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit137

bb.ao:                                            ; preds = %bb.am
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit137

GC_lock.exit137:                                  ; preds = %bb.ao, %bb.an, %bb.ak, %GC_release_mark_lock.exit135
  %i.dj = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.thread, label %GC_clear_stack.exit.outer

bb.ap:                                            ; preds = %GC_find_header.exit
  %i.dl = load i32, ptr %i.au, align 4
  %i.dm = call fastcc ptr @GC_reclaim_generic(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.bl, i64 noundef %0, i32 noundef %i.dl, ptr noundef null, ptr noundef nonnull %i.d) ; 2 uses
  %.not114 = icmp eq ptr %i.dm, null
  br i1 %.not114, label %GC_clear_stack.exit, label %bb.aq, !llvm.loop !131

bb.aq:                                            ; preds = %bb.ap
  %i.dn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.do = load i64, ptr @GC_bytes_found, align 8
  %i.dp = add nsw i64 %i.do, %i.dn
  store i64 %i.dp, ptr @GC_bytes_found, align 8
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.dr = add i64 %i.dq, %i.dn
  store i64 %i.dr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  br label %bb.bn

.thread:                                          ; preds = %GC_lock.exit137, %GC_clear_stack.exit, %bb.s
  %i.ds = load ptr, ptr %i.f, align 16
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ah ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not118 = icmp eq ptr %i.du, null
  br i1 %.not118, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %.thread
  store ptr null, ptr %i.dt, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.au
  %.081178 = phi ptr [ %i.du, %bb.ar ], [ %i.dy, %bb.au ] ; 2 uses
  %i.dv = phi i64 [ 0, %bb.ar ], [ %i.dw, %bb.au ]
  %i.dw = add nuw nsw i64 %i.dv, %0               ; 3 uses
  %i.dx = icmp ugt i64 %i.dw, 4095
  %i.dy = load ptr, ptr %.081178, align 8         ; 3 uses
  br i1 %i.dx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr %i.dy, ptr %i.dt, align 8
  store ptr null, ptr %.081178, align 8
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  %.not122 = icmp eq ptr %i.dy, null
  br i1 %.not122, label %.loopexit, label %bb.as, !llvm.loop !132

.loopexit:                                        ; preds = %bb.au, %bb.at
  %i.dz = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.ea = add i64 %i.dz, %i.dw
  store i64 %i.ea, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  br label %bb.bn

bb.av:                                            ; preds = %.thread
  %i.eb = tail call fastcc ptr @GC_allochblk(i64 noundef %0, i32 noundef %1, i32 noundef 0) ; 4 uses
  %.not119 = icmp eq ptr %i.eb, null
  br i1 %.not119, label %bb.bl, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ec = and i32 %1, -2
  %i.ed = icmp eq i32 %i.ec, 2
  br i1 %i.ed, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.ee = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ef = lshr i64 %i.ee, 22                      ; 2 uses
  %i.eg = and i64 %i.ef, 2047
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.eg
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.0.in.i138 = phi ptr [ %i.eh, %bb.ax ], [ %i.eo, %bb.ay ]
  %.0.i139 = load ptr, ptr %.0.in.i138, align 8   ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i139, i64 8208
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = icmp ne i64 %i.ek, %i.ef
  %i.em = icmp ne ptr %.0.i139, %i.ei
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i139, i64 8216
  br i1 %i.en, label %bb.ay, label %GC_find_header.exit140, !llvm.loop !2

GC_find_header.exit140:                           ; preds = %bb.ay
  %i.ep = lshr i64 %i.ee, 12
  %i.eq = and i64 %i.ep, 1023
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.0.i139, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8            ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load i64, ptr %i.et, align 8            ; 4 uses
  %i.ev = icmp ugt i64 %i.eu, 2048
  br i1 %i.ev, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %GC_find_header.exit140
  %.rhs.trunc.i = trunc nuw nsw i64 %i.eu to i16
  %i.ew = urem i16 4096, %.rhs.trunc.i
  %narrow.i = sub nuw nsw i16 4096, %i.ew
  %i.ex = lshr i16 %narrow.i, 4
  %i.ey = zext nneg i16 %i.ex to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %GC_find_header.exit140
  %i.ez = phi i32 [ %i.ey, %bb.az ], [ 256, %GC_find_header.exit140 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.fb = lshr i64 %i.eu, 4
  %i.fc = trunc i64 %i.fb to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.012.i = phi i32 [ 0, %bb.ba ], [ %i.ff, %bb.bb ] ; 2 uses
  %i.fd = zext nneg i32 %.012.i to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fd
  store i8 1, ptr %i.fe, align 1
  %i.ff = add i32 %.012.i, %i.fc                  ; 2 uses
  %.not.i141 = icmp ugt i32 %i.ff, %i.ez
  br i1 %.not.i141, label %GC_set_hdr_marks.exit, label %bb.bb, !llvm.loop !20

GC_set_hdr_marks.exit:                            ; preds = %bb.bb
  %i.fg = udiv i64 4096, %i.eu
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  store volatile i64 %i.fg, ptr %i.fh, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %GC_set_hdr_marks.exit, %bb.aw
  %i.fi = urem i64 4096, %0
  %i.fj = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %reass.sub179 = sub i64 %i.fj, %i.fi
  %i.fk = add i64 %reass.sub179, 4096
  store i64 %i.fk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.fl = load i32, ptr @GC_parallel, align 4
  %.not120 = icmp eq i32 %i.fl, 0
  br i1 %.not120, label %GC_clear_stack.exit147, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.fm = load i64, ptr @GC_fl_builder_count, align 8
  %i.fn = add nsw i64 %i.fm, 1
  store i64 %i.fn, ptr @GC_fl_builder_count, align 8
  %.b101 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b101, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fp = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i142 = icmp eq i32 %i.fp, 0
  br i1 %.not.i142, label %GC_release_mark_lock.exit143, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fq = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.fq(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

GC_release_mark_lock.exit143:                     ; preds = %bb.bf
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp ne i32 %i.fs, 0
  %.b106 = load i1, ptr @GC_debugging_started, align 4
  %i.fu = select i1 %i.ft, i1 true, i1 %.b106
  %i.fv = zext i1 %i.fu to i32
  %i.fw = tail call fastcc ptr @GC_build_fl(ptr noundef %i.eb, i64 noundef %i.ag, i32 noundef %i.fv, ptr noundef null)
  store ptr %i.fw, ptr %2, align 8
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.fx = load i64, ptr @GC_fl_builder_count, align 8
  %i.fy = add nsw i64 %i.fx, -1                   ; 2 uses
  store i64 %i.fy, ptr @GC_fl_builder_count, align 8
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %GC_release_mark_lock.exit143
  tail call fastcc void @GC_notify_all_builder()
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %GC_release_mark_lock.exit143
  %i.ga = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i144 = icmp eq i32 %i.ga, 0
  br i1 %.not.i144, label %GC_release_mark_lock.exit145, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gb = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.gb(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

GC_release_mark_lock.exit145:                     ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.gc = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.gd = ptrtoint ptr %i.gc to i64
  store volatile i64 %i.gd, ptr %i.b, align 8
  %.0..0..0..0..0..0..0..0..i.i146 = load volatile i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ge = load i32, ptr @next_random_no.random_no, align 4
  %i.gf = add i32 %i.ge, 1                        ; 2 uses
  store i32 %i.gf, ptr @next_random_no.random_no, align 4
  %i.gg = urem i32 %i.gf, 13
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.bk, label %GC_clear_stack.exit149

bb.bk:                                            ; preds = %GC_release_mark_lock.exit145
  %i.gi = and i64 %.0..0..0..0..0..0..0..0..i.i146, -16
  %i.gj = add i64 %i.gi, -16384
  %i.gk = inttoptr i64 %i.gj to ptr
  %4 = tail call ptr @GC_clear_stack_inner(ptr noundef null, ptr noundef %i.gk) ; 0 uses
  br label %GC_clear_stack.exit149

GC_clear_stack.exit147:                           ; preds = %bb.bc
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = icmp ne i32 %i.gm, 0
  %.b105 = load i1, ptr @GC_debugging_started, align 4
  %i.go = select i1 %i.gn, i1 true, i1 %.b105
  %i.gp = zext i1 %i.go to i32
  %i.gq = tail call fastcc ptr @GC_build_fl(ptr noundef %i.eb, i64 noundef %i.ag, i32 noundef %i.gp, ptr noundef null)
  br label %bb.bn

bb.bl:                                            ; preds = %bb.av
  %i.gr = load i32, ptr @GC_all_interior_pointers, align 4
  %i.gs = sext i32 %i.gr to i64
  %i.gt = sub nsw i64 %0, %i.gs
  %i.gu = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef %i.gt, i32 noundef %1) ; 3 uses
  %.not121 = icmp eq ptr %i.gu, null
  br i1 %.not121, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store ptr null, ptr %i.gu, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %GC_clear_stack.exit147, %bb.aq, %bb.bl, %bb.bm, %.loopexit
  %.4 = phi ptr [ %i.du, %.loopexit ], [ %i.gu, %bb.bm ], [ null, %bb.bl ], [ %i.gq, %GC_clear_stack.exit147 ], [ %i.dm, %bb.aq ]
  store ptr %.4, ptr %2, align 8
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.gw = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.gx = ptrtoint ptr %i.gw to i64
  store volatile i64 %i.gx, ptr %i.a, align 8
  %.0..0..0..0..0..0..0..0..i.i148 = load volatile i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gy = load i32, ptr @next_random_no.random_no, align 4
  %i.gz = add i32 %i.gy, 1                        ; 2 uses
  store i32 %i.gz, ptr @next_random_no.random_no, align 4
  %i.ha = urem i32 %i.gz, 13
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.bq, label %GC_clear_stack.exit149

bb.bq:                                            ; preds = %bb.bp
  %i.hc = and i64 %.0..0..0..0..0..0..0..0..i.i148, -16
  %i.hd = add i64 %i.hc, -16384
  %i.he = inttoptr i64 %i.hd to ptr
  %5 = tail call ptr @GC_clear_stack_inner(ptr noundef null, ptr noundef %i.he) ; 0 uses
  br label %GC_clear_stack.exit149

GC_clear_stack.exit149:                           ; preds = %bb.bk, %GC_release_mark_lock.exit145, %GC_release_mark_lock.exit131, %bb.af, %bb.bq, %bb.bp, %bb.d, %GC_is_heap_ptr.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @GC_is_heap_ptr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8216
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = zext i1 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_reclaim_generic(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = icmp eq i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  tail call fastcc void @GC_remove_protection(ptr noundef %0, i64 noundef 1, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 4096, %2                         ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 2 uses
  %.not31.i = icmp slt i64 %i.n, 0
  br i1 %.not31.i, label %GC_disclaim_and_reclaim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.r = icmp ugt i64 %2, 16
  %i.s = lshr i64 %2, 4                           ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.f
  %.034.us.i = phi ptr [ %.1.us.i, %bb.f ], [ %0, %.lr.ph.i ] ; 9 uses
  %.02633.us.i = phi i64 [ %i.ae, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %.02732.us.i = phi ptr [ %.128.us.i, %bb.f ], [ %4, %.lr.ph.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.02633.us.i ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %.not29.us.i = icmp eq i8 %i.u, 0
  br i1 %.not29.us.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.v = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 %2
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.w = tail call i32 %i.m(ptr noundef %.034.us.i) #45, !inline_history !135
  %.not30.us.i = icmp eq i32 %i.w, 0
  br i1 %.not30.us.i, label %.lr.ph.i.preheader.us.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.t, align 1
  %i.x = load volatile i64, ptr %i.q, align 8
  %i.y = add i64 %i.x, 1
  store volatile i64 %i.y, ptr %i.q, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 %2
  br label %bb.f

.lr.ph.i.preheader.us.i:                          ; preds = %bb.d
  store ptr %.02732.us.i, ptr %.034.us.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 %2
  %i.ab = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 8
  store i64 0, ptr %i.ab, align 8
  %.011.i.us.i = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 16
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.i.preheader.us.i
  %.013.i.us.i = phi ptr [ %.0.i.us.i, %.lr.ph.i.us.i ], [ %.011.i.us.i, %.lr.ph.i.preheader.us.i ] ; 3 uses
  %.pn12.i.us.i = phi ptr [ %.013.i.us.i, %.lr.ph.i.us.i ], [ %.034.us.i, %.lr.ph.i.preheader.us.i ]
  store i64 0, ptr %.013.i.us.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn12.i.us.i, i64 24
  store i64 0, ptr %i.ac, align 8
  %.0.i.us.i = getelementptr inbounds nuw i8, ptr %.013.i.us.i, i64 16 ; 3 uses
  %i.ad = icmp ult ptr %.0.i.us.i, %i.aa
  br i1 %i.ad, label %.lr.ph.i.us.i, label %GC_clear_block.exit.loopexit.us.i, !llvm.loop !136

bb.f:                                             ; preds = %GC_clear_block.exit.loopexit.us.i, %bb.e, %bb.c
  %.128.us.i = phi ptr [ %.02732.us.i, %bb.c ], [ %.02732.us.i, %bb.e ], [ %.034.us.i, %GC_clear_block.exit.loopexit.us.i ] ; 2 uses
  %.1.us.i = phi ptr [ %i.v, %bb.c ], [ %i.z, %bb.e ], [ %.0.i.us.i, %GC_clear_block.exit.loopexit.us.i ] ; 2 uses
  %i.ae = add i64 %.02633.us.i, %i.s
  %.not.us.i = icmp ugt ptr %.1.us.i, %i.o
  br i1 %.not.us.i, label %GC_disclaim_and_reclaim.exit, label %.lr.ph.split.us.i, !llvm.loop !137

GC_clear_block.exit.loopexit.us.i:                ; preds = %.lr.ph.i.us.i
  %i.af = load i64, ptr %5, align 8
  %i.ag = add i64 %i.af, %2
  store i64 %i.ag, ptr %5, align 8
  br label %bb.f

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.j
  %.034.i = phi ptr [ %.1.i, %bb.j ], [ %0, %.lr.ph.i ] ; 7 uses
  %.02633.i = phi i64 [ %i.ar, %bb.j ], [ 0, %.lr.ph.i ] ; 2 uses
  %.02732.i = phi ptr [ %.128.i, %bb.j ], [ %4, %.lr.ph.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 %.02633.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %.not29.i = icmp eq i8 %i.ai, 0
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.034.i, i64 %2
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ak = tail call i32 %i.m(ptr noundef %.034.i) #45, !inline_history !135
  %.not30.i = icmp eq i32 %i.ak, 0
  br i1 %.not30.i, label %GC_clear_block.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ah, align 1
  %i.al = load volatile i64, ptr %i.q, align 8
  %i.am = add i64 %i.al, 1
  store volatile i64 %i.am, ptr %i.q, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.034.i, i64 %2
  br label %bb.j

GC_clear_block.exit.i:                            ; preds = %bb.h
  store ptr %.02732.i, ptr %.034.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  store i64 0, ptr %i.ao, align 8
  %.011.i.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 16
  %i.ap = load i64, ptr %5, align 8
  %i.aq = add i64 %i.ap, %2
  store i64 %i.aq, ptr %5, align 8
  br label %bb.j

bb.j:                                             ; preds = %GC_clear_block.exit.i, %bb.i, %bb.g
  %.128.i = phi ptr [ %.02732.i, %bb.g ], [ %.02732.i, %bb.i ], [ %.034.i, %GC_clear_block.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %i.aj, %bb.g ], [ %i.an, %bb.i ], [ %.011.i.i, %GC_clear_block.exit.i ] ; 2 uses
  %i.ar = add i64 %.02633.i, %i.s
  %.not.i = icmp ugt ptr %.1.i, %i.o
  br i1 %.not.i, label %GC_disclaim_and_reclaim.exit, label %.lr.ph.split.i, !llvm.loop !137

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
end_hunk_3
begin_hunk_4_@GC_calloc_explicitly_typed:bb.a
.thread:                                          ; preds = %GC_general_register_disappearing_link.exit
  %i.eg = tail call ptr @GC_get_oom_fn()
  %i.eh = tail call ptr %i.eg(i64 noundef %i.bo) #45
  br label %GC_malloc_explicitly_typed.exit

GC_malloc_explicitly_typed.exit:                  ; preds = %bb.ai, %GC_lock.exit, %GC_lock.exit.thread, %GC_general_register_disappearing_link.exit, %.thread, %GC_size.exit.i, %bb.v, %bb.z, %GC_get_oom_fn.exit63, %GC_get_oom_fn.exit
  %.1 = phi ptr [ %i.q, %GC_get_oom_fn.exit ], [ null, %bb.z ], [ %i.am, %GC_size.exit.i ], [ %i.eh, %.thread ], [ %i.ac, %GC_get_oom_fn.exit63 ], [ null, %bb.v ], [ %i.bq, %GC_general_register_disappearing_link.exit ], [ %i.bq, %GC_lock.exit.thread ], [ %i.bq, %GC_lock.exit ], [ %i.bq, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 3) i32 @GC_make_array_descriptor(i64 noundef range(i64 1, 0) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 3                            ; 2 uses
  %i.b = icmp eq i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, %1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = mul i64 %2, %0
  store i64 %i.d, ptr %3, align 8
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %3, align 8
  br label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.f = icmp ult i64 %0, 51
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i64 %0, 2
  br i1 %i.g, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  store i64 %2, ptr %3, align 8
  br label %.critedge

bb.i:                                             ; preds = %bb.f
  %.not = icmp ne i64 %i.a, 2
  %i.h = and i64 %1, -25
  %i.i = icmp eq i64 %i.h, 0
  %or.cond85 = and i1 %i.i, %.not
  br i1 %or.cond85, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.j = lshr i64 %0, 1
  %i.k = shl nuw nsw i64 %1, 1
  %i.l = lshr exact i64 %1, 3
  br i1 %i.b, label %bb.k, label %GC_double_descr.exit

bb.k:                                             ; preds = %bb.j
  %i.m = lshr i64 %2, 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @GC_bm_table, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  br label %GC_double_descr.exit

GC_double_descr.exit:                             ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.o, %bb.k ], [ %2, %bb.j ]  ; 2 uses
  %i.p = and i64 %.0.i, -4
  %i.q = lshr i64 %i.p, %i.l
  %i.r = or i64 %i.q, %.0.i
  %i.s = tail call fastcc i32 @GC_make_array_descriptor(i64 noundef %i.j, i64 noundef %i.k, i64 noundef %i.r, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 3 uses
  %i.t = and i64 %0, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.critedge, label %bb.l

bb.l:                                             ; preds = %GC_double_descr.exit
  %i.v = tail call noalias dereferenceable_or_null(32) ptr @GC_malloc_kind(i64 noundef 32, i32 noundef 0) #53 ; 6 uses
  %i.w = icmp eq i32 %i.s, -1
  %i.x = icmp eq ptr %i.v, null
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 1, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %2, ptr %i.aa, align 8
  switch i32 %i.s, label %default.unreachable96 [
    i32 0, label %bb.n
    i32 1, label %bb.p
    i32 2, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call noalias dereferenceable_or_null(32) ptr @GC_malloc_kind(i64 noundef 32, i32 noundef 0) #53 ; 6 uses
  %.not82 = icmp eq ptr %i.ab, null
  br i1 %.not82, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 1, ptr %i.ad, align 8
  %i.ae = load i64, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.ae, ptr %i.af, align 8
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ag = tail call noalias dereferenceable_or_null(32) ptr @GC_malloc_kind(i64 noundef 32, i32 noundef 0) #53 ; 5 uses
  %.not81 = icmp eq ptr %i.ag, null
  br i1 %.not81, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  store <2 x i64> %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %i.al, ptr %i.am, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %4, align 8
  br label %bb.s

default.unreachable96:                            ; preds = %bb.m
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.r
  %.sink97 = phi ptr [ %i.ag, %bb.q ], [ %i.ab, %bb.o ], [ %i.an, %bb.r ]
  %i.ao = tail call fastcc ptr @GC_make_sequence_descriptor(ptr noundef %.sink97, ptr noundef %i.v) ; 2 uses
  store ptr %i.ao, ptr %4, align 8
  %i.ap = icmp eq ptr %i.ao, null
  %. = select i1 %i.ap, i32 -1, i32 2, !prof !48
  br label %.critedge

bb.t:                                             ; preds = %bb.i, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %2, ptr %i.as, align 8
  br label %.critedge

.critedge:                                        ; preds = %GC_double_descr.exit, %bb.p, %bb.n, %bb.s, %bb.l, %bb.t, %bb.h, %bb.e, %bb.c
  %.4 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.h ], [ 1, %bb.t ], [ %i.s, %GC_double_descr.exit ], [ -1, %bb.l ], [ %., %bb.s ], [ -1, %bb.n ], [ -1, %bb.p ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @GC_default_oom_fn(i64 %0) #11 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_set_handle_fork(i32 noundef %0) local_unnamed_addr #17 {
bb.a:
  %.b = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %0, -2
  %i.b = select i1 %i.a, i32 %0, i32 1
  store i32 %i.b, ptr @GC_handle_fork, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noundef ptr @GC_clear_stack_inner(ptr noundef returned %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #30 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [213 x i64], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  store volatile i64 %i.d, ptr %i.a, align 8
  %.0..0..0..0..0..0..i = load volatile i64, ptr %i.a, align 8
  %i.e = inttoptr i64 %.0..0..0..0..0..0..i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp ult ptr %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = tail call ptr @GC_clear_stack_inner(ptr noundef %0, ptr noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = ptrtoint ptr %i.b to i64
  store volatile i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 248), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_heap_size() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @GC_arrays, align 8
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.c = sub i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_obtained_from_os_bytes() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_free_bytes() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 24), align 8
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.c = sub i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_unmapped_bytes() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_bytes_since_gc() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_total_bytes() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 48), align 8
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -1, -15) i64 @GC_get_size_map_at(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ugt i32 %0, 2048
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %i.b
  %i.d = load i64, ptr %i.c, align 8
  %i.e = shl i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @GC_get_heap_usage_safe(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %.b14 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b14, label %bb.b, label %GC_lock.exit

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
  %.not15 = icmp eq ptr %0, null
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %GC_lock.exit
  %i.f = load i64, ptr @GC_arrays, align 8
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.h = sub i64 %i.f, %i.g
  store i64 %i.h, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %GC_lock.exit
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 24), align 8
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.k = sub i64 %i.i, %i.j
  store i64 %i.k, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  store i64 %i.l, ptr %2, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  store i64 %i.m, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not19 = icmp eq ptr %4, null
  br i1 %.not19, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 48), align 8
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr %4, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define range(i64 0, 97) i64 @GC_get_prof_stats(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.GC_prof_stats_s, align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.b11 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b11, label %bb.b, label %GC_lock.exit

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

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.f = icmp ugt i64 %1, 95                      ; 12 uses
end_hunk_4
begin_hunk_5_@GC_parse_mem_size_arg:bb.a
bb.g:                                             ; preds = %bb.d, %bb.d
  %i.j = shl i64 %i.c, 30
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.111.ph = phi i64 [ %i.j, %bb.g ], [ 0, %bb.d ], [ %i.c, %bb.b ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.111 = phi i64 [ 0, %bb.a ], [ %.111.ph, %.sink.split ]
  ret i64 %.111
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #34

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @GC_init_size_map() unnamed_addr #27 {
bb.a:
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), align 8
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4 ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %invariant.op = add nsw i64 %i.b, 15            ; 3 uses
  %.not5 = icmp eq i32 %i.a, 384
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = sub nsw i64 384, %i.b                    ; 2 uses
  %i.d = sub nsw i64 -16, %i.b                    ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %umax, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.06 = phi i64 [ 1, %.lr.ph.new ], [ %i.o, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.f = icmp ult i64 %.06, %i.d
  %.reass = add i64 %.06, %invariant.op
  %i.g = lshr i64 %.reass, 4
  %i.h = select i1 %i.f, i64 %i.g, i64 1152921504606846975, !prof !47
  %i.i = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.06
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add nuw i64 %.06, 1                      ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.d
  %.reass.1 = add i64 %i.j, %invariant.op
  %i.l = lshr i64 %.reass.1, 4
  %i.m = select i1 %i.k, i64 %i.l, i64 1152921504606846975, !prof !47
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %i.j
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw i64 %.06, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !172

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.06.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod7 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.p = icmp ult i64 %.06.epil.init, %i.d
  %.reass.epil = add i64 %.06.epil.init, %invariant.op
  %i.q = lshr i64 %.reass.epil, 4
  %i.r = select i1 %i.p, i64 %i.q, i64 1152921504606846975, !prof !47
  %i.s = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.06.epil.init
  store i64 %i.r, ptr %i.s, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_thr_init() unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %0 = alloca %union.pthread_mutexattr_t, align 4 ; 6 uses
  %1 = alloca %struct.__sigset_t, align 8         ; 6 uses
  %2 = alloca %struct.sigaction, align 8          ; 8 uses
  %i.b = alloca [1701 x i8], align 16             ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %.b = load i1, ptr @GC_thr_initialized, align 4
  br i1 %.b, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @GC_thr_initialized, align 4
  %i.d = load i32, ptr @GC_handle_fork, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @pthread_atfork(ptr noundef nonnull @fork_prepare_proc, ptr noundef nonnull @fork_parent_proc, ptr noundef nonnull @fork_child_proc) #45
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr @GC_handle_fork, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr @GC_handle_fork, align 4
  %.not26 = icmp eq i32 %i.g, -1
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.h(ptr noundef nonnull @.str.319) #45
  tail call void @abort() #48
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.i = tail call i64 @pthread_self() #51        ; 5 uses
  %i.j = lshr i64 %i.i, 8
  %i.k = xor i64 %i.j, %i.i                       ; 2 uses
  %i.l = lshr i64 %i.k, 16
  %i.m = xor i64 %i.l, %i.k
  %i.n = and i64 %i.m, 255
  %.b17.i = load i1, ptr @GC_new_thread.first_thread_used, align 4
  br i1 %.b17.i, label %bb.i, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  store i1 true, ptr @GC_new_thread.first_thread_used, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef 904, i32 noundef 1), !inline_history !28 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %GC_new_thread.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi ptr [ %i.o, %bb.i ], [ @first_thread, %bb.h ] ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %i.n ; 2 uses
  %i.s = load volatile ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %.0.i, align 8
  store volatile ptr %.0.i, ptr %i.r, align 8
  %i.t = icmp ne ptr %.0.i, @first_thread
  %.b.i = load i1, ptr @GC_manual_vdb, align 4
  %or.cond.i = select i1 %i.t, i1 %.b.i, i1 false, !prof !50
  br i1 %or.cond.i, label %bb.k, label %bb.l, !prof !50

bb.k:                                             ; preds = %bb.j
  %i.u = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = lshr i64 %i.u, 18
  %i.x = and i64 %i.w, 4095
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.x
  %i.z = and i64 %i.v, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = atomicrmw volatile or ptr %i.y, i64 %i.aa monotonic, align 8 ; 0 uses
  br label %bb.l

GC_new_thread.exit:                               ; preds = %bb.i
  %i.ac = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ac(ptr noundef nonnull @.str.320) #45
  tail call void @abort() #48
  unreachable

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.ae = ptrtoint ptr %i.ad to i64
  store volatile i64 %i.ae, ptr %i.c, align 8
  %.0..0..0..0..0..0..i = load volatile i64, ptr %i.c, align 8
  %i.af = inttoptr i64 %.0..0..0..0..0..0..i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  store i64 %i.i, ptr @GC_main_thread_id, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i8 6, ptr %i.ah, align 8
  %i.ai = load i64, ptr @main_pthread_id, align 8
  %i.aj = icmp eq i64 %i.i, %i.ai
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr @main_stack, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = load i64, ptr @main_stack_size, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = load ptr, ptr @main_altstack, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = load i64, ptr @main_altstack_size, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i64 %i.aq, ptr %i.ar, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.321) #45 ; 2 uses
  store i32 -1, ptr @GC_nprocs, align 4
  %.not27 = icmp eq ptr %3, null
  br i1 %.not27, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %4 = tail call i64 @__isoc23_strtol(ptr noundef nonnull %3, ptr noundef null, i32 noundef 10) #45, !inline_history !0
  %i.as = trunc i64 %4 to i32                     ; 3 uses
  store i32 %i.as, ptr @GC_nprocs, align 4
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %.thread, label %.thread41

.thread:                                          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.327, i32 noundef 0) #45 ; 4 uses
  %i.au = icmp slt i32 %5, 0
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  %i.av = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.av(ptr noundef nonnull @.str.328, i64 noundef 0) #45, !inline_history !173
  br label %.thread41.sink.split

bb.q:                                             ; preds = %.thread
  %i.aw = call i64 @read(i32 noundef %5, ptr noundef nonnull %i.b, i64 noundef 1700) #45 ; 3 uses
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr @GC_current_warn_proc, align 8
  %i.ba = tail call ptr @__errno_location() #51
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = sext i32 %i.bb to i64
  tail call void %i.az(ptr noundef nonnull @.str.329, i64 noundef %i.bc) #45, !inline_history !173
  %6 = tail call i32 @close(i32 noundef %5) #45   ; 0 uses
  br label %.thread41.sink.split

bb.s:                                             ; preds = %bb.q
  %i.bd = and i64 %i.aw, 2147483647
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bd
  store i8 0, ptr %i.be, align 1
  %7 = tail call i32 @close(i32 noundef %5) #45   ; 0 uses
  %i.bf = icmp samesign ugt i32 %i.ax, 4
  br i1 %i.bf, label %.lr.ph.preheader.i, label %.thread41.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.bg = add i64 %i.aw, 4294967292
  %wide.trip.count.i = and i64 %i.bg, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %.01924.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.2.i, %bb.x ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i ; 5 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 10
  br i1 %i.bj, label %bb.t, label %bb.x

bb.t:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 99
  br i1 %i.bm, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, 112
  br i1 %i.bp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp eq i8 %i.br, 117
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bu = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bt, ptr noundef null, i32 noundef 10) #45, !inline_history !0
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, 1
  %spec.select.i = call i32 @llvm.smax.i32(i32 %.01924.i, i32 %i.bw)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %.lr.ph.i
  %.2.i = phi i32 [ %spec.select.i, %bb.w ], [ %.01924.i, %bb.v ], [ %.01924.i, %bb.u ], [ %.01924.i, %bb.t ], [ %.01924.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread41.sink.split, label %.lr.ph.i, !llvm.loop !174

.thread41.sink.split:                             ; preds = %bb.x, %bb.s, %bb.r, %bb.p
  %.2.i.lcssa.sink = phi i32 [ 1, %bb.s ], [ 1, %bb.p ], [ 1, %bb.r ], [ %.2.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  store i32 %.2.i.lcssa.sink, ptr @GC_nprocs, align 4
  br label %.thread41

.thread41:                                        ; preds = %.thread41.sink.split, %bb.o
  %i.bx = phi i32 [ %i.as, %bb.o ], [ %.2.i.lcssa.sink, %.thread41.sink.split ]
  %i.by = call ptr @getenv(ptr noundef nonnull @.str.323) #45 ; 2 uses
  %.not28 = icmp eq ptr %i.by, null
  br i1 %.not28, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.thread41
  %i.bz = call i64 @__isoc23_strtol(ptr noundef nonnull %i.by, ptr noundef null, i32 noundef 10) #45, !inline_history !0 ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = add i32 %i.ca, -17
  %or.cond = icmp ult i32 %i.cb, -16
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cc = load ptr, ptr @GC_current_warn_proc, align 8
  %sext = shl i64 %i.bz, 32
  %i.cd = ashr exact i64 %sext, 32
  call void %i.cc(ptr noundef nonnull @.str.324, i64 noundef %i.cd) #45
  br label %bb.ac

bb.aa:                                            ; preds = %.thread41
  %i.ce = load i32, ptr @required_markers_cnt, align 4 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cg = call i32 @llvm.umin.i32(i32 %i.bx, i32 16)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.ab, %bb.aa
  %.0 = phi i32 [ 16, %bb.z ], [ %i.ca, %bb.y ], [ %i.cg, %bb.ab ], [ %i.ce, %bb.aa ]
  %i.ch = add nsw i32 %.0, -1
  store i32 %i.ch, ptr @available_markers_m1, align 4
  %i.ci = load i32, ptr @GC_print_stats, align 4
  %.not29 = icmp eq i32 %i.ci, 0
  br i1 %.not29, label %bb.ae, label %bb.ad, !prof !47

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load i32, ptr @GC_nprocs, align 4
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.325, i32 noundef %i.cj)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %i.ck = load i32, ptr @GC_sig_suspend, align 4  ; 2 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 30, ptr @GC_sig_suspend, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cm = phi i32 [ 30, %bb.af ], [ %i.ck, %bb.ae ]
  %i.cn = load i32, ptr @GC_sig_thr_restart, align 4 ; 2 uses
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 24, ptr @GC_sig_thr_restart, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cp = phi i32 [ 24, %bb.ah ], [ %i.cn, %bb.ag ]
  %i.cq = icmp eq i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cr = load ptr, ptr @GC_on_abort, align 8
  call void %i.cr(ptr noundef nonnull @.str.330) #45, !inline_history !175
  call void @abort() #48
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cs = call i32 @sem_init(ptr noundef nonnull @GC_suspend_ack_sem, i32 noundef 0, i32 noundef 0) #45
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = load ptr, ptr @GC_on_abort, align 8
  call void %i.ct(ptr noundef nonnull @.str.127) #45, !inline_history !175
  call void @abort() #48
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  store i32 268435460, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cw = call i32 @sigfillset(ptr noundef nonnull %i.cv) #45
  %.not3.i = icmp eq i32 %i.cw, 0
  br i1 %.not3.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = load ptr, ptr @GC_on_abort, align 8
  call void %i.cx(ptr noundef nonnull @.str.308) #45, !inline_history !175
  call void @abort() #48
  unreachable

bb.ao:                                            ; preds = %bb.am
  call fastcc void @GC_remove_allowed_signals(ptr noundef nonnull %i.cv)
  store ptr @GC_suspend_handler, ptr %2, align 8
  %i.cy = load i32, ptr @GC_sig_suspend, align 4
  %i.cz = call i32 @sigaction(i32 noundef %i.cy, ptr noundef nonnull %2, ptr noundef null) #45
  %.not4.i = icmp eq i32 %i.cz, 0
  br i1 %.not4.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.da = load ptr, ptr @GC_on_abort, align 8
  call void %i.da(ptr noundef nonnull @.str.331) #45, !inline_history !175
  call void @abort() #48
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.db = load i32, ptr %i.cu, align 8
  %i.dc = and i32 %i.db, -5
  store i32 %i.dc, ptr %i.cu, align 8
  store ptr @GC_restart_handler, ptr %2, align 8
  %i.dd = load i32, ptr @GC_sig_thr_restart, align 4
  %i.de = call i32 @sigaction(i32 noundef %i.dd, ptr noundef nonnull %2, ptr noundef null) #45
  %.not5.i = icmp eq i32 %i.de, 0
  br i1 %.not5.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.df = load ptr, ptr @GC_on_abort, align 8
  call void %i.df(ptr noundef nonnull @.str.332) #45, !inline_history !175
  call void @abort() #48
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dg = call i32 @sigfillset(ptr noundef nonnull @suspend_handler_mask) #45
  %.not6.i = icmp eq i32 %i.dg, 0
  br i1 %.not6.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dh = load ptr, ptr @GC_on_abort, align 8
  call void %i.dh(ptr noundef nonnull @.str.308) #45, !inline_history !175
  call void @abort() #48
  unreachable

bb.au:                                            ; preds = %bb.as
  call fastcc void @GC_remove_allowed_signals(ptr noundef nonnull @suspend_handler_mask)
  %i.di = load i32, ptr @GC_sig_thr_restart, align 4
  %i.dj = call i32 @sigdelset(ptr noundef nonnull @suspend_handler_mask, i32 noundef %i.di) #45
  %.not7.i = icmp eq i32 %i.dj, 0
  br i1 %.not7.i, label %bb.aw, label %bb.av

end_hunk_5
begin_hunk_6_@GC_new_proc_inner:bb.a
  unreachable
}

; Function Attrs: nounwind uwtable
define range(i32 0, 64) i32 @GC_new_proc(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.b1 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1, label %bb.b, label %GC_lock.exit

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

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.f = load i32, ptr @GC_n_mark_procs, align 4  ; 4 uses
  %i.g = icmp ult i32 %i.f, 64
  br i1 %i.g, label %GC_new_proc_inner.exit, label %bb.g

bb.g:                                             ; preds = %GC_lock.exit
  %i.h = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.h(ptr noundef nonnull @.str.106) #45, !inline_history !60
  tail call void @abort() #48
  unreachable

GC_new_proc_inner.exit:                           ; preds = %GC_lock.exit
  %i.i = add nuw nsw i32 %i.f, 1
  store i32 %i.i, ptr @GC_n_mark_procs, align 4
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448), i64 %i.j
  store ptr %0, ptr %i.k, align 8
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GC_new_proc_inner.exit
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %GC_new_proc_inner.exit
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define ptr @GC_call_with_alloc_lock(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.b3 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b3, label %bb.b, label %GC_lock.exit

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

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.f = tail call ptr %0(ptr noundef %1) #45
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %GC_lock.exit
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %GC_lock.exit
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define ptr @GC_call_with_stack_base(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.GC_stack_base, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  store ptr %2, ptr %2, align 8
  %i.a = call ptr %0(ptr noundef nonnull %2, ptr noundef %1) #45
  %i.b = ptrtoint ptr %2 to i64
  store volatile i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 248), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @GC_do_blocking(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.blocking_data, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call fastcc void @GC_with_callee_saves_pushed(ptr noundef nonnull @GC_do_blocking_inner, ptr noundef nonnull %2)
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @GC_do_blocking_inner(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.b14 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b14, label %bb.b, label %GC_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %GC_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @GC_nprocs, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.g = tail call i64 @pthread_self() #51        ; 3 uses
  %i.h = lshr i64 %i.g, 8
  %i.i = xor i64 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i64 %i.i, 16
  %i.k = xor i64 %i.j, %i.i
  %i.l = and i64 %i.k, 255
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %i.l
  %i.n = load volatile ptr, ptr %i.m, align 8     ; 2 uses
  %.not9.i = icmp eq ptr %i.n, null
  br i1 %.not9.i, label %GC_lookup_thread.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_lock.exit, %bb.g
  %.010.i = phi ptr [ %i.q, %bb.g ], [ %i.n, %GC_lock.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %.not8.i = icmp eq i64 %i.p, %i.g
  br i1 %.not8.i, label %GC_lookup_thread.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.010.i, align 8           ; 2 uses
  %.not.i18 = icmp eq ptr %i.q, null
  br i1 %.not.i18, label %GC_lookup_thread.exit, label %.lr.ph.i, !llvm.loop !29

GC_lookup_thread.exit:                            ; preds = %.lr.ph.i, %bb.g, %GC_lock.exit
  %.0.lcssa.i = phi ptr [ null, %GC_lock.exit ], [ %.010.i, %.lr.ph.i ], [ null, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.s = ptrtoint ptr %i.r to i64
  store volatile i64 %i.s, ptr %i.a, align 8
  %.0..0..0..0..0..0..0..0..i.i = load volatile i64, ptr %i.a, align 8
  %i.t = inttoptr i64 %.0..0..0..0..0..0..0..0..i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 41 ; 2 uses
  store i8 1, ptr %i.v, align 1
  %.b13 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b13, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GC_lookup_thread.exit
  %2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %GC_lookup_thread.exit
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %3 = tail call ptr %i.w(ptr noundef %i.y) #45
  store ptr %3, ptr %i.x, align 8
  %.b12 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b12, label %bb.j, label %GC_lock.exit20

bb.j:                                             ; preds = %bb.i
  %4 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not15 = icmp eq i32 %4, 0
  br i1 %.not15, label %GC_lock.exit20, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load i32, ptr @GC_nprocs, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i19 = icmp eq i8 %i.ab, 0
  br i1 %.not.i19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %5 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit20

bb.n:                                             ; preds = %bb.l
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit20

GC_lock.exit20:                                   ; preds = %bb.n, %bb.m, %bb.j, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 24 ; 3 uses
  %i.ad = load volatile i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 1
  %.not1621 = icmp eq i64 %i.ae, 0
  br i1 %.not1621, label %._crit_edge, label %.lr.ph, !prof !63

.lr.ph:                                           ; preds = %GC_lock.exit20, %bb.s
  %i.af = load volatile i64, ptr %i.ac, align 8
  %.b11 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b11, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %6 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  tail call fastcc void @GC_suspend_self_inner(ptr noundef nonnull %.0.lcssa.i, i64 noundef %i.af)
  %.b10 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b10, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %7 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not17 = icmp eq i32 %7, 0
  br i1 %.not17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @GC_lock()
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.ag = load volatile i64, ptr %i.ac, align 8
  %i.ah = and i64 %i.ag, 1
  %.not16 = icmp eq i64 %i.ah, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !prof !64, !llvm.loop !203

._crit_edge:                                      ; preds = %bb.s, %GC_lock.exit20
  store i8 0, ptr %i.v, align 1
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %8 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_dump() local_unnamed_addr #2 {
bb.a:
  %.b1 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1, label %bb.b, label %GC_lock.exit

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
  tail call void @GC_dump_named(ptr noundef null)
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %GC_lock.exit
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %GC_lock.exit, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @GC_get_memory_use() local_unnamed_addr #2 {
bb.a:
  %.b1 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1, label %bb.b, label %GC_lock.exit

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

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %.021.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 104), align 8 ; 2 uses
  %.not22.i = icmp eq ptr %.021.i, null
  br i1 %.not22.i, label %GC_apply_to_all_blocks.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %GC_lock.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.p
  %.lcssa4 = phi i64 [ %i.ao, %bb.p ], [ 0, %.preheader.i.preheader ]
  %.023.i = phi ptr [ %.0.i, %bb.p ], [ %.021.i, %.preheader.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.023.i, i64 8208
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.preheader.i
  %i.h = phi i64 [ %.lcssa4, %.preheader.i ], [ %i.ao, %bb.o ] ; 4 uses
  %.01720.i = phi i64 [ 1023, %.preheader.i ], [ %.1.i, %bb.o ] ; 6 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.023.i, i64 %.01720.i
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = icmp ult ptr %i.j, inttoptr (i64 4096 to ptr)
  br i1 %i.l, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 4
  %.not19.i = icmp eq i8 %i.o, 0
  br i1 %.not19.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = load i64, ptr %i.g, align 8
  %i.q = lshr i64 %.01720.i, 10
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = and i64 %i.r, 4398046511103
  %i.t = and i64 %i.r, 2047
  %i.u = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.t
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.in.i.i = phi ptr [ %i.u, %bb.i ], [ %i.aa, %bb.j ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp ne i64 %i.w, %i.s
  %i.y = icmp ne ptr %.0.i.i, %i.f
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.z, label %bb.j, label %block_add_size.exit, !llvm.loop !2

block_add_size.exit:                              ; preds = %bb.j
  %i.ab = and i64 %.01720.i, 1023
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, 4095
  %i.ah = and i64 %i.ag, -4096
  %i.ai = add i64 %i.ah, %i.h
  br label %bb.k

bb.k:                                             ; preds = %block_add_size.exit, %bb.h
  %i.aj = phi i64 [ %i.ai, %block_add_size.exit ], [ %i.h, %bb.h ]
  %i.ak = add nsw i64 %.01720.i, -1
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.al = icmp eq ptr %i.j, null
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i64 %.01720.i, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.an = sub nsw i64 %.01720.i, %i.k
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ao = phi i64 [ %i.h, %bb.m ], [ %i.h, %bb.n ], [ %i.aj, %bb.k ] ; 3 uses
  %.1.i = phi i64 [ %i.am, %bb.m ], [ %i.an, %bb.n ], [ %i.ak, %bb.k ] ; 2 uses
  %i.ap = icmp sgt i64 %.1.i, -1
  br i1 %i.ap, label %bb.g, label %bb.p, !llvm.loop !3

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %.023.i, i64 8192
  %.0.i = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i2 = icmp eq ptr %.0.i, null
  br i1 %.not.i2, label %GC_apply_to_all_blocks.exit, label %.preheader.i, !llvm.loop !4

GC_apply_to_all_blocks.exit:                      ; preds = %bb.p, %GC_lock.exit
  %.0 = phi i64 [ 0, %GC_lock.exit ], [ %i.ao, %bb.p ]
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.q, label %bb.r

bb.q:                                             ; preds = %GC_apply_to_all_blocks.exit
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %GC_apply_to_all_blocks.exit
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_get_gc_no() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @GC_gc_no, align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GC_get_parallel() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @GC_parallel, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @GC_alloc_lock() local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.b, label %GC_lock.exit
end_hunk_6
begin_hunk_7_@GC_header_cache_miss:bb.a
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
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.028.in = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.028 = load ptr, ptr %.028.in, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.028, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.028, %i.e                  ; 2 uses
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.028, i64 8216
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !36

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  br i1 %i.i, label %.preheader.preheader, label %.preheader42

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
  %i.af = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 216) monotonic, align 8
  %i.ag = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = icmp ugt i64 %i.af, %i.ah               ; 2 uses
  br i1 %.not30, label %bb.p, label %bb.m

bb.m:                                             ; preds = %GC_wait_marker.exit
  br i1 %i.ai, label %bb.n, label %.critedge.loopexit

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call i32 @pthread_cond_wait(ptr noundef nonnull @mark_cv, ptr noundef nonnull @mark_mutex) #45
  %.not.i35 = icmp eq i32 %i.aj, 0
  br i1 %.not.i35, label %GC_wait_marker.exit, label %bb.o, !llvm.loop !290

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ak(ptr noundef nonnull @.str.149) #45, !inline_history !291
  tail call void @abort() #48
  unreachable

bb.p:                                             ; preds = %GC_wait_marker.exit
  br i1 %i.ai, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr @GC_helper_count, align 4
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr @GC_helper_count, align 4
  %.not33 = icmp eq i32 %i.am, 0
  %i.an = load i32, ptr @GC_print_stats, align 4
  %.not31 = icmp eq i32 %i.an, 2
  br i1 %.not31, label %bb.r, label %bb.s, !prof !48

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.147, i32 noundef %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  br i1 %.not33, label %bb.t, label %bb.aw

bb.t:                                             ; preds = %bb.s
  %i.ao = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @mark_cv) #45
  %.not.i36 = icmp eq i32 %i.ao, 0
  br i1 %.not.i36, label %bb.aw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ap(ptr noundef nonnull @.str.145) #45, !inline_history !289
  tail call void @abort() #48
  unreachable

.critedge.loopexit:                               ; preds = %bb.m
  %i.aq = add i32 %i.ae, 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.p
  %i.ar = phi i32 [ %i.aq, %.critedge.loopexit ], [ 1, %bb.p ]
  store i32 %i.ar, ptr @GC_active_count, align 4
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i38 = icmp eq i32 %i.as, 0
  br i1 %.not.i38, label %GC_release_mark_lock.exit.backedge, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.at = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.at(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

bb.w:                                             ; preds = %bb.i
  %i.au = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #45
  %.not.i40 = icmp eq i32 %i.au, 0
  br i1 %.not.i40, label %GC_release_mark_lock.exit41, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.av(ptr noundef nonnull @.str.347) #45, !inline_history !19
  tail call void @abort() #48
  unreachable

bb.y:                                             ; preds = %bb.h
  %i.aw = inttoptr i64 %i.r to ptr
  %i.ax = sub nuw i64 %i.r, %.pre-phi
  %i.ay = ashr exact i64 %i.ax, 4
  %i.az = add nsw i64 %i.ay, 1
  br label %GC_release_mark_lock.exit41

GC_release_mark_lock.exit41:                      ; preds = %bb.w, %bb.y
  %.024 = phi ptr [ %i.aw, %bb.y ], [ %i.t, %bb.w ] ; 2 uses
  %.023 = phi i64 [ %i.az, %bb.y ], [ %i.x, %bb.w ]
  %i.ba = icmp ult i64 %.023, 10
  %spec.store.select = select i1 %i.ba, i32 1, i32 5
  %.not31.i = icmp ugt ptr %.1, %.024
  br i1 %.not31.i, label %GC_steal_mark_stack.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_release_mark_lock.exit41, %bb.ab
  %.029.i = phi ptr [ %i.bm, %bb.ab ], [ %.1, %GC_release_mark_lock.exit41 ] ; 3 uses
  %.02328.i = phi ptr [ %.1.i, %bb.ab ], [ %i.g, %GC_release_mark_lock.exit41 ] ; 3 uses
  %.02427.i = phi i32 [ %.125.i, %bb.ab ], [ 0, %GC_release_mark_lock.exit41 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 4 uses
  %.not.i42 = icmp eq i64 %i.bc, 0
  br i1 %.not.i42, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
end_hunk_7
begin_hunk_8_@GC_make_disappearing_links_disappear:bb.a
  %i.cl = lshr i64 %i.ck, 22                      ; 2 uses
  %i.cm = and i64 %i.cl, 2047
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cm
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in.i.i45 = phi ptr [ %i.cn, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i46 = load ptr, ptr %.0.in.i.i45, align 8 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 8208
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = icmp ne i64 %i.cq, %i.cl
  %i.cs = icmp ne ptr %.0.i.i46, %i.co
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 8216
  br i1 %i.ct, label %bb.l, label %GC_is_marked.exit48, !llvm.loop !2

GC_is_marked.exit48:                              ; preds = %bb.l
  %i.cv = lshr i64 %i.ck, 12
  %i.cw = and i64 %i.cv, 1023
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i46, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = lshr i64 %i.ck, 4
  %i.da = and i64 %i.cz, 255
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  %i.dd = load i8, ptr %i.dc, align 1
  %.not40 = icmp eq i8 %i.dd, 0
  br i1 %.not40, label %bb.m, label %.thread, !prof !48

bb.m:                                             ; preds = %GC_is_marked.exit48
  %i.de = load i64, ptr %.03064, align 8
  %i.df = xor i64 %i.de, -1
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr null, ptr %i.dg, align 8
  br label %bb.n

bb.n:                                             ; preds = %GC_is_marked.exit, %bb.m
  %i.dh = icmp eq ptr %.065, null
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = load ptr, ptr %0, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.03666
  store ptr %i.k, ptr %i.dj, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.065, i64 8
  store ptr %i.k, ptr %i.dk, align 8
  br i1 %.b38, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dl = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.dm = lshr i64 %i.dl, 12
  %i.dn = lshr i64 %i.dl, 18
  %i.do = and i64 %i.dn, 4095
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.do
  %i.dq = and i64 %i.dm, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = atomicrmw volatile or ptr %i.dp, i64 %i.dr monotonic, align 8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.234 = phi i32 [ 1, %bb.o ], [ %.13363, %bb.q ], [ %.13363, %bb.p ]
  %i.dt = ptrtoint ptr %.03064 to i64             ; 3 uses
  %i.du = lshr i64 %i.dt, 22                      ; 2 uses
  %i.dv = and i64 %i.du, 2047
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.dv
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.in.i.i49 = phi ptr [ %i.dw, %bb.r ], [ %i.ed, %bb.s ]
  %.0.i.i50 = load ptr, ptr %.0.in.i.i49, align 8 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i50, i64 8208
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = icmp ne i64 %i.dz, %i.du
  %i.eb = icmp ne ptr %.0.i.i50, %i.dx
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i50, i64 8216
  br i1 %i.ec, label %bb.s, label %GC_find_header.exit.i51, !llvm.loop !2

GC_find_header.exit.i51:                          ; preds = %bb.s
  %i.ee = lshr i64 %i.dt, 12
  %i.ef = and i64 %i.ee, 1023
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i50, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = lshr i64 %i.dt, 4
  %i.ej = and i64 %i.ei, 255
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej ; 2 uses
  %i.em = load i8, ptr %i.el, align 1
  %.not.i52 = icmp eq i8 %i.em, 0
  br i1 %.not.i52, label %GC_clear_mark_bit.exit, label %bb.t

bb.t:                                             ; preds = %GC_find_header.exit.i51
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 56 ; 2 uses
  %i.eo = load volatile i64, ptr %i.en, align 8
  store i8 0, ptr %i.el, align 1
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = load i32, ptr @GC_parallel, align 4
  %i.es = icmp ne i32 %i.er, 0
  %or.cond.i = select i1 %i.eq, i1 %i.es, i1 false
  br i1 %or.cond.i, label %GC_clear_mark_bit.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store volatile i64 %i.ep, ptr %i.en, align 8
  br label %GC_clear_mark_bit.exit

GC_clear_mark_bit.exit:                           ; preds = %GC_find_header.exit.i51, %bb.t, %bb.u
  %i.et = load i64, ptr %i.f, align 8
  %i.eu = add i64 %i.et, -1
  store i64 %i.eu, ptr %i.f, align 8
  br label %.thread

.thread:                                          ; preds = %bb.h, %._crit_edge.i, %bb.f, %bb.c, %GC_is_marked.exit, %GC_is_marked.exit48, %GC_clear_mark_bit.exit
  %.335 = phi i32 [ %.234, %GC_clear_mark_bit.exit ], [ %.13363, %GC_is_marked.exit48 ], [ %.13363, %GC_is_marked.exit ], [ %.13363, %bb.h ], [ %.13363, %bb.c ], [ %.13363, %bb.f ], [ %.13363, %._crit_edge.i ] ; 2 uses
  %.3 = phi ptr [ %.065, %GC_clear_mark_bit.exit ], [ %.03064, %GC_is_marked.exit48 ], [ %.03064, %GC_is_marked.exit ], [ %.03064, %bb.h ], [ %.03064, %bb.c ], [ %.03064, %bb.f ], [ %.03064, %._crit_edge.i ]
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !316

._crit_edge:                                      ; preds = %.thread, %bb.b
  %.133.lcssa = phi i32 [ %.03267, %bb.b ], [ %.335, %.thread ] ; 2 uses
  %i.ev = add i64 %.03666, 1                      ; 2 uses
  %.036.highbits = lshr i64 %i.ev, %i.c
  %i.ew = icmp eq i64 %.036.highbits, 0
  br i1 %i.ew, label %bb.b, label %bb.v, !llvm.loop !317

bb.v:                                             ; preds = %._crit_edge
  %i.ex = icmp ne i32 %.133.lcssa, 0
  %or.cond = select i1 %i.ex, i1 %.b38, i1 false
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ey = load ptr, ptr %0, align 8
  %i.ez = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fa = lshr i64 %i.ez, 12
  %i.fb = lshr i64 %i.ez, 18
  %i.fc = and i64 %i.fb, 4095
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.fc
  %i.fe = and i64 %i.fa, 63
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = atomicrmw volatile or ptr %i.fd, i64 %i.ff monotonic, align 8 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @GC_should_collect() unnamed_addr #22 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr @GC_should_collect.last_gc_no, align 8
  %i.c = load i64, ptr @GC_gc_no, align 8         ; 2 uses
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @GC_total_stacksize, align 8
  br label %min_bytes_allocd.exit

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @GC_stackbottom, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.g = ptrtoint ptr %i.f to i64
  store volatile i64 %i.g, ptr %i.a, align 8
  %.0..0..0..0..0..0..0..0..i.i = load volatile i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %.0..0..0..0..0..0..0..0..i.i
  br label %min_bytes_allocd.exit

min_bytes_allocd.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.i, %bb.d ]
  %i.j = load i64, ptr @GC_root_size, align 8
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  %i.m = lshr i64 %i.l, 2
  %reass.add.i = add i64 %i.k, %.0.i
  %reass.mul.i = shl i64 %reass.add.i, 1
  %i.n = add i64 %i.m, %i.j
  %i.o = add i64 %i.n, %reass.mul.i
  %i.p = load i64, ptr @GC_free_space_divisor, align 8
  %i.q = udiv i64 %i.o, %i.p
  %i.r = load i32, ptr @GC_incremental, align 4
  %.not.i = icmp ne i32 %i.r, 0
  %i.s = zext i1 %.not.i to i64
  %spec.select.i = lshr i64 %i.q, %i.s
  %i.t = load i64, ptr @min_bytes_allocd_minimum, align 8
  %0 = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.t)
  store i64 %0, ptr @GC_should_collect.last_min_bytes_allocd, align 8
  store i64 %i.c, ptr @GC_should_collect.last_gc_no, align 8
  br label %bb.e

bb.e:                                             ; preds = %min_bytes_allocd.exit, %bb.a
  %.b = load i1, ptr @GC_should_start_incremental_collection, align 4
  br i1 %.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i1 false, ptr @GC_should_start_incremental_collection, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = load i32, ptr @GC_disable_automatic_collection, align 4
  %.not1 = icmp eq i32 %i.u, 0
  br i1 %.not1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr @GC_non_gc_bytes, align 8
  %i.w = load i64, ptr @GC_non_gc_bytes_at_gc, align 8
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8 ; 3 uses
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 72), align 8
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 96), align 8
  %i.ab = sub i64 %i.w, %i.v
  %i.ac = add i64 %i.ab, %i.x
  %i.ad = add i64 %i.ac, %i.y
  %.neg.i = sub i64 %i.ad, %i.z
  %i.ae = add i64 %.neg.i, %i.aa
  %spec.select.i2 = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.x)
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  %i.ag = add i64 %spec.select.i2, %i.af
  %i.ah = lshr i64 %i.x, 3
  %.06.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = load i64, ptr @GC_should_collect.last_min_bytes_allocd, align 8
  %i.aj = icmp uge i64 %.06.i, %i.ai
  %i.ak = load i64, ptr @GC_arrays, align 8
  %i.al = load i64, ptr @GC_collect_at_heapsize, align 8
  %i.am = icmp uge i64 %i.ak, %i.al
  %i.an = select i1 %i.aj, i1 true, i1 %i.am
  %i.ao = zext i1 %i.an to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ %i.ao, %bb.h ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_promote_black_lists() unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @GC_old_normal_bl, align 8 ; 2 uses
  %i.b = load ptr, ptr @GC_old_stack_bl, align 8  ; 2 uses
  %i.c = load ptr, ptr @GC_incomplete_normal_bl, align 8
  store ptr %i.c, ptr @GC_old_normal_bl, align 8
  %i.d = load ptr, ptr @GC_incomplete_stack_bl, align 8 ; 2 uses
  store ptr %i.d, ptr @GC_old_stack_bl, align 8
  %i.e = load i32, ptr @GC_all_interior_pointers, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) %i.b, i8 0, i64 32768, i1 false)
  store ptr %i.a, ptr @GC_incomplete_normal_bl, align 8
  store ptr %i.b, ptr @GC_incomplete_stack_bl, align 8
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8 ; 2 uses
  %.not12.i = icmp eq i64 %i.f, 0
  br i1 %.not12.i, label %total_stack_black_listed.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8
  br label %bb.d

bb.d:                                             ; preds = %GC_number_stack_black_listed.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %GC_number_stack_black_listed.exit.i ] ; 2 uses
  %.0810.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %GC_number_stack_black_listed.exit.i ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %.idx.i = and i64 %i.k, -4096                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %.not.i = icmp eq i64 %.idx.i, 0
  br i1 %.not.i, label %GC_number_stack_black_listed.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.0810.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.m = ptrtoint ptr %.0810.i.i to i64           ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = lshr i64 %i.m, 18
  %i.p = and i64 %i.o, 4095
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.n, 63
  %i.t = lshr i64 %i.r, %i.s
  %i.u = and i64 %i.t, 1
  %spec.select.i.i = add i64 %i.u, %.011.i.i      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 4096 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.l
  br i1 %i.w, label %.lr.ph.i.i, label %GC_number_stack_black_listed.exit.i, !llvm.loop !318

GC_number_stack_black_listed.exit.i:              ; preds = %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.x = add i64 %.0.lcssa.i.i, %.0810.i          ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.y = and i64 %indvars.iv.next.i, 4294967295
  %i.z = icmp ugt i64 %i.f, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !319

._crit_edge.loopexit.i:                           ; preds = %GC_number_stack_black_listed.exit.i
  %i.aa = shl i64 %i.x, 12
  br label %total_stack_black_listed.exit

total_stack_black_listed.exit:                    ; preds = %bb.c, %._crit_edge.loopexit.i
  %.08.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.aa, %._crit_edge.loopexit.i ] ; 3 uses
  store i64 %.08.lcssa.i, ptr @GC_total_stack_black_listed, align 8
  %i.ab = load i32, ptr @GC_print_stats, align 4
  %.not4 = icmp eq i32 %i.ab, 2
  br i1 %.not4, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %total_stack_black_listed.exit
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.185, i64 noundef %.08.lcssa.i)
  %.pr = load i64, ptr @GC_total_stack_black_listed, align 8
  br label %bb.f

bb.f:                                             ; preds = %total_stack_black_listed.exit, %bb.e
  %i.ac = phi i64 [ %.08.lcssa.i, %total_stack_black_listed.exit ], [ %.pr, %bb.e ] ; 2 uses
  %.not5 = icmp eq i64 %i.ac, 0
  br i1 %.not5, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr @GC_arrays, align 8
  %i.ae = udiv i64 %i.ad, %i.ac
  %i.af = shl i64 %i.ae, 12                       ; 2 uses
  store i64 %i.af, ptr @GC_black_list_spacing, align 8
  br label %bb.h

thread-pre-split:                                 ; preds = %bb.f
  %.pr6 = load i64, ptr @GC_black_list_spacing, align 8
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.g
  %.pr8 = phi i64 [ %.pr6, %thread-pre-split ], [ %i.af, %bb.g ] ; 2 uses
  %i.ag = icmp ult i64 %.pr8, 12288
  br i1 %i.ag, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ugt i64 %.pr8, 8388608
  br i1 %i.ah, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h
  %.sink = phi i64 [ 12288, %bb.h ], [ 8388608, %bb.i ]
  store i64 %.sink, ptr @GC_black_list_spacing, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_reclaim_all(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr @GC_print_stats, align 4
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #45
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @GC_on_abort, align 8
  call void %i.e(ptr noundef nonnull @.str.93) #45
  call void @abort() #48
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr @GC_n_kinds, align 4       ; 2 uses
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.d
  %.not24 = icmp eq ptr %0, null
  %.not26 = icmp eq i32 %1, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph32, %.loopexit27
  %i.g = phi i32 [ %i.f, %.lr.ph32 ], [ %i.bm, %.loopexit27 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %.loopexit27 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit27, label %.preheader

.preheader:                                       ; preds = %bb.e, %._crit_edge
  %.01929 = phi i64 [ %i.bl, %._crit_edge ], [ 1, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01929 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.m, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.n = phi ptr [ %i.bk, %bb.l ], [ %i.m, %.preheader ] ; 2 uses
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = call i32 %0() #45
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = lshr i64 %i.p, 22                        ; 3 uses
  %i.r = and i64 %i.q, 2047
  %i.s = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.r ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.in.i = phi ptr [ %i.s, %bb.g ], [ %i.z, %bb.h ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.v = load i64, ptr %i.u, align 8
end_hunk_8
