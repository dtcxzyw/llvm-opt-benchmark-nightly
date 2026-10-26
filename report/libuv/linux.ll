Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/linux?download=true
inline.NumInlined: 105
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uv__iou_init:bb.a
  %.not78 = icmp eq i32 %i.aw, 0
  br i1 %.not78, label %bb.m, label %.thread96

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = load i32, ptr %i.x, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ay
  store ptr %i.az, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.af, align 8
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aq, ptr %i.cf, align 8
  %i.cg = load i32, ptr %i.ag, align 4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ar, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.ae, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.an, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ao, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.ap, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.s, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 0, ptr %i.cq, align 4
  br i1 %i.m, label %uv__use_io_uring.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = load i32, ptr %i.y, align 8
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cs
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.o
  %.068110 = phi i32 [ 0, %bb.n ], [ %i.cw, %bb.o ] ; 3 uses
  %i.cu = zext i32 %.068110 to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  store i32 %.068110, ptr %i.cv, align 4
  %i.cw = add i32 %.068110, 1                     ; 2 uses
  %i.cx = load i32, ptr %i.bk, align 8
  %.not79 = icmp ugt i32 %i.cw, %i.cx
  br i1 %.not79, label %uv__use_io_uring.exit.thread, label %bb.o, !llvm.loop !9

bb.p:                                             ; preds = %bb.j
  br i1 %i.as, label %bb.q, label %.thread96

.thread96:                                        ; preds = %bb.l, %bb.p
  %i.cy = call i32 @munmap(ptr noundef %i.aq, i64 noundef %i.ao) #15 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.thread96, %bb.p
  br i1 %i.at, label %.thread106, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = call i32 @munmap(ptr noundef %i.ar, i64 noundef %i.ap) #15 ; 0 uses
  br label %.thread106

.thread106:                                       ; preds = %bb.i, %bb.r, %bb.q
  %i.da = call i32 @uv__close(i32 noundef %i.s) #15 ; 0 uses
  br label %uv__use_io_uring.exit.thread

uv__use_io_uring.exit.thread:                     ; preds = %bb.o, %bb.b, %bb.m, %bb.h, %uv__use_io_uring.exit, %.thread106
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__io_fork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.watcher_list, align 8       ; 4 uses
  %2 = alloca %struct.uv__queue, align 8          ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call i32 @uv__close(i32 noundef %i.d) #15 ; 0 uses
  store i32 -1, ptr %i.c, align 8
  tail call void @uv__platform_loop_delete(ptr noundef %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  store i32 -1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  store i32 -2, ptr %i.i, align 8
  store ptr null, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i32 -1, ptr %i.j, align 8
  %i.k = tail call i32 @epoll_create1(i32 noundef 524288) #15 ; 3 uses
  store i32 %i.k, ptr %i.c, align 8
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %uv__platform_loop_init.exit, label %uv__platform_loop_init.exit.thread

uv__platform_loop_init.exit.thread:               ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  tail call fastcc void @uv__iou_init(i32 noundef %i.k, ptr noundef nonnull %i.m, i32 noundef 256, i32 noundef 0)
  br label %bb.b

uv__platform_loop_init.exit:                      ; preds = %bb.a
  %i.n = tail call ptr @__errno_location() #17
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = sub nsw i32 0, %i.o
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %uv__platform_loop_init.exit.thread, %uv__platform_loop_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.q = icmp eq ptr %i.b, null
  br i1 %i.q, label %uv__inotify_fork.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  store ptr %i.r, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.i, %bb.c
  %.06.i48.i = phi ptr [ %i.b, %bb.c ], [ %.06.i.pr.i, %thread-pre-split.i ] ; 2 uses
  %.06.i.pr.i = load ptr, ptr %.06.i48.i, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.06.i.pr.i, null
  br i1 %.not.i.i, label %watcher_root_RB_MINMAX.exit.preheader.i, label %thread-pre-split.i, !llvm.loop !10

watcher_root_RB_MINMAX.exit.preheader.i:          ; preds = %thread-pre-split.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %watcher_root_RB_MINMAX.exit.i, %watcher_root_RB_MINMAX.exit.preheader.i
  %.050.i = phi ptr [ %.06.i48.i, %watcher_root_RB_MINMAX.exit.preheader.i ], [ %.2.i.i, %watcher_root_RB_MINMAX.exit.i ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.050.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i39.i = icmp eq ptr %i.v, null
  br i1 %.not.i39.i, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0.i40.i = phi ptr [ %i.w, %.preheader.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %.0.i40.i, align 8         ; 2 uses
  %.not20.i.i = icmp eq ptr %i.w, null
  br i1 %.not20.i.i, label %watcher_root_RB_NEXT.exit.i, label %.preheader.i.i, !llvm.loop !11

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.050.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %.050.i, %i.z
  br i1 %i.aa, label %watcher_root_RB_NEXT.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %.1.i.i = phi ptr [ %i.ac, %bb.h ], [ %.050.i, %.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %.not19.i.i = icmp eq ptr %i.ac, null
  br i1 %.not19.i.i, label %watcher_root_RB_NEXT.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %.1.i.i, %i.ae
  br i1 %i.af, label %bb.g, label %watcher_root_RB_NEXT.exit.i, !llvm.loop !12

watcher_root_RB_NEXT.exit.i:                      ; preds = %.preheader.i.i, %bb.h, %bb.g, %bb.f
  %.2.i.i = phi ptr [ null, %bb.g ], [ %i.y, %bb.f ], [ %i.ac, %bb.h ], [ %.0.i40.i, %.preheader.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.050.i, i64 48 ; 2 uses
  store i32 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.050.i, i64 32 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not.i41.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i41.i, label %uv__queue_move.exit.thread.i, label %uv__queue_move.exit.i

uv__queue_move.exit.thread.i:                     ; preds = %watcher_root_RB_NEXT.exit.i
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %i.t, align 8
  br label %watcher_root_RB_MINMAX.exit.i

uv__queue_move.exit.i:                            ; preds = %watcher_root_RB_NEXT.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.050.i, i64 40 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  store ptr %i.ak, ptr %i.t, align 8
  store ptr %2, ptr %i.ak, align 8
  store ptr %i.ai, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  store ptr %i.am, ptr %i.aj, align 8
  store ptr %i.ah, ptr %i.am, align 8
  store ptr %2, ptr %i.al, align 8
  %.pre.i = load ptr, ptr %2, align 8             ; 2 uses
  %.not4549.i = icmp eq ptr %2, %.pre.i
  br i1 %.not4549.i, label %watcher_root_RB_MINMAX.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %uv__queue_move.exit.i, %uv_fs_event_stop.exit.i
  %i.an = phi ptr [ %i.bt, %uv_fs_event_stop.exit.i ], [ %.pre.i, %uv__queue_move.exit.i ] ; 13 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr @uv__strdup(ptr noundef %i.ap) #15
  %i.ar = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 6 uses
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.ar, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.av, align 8
  store ptr %i.ah, ptr %i.an, align 8
  %i.aw = load ptr, ptr %i.aj, align 8            ; 2 uses
  store ptr %i.aw, ptr %i.as, align 8
  store ptr %i.an, ptr %i.aw, align 8
  store ptr %i.an, ptr %i.aj, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 -24 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8            ; 3 uses
  %i.az = and i32 %i.ay, 4
  %.not.i42.i = icmp eq i32 %i.az, 0
  br i1 %.not.i42.i, label %uv_fs_event_stop.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 -104 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 832
  %.val.i.i = load ptr, ptr %i.be, align 8        ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.l
  %.03.i.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.l ], [ %.val.i.i, %bb.i ] ; 4 uses
  %i.bf = getelementptr i8, ptr %.03.i.i.i.i, i64 64
  %.0.val.i.i.i.i = load i32, ptr %i.bf, align 8  ; 2 uses
  %i.bg = icmp slt i32 %i.bd, %.0.val.i.i.i.i
  br i1 %i.bg, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not11.i.i.i.i = icmp eq i32 %i.bd, %.0.val.i.i.i.i
  br i1 %.not11.i.i.i.i, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  br label %bb.l

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
end_hunk_0
begin_hunk_1_@uv__statx_to_stat:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @uv__io_poll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1024 x %struct.epoll_event], align 16 ; 5 uses
  %3 = alloca [256 x %struct.epoll_event], align 16 ; 7 uses
  %4 = alloca %struct.uv__invalidate, align 8     ; 6 uses
  %5 = alloca %struct.epoll_event, align 4        ; 8 uses
  %6 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @sigemptyset(ptr noundef nonnull %6) #15 ; 0 uses
  %i.h = call i32 @sigaddset(ptr noundef nonnull %6, i32 noundef 27) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0122 = phi ptr [ %6, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = load i32, ptr %i.b, align 8
  %i.l = and i32 %i.k, 1
  %.not134 = icmp eq i32 %i.l, 0                  ; 3 uses
  %. = select i1 %.not134, i32 %1, i32 0
  %.149 = select i1 %.not134, i32 0, i32 %1       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8              ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not153172 = icmp eq ptr %i.o, %i.p
  br i1 %.not153172, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bl, %.backedge ] ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  store ptr %i.w, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.v, ptr %i.v, align 8
  store ptr %i.v, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 0
  %spec.store.select = select i1 %i.ad, i32 1, i32 3 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  store i32 %i.af, ptr %i.ab, align 4
  store i32 %i.af, ptr %5, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ah = load i32, ptr %i.ag, align 8            ; 4 uses
  store i32 %i.ah, ptr %i.q, align 4
  %i.ai = load i32, ptr %i.r, align 8
  %.not146 = icmp eq i32 %i.ai, -1
  br i1 %.not146, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %i.s, align 8             ; 2 uses
  %i.ak = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = and i32 %i.al, %i.aj                    ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ao ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull readonly align 4 dereferenceable(12) %5, i64 12, i1 false)
  %i.aq = load ptr, ptr %i.u, align 8
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.aq, i64 %i.ao ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i8 0, i64 64, i1 false)
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.n, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i32 %spec.store.select, ptr %i.av, align 8
  %i.aw = sext i32 %i.ah to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.aw, ptr %i.ax, align 8
  store i8 29, ptr %i.ar, align 8
  %i.ay = shl i32 %i.an, 2
  %i.az = or disjoint i32 %i.ay, %spec.store.select
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.aw, 32
  %i.bc = or disjoint i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = load ptr, ptr %i.t, align 8
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = xor i32 %i.bh, %i.bf
  %i.bj = and i32 %i.bi, %i.aj
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  call fastcc void @uv__epoll_ctl_flush(i32 noundef %i.n, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %3), !inline_history !2
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e, %bb.g, %bb.h
  %i.bl = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not153 = icmp eq ptr %i.o, %i.bl
  br i1 %.not153, label %._crit_edge, label %bb.d, !llvm.loop !17

bb.g:                                             ; preds = %bb.d
  %i.bm = call i32 @epoll_ctl(i32 noundef %i.n, i32 noundef %spec.store.select, i32 noundef %i.ah, ptr noundef nonnull %5) #15
  %.not147 = icmp eq i32 %i.bm, 0
  br i1 %.not147, label %.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = call i32 @epoll_ctl(i32 noundef %i.n, i32 noundef 3, i32 noundef %i.ah, ptr noundef nonnull %5) #15
  %.not148 = icmp eq i32 %i.bn, 0
  br i1 %.not148, label %.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @abort() #18
  unreachable

._crit_edge:                                      ; preds = %.backedge, %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.bo, align 8
  store ptr %3, ptr %4, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 -1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 436 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  br label %.outer

.outer:                                           ; preds = %bb.am, %._crit_edge
  %.1125.ph = phi i32 [ %i.kb, %bb.am ], [ %., %._crit_edge ]
  %.0123.ph = phi i32 [ %i.kb, %bb.am ], [ %1, %._crit_edge ]
  %.0114.ph = phi i32 [ %.0114.ph161, %bb.am ], [ 48, %._crit_edge ]
  %.1.ph = phi i1 [ true, %bb.am ], [ %.not134, %._crit_edge ]
  br label %.outer159

.outer159:                                        ; preds = %.outer, %bb.ak
  %.1125.ph160 = phi i32 [ %.1125.ph, %.outer ], [ 0, %bb.ak ]
  %.0114.ph161 = phi i32 [ %.0114.ph, %.outer ], [ %i.jy, %bb.ak ] ; 2 uses
  %.1.ph162 = phi i1 [ %.1.ph, %.outer ], [ true, %bb.ak ]
  br label %bb.j

bb.j:                                             ; preds = %.outer159, %bb.al
  %.1125 = phi i32 [ %.3127, %bb.al ], [ %.1125.ph160, %.outer159 ] ; 4 uses
  %.1 = phi i1 [ true, %bb.al ], [ %.1.ph162, %.outer159 ] ; 3 uses
  %i.ce = load i32, ptr %i.bq, align 4
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = load i32, ptr %i.br, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit158, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ci = load i32, ptr %i.bs, align 8
  %.not136 = icmp eq i32 %i.ci, -1
  br i1 %.not136, label %.loopexit156, label %.preheader155

.preheader155:                                    ; preds = %bb.l
  %i.cj = load ptr, ptr %i.c, align 8
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = load ptr, ptr %i.bt, align 8
  %i.cm = load i32, ptr %i.cl, align 4
  %.not137173 = icmp eq i32 %i.ck, %i.cm
  br i1 %.not137173, label %.loopexit156, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader155, %.lr.ph174
  call fastcc void @uv__epoll_ctl_flush(i32 noundef %i.n, ptr noundef nonnull %i.c, ptr noundef %3)
  %i.cn = load ptr, ptr %i.c, align 8
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = load ptr, ptr %i.bt, align 8
  %i.cq = load i32, ptr %i.cp, align 4
  %.not137 = icmp eq i32 %i.co, %i.cq
  br i1 %.not137, label %.loopexit156, label %.lr.ph174, !llvm.loop !18

.loopexit156:                                     ; preds = %.lr.ph174, %.preheader155, %bb.l
  call void @uv__io_poll_prepare(ptr noundef nonnull %0, ptr noundef null, i32 noundef %.1125) #15
  %i.cr = call i32 @epoll_pwait(i32 noundef %i.n, ptr noundef nonnull %2, i32 noundef 1024, i32 noundef %.1125, ptr noundef %.0122) #15 ; 6 uses
  call void @uv__io_poll_check(ptr noundef nonnull %0, ptr noundef null) #15
  %i.cs = add i32 %i.cr, 1
  %or.cond = icmp ult i32 %i.cs, 2
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit156
  %i.ct = icmp eq i32 %i.cr, 0
  %brmerge.not = select i1 %.1, i1 %i.ct, i1 false
  %.149.mux = select i1 %.1, i32 %.1125, i32 %.149
  br i1 %brmerge.not, label %.loopexit, label %bb.al

bb.n:                                             ; preds = %.loopexit156
  store i32 %i.cr, ptr %i.bp, align 8
  store ptr %4, ptr %i.bu, align 8
  %i.cu = icmp sgt i32 %i.cr, 0
  br i1 %i.cu, label %.lr.ph180.preheader, label %._crit_edge181

.lr.ph180.preheader:                              ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %i.cr to i64
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %uv__poll_io_uring.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph180.preheader ], [ %indvars.iv.next, %uv__poll_io_uring.exit ] ; 2 uses
  %.0115177 = phi i32 [ 0, %.lr.ph180.preheader ], [ %.1116, %uv__poll_io_uring.exit ] ; 6 uses
  %.0117176 = phi i32 [ 0, %.lr.ph180.preheader ], [ %.2119, %uv__poll_io_uring.exit ] ; 6 uses
  %.0120175 = phi i32 [ 0, %.lr.ph180.preheader ], [ %.1121, %uv__poll_io_uring.exit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 4 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %uv__poll_io_uring.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph180
  %i.cz = load i32, ptr %i.bv, align 8
  %i.da = icmp eq i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %i.by, align 8
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = load ptr, ptr %i.bz, align 8
  %i.de = load atomic i32, ptr %i.dd acquire, align 4 ; 3 uses
  %i.df = load i32, ptr %i.ca, align 8
  %i.dg = load ptr, ptr %i.cb, align 8
  %.not44.i = icmp eq i32 %i.dc, %i.de
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.v
  %.046.i = phi i32 [ %.1.i, %bb.v ], [ 0, %bb.p ] ; 2 uses
  %.03945.i = phi i32 [ %i.hv, %bb.v ], [ %i.dc, %bb.p ] ; 2 uses
  %i.dh = and i32 %.03945.i, %i.df
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = inttoptr i64 %i.dk to ptr               ; 25 uses
  %i.dm = load i32, ptr %i.cc, align 8
  %i.dn = add i32 %i.dm, -1
  store i32 %i.dn, ptr %i.cc, align 8
  %i.do = load i32, ptr %i.br, align 4
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr %i.br, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dr = load i32, ptr %i.dq, align 8            ; 3 uses
  %i.ds = icmp eq i32 %i.dr, -95
  br i1 %i.ds, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  call void @uv__fs_post(ptr noundef nonnull %0, ptr noundef %i.dl) #15
  br label %bb.v

bb.r:                                             ; preds = %.lr.ph.i
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.dw = load i32, ptr %i.dv, align 8
  %.off.i = add i32 %i.dw, -6
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 96 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 21 uses
  store ptr null, ptr %i.dx, align 8
  %i.dz = icmp eq i32 %i.dr, 0
  br i1 %i.dz, label %bb.t, label %uv__iou_fs_statx_post.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 112 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  %i.ec = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 140
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.ef = shl i32 %i.ec, 8
  %i.eg = and i32 %i.ef, 1048320
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = and i32 %i.ec, -4096
  %i.ej = zext i32 %i.ei to i64
  %i.ek = shl nuw i64 %i.ej, 32
  %i.el = or disjoint i64 %i.ek, %i.eh
  %i.em = and i32 %i.ee, 255
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = or disjoint i64 %i.el, %i.en
  %i.ep = and i32 %i.ee, -256
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 12
  %i.es = or disjoint i64 %i.eo, %i.er
  store i64 %i.es, ptr %i.ea, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  %i.eu = load i16, ptr %i.et, align 4
  %i.ev = zext i16 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dl, i64 120
  store i64 %i.ev, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dl, i64 128
  store i64 %i.ez, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dl, i64 136
  store i64 %i.fd, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  store i64 %i.fh, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %i.fk = load i32, ptr %i.fj, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dy, i64 132
  %i.fm = load i32, ptr %i.fl, align 4            ; 2 uses
  %i.fn = shl i32 %i.fk, 8
  %i.fo = and i32 %i.fn, 1048320
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = and i32 %i.fk, -4096
  %i.fr = zext i32 %i.fq to i64
  %i.fs = shl nuw i64 %i.fr, 32
  %i.ft = or disjoint i64 %i.fs, %i.fp
  %i.fu = and i32 %i.fm, 255
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = or disjoint i64 %i.ft, %i.fv
  %i.fx = and i32 %i.fm, -256
  %i.fy = zext i32 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 12
  %i.ga = or disjoint i64 %i.fw, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dl, i64 152
  store i64 %i.ga, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dl, i64 160
  store i64 %i.gd, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dl, i64 168
  store i64 %i.gg, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dl, i64 176
  store i64 %i.gk, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  store i64 %i.gn, ptr %i.go, align 8
end_hunk_1
begin_hunk_2_@uv__io_poll:bb.a
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  store i64 %i.he, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  %i.hh = load i32, ptr %i.hg, align 8
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dl, i64 248
  store i64 %i.hi, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dl, i64 256
  store i64 %i.hl, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dl, i64 264
  store i64 %i.hp, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dl, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  store ptr %i.ea, ptr %i.dx, align 8
  br label %uv__iou_fs_statx_post.exit.i

uv__iou_fs_statx_post.exit.i:                     ; preds = %bb.t, %bb.s
  call void @uv__free(ptr noundef %i.dy) #15
  br label %bb.u

bb.u:                                             ; preds = %uv__iou_fs_statx_post.exit.i, %bb.r
  call void @uv__metrics_update_idle_time(ptr noundef nonnull %0) #15
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull %i.dl) #15, !inline_history !19
  %i.hu = add nsw i32 %.046.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.1.i = phi i32 [ %.046.i, %bb.q ], [ %i.hu, %bb.u ] ; 2 uses
  %i.hv = add i32 %.03945.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.hv, %i.de
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !20

._crit_edge.loopexit.i:                           ; preds = %bb.v
  %i.hw = sext i32 %.1.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.p
  %.0.lcssa.i = phi i64 [ 0, %bb.p ], [ %i.hw, %._crit_edge.loopexit.i ] ; 2 uses
  %i.hx = load ptr, ptr %i.by, align 8
  store atomic i32 %i.de, ptr %i.hx release, align 4
  %i.hy = load ptr, ptr %i.cd, align 8
  %i.hz = load atomic i32, ptr %i.hy acquire, align 4
  %i.ia = and i32 %i.hz, 2
  %.not42.i = icmp eq i32 %i.ia, 0
  br i1 %.not42.i, label %bb.x, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %bb.w
  %i.ib = load i32, ptr %i.bv, align 8
  %i.ic = call i64 (i64, ...) @syscall(i64 noundef 426, i32 noundef %i.ib, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i64 noundef 0) #15
  %i.id = trunc i64 %i.ic to i32                  ; 2 uses
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %.preheader.i
  %i.if = tail call ptr @__errno_location() #17
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = icmp eq i32 %i.ig, 4
  br i1 %i.ih, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !21

.critedge.i:                                      ; preds = %.preheader.i
  %i.ii = icmp slt i32 %i.id, 0
  br i1 %i.ii, label %.critedge.thread.i, label %bb.x

.critedge.thread.i:                               ; preds = %bb.w, %.critedge.i
  call void @perror(ptr noundef nonnull @.str.26) #19
  br label %bb.x

bb.x:                                             ; preds = %.critedge.thread.i, %.critedge.i, %._crit_edge.i
  %i.ij = load ptr, ptr %i.a, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = add i64 %i.il, %.0.lcssa.i
  store i64 %i.im, ptr %i.ik, align 8
  %i.in = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 192
  %i.ip = load i32, ptr %i.io, align 8
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.y, label %uv__poll_io_uring.exit

bb.y:                                             ; preds = %bb.x
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = add i64 %i.is, %.0.lcssa.i
  store i64 %i.it, ptr %i.ir, align 8
  br label %uv__poll_io_uring.exit

bb.z:                                             ; preds = %bb.o
  %i.iu = load ptr, ptr %i.bw, align 8
  %i.iv = sext i32 %i.cx to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8            ; 4 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.iz = call i32 @epoll_ctl(i32 noundef %i.n, i32 noundef 2, i32 noundef %i.cx, ptr noundef nonnull %i.cv) #15 ; 0 uses
  br label %uv__poll_io_uring.exit

bb.ab:                                            ; preds = %bb.z
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 40 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8
  %i.jc = or i32 %i.jb, 24
  %i.jd = load i32, ptr %i.cv, align 4
  %i.je = and i32 %i.jd, %i.jc                    ; 3 uses
  store i32 %i.je, ptr %i.cv, align 4
  switch i32 %i.je, label %bb.ac [
    i32 8, label %.thread
    i32 16, label %.thread
    i32 0, label %uv__poll_io_uring.exit
  ]

.thread:                                          ; preds = %bb.ab, %bb.ab
  %i.jf = load i32, ptr %i.ja, align 8
  %i.jg = and i32 %i.jf, 8199
  %i.jh = or i32 %i.jg, %i.je
  store i32 %i.jh, ptr %i.cv, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread
  %i.ji = icmp eq ptr %i.ix, %i.bx
  br i1 %i.ji, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @uv__metrics_update_idle_time(ptr noundef nonnull %0) #15
  %i.jj = load i32, ptr %i.cv, align 4
  call void @uv__io_cb(ptr noundef nonnull %0, ptr noundef nonnull %i.ix, i32 noundef %i.jj) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.1118 = phi i32 [ %.0117176, %bb.ad ], [ 1, %bb.ac ]
  %i.jk = add nsw i32 %.0115177, 1
  br label %uv__poll_io_uring.exit

uv__poll_io_uring.exit:                           ; preds = %bb.ab, %bb.y, %bb.x, %bb.ae, %.lr.ph180, %bb.aa
  %.1121 = phi i32 [ %.0120175, %.lr.ph180 ], [ %.0120175, %bb.ab ], [ %.0120175, %bb.aa ], [ %.0120175, %bb.ae ], [ 1, %bb.x ], [ 1, %bb.y ] ; 2 uses
  %.2119 = phi i32 [ %.0117176, %.lr.ph180 ], [ %.0117176, %bb.ab ], [ %.0117176, %bb.aa ], [ %.1118, %bb.ae ], [ %.0117176, %bb.x ], [ %.0117176, %bb.y ] ; 3 uses
  %.1116 = phi i32 [ %.0115177, %.lr.ph180 ], [ %.0115177, %bb.ab ], [ %.0115177, %bb.aa ], [ %i.jk, %bb.ae ], [ %.0115177, %bb.x ], [ %.0115177, %bb.y ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge181.loopexit, label %.lr.ph180, !llvm.loop !22

._crit_edge181.loopexit:                          ; preds = %uv__poll_io_uring.exit
  %i.jl = or i32 %.2119, %.1121
  %i.jm = icmp eq i32 %.2119, 0
  %i.jn = icmp eq i32 %i.jl, 0
  br label %._crit_edge181

._crit_edge181:                                   ; preds = %._crit_edge181.loopexit, %bb.n
  %.0120.lcssa = phi i1 [ true, %bb.n ], [ %i.jn, %._crit_edge181.loopexit ]
  %.0117.lcssa = phi i1 [ true, %bb.n ], [ %i.jm, %._crit_edge181.loopexit ]
  %.0115.lcssa = phi i32 [ 0, %bb.n ], [ %.1116, %._crit_edge181.loopexit ] ; 2 uses
  %i.jo = sext i32 %.0115.lcssa to i64            ; 2 uses
  %i.jp = load ptr, ptr %i.a, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = add i64 %i.jr, %i.jo
  store i64 %i.js, ptr %i.jq, align 8
  br i1 %.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge181
  %i.jt = load ptr, ptr %i.a, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = add i64 %i.jv, %i.jo
  store i64 %i.jw, ptr %i.ju, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge181
  %.2126 = phi i32 [ %.149, %bb.af ], [ %.1125, %._crit_edge181 ]
  br i1 %.0117.lcssa, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @uv__metrics_update_idle_time(ptr noundef nonnull %0) #15
  call void @uv__signal_event(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, i32 noundef 1) #15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr null, ptr %i.bu, align 8
  br i1 %.0120.lcssa, label %bb.aj, label %.loopexit158

bb.aj:                                            ; preds = %bb.ai
  %.not140 = icmp eq i32 %.0115.lcssa, 0
  br i1 %.not140, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jx = icmp ne i32 %i.cr, 1024
  %i.jy = add nsw i32 %.0114.ph161, -1            ; 2 uses
  %.not141 = icmp eq i32 %i.jy, 0
  %or.cond151 = select i1 %i.jx, i1 true, i1 %.not141
  br i1 %or.cond151, label %.loopexit158, label %.outer159

bb.al:                                            ; preds = %bb.m, %bb.aj
  %.3127 = phi i32 [ %.2126, %bb.aj ], [ %.149.mux, %bb.m ] ; 2 uses
  switch i32 %.3127, label %bb.am [
    i32 0, label %.loopexit158
    i32 -1, label %bb.j
  ]

bb.am:                                            ; preds = %bb.al
  %i.jz = load i64, ptr %i.i, align 8
  %.neg = sub i64 %i.j, %i.jz
  %i.ka = trunc i64 %.neg to i32
  %i.kb = add i32 %.0123.ph, %i.ka                ; 3 uses
  %i.kc = icmp slt i32 %i.kb, 1
  br i1 %i.kc, label %.loopexit158, label %.outer

.loopexit158:                                     ; preds = %bb.am, %bb.ak, %bb.al, %bb.ai, %bb.k
  %i.kd = load i32, ptr %i.bs, align 8
  %.not144 = icmp eq i32 %i.kd, -1
  br i1 %.not144, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit158
  %i.ke = load ptr, ptr %i.c, align 8
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = load ptr, ptr %i.bt, align 8
  %i.kh = load i32, ptr %i.kg, align 4
  %.not145184 = icmp eq i32 %i.kf, %i.kh
  br i1 %.not145184, label %.loopexit, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader, %.lr.ph185
  call fastcc void @uv__epoll_ctl_flush(i32 noundef %i.n, ptr noundef nonnull %i.c, ptr noundef %3)
  %i.ki = load ptr, ptr %i.c, align 8
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = load ptr, ptr %i.bt, align 8
  %i.kl = load i32, ptr %i.kk, align 4
  %.not145 = icmp eq i32 %i.kj, %i.kl
  br i1 %.not145, label %.loopexit, label %.lr.ph185, !llvm.loop !23

.loopexit:                                        ; preds = %bb.m, %.lr.ph185, %.preheader, %.loopexit158
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__epoll_ctl_flush(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [256 x %struct.epoll_event], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = load ptr, ptr %1, align 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sub i32 %i.c, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i64 (i64, ...) @syscall(i64 noundef 426, i32 noundef %i.h, i32 noundef %i.f, i32 noundef %i.f, i32 noundef 1, ptr noundef null, i64 noundef 0) #15
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__errno_location() #17
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.b, label %.critedge.thread, !llvm.loop !24

.critedge:                                        ; preds = %bb.b
  %i.o = icmp slt i32 %i.j, 0
  br i1 %i.o, label %.critedge.thread, label %bb.d

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  tail call void @perror(ptr noundef nonnull @.str.26) #19
  br label %bb.d

bb.d:                                             ; preds = %.critedge.thread, %.critedge
  %.not = icmp eq i32 %i.f, %i.j
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %3, ptr noundef nonnull align 1 dereferenceable(3072) %2, i64 3072, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = load i32, ptr %i.t, align 4
  %.not3034 = icmp eq i32 %i.s, %i.u
  br i1 %.not3034, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %i.z = phi i32 [ %i.s, %.lr.ph ], [ %i.bt, %.backedge ] ; 2 uses
  %i.aa = phi ptr [ %i.r, %.lr.ph ], [ %i.bs, %.backedge ]
  %i.ab = add i32 %i.z, 1
  store i32 %i.ab, ptr %i.aa, align 4
  %i.ac = load i32, ptr %i.v, align 8
  %i.ad = and i32 %i.ac, %i.z
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.ag, align 8            ; 4 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 3
  %i.an = lshr i64 %i.ak, 2
  %i.ao = and i64 %i.an, 255
  switch i32 %i.am, label %bb.i [
    i32 2, label %.backedge
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not32 = icmp eq i32 %i.ai, -17
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ao
  %i.aq = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = and i32 %i.as, %i.aq                    ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.av ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aw, ptr noundef nonnull align 4 dereferenceable(12) %i.ap, i64 12, i1 false)
  %i.ax = load ptr, ptr %i.y, align 8
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %i.av ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i8 0, i64 64, i1 false)
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 3, ptr %i.bc, align 8
  %i.bd = ashr i64 %i.ak, 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.bd, ptr %i.be, align 8
  store i8 29, ptr %i.ay, align 8
  %i.bf = shl i32 %i.au, 2
  %i.bg = or disjoint i32 %i.bf, 3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = and i64 %i.ak, -4294967296
  %i.bj = or disjoint i64 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %1, align 8
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = xor i32 %i.bo, %i.bm
  %i.bq = and i32 %i.bp, %i.aq
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.m, label %.backedge

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @uv__epoll_ctl_flush(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !2
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l, %bb.g, %bb.h
  %i.bs = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = load ptr, ptr %i.q, align 8
  %i.bv = load i32, ptr %i.bu, align 4
  %.not30 = icmp eq i32 %i.bt, %i.bv
  br i1 %.not30, label %._crit_edge, label %bb.g, !llvm.loop !25

._crit_edge:                                      ; preds = %.backedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

declare void @uv__io_poll_prepare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @epoll_pwait(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uv__io_poll_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uv__metrics_update_idle_time(ptr noundef) local_unnamed_addr #2

declare void @uv__io_cb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uv__signal_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @uv__hrtime(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i64, ptr @uv__hrtime.fast_clock_id monotonic, align 8 ; 2 uses
  %.not11 = icmp eq i64 %i.a, -1
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = call i32 @clock_getres(i32 noundef 6, ptr noundef nonnull %1) #15
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp slt i64 %i.e, 1000001
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %spec.select = select i1 %or.cond, i64 6, i64 1 ; 2 uses
  store atomic i64 %spec.select, ptr @uv__hrtime.fast_clock_id monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi i64 [ 1, %bb.a ], [ %i.a, %bb.b ], [ %spec.select, %bb.c ]
  %i.g = trunc nuw nsw i64 %.1 to i32
  %i.h = call i32 @clock_gettime(i32 noundef %i.g, ptr noundef nonnull %1) #15
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %1, align 8
  %i.j = mul i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.j, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @clock_getres(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @uv_resident_set_memory(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i32 @uv__slurp(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 41) #16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 32) #16 ; 2 uses
end_hunk_2
begin_hunk_3_@strchr

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_uptime(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 4 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i32 @uv__slurp(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i64 noundef 128) #15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef %0) #15
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = call i32 @clock_gettime(i32 noundef 7, ptr noundef nonnull %1) #15
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #17
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub nsw i32 0, %i.h
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8
  %i.k = sitofp i64 %i.j to double
  store double %i.k, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ %i.i, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_cpu_info(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.cpu, align 8                ; 9 uses
  %i.c = alloca [1024 x i8], align 16             ; 6 uses
  %i.d = alloca [8 x [64 x i8]], align 16         ; 7 uses
  %i.e = alloca [1024 x i8], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  store i64 31093567915781749, ptr %i.d, align 16
  %i.f = tail call ptr @uv__calloc(i64 noundef 8192, i64 noundef 56) #15 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @uv__open_file(ptr noundef nonnull @.str.10) #15 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @uv__free(ptr noundef nonnull %i.f) #15
  %i.j = tail call ptr @__errno_location() #17
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sub nsw i32 0, %i.k
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.m = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.h)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.preheader88

.preheader88:                                     ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %.outer

bb.e:                                             ; preds = %bb.d
  call void @abort() #18
  unreachable

bb.f:                                             ; preds = %.outer, %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.t = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %i.s) #15
  %.not = icmp eq i32 %i.t, 7
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.h)
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.a, align 4              ; 5 uses
  %i.x = icmp ugt i32 %i.w, 8191
  br i1 %i.x, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.aa = and i32 %i.w, 7
  %i.ab = shl nuw nsw i32 1, %i.aa
  %i.ac = lshr i32 %i.w, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = trunc nuw i32 %i.ab to i8
  %i.ah = or i8 %i.af, %i.ag
  store i8 %i.ah, ptr %i.ae, align 1
  %i.ai = add nuw nsw i32 %i.w, 1
  %spec.select = call i32 @llvm.umax.i32(i32 %.066.ph, i32 %i.ai)
  br label %.outer

.outer:                                           ; preds = %.preheader88, %bb.j
  %.066.ph = phi i32 [ 0, %.preheader88 ], [ %spec.select, %bb.j ] ; 5 uses
  br label %bb.f

bb.k:                                             ; preds = %bb.f
  %i.aj = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.ak = call ptr @uv__open_file(ptr noundef nonnull @.str.12) #15 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.t, label %.preheader87

.preheader87:                                     ; preds = %bb.k
  %i.am = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #15
  %.not7893 = icmp eq i32 %i.am, 1
  br i1 %.not7893, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader87
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 13 ; 3 uses
  br label %.preheader

.loopexit:                                        ; preds = %.loopexit86
  %i.ao = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #15
  %.not78 = icmp eq i32 %i.ao, 1
  br i1 %.not78, label %.preheader.backedge, label %._crit_edge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %i.ap = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.ak)
  %.not79 = icmp eq ptr %i.ap, null
  br i1 %.not79, label %.loopexit86.preheader, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.aq = load i64, ptr %i.e, align 16
  %i.ar = xor i64 %i.aq, 7020584519046819693
  %i.as = getelementptr i8, ptr %i.e, i64 5
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 2322178889094360608
  %i.av = or i64 %i.ar, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %.not80 = icmp eq i32 %i.ax, 0
  br i1 %.not80, label %bb.m, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.l, %.loopexit
  br label %.preheader, !llvm.loop !26

bb.m:                                             ; preds = %bb.l
  %i.ay = call i64 @strcspn(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.14) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.068.idx91 = phi i64 [ 0, %bb.m ], [ %.068.add, %bb.n ] ; 3 uses
  %.068.ptr92 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.068.idx91 ; 2 uses
  %i.az = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.068.ptr92) #16
  %i.ba = call i32 @strncmp(ptr noundef nonnull %i.an, ptr noundef nonnull %.068.ptr92, i64 noundef %i.az) #16
  %i.bb = icmp ne i32 %i.ba, 0                    ; 2 uses
  %.068.add = add nuw nsw i64 %.068.idx91, 64     ; 3 uses
  %i.bc = icmp samesign ult i64 %.068.idx91, 448
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.n, label %bb.o, !llvm.loop !27

bb.o:                                             ; preds = %bb.n
  %.068.ptr.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.068.add ; 2 uses
  %i.be = trunc i64 %i.ay to i32
  br i1 %i.bb, label %.loopexit86.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i8, ptr %.068.ptr.le, align 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.068.ptr.le, i64 noundef 64, ptr noundef nonnull @.str.15, i32 noundef %i.be, ptr noundef nonnull %i.an) #15 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bj = icmp ult i32 %i.bi, %.066.ph
  br i1 %i.bj, label %bb.s, label %.loopexit86.preheader

bb.s:                                             ; preds = %bb.r
  %i.bk = lshr exact i64 %.068.add, 6
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = zext nneg i32 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i32 %i.bl, ptr %i.bo, align 8
  br label %.loopexit86.preheader

.loopexit86.preheader:                            ; preds = %.preheader, %bb.r, %bb.s, %bb.o
  br label %.loopexit86

.loopexit86:                                      ; preds = %.loopexit86.preheader, %.loopexit86
  %i.bp = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.ak)
  %i.bq = icmp eq ptr %i.bp, null
  %i.br = load i8, ptr %i.e, align 16
  %i.bs = icmp eq i8 %i.br, 10
  %or.cond = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond, label %.loopexit, label %.loopexit86, !llvm.loop !26

._crit_edge:                                      ; preds = %.loopexit, %.preheader87
  %i.bt = call i32 @fclose(ptr noundef nonnull %i.ak) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %._crit_edge
  store i32 0, ptr %i.a, align 4
  %.not103 = icmp eq i32 %.066.ph, 0              ; 2 uses
  br i1 %.not103, label %._crit_edge97, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.y
  %.06395 = phi i32 [ %.1, %bb.y ], [ 0, %bb.t ]  ; 2 uses
  %storemerge94 = phi i32 [ %i.cl, %bb.y ], [ 0, %bb.t ] ; 4 uses
  %i.bu = lshr i32 %storemerge94, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = and i32 %storemerge94, 7
  %i.ca = shl nuw nsw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.by
  %.not84 = icmp eq i32 %i.cb, 0
  br i1 %.not84, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.cc = add nsw i32 %.06395, 1                  ; 2 uses
  %i.cd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.16, i32 noundef %storemerge94) #15 ; 0 uses
  %i.ce = call ptr @uv__open_file(ptr noundef nonnull %i.e) #15 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  %.pre107 = load i32, ptr %i.a, align 4          ; 2 uses
  br i1 %i.cf, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = zext i32 %.pre107 to i64
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.cg
  %i.ci = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ce, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ch) #15
  %.not85 = icmp eq i32 %i.ci, 1
  br i1 %.not85, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @abort() #18
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cj = call i32 @fclose(ptr noundef nonnull %i.ce) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %.lr.ph, %bb.x
  %i.ck = phi i32 [ %.pre107, %bb.u ], [ %.pre, %bb.x ], [ %storemerge94, %.lr.ph ]
  %.1 = phi i32 [ %i.cc, %bb.u ], [ %i.cc, %bb.x ], [ %.06395, %.lr.ph ] ; 2 uses
  %i.cl = add i32 %i.ck, 1                        ; 3 uses
  store i32 %i.cl, ptr %i.a, align 4
  %i.cm = icmp ult i32 %i.cl, %.066.ph
  br i1 %i.cm, label %.lr.ph, label %._crit_edge97, !llvm.loop !28

._crit_edge97:                                    ; preds = %bb.y, %bb.t
  %.063.lcssa = phi i32 [ 0, %bb.t ], [ %.1, %bb.y ] ; 3 uses
  %i.cn = mul i32 %.063.lcssa, 56
  %i.co = add i32 %i.cn, 512
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @uv__malloc(i64 noundef %i.cp) #15
  store ptr %i.cq, ptr %0, align 8
  store i32 0, ptr %1, align 4
  %i.cr = load ptr, ptr %0, align 8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge97
  call void @uv__free(ptr noundef nonnull %i.f) #15
  br label %bb.ad

bb.aa:                                            ; preds = %._crit_edge97
  %i.ct = sext i32 %.063.lcssa to i64
  store i32 %.063.lcssa, ptr %1, align 4
  %i.cu = load ptr, ptr %0, align 8
  %i.cv = getelementptr inbounds [56 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.cv, ptr noundef nonnull align 16 dereferenceable(512) %i.d, i64 512, i1 false)
  store i32 0, ptr %i.a, align 4
  br i1 %.not103, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.aa, %bb.ac
  %.06499 = phi i32 [ %.165, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %storemerge8298 = phi i32 [ %i.ei, %bb.ac ], [ 0, %bb.aa ] ; 4 uses
  %i.cw = lshr i32 %storemerge8298, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = and i32 %storemerge8298, 7
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = and i32 %i.dc, %i.da
  %.not83 = icmp eq i32 %i.dd, 0
  br i1 %.not83, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph101
  %i.de = zext nneg i32 %storemerge8298 to i64
  %i.df = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.de ; 7 uses
  %i.dg = load ptr, ptr %0, align 8
  %i.dh = add i32 %.06499, 1
  %i.di = zext i32 %.06499 to i64
  %i.dj = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.di ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 6
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dn
  %i.dp = load i64, ptr %i.df, align 8
  %i.dq = udiv i64 %i.dp, 1000
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = mul i64 %i.dt, 10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = mul i64 %i.dw, 10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = mul i64 %i.dz, 10
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = mul i64 %i.ec, 10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = mul i64 %i.ef, 10
  store ptr %i.do, ptr %i.dj, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %i.dr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %i.dx, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 %i.ea, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 %i.ed, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store i64 %i.eg, ptr %.sroa.8.0..sroa_idx, align 8
  %.pre108 = load i32, ptr %i.a, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph101, %bb.ab
  %i.eh = phi i32 [ %.pre108, %bb.ab ], [ %storemerge8298, %.lr.ph101 ]
  %.165 = phi i32 [ %i.dh, %bb.ab ], [ %.06499, %.lr.ph101 ]
  %i.ei = add i32 %i.eh, 1                        ; 3 uses
  store i32 %i.ei, ptr %i.a, align 4
  %i.ej = icmp ult i32 %i.ei, %.066.ph
  br i1 %i.ej, label %.lr.ph101, label %._crit_edge102, !llvm.loop !29

._crit_edge102:                                   ; preds = %bb.ac, %bb.aa
  call void @uv__free(ptr noundef nonnull %i.f) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %._crit_edge102, %bb.z, %bb.c
  %.0 = phi i32 [ 0, %._crit_edge102 ], [ %i.l, %bb.c ], [ -12, %bb.z ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

end_hunk_3
