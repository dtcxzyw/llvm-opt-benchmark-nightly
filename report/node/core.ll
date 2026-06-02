inline.NumInlined: 64
inline.NumDeleted: 18
begin_hunk_0_@uv_run:bb.a
  %.not.i.i65 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i65, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i64
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 314, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__finish_close) #24
  unreachable

bb.r:                                             ; preds = %.lr.ph.i64
  %i.ft = and i32 %i.fr, 2
  %.not20.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not20.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 315, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__finish_close) #24
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.fu = or disjoint i32 %i.fr, 2
  store i32 %i.fu, ptr %i.fq, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.fw = load i32, ptr %i.fv, align 8
  switch i32 %i.fw, label %bb.x [
    i32 9, label %bb.y
    i32 2, label %bb.y
    i32 6, label %bb.y
    i32 1, label %bb.y
    i32 13, label %bb.y
    i32 10, label %bb.y
    i32 3, label %bb.y
    i32 4, label %bb.y
    i32 8, label %bb.y
    i32 16, label %bb.u
    i32 7, label %bb.v
    i32 12, label %bb.v
    i32 14, label %bb.v
    i32 15, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %.07.i, i64 144
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.07.i, i64 148
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = icmp ugt i32 %i.fy, %i.ga
  br i1 %i.gb, label %uv__make_close_pending.exit.i.i, label %bb.y

uv__make_close_pending.exit.i.i:                  ; preds = %bb.u
  store i32 %i.fr, ptr %i.fq, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 360 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8
  store ptr %i.gf, ptr %i.fo, align 8
  store ptr %.07.i, ptr %i.ge, align 8
  br label %uv__finish_close.exit.i

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.t
  call void @uv__stream_destroy(ptr noundef nonnull %.07.i) #22
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  call void @uv__udp_finish_close(ptr noundef nonnull %.07.i) #22
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 355, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__finish_close) #24
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.gg = load i32, ptr %i.fq, align 8            ; 3 uses
  %i.gh = and i32 %i.gg, 8
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gj = and i32 %i.gg, -9
  store i32 %i.gj, ptr %i.fq, align 8
  %i.gk = and i32 %i.gg, 5
  %or.cond.not.i.i = icmp eq i32 %i.gk, 4
  br i1 %or.cond.not.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gl = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = add i32 %i.go, -1
  store i32 %i.gp, ptr %i.gn, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.07.i, i64 40 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8
  store ptr %i.gr, ptr %i.gt, align 8
  %i.gu = load ptr, ptr %i.gs, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gu, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %.not23.i.i = icmp eq ptr %i.gx, null
  br i1 %.not23.i.i, label %uv__finish_close.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void %i.gx(ptr noundef nonnull %.07.i) #22, !inline_history !11
  br label %uv__finish_close.exit.i

uv__finish_close.exit.i:                          ; preds = %bb.ac, %bb.ab, %uv__make_close_pending.exit.i.i
  %.not.i66 = icmp eq ptr %i.fp, null
  br i1 %.not.i66, label %uv__run_closing_handles.exit, label %.lr.ph.i64, !llvm.loop !12

uv__run_closing_handles.exit:                     ; preds = %uv__finish_close.exit.i, %.critedge7
  %i.gy = call i64 @uv__hrtime(i32 noundef 1) #22
  %i.gz = udiv i64 %i.gy, 1000000
  store i64 %i.gz, ptr %i.ad, align 8
  call void @uv__run_timers(ptr noundef %0) #22
  %i.ha = load i32, ptr %i.a, align 8
  %.not.i67 = icmp eq i32 %i.ha, 0
  br i1 %.not.i67, label %bb.ad, label %uv__loop_alive.exit70

bb.ad:                                            ; preds = %uv__run_closing_handles.exit
  %i.hb = load i32, ptr %i.y, align 8
  %.not4.i68 = icmp eq i32 %i.hb, 0
  br i1 %.not4.i68, label %bb.ae, label %uv__loop_alive.exit70

bb.ae:                                            ; preds = %bb.ad
  %i.hc = load ptr, ptr %i.t, align 8
  %.not6.i69 = icmp eq ptr %i.t, %i.hc
  br i1 %.not6.i69, label %bb.af, label %uv__loop_alive.exit70

bb.af:                                            ; preds = %bb.ae
  %i.hd = load ptr, ptr %i.aa, align 8
  %i.he = icmp ne ptr %i.hd, null
  %i.hf = zext i1 %i.he to i32
  br label %uv__loop_alive.exit70

uv__loop_alive.exit70:                            ; preds = %uv__run_closing_handles.exit, %bb.ad, %bb.ae, %bb.af
  %i.hg = phi i32 [ 1, %bb.ae ], [ 1, %bb.ad ], [ 1, %uv__run_closing_handles.exit ], [ %i.hf, %bb.af ] ; 2 uses
  %i.hh = icmp ne i32 %i.hg, 0
  %or.cond11 = select i1 %or.cond9, i1 %i.hh, i1 false
  br i1 %or.cond11, label %bb.g, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %uv__loop_alive.exit70, %bb.g, %.thread72
  %.2 = phi i32 [ 0, %.thread72 ], [ 1, %bb.g ], [ %i.hg, %uv__loop_alive.exit70 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8
  %.not53 = icmp eq i32 %i.hj, 0
  br i1 %.not53, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  store i32 0, ptr %i.hi, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.critedge
  ret i32 %.2
}

declare void @uv__run_timers(ptr noundef) local_unnamed_addr #4

declare void @uv__run_idle(ptr noundef) local_unnamed_addr #4

declare void @uv__run_prepare(ptr noundef) local_unnamed_addr #4

declare void @uv__io_poll(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @uv__metrics_update_idle_time(ptr noundef) local_unnamed_addr #4

declare void @uv__run_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @uv_update_time(ptr noundef writeonly captures(none) initializes((544, 552)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @uv__hrtime(i32 noundef 1) #22
  %i.b = udiv i64 %i.a, 1000000
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @uv_is_active(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
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
  %i.c = tail call i32 @socket(i32 noundef %0, i32 noundef %i.b, i32 noundef %2) #22 ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.b, label %uv__close.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #23    ; 8 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not22 = icmp eq i32 %i.e, 22
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.e
  br label %uv__close.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) #22 ; 7 uses
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
  %i.k = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.g, i64 noundef 21537, ptr noundef nonnull %i.a) #22
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
  br i1 %i.m, label %bb.g, label %uv__nonblock_ioctl.exit, !llvm.loop !14

uv__nonblock_ioctl.exit:                          ; preds = %bb.h, %.uv__nonblock_ioctl.exit_crit_edge
  %i.n = phi i32 [ %.pre, %.uv__nonblock_ioctl.exit_crit_edge ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.preheader, label %uv__cloexec.exit.thread

.preheader:                                       ; preds = %uv__nonblock_ioctl.exit.thread, %uv__nonblock_ioctl.exit
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %i.p = call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.g, i32 noundef 2, i32 noundef 1) #22
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
  br i1 %i.r, label %bb.i, label %uv__cloexec.exit, !llvm.loop !15

uv__cloexec.exit:                                 ; preds = %bb.j, %..critedge.i25_crit_edge
  %i.s = phi i32 [ %.pre32, %..critedge.i25_crit_edge ], [ %i.q, %bb.j ] ; 2 uses
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %uv__close.exit, label %uv__cloexec.exit.thread

uv__cloexec.exit.thread:                          ; preds = %uv__nonblock_ioctl.exit, %uv__cloexec.exit
  %i.t = phi i32 [ %i.s, %uv__cloexec.exit ], [ %i.n, %uv__nonblock_ioctl.exit ]
  %.042 = sub nsw i32 0, %i.t                     ; 2 uses
  %i.u = icmp sgt i32 %i.g, 2
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %uv__cloexec.exit.thread
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 646, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__close) #24
  unreachable

bb.l:                                             ; preds = %uv__cloexec.exit.thread
  %3 = load i32, ptr %i.d, align 4
  %i.v = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %i.g) #22
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 4294967295
  br i1 %i.x, label %bb.m, label %uv__close.exit

bb.m:                                             ; preds = %bb.l
  store i32 %3, ptr %i.d, align 4
  br label %uv__close.exit

uv__close.exit:                                   ; preds = %bb.i, %bb.m, %bb.l, %uv__cloexec.exit, %bb.a, %bb.e, %bb.c
  %.017 = phi i32 [ %i.c, %bb.a ], [ %i.f, %bb.c ], [ %i.j, %bb.e ], [ %.042, %bb.m ], [ %i.g, %uv__cloexec.exit ], [ %.042, %bb.l ], [ %i.g, %bb.i ]
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
  %i.b = call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 21537, ptr noundef nonnull %i.a) #22 ; 2 uses
  switch i32 %i.b, label %..critedge_crit_edge [
    i32 -1, label %bb.c
    i32 0, label %.loopexit
  ]

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = tail call ptr @__errno_location() #23
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #23    ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !14

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
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 2, i32 noundef %spec.store.select) #22 ; 2 uses
  switch i32 %i.a, label %..critedge_crit_edge [
    i32 -1, label %bb.c
    i32 0, label %.loopexit
  ]

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = tail call ptr @__errno_location() #23
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #23    ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %.critedge, !llvm.loop !15

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
  %i.a = icmp sgt i32 %0, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 646, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__close) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #23    ; 3 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %0) #22
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %uv__close_nocheckstdio.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 4              ; 3 uses
  %i.h = sub nsw i32 0, %i.g
  %i.i = icmp eq i32 %i.g, 4
  %i.j = icmp eq i32 %i.g, 115
  %or.cond.i = or i1 %i.i, %i.j
  %spec.store.select.i = select i1 %or.cond.i, i32 0, i32 %i.h
  store i32 %i.c, ptr %i.b, align 4
  br label %uv__close_nocheckstdio.exit

uv__close_nocheckstdio.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %spec.store.select.i, %bb.d ], [ %i.e, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @uv__open_file(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open64(ptr noundef readonly %0, i32 noundef 524288) #22 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %uv__open_cloexec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #23
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %uv__open_cloexec.exit

uv__open_cloexec.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = icmp slt i32 %.0.i, 0
  br i1 %i.f, label %uv__close.exit, label %bb.c

bb.c:                                             ; preds = %uv__open_cloexec.exit
  %i.g = tail call noalias ptr @fdopen(i32 noundef %.0.i, ptr noundef nonnull @.str.5) #22 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %uv__close.exit

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ugt i32 %.0.i, 2
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 646, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__close) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = tail call ptr @__errno_location() #23    ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %.0.i) #22
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 4294967295
  br i1 %i.n, label %bb.g, label %uv__close.exit

bb.g:                                             ; preds = %bb.f
  store i32 %i.k, ptr %i.j, align 4
  br label %uv__close.exit

uv__close.exit:                                   ; preds = %bb.g, %bb.f, %bb.c, %uv__open_cloexec.exit
  %.0 = phi ptr [ null, %uv__open_cloexec.exit ], [ %i.g, %bb.c ], [ null, %bb.f ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @uv__open_cloexec(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = or i32 %1, 524288
  %i.b = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef %i.a) #22 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #23
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
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 564, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__accept) #24
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.b = tail call i32 @accept4(i32 noundef %0, ptr null, ptr noundef null, i32 noundef 526336) #22 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %.critedge7

bb.c:                                             ; preds = %.preheader
  %i.d = tail call ptr @__errno_location() #23
end_hunk_0
