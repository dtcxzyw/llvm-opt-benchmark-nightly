Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/core?download=true
inline.NumInlined: 68
inline.NumDeleted: 18
begin_hunk_0_@uv_run:bb.a
  br i1 %.not19.i.i, label %uv__finish_close.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void %i.do(ptr noundef nonnull %.07.i) #23, !inline_history !9
  br label %uv__finish_close.exit.i

uv__finish_close.exit.i:                          ; preds = %bb.at, %bb.as, %bb.am
  %.not.i66 = icmp eq ptr %i.ch, null
  br i1 %.not.i66, label %uv__run_closing_handles.exit, label %.lr.ph.i65, !llvm.loop !10

uv__run_closing_handles.exit:                     ; preds = %uv__finish_close.exit.i, %.critedge7
  %i.dp = call i64 @uv__hrtime(i32 noundef 1) #23
  %i.dq = udiv i64 %i.dp, 1000000
  store i64 %i.dq, ptr %i.ad, align 8
  call void @uv__run_timers(ptr noundef %0) #23
  %i.dr = load i32, ptr %i.a, align 8
  %.not.i67 = icmp eq i32 %i.dr, 0
  br i1 %.not.i67, label %bb.au, label %uv__loop_alive.exit70

bb.au:                                            ; preds = %uv__run_closing_handles.exit
  %i.ds = load i32, ptr %i.y, align 8
  %.not4.i68 = icmp eq i32 %i.ds, 0
  br i1 %.not4.i68, label %bb.av, label %uv__loop_alive.exit70

bb.av:                                            ; preds = %bb.au
  %i.dt = load ptr, ptr %i.t, align 8
  %.not6.i69 = icmp eq ptr %i.t, %i.dt
  br i1 %.not6.i69, label %bb.aw, label %uv__loop_alive.exit70

bb.aw:                                            ; preds = %bb.av
  %i.du = load ptr, ptr %i.aa, align 8
  %i.dv = icmp ne ptr %i.du, null
  %i.dw = zext i1 %i.dv to i32
  br label %uv__loop_alive.exit70

uv__loop_alive.exit70:                            ; preds = %uv__run_closing_handles.exit, %bb.au, %bb.av, %bb.aw
  %i.dx = phi i32 [ 1, %bb.av ], [ 1, %bb.au ], [ 1, %uv__run_closing_handles.exit ], [ %i.dw, %bb.aw ] ; 2 uses
  %i.dy = icmp ne i32 %i.dx, 0
  %or.cond11 = select i1 %or.cond9, i1 %i.dy, i1 false
  br i1 %or.cond11, label %bb.g, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %uv__loop_alive.exit70, %bb.g, %.thread73
  %.2 = phi i32 [ 0, %.thread73 ], [ 1, %bb.g ], [ %i.dx, %uv__loop_alive.exit70 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8
  %.not53 = icmp eq i32 %i.ea, 0
  br i1 %.not53, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  store i32 0, ptr %i.dz, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.critedge
  ret i32 %.2
}

declare void @uv__run_timers(ptr noundef) local_unnamed_addr #4

declare void @uv__run_idle(ptr noundef) local_unnamed_addr #4

declare void @uv__run_prepare(ptr noundef) local_unnamed_addr #4

declare void @uv__io_poll(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @uv__metrics_update_idle_time(ptr noundef) local_unnamed_addr #4

declare void @uv__run_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @uv_update_time(ptr nofree noundef writeonly captures(none) initializes((544, 552)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @uv__hrtime(i32 noundef 1) #23
  %i.b = udiv i64 %i.a, 1000000
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @uv_is_active(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %.lobit = and i32 %i.c, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = or i32 %1, 526336
  %i.c = tail call i32 @socket(i32 noundef %0, i32 noundef %i.b, i32 noundef %2) #23 ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.b, label %uv__close.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #24    ; 7 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not22 = icmp eq i32 %i.e, 22
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.e
  br label %uv__close.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) #23 ; 6 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.d, align 4
  %i.j = sub nsw i32 0, %i.i
  br label %uv__close.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.k = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.g, i64 noundef 21537, ptr noundef nonnull %i.a) #23
  switch i32 %i.k, label %.uv__nonblock_ioctl.exit_crit_edge [
    i32 -1, label %bb.h
    i32 0, label %uv__nonblock_ioctl.exit.thread
  ]

.uv__nonblock_ioctl.exit_crit_edge:               ; preds = %bb.g
  %.pre = load i32, ptr %i.d, align 4
  br label %uv__nonblock_ioctl.exit

uv__nonblock_ioctl.exit.thread:                   ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.l = load i32, ptr %i.d, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.g, label %uv__nonblock_ioctl.exit, !llvm.loop !0

uv__nonblock_ioctl.exit:                          ; preds = %bb.h, %.uv__nonblock_ioctl.exit_crit_edge
  %i.n = phi i32 [ %.pre, %.uv__nonblock_ioctl.exit_crit_edge ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.preheader, label %uv__cloexec.exit.thread

.preheader:                                       ; preds = %uv__nonblock_ioctl.exit.thread, %uv__nonblock_ioctl.exit
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %i.p = call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.g, i32 noundef 2, i32 noundef 1) #23
  switch i32 %i.p, label %..critedge.i25_crit_edge [
    i32 -1, label %bb.j
    i32 0, label %uv__close.exit
  ]

..critedge.i25_crit_edge:                         ; preds = %bb.i
  %.pre32 = load i32, ptr %i.d, align 4
  br label %uv__cloexec.exit

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.d, align 4              ; 2 uses
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.i, label %uv__cloexec.exit, !llvm.loop !1

uv__cloexec.exit:                                 ; preds = %bb.j, %..critedge.i25_crit_edge
  %i.s = phi i32 [ %.pre32, %..critedge.i25_crit_edge ], [ %i.q, %bb.j ] ; 2 uses
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %uv__close.exit, label %uv__cloexec.exit.thread

uv__cloexec.exit.thread:                          ; preds = %uv__nonblock_ioctl.exit, %uv__cloexec.exit
  %i.t = phi i32 [ %i.s, %uv__cloexec.exit ], [ %i.n, %uv__nonblock_ioctl.exit ] ; 2 uses
  %.042 = sub nsw i32 0, %i.t                     ; 2 uses
  %i.u = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %i.g) #23
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 4294967295
  br i1 %i.w, label %bb.k, label %uv__close.exit

bb.k:                                             ; preds = %uv__cloexec.exit.thread
  store i32 %i.t, ptr %i.d, align 4
  br label %uv__close.exit

uv__close.exit:                                   ; preds = %bb.i, %bb.k, %uv__cloexec.exit.thread, %uv__cloexec.exit, %bb.a, %bb.e, %bb.c
  %.017 = phi i32 [ %i.c, %bb.a ], [ %i.f, %bb.c ], [ %i.j, %bb.e ], [ %.042, %bb.k ], [ %i.g, %uv__cloexec.exit ], [ %.042, %uv__cloexec.exit.thread ], [ %i.g, %bb.i ]
  ret i32 %.017
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__nonblock_ioctl(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 21537, ptr noundef nonnull %i.a) #23 ; 2 uses
  switch i32 %i.b, label %..critedge_crit_edge [
    i32 -1, label %bb.c
    i32 0, label %.loopexit
  ]

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = tail call ptr @__errno_location() #24
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #24    ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !0

.critedge:                                        ; preds = %bb.c, %..critedge_crit_edge
  %.pre-phi = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.c, %bb.c ]
  %i.f = load i32, ptr %.pre-phi, align 4
  %i.g = sub nsw i32 0, %i.f
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.g, %.critedge ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__cloexec(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ne i32 %1, 0
  %spec.store.select = zext i1 %.not to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 2, i32 noundef %spec.store.select) #23 ; 2 uses
  switch i32 %i.a, label %..critedge_crit_edge [
    i32 -1, label %bb.c
    i32 0, label %.loopexit
  ]

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = tail call ptr @__errno_location() #24
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #24    ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %bb.c, %..critedge_crit_edge
  %.pre-phi = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.c ]
  %i.e = load i32, ptr %.pre-phi, align 4
  %i.f = sub nsw i32 0, %i.e
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.f, %.critedge ], [ %i.a, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__close(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #24    ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %0) #23
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %uv__close_nocheckstdio.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4              ; 3 uses
  %i.g = sub nsw i32 0, %i.f
  %i.h = icmp eq i32 %i.f, 4
  %i.i = icmp eq i32 %i.f, 115
  %or.cond.i = or i1 %i.h, %i.i
  %spec.store.select.i = select i1 %or.cond.i, i32 0, i32 %i.g
  store i32 %i.b, ptr %i.a, align 4
  br label %uv__close_nocheckstdio.exit

uv__close_nocheckstdio.exit:                      ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %spec.store.select.i, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @uv__open_file(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open64(ptr noundef readonly %0, i32 noundef 524288) #23 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %uv__open_cloexec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #24
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %uv__open_cloexec.exit

uv__open_cloexec.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.f = icmp slt i32 %.0.i, 0
  br i1 %i.f, label %uv__close.exit, label %bb.c

bb.c:                                             ; preds = %uv__open_cloexec.exit
  %i.g = tail call noalias ptr @fdopen(i32 noundef %.0.i, ptr noundef nonnull @.str) #23 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %uv__close.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #24    ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %.0.i) #23
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 4294967295
  br i1 %i.m, label %bb.e, label %uv__close.exit

bb.e:                                             ; preds = %bb.d
  store i32 %i.j, ptr %i.i, align 4
  br label %uv__close.exit

uv__close.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %uv__open_cloexec.exit
  %.0 = phi ptr [ null, %uv__open_cloexec.exit ], [ %i.g, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @uv__open_cloexec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = or i32 %1, 524288
  %i.b = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef %i.a) #23 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #24
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sub nsw i32 0, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i32 @uv__accept(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call i32 @accept4(i32 noundef %0, ptr null, ptr noundef null, i32 noundef 526336) #23 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %.critedge6

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #24
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %bb.c
  %i.f = sub nsw i32 0, %i.d
  br label %.critedge6

.critedge6:                                       ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.f, %.critedge ], [ %i.a, %bb.b ]
  ret i32 %.0
}

declare i32 @accept4(i32 noundef, ptr, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @uv__close_nocancel(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %0) #23
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @uv__close_nocheckstdio(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #24    ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %0) #23
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4              ; 3 uses
  %i.g = sub nsw i32 0, %i.f
  %i.h = icmp eq i32 %i.f, 4
  %i.i = icmp eq i32 %i.f, 115
  %or.cond = or i1 %i.h, %i.i
  %spec.store.select = select i1 %or.cond, i32 0, i32 %i.g
  store i32 %i.b, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.store.select, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__nonblock_fcntl(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 3) #23 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %.critedge17

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #24
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %bb.c
  %i.f = sub nsw i32 0, %i.d
  br label %.loopexit

.critedge17:                                      ; preds = %bb.b
  %i.g = icmp ne i32 %1, 0                        ; 2 uses
  %i.h = and i32 %i.a, 2048
  %i.i = icmp eq i32 %i.h, 0
  %i.j = xor i1 %i.g, %i.i
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge17
  %i.k = and i32 %i.a, -2049
  %masksel = select i1 %i.g, i32 2048, i32 0
  %.0 = or disjoint i32 %i.k, %masksel
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.l = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 4, i32 noundef %.0) #23 ; 2 uses
  switch i32 %i.l, label %..critedge2_crit_edge [
    i32 -1, label %bb.f
    i32 0, label %.loopexit
  ]

..critedge2_crit_edge:                            ; preds = %bb.e
  %.pre = tail call ptr @__errno_location() #24
  br label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__errno_location() #24    ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.e, label %.critedge2, !llvm.loop !14

.critedge2:                                       ; preds = %bb.f, %..critedge2_crit_edge
  %.pre-phi = phi ptr [ %.pre, %..critedge2_crit_edge ], [ %i.m, %bb.f ]
  %i.p = load i32, ptr %.pre-phi, align 4
  %i.q = sub nsw i32 0, %i.p
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge17, %.critedge2, %.critedge
  %.015 = phi i32 [ %i.f, %.critedge ], [ 0, %.critedge17 ], [ %i.q, %.critedge2 ], [ %i.l, %bb.e ]
  ret i32 %.015
}

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i64 @uv__recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %2, 1073741824
  %i.b = tail call i64 @recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %i.a) #23 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #24
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sub nsw i32 0, %i.e
  %i.g = sext i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  ret i64 %.0
}

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_cwd(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4097 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @getcwd(ptr noundef nonnull %0, i64 noundef %i.d) #23
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #24    ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not22 = icmp eq i32 %i.h, 34
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = sub nsw i32 0, %i.h
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = call ptr @getcwd(ptr noundef nonnull %i.a, i64 noundef 4097) #23
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.g, align 4
  %i.m = sub nsw i32 0, %i.l
  br label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.c
  %.016 = phi ptr [ %0, %bb.c ], [ %i.a, %bb.f ]  ; 3 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.016) #26 ; 3 uses
  store i64 %i.n, ptr %1, align 8
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = add i64 %i.n, -1                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.016, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 47
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.p, ptr %1, align 8
  store i8 0, ptr %i.q, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.t = icmp eq ptr %.016, %i.a
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = load i64, ptr %1, align 8
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.a, %bb.b, %bb.l, %bb.g, %bb.e
  %.0 = phi i32 [ %i.m, %bb.g ], [ -105, %bb.l ], [ -22, %bb.a ], [ %i.i, %bb.e ], [ -22, %bb.b ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_chdir(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @chdir(ptr noundef %0) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #24
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sub nsw i32 0, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uv_disable_stdio_inheritance() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %uv__cloexec.exit.thread, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %uv__cloexec.exit.thread ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %.0, i32 noundef 2, i32 noundef 1) #23
  switch i32 %i.a, label %..critedge_crit_edge.i [
    i32 -1, label %bb.d
    i32 0, label %uv__cloexec.exit.thread
  ]

..critedge_crit_edge.i:                           ; preds = %bb.c
  %.pre.i = tail call ptr @__errno_location() #24
  %.pre = load i32, ptr %.pre.i, align 4
  br label %uv__cloexec.exit

bb.d:                                             ; preds = %bb.c
  %i.b = tail call ptr @__errno_location() #24
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %uv__cloexec.exit, !llvm.loop !1

uv__cloexec.exit:                                 ; preds = %bb.d, %..critedge_crit_edge.i
  %i.e = phi i32 [ %.pre, %..critedge_crit_edge.i ], [ %i.c, %bb.d ]
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp samesign ugt i32 %.0, 15
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.e, label %uv__cloexec.exit.thread

uv__cloexec.exit.thread:                          ; preds = %bb.c, %uv__cloexec.exit
  %i.h = add nuw nsw i32 %.0, 1
  br label %bb.b

bb.e:                                             ; preds = %uv__cloexec.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -22, 1) i32 @uv_fileno(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %switch.tableidx = add i32 %i.b, -7             ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 419, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond10 = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond10, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uv__getsockpeername, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %.0 = load i32, ptr %i.e, align 8               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 3
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp eq i32 %.0, -1
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
end_hunk_0
begin_hunk_1_@uv__io_poll_prepare:bb.a
bb.f:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @uv__metrics_set_provider_entry_time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @uv__io_poll_check(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_sigmask(i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #23
  %.not3 = icmp eq i32 %i.a, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #25
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.b = tail call ptr @__errno_location() #24    ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call i64 @uv__hrtime(i32 noundef 1) #23
  %i.e = udiv i64 %i.d, 1000000
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.e, ptr %i.f, align 8
  store i32 %i.c, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @uv__fd_exists(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ne ptr %i.h, null
  %i.j = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_getrusage(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rusage, align 16            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #23
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #24
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sub nsw i32 0, %i.c
  br label %uv__getrusage.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x i64>, ptr %i.f, align 16
  store <2 x i64> %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x i64>, ptr %i.i, align 16
  store <2 x i64> %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load <2 x i64>, ptr %i.o, align 16
  store <2 x i64> %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load <2 x i64>, ptr %i.r, align 16
  store <2 x i64> %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load <2 x i64>, ptr %i.u, align 16
  store <2 x i64> %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load <2 x i64>, ptr %i.x, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load <2 x i64>, ptr %i.aa, align 16
  store <2 x i64> %i.ac, ptr %i.ab, align 8
  br label %uv__getrusage.exit

uv__getrusage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_getrusage_thread(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rusage, align 16            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = call i32 @getrusage(i32 noundef 1, ptr noundef nonnull %1) #23
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #24
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sub nsw i32 0, %i.c
  br label %uv__getrusage.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x i64>, ptr %i.f, align 16
  store <2 x i64> %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x i64>, ptr %i.i, align 16
  store <2 x i64> %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load <2 x i64>, ptr %i.o, align 16
  store <2 x i64> %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load <2 x i64>, ptr %i.r, align 16
  store <2 x i64> %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load <2 x i64>, ptr %i.u, align 16
  store <2 x i64> %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load <2 x i64>, ptr %i.x, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load <2 x i64>, ptr %i.aa, align 16
  store <2 x i64> %i.ac, ptr %i.ab, align 8
  br label %uv__getrusage.exit

uv__getrusage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i32 %.0.i
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define hidden i32 @uv__slurp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open64(ptr noundef readonly %0, i32 noundef 524288) #23 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %uv__open_cloexec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #24
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %uv__open_cloexec.exit

uv__open_cloexec.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = icmp slt i32 %.0.i, 0
  br i1 %i.f, label %bb.i, label %.preheader

.preheader:                                       ; preds = %uv__open_cloexec.exit
  %i.g = add i64 %2, -1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %i.h = tail call i64 @read(i32 noundef %.0.i, ptr noundef %1, i64 noundef %i.g) #23 ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = tail call ptr @__errno_location() #24    ; 5 uses
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.c, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.m = load i32, ptr %i.j, align 4
  %i.n = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %.0.i) #23
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.e, label %uv__close_nocheckstdio.exit

bb.e:                                             ; preds = %.critedge
  %i.q = load i32, ptr %i.j, align 4              ; 2 uses
  %i.r = sub nsw i32 0, %i.q
  store i32 %i.m, ptr %i.j, align 4
  switch i32 %i.q, label %uv__close_nocheckstdio.exit [
    i32 115, label %uv__close_nocheckstdio.exit.thread
    i32 4, label %uv__close_nocheckstdio.exit.thread
  ]

uv__close_nocheckstdio.exit:                      ; preds = %bb.e, %.critedge
  %.0.i13 = phi i32 [ %i.r, %bb.e ], [ %i.o, %.critedge ]
  %.not = icmp eq i32 %.0.i13, 0
  br i1 %.not, label %uv__close_nocheckstdio.exit.thread, label %bb.f

bb.f:                                             ; preds = %uv__close_nocheckstdio.exit
  tail call void @abort() #25
  unreachable

uv__close_nocheckstdio.exit.thread:               ; preds = %bb.e, %bb.e, %uv__close_nocheckstdio.exit
  %i.s = icmp slt i64 %i.h, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %uv__close_nocheckstdio.exit.thread
  %i.t = load i32, ptr %i.j, align 4
  %i.u = sub nsw i32 0, %i.t
  br label %bb.i

bb.h:                                             ; preds = %uv__close_nocheckstdio.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  store i8 0, ptr %i.v, align 1
  br label %bb.i

bb.i:                                             ; preds = %uv__open_cloexec.exit, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.h ], [ %i.u, %bb.g ], [ %.0.i, %uv__open_cloexec.exit ]
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define hidden i32 @uv__dup2_cloexec(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dup3(i32 noundef %0, i32 noundef %1, i32 noundef 524288) #23 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #24
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @dup3(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_os_homedir(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.uv_passwd_s, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond3.i = or i1 %i.a, %i.b
  br i1 %or.cond3.i, label %uv_os_getenv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %uv_os_getenv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.1) #23 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %uv_os_getenv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #26 ; 3 uses
  %.not.i = icmp ult i64 %i.g, %i.c
  %i.h = add i64 %i.g, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 %i.h, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.g, %bb.e ], [ %i.h, %bb.d ]
  %.0.ph.i = phi i32 [ 0, %bb.e ], [ -105, %bb.d ]
  store i64 %.sink.i, ptr %1, align 8
  br label %uv_os_getenv.exit.thread

uv_os_getenv.exit:                                ; preds = %bb.c
  %i.i = tail call i32 @geteuid() #23
  %i.j = call fastcc range(i32 -2147483647, -2147483648) i32 @uv__getpwuid_r(ptr noundef nonnull %2, i32 noundef %i.i) ; 2 uses
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.f, label %uv_os_getenv.exit.thread

bb.f:                                             ; preds = %uv_os_getenv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #26 ; 3 uses
  %i.n = load i64, ptr %1, align 8
  %.not18 = icmp ult i64 %i.m, %i.n
  %i.o = add i64 %i.m, 1                          ; 2 uses
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.o, ptr %1, align 8
  call void @uv_os_free_passwd(ptr noundef nonnull %2) #23
  br label %uv_os_getenv.exit.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i64 %i.o, i1 false)
  store i64 %i.m, ptr %1, align 8
  call void @uv_os_free_passwd(ptr noundef nonnull %2) #23
  br label %uv_os_getenv.exit.thread

uv_os_getenv.exit.thread:                         ; preds = %.sink.split.i, %bb.a, %bb.b, %uv_os_getenv.exit, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.h ], [ %i.j, %uv_os_getenv.exit ], [ -105, %bb.g ], [ %.0.ph.i, %.sink.split.i ], [ -22, %bb.a ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %.0
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define dso_local range(i32 -105, 1) i32 @uv_os_getenv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8                ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @getenv(ptr noundef nonnull %0) #23 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #26 ; 3 uses
  %.not = icmp ult i64 %i.h, %i.d
  %i.i = add i64 %i.h, 1                          ; 2 uses
  br i1 %.not, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i64 %i.i, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.d ]
  %.0.ph = phi i32 [ 0, %bb.e ], [ -105, %bb.d ]
  store i64 %.sink, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ -2, %bb.c ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_os_get_passwd(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @geteuid() #23
  %i.b = tail call fastcc i32 @uv__getpwuid_r(ptr noundef %0, i32 noundef %i.a)
  ret i32 %i.b
}

declare void @uv_os_free_passwd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define dso_local range(i32 -105, 1) i32 @uv_os_tmpdir(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.2) #23 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.3) #23 ; 2 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.4) #23 ; 2 uses
  %.not33 = icmp eq ptr %i.g, null
  br i1 %.not33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @getenv(ptr noundef nonnull @.str.5) #23 ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  %spec.store.select = select i1 %.not34, ptr @.str.6, ptr %i.h
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.024 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %spec.store.select, %bb.f ] ; 3 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024) #26 ; 6 uses
  %.not35 = icmp ult i64 %i.i, %i.c
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = add i64 %i.i, 1
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.k = icmp ugt i64 %i.i, 1
end_hunk_1
