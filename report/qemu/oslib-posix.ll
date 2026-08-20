inline.NumInlined: 25
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qemu_get_pid_name:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %i.e
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @g_file_get_contents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @qemu_alloc_stack(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @getpagesize() #19
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = tail call i64 @sysconf(i32 noundef 75) #18
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.e = load i64, ptr %0, align 8
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e)
  %i.g = add nsw i64 %i.b, -1
  %i.h = add i64 %i.g, %i.f
  %i.i = sub nsw i64 0, %i.b
  %i.j = and i64 %i.h, %i.i
  %i.k = add i64 %i.j, %i.b                       ; 2 uses
  store i64 %i.k, ptr %0, align 8
  %i.l = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.k, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #18 ; 3 uses
  %i.m = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @perror(ptr noundef nonnull @.str.17) #24
  tail call void @abort() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @mprotect(ptr noundef %i.l, i64 noundef %i.b, i32 noundef 0) #18
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @perror(ptr noundef nonnull @.str.18) #24
  tail call void @abort() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  ret ptr %i.l
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_free_stack(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @munmap(ptr noundef %0, i64 noundef %1) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @sigaction_invoke(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.siginfo_t, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  %i.b = load <2 x i32>, ptr %1, align 8
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  store <2 x i32> %i.b, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %or.cond = icmp slt i32 %i.e, 1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load <2 x i32>, ptr %i.g, align 4
  store <2 x i32> %i.i, ptr %i.h, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  switch i32 %i.c, label %bb.f [
    i32 4, label %bb.d
    i32 8, label %bb.d
    i32 11, label %bb.d
    i32 7, label %bb.d
    i32 17, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.q, ptr %i.r, align 8
  %i.s = load <2 x i32>, ptr %i.n, align 4
  store <2 x i32> %i.s, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %i.t = load ptr, ptr %0, align 8
  call void %i.t(i32 noundef %i.c, ptr noundef nonnull %2, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @qemu_get_host_physmem() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 85) #18 ; 3 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @getpagesize() #19
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 %i.a)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.e = mul i64 %i.a, %i.d
  %spec.select = select i1 %mul.ov, i64 -1, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qemu_msync(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @getpagesize() #19
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 2 uses
  %i.d = sub nsw i64 0, %i.b                      ; 2 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = and i64 %i.c, %i.e
  %i.g = add i64 %i.c, %1
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, %i.d
  %i.j = and i64 %i.d, %i.e
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call i32 @msync(ptr noundef %i.k, i64 noundef %i.i, i32 noundef 4) #18
  ret i32 %i.l
}

declare i32 @msync(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_close_all_open_fd(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 4) #18
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_close_all_open_fd) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @opendir(ptr noundef nonnull @.str.27) ; 5 uses
  %.not.i.not = icmp eq ptr %i.e, null
  br i1 %.not.i.not, label %qemu_close_all_open_fd_proc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @dirfd(ptr noundef nonnull %i.e) #18
  %i.g = tail call ptr @readdir64(ptr noundef nonnull %i.e) #18 ; 2 uses
  %.not4049.i = icmp eq ptr %i.g, null
  br i1 %.not4049.i, label %qemu_close_all_open_fd_proc.exit.thread, label %.lr.ph53.i.preheader

.lr.ph53.i.preheader:                             ; preds = %bb.d
  %i.h = zext i32 %1 to i64
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %bb.i
  %.03151.i = phi i32 [ %.334.i, %bb.i ], [ 0, %.lr.ph53.i.preheader ] ; 7 uses
  %.03550.i = phi ptr [ %i.y, %bb.i ], [ %i.g, %.lr.ph53.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.03550.i, i64 19 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 46
  br i1 %i.k, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph53.i
  %i.l = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 10) #18, !inline_history !16
  %i.m = trunc i64 %i.l to i32                    ; 4 uses
  %i.n = icmp eq i32 %i.f, %i.m
  br i1 %i.n, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.o = icmp ult i32 %.03151.i, %1
  br i1 %i.o, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.p = zext i32 %.03151.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.p, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, %i.m
  br i1 %i.s, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq i32 %i.r, %i.m
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %.03151.i, %i.u
  %i.w = zext i1 %i.v to i32
  %spec.select.i = add nuw i32 %.03151.i, %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i, %.preheader.i
  %i.x = tail call i32 @close(i32 noundef %i.m) #18 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %bb.g, %bb.e, %.lr.ph53.i
  %.334.i = phi i32 [ %.03151.i, %bb.e ], [ %.03151.i, %.lr.ph53.i ], [ %.03151.i, %._crit_edge.i ], [ %spec.select.i, %bb.g ]
  %i.y = tail call ptr @readdir64(ptr noundef nonnull %i.e) #18 ; 2 uses
  %.not40.i = icmp eq ptr %i.y, null
  br i1 %.not40.i, label %qemu_close_all_open_fd_proc.exit.thread, label %.lr.ph53.i, !llvm.loop !18

qemu_close_all_open_fd_proc.exit.thread:          ; preds = %bb.i, %bb.d
  %i.z = tail call i32 @closedir(ptr noundef nonnull %i.e) ; 0 uses
  br label %qemu_close_all_open_fd_fallback.exit

qemu_close_all_open_fd_proc.exit:                 ; preds = %bb.c
  %i.aa = icmp sgt i32 %i.b, 0
  br i1 %i.aa, label %.lr.ph.i11, label %qemu_close_all_open_fd_fallback.exit

.lr.ph.i11:                                       ; preds = %qemu_close_all_open_fd_proc.exit, %bb.m
  %.011.i = phi i32 [ %i.ai, %bb.m ], [ 0, %qemu_close_all_open_fd_proc.exit ] ; 3 uses
  %.0910.i = phi i32 [ %.1.i, %bb.m ], [ 0, %qemu_close_all_open_fd_proc.exit ] ; 4 uses
  %i.ab = icmp ult i32 %.0910.i, %1
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i11
  %i.ac = zext i32 %.0910.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %.011.i, %i.ae
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = add nuw i32 %.0910.i, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %.lr.ph.i11
  %i.ah = tail call i32 @close(i32 noundef %.011.i) #18 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.ag, %bb.k ], [ %.0910.i, %bb.l ]
  %i.ai = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %exitcond.not.i12 = icmp eq i32 %i.ai, %i.b
  br i1 %exitcond.not.i12, label %qemu_close_all_open_fd_fallback.exit, label %.lr.ph.i11, !llvm.loop !19

qemu_close_all_open_fd_fallback.exit:             ; preds = %bb.m, %qemu_close_all_open_fd_proc.exit, %qemu_close_all_open_fd_proc.exit.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, -2147483648) i32 @qemu_shm_alloc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_string_new(ptr noundef null) #18 ; 4 uses
  %i.b = atomicrmw add ptr @qemu_shm_alloc.sequence, i32 1 seq_cst, align 4
  %i.c = tail call i32 @getpid() #18
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.a, ptr noundef nonnull @.str.20, i32 noundef %i.c, i32 noundef %i.b) #18
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i32 @shm_open(ptr noundef %i.d, i32 noundef 194, i32 noundef 0) #18 ; 4 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #19
  %i.h = load i32, ptr %i.g, align 4
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1016, ptr noundef nonnull @__func__.qemu_shm_alloc, i32 noundef %i.h, ptr noundef nonnull @.str.21) #18
  br label %glib_autoptr_cleanup_GString.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call i32 @shm_unlink(ptr noundef %i.i) #18 ; 0 uses
  %i.k = tail call i32 @ftruncate64(i32 noundef %i.e, i64 noundef %0) #18
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %glib_autoptr_cleanup_GString.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__errno_location() #19
  %i.n = load i32, ptr %i.m, align 4
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1029, ptr noundef nonnull @__func__.qemu_shm_alloc, i32 noundef %i.n, ptr noundef nonnull @.str.22, i64 noundef %0) #18
  %i.o = tail call i32 @close(i32 noundef %i.e) #18 ; 0 uses
  br label %glib_autoptr_cleanup_GString.exit

glib_autoptr_cleanup_GString.exit:                ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.e, %bb.c ]
  %i.p = tail call ptr @g_string_free(ptr noundef nonnull %i.a, i32 noundef 1) #18 ; 0 uses
  ret i32 %.0
}

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #4

declare void @g_string_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @shm_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @shm_unlink(ptr noundef) local_unnamed_addr #4

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #4

declare void @g_error_free(ptr noundef) local_unnamed_addr #4

declare ptr @qemu_thread_join(ptr noundef) local_unnamed_addr #4

declare i32 @qemu_madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @qemu_thread_is_self(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__longjmp_chk(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @warn_report(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #13

declare void @qemu_cond_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @do_madv_populate_write_pages(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = mul i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.g(ptr noundef nonnull @page_mutex, ptr noundef nonnull @.str, i32 noundef 431) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i8, ptr %i.i, align 8, !range !20, !noundef !21
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.l = load atomic ptr, ptr @qemu_cond_wait_func monotonic, align 8
  tail call void %i.l(ptr noundef nonnull @page_cond, ptr noundef nonnull @page_mutex, ptr noundef nonnull @.str, i32 noundef 433) #18
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = load i8, ptr %i.m, align 8, !range !20, !noundef !21
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @page_mutex, ptr noundef nonnull @.str, i32 noundef 435) #18
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = tail call i32 @qemu_madvise(ptr noundef %i.f, i64 noundef %i.e, i32 noundef 23) #18
  %.not15 = icmp eq i32 %i.p, 0
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @__errno_location() #19
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sub i32 0, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.0 = phi ptr [ %i.u, %bb.c ], [ null, %bb.b ], [ null, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef ptr @do_touch_pages(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 6 uses
  %2 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !annotation !7
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.a(ptr noundef nonnull @page_mutex, ptr noundef nonnull @.str, i32 noundef 388) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i8, ptr %i.c, align 8, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
end_hunk_0
