Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/linux?download=true
inline.NumInlined: 105
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uv__io_fork:bb.a
bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.1.in.i.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %.03.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.l, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i = phi ptr [ null, %bb.i ], [ null, %bb.l ], [ %.03.i.i.i.i, %bb.j ]
  store i32 -1, ptr %i.bc, align 8
  store ptr null, ptr %i.ao, align 8
  %i.bi = and i32 %i.ay, -5
  store i32 %i.bi, ptr %i.ax, align 8
  %i.bj = and i32 %i.ay, 8
  %.not12.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not12.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bk, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit.i.i
  %i.bn = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bo = load ptr, ptr %i.as, align 8
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.as, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.ba, align 8
  call fastcc void @maybe_free_watcher_list(ptr noundef %.0.lcssa.i.i.i.i, ptr noundef %i.br)
  br label %uv_fs_event_stop.exit.i

uv_fs_event_stop.exit.i:                          ; preds = %bb.n, %.lr.ph.i
  store ptr %i.r, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.s, align 8             ; 2 uses
  store ptr %i.bs, ptr %i.as, align 8
  store ptr %i.an, ptr %i.bs, align 8
  store ptr %i.an, ptr %i.s, align 8
  store ptr %i.aq, ptr %i.ao, align 8
  %i.bt = load ptr, ptr %2, align 8               ; 2 uses
  %.not45.i = icmp eq ptr %2, %i.bt
  br i1 %.not45.i, label %watcher_root_RB_MINMAX.exit.i, label %.lr.ph.i, !llvm.loop !13

watcher_root_RB_MINMAX.exit.i:                    ; preds = %uv_fs_event_stop.exit.i, %uv__queue_move.exit.i, %uv__queue_move.exit.thread.i
  store i32 0, ptr %i.ag, align 8
  call fastcc void @maybe_free_watcher_list(ptr noundef nonnull %.050.i, ptr noundef %0)
  %.not.i = icmp eq ptr %.2.i.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d, !llvm.loop !14

.critedge.i:                                      ; preds = %watcher_root_RB_MINMAX.exit.i
  %i.bu = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i43.i = icmp eq ptr %i.r, %i.bu
  br i1 %.not.i43.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge.i
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %i.t, align 8
  br label %uv__queue_move.exit44.i.preheader

bb.p:                                             ; preds = %.critedge.i
  %i.bv = load ptr, ptr %i.s, align 8             ; 2 uses
  store ptr %i.bv, ptr %i.t, align 8
  store ptr %2, ptr %i.bv, align 8
  store ptr %i.bu, ptr %2, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  store ptr %i.bx, ptr %i.s, align 8
  store ptr %i.r, ptr %i.bx, align 8
  store ptr %2, ptr %i.bw, align 8
  br label %uv__queue_move.exit44.i.preheader

uv__queue_move.exit44.i.preheader:                ; preds = %bb.p, %bb.o
  br label %uv__queue_move.exit44.i

uv__queue_move.exit44.i:                          ; preds = %uv__queue_move.exit44.i.preheader, %bb.q
  %i.by = load ptr, ptr %2, align 8               ; 6 uses
  %.not46.i = icmp eq ptr %2, %i.by
  br i1 %.not46.i, label %uv__inotify_fork.exit, label %bb.q

bb.q:                                             ; preds = %uv__queue_move.exit44.i
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  store ptr %i.bz, ptr %i.cb, align 8
  %i.cc = load ptr, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 -112
  %i.cf = getelementptr inbounds i8, ptr %i.by, i64 -16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  store ptr null, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.by, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call i32 @uv_fs_event_start(ptr noundef nonnull %i.ce, ptr noundef %i.ci, ptr noundef %i.cg, i32 poison) ; 2 uses
  call void @uv__free(ptr noundef %i.cg) #15
  %.not36.i = icmp eq i32 %i.cj, 0
  br i1 %.not36.i, label %uv__queue_move.exit44.i, label %uv__inotify_fork.exit, !llvm.loop !15

uv__inotify_fork.exit:                            ; preds = %uv__queue_move.exit44.i, %bb.q, %bb.b
  %.032.i = phi i32 [ 0, %bb.b ], [ %i.cj, %bb.q ], [ 0, %uv__queue_move.exit44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.r

bb.r:                                             ; preds = %uv__platform_loop_init.exit, %uv__inotify_fork.exit
  %.0 = phi i32 [ %.032.i, %uv__inotify_fork.exit ], [ %i.p, %uv__platform_loop_init.exit ]
  ret i32 %.0
}

declare i32 @uv__close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @uv__platform_loop_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %uv__iou_delete.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i32 @munmap(ptr noundef %i.g, i64 noundef %i.i) #15 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call i32 @munmap(ptr noundef %i.l, i64 noundef %i.n) #15 ; 0 uses
  %i.p = load i32, ptr %i.c, align 8
  %i.q = tail call i32 @uv__close(i32 noundef %i.p) #15 ; 0 uses
  store i32 -1, ptr %i.c, align 8
  br label %uv__iou_delete.exit

uv__iou_delete.exit:                              ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.c, label %uv__iou_delete.exit8

bb.c:                                             ; preds = %uv__iou_delete.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i32 @munmap(ptr noundef %i.v, i64 noundef %i.x) #15 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i32 @munmap(ptr noundef %i.aa, i64 noundef %i.ac) #15 ; 0 uses
  %i.ae = load i32, ptr %i.r, align 8
  %i.af = tail call i32 @uv__close(i32 noundef %i.ae) #15 ; 0 uses
  store i32 -1, ptr %i.r, align 8
  br label %uv__iou_delete.exit8

uv__iou_delete.exit8:                             ; preds = %uv__iou_delete.exit, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %.not = icmp eq i32 %i.ah, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %uv__iou_delete.exit8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @uv__io_stop(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i32 noundef 1) #15
  %i.aj = load i32, ptr %i.ag, align 8
  %i.ak = tail call i32 @uv__close(i32 noundef %i.aj) #15 ; 0 uses
  store i32 -1, ptr %i.ag, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %uv__iou_delete.exit8
  ret void
}

declare void @uv__io_stop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @uv__platform_invalidate_fd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.epoll_event, align 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = phi i32 [ %i.f, %.lr.ph ], [ %i.n, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %3 = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 1
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.k, align 1
  %.pre.a = load i32, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.i, %bb.b ], [ %.pre.a, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8
  %i.s = call i32 @epoll_ctl(i32 noundef %i.r, i32 noundef 2, i32 noundef %1, ptr noundef nonnull %2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__io_check_fd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.epoll_event, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 4
  store i32 1, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = call i32 @epoll_ctl(i32 noundef %i.d, i32 noundef 1, i32 noundef %1, ptr noundef nonnull %2) #15
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #17
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = sub nsw i32 0, %i.g
  switch i32 %i.g, label %bb.d [
    i32 17, label %.thread
    i32 0, label %.thread
  ]

.thread:                                          ; preds = %bb.b, %bb.b, %bb.a
  %i.i = load i32, ptr %i.c, align 8
  %i.j = call i32 @epoll_ctl(i32 noundef %i.i, i32 noundef 2, i32 noundef %1, ptr noundef nonnull %2) #15
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  call void @abort() #18
  unreachable

bb.d:                                             ; preds = %bb.b, %.thread
  %.09 = phi i32 [ 0, %.thread ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.09
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @uv__iou_fs_close(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uv__kernel_version()
  %i.b = icmp slt i32 %i.a, 393472
  br i1 %i.b, label %uv__iou_submit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.f = tail call fastcc ptr @uv__iou_get_sqe(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %uv__iou_submit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.i, ptr %i.j, align 4
  store i8 19, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, 1
  store atomic i32 %i.n, ptr %i.l release, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load atomic i32, ptr %i.p acquire, align 4
  %i.r = and i32 %i.q, 1
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %uv__iou_submit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.t = load i32, ptr %i.s, align 8
  %i.u = tail call i64 (i64, ...) @syscall(i64 noundef 426, i32 noundef %i.t, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef null, i64 noundef 0) #15
  %i.v = and i64 %i.u, 4294967295
  %.not6.i = icmp eq i64 %i.v, 0
  br i1 %.not6.i, label %uv__iou_submit.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call ptr @__errno_location() #17
  %i.x = load i32, ptr %i.w, align 4
  %.not7.i = icmp eq i32 %i.x, 130
  br i1 %.not7.i, label %uv__iou_submit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @perror(ptr noundef nonnull @.str.25) #19
  br label %uv__iou_submit.exit

uv__iou_submit.exit:                              ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @uv__iou_get_sqe(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %uv__use_io_uring.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @uv__kernel_version()
  %i.h = icmp ult i32 %i.g, 330426
  br i1 %i.h, label %uv__use_io_uring.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load atomic i32, ptr @uv__use_io_uring.use_io_uring monotonic, align 4 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %uv__use_io_uring.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @getenv(ptr noundef nonnull @.str.24) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 10) #15, !inline_history !0
  %i.m = trunc i64 %i.l to i32
  %.inv.i = icmp slt i32 %i.m, 1
  %i.n = select i1 %.inv.i, i32 -1, i32 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi i32 [ -1, %bb.e ], [ %i.n, %bb.f ]   ; 2 uses
  store atomic i32 %i.o, ptr @uv__use_io_uring.use_io_uring monotonic, align 4
  br label %uv__use_io_uring.exit

uv__use_io_uring.exit:                            ; preds = %bb.d, %bb.g
  %.08.i = phi i32 [ %i.o, %bb.g ], [ %i.i, %bb.d ]
  %i.p = icmp slt i32 %.08.i, 1
  br i1 %i.p, label %uv__use_io_uring.exit.thread, label %bb.h

bb.h:                                             ; preds = %uv__use_io_uring.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i32, ptr %i.q, align 8
  tail call fastcc void @uv__iou_init(i32 noundef %i.r, ptr noundef nonnull %0, i32 noundef 64, i32 noundef 2)
  br label %uv__use_io_uring.exit.thread

uv__use_io_uring.exit.thread:                     ; preds = %bb.c, %uv__use_io_uring.exit, %bb.h, %bb.b
  %i.s = load i32, ptr %i.a, align 8              ; 2 uses
  %i.t = icmp eq i32 %i.s, -2
  br i1 %i.t, label %.thread, label %bb.i

.thread:                                          ; preds = %uv__use_io_uring.exit.thread
  store i32 -1, ptr %i.a, align 8
  br label %bb.l

bb.i:                                             ; preds = %uv__use_io_uring.exit.thread, %bb.a
  %i.u = phi i32 [ %i.s, %uv__use_io_uring.exit.thread ], [ %i.b, %bb.a ]
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8
  %i.x = load atomic i32, ptr %i.w acquire, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = add i32 %i.aa, 1
  %i.ae = xor i32 %i.ad, %i.x
  %i.af = and i32 %i.ae, %i.ac
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.k
end_hunk_0
begin_hunk_1_@strlen

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_interface_addresses(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %1, align 4
  store ptr null, ptr %0, align 8
  %i.b = call i32 @getifaddrs(ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader93, label %bb.b

.preheader93:                                     ; preds = %bb.a
  %.06194 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not7095 = icmp eq ptr %.06194, null
  br i1 %.not7095, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #17
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %bb.w

.lr.ph:                                           ; preds = %.preheader93, %uv__ifaddr_exclude.exit.thread
  %.06197 = phi ptr [ %.061, %uv__ifaddr_exclude.exit.thread ], [ %.06194, %.preheader93 ] ; 4 uses
  %.05996 = phi i64 [ %.160, %uv__ifaddr_exclude.exit.thread ], [ 0, %.preheader93 ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06197, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 65
  %or.cond.not.i = icmp eq i32 %i.h, 65
  br i1 %or.cond.not.i, label %bb.c, label %uv__ifaddr_exclude.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.06197, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %uv__ifaddr_exclude.exit.thread, label %uv__ifaddr_exclude.exit

uv__ifaddr_exclude.exit:                          ; preds = %bb.c
  %i.l = load i16, ptr %i.j, align 2
  %.not90 = icmp eq i16 %i.l, 17
  br i1 %.not90, label %uv__ifaddr_exclude.exit.thread, label %bb.d

bb.d:                                             ; preds = %uv__ifaddr_exclude.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.06197, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #16
  %i.p = add i64 %.05996, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = load i32, ptr %1, align 4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %1, align 4
  br label %uv__ifaddr_exclude.exit.thread

uv__ifaddr_exclude.exit.thread:                   ; preds = %bb.c, %.lr.ph, %uv__ifaddr_exclude.exit, %bb.d
  %.160 = phi i64 [ %.05996, %uv__ifaddr_exclude.exit ], [ %i.q, %bb.d ], [ %.05996, %.lr.ph ], [ %.05996, %bb.c ] ; 2 uses
  %.061 = load ptr, ptr %.06197, align 8          ; 2 uses
  %.not70 = icmp eq ptr %.061, null
  br i1 %.not70, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %uv__ifaddr_exclude.exit.thread, %.preheader93
  %.059.lcssa = phi i64 [ 0, %.preheader93 ], [ %.160, %uv__ifaddr_exclude.exit.thread ]
  %i.t = load i32, ptr %1, align 4                ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @freeifaddrs(ptr noundef %.06194) #15
  br label %bb.w

bb.f:                                             ; preds = %._crit_edge
  %i.v = sext i32 %i.t to i64
  %i.w = mul nsw i64 %i.v, 80
  %i.x = add i64 %i.w, %.059.lcssa
  %i.y = call ptr @uv__calloc(i64 noundef 1, i64 noundef %i.x) #15 ; 4 uses
  store ptr %i.y, ptr %0, align 8
  %i.z = icmp eq ptr %i.y, null
  %i.aa = load ptr, ptr %i.a, align 8             ; 3 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @freeifaddrs(ptr noundef %i.aa) #15
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %.not7199 = icmp eq ptr %i.aa, null
  br i1 %.not7199, label %._crit_edge113, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %bb.h
  %i.ab = load i32, ptr %1, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [80 x i8], ptr %i.y, i64 %i.ac
  br label %.lr.ph104

.preheader:                                       ; preds = %uv__ifaddr_exclude.exit79.thread
  %.2109.pre = load ptr, ptr %i.a, align 8        ; 3 uses
  %.not72110 = icmp eq ptr %.2109.pre, null
  br i1 %.not72110, label %._crit_edge113, label %.lr.ph112

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %uv__ifaddr_exclude.exit79.thread
  %.162102 = phi ptr [ %.162, %uv__ifaddr_exclude.exit79.thread ], [ %i.aa, %.lr.ph104.preheader ] ; 5 uses
  %.058101 = phi ptr [ %.1, %uv__ifaddr_exclude.exit79.thread ], [ %i.ad, %.lr.ph104.preheader ] ; 6 uses
  %.063100 = phi ptr [ %.164, %uv__ifaddr_exclude.exit79.thread ], [ %i.y, %.lr.ph104.preheader ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.162102, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 65
  %or.cond.not.i76 = icmp eq i32 %i.ag, 65
  br i1 %or.cond.not.i76, label %bb.i, label %uv__ifaddr_exclude.exit79.thread

bb.i:                                             ; preds = %.lr.ph104
  %i.ah = getelementptr inbounds nuw i8, ptr %.162102, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %uv__ifaddr_exclude.exit79.thread, label %uv__ifaddr_exclude.exit79

uv__ifaddr_exclude.exit79:                        ; preds = %bb.i
  %i.ak = load i16, ptr %i.ai, align 2
  %.not91 = icmp eq i16 %i.ak, 17
  br i1 %.not91, label %uv__ifaddr_exclude.exit79.thread, label %bb.j

bb.j:                                             ; preds = %uv__ifaddr_exclude.exit79
  %i.al = getelementptr inbounds nuw i8, ptr %.162102, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #16
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.058101, ptr nonnull align 1 %i.am, i64 %i.ao, i1 false)
  store ptr %.058101, ptr %.063100, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.058101, i64 %i.ao
  %i.aq = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = icmp eq i16 %i.ar, 10
  %i.at = getelementptr inbounds nuw i8, ptr %.063100, i64 20 ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.at, ptr noundef nonnull align 4 dereferenceable(28) %i.aq, i64 28, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.162102, i64 32
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = icmp eq i16 %i.aw, 10
  %i.ay = getelementptr inbounds nuw i8, ptr %.063100, i64 48 ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ay, ptr noundef nonnull align 4 dereferenceable(28) %i.av, i64 28, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = load i32, ptr %i.ae, align 8
  %i.ba = lshr i32 %i.az, 3
  %.lobit = and i32 %i.ba, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.063100, i64 16
  store i32 %.lobit, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.063100, i64 80
  br label %uv__ifaddr_exclude.exit79.thread

uv__ifaddr_exclude.exit79.thread:                 ; preds = %bb.i, %.lr.ph104, %uv__ifaddr_exclude.exit79, %bb.p
  %.164 = phi ptr [ %.063100, %uv__ifaddr_exclude.exit79 ], [ %i.bc, %bb.p ], [ %.063100, %.lr.ph104 ], [ %.063100, %bb.i ]
  %.1 = phi ptr [ %.058101, %uv__ifaddr_exclude.exit79 ], [ %i.ap, %bb.p ], [ %.058101, %.lr.ph104 ], [ %.058101, %bb.i ]
  %.162 = load ptr, ptr %.162102, align 8         ; 2 uses
  %.not71 = icmp eq ptr %.162, null
  br i1 %.not71, label %.preheader, label %.lr.ph104, !llvm.loop !31

.lr.ph112:                                        ; preds = %.preheader, %uv__ifaddr_exclude.exit83.thread
  %.2111 = phi ptr [ %.2, %uv__ifaddr_exclude.exit83.thread ], [ %.2109.pre, %.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.2111, i64 16
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 65
  %or.cond.not.i80 = icmp eq i32 %i.bf, 65
  br i1 %or.cond.not.i80, label %bb.q, label %uv__ifaddr_exclude.exit83.thread

bb.q:                                             ; preds = %.lr.ph112
  %i.bg = getelementptr inbounds nuw i8, ptr %.2111, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %uv__ifaddr_exclude.exit83.thread, label %uv__ifaddr_exclude.exit83

uv__ifaddr_exclude.exit83:                        ; preds = %bb.q
  %i.bj = load i16, ptr %i.bh, align 2
  %.not92 = icmp eq i16 %i.bj, 17
  br i1 %.not92, label %bb.r, label %uv__ifaddr_exclude.exit83.thread

bb.r:                                             ; preds = %uv__ifaddr_exclude.exit83
  %i.bk = load i32, ptr %1, align 4               ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph108, label %uv__ifaddr_exclude.exit83.thread

.lr.ph108:                                        ; preds = %bb.r
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.2111, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph108, %bb.v
  %i.bo = phi i32 [ %i.bk, %.lr.ph108 ], [ %i.by, %bb.v ] ; 2 uses
  %.0106 = phi i32 [ 0, %.lr.ph108 ], [ %i.ca, %bb.v ]
  %.265105 = phi ptr [ %i.bm, %.lr.ph108 ], [ %i.bz, %bb.v ] ; 3 uses
  %2 = load ptr, ptr %i.bn, align 8               ; 2 uses
  %i.bp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16 ; 2 uses
  %i.bq = load ptr, ptr %.265105, align 8         ; 2 uses
  %i.br = call i32 @strncmp(ptr noundef %i.bq, ptr noundef nonnull %2, i64 noundef %i.bp) #16
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1
  switch i8 %i.bu, label %bb.v [
    i8 0, label %bb.u
    i8 58, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bv = load ptr, ptr %i.bg, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.265105, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bw, ptr noundef nonnull align 4 dereferenceable(6) %i.bx, i64 6, i1 false)
  %.pre.a = load i32, ptr %1, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.by = phi i32 [ %i.bo, %bb.t ], [ %.pre.a, %bb.u ], [ %i.bo, %bb.s ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.265105, i64 80
  %i.ca = add nuw nsw i32 %.0106, 1               ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.by
  br i1 %i.cb, label %bb.s, label %uv__ifaddr_exclude.exit83.thread, !llvm.loop !32

uv__ifaddr_exclude.exit83.thread:                 ; preds = %bb.v, %bb.r, %bb.q, %.lr.ph112, %uv__ifaddr_exclude.exit83
  %.2 = load ptr, ptr %.2111, align 8             ; 2 uses
  %.not72 = icmp eq ptr %.2, null
  br i1 %.not72, label %._crit_edge113, label %.lr.ph112, !llvm.loop !33

._crit_edge113:                                   ; preds = %uv__ifaddr_exclude.exit83.thread, %bb.h, %.preheader
  %i.cc = phi ptr [ null, %bb.h ], [ null, %.preheader ], [ %.2109.pre, %uv__ifaddr_exclude.exit83.thread ]
  call void @freeifaddrs(ptr noundef %i.cc) #15
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge113, %bb.g, %bb.e, %bb.b
  %.066 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.e ], [ -12, %bb.g ], [ 0, %._crit_edge113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.066
}

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @uv__set_process_title(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, ...) @prctl(i32 noundef 15, ptr noundef %0) #15 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @uv_get_free_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %0 = alloca %struct.sysinfo, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = call i32 @uv__slurp(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.b, i64 noundef 4096) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %uv__read_proc_meminfo.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.18) #16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %uv__read_proc_meminfo.exit.thread, label %uv__read_proc_meminfo.exit

uv__read_proc_meminfo.exit.thread:                ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.c

uv__read_proc_meminfo.exit:                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i64 0, ptr %i.a, align 8
  %i.g = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8
  %i.i = shl i64 %i.h, 10                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %uv__read_proc_meminfo.exit.thread, %uv__read_proc_meminfo.exit
  %i.j = call i32 @sysinfo(ptr noundef nonnull %0) #15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.m, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %uv__read_proc_meminfo.exit, %bb.d
  %.0 = phi i64 [ %i.i, %uv__read_proc_meminfo.exit ], [ %i.q, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @sysinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @uv_get_total_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %0 = alloca %struct.sysinfo, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = call i32 @uv__slurp(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.b, i64 noundef 4096) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %uv__read_proc_meminfo.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.19) #16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %uv__read_proc_meminfo.exit.thread, label %uv__read_proc_meminfo.exit

uv__read_proc_meminfo.exit.thread:                ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.c

uv__read_proc_meminfo.exit:                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i64 0, ptr %i.a, align 8
  %i.g = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8
  %i.i = shl i64 %i.h, 10                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %uv__read_proc_meminfo.exit.thread, %uv__read_proc_meminfo.exit
  %i.j = call i32 @sysinfo(ptr noundef nonnull %0) #15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.m, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %uv__read_proc_meminfo.exit, %bb.d
  %.0 = phi i64 [ %i.i, %uv__read_proc_meminfo.exit ], [ %i.q, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @uv_get_constrained_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i32 @uv__slurp(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a, i64 noundef 1024) #15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = call i64 @uv__get_rlimit_max_memory() #15
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = call fastcc i64 @uv__get_cgroup_constrained_memory(ptr noundef %i.a) ; 3 uses
  %i.f = call i64 @uv__get_rlimit_max_memory() #15 ; 3 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.b, %bb.d
  %.09 = phi i64 [ %i.i, %bb.d ], [ %i.f, %bb.b ], [ %i.e, %bb.c ], [ %i.d, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.09
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @uv__get_cgroup_constrained_memory(ptr noundef nonnull align 1 dereferenceable(1024) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [4097 x i8], align 16             ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [32 x i8], align 16               ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [32 x i8], align 16               ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca [32 x i8], align 16               ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca [4097 x i8], align 16             ; 6 uses
  %i.o = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.21, i64 noundef 4) #16
  %.not = icmp eq i32 %i.o, 0
end_hunk_1
