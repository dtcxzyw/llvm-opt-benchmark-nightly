Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_build_fl:bb.a
  %i.li = ptrtoint ptr %i.kd to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.lj, i32 1, i32 3, i32 1)
  %i.lk = ptrtoint ptr %i.lh to i64
  store i64 %i.lk, ptr %i.kd, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  store i64 %i.li, ptr %i.ll, align 8
  %i.lm = ptrtoint ptr %i.kh to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 4096
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ln, i32 1, i32 3, i32 1)
  %i.lo = ptrtoint ptr %i.ll to i64
  store i64 %i.lo, ptr %i.kh, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 2 uses
  store i64 %i.lm, ptr %i.lp, align 8
  %i.lq = ptrtoint ptr %i.kl to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 4160
  tail call void @llvm.prefetch.p0(ptr nonnull %i.lr, i32 1, i32 3, i32 1)
  %i.ls = ptrtoint ptr %i.lp to i64
  store i64 %i.ls, ptr %i.kl, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 3680 ; 2 uses
  store i64 %i.lq, ptr %i.lt, align 8
  %i.lu = ptrtoint ptr %i.kp to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 4224
  tail call void @llvm.prefetch.p0(ptr nonnull %i.lv, i32 1, i32 3, i32 1)
  %i.lw = ptrtoint ptr %i.lt to i64
  store i64 %i.lw, ptr %i.kp, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 3744 ; 2 uses
  store i64 %i.lu, ptr %i.lx, align 8
  %i.ly = ptrtoint ptr %i.kt to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 4288
  tail call void @llvm.prefetch.p0(ptr nonnull %i.lz, i32 1, i32 3, i32 1)
  %i.ma = ptrtoint ptr %i.lx to i64
  store i64 %i.ma, ptr %i.kt, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 3808 ; 2 uses
  store i64 %i.ly, ptr %i.mb, align 8
  %i.mc = ptrtoint ptr %i.kx to i64
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 4352
  tail call void @llvm.prefetch.p0(ptr nonnull %i.md, i32 1, i32 3, i32 1)
  %i.me = ptrtoint ptr %i.mb to i64
  store i64 %i.me, ptr %i.kx, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 3872 ; 2 uses
  store i64 %i.mc, ptr %i.mf, align 8
  %i.mg = ptrtoint ptr %i.lb to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 4416
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mh, i32 1, i32 3, i32 1)
  %i.mi = ptrtoint ptr %i.mf to i64
  store i64 %i.mi, ptr %i.lb, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 3936 ; 2 uses
  store i64 %i.mg, ptr %i.mj, align 8
  %i.mk = ptrtoint ptr %i.lf to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 4480
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ml, i32 1, i32 3, i32 1)
  %i.mm = ptrtoint ptr %i.mj to i64
  store i64 %i.mm, ptr %i.lf, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 2 uses
  store i64 %i.mk, ptr %i.mn, align 8
  %i.mo = ptrtoint ptr %i.lj to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 4544
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mp, i32 1, i32 3, i32 1)
  %i.mq = ptrtoint ptr %i.mn to i64
  store i64 %i.mq, ptr %i.lj, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 4064 ; 2 uses
  store i64 %i.mo, ptr %i.mr, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  br i1 %.not38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4088) %i.ms, i8 0, i64 4088, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.mt = shl i64 %1, 3                           ; 3 uses
  %i.mu = sub i64 4096, %i.mt                     ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %0, i64 %i.mu
  %.not3948 = icmp sgt i64 %i.mt, %i.mu
  br i1 %.not3948, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %.03547 = getelementptr inbounds nuw i8, ptr %0, i64 %i.mt
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03550 = phi ptr [ %.035, %.lr.ph ], [ %.03547, %.lr.ph.preheader ] ; 4 uses
  %.049 = phi ptr [ %.03550, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  store ptr %.049, ptr %.03550, align 8
  %.035 = getelementptr inbounds nuw [8 x i8], ptr %.03550, i64 %1 ; 2 uses
  %.not39 = icmp ugt ptr %.035, %i.mv
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph, %bb.p
  %.0.lcssa = phi ptr [ %0, %bb.p ], [ %.03550, %.lr.ph ]
  store ptr %3, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.m, %GC_build_fl_clear4.exit, %GC_build_fl2.exit, %GC_build_fl_clear2.exit
  %.036 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ak, %GC_build_fl_clear2.exit ], [ %i.cb, %GC_build_fl2.exit ], [ %i.cy, %GC_build_fl_clear4.exit ], [ %i.mr, %bb.m ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define noalias ptr @GC_malloc_many(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = load i32, ptr @GC_all_interior_pointers, align 4
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = sub nsw i64 -16, %i.c
  %i.e = icmp ult i64 %0, %i.d
  %i.f = add i64 %0, 15
  %i.g = add i64 %i.f, %i.c
  %i.h = and i64 %i.g, -16
  %i.i = select i1 %i.e, i64 %i.h, i64 -16, !prof !6
  call void @GC_generic_malloc_many(i64 noundef %i.i, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.j = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret ptr %i.j
}

; Function Attrs: nounwind allocsize(1) uwtable
define noalias ptr @GC_memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp ult i64 %0, 17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @GC_malloc_kind(i64 noundef %1, i32 noundef 1) #53
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = or i64 %1, %0
  %or.cond.not = icmp ult i64 %i.c, 2048
  br i1 %or.cond.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %0, 4096
  br i1 %i.d, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %.b1.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1.i, label %bb.f, label %GC_lock.exit.thread.i

GC_lock.exit.thread.i:                            ; preds = %bb.e
  %i.e = load ptr, ptr @GC_oom_fn, align 8
  br label %GC_get_oom_fn.exit

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %GC_lock.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr @GC_nprocs, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit.i

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit.i

GC_lock.exit.i:                                   ; preds = %bb.j, %bb.i, %bb.f
  %.b.pr.i = load i1, ptr @GC_need_to_lock, align 4
  %i.k = load ptr, ptr @GC_oom_fn, align 8        ; 2 uses
  br i1 %.b.pr.i, label %bb.k, label %GC_get_oom_fn.exit

bb.k:                                             ; preds = %GC_lock.exit.i
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_get_oom_fn.exit

GC_get_oom_fn.exit:                               ; preds = %GC_lock.exit.thread.i, %GC_lock.exit.i, %bb.k
  %i.m = phi ptr [ %i.e, %GC_lock.exit.thread.i ], [ %i.k, %bb.k ], [ %i.k, %GC_lock.exit.i ]
  %i.n = tail call ptr %i.m(i64 noundef 9223372036854774783) #45
  br label %bb.q

bb.l:                                             ; preds = %bb.d
  %i.o = tail call i64 @llvm.umax.i64(i64 %1, i64 4096)
  %i.p = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.o, i32 noundef 1) #53
  br label %bb.q

bb.m:                                             ; preds = %bb.c
  %i.q = add nsw i64 %0, -1
  %i.r = add nuw nsw i64 %i.q, %1
  %i.s = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.r, i32 noundef 1) #53 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = urem i64 %i.t, %0                        ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = sub nuw nsw i64 %0, %i.u                 ; 3 uses
  %i.w = load i32, ptr @GC_all_interior_pointers, align 4
  %.not26 = icmp eq i32 %i.w, 0
  br i1 %.not26, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @GC_register_displacement(i64 noundef %i.v)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.0 = phi i64 [ %i.v, %bb.n ], [ %i.v, %bb.o ], [ 0, %bb.m ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %GC_get_oom_fn.exit, %bb.b
  %.022 = phi ptr [ %i.b, %bb.b ], [ %i.n, %GC_get_oom_fn.exit ], [ %i.p, %bb.l ], [ %i.x, %bb.p ]
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @GC_posix_memalign(ptr nofree noundef nonnull writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %1, 7
  %i.b = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %.not = icmp samesign ult i64 %i.b, 2
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @GC_memalign(i64 noundef %1, i64 noundef %2) #54 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 22, %bb.a ], [ 12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noalias ptr @GC_strdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #50
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.c, i32 noundef 0) #53 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #51
  store i32 12, ptr %i.f, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %0, i64 %i.c, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.d, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias ptr @GC_strndup(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #50
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %1) ; 4 uses
  %i.b = add i64 %spec.select, 1
  %i.c = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.b, i32 noundef 0) #53 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #51
  store i32 12, ptr %i.e, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %spec.select, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %0, i64 %spec.select, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select
  store i8 0, ptr %i.f, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define noalias ptr @GC_malloc_stubborn(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @GC_malloc_kind(i64 noundef %0, i32 noundef 1) #53
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @GC_change_stubborn(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_ptr_store_and_dirty(ptr noundef initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %.b = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 12
  %i.c = lshr i64 %i.a, 18
  %i.d = and i64 %i.c, 4095
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.d
  %i.f = and i64 %i.b, 63
  %i.g = shl nuw i64 1, %i.f
  %i.h = atomicrmw volatile or ptr %i.e, i64 %i.g monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %1) #45, !srcloc !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define hidden void @GC_noop6(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #21 {
bb.a:
  fence syncscope("singlethread") seq_cst
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define void @GC_noop1(i64 noundef %0) local_unnamed_addr #22 {
bb.a:
  store volatile i64 %0, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 248), align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define void @GC_set_mark_bit(ptr noundef nonnull %0) local_unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
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
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = lshr i64 %i.a, 4
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %GC_find_header.exit
  store i8 1, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.v = load volatile i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, 1
  store volatile i64 %i.w, ptr %i.u, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %GC_find_header.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define void @GC_clear_mark_bit(ptr noundef nonnull %0) local_unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
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
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = lshr i64 %i.a, 4
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %GC_find_header.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.v = load volatile i64, ptr %i.u, align 8
  store i8 0, ptr %i.s, align 1
  %i.w = add i64 %i.v, -1                         ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = load i32, ptr @GC_parallel, align 4
  %i.z = icmp ne i32 %i.y, 0
  %or.cond = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store volatile i64 %i.w, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %GC_find_header.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -128, 128) i32 @GC_is_marked(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
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
  %i.p = lshr i64 %i.a, 4
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1
  %i.u = sext i8 %i.t to i32
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define void @GC_push_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %.not = icmp ult i64 %i.c, %i.f
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store volatile ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8 = icmp ult ptr %i.i, %i.j
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.k(ptr noundef nonnull @.str.62) #45
  tail call void @abort() #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.f, %i.c
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.l, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_push_conditional(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @GC_push_selected(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @GC_page_was_dirty)
  br label %GC_push_all.exit

bb.c:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.f
  br i1 %.not.i, label %bb.d, label %GC_push_all.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store volatile ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i = icmp ult ptr %i.i, %i.j
  br i1 %.not8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.k(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = sub nuw i64 %i.f, %i.c
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.l, ptr %i.o, align 8
  br label %GC_push_all.exit

GC_push_all.exit:                                 ; preds = %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_push_selected(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 7 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, -8                         ; 8 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %GC_push_all.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.a, 4103
  %i.h = and i64 %i.g, -4096                      ; 4 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %.not34 = icmp ugt i64 %i.e, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4096
  %i.k = tail call i32 %2(ptr noundef nonnull %i.j) #45
  %.not35 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not34, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not35, label %GC_push_all.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.c to ptr
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store volatile ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i = icmp ult ptr %i.o, %i.p
  br i1 %.not8.i, label %GC_push_all.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.q(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.b
  br i1 %.not35, label %GC_push_all.exit46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.y = mul i64 %i.x, 3
  %i.z = lshr i64 %i.y, 2
  %i.aa = icmp ugt i64 %i.w, %i.z
  %i.ab = inttoptr i64 %i.c to ptr                ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store volatile ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ae = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i42 = icmp ult ptr %i.ae, %i.af
  br i1 %.not8.i42, label %GC_push_all.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ag(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.j:                                             ; preds = %bb.g
  %.not.i44 = icmp ult i64 %i.c, %i.h
  br i1 %.not.i44, label %bb.k, label %GC_push_all.exit46

bb.k:                                             ; preds = %bb.j
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store volatile ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i45 = icmp ult ptr %i.aj, %i.ak
  br i1 %.not8.i45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.al(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = sub nuw i64 %i.h, %i.c
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.ab, ptr %i.an, align 8
  %i.ao = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.am, ptr %i.ap, align 8
  br label %GC_push_all.exit46

GC_push_all.exit46:                               ; preds = %bb.m, %bb.j, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4096 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %.not3658 = icmp ult i64 %i.e, %i.ar
  br i1 %.not3658, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %GC_push_all.exit46, %GC_push_all.exit52
  %i.as = phi i64 [ %i.bz, %GC_push_all.exit52 ], [ %i.ar, %GC_push_all.exit46 ]
  %i.at = phi ptr [ %i.by, %GC_push_all.exit52 ], [ %i.aq, %GC_push_all.exit46 ] ; 3 uses
  %.059 = phi ptr [ %i.at, %GC_push_all.exit52 ], [ %i.i, %GC_push_all.exit46 ] ; 2 uses
  %i.au = tail call i32 %2(ptr noundef nonnull %.059) #45, !callees !118
  %.not39 = icmp eq i32 %i.au, 0
  br i1 %.not39, label %GC_push_all.exit52, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.av = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 4
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.bc = mul i64 %i.bb, 3
  %i.bd = lshr i64 %i.bc, 2
  %i.be = icmp ugt i64 %i.ba, %i.bd
  %i.bf = ptrtoint ptr %.059 to i64
  %i.bg = add i64 %i.bf, 7
  %i.bh = and i64 %i.bg, -8                       ; 6 uses
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not.i47 = icmp ult i64 %i.bh, %i.e
  br i1 %.not.i47, label %bb.p, label %GC_push_all.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store volatile ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i48 = icmp ult ptr %i.bl, %i.bm
  br i1 %.not8.i48, label %GC_push_all.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bn(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bo = inttoptr i64 %i.bh to ptr
  %3 = and i64 %i.as, -8                          ; 2 uses
  %.not.i50 = icmp ult i64 %i.bh, %3
  br i1 %.not.i50, label %bb.s, label %GC_push_all.exit52

bb.s:                                             ; preds = %bb.r
  %i.bp = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store volatile ptr %i.bq, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.br = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i51 = icmp ult ptr %i.br, %i.bs
  br i1 %.not8.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bt(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bu = sub nuw i64 %3, %i.bh
  %i.bv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.bo, ptr %i.bv, align 8
  %i.bw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bu, ptr %i.bx, align 8
  br label %GC_push_all.exit52

GC_push_all.exit52:                               ; preds = %bb.u, %bb.r, %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 4096 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %.not36 = icmp ult i64 %i.e, %i.bz
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %GC_push_all.exit52, %GC_push_all.exit46
  %.0.lcssa = phi ptr [ %i.i, %GC_push_all.exit46 ], [ %i.at, %GC_push_all.exit52 ] ; 3 uses
  %.not37 = icmp eq ptr %.0.lcssa, %i.f
  br i1 %.not37, label %GC_push_all.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ca = tail call i32 %2(ptr noundef nonnull %.0.lcssa) #45, !callees !118
  %.not38 = icmp eq i32 %i.ca, 0
  br i1 %.not38, label %GC_push_all.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = ptrtoint ptr %.0.lcssa to i64
  %i.cc = add i64 %i.cb, 7
  %i.cd = and i64 %i.cc, -8                       ; 3 uses
  %.not.i53 = icmp ult i64 %i.cd, %i.e
  br i1 %.not.i53, label %bb.x, label %GC_push_all.exit

bb.x:                                             ; preds = %bb.w
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store volatile ptr %i.cg, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ch = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i54 = icmp ult ptr %i.ch, %i.ci
  br i1 %.not8.i54, label %GC_push_all.exit.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cj(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

GC_push_all.exit.sink.split:                      ; preds = %bb.x, %bb.p, %bb.h, %bb.d
  %.sink81 = phi i64 [ %i.bh, %bb.p ], [ %i.c, %bb.h ], [ %i.c, %bb.d ], [ %i.cd, %bb.x ]
  %.sink79 = phi ptr [ %i.bi, %bb.p ], [ %i.ab, %bb.h ], [ %i.l, %bb.d ], [ %i.ce, %bb.x ]
  %i.ck = sub nuw i64 %i.e, %.sink81
  %i.cl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %.sink79, ptr %i.cl, align 8
  %i.cm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.ck, ptr %i.cn, align 8
  br label %GC_push_all.exit

GC_push_all.exit:                                 ; preds = %GC_push_all.exit.sink.split, %bb.w, %bb.o, %._crit_edge, %bb.v, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @GC_page_was_dirty(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
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
  %i.l = lshr i64 %i.a, 12                        ; 2 uses
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %GC_find_header.exit
  %i.q = lshr i64 %i.a, 18
  %i.r = and i64 %i.q, 4095
  %i.s = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 27128), i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.l, 63
  %i.v = lshr i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 1
  br label %bb.d

bb.d:                                             ; preds = %GC_find_header.exit, %bb.c
  %.0 = phi i32 [ %i.x, %bb.c ], [ 1, %GC_find_header.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_mark_and_push(ptr noundef %0, ptr nofree noundef writeonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
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
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !120

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.p, label %bb.d, label %bb.g, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @GC_all_interior_pointers, align 4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @GC_base(ptr noundef %0)
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = lshr i64 %i.s, 22                        ; 2 uses
  %i.u = and i64 %i.t, 2047
  %i.v = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.in.i = phi ptr [ %i.v, %bb.e ], [ %i.ab, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ne i64 %i.x, %i.t
  %i.z = icmp ne ptr %.0.i, %i.e
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.aa, label %bb.f, label %GC_find_header.exit, !llvm.loop !13

GC_find_header.exit:                              ; preds = %bb.f
  %i.ac = lshr i64 %i.s, 12
  %i.ad = and i64 %i.ac, 1023
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread32, label %bb.g

bb.g:                                             ; preds = %GC_find_header.exit, %bb.c
  %.022 = phi ptr [ %i.af, %GC_find_header.exit ], [ %i.o, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.022, i64 25
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 4
  %.not25 = icmp eq i8 %i.aj, 0
  br i1 %.not25, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %.pr.pre = load i32, ptr @GC_all_interior_pointers, align 4
  %i.ak = icmp eq i32 %.pr.pre, 0
  br i1 %i.ak, label %.thread, label %.thread32

.thread32:                                        ; preds = %GC_find_header.exit, %bb.h
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.a)
  br label %bb.j

.thread:                                          ; preds = %bb.d, %bb.h
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = tail call fastcc ptr @GC_push_contents_hdr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.022, i32 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %.thread32, %.thread, %bb.i
  %.023 = phi ptr [ %i.al, %bb.i ], [ %1, %.thread ], [ %1, %.thread32 ]
  ret ptr %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #24

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @GC_add_to_black_list_stack(i64 noundef %0) unnamed_addr #25 {
bb.a:
  %i.a = lshr i64 %0, 22                          ; 2 uses
  %i.b = and i64 %i.a, 2047
  %i.c = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.c, %bb.a ], [ %i.j, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ne i64 %i.f, %i.a
  %i.h = icmp ne ptr %.0.i, %i.d
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.i, label %bb.b, label %GC_find_header.exit, !llvm.loop !13

GC_find_header.exit:                              ; preds = %bb.b
  %i.k = lshr i64 %0, 12                          ; 4 uses
  %i.l = and i64 %i.k, 262143                     ; 2 uses
  %i.m = and i64 %i.k, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %GC_find_header.exit._crit_edge, label %bb.c

GC_find_header.exit._crit_edge:                   ; preds = %GC_find_header.exit
  %.pre = and i64 %i.k, 63
  %.pre6 = shl nuw i64 1, %.pre
  %.pre8 = lshr i64 %i.l, 6
  br label %bb.d

bb.c:                                             ; preds = %GC_find_header.exit
  %i.q = load ptr, ptr @GC_old_stack_bl, align 8
  %i.r = lshr i64 %i.l, 6                         ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.k, 63
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %GC_find_header.exit._crit_edge, %bb.c
  %.pre-phi9 = phi i64 [ %.pre8, %GC_find_header.exit._crit_edge ], [ %i.r, %bb.c ]
  %.pre-phi7 = phi i64 [ %.pre6, %GC_find_header.exit._crit_edge ], [ %i.v, %bb.c ]
end_hunk_0
begin_hunk_1_@GC_unix_get_mem:bb.a
  %i.r = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.s = add i64 %0, -1
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, %i.r
  %i.v = sub i64 0, %i.r
  %i.w = and i64 %i.u, %i.v
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr @GC_unix_mmap_get_mem.last_addr, align 8
  %i.y = and i64 %i.q, 4095
  %.not11.i = icmp eq i64 %i.y, 0
  br i1 %.not11.i, label %GC_unix_mmap_get_mem.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.z(ptr noundef nonnull @.str.249) #45, !inline_history !195
  tail call void @abort() #48
  unreachable

GC_unix_mmap_get_mem.exit:                        ; preds = %bb.d, %bb.e, %bb.g
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.h, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @GC_default_push_other_roots() #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.c = tail call i64 @pthread_self() #51, !inline_history !196
  %.b.i = load i1, ptr @GC_thr_initialized, align 4
  br i1 %.b.i, label %.preheader, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @GC_thr_init(), !inline_history !196
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader ] ; 2 uses
  %.088.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %.preheader ] ; 2 uses
  %.03187.i = phi i64 [ %.132.lcssa.i, %._crit_edge.i ], [ 0, %.preheader ] ; 2 uses
  %.03985.i = phi i32 [ %.140.lcssa.i, %._crit_edge.i ], [ 0, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %indvars.iv.i
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not5077.i = icmp eq ptr %i.e, null
  br i1 %.not5077.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.ad
  %.182.i = phi i32 [ %.3.i, %bb.ad ], [ %.088.i, %bb.c ] ; 4 uses
  %.13281.i = phi i64 [ %.233.i, %bb.ad ], [ %.03187.i, %bb.c ] ; 2 uses
  %.03779.i = phi ptr [ %i.cn, %bb.ad ], [ %i.e, %bb.c ] ; 8 uses
  %.14078.i = phi i32 [ %.241.i, %bb.ad ], [ %.03985.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03779.i, i64 40
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  %i.h = and i8 %i.g, 1
  %.not51.i = icmp eq i8 %i.h, 0
  br i1 %.not51.i, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = add i32 %.14078.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %.03779.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.03779.i, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = call ptr @llvm.frameaddress.p0(i32 0)
  %i.p = ptrtoint ptr %i.o to i64
  store volatile i64 %i.p, ptr %i.a, align 8
  %.0..0..0..0..0..0..0..0..i.i = load volatile i64, ptr %i.a, align 8
  %i.q = inttoptr i64 %.0..0..0..0..0..0..0..0..i.i to ptr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.q, ptr %i.b, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.03779.i, i64 32
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr                 ; 5 uses
  store ptr %i.t, ptr %i.b, align 8
  %.not52.i = icmp eq ptr %i.k, null
  br i1 %.not52.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = icmp eq ptr %i.u, %i.t
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.f ] ; 4 uses
  %.034.i = phi ptr [ %i.k, %bb.e ], [ %i.x, %bb.h ], [ %i.k, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.2.i = phi i32 [ 1, %bb.e ], [ %.182.i, %bb.h ], [ %.182.i, %bb.g ], [ %.182.i, %bb.f ]
  %i.z = and i8 %i.g, 4
  %i.aa = icmp eq i8 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.03779.i, i64 48
  %.035.in.i = select i1 %i.aa, ptr %i.ab, ptr @GC_stackbottom
  %.035.i = load ptr, ptr %.035.in.i, align 8     ; 2 uses
  %i.ac = icmp eq ptr %i.y, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @GC_on_abort, align 8
  call void %i.ad(ptr noundef nonnull @.str.250) #45, !inline_history !196
  call void @abort() #48, !inline_history !196
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.03779.i, i64 56
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %.not53.i = icmp eq ptr %i.af, null
  %.not54.i = icmp ugt ptr %i.af, %i.y
  %or.cond57.i = or i1 %.not53.i, %.not54.i
  br i1 %or.cond57.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.03779.i, i64 64
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = add i64 %i.aj, %i.ah
  %.not55.i = icmp ult i64 %i.ak, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  %spec.select.i = select i1 %.not55.i, ptr %.035.i, ptr %i.al
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.136.i = phi ptr [ %.035.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 3 uses
  %i.am = load ptr, ptr @GC_sp_corrector, align 8 ; 2 uses
  %.not56.i = icmp eq ptr %i.am, null
  br i1 %.not56.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = inttoptr i64 %i.m to ptr
  call void %i.am(ptr noundef nonnull %i.b, ptr noundef %i.an) #45, !inline_history !196
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = phi ptr [ %.pre.i, %bb.n ], [ %i.y, %bb.m ] ; 2 uses
  %.not15.i.i = icmp eq ptr %.034.i, null
  %.pre19.i.i = load i32, ptr @GC_all_interior_pointers, align 4 ; 2 uses
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %GC_push_all_stack.exit.i.i
  %i.ap = phi i32 [ %i.bk, %GC_push_all_stack.exit.i.i ], [ %.pre19.i.i, %bb.o ] ; 3 uses
  %.017.i.i = phi ptr [ %i.bn, %GC_push_all_stack.exit.i.i ], [ %.034.i, %bb.o ] ; 4 uses
  %.0716.i.i = phi ptr [ %i.bl, %GC_push_all_stack.exit.i.i ], [ %i.ao, %bb.o ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.aq = load i32, ptr @GC_incremental, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  %.b.i.i.i = load i1, ptr @GC_manual_vdb, align 4
  %or.cond.i.i.i = select i1 %i.ar, i1 true, i1 %.b.i.i.i
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.as = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8192
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.aw = ptrtoint ptr %.0716.i.i to i64
  %i.ax = add i64 %i.aw, 7
  %i.ay = and i64 %i.ax, -8                       ; 3 uses
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = ptrtoint ptr %.017.i.i to i64
  %i.bb = and i64 %i.ba, -8                       ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.ay, %i.bb
  br i1 %.not.i.i.i.i, label %bb.s, label %GC_push_all_stack.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store volatile ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.be = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %.not8.i.i.i.i = icmp ult ptr %i.be, %i.at
  br i1 %.not8.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr @GC_on_abort, align 8
  call void %i.bf(ptr noundef nonnull @.str.62) #45, !inline_history !197
  call void @abort() #48, !inline_history !196
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bg = sub nuw i64 %i.bb, %i.ay
  %i.bh = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.az, ptr %i.bh, align 8
  %i.bi = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bg, ptr %i.bj, align 8
  br label %GC_push_all_stack.exit.i.i

bb.v:                                             ; preds = %bb.q, %bb.p, %.lr.ph.i.i
  call void @GC_push_all_eager(ptr noundef %.0716.i.i, ptr noundef nonnull %.017.i.i), !inline_history !196
  %.pre.i.i = load i32, ptr @GC_all_interior_pointers, align 4
  br label %GC_push_all_stack.exit.i.i

GC_push_all_stack.exit.i.i:                       ; preds = %bb.v, %bb.u, %bb.r
  %i.bk = phi i32 [ %i.ap, %bb.r ], [ %i.ap, %bb.u ], [ %.pre.i.i, %bb.v ] ; 2 uses
  %i.bl = load ptr, ptr %.017.i.i, align 8        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !198

._crit_edge.i.i:                                  ; preds = %GC_push_all_stack.exit.i.i, %bb.o
  %i.bo = phi i32 [ %.pre19.i.i, %bb.o ], [ %i.bk, %GC_push_all_stack.exit.i.i ]
  %.07.lcssa.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.bl, %GC_push_all_stack.exit.i.i ] ; 2 uses
  %.not.i8.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i8.i.i, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.bp = load i32, ptr @GC_incremental, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  %.b.i9.i.i = load i1, ptr @GC_manual_vdb, align 4
  %or.cond.i10.i.i = select i1 %i.bq, i1 true, i1 %.b.i9.i.i
  br i1 %or.cond.i10.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.br = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8192
  %i.bu = icmp ult ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bv = ptrtoint ptr %.07.lcssa.i.i to i64
  %i.bw = add i64 %i.bv, 7
  %i.bx = and i64 %i.bw, -8                       ; 3 uses
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = ptrtoint ptr %.136.i to i64             ; 3 uses
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %.not.i.i11.i.i = icmp ult i64 %i.bx, %i.ca
  br i1 %.not.i.i11.i.i, label %bb.z, label %GC_push_all_stack_sections.exit.i

bb.z:                                             ; preds = %bb.y
  %i.cb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store volatile ptr %i.cc, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %.not8.i.i12.i.i = icmp ult ptr %i.cd, %i.bs
  br i1 %.not8.i.i12.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load ptr, ptr @GC_on_abort, align 8
  call void %i.ce(ptr noundef nonnull @.str.62) #45, !inline_history !197
  call void @abort() #48, !inline_history !196
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cf = sub nuw i64 %i.ca, %i.bx
  %i.cg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.by, ptr %i.cg, align 8
  %i.ch = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.cf, ptr %i.ci, align 8
  br label %GC_push_all_stack_sections.exit.i

bb.ac:                                            ; preds = %bb.x, %bb.w, %._crit_edge.i.i
  call void @GC_push_all_eager(ptr noundef %.07.lcssa.i.i, ptr noundef %.136.i), !inline_history !196
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
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !199

._crit_edge.i:                                    ; preds = %bb.ad, %bb.c
  %.140.lcssa.i = phi i32 [ %.03985.i, %bb.c ], [ %.241.i, %bb.ad ] ; 2 uses
  %.132.lcssa.i = phi i64 [ %.03187.i, %bb.c ], [ %.233.i, %bb.ad ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.088.i, %bb.c ], [ %.3.i, %bb.ad ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %bb.ae, label %bb.c, !llvm.loop !200

bb.ae:                                            ; preds = %._crit_edge.i
  %i.co = load i32, ptr @GC_print_stats, align 4
  %.not.i = icmp eq i32 %i.co, 2
  br i1 %.not.i, label %bb.af, label %bb.ag, !prof !9

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.251, i32 noundef %.140.lcssa.i), !inline_history !196
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cp = icmp ne i32 %.1.lcssa.i, 0
  %.b49.i = load i1, ptr @GC_in_thread_creation, align 4
  %or.cond.i = select i1 %i.cp, i1 true, i1 %.b49.i
  br i1 %or.cond.i, label %GC_push_all_stacks.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr @GC_on_abort, align 8
  call void %i.cq(ptr noundef nonnull @.str.252) #45, !inline_history !196
  call void @abort() #48, !inline_history !196
  unreachable

GC_push_all_stacks.exit:                          ; preds = %bb.ag
  store i64 %.132.lcssa.i, ptr @GC_total_stacksize, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
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
  %i.d = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.290, i32 noundef 0) #45 ; 4 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %GC_get_maps_len.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.d ]
  %i.f = call i64 @read(i32 noundef range(i32 0, -2147483648) %i.d, ptr noundef nonnull %i.c, i64 noundef 500) #45 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %GC_get_maps_len.exit.thread44.i, label %bb.d

GC_get_maps_len.exit.thread44.i:                  ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  %i.h = tail call i32 @close(i32 noundef %i.d) #45 ; 0 uses
  br label %GC_get_maps_len.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %i.f, %.0.i.i.i                  ; 3 uses
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.c, label %GC_get_maps_len.exit.i, !llvm.loop !201

GC_get_maps_len.exit.i:                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  %i.k = tail call i32 @close(i32 noundef %i.d) #45 ; 0 uses
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %GC_get_maps_len.exit.thread.i, label %.preheader59.i

GC_get_maps_len.exit.thread.i:                    ; preds = %GC_get_maps_len.exit.i, %GC_get_maps_len.exit.thread44.i, %bb.a
  %i.m = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.m(ptr noundef nonnull @.str.287) #45, !inline_history !202
  tail call void @abort() #48
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
  br i1 %.not18.i.i, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.154, i64 noundef %i.z, i64 noundef %i.n, ptr noundef nonnull %i.o), !inline_history !153
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not19.i.i = icmp eq i64 %i.z, 0
  br i1 %.not19.i.i, label %GC_scratch_recycle_inner.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add i64 %spec.select.i.i, %i.q
  %i.ac = inttoptr i64 %i.ab to ptr
  tail call fastcc void @GC_add_to_heap(ptr noundef %i.ac, i64 noundef %i.z), !inline_history !153
  br label %GC_scratch_recycle_inner.exit.i

GC_scratch_recycle_inner.exit.i:                  ; preds = %bb.i, %bb.h, %bb.e
  %GC_get_maps.maps_buf_sz.promoted.i = load i64, ptr @GC_get_maps.maps_buf_sz, align 8 ; 3 uses
  %.not2878.i = icmp ult i64 %.1.i, %GC_get_maps.maps_buf_sz.promoted.i
  br i1 %.not2878.i, label %bb.j, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_scratch_recycle_inner.exit.i, %.lr.ph.i
  %i.ad = phi i64 [ %i.ae, %.lr.ph.i ], [ %GC_get_maps.maps_buf_sz.promoted.i, %GC_scratch_recycle_inner.exit.i ]
  %i.ae = shl i64 %i.ad, 1                        ; 4 uses
  %.not28.i = icmp ult i64 %.1.i, %i.ae
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !203

end_hunk_1
begin_hunk_2_@GC_resume_thread:bb.a
  %.not8.i = icmp eq i64 %i.o, %0
  br i1 %.not8.i, label %GC_lookup_thread.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %.010.i, align 8           ; 2 uses
  %.not.i18 = icmp eq ptr %i.p, null
  br i1 %.not.i18, label %GC_lookup_thread.exit.thread, label %.lr.ph.i, !llvm.loop !188

GC_lookup_thread.exit:                            ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i, i64 24 ; 2 uses
  %i.s = load volatile i64, ptr %i.r, align 8     ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not15 = icmp eq i64 %i.t, 0
  br i1 %.not15, label %GC_lookup_thread.exit.thread, label %bb.h

bb.h:                                             ; preds = %GC_lookup_thread.exit
  %i.u = add i64 %i.s, 1
  store atomic volatile i64 %i.u, ptr %i.r monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.010.i, i64 40
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.i, label %GC_lookup_thread.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 41
  %i.aa = load i8, ptr %i.z, align 1
  %.not16 = icmp eq i8 %i.aa, 0
  br i1 %.not16, label %bb.j, label %GC_lookup_thread.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr @GC_sig_thr_restart, align 4 ; 2 uses
  %i.ac = tail call i32 @pthread_kill(i64 noundef %0, i32 noundef %i.ab) #45 ; 2 uses
  %.not.i19 = icmp eq i32 %i.ac, 11
  br i1 %.not.i19, label %.lr.ph.i20, label %raise_signal.exit

.lr.ph.i20:                                       ; preds = %bb.j, %.lr.ph.i20
  %.06.i = phi i32 [ %i.ae, %.lr.ph.i20 ], [ 0, %bb.j ] ; 2 uses
  %i.ad = tail call i32 @usleep(i32 noundef 3000) #45 ; 0 uses
  %i.ae = add nuw nsw i32 %.06.i, 1
  %i.af = load i64, ptr %i.q, align 8
  %i.ag = tail call i32 @pthread_kill(i64 noundef %i.af, i32 noundef %i.ab) #45 ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 11
  %i.ai = icmp samesign ugt i32 %.06.i, 14
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i, label %raise_signal.exit, label %.lr.ph.i20

raise_signal.exit:                                ; preds = %.lr.ph.i20, %bb.j
  %.lcssa.i = phi i32 [ %i.ac, %bb.j ], [ %i.ag, %.lr.ph.i20 ] ; 2 uses
  %.not17 = icmp eq i32 %.lcssa.i, 0
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %raise_signal.exit
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.123, i32 noundef %.lcssa.i)
  %i.aj = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.aj(ptr noundef nonnull @.str.124) #45
  tail call void @abort() #48
  unreachable

bb.l:                                             ; preds = %raise_signal.exit
  %.b13 = load i1, ptr @GC_retry_signals, align 4
  br i1 %.b13, label %GC_lookup_thread.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.ak = call i32 @pthread_setcancelstate(i32 noundef 1, ptr noundef nonnull %i.a) #45 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.preheader.i
  %i.al = call i32 @sem_wait(ptr noundef nonnull @GC_suspend_ack_sem) #45
  %.not.i21 = icmp eq i32 %i.al, 0
  br i1 %.not.i21, label %suspend_restart_barrier.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call ptr @__errno_location() #51
  %i.an = load i32, ptr %i.am, align 4
  %.not3.i = icmp eq i32 %i.an, 4
  br i1 %.not3.i, label %bb.m, label %bb.o, !llvm.loop !192

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr @GC_on_abort, align 8
  call void %i.ao(ptr noundef nonnull @.str.129) #45, !inline_history !193
  call void @abort() #48
  unreachable

suspend_restart_barrier.exit:                     ; preds = %bb.m
  %i.ap = load i32, ptr %i.a, align 4
  %i.aq = call i32 @pthread_setcancelstate(i32 noundef %i.ap, ptr noundef null) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %GC_lookup_thread.exit.thread

GC_lookup_thread.exit.thread:                     ; preds = %bb.g, %GC_lock.exit, %GC_lookup_thread.exit, %bb.i, %bb.h, %suspend_restart_barrier.exit, %bb.l
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.p, label %bb.q

bb.p:                                             ; preds = %GC_lookup_thread.exit.thread
  %i.ar = call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %GC_lookup_thread.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @GC_is_thread_suspended(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.b4 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b4, label %bb.b, label %GC_lock.exit

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
  %i.f = lshr i64 %0, 8
  %i.g = xor i64 %i.f, %0                         ; 2 uses
  %i.h = lshr i64 %i.g, 16
  %i.i = xor i64 %i.h, %i.g
  %i.j = and i64 %i.i, 255
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %i.j
  %i.l = load volatile ptr, ptr %i.k, align 8     ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %GC_lookup_thread.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_lock.exit, %bb.g
  %.010.i = phi ptr [ %i.o, %bb.g ], [ %i.l, %GC_lock.exit ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %.not8.i = icmp eq i64 %i.n, %0
  br i1 %.not8.i, label %GC_lookup_thread.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %.010.i, align 8           ; 2 uses
  %.not.i7 = icmp eq ptr %i.o, null
  br i1 %.not.i7, label %GC_lookup_thread.exit.thread, label %.lr.ph.i, !llvm.loop !188

GC_lookup_thread.exit:                            ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %i.q = load volatile i64, ptr %i.p, align 8
  %.not6 = trunc i64 %i.q to i32
  %spec.select = and i32 %.not6, 1
  br label %GC_lookup_thread.exit.thread

GC_lookup_thread.exit.thread:                     ; preds = %bb.g, %GC_lock.exit, %GC_lookup_thread.exit
  %.0 = phi i32 [ %spec.select, %GC_lookup_thread.exit ], [ 0, %GC_lock.exit ], [ 0, %bb.g ]
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GC_lookup_thread.exit.thread
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %GC_lookup_thread.exit.thread
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @GC_push_thread_structures() local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 add (i64 ptrtoint (ptr @GC_threads to i64), i64 7), -16 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not.i = icmp ult i64 %i.a, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @GC_threads, i64 2048) to i64)
  br i1 %.not.i, label %bb.b, label %GC_push_all.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store volatile ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.e = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i = icmp ult ptr %i.e, %i.f
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.g(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = sub nuw i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @GC_threads, i64 2048) to i64), %i.a
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.b, ptr %i.i, align 8
  %i.j = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.h, ptr %i.k, align 8
  br label %GC_push_all.exit

GC_push_all.exit:                                 ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @GC_thread_is_registered() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @pthread_self() #51        ; 3 uses
  %.b2 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b2, label %bb.b, label %GC_lock.exit

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
  %i.g = lshr i64 %i.a, 8
  %i.h = xor i64 %i.g, %i.a                       ; 2 uses
  %i.i = lshr i64 %i.h, 16
  %i.j = xor i64 %i.i, %i.h
  %i.k = and i64 %i.j, 255
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %i.k
  %i.m = load volatile ptr, ptr %i.l, align 8     ; 2 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %GC_lookup_thread.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_lock.exit, %bb.g
  %.010.i = phi ptr [ %i.p, %bb.g ], [ %i.m, %GC_lock.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.not8.i = icmp eq i64 %i.o, %i.a
  br i1 %.not8.i, label %GC_lookup_thread.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %.010.i, align 8           ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i5, label %GC_lookup_thread.exit, label %.lr.ph.i, !llvm.loop !188

GC_lookup_thread.exit:                            ; preds = %.lr.ph.i, %bb.g, %GC_lock.exit
  %.0.lcssa.i = phi ptr [ null, %GC_lock.exit ], [ %.010.i, %.lr.ph.i ], [ null, %bb.g ] ; 2 uses
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GC_lookup_thread.exit
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %GC_lookup_thread.exit
  %.not3 = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 40
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 1
  %i.u = xor i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi i32 [ 0, %bb.i ], [ %i.v, %bb.j ]
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define void @GC_register_altstack(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @pthread_self() #51        ; 4 uses
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
  %i.g = lshr i64 %i.a, 8
  %i.h = xor i64 %i.g, %i.a                       ; 2 uses
  %i.i = lshr i64 %i.h, 16
  %i.j = xor i64 %i.i, %i.h
  %i.k = and i64 %i.j, 255
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %i.k
  %i.m = load volatile ptr, ptr %i.l, align 8     ; 2 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_lock.exit, %bb.g
  %.010.i = phi ptr [ %i.p, %bb.g ], [ %i.m, %GC_lock.exit ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.not8.i = icmp eq i64 %i.o, %i.a
  br i1 %.not8.i, label %GC_lookup_thread.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %.010.i, align 8           ; 2 uses
  %.not.i16 = icmp eq ptr %i.p, null
  br i1 %.not.i16, label %.loopexit, label %.lr.ph.i, !llvm.loop !188

GC_lookup_thread.exit:                            ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.010.i, i64 72
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i, i64 80
  store i64 %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i, i64 56
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i, i64 64
  store i64 %3, ptr %i.t, align 8
  br label %bb.h

.loopexit:                                        ; preds = %bb.g, %GC_lock.exit
  store i64 %i.a, ptr @main_pthread_id, align 8
  store ptr %0, ptr @main_stack, align 8
  store i64 %1, ptr @main_stack_size, align 8
  store ptr %2, ptr @main_altstack, align 8
  store i64 %3, ptr @main_altstack_size, align 8
  br label %bb.h

bb.h:                                             ; preds = %GC_lookup_thread.exit, %.loopexit
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_atfork_prepare() local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @GC_init()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load i32, ptr @GC_handle_fork, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @fork_prepare_proc()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fork_prepare_proc() #2 {
bb.a:
end_hunk_2
begin_hunk_3_@GC_stopped_mark:bb.a
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr @load_segs, i64 %indvars.iv.i.i2.i ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 16           ; 2 uses
  %i.bf = icmp ugt ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i1.i
  call void @GC_add_roots_inner(ptr noundef %i.be, ptr noundef nonnull %i.bd, i32 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i1.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bj = load ptr, ptr %i.bi, align 16           ; 2 uses
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @GC_add_roots_inner(ptr noundef %i.bj, ptr noundef nonnull %i.bh, i32 noundef 1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i.i3.i = add nuw nsw i64 %indvars.iv.i.i2.i, 1 ; 2 uses
  %i.bl = load i32, ptr @n_load_segs, align 4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next.i.i3.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i1.i, label %GC_register_dynamic_libraries_dl_iterate_phdr.exit.thread.i.i, !llvm.loop !241

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bo = load ptr, ptr @GC_data_start, align 8
  store ptr %i.bo, ptr %i.c, align 8
  %.0..0..0..0..0..0..0..0..0..0.3.i.i.i = load volatile ptr, ptr %i.c, align 8 ; 4 uses
  %i.bp = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, null
  %i.bq = icmp ugt ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, @_end
  %or.cond.i.i.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.118, ptr noundef %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, ptr noundef nonnull @_end)
  %i.br = load ptr, ptr @GC_on_abort, align 8
  call void %i.br(ptr noundef nonnull @.str.119) #45, !inline_history !242
  call void @abort() #48
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @GC_add_roots_inner(ptr noundef nonnull %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, ptr noundef nonnull @_end, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %GC_register_dynamic_libraries_dl_iterate_phdr.exit.thread.i.i

GC_register_dynamic_libraries_dl_iterate_phdr.exit.thread.i.i: ; preds = %bb.m, %bb.p, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %GC_cond_register_dynamic_libraries.exit

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  %i.bs = icmp eq i64 0, ptrtoint (ptr @_DYNAMIC to i64)
  br i1 %i.bs, label %GC_cond_register_dynamic_libraries.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr @GC_FirstDLOpenedLinkMap.cachedResult, align 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.preheader.i20.i.i, label %.lr.ph38.preheader.i.i

.preheader.i20.i.i:                               ; preds = %bb.r, %bb.u
  %.0.i.i.i = phi ptr [ %i.cc, %bb.u ], [ @_DYNAMIC, %bb.r ] ; 3 uses
  %i.bv = load i64, ptr %.0.i.i.i, align 8
  %i.bw = trunc i64 %i.bv to i32
  switch i32 %i.bw, label %bb.u [
    i32 0, label %GC_cond_register_dynamic_libraries.exit
    i32 21, label %bb.s
  ]

bb.s:                                             ; preds = %.preheader.i20.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not12.i.i.i, label %GC_cond_register_dynamic_libraries.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not13.i.i.i, label %GC_cond_register_dynamic_libraries.exit, label %GC_FirstDLOpenedLinkMap.exit.i.i

bb.u:                                             ; preds = %.preheader.i20.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  br label %.preheader.i20.i.i, !llvm.loop !243

GC_FirstDLOpenedLinkMap.exit.i.i:                 ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  store ptr %i.ce, ptr @GC_FirstDLOpenedLinkMap.cachedResult, align 8
  %.not1835.i.i = icmp eq ptr %i.ce, null
  br i1 %.not1835.i.i, label %GC_cond_register_dynamic_libraries.exit, label %.lr.ph38.preheader.i.i

.lr.ph38.preheader.i.i:                           ; preds = %GC_FirstDLOpenedLinkMap.exit.i.i, %bb.r
  %.08.i60.i.i = phi ptr [ %i.ce, %GC_FirstDLOpenedLinkMap.exit.i.i ], [ %i.bt, %bb.r ]
  %GC_root_size.promoted30.i.i = load i64, ptr @GC_root_size, align 8
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %._crit_edge.i6.i, %.lr.ph38.preheader.i.i
  %.01737.i.i = phi ptr [ %i.fj, %._crit_edge.i6.i ], [ %.08.i60.i.i, %.lr.ph38.preheader.i.i ] ; 2 uses
  %GC_root_size.promoted3436.i.i = phi i64 [ %GC_root_size.promoted31.i.i, %._crit_edge.i6.i ], [ %GC_root_size.promoted30.i.i, %.lr.ph38.preheader.i.i ] ; 3 uses
  %i.cf = load i64, ptr %.01737.i.i, align 8      ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr               ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 8
  %.not39.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not39.i.i, label %._crit_edge.i6.i, label %.lr.ph.preheader.i4.i

.lr.ph.preheader.i4.i:                            ; preds = %.lr.ph38.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  br label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %GC_add_roots_inner.exit.i.i, %.lr.ph.preheader.i4.i
  %GC_root_size.promoted33.i.i = phi i64 [ %GC_root_size.promoted32.i.i, %GC_add_roots_inner.exit.i.i ], [ %GC_root_size.promoted3436.i.i, %.lr.ph.preheader.i4.i ] ; 4 uses
  %.029.i.i = phi i32 [ %i.fd, %GC_add_roots_inner.exit.i.i ], [ 0, %.lr.ph.preheader.i4.i ]
  %.01628.i.i = phi ptr [ %i.fe, %GC_add_roots_inner.exit.i.i ], [ %i.cl, %.lr.ph.preheader.i4.i ] ; 5 uses
  %i.cm = phi i64 [ %i.fc, %GC_add_roots_inner.exit.i.i ], [ %GC_root_size.promoted3436.i.i, %.lr.ph.preheader.i4.i ] ; 6 uses
  %i.cn = load i32, ptr %.01628.i.i, align 8
  %cond.i.i = icmp eq i32 %i.cn, 1
  br i1 %cond.i.i, label %bb.v, label %GC_add_roots_inner.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i5.i
  %i.co = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 2
  %.not19.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not19.i.i, label %GC_add_roots_inner.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cf ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 40
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = add i64 %i.cy, 7                        ; 3 uses
  %i.da = and i64 %i.cz, -8                       ; 3 uses
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = and i64 %i.dc, -8                       ; 5 uses
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  %.not.i21.i.i = icmp ult i64 %i.da, %i.dd
  br i1 %.not.i21.i.i, label %bb.x, label %GC_add_roots_inner.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.df = lshr i64 %i.cz, 48
  %i.dg = lshr i64 %i.cz, 24
  %i.dh = xor i64 %i.df, %i.dg
  %i.di = xor i64 %i.dh, %i.da                    ; 2 uses
  %i.dj = lshr i64 %i.di, 12
  %i.dk = xor i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = and i64 %i.dm, 63
  %i.do = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 968), i64 %i.dn
  %.08.i.i.i.i = load ptr, ptr %i.do, align 8     ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  br i1 %.not9.i.i.i.i, label %GC_roots_present.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %bb.y
  %.010.i.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.y ], [ %.08.i.i.i.i, %bb.x ] ; 4 uses
  %i.dp = load ptr, ptr %.010.i.i.i.i, align 8
  %i.dq = icmp eq ptr %i.dp, %i.db
  br i1 %i.dq, label %GC_roots_present.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %.0.i.i.i.i = load ptr, ptr %i.dr, align 8      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %GC_roots_present.exit.thread.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !124

GC_roots_present.exit.i.i.i:                      ; preds = %.lr.ph.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %.not32.i.i.i = icmp ugt i64 %i.dd, %i.du
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 24 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8            ; 2 uses
  br i1 %.not32.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %GC_roots_present.exit.i.i.i
  %i.dx = and i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 8
  br label %GC_add_roots_inner.exit.i.i

bb.aa:                                            ; preds = %GC_roots_present.exit.i.i.i
  %.not.i7.i = icmp eq i32 %i.dw, 1
  br i1 %.not.i7.i, label %bb.ab, label %GC_roots_present.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dy = sub nuw i64 %i.dd, %i.du
  %i.dz = add i64 %i.dy, %i.cm                    ; 3 uses
  store i64 %i.dz, ptr @GC_root_size, align 8
  store ptr %i.de, ptr %i.ds, align 8
  br label %GC_add_roots_inner.exit.i.i

GC_roots_present.exit.thread.i.i.i:               ; preds = %bb.y, %bb.aa, %bb.x
  %.1.ph.i.i.i = phi ptr [ %i.dt, %bb.aa ], [ %i.db, %bb.x ], [ %i.db, %bb.y ] ; 2 uses
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 2048
  br i1 %i.eb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %GC_roots_present.exit.thread.i.i.i
  %i.ec = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ec(ptr noundef nonnull @.str.67) #45, !inline_history !244
  tail call void @abort() #48
  unreachable

bb.ad:                                            ; preds = %GC_roots_present.exit.thread.i.i.i
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr inbounds [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92672), i64 %i.ed
  store ptr %.1.ph.i.i.i, ptr %i.ee, align 8
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92672), i64 %i.eg ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.de, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i32 1, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  store ptr null, ptr %i.ek, align 8
  %i.el = load ptr, ptr %i.eh, align 8
  %i.em = ptrtoint ptr %i.el to i64               ; 3 uses
  %i.en = lshr i64 %i.em, 48
  %i.eo = lshr i64 %i.em, 24
  %i.ep = xor i64 %i.en, %i.eo
  %i.eq = xor i64 %i.ep, %i.em                    ; 2 uses
  %i.er = lshr i64 %i.eq, 12
  %i.es = xor i64 %i.er, %i.eq                    ; 2 uses
  %i.et = lshr i64 %i.es, 6
  %i.eu = xor i64 %i.et, %i.es
  %i.ev = and i64 %i.eu, 63
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 968), i64 %i.ev ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  store ptr %i.ex, ptr %i.ek, align 8
  store ptr %i.eh, ptr %i.ew, align 8
  %i.ey = ptrtoint ptr %.1.ph.i.i.i to i64
  %i.ez = sub i64 %i.dd, %i.ey
  %i.fa = add i64 %i.ez, %i.cm                    ; 3 uses
  store i64 %i.fa, ptr @GC_root_size, align 8
  %i.fb = add nsw i32 %i.ef, 1
  store i32 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4
  br label %GC_add_roots_inner.exit.i.i

GC_add_roots_inner.exit.i.i:                      ; preds = %bb.ad, %bb.ab, %bb.z, %bb.w, %bb.v, %.lr.ph.i5.i
  %GC_root_size.promoted32.i.i = phi i64 [ %i.fa, %bb.ad ], [ %i.dz, %bb.ab ], [ %GC_root_size.promoted33.i.i, %bb.z ], [ %GC_root_size.promoted33.i.i, %bb.w ], [ %GC_root_size.promoted33.i.i, %bb.v ], [ %GC_root_size.promoted33.i.i, %.lr.ph.i5.i ] ; 2 uses
  %i.fc = phi i64 [ %i.fa, %bb.ad ], [ %i.dz, %bb.ab ], [ %i.cm, %bb.z ], [ %i.cm, %bb.w ], [ %i.cm, %bb.v ], [ %i.cm, %.lr.ph.i5.i ]
  %i.fd = add nuw nsw i32 %.029.i.i, 1            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 56
  %i.ff = load i16, ptr %i.ch, align 8
  %i.fg = zext i16 %i.ff to i32
  %i.fh = icmp samesign ult i32 %i.fd, %i.fg
  br i1 %i.fh, label %.lr.ph.i5.i, label %._crit_edge.i6.i, !llvm.loop !245

._crit_edge.i6.i:                                 ; preds = %GC_add_roots_inner.exit.i.i, %.lr.ph38.i.i
  %GC_root_size.promoted31.i.i = phi i64 [ %GC_root_size.promoted3436.i.i, %.lr.ph38.i.i ], [ %GC_root_size.promoted32.i.i, %GC_add_roots_inner.exit.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.01737.i.i, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not18.i.i = icmp eq ptr %i.fj, null
  br i1 %.not18.i.i, label %GC_cond_register_dynamic_libraries.exit, label %.lr.ph38.i.i, !llvm.loop !246

GC_cond_register_dynamic_libraries.exit:          ; preds = %.preheader.i20.i.i, %._crit_edge.i6.i, %GC_remove_tmp_roots.exit.i, %GC_register_dynamic_libraries_dl_iterate_phdr.exit.thread.i.i, %bb.q, %bb.s, %bb.t, %GC_FirstDLOpenedLinkMap.exit.i.i
  %i.fk = load i32, ptr @GC_print_stats, align 4
  %.not = icmp eq i32 %i.fk, 0
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %GC_cond_register_dynamic_libraries.exit
  %i.fl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #45
  %i.fm = icmp eq i32 %i.fl, -1
  br i1 %i.fm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fn = load ptr, ptr @GC_on_abort, align 8
  call void %i.fn(ptr noundef nonnull @.str.93) #45
  call void @abort() #48
  unreachable

bb.ag:                                            ; preds = %bb.ae, %GC_cond_register_dynamic_libraries.exit
  %i.fo = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 368), align 8
  %.not29.i = icmp eq i64 %i.fo, 0
  br i1 %.not29.i, label %GC_process_togglerefs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %bb.al
  %.01526.i = phi i32 [ %.2.i, %bb.al ], [ 0, %bb.ag ] ; 3 uses
  %.01625.i = phi i64 [ %.218.i, %bb.al ], [ 0, %bb.ag ] ; 6 uses
  %.01924.i = phi i64 [ %i.gh, %bb.al ], [ 0, %bb.ag ] ; 2 uses
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 360), align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.01924.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.fq, align 8 ; 2 uses
  %i.fr = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.fs = and i64 %i.fr, 1
  %.not.i52 = icmp eq i64 %i.fs, 0
  %i.ft = xor i64 %i.fr, -1
  %i.fu = inttoptr i64 %i.ft to ptr
  %.0.i = select i1 %.not.i52, ptr %.sroa.0.0.copyload.i, ptr %i.fu ; 4 uses
  %i.fv = icmp eq ptr %.0.i, null
  br i1 %i.fv, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i
  %i.fw = load ptr, ptr @GC_toggleref_callback, align 8
  %i.fx = call i32 %i.fw(ptr noundef nonnull %.0.i) #45, !inline_history !247
  switch i32 %i.fx, label %bb.ak [
    i32 0, label %bb.al
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 360), align 8
  %i.fz = add i64 %.01625.i, 1
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.01625.i
  store ptr %.0.i, ptr %i.ga, align 8
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.gb = ptrtoint ptr %.0.i to i64
  %i.gc = xor i64 %i.gb, -1
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 360), align 8
  %i.ge = add i64 %.01625.i, 1
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.01625.i
  store i64 %i.gc, ptr %i.gf, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.gg = load ptr, ptr @GC_on_abort, align 8
  call void %i.gg(ptr noundef nonnull @.str.170) #45, !inline_history !247
  call void @abort() #48
  unreachable

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %.lr.ph.i
  %.218.i = phi i64 [ %.01625.i, %.lr.ph.i ], [ %.01625.i, %bb.ah ], [ %i.fz, %bb.ai ], [ %i.ge, %bb.aj ] ; 5 uses
  %.2.i = phi i32 [ %.01526.i, %.lr.ph.i ], [ %.01526.i, %bb.ah ], [ 1, %bb.ai ], [ %.01526.i, %bb.aj ] ; 2 uses
  %i.gh = add nuw i64 %.01924.i, 1                ; 2 uses
  %i.gi = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 368), align 8 ; 3 uses
  %i.gj = icmp ult i64 %i.gh, %i.gi
  br i1 %i.gj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !248

._crit_edge.i:                                    ; preds = %bb.al
  %i.gk = icmp ne i32 %.2.i, 0
  %i.gl = icmp ult i64 %.218.i, %i.gi
  br i1 %i.gl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 360), align 8
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.218.i
  %i.go = sub nuw i64 %i.gi, %.218.i
  %i.gp = shl i64 %i.go, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gn, i8 0, i64 %i.gp, i1 false)
  store i64 %.218.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 368), align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i
  %.b.i = load i1, ptr @GC_manual_vdb, align 4
  %or.cond.i = select i1 %i.gk, i1 %.b.i, i1 false
  br i1 %or.cond.i, label %bb.ao, label %GC_process_togglerefs.exit

bb.ao:                                            ; preds = %bb.an
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 360), align 8
  %i.gr = ptrtoint ptr %i.gq to i64               ; 2 uses
  %i.gs = lshr i64 %i.gr, 12
  %i.gt = lshr i64 %i.gr, 18
  %i.gu = and i64 %i.gt, 4095
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.gu
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = atomicrmw volatile or ptr %i.gv, i64 %i.gx monotonic, align 8 ; 0 uses
  br label %GC_process_togglerefs.exit

GC_process_togglerefs.exit:                       ; preds = %bb.ag, %bb.an, %bb.ao
  %i.gz = load ptr, ptr @GC_on_collection_event, align 8 ; 2 uses
  %.not35 = icmp eq ptr %i.gz, null
  br i1 %.not35, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %GC_process_togglerefs.exit
  call void %i.gz(i32 noundef 6) #45
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %GC_process_togglerefs.exit
  call fastcc void @GC_stop_world()
  %i.ha = load ptr, ptr @GC_on_collection_event, align 8 ; 2 uses
  %.not36 = icmp eq ptr %i.ha, null
  br i1 %.not36, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void %i.ha(i32 noundef 7) #45
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i1 true, ptr @GC_world_stopped, align 4
  %i.hb = load i32, ptr @GC_print_stats, align 4
  %.not37 = icmp eq i32 %i.hb, 0
end_hunk_3
begin_hunk_4_@GC_mark_from:bb.a
  br label %.critedge202

bb.bg:                                            ; preds = %bb.bc
  %i.fe = sub nsw i64 %i.eg, %i.el
  %i.ff = sub nsw i64 0, %i.fa
  %i.fg = getelementptr inbounds i8, ptr %i.dv, i64 %i.ff
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ay, %bb.ax, %bb.av
  %.2.i207 = phi i64 [ %i.eg, %bb.av ], [ %i.fe, %bb.bg ], [ 0, %bb.ax ], [ 0, %bb.ay ]
  %.1.i208 = phi ptr [ %i.dv, %bb.av ], [ %i.fg, %bb.bg ], [ %i.es, %bb.ax ], [ %i.es, %bb.ay ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.1139, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.2.i207 ; 2 uses
  %i.fj = load atomic volatile i8, ptr %i.fi monotonic, align 1
  %.not61.i209 = icmp eq i8 %i.fj, 0
  br i1 %.not61.i209, label %bb.bi, label %.critedge202

bb.bi:                                            ; preds = %bb.bh
  store atomic volatile i8 1, ptr %i.fi monotonic, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.1139, i64 56 ; 2 uses
  %i.fl = load atomic volatile i64, ptr %i.fk monotonic, align 8
  %i.fm = add i64 %i.fl, 1
  store atomic volatile i64 %i.fm, ptr %i.fk monotonic, align 8
  %i.fn = getelementptr i8, ptr %.1139, i64 40
  %.val.i211 = load i64, ptr %i.fn, align 8       ; 2 uses
  %.not.i.i212 = icmp eq i64 %.val.i211, 0
  br i1 %.not.i.i212, label %.critedge202, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fo = getelementptr inbounds nuw i8, ptr %.9270, i64 16 ; 2 uses
  %.not11.i.i213 = icmp ult ptr %i.fo, %2
  br i1 %.not11.i.i213, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.fp = load i32, ptr @GC_parallel, align 4
  %.not.i.i.i214 = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i.i214, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fq = load i32, ptr @GC_print_stats, align 4
  %.not1.i.i.i215 = icmp eq i32 %i.fq, 0
  br i1 %.not1.i.i.i215, label %GC_signal_mark_stack_overflow.exit.i.i216, label %bb.bn, !prof !6

bb.bn:                                            ; preds = %bb.bm
  %i.fr = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.fr)
  br label %GC_signal_mark_stack_overflow.exit.i.i216

GC_signal_mark_stack_overflow.exit.i.i216:        ; preds = %bb.bn, %bb.bm
  %i.fs = getelementptr inbounds i8, ptr %.9270, i64 -8176
  br label %bb.bo

bb.bo:                                            ; preds = %GC_signal_mark_stack_overflow.exit.i.i216, %bb.bj
  %.0.i.i217 = phi ptr [ %i.fs, %GC_signal_mark_stack_overflow.exit.i.i216 ], [ %i.fo, %bb.bj ] ; 3 uses
  store ptr %.1.i208, ptr %.0.i.i217, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i.i217, i64 8
  store i64 %.val.i211, ptr %i.ft, align 8
  br label %.critedge202

.critedge202:                                     ; preds = %bb.bo, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bb, %bb.ba, %bb.au, %.lr.ph271
  %.11 = phi ptr [ %.9270, %.lr.ph271 ], [ %.9270, %bb.au ], [ %.9270, %bb.be ], [ %.9270, %bb.bh ], [ %.9270, %bb.bf ], [ %.9270, %bb.ba ], [ %.9270, %bb.bb ], [ %.0.i.i217, %bb.bo ], [ %.9270, %bb.bi ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.4167269, i64 8 ; 2 uses
  %.not189 = icmp ugt ptr %i.fu, %.6161
  br i1 %.not189, label %._crit_edge, label %.lr.ph271, !llvm.loop !278

._crit_edge:                                      ; preds = %.critedge202, %bb.ar
  %.9.lcssa = phi ptr [ %.8, %bb.ar ], [ %.11, %.critedge202 ] ; 2 uses
  %i.fv = inttoptr i64 %.lcssa344.sink to ptr     ; 2 uses
  %i.fw = lshr i64 %.lcssa344.sink, 12            ; 2 uses
  %i.fx = and i64 %i.fw, 7
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fx ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 16
  %i.ga = icmp eq i64 %i.fz, %i.fw
  br i1 %i.ga, label %bb.bp, label %bb.bq, !prof !6

bb.bp:                                            ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge
  %i.gd = call fastcc ptr @GC_header_cache_miss(ptr noundef %i.fv, ptr noundef %i.fy) ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.backedge, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.1 = phi ptr [ %i.gc, %bb.bp ], [ %i.gd, %bb.bq ]
  %i.gf = tail call fastcc ptr @GC_push_contents_hdr(ptr noundef %i.fv, ptr noundef %.9.lcssa, ptr noundef %2, ptr noundef %.1, i32 noundef 1)
  br label %.backedge

.backedge:                                        ; preds = %bb.ao, %bb.aq, %bb.e, %..loopexit_crit_edge, %bb.ak, %bb.ae, %.thread, %bb.bq, %bb.br, %._crit_edge376
  %.0168.be = phi i64 [ %i.ck, %bb.ae ], [ %.0168273, %._crit_edge376 ], [ %i.dg, %bb.br ], [ %i.dg, %bb.bq ], [ %.0168273, %.thread ], [ %i.ae, %bb.e ], [ %i.ae, %..loopexit_crit_edge ], [ %.0168273, %bb.ak ], [ %i.dg, %bb.aq ], [ %i.dg, %bb.ao ] ; 2 uses
  %.0145.be = phi ptr [ %i.cq, %bb.ae ], [ %i.db, %._crit_edge376 ], [ %i.gf, %bb.br ], [ %.9.lcssa, %bb.bq ], [ %i.cv, %.thread ], [ %i.ac, %bb.e ], [ %.4149, %..loopexit_crit_edge ], [ %i.cz, %bb.ak ], [ %.8, %bb.aq ], [ %.8, %bb.ao ] ; 3 uses
  %i.gg = ptrtoint ptr %.0145.be to i64
  %i.gh = sub i64 %i.gg, %i.c
  %i.gi = or i64 %i.gh, %.0168.be
  %i.gj = icmp sgt i64 %i.gi, -1
  br i1 %i.gj, label %bb.b, label %._crit_edge277, !llvm.loop !276

._crit_edge277:                                   ; preds = %.backedge, %bb.a
  %.0145.lcssa = phi ptr [ %0, %bb.a ], [ %.0145.be, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret ptr %.0145.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_push_roots(i32 noundef range(i32 0, 2) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader34

.lr.ph:                                           ; preds = %bb.a
  %.not.i21.i = icmp eq i32 %0, 0
  br i1 %.not.i21.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %GC_push_conditional_with_exclusions.exit.us
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %GC_push_conditional_with_exclusions.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92672), i64 %indvars.iv56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.split.us.i.us, label %GC_push_conditional_with_exclusions.exit.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us, %GC_push_conditional_static.exit.us.i.us
  %.01531.us.i.us = phi ptr [ %i.al, %GC_push_conditional_static.exit.us.i.us ], [ %i.d, %.lr.ph.split.us ] ; 7 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 392), align 8
  %i.i = add i64 %i.h, -1                         ; 2 uses
  %.not17.i.us.i.us = icmp eq i64 %i.i, 0
  br i1 %.not17.i.us.i.us, label %GC_next_exclusion.exit.us.i.us, label %.lr.ph.i.us.i.us

.lr.ph.i.us.i.us:                                 ; preds = %.lr.ph.split.us.i.us, %.lr.ph.i.us.i.us
  %.016.i.us.i.us = phi i64 [ %.1.i.us.i.us, %.lr.ph.i.us.i.us ], [ %i.i, %.lr.ph.split.us.i.us ] ; 2 uses
  %.01115.i.us.i.us = phi i64 [ %.112.i.us.i.us, %.lr.ph.i.us.i.us ], [ 0, %.lr.ph.split.us.i.us ] ; 2 uses
  %i.j = add i64 %.01115.i.us.i.us, %.016.i.us.i.us
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.not14.i.us.i.us = icmp ugt ptr %i.n, %.01531.us.i.us ; 2 uses
  %i.o = add nuw i64 %i.k, 1
  %.112.i.us.i.us = select i1 %.not14.i.us.i.us, i64 %.01115.i.us.i.us, i64 %i.o ; 3 uses
  %.1.i.us.i.us = select i1 %.not14.i.us.i.us, i64 %i.k, i64 %.016.i.us.i.us ; 2 uses
  %i.p = icmp ugt i64 %.1.i.us.i.us, %.112.i.us.i.us
  br i1 %i.p, label %.lr.ph.i.us.i.us, label %GC_next_exclusion.exit.us.i.us, !llvm.loop !128

GC_next_exclusion.exit.us.i.us:                   ; preds = %.lr.ph.i.us.i.us, %.lr.ph.split.us.i.us
  %.011.lcssa.i.us.i.us = phi i64 [ 0, %.lr.ph.split.us.i.us ], [ %.112.i.us.i.us, %.lr.ph.i.us.i.us ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %.011.lcssa.i.us.i.us ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i.not.us.i.us = icmp ugt ptr %i.s, %.01531.us.i.us
  br i1 %.not.i.not.us.i.us, label %bb.b, label %.split.us.i.loopexit.us

bb.b:                                             ; preds = %GC_next_exclusion.exit.us.i.us
  %i.t = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not.us.i.us = icmp ult ptr %i.t, %i.f
  br i1 %.not.us.i.us, label %bb.c, label %.split.us.i.loopexit.us

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ugt ptr %i.t, %.01531.us.i.us
  br i1 %i.u, label %bb.d, label %GC_push_conditional_static.exit.us.i.us

bb.d:                                             ; preds = %bb.c
  %.b.i.i24.us.i.us = load i1, ptr @GC_manual_vdb, align 4
  %i.v = load i32, ptr @clear_refs_fd, align 4
  %i.w = icmp eq i32 %i.v, -1
  %narrow.i.not.i25.us.i.us = select i1 %.b.i.i24.us.i.us, i1 true, i1 %i.w
  br i1 %narrow.i.not.i25.us.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @GC_push_selected(ptr noundef %.01531.us.i.us, ptr noundef nonnull %i.t, ptr noundef nonnull @GC_static_page_was_dirty)
  br label %GC_push_conditional_static.exit.us.i.us

bb.f:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %.01531.us.i.us to i64
  %i.y = add i64 %i.x, 7
  %i.z = and i64 %i.y, -8                         ; 3 uses
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %.not.i.i22.us.i.us = icmp ult i64 %i.z, %i.ac
  br i1 %.not.i.i22.us.i.us, label %bb.g, label %GC_push_conditional_static.exit.us.i.us

bb.g:                                             ; preds = %bb.f
  %i.ad = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store volatile ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.af = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i23.us.i.us = icmp ult ptr %i.af, %i.ag
  br i1 %.not8.i.i23.us.i.us, label %bb.h, label %.split33.us.i

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nuw i64 %i.ac, %i.z
  %i.ai = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.aa, ptr %i.ai, align 8
  %i.aj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ah, ptr %i.ak, align 8
  br label %GC_push_conditional_static.exit.us.i.us

GC_push_conditional_static.exit.us.i.us:          ; preds = %bb.h, %bb.f, %bb.e, %bb.c
  %i.al = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.f
  br i1 %i.am, label %.lr.ph.split.us.i.us, label %GC_push_conditional_with_exclusions.exit.us

bb.i:                                             ; preds = %.split.us.i.loopexit.us
  tail call fastcc void @GC_push_selected(ptr noundef %.01531.us.i.us, ptr noundef nonnull %i.f, ptr noundef nonnull @GC_static_page_was_dirty)
  br label %GC_push_conditional_with_exclusions.exit.us

bb.j:                                             ; preds = %.split.us.i.loopexit.us
  %i.an = ptrtoint ptr %.01531.us.i.us to i64
  %i.ao = add i64 %i.an, 7
  %i.ap = and i64 %i.ao, -8                       ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = ptrtoint ptr %i.f to i64
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %.not.i.i.i.us = icmp ult i64 %i.ap, %i.as
  br i1 %.not.i.i.i.us, label %bb.k, label %GC_push_conditional_with_exclusions.exit.us

bb.k:                                             ; preds = %bb.j
  %i.at = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store volatile ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.av = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i.i.us = icmp ult ptr %i.av, %i.aw
  br i1 %.not8.i.i.i.us, label %bb.l, label %.split.us

bb.l:                                             ; preds = %bb.k
  %i.ax = sub nuw i64 %i.as, %i.ap
  %i.ay = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.aq, ptr %i.ay, align 8
  %i.az = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.ax, ptr %i.ba, align 8
  br label %GC_push_conditional_with_exclusions.exit.us

GC_push_conditional_with_exclusions.exit.us:      ; preds = %GC_push_conditional_static.exit.us.i.us, %bb.l, %bb.j, %bb.i, %.lr.ph.split.us
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next57, %i.bc
  br i1 %i.bd, label %.lr.ph.split.us, label %.preheader34, !llvm.loop !279

.split.us.i.loopexit.us:                          ; preds = %bb.b, %GC_next_exclusion.exit.us.i.us
  %.b.i.i.i.us = load i1, ptr @GC_manual_vdb, align 4
  %i.be = load i32, ptr @clear_refs_fd, align 4
  %i.bf = icmp eq i32 %i.be, -1
  %narrow.i.not.i.i.us = select i1 %.b.i.i.i.us, i1 true, i1 %i.bf
  br i1 %narrow.i.not.i.i.us, label %bb.j, label %bb.i

.preheader34:                                     ; preds = %GC_push_conditional_with_exclusions.exit, %GC_push_conditional_with_exclusions.exit.us, %bb.a
  %i.bg = load i32, ptr @GC_n_kinds, align 4      ; 2 uses
  %.not46 = icmp eq i32 %i.bg, 0
  br i1 %.not46, label %._crit_edge.split, label %.lr.ph45

.lr.ph45:                                         ; preds = %.preheader34
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %.lr.ph45.split.preheader, label %._crit_edge.split, !prof !6

.lr.ph45.split.preheader:                         ; preds = %.lr.ph45
  %wide.trip.count = zext i32 %i.bg to i64
  %.pre62 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %.lr.ph45.split

.lr.ph.split:                                     ; preds = %.lr.ph, %GC_push_conditional_with_exclusions.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %GC_push_conditional_with_exclusions.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92672), i64 %indvars.iv ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %.lr.ph.i, label %GC_push_conditional_with_exclusions.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %.pre41.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 392), align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %GC_push_conditional_static.exit.i, %.lr.ph.i
  %i.bm = phi i64 [ %i.df, %GC_push_conditional_static.exit.i ], [ %.pre41.i, %.lr.ph.i ] ; 3 uses
  %.01531.i = phi ptr [ %i.de, %GC_push_conditional_static.exit.i ], [ %i.bi, %.lr.ph.i ] ; 5 uses
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  %.not17.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not17.i.i, label %GC_next_exclusion.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.i, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ %i.bn, %.lr.ph.split.i ] ; 2 uses
  %.01115.i.i = phi i64 [ %.112.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.bo = add i64 %.01115.i.i, %.016.i.i
  %i.bp = lshr i64 %i.bo, 1                       ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %.not14.i.i = icmp ugt ptr %i.bs, %.01531.i     ; 2 uses
  %i.bt = add nuw i64 %i.bp, 1
  %.112.i.i = select i1 %.not14.i.i, i64 %.01115.i.i, i64 %i.bt ; 3 uses
  %.1.i.i = select i1 %.not14.i.i, i64 %i.bp, i64 %.016.i.i ; 2 uses
  %i.bu = icmp ugt i64 %.1.i.i, %.112.i.i
  br i1 %i.bu, label %.lr.ph.i.i, label %GC_next_exclusion.exit.i, !llvm.loop !128

GC_next_exclusion.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph.split.i
  %.011.lcssa.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %.112.i.i, %.lr.ph.i.i ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %.011.lcssa.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %.not.i.not.i = icmp ugt ptr %i.bx, %.01531.i
  br i1 %.not.i.not.i, label %bb.m, label %.split.us.i.loopexit35

bb.m:                                             ; preds = %GC_next_exclusion.exit.i
  %i.by = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i = icmp ult ptr %i.by, %i.bk
  br i1 %.not.i, label %bb.p, label %.split.us.i.loopexit35

.split.us.i.loopexit35:                           ; preds = %GC_next_exclusion.exit.i, %bb.m
  %i.bz = ptrtoint ptr %.01531.i to i64
  %i.ca = add i64 %i.bz, 7
  %i.cb = and i64 %i.ca, -8                       ; 3 uses
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = ptrtoint ptr %i.bk to i64
  %i.ce = and i64 %i.cd, -8                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cb, %i.ce
  br i1 %.not.i.i.i, label %bb.n, label %GC_push_conditional_with_exclusions.exit

bb.n:                                             ; preds = %.split.us.i.loopexit35
  %i.cf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store volatile ptr %i.cg, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ch = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i.i = icmp ult ptr %i.ch, %i.ci
  br i1 %.not8.i.i.i, label %bb.o, label %.split.us

.split.us:                                        ; preds = %bb.n, %bb.k
  %i.cj = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cj(ptr noundef nonnull @.str.62) #45, !inline_history !280
  tail call void @abort() #48
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ck = sub nuw i64 %i.ce, %i.cb
  %i.cl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.cc, ptr %i.cl, align 8
  %i.cm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.ck, ptr %i.cn, align 8
  br label %GC_push_conditional_with_exclusions.exit

bb.p:                                             ; preds = %bb.m
  %i.co = icmp ugt ptr %i.by, %.01531.i
  br i1 %i.co, label %bb.q, label %GC_push_conditional_static.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cp = ptrtoint ptr %.01531.i to i64
  %i.cq = add i64 %i.cp, 7
  %i.cr = and i64 %i.cq, -8                       ; 3 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = ptrtoint ptr %i.by to i64
  %i.cu = and i64 %i.ct, -8                       ; 2 uses
  %.not.i.i22.i = icmp ult i64 %i.cr, %i.cu
  br i1 %.not.i.i22.i, label %bb.r, label %GC_push_conditional_static.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store volatile ptr %i.cw, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cx = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i23.i = icmp ult ptr %i.cx, %i.cy
  br i1 %.not8.i.i23.i, label %bb.s, label %.split33.us.i

.split33.us.i:                                    ; preds = %bb.r, %bb.g
  %i.cz = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cz(ptr noundef nonnull @.str.62) #45, !inline_history !280
  tail call void @abort() #48
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.da = sub nuw i64 %i.cu, %i.cr
  %i.db = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.cs, ptr %i.db, align 8
  %i.dc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.da, ptr %i.dd, align 8
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 392), align 8
  %.pre42.i = load ptr, ptr %i.bw, align 8
  br label %GC_push_conditional_static.exit.i

GC_push_conditional_static.exit.i:                ; preds = %bb.s, %bb.q, %bb.p
  %i.de = phi ptr [ %i.bx, %bb.p ], [ %i.bx, %bb.q ], [ %.pre42.i, %bb.s ] ; 2 uses
  %i.df = phi i64 [ %i.bm, %bb.p ], [ %i.bm, %bb.q ], [ %.pre.i, %bb.s ]
  %i.dg = icmp ult ptr %i.de, %i.bk
  br i1 %i.dg, label %.lr.ph.split.i, label %GC_push_conditional_with_exclusions.exit

GC_push_conditional_with_exclusions.exit:         ; preds = %GC_push_conditional_static.exit.i, %.lr.ph.split, %.split.us.i.loopexit35, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %.lr.ph.split, label %.preheader34, !llvm.loop !279

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %GC_set_mark_bit.exit
  %i.dk = phi ptr [ %.pre62, %.lr.ph45.split.preheader ], [ %i.gk, %GC_set_mark_bit.exit ] ; 6 uses
  %i.dl = phi ptr [ %.pre62, %.lr.ph45.split.preheader ], [ %i.gl, %GC_set_mark_bit.exit ] ; 5 uses
  %indvars.iv59 = phi i64 [ 0, %.lr.ph45.split.preheader ], [ %indvars.iv.next60, %GC_set_mark_bit.exit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv59
  %i.dn = load ptr, ptr %i.dm, align 16           ; 3 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dp = lshr i64 %i.do, 22                      ; 2 uses
  %i.dq = and i64 %i.dp, 2047
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.dq
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph45.split
  %.0.in.i = phi ptr [ %i.dr, %.lr.ph45.split ], [ %i.dx, %bb.t ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = icmp ne i64 %i.dt, %i.dp
  %i.dv = icmp ne ptr %.0.i, %i.dl
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.dw, label %bb.t, label %bb.u, !llvm.loop !22

bb.u:                                             ; preds = %bb.t
  %i.dy = lshr i64 %i.do, 12
  %i.dz = and i64 %i.dy, 1023
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8            ; 4 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %GC_set_mark_bit.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u
  %i.ed = and i64 %i.do, -4096
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = icmp ult ptr %i.eb, inttoptr (i64 4096 to ptr)
  br i1 %i.ef, label %.lr.ph.i18, label %._crit_edge.i

.lr.ph.i18:                                       ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.ew, %GC_find_header.exit.i ], [ %i.eb, %.preheader.i ]
  %.03745.i = phi ptr [ %i.ei, %GC_find_header.exit.i ], [ %i.ee, %.preheader.i ]
  %i.eg = ptrtoint ptr %.03646.i to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.eh ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ek = lshr i64 %i.ej, 22                      ; 2 uses
  %i.el = and i64 %i.ek, 2047
  %i.em = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i18
  %.0.in.i.i = phi ptr [ %i.em, %.lr.ph.i18 ], [ %i.es, %bb.v ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = icmp ne i64 %i.eo, %i.ek
  %i.eq = icmp ne ptr %.0.i.i, %i.dl
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.er, label %bb.v, label %GC_find_header.exit.i, !llvm.loop !13

GC_find_header.exit.i:                            ; preds = %bb.v
  %i.et = lshr i64 %i.ej, 12
  %i.eu = and i64 %i.et, 1023
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8            ; 3 uses
  %i.ex = icmp ult ptr %i.ew, inttoptr (i64 4096 to ptr)
  br i1 %i.ex, label %.lr.ph.i18, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.ei, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.ee, %.preheader.i ], [ %i.ei, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.eb, %.preheader.i ], [ %i.ew, %GC_find_header.exit.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = and i8 %i.ez, 4
  %.not.i17 = icmp eq i8 %i.fa, 0
  br i1 %.not.i17, label %bb.w, label %GC_set_mark_bit.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.fb = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.fc = and i64 %i.fb, -8                       ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = and i64 %i.fb, 4088
  %i.ff = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8            ; 3 uses
  %i.fh = urem i64 %i.fe, %i.fg
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %i.fd, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.fm = icmp ugt ptr %i.fk, %i.fl
  %i.fn = icmp ult i64 %i.fg, 4097
  %or.cond.not.i.not33 = and i1 %i.fn, %i.fm
  %.not42.i = icmp uge ptr %i.dn, %i.fk
  %cond.i.not30 = or i1 %.not42.i, %or.cond.not.i.not33
  %.not16 = icmp eq i64 %i.fc, 0
  %or.cond29 = or i1 %.not16, %cond.i.not30
  br i1 %or.cond29, label %GC_set_mark_bit.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = ptrtoint ptr %i.fj to i64               ; 3 uses
  %i.fp = lshr i64 %i.fo, 22                      ; 2 uses
  %i.fq = and i64 %i.fp, 2047
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.fq
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.0.in.i.i19 = phi ptr [ %i.fr, %bb.x ], [ %i.fx, %bb.y ]
  %.0.i.i20 = load ptr, ptr %.0.in.i.i19, align 8 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 8208
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = icmp ne i64 %i.ft, %i.fp
  %i.fv = icmp ne ptr %.0.i.i20, %i.dk
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 8216
  br i1 %i.fw, label %bb.y, label %GC_find_header.exit.i21, !llvm.loop !13

GC_find_header.exit.i21:                          ; preds = %bb.y
  %i.fy = lshr i64 %i.fo, 12
  %i.fz = and i64 %i.fy, 1023
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i20, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = lshr i64 %i.fo, 4
  %i.gd = and i64 %i.gc, 255
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1
  %.not.i22 = icmp eq i8 %i.gg, 0
  br i1 %.not.i22, label %bb.z, label %GC_set_mark_bit.exit

bb.z:                                             ; preds = %GC_find_header.exit.i21
  store i8 1, ptr %i.gf, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 56 ; 2 uses
  %i.gi = load volatile i64, ptr %i.gh, align 8
  %i.gj = add i64 %i.gi, 1
  store volatile i64 %i.gj, ptr %i.gh, align 8
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %GC_set_mark_bit.exit

GC_set_mark_bit.exit:                             ; preds = %bb.w, %._crit_edge.i, %bb.u, %bb.z, %GC_find_header.exit.i21
  %i.gk = phi ptr [ %i.dk, %bb.w ], [ %i.dk, %._crit_edge.i ], [ %i.dk, %bb.u ], [ %.pre, %bb.z ], [ %i.dk, %GC_find_header.exit.i21 ]
  %i.gl = phi ptr [ %i.dl, %bb.w ], [ %i.dl, %._crit_edge.i ], [ %i.dl, %bb.u ], [ %.pre, %bb.z ], [ %i.dk, %GC_find_header.exit.i21 ]
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph45.split, !llvm.loop !281

._crit_edge.split:                                ; preds = %GC_set_mark_bit.exit, %.lr.ph45, %.preheader34
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 288), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 296))
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 320))
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 352))
  %i.gm = load i32, ptr @GC_no_dls, align 4
  %i.gn = icmp ne i32 %i.gm, 0
  %i.go = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 400), align 8
  %i.gp = icmp ne i32 %i.go, 0
  %or.cond = select i1 %i.gn, i1 true, i1 %i.gp
  br i1 %or.cond, label %bb.aa, label %GC_push_thread_structures.exit

bb.aa:                                            ; preds = %._crit_edge.split
  %i.gq = and i64 add (i64 ptrtoint (ptr @GC_threads to i64), i64 7), -16 ; 3 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  %.not.i.i = icmp ult i64 %i.gq, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @GC_threads, i64 2048) to i64)
  br i1 %.not.i.i, label %bb.ab, label %GC_push_thread_structures.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gs = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store volatile ptr %i.gt, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gu = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i = icmp ult ptr %i.gu, %i.gv
  br i1 %.not8.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gw = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.gw(ptr noundef nonnull @.str.62) #45, !inline_history !282
  tail call void @abort() #48
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gx = sub nuw i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @GC_threads, i64 2048) to i64), %i.gq
  %i.gy = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.gr, ptr %i.gy, align 8
  %i.gz = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.gx, ptr %i.ha, align 8
  br label %GC_push_thread_structures.exit

GC_push_thread_structures.exit:                   ; preds = %bb.ad, %bb.aa, %._crit_edge.split
  %i.hb = load ptr, ptr @GC_push_typed_structures, align 8
  %.not = icmp eq ptr %i.hb, null
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %GC_push_thread_structures.exit
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448))
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %GC_push_thread_structures.exit
  %.b = load i1, ptr @GC_world_stopped, align 4
  br i1 %.b, label %.preheader, label %GC_mark_thread_local_free_lists.exit

.preheader:                                       ; preds = %bb.af, %._crit_edge.i25
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i25 ], [ 0, %bb.af ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %indvars.iv.i
  %i.hd = load volatile ptr, ptr %i.hc, align 8   ; 2 uses
  %.not8.i = icmp eq ptr %i.hd, null
  br i1 %.not8.i, label %._crit_edge.i25, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader, %GC_mark_thread_local_fls_for.exit.i
  %.09.i = phi ptr [ %i.oa, %GC_mark_thread_local_fls_for.exit.i ], [ %i.hd, %.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.09.i, i64 40
  %i.hf = load i8, ptr %i.he, align 8
  %i.hg = and i8 %i.hf, 1
  %.not7.i = icmp eq i8 %i.hg, 0
  br i1 %.not7.i, label %bb.ag, label %GC_mark_thread_local_fls_for.exit.i

bb.ag:                                            ; preds = %.lr.ph.i23
  %i.hh = getelementptr inbounds nuw i8, ptr %.09.i, i64 104
  %i.hi = getelementptr inbounds nuw i8, ptr %.09.i, i64 704
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %GC_set_fl_marks.exit31.i.i, %bb.ag
  %indvars.iv.i.i = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next.i.i, %GC_set_fl_marks.exit31.i.i ] ; 4 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i.i ; 3 uses
  %i.hj = load atomic volatile i64, ptr %invariant.gep.i.i monotonic, align 8 ; 5 uses
  %i.hk = icmp ugt i64 %i.hj, 4096
  br i1 %i.hk, label %bb.ah, label %GC_set_fl_marks.exit.i.i

bb.ah:                                            ; preds = %.preheader.i.i
  %i.hl = lshr i64 %i.hj, 22                      ; 2 uses
  %i.hm = and i64 %i.hl, 2047
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.hm
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.0.in.i.i.i.i = phi ptr [ %i.hn, %bb.ah ], [ %i.hu, %bb.ai ]
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8208
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = icmp ne i64 %i.hq, %i.hl
  %i.hs = icmp ne ptr %.0.i.i.i.i, %i.ho
  %i.ht = select i1 %i.hr, i1 %i.hs, i1 false
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8216
  br i1 %i.ht, label %bb.ai, label %GC_find_header.exit.i.i.i, !llvm.loop !13

GC_find_header.exit.i.i.i:                        ; preds = %bb.ai
  %i.hv = inttoptr i64 %i.hj to ptr
  %i.hw = and i64 %i.hj, -4096                    ; 2 uses
  %i.hx = inttoptr i64 %i.hw to ptr
  br label %.sink.split

.sink.split.loopexit:                             ; preds = %bb.ao
  br label %.sink.split, !llvm.loop !13

.sink.split:                                      ; preds = %.sink.split.loopexit, %GC_find_header.exit.i.i.i
  %.sink118 = phi i64 [ %i.hj, %GC_find_header.exit.i.i.i ], [ %i.in, %.sink.split.loopexit ]
  %.0.i31.i.i.i.sink = phi ptr [ %.0.i.i.i.i, %GC_find_header.exit.i.i.i ], [ %.0.i31.i.i.i, %.sink.split.loopexit ]
  %.024.i.i.i.ph = phi ptr [ %i.hv, %GC_find_header.exit.i.i.i ], [ %i.il, %.sink.split.loopexit ]
  %.022.i.i.i.ph = phi i64 [ %i.hw, %GC_find_header.exit.i.i.i ], [ %i.io, %.sink.split.loopexit ]
  %.019.i.i.i.ph = phi ptr [ %i.hx, %GC_find_header.exit.i.i.i ], [ %i.ip, %.sink.split.loopexit ]
  %i.hy = lshr i64 %.sink118, 12
  %i.hz = and i64 %i.hy, 1023
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.0.i31.i.i.i.sink, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 56 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.am
  %.024.i.i.i = phi ptr [ %i.il, %bb.am ], [ %.024.i.i.i.ph, %.sink.split ] ; 2 uses
  %.022.i.i.i = phi i64 [ %i.io, %bb.am ], [ %.022.i.i.i.ph, %.sink.split ]
  %i.ie = ptrtoint ptr %.024.i.i.i to i64
  %i.if = sub i64 %i.ie, %.022.i.i.i
  %i.ig = lshr i64 %i.if, 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ig ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1
  %.not28.i.i.i = icmp eq i8 %i.ii, 0
  br i1 %.not28.i.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.ih, align 1
  %i.ij = load volatile i64, ptr %i.id, align 8
  %i.ik = add i64 %i.ij, 1
  store volatile i64 %i.ik, ptr %i.id, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.il = load ptr, ptr %.024.i.i.i, align 8      ; 4 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %GC_set_fl_marks.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = ptrtoint ptr %i.il to i64               ; 3 uses
  %i.io = and i64 %i.in, -4096                    ; 3 uses
  %i.ip = inttoptr i64 %i.io to ptr               ; 2 uses
  %.not29.i.i.i = icmp eq ptr %.019.i.i.i.ph, %i.ip
  br i1 %.not29.i.i.i, label %bb.aj, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iq = lshr i64 %i.in, 22                      ; 2 uses
  %i.ir = and i64 %i.iq, 2047
  %i.is = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ir
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.0.in.i30.i.i.i = phi ptr [ %i.is, %bb.an ], [ %i.iz, %bb.ao ]
  %.0.i31.i.i.i = load ptr, ptr %.0.in.i30.i.i.i, align 8 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.i31.i.i.i, i64 8208
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = icmp ne i64 %i.iv, %i.iq
  %i.ix = icmp ne ptr %.0.i31.i.i.i, %i.it
  %i.iy = select i1 %i.iw, i1 %i.ix, i1 false
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i31.i.i.i, i64 8216
  br i1 %i.iy, label %bb.ao, label %.sink.split.loopexit, !llvm.loop !13

GC_set_fl_marks.exit.i.i:                         ; preds = %bb.al, %.preheader.i.i
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 200
  %i.ja = load atomic volatile i64, ptr %gep.1.i.i monotonic, align 8 ; 5 uses
  %i.jb = icmp ugt i64 %i.ja, 4096
  br i1 %i.jb, label %bb.ap, label %GC_set_fl_marks.exit.1.i.i

bb.ap:                                            ; preds = %GC_set_fl_marks.exit.i.i
  %i.jc = lshr i64 %i.ja, 22                      ; 2 uses
  %i.jd = and i64 %i.jc, 2047
  %i.je = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.jd
  %i.jf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.0.in.i.i.1.i.i = phi ptr [ %i.je, %bb.ap ], [ %i.jl, %bb.aq ]
  %.0.i.i.1.i.i = load ptr, ptr %.0.in.i.i.1.i.i, align 8 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i.i.1.i.i, i64 8208
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = icmp ne i64 %i.jh, %i.jc
  %i.jj = icmp ne ptr %.0.i.i.1.i.i, %i.jf
  %i.jk = select i1 %i.ji, i1 %i.jj, i1 false
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i.i.1.i.i, i64 8216
  br i1 %i.jk, label %bb.aq, label %GC_find_header.exit.i.1.i.i, !llvm.loop !13

GC_find_header.exit.i.1.i.i:                      ; preds = %bb.aq
  %i.jm = inttoptr i64 %i.ja to ptr
  %i.jn = and i64 %i.ja, -4096                    ; 2 uses
  %i.jo = inttoptr i64 %i.jn to ptr
  br label %.sink.split119

.sink.split119.loopexit:                          ; preds = %bb.aw
  br label %.sink.split119, !llvm.loop !13

.sink.split119:                                   ; preds = %.sink.split119.loopexit, %GC_find_header.exit.i.1.i.i
  %.sink121 = phi i64 [ %i.ja, %GC_find_header.exit.i.1.i.i ], [ %i.ke, %.sink.split119.loopexit ]
  %.0.i31.i.1.i.i.sink = phi ptr [ %.0.i.i.1.i.i, %GC_find_header.exit.i.1.i.i ], [ %.0.i31.i.1.i.i, %.sink.split119.loopexit ]
  %.024.i.1.i.i.ph = phi ptr [ %i.jm, %GC_find_header.exit.i.1.i.i ], [ %i.kc, %.sink.split119.loopexit ]
  %.022.i.1.i.i.ph = phi i64 [ %i.jn, %GC_find_header.exit.i.1.i.i ], [ %i.kf, %.sink.split119.loopexit ]
  %.019.i.1.i.i.ph = phi ptr [ %i.jo, %GC_find_header.exit.i.1.i.i ], [ %i.kg, %.sink.split119.loopexit ]
  %i.jp = lshr i64 %.sink121, 12
  %i.jq = and i64 %i.jp, 1023
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.0.i31.i.1.i.i.sink, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8            ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 56 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split119, %bb.au
  %.024.i.1.i.i = phi ptr [ %i.kc, %bb.au ], [ %.024.i.1.i.i.ph, %.sink.split119 ] ; 2 uses
  %.022.i.1.i.i = phi i64 [ %i.kf, %bb.au ], [ %.022.i.1.i.i.ph, %.sink.split119 ]
  %i.jv = ptrtoint ptr %.024.i.1.i.i to i64
  %i.jw = sub i64 %i.jv, %.022.i.1.i.i
  %i.jx = lshr i64 %i.jw, 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jx ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1
  %.not28.i.1.i.i = icmp eq i8 %i.jz, 0
  br i1 %.not28.i.1.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 1, ptr %i.jy, align 1
  %i.ka = load volatile i64, ptr %i.ju, align 8
  %i.kb = add i64 %i.ka, 1
  store volatile i64 %i.kb, ptr %i.ju, align 8
  br label %bb.at
end_hunk_4
begin_hunk_5_@GC_allocobj:bb.a
GC_continue_reclaim.exit:                         ; preds = %bb.f, %GC_reclaim_small_nonempty_block.exit.i, %bb.d
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  %i.bp = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %GC_continue_reclaim.exit
  %i.br = load i32, ptr %i.i, align 4
  %.b.i = load i1, ptr @GC_debugging_started, align 4
  %spec.store.select.i = select i1 %.b.i, i32 1, i32 %i.br
  %i.bs = tail call fastcc ptr @GC_allochblk(i64 noundef %i.j, i32 noundef %1, i32 noundef 0) ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %GC_new_hblk.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.l, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = lshr i64 %i.bu, 22                      ; 2 uses
  %i.bw = and i64 %i.bv, 2047
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bw
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0.in.i.i35 = phi ptr [ %i.bx, %bb.l ], [ %i.ce, %bb.m ]
  %.0.i.i36 = load ptr, ptr %.0.in.i.i35, align 8 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 8208
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = icmp ne i64 %i.ca, %i.bv
  %i.cc = icmp ne ptr %.0.i.i36, %i.by
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 8216
  br i1 %i.cd, label %bb.m, label %GC_find_header.exit.i37, !llvm.loop !13

GC_find_header.exit.i37:                          ; preds = %bb.m
  %i.cf = lshr i64 %i.bu, 12
  %i.cg = and i64 %i.cf, 1023
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i36, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i64, ptr %i.cj, align 8            ; 4 uses
  %i.cl = icmp ugt i64 %i.ck, 2048
  br i1 %i.cl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %GC_find_header.exit.i37
  %.rhs.trunc.i.i = trunc nuw nsw i64 %i.ck to i16
  %i.cm = urem i16 4096, %.rhs.trunc.i.i
  %narrow.i.i = sub nuw nsw i16 4096, %i.cm
  %i.cn = lshr i16 %narrow.i.i, 4
  %i.co = zext nneg i16 %i.cn to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %GC_find_header.exit.i37
  %i.cp = phi i32 [ %i.co, %bb.n ], [ 256, %GC_find_header.exit.i37 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cr = lshr i64 %i.ck, 4
  %i.cs = trunc i64 %i.cr to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.012.i.i = phi i32 [ 0, %bb.o ], [ %i.cv, %bb.p ] ; 2 uses
  %i.ct = zext nneg i32 %.012.i.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  store i8 1, ptr %i.cu, align 1
  %i.cv = add i32 %.012.i.i, %i.cs                ; 2 uses
  %.not.i.i = icmp ugt i32 %i.cv, %i.cp
  br i1 %.not.i.i, label %GC_set_hdr_marks.exit.i, label %bb.p, !llvm.loop !107

GC_set_hdr_marks.exit.i:                          ; preds = %bb.p
  %i.cw = udiv i64 4096, %i.ck
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  store volatile i64 %i.cw, ptr %i.cx, align 8
  br label %bb.q

bb.q:                                             ; preds = %GC_set_hdr_marks.exit.i, %bb.k
  %i.cy = load ptr, ptr %i.b, align 16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %0
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call fastcc ptr @GC_build_fl(ptr noundef %i.bs, i64 noundef %i.m, i32 noundef %spec.store.select.i, ptr noundef %i.da)
  %i.dc = load ptr, ptr %i.b, align 16
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %0
  store ptr %i.db, ptr %i.dd, align 8
  br label %GC_new_hblk.exit

GC_new_hblk.exit:                                 ; preds = %bb.j, %bb.q
  %i.de = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %GC_new_hblk.exit
  store atomic i8 1, ptr @GC_collecting monotonic, align 4
  %i.dg = load i32, ptr @GC_incremental, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = load i64, ptr @GC_time_limit, align 8
  %i.dj = icmp ne i64 %i.di, 999999
  %or.cond5.not34 = select i1 %i.dh, i1 true, i1 %i.dj
  %i.dk = icmp ne i32 %.02740, 0
  %or.cond7 = select i1 %or.cond5.not34, i1 true, i1 %i.dk
  %i.dl = load i32, ptr @GC_dont_gc, align 4
  %i.dm = icmp ne i32 %i.dl, 0
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.dm
  br i1 %or.cond9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @GC_collect_a_little_inner(i32 noundef 1)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dn = tail call fastcc i32 @GC_collect_or_expand(i64 noundef 1, i32 noundef 0, i32 noundef %.02839)
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.t
  %.129 = phi i32 [ %.02839, %bb.s ], [ 1, %bb.t ]
  %.1 = phi i32 [ 1, %bb.s ], [ %.02740, %bb.t ]
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.do = icmp eq ptr %.pre, null
  br i1 %i.do, label %bb.b, label %._crit_edge, !llvm.loop !332

._crit_edge:                                      ; preds = %GC_continue_reclaim.exit, %GC_new_hblk.exit, %bb.v, %.preheader
  %.lcssa = phi ptr [ %i.f, %.preheader ], [ %i.de, %GC_new_hblk.exit ], [ %i.bp, %GC_continue_reclaim.exit ], [ %.pre, %bb.v ]
  store i32 0, ptr @GC_fail_count, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %._crit_edge, %bb.u
  %.0 = phi ptr [ %.lcssa, %._crit_edge ], [ null, %bb.u ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_alloc_large_and_clear(i64 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @GC_alloc_large(i64 noundef %0, i32 noundef %1, i32 noundef %2) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @GC_debugging_started, align 4
  br i1 %.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [48 x i8], ptr @GC_obj_kinds, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add i64 %0, 4095
  %i.g = and i64 %i.f, -4096
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_collect_or_expand(i64 noundef range(i64 0, 4503599627370496) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = call i32 @pthread_setcancelstate(i32 noundef 1, ptr noundef nonnull %i.a) #45 ; 0 uses
  %i.c = load i32, ptr @GC_incremental, align 4
  %i.d = icmp ne i32 %i.c, 0
  %i.e = load i32, ptr @GC_dont_gc, align 4
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @GC_dont_expand, align 4
  %i.h = icmp ne i32 %i.g, 0
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8 ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  %or.cond3 = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond3, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8 ; 2 uses
  %i.l = load i64, ptr @last_fo_entries, align 8  ; 2 uses
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr @last_bytes_finalized, align 8
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  %i.p = or i64 %i.o, %i.n
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sub nuw i64 %i.k, %i.l
  %i.r = load i64, ptr @GC_allocd_bytes_per_finalizer, align 8
  %i.s = mul i64 %i.r, %i.q
  %i.t = icmp ugt i64 %i.s, %i.i
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = call fastcc i32 @GC_should_collect()
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pr.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e
  %.pr = phi i64 [ %.pr.pre, %._crit_edge ], [ %i.i, %bb.e ]
  %.not39 = icmp eq i64 %.pr, 0
  br i1 %.not39, label %bb.h, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.g
  %.pre = load i32, ptr @GC_dont_expand, align 4
  %i.v = icmp ne i32 %.pre, 0
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.w = phi i1 [ %i.v, %..thread_crit_edge ], [ true, %bb.b ]
  %i.x = icmp ne i32 %2, 0
  %or.cond5 = and i1 %i.x, %i.w
  %i.y = load ptr, ptr @GC_default_stop_func, align 8
  %spec.select = select i1 %or.cond5, ptr @GC_never_stop_func, ptr %i.y
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.z = phi ptr [ @GC_never_stop_func, %bb.g ], [ %spec.select, %.thread ]
  %i.aa = call fastcc i32 @GC_try_to_collect_inner(ptr noundef %i.z)
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = icmp ne i32 %2, 0
  %or.cond7 = and i1 %i.ac, %i.ab
  br i1 %or.cond7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  store i64 %i.ad, ptr @last_fo_entries, align 8
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  store i64 %i.ae, ptr @last_bytes_finalized, align 8
  br label %bb.x

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.a
  %.028 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.f ]
  %i.af = load i64, ptr @GC_arrays, align 8
  %i.ag = load i64, ptr @GC_heapsize_at_forced_unmap, align 8
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = load i64, ptr @GC_free_space_divisor, align 8
  %i.aj = shl i64 %i.ai, 12
  %i.ak = udiv i64 %i.ah, %i.aj
  %i.al = add nuw nsw i64 %i.ak, %0               ; 2 uses
  %i.am = icmp samesign ugt i64 %i.al, 2048
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not40 = icmp eq i32 %1, 0
  br i1 %.not40, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr @GC_black_list_spacing, align 8
  %i.ao = lshr i64 %i.an, 11
  %i.ap = and i64 %i.ao, 9007199254740990
  %spec.select45 = call i64 @llvm.umin.i64(i64 %i.ap, i64 %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i64 [ %spec.select45, %bb.l ], [ 4, %bb.k ]
  %i.aq = add nuw nsw i64 %.0, %0
  %i.ar = call i64 @llvm.umax.i64(i64 %i.aq, i64 2048)
  %.027 = call i64 @llvm.umin.i64(i64 %i.ar, i64 4503599627370495)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.1 = phi i64 [ %.027, %bb.m ], [ %i.al, %bb.j ] ; 2 uses
  %i.as = call fastcc i32 @GC_expand_hp_inner(i64 noundef %.1)
  %.not41 = icmp eq i32 %i.as, 0
  br i1 %.not41, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.at = icmp eq i64 %.1, %0
  br i1 %i.at, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = call fastcc i32 @GC_expand_hp_inner(i64 noundef %0)
  %.not42 = icmp eq i32 %i.au, 0
  br i1 %.not42, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.028, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = call fastcc i32 @GC_try_to_collect_inner(ptr noundef nonnull @GC_never_stop_func) ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.aw = load i32, ptr @GC_fail_count, align 4   ; 2 uses
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @GC_fail_count, align 4
  %i.ay = zext i32 %i.aw to i64
  %i.az = load i64, ptr @GC_max_retries, align 8
  %i.ba = icmp ugt i64 %i.az, %i.ay
  %i.bb = load ptr, ptr @GC_current_warn_proc, align 8 ; 2 uses
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void %i.bb(ptr noundef nonnull @.str.211, i64 noundef 0) #45
  %i.bc = call fastcc i32 @GC_try_to_collect_inner(ptr noundef nonnull @GC_never_stop_func) ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bd = load i64, ptr @GC_arrays, align 8
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.bf, 20
  call void %i.bb(ptr noundef nonnull @.str.212, i64 noundef %i.bg) #45
  br label %bb.x

bb.v:                                             ; preds = %bb.p, %bb.n
  %i.bh = load i32, ptr @GC_fail_count, align 4
  %.not43 = icmp eq i32 %i.bh, 0
  %i.bi = load i32, ptr @GC_print_stats, align 4
  %.not44 = icmp eq i32 %i.bi, 0
  %or.cond46 = select i1 %.not43, i1 true, i1 %.not44, !prof !3
  br i1 %or.cond46, label %bb.x, label %bb.w, !prof !3

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.213)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.r, %bb.t, %bb.u, %bb.i
  %.029 = phi i32 [ 1, %bb.i ], [ 0, %bb.u ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.w ], [ 1, %bb.v ]
  %i.bj = load i32, ptr %i.a, align 4
  %i.bk = call i32 @pthread_setcancelstate(i32 noundef %i.bj, ptr noundef null) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_unmap_gap(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = load i64, ptr @GC_page_size, align 8     ; 4 uses
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %i.b                          ; 4 uses
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  %i.j = icmp ugt ptr %i.h, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = and i64 %i.e, %i.k
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = ptrtoint ptr %2 to i64
  %i.o = add i64 %i.c, %i.n
  %i.p = and i64 %i.o, %i.e                       ; 3 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.t = icmp ugt ptr %i.r, %i.s
  %i.u = icmp eq i64 %i.f, 0
  %i.v = or i1 %i.j, %i.u
  %i.w = getelementptr i8, ptr %i.i, i64 %3       ; 2 uses
  %i.x = icmp ugt ptr %i.h, %i.w
  %..i21 = select i1 %i.x, ptr null, ptr %i.g
  %.018 = select i1 %i.v, ptr %..i21, ptr %i.m    ; 4 uses
  %i.y = icmp eq i64 %i.p, 0
  %i.z = or i1 %i.y, %i.t
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = and i64 %i.e, %i.aa
  %i.ac = select i1 %i.z, i64 %i.ab, i64 %i.p     ; 2 uses
  %i.ad = ptrtoint ptr %.018 to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp ne ptr %.018, null
  %i.ag = icmp ne i64 %i.ac, %i.ad
  %or.cond.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i, label %bb.b, label %block_unmap_inner.exit

bb.b:                                             ; preds = %bb.a
  %i.ah = tail call i32 @madvise(ptr noundef nonnull %.018, i64 noundef %i.ae, i32 noundef 4) #45
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = tail call ptr @__errno_location() #51
  %i.ak = load i32, ptr %i.aj, align 4
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.180, ptr noundef nonnull %.018, i64 noundef %i.ae, i32 noundef %i.ak)
  %i.al = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.al(ptr noundef nonnull @.str.181) #45, !inline_history !333
  tail call void @abort() #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.an = add i64 %i.am, %i.ae
end_hunk_5
