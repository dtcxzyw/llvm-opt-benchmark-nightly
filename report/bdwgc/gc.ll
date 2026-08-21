Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_bl_init:bb.a
  %i.p = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.p(ptr noundef nonnull @.str.153, i64 noundef 32768) #45, !inline_history !147
  %i.q = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.r = sub nsw i64 0, %i.q                      ; 2 uses
  %i.s = icmp ugt i64 %i.r, 32768
  %i.t = add i64 %i.q, 32767
  %i.u = select i1 %i.s, i64 %i.t, i64 -1, !prof !6
  %i.v = and i64 %i.u, %i.r                       ; 2 uses
  %i.w = tail call ptr @GC_unix_get_mem(i64 noundef %i.v) ; 2 uses
  %.not29.i = icmp eq ptr %i.w, null
  br i1 %.not29.i, label %GC_scratch_alloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %GC_scratch_alloc.exit

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.aa = add i64 %i.z, %i.m
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not.i = icmp ult i64 %i.m, 32768
  br i1 %.not.i, label %.lr.ph.split.i, label %._crit_edge.i

GC_scratch_alloc.exit:                            ; preds = %._crit_edge.i, %bb.d, %bb.e
  %.026.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.w, %bb.e ], [ null, %bb.d ]
  store ptr %.026.i, ptr @GC_old_stack_bl, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8 ; 2 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not33.i2 = icmp ult i64 %i.ag, 32768
  br i1 %.not33.i2, label %.lr.ph.split.i7, label %._crit_edge.i3

._crit_edge.i3:                                   ; preds = %bb.i, %GC_scratch_alloc.exit
  %.0.lcssa.i4 = phi ptr [ %i.ac, %GC_scratch_alloc.exit ], [ %i.ao, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i4, i64 32768
  store ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  br label %GC_scratch_alloc.exit11

.lr.ph.split.i7:                                  ; preds = %GC_scratch_alloc.exit, %bb.i
  %i.ai = load i64, ptr @GC_page_size, align 8    ; 3 uses
  %notsub.i8 = add nsw i64 %i.ai, -1
  %i.aj = icmp ult i64 %notsub.i8, -65537
  %i.ak = add nsw i64 %i.ai, 65535
  %i.al = select i1 %i.aj, i64 %i.ak, i64 -1, !prof !6
  %i.am = sub i64 0, %i.ai
  %i.an = and i64 %i.al, %i.am                    ; 4 uses
  %i.ao = tail call ptr @GC_unix_get_mem(i64 noundef %i.an) ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %.lr.ph.split.i7
  %i.aq = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.aq(ptr noundef nonnull @.str.153, i64 noundef 32768) #45, !inline_history !147
  %i.ar = load i64, ptr @GC_page_size, align 8    ; 2 uses
  %i.as = sub nsw i64 0, %i.ar                    ; 2 uses
  %i.at = icmp ugt i64 %i.as, 32768
  %i.au = add i64 %i.ar, 32767
  %i.av = select i1 %i.at, i64 %i.au, i64 -1, !prof !6
  %i.aw = and i64 %i.av, %i.as                    ; 2 uses
  %i.ax = tail call ptr @GC_unix_get_mem(i64 noundef %i.aw) ; 2 uses
  %.not29.i10 = icmp eq ptr %i.ax, null
  br i1 %.not29.i10, label %GC_scratch_alloc.exit11.thread, label %bb.h

GC_scratch_alloc.exit11.thread:                   ; preds = %bb.g
  store ptr null, ptr @GC_incomplete_stack_bl, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.az = add i64 %i.ay, %i.aw
  store i64 %i.az, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %GC_scratch_alloc.exit11

bb.i:                                             ; preds = %.lr.ph.split.i7
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.bb = add i64 %i.ba, %i.an
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not.i9 = icmp ult i64 %i.an, 32768
  br i1 %.not.i9, label %.lr.ph.split.i7, label %._crit_edge.i3

GC_scratch_alloc.exit11:                          ; preds = %._crit_edge.i3, %bb.h
  %.026.i5 = phi ptr [ %.0.lcssa.i4, %._crit_edge.i3 ], [ %i.ax, %bb.h ] ; 3 uses
  store ptr %.026.i5, ptr @GC_incomplete_stack_bl, align 8
  %i.bd = load ptr, ptr @GC_old_stack_bl, align 8 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  %i.bf = icmp eq ptr %.026.i5, null
  %or.cond = or i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %GC_scratch_alloc.exit11.thread, %GC_scratch_alloc.exit11
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.233)
  %i.bg = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bg(ptr noundef null) #45
  tail call void @exit(i32 noundef 1) #49
  unreachable

bb.k:                                             ; preds = %GC_scratch_alloc.exit11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) %i.bd, i8 0, i64 32768, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) %.026.i5, i8 0, i64 32768, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @GC_parse_mem_size_arg(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.c = call i64 @__isoc23_strtoul(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 10) #45 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not13 = icmp eq i8 %i.e, 0
  br i1 %.not13, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %.not14 = icmp eq i8 %i.g, 0
  br i1 %.not14, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  switch i8 %i.e, label %.sink.split [
    i8 75, label %bb.e
    i8 107, label %bb.e
    i8 77, label %bb.f
    i8 109, label %bb.f
    i8 71, label %bb.g
    i8 103, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.h = shl i64 %i.c, 10
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.i = shl i64 %i.c, 20
  br label %.sink.split

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
  %i.h = select i1 %i.f, i64 %i.g, i64 1152921504606846975, !prof !6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.06
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add nuw nsw i64 %.06, 1                  ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.d
  %.reass.1 = add i64 %i.j, %invariant.op
  %i.l = lshr i64 %.reass.1, 4
  %i.m = select i1 %i.k, i64 %i.l, i64 1152921504606846975, !prof !6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %i.j
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.06, 2                  ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !156

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
  %i.r = select i1 %i.p, i64 %i.q, i64 1152921504606846975, !prof !6
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
  br i1 %.b17.i, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  store i1 true, ptr @GC_new_thread.first_thread_used, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef 904, i32 noundef 1), !inline_history !157 ; 2 uses
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
  %or.cond.i = select i1 %i.t, i1 %.b.i, i1 false, !prof !12
  br i1 %or.cond.i, label %bb.k, label %bb.l, !prof !12

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
  %i.as = tail call ptr @getenv(ptr noundef nonnull @.str.321) #45 ; 2 uses
  store i32 -1, ptr @GC_nprocs, align 4
  %.not27 = icmp eq ptr %i.as, null
  br i1 %.not27, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.as, ptr noundef null, i32 noundef 10) #45, !inline_history !8
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  store i32 %i.au, ptr @GC_nprocs, align 4
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %.thread, label %.thread41

.thread:                                          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.aw = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.327, i32 noundef 0) #45 ; 4 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  %i.ay = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.ay(ptr noundef nonnull @.str.328, i64 noundef 0) #45, !inline_history !158
  br label %.thread41.sink.split

bb.q:                                             ; preds = %.thread
  %i.az = call i64 @read(i32 noundef %i.aw, ptr noundef nonnull %i.b, i64 noundef 1700) #45 ; 3 uses
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr @GC_current_warn_proc, align 8
  %i.bd = tail call ptr @__errno_location() #51
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sext i32 %i.be to i64
  tail call void %i.bc(ptr noundef nonnull @.str.329, i64 noundef %i.bf) #45, !inline_history !158
  %i.bg = tail call i32 @close(i32 noundef %i.aw) #45 ; 0 uses
  br label %.thread41.sink.split

bb.s:                                             ; preds = %bb.q
  %i.bh = and i64 %i.az, 2147483647
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bh
  store i8 0, ptr %i.bi, align 1
  %i.bj = tail call i32 @close(i32 noundef %i.aw) #45 ; 0 uses
  %i.bk = icmp samesign ugt i32 %i.ba, 4
  br i1 %i.bk, label %.lr.ph.preheader.i, label %.thread41.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.bl = add i64 %i.az, 4294967292
  %wide.trip.count.i = and i64 %i.bl, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %.01924.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.2.i, %bb.x ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i ; 5 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 10
end_hunk_0
begin_hunk_1_@GC_typed_mark_proc:bb.a
bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = load i32, ptr @GC_print_stats, align 4
  %.not1.i = icmp eq i32 %i.ac, 0
  br i1 %.not1.i, label %GC_signal_mark_stack_overflow.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.ad)
  br label %GC_signal_mark_stack_overflow.exit

GC_signal_mark_stack_overflow.exit:               ; preds = %bb.k, %bb.l
  %i.ae = getelementptr inbounds i8, ptr %.036.lcssa, i64 -8176
  br label %bb.m

bb.m:                                             ; preds = %GC_signal_mark_stack_overflow.exit, %bb.h
  %.3 = phi ptr [ %i.ae, %GC_signal_mark_stack_overflow.exit ], [ %i.aa, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.af, ptr %.3, align 8
  %i.ag = shl i64 %3, 6
  %i.ah = add i64 %i.ag, 64
  %i.ai = load i32, ptr @GC_typed_mark_proc_index, align 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = or i64 %i.ah, %i.aj
  %i.al = shl i64 %i.ak, 2
  %i.am = or disjoint i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store i64 %i.am, ptr %i.an, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.4 = phi ptr [ %.3, %bb.m ], [ %.036.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @GC_array_mark_proc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.b, label %GC_find_header.exit, !llvm.loop !13

GC_find_header.exit:                              ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -8       ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %GC_find_header.exit
  %i.w = inttoptr i64 %i.u to ptr
  %i.x = getelementptr inbounds i8, ptr %2, i64 -16
  %i.y = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef nonnull %0, ptr noundef nonnull %i.w, ptr noundef %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %1, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ab(ptr noundef nonnull @.str.228) #45
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %2
  br i1 %i.af, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f, %bb.g
  %.sink36 = phi ptr [ %1, %bb.f ], [ %1, %bb.g ], [ %i.y, %bb.c ] ; 2 uses
  %.sink34 = phi ptr [ %0, %bb.f ], [ %0, %bb.g ], [ %i.t, %bb.c ]
  %.sink = phi i64 [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ 8, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink36, i64 16 ; 2 uses
  store ptr %.sink34, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink36, i64 24
  store i64 %.sink, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %GC_find_header.exit
  %.026 = phi ptr [ %1, %GC_find_header.exit ], [ %i.ag, %.sink.split ]
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_push_complex_descriptor(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.g, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.az, %bb.g ]  ; 5 uses
  %.tr55 = phi ptr [ %1, %bb.a ], [ %i.bb, %bb.g ] ; 8 uses
  %.tr56 = phi ptr [ %2, %bb.a ], [ %i.ax, %bb.g ] ; 7 uses
  %i.a = load i64, ptr %.tr55, align 8
  switch i64 %i.a, label %bb.h [
    i64 1, label %bb.b
    i64 2, label %bb.d
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr55, i64 24
  %i.c = load i64, ptr %i.b, align 8              ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = ptrtoint ptr %3 to i64
  %i.g = ptrtoint ptr %.tr56 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %.not = icmp sgt i64 %i.i, %i.e
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.tr55, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 9 uses
  %.not80 = icmp eq i64 %i.e, 0
  br i1 %.not80, label %.loopexit, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.l = icmp ult i64 %i.e, 8
  br i1 %i.l, label %.lr.ph77.epil.preheader, label %.lr.ph77.preheader.new

.lr.ph77.preheader.new:                           ; preds = %.lr.ph77.preheader
  %unroll_iter = and i64 %i.e, -8
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader.new
  %.04675 = phi ptr [ %.tr, %.lr.ph77.preheader.new ], [ %i.aj, %.lr.ph77 ] ; 2 uses
  %.05074 = phi ptr [ %.tr56, %.lr.ph77.preheader.new ], [ %i.ah, %.lr.ph77 ] ; 16 uses
  %niter = phi i64 [ 0, %.lr.ph77.preheader.new ], [ %niter.next.7, %.lr.ph77 ]
  %i.m = getelementptr inbounds nuw i8, ptr %.05074, i64 16
  store ptr %.04675, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.05074, i64 24
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.04675, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05074, i64 32
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.05074, i64 40
  store i64 %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05074, i64 48
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.05074, i64 56
  store i64 %i.c, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.k ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05074, i64 64
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.05074, i64 72
  store i64 %i.c, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05074, i64 80
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.05074, i64 88
  store i64 %i.c, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.k ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05074, i64 96
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.05074, i64 104
  store i64 %i.c, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.k ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05074, i64 112
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.05074, i64 120
  store i64 %i.c, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.k ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05074, i64 128 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.05074, i64 136
  store i64 %i.c, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.k ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph77, !llvm.loop !346

bb.d:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.tr55, i64 8
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.al)
  %.not79 = icmp eq i64 %i.an, 0
  br i1 %.not79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.171 = phi i64 [ %i.as, %bb.e ], [ 0, %bb.d ]
  %.14770 = phi ptr [ %i.ar, %bb.e ], [ %.tr, %bb.d ] ; 2 uses
  %.15169 = phi ptr [ %i.ap, %bb.e ], [ %.tr56, %bb.d ]
  %i.ap = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef %.14770, ptr noundef %i.al, ptr noundef %.15169, ptr noundef %3) ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.14770, i64 %i.ao
  %i.as = add nuw i64 %.171, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.an
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !347

bb.f:                                             ; preds = %tailrecurse
  %i.at = getelementptr inbounds nuw i8, ptr %.tr55, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.au)
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef %.tr, ptr noundef %i.aw, ptr noundef %.tr56, ptr noundef %3) ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %tailrecurse

bb.h:                                             ; preds = %tailrecurse
  %i.bc = load ptr, ptr @GC_current_warn_proc, align 8
  %i.bd = icmp eq ptr %i.bc, inttoptr (i64 -1 to ptr)
  br i1 %i.bd, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.be(ptr noundef nonnull @.str.229) #45
  tail call void @abort() #48
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph77
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph77.epil.preheader

.lr.ph77.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.04675.epil.init = phi ptr [ %.tr, %.lr.ph77.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ]
  %.05074.epil.init = phi ptr [ %.tr56, %.lr.ph77.preheader ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph77.epil

.lr.ph77.epil:                                    ; preds = %.lr.ph77.epil, %.lr.ph77.epil.preheader
  %.04675.epil = phi ptr [ %i.bh, %.lr.ph77.epil ], [ %.04675.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %.05074.epil = phi ptr [ %i.bf, %.lr.ph77.epil ], [ %.05074.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph77.epil ], [ 0, %.lr.ph77.epil.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.05074.epil, i64 16 ; 3 uses
  store ptr %.04675.epil, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.05074.epil, i64 24
  store i64 %i.c, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.04675.epil, i64 %i.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph77.epil, !llvm.loop !348

.loopexit:                                        ; preds = %bb.f, %bb.e, %.lr.ph, %.loopexit.loopexit.unr-lcssa, %.lr.ph77.epil, %bb.d, %bb.c, %bb.h, %bb.b
  %.2 = phi ptr [ %i.bf, %.lr.ph77.epil ], [ null, %bb.h ], [ null, %bb.b ], [ null, %.lr.ph ], [ %.tr56, %bb.c ], [ %.tr56, %bb.d ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ], [ %i.ap, %bb.e ], [ null, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @GC_descr_obj_size(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %accumulator.tr = phi i64 [ 1, %bb.a ], [ %i.l, %bb.c ] ; 3 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %i.k, %bb.c ]   ; 7 uses
  %i.a = load i64, ptr %.tr, align 8
  switch i64 %i.a, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = mul i64 %i.e, %i.c
  %i.g = mul i64 %i.f, %accumulator.tr
  br label %common.ret33

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = mul i64 %i.i, %accumulator.tr
  br label %tailrecurse

common.ret33:                                     ; preds = %bb.e, %bb.b, %bb.d
  %common.ret33.op = phi i64 [ %accumulator.ret.tr, %bb.d ], [ %i.g, %bb.b ], [ 0, %bb.e ]
  ret i64 %common.ret33.op

bb.d:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.q)
  %i.s = add i64 %i.r, %i.o
  %accumulator.ret.tr = mul i64 %i.s, %accumulator.tr
  br label %common.ret33

bb.e:                                             ; preds = %tailrecurse
  %i.t = load ptr, ptr @GC_current_warn_proc, align 8
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %common.ret33, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.v(ptr noundef nonnull @.str.229) #45
  tail call void @abort() #48
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @GC_push_typed_structures_proc() #2 {
bb.a:
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448))
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @GC_make_sequence_descriptor(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @GC_malloc_kind(i64 noundef 24, i32 noundef 1) #53 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %.b = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = lshr i64 %i.d, 12
  %i.f = lshr i64 %i.d, 18
  %i.g = and i64 %i.f, 4095
  %i.h = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.g
  %i.i = and i64 %i.e, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = atomicrmw volatile or ptr %i.h, i64 %i.j monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %0) #45, !srcloc !350
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %1) #45, !srcloc !351
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #42

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal void @looping_handler(i32 noundef %0) #38 {
bb.a:
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.231, i32 noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  br label %bb.b
}

; Function Attrs: nounwind
end_hunk_1
