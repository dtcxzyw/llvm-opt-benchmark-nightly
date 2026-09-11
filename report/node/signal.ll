Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/signal?download=true
inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0
@.str.3 = private unnamed_addr constant [74 x i8] c"r == sizeof msg || (r == -1 && (errno == EAGAIN || errno == EWOULDBLOCK))\00", align 1
@__PRETTY_FUNCTION__.uv__signal_handler = private unnamed_addr constant [29 x i8] c"void uv__signal_handler(int)\00", align 1
@__PRETTY_FUNCTION__.uv__signal_stop = private unnamed_addr constant [36 x i8] c"void uv__signal_stop(uv_signal_t *)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ret == 0\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @uv__signal_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @uv__signal_lock_pipefd, align 4 ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uv__close(i32 noundef %i.a) #9 ; 0 uses
  store i32 -1, ptr @uv__signal_lock_pipefd, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4 ; 2 uses
  %.not2 = icmp eq i32 %i.c, -1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @uv__close(i32 noundef %i.c) #9 ; 0 uses
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare i32 @uv__close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @uv__signal_global_once_init() local_unnamed_addr #0 {
bb.a:
  tail call void @uv_once(ptr noundef nonnull @uv__signal_global_init_guard, ptr noundef nonnull @uv__signal_global_init) #9
  ret void
}

declare void @uv_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @uv__signal_global_init() #0 {
bb.a:
  %i.a = load i32, ptr @uv__signal_lock_pipefd, align 4
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_atfork(ptr noundef null, ptr noundef null, ptr noundef nonnull @uv__signal_global_reinit) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #10
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @uv__signal_global_reinit()
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__signal_loop_fork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %uv__signal_loop_once_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  tail call void @uv__io_stop(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.e = load i32, ptr %i.a, align 8
  %i.f = tail call i32 @uv__close(i32 noundef %i.e) #9 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @uv__close(i32 noundef %i.h) #9 ; 0 uses
  store i32 -1, ptr %i.a, align 8
  store i32 -1, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.019 = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not20 = icmp eq ptr %.019, %i.j
  br i1 %.not20, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.021 = phi ptr [ %.0, %bb.d ], [ %.019, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.021, i64 -16
  %i.l = load i32, ptr %i.k, align 8
  %.not18 = icmp eq i32 %i.l, 16
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.021, i64 112
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.021, i64 116
  store i32 0, ptr %i.n, align 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0 = load ptr, ptr %.021, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 8
  %i.o = icmp eq i32 %.pre, -1
  br i1 %i.o, label %._crit_edge.thread, label %uv__signal_loop_once_init.exit

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.p = tail call i32 @uv__make_pipe(ptr noundef nonnull %i.a, i32 noundef 64) #9 ; 2 uses
  %.not15.i = icmp eq i32 %i.p, 0
  br i1 %.not15.i, label %bb.e, label %uv__signal_loop_once_init.exit

bb.e:                                             ; preds = %._crit_edge.thread
  %i.q = load i32, ptr %i.a, align 8
  %i.r = tail call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull @uv__signal_event, i32 noundef %i.q, i32 noundef 1) #9 ; 2 uses
  %.not16.i = icmp eq i32 %i.r, 0
  br i1 %.not16.i, label %uv__signal_loop_once_init.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.a, align 8
  %i.t = tail call i32 @uv__close(i32 noundef %i.s) #9 ; 0 uses
  %i.u = load i32, ptr %i.g, align 4
  %i.v = tail call i32 @uv__close(i32 noundef %i.u) #9 ; 0 uses
  store i32 -1, ptr %i.a, align 8
  store i32 -1, ptr %i.g, align 4
  br label %uv__signal_loop_once_init.exit

uv__signal_loop_once_init.exit:                   ; preds = %bb.f, %bb.e, %._crit_edge.thread, %._crit_edge, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.p, %._crit_edge.thread ], [ 0, %._crit_edge ], [ %i.r, %bb.f ], [ 0, %bb.e ]
  ret i32 %.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @uv__io_stop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden void @uv__signal_loop_cleanup(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.017 = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not18 = icmp eq ptr %.017, %i.a
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.019 = phi ptr [ %.0, %bb.c ], [ %.017, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %.019, i64 -16
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds i8, ptr %.019, i64 -32
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.0 = load ptr, ptr %.019, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not15 = icmp eq i32 %i.g, -1
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.h = tail call i32 @uv__close(i32 noundef %i.g) #9 ; 0 uses
  store i32 -1, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not16 = icmp eq i32 %i.j, -1
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @uv__close(i32 noundef %i.j) #9 ; 0 uses
  store i32 -1, ptr %i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__signal_stop(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %struct.sigaction, align 8          ; 8 uses
  %2 = alloca %struct.sigaction, align 8          ; 4 uses
  %3 = alloca %struct.uv_signal_s, align 8        ; 7 uses
  %4 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.db, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @uv__signal_block_and_lock(ptr noundef %4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  br i1 %i.g, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread.i, label %.preheader6.i

.thread.i:                                        ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i32, ptr %i.m, align 8
  br label %bb.s

.preheader6.i:                                    ; preds = %bb.c, %.preheader6.i
  %.069.i = phi ptr [ %i.p, %.preheader6.i ], [ %i.i, %bb.c ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.069.i, i64 112
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %.preheader6.i, !llvm.loop !14

bb.d:                                             ; preds = %.preheader6.i
  %i.q = getelementptr inbounds nuw i8, ptr %.069.i, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %.069.i, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.069.i, i64 128 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.069.i, i64 136
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %.not80.i = icmp eq ptr %i.s, null
  br i1 %.not80.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  store ptr %i.u, ptr %i.x, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not81.i = icmp eq ptr %i.u, null
  br i1 %.not81.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, %.069.i
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.s, ptr %i.y, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store ptr %i.s, ptr %i.ab, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  store ptr %i.s, ptr @uv__signal_tree.0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = icmp eq ptr %i.ac, %0
  %spec.select.i = select i1 %i.ad, ptr %.069.i, ptr %i.u ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not82.i = icmp eq ptr %i.af, null
  br i1 %.not82.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.069.i, ptr %i.ag, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store ptr %.069.i, ptr %i.aj, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  store ptr %.069.i, ptr @uv__signal_tree.0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  store ptr %.069.i, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not83.i = icmp eq ptr %i.am, null
  br i1 %.not83.i, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  store ptr %.069.i, ptr %i.an, align 8
  br label %.loopexit.i

bb.r:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %.not86.i = icmp eq ptr %i.i, null
  br i1 %.not86.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.i
  %i.as = phi i32 [ %i.n, %.thread.i ], [ %i.ar, %bb.r ]
  %i.at = phi ptr [ %i.l, %.thread.i ], [ %i.ap, %bb.r ] ; 2 uses
  %.0673.i = phi ptr [ %i.f, %.thread.i ], [ %i.i, %bb.r ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0673.i, i64 128
  store ptr %i.at, ptr %i.au, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.av = phi i32 [ %i.as, %bb.s ], [ %i.ar, %bb.r ] ; 3 uses
  %i.aw = phi ptr [ %i.at, %bb.s ], [ %i.ap, %bb.r ] ; 5 uses
  %.0674.i = phi ptr [ %.0673.i, %bb.s ], [ null, %bb.r ] ; 6 uses
  %.not87.i = icmp eq ptr %i.aw, null
  br i1 %.not87.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, %0
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.0674.i, ptr %i.ax, align 8
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  store ptr %.0674.i, ptr %i.ba, align 8
  br label %.loopexit.i

bb.x:                                             ; preds = %bb.t
  store ptr %.0674.i, ptr @uv__signal_tree.0, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.p, %bb.q, %bb.x, %bb.w, %bb.v
  %.168.i = phi ptr [ %.0674.i, %bb.v ], [ %.0674.i, %bb.w ], [ %.0674.i, %bb.x ], [ %i.s, %bb.q ], [ %i.s, %bb.p ]
  %.1.i = phi ptr [ %i.aw, %bb.v ], [ %i.aw, %bb.w ], [ null, %bb.x ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.p ]
  %.065.i = phi i32 [ %i.av, %bb.v ], [ %i.av, %bb.w ], [ %i.av, %bb.x ], [ %i.w, %bb.q ], [ %i.w, %bb.p ]
  %i.bb = icmp eq i32 %.065.i, 0
  %uv__signal_tree.promoted.i.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 2 uses
  br i1 %i.bb, label %.preheader, label %uv__signal_tree_s_RB_REMOVE.exit

.preheader:                                       ; preds = %.loopexit.i, %bb.ci
  %i.bc = phi ptr [ %i.gg, %bb.ci ], [ %uv__signal_tree.promoted.i.i, %.loopexit.i ] ; 9 uses
  %.0179.i.i = phi ptr [ %.1180.i.i, %bb.ci ], [ %.1.i, %.loopexit.i ] ; 24 uses
  %.0176.i.i = phi ptr [ %.0179.i.i, %bb.ci ], [ %.168.i, %.loopexit.i ] ; 5 uses
  %i.bd = icmp eq ptr %.0176.i.i, null
  br i1 %i.bd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 136
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp ne i32 %i.bf, 0
  %.not.i.i = icmp eq ptr %.0176.i.i, %i.bc
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %.critedge.thread3.i.i, label %bb.aa

bb.z:                                             ; preds = %.preheader
  %.not.old.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.old.i.i, label %uv__signal_tree_s_RB_REMOVE.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 112 ; 7 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = icmp eq ptr %i.bi, %.0176.i.i
  br i1 %i.bj, label %bb.ab, label %bb.be

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 120 ; 7 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bm, align 8
end_hunk_0
begin_hunk_1_@uv__signal_stop:bb.a
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  store ptr %i.ea, ptr @uv__signal_tree.0, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.el = phi ptr [ %i.bc, %bb.bj ], [ %i.bc, %bb.bk ], [ %i.ea, %bb.bl ]
  store ptr %.0179.i.i, ptr %i.eb, align 8
  store ptr %i.ea, ptr %i.ee, align 8
  %i.em = load ptr, ptr %i.bh, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.be
  %i.en = phi ptr [ %i.el, %bb.bm ], [ %i.bc, %bb.be ] ; 6 uses
  %.2.i.i = phi ptr [ %i.em, %bb.bm ], [ %i.bi, %bb.be ] ; 12 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 112
  %i.ep = load ptr, ptr %i.eo, align 8            ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null                 ; 2 uses
  br i1 %i.eq, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %i.es = load i32, ptr %i.er, align 8
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bp, label %.thread.thread.i.i

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.eu = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 120
  %i.ev = load ptr, ptr %i.eu, align 8            ; 3 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ci, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 136
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ci, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fa = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 120 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 136
  br i1 %i.eq, label %.thread95.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.br
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.fc = icmp eq i32 %.pre.i.i, 0
  br i1 %i.fc, label %.thread95.i.i, label %.thread.thread.i.i

.thread95.i.i:                                    ; preds = %.thread.i.i, %bb.br
  store i32 0, ptr %i.fb, align 8
  %.pre56.i.i = load ptr, ptr %i.fa, align 8      ; 7 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 136
  store i32 1, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.pre56.i.i, i64 112 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8            ; 3 uses
  store ptr %i.ff, ptr %i.fa, align 8
  %.not195.i.i = icmp eq ptr %i.ff, null
  br i1 %.not195.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.thread95.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 128
  store ptr %.2.i.i, ptr %i.fg, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.thread95.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 128 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8            ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre56.i.i, i64 128
  store ptr %i.fi, ptr %i.fj, align 8
  %.not196.i.i = icmp eq ptr %i.fi, null
  br i1 %.not196.i.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 112 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = icmp eq ptr %.2.i.i, %i.fl
  br i1 %i.fm, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store ptr %.pre56.i.i, ptr %i.fk, align 8
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 120
  store ptr %.pre56.i.i, ptr %i.fn, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  store ptr %.pre56.i.i, ptr @uv__signal_tree.0, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.217864.i.i = phi ptr [ %i.en, %bb.bv ], [ %i.en, %bb.bw ], [ %.pre56.i.i, %bb.bx ]
  store ptr %.2.i.i, ptr %i.fe, align 8
  store ptr %.pre56.i.i, ptr %i.fh, align 8
  %i.fo = load ptr, ptr %i.bh, align 8
  br label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %bb.bo, %bb.by, %.thread.i.i
  %.217863.i.i = phi ptr [ %.217864.i.i, %bb.by ], [ %i.en, %.thread.i.i ], [ %i.en, %bb.bo ] ; 2 uses
  %.3.i.i = phi ptr [ %i.fo, %bb.by ], [ %.2.i.i, %.thread.i.i ], [ %.2.i.i, %bb.bo ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 136 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 112
  %i.fs = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 136
  store i32 %i.fq, ptr %i.fs, align 8
  store i32 0, ptr %i.fp, align 8
  %i.ft = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not197.i.i = icmp eq ptr %i.ft, null
  br i1 %.not197.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.thread.thread.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 136
  store i32 0, ptr %i.fu, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.thread.thread.i.i
  %i.fv = load ptr, ptr %i.bh, align 8            ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 120 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8            ; 3 uses
  store ptr %i.fx, ptr %i.bh, align 8
  %.not198.i.i = icmp eq ptr %i.fx, null
  br i1 %.not198.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  store ptr %.0179.i.i, ptr %i.fy, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.fz = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 128 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8            ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 128
  store ptr %i.ga, ptr %i.gb, align 8
  %.not199.i.i = icmp eq ptr %i.ga, null
  br i1 %.not199.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 112 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = icmp eq ptr %.0179.i.i, %i.gd
  br i1 %i.ge, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.fv, ptr %i.gc, align 8
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 120
  store ptr %i.fv, ptr %i.gf, align 8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  store ptr %i.fv, ptr @uv__signal_tree.0, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %.217862.i.i = phi ptr [ %.217863.i.i, %bb.ce ], [ %.217863.i.i, %bb.cf ], [ %i.fv, %bb.cg ]
  store ptr %.0179.i.i, ptr %i.fw, align 8
  store ptr %i.fv, ptr %i.fz, align 8
  br label %.critedge.i.i

bb.ci:                                            ; preds = %bb.bq, %bb.bp, %bb.an, %bb.am
  %.2.sink.i.i = phi ptr [ %.0.i.i, %bb.am ], [ %.0.i.i, %bb.an ], [ %.2.i.i, %bb.bq ], [ %.2.i.i, %bb.bp ]
  %i.gg = phi ptr [ %i.cd, %bb.am ], [ %i.cd, %bb.an ], [ %i.en, %bb.bq ], [ %i.en, %bb.bp ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.2.sink.i.i, i64 136
  store i32 1, ptr %i.gh, align 8
  %.1180.in.i.i = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 128
  %.1180.i.i = load ptr, ptr %.1180.in.i.i, align 8
  br label %.preheader, !llvm.loop !15

.critedge.i.i:                                    ; preds = %bb.ch, %bb.bd
  %.2178.i.i = phi ptr [ %.217862.i.i, %bb.ch ], [ %.217861.i.i, %bb.bd ] ; 3 uses
  %.not208.i.i = icmp eq ptr %.2178.i.i, null
  br i1 %.not208.i.i, label %uv__signal_tree_s_RB_REMOVE.exit.thread, label %.critedge.thread3.i.i

.critedge.thread3.i.i:                            ; preds = %bb.y, %.critedge.i.i
  %.0117.i.i104 = phi ptr [ %.2178.i.i, %.critedge.i.i ], [ %i.bc, %bb.y ]
  %.21786.i.i = phi ptr [ %.2178.i.i, %.critedge.i.i ], [ %.0176.i.i, %bb.y ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.21786.i.i, i64 136
  store i32 0, ptr %i.gi, align 8
  br label %uv__signal_tree_s_RB_REMOVE.exit

uv__signal_tree_s_RB_REMOVE.exit.thread:          ; preds = %bb.z, %.critedge.i.i
  %i.gj = load i32, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  br label %bb.cm

uv__signal_tree_s_RB_REMOVE.exit:                 ; preds = %.loopexit.i, %.critedge.thread3.i.i
  %.0117.i.i = phi ptr [ %.0117.i.i104, %.critedge.thread3.i.i ], [ %uv__signal_tree.promoted.i.i, %.loopexit.i ] ; 2 uses
  %i.gk = load i32, ptr %i.b, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %i.gk, ptr %i.gl, align 8
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %bb.cm, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %uv__signal_tree_s_RB_REMOVE.exit, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %uv__signal_tree_s_RB_REMOVE.exit ] ; 10 uses
  %.09.i.i = phi ptr [ %.1.i.i19, %uv__signal_compare.exit.thread3.i.i ], [ null, %uv__signal_tree_s_RB_REMOVE.exit ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.gn = load i32, ptr %i.gm, align 8            ; 3 uses
  %i.go = icmp slt i32 %i.gk, %i.gn
  br i1 %i.go, label %uv__signal_compare.exit.thread3.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i
  %i.gp = icmp sgt i32 %i.gk, %i.gn
  br i1 %i.gp, label %uv__signal_compare.exit.thread3.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gq = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 88
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = and i32 %i.gr, 33554432
  %.not12.i = icmp eq i32 %i.gs, 0
  br i1 %.not12.i, label %bb.cl, label %uv__signal_compare.exit.thread3.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.gt = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = icmp ne ptr %i.gu, null
  %i.gw = icmp ult ptr %3, %.01110.i.i
  %or.cond.i = or i1 %i.gw, %i.gv
  br i1 %or.cond.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_compare.exit.i.i

uv__signal_compare.exit.i.i:                      ; preds = %bb.cl
  %.not6.i.i = icmp ugt ptr %3, %.01110.i.i
  br i1 %.not6.i.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %uv__signal_compare.exit.i.i, %bb.cl, %bb.ck, %bb.cj, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 112, %bb.cl ], [ 120, %bb.cj ], [ 112, %.lr.ph.i.i ], [ 112, %bb.ck ], [ 120, %uv__signal_compare.exit.i.i ]
  %.1.i.i19 = phi ptr [ %.01110.i.i, %bb.cl ], [ %.09.i.i, %bb.cj ], [ %.01110.i.i, %.lr.ph.i.i ], [ %.01110.i.i, %bb.ck ], [ %.09.i.i, %uv__signal_compare.exit.i.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 %.sink.i.i
  %.011.i.i = load ptr, ptr %i.gx, align 8        ; 2 uses
  %.not.i.i20 = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i20, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i21 = icmp eq ptr %.1.i.i19, null
  br i1 %.not.i21, label %bb.cm, label %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i

uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i: ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %.phi.trans.insert.i22 = getelementptr inbounds nuw i8, ptr %.1.i.i19, i64 104
  %.pre.i23 = load i32, ptr %.phi.trans.insert.i22, align 8
  br label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_compare.exit.i.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i
  %5 = phi i32 [ %.pre.i23, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %i.gn, %uv__signal_compare.exit.i.i ]
  %.013.i11.i = phi ptr [ %.1.i.i19, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %.01110.i.i, %uv__signal_compare.exit.i.i ]
  %i.gy = icmp eq i32 %5, %i.gk
  br i1 %i.gy, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %uv__signal_tree_s_RB_REMOVE.exit.thread, %uv__signal_tree_s_RB_REMOVE.exit, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  %i.gz = phi i32 [ %i.gj, %uv__signal_tree_s_RB_REMOVE.exit.thread ], [ %i.gk, %uv__signal_tree_s_RB_REMOVE.exit ], [ %i.gk, %uv__signal_tree_s_RB_NFIND.exit.i ], [ %i.gk, %uv__signal_tree_s_RB_NFIND.exit.thread8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %i.ha = call i32 @sigaction(i32 noundef %i.gz, ptr noundef nonnull %2, ptr noundef null) #9
  %.not.i24.a = icmp eq i32 %i.ha, 0
  br i1 %.not.i24.a, label %uv__signal_unregister_handler.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @abort() #10
  unreachable

uv__signal_unregister_handler.exit:               ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.ct

bb.co:                                            ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = and i32 %i.hc, 33554432
  %i.he = getelementptr inbounds nuw i8, ptr %.013.i11.i, i64 88
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = and i32 %i.hf, 33554432
  %i.hh = icmp eq i32 %i.hg, 0
  %i.hi = icmp ne i32 %i.hd, 0
  %or.cond = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, i8 0, i64 152, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hk = call i32 @sigfillset(ptr noundef nonnull %i.hj) #9
  %.not.i25 = icmp eq i32 %i.hk, 0
  br i1 %.not.i25, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @abort() #10
  unreachable

bb.cr:                                            ; preds = %bb.cp
  store ptr @uv__signal_handler, ptr %1, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 -1879048192, ptr %i.hl, align 8
  %i.hm = call i32 @sigaction(i32 noundef %i.gk, ptr noundef nonnull %1, ptr noundef null) #9
  %.not4.i = icmp eq i32 %i.hm, 0
  br i1 %.not4.i, label %uv__signal_register_handler.exit.thread, label %uv__signal_register_handler.exit

uv__signal_register_handler.exit.thread:          ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.ct

uv__signal_register_handler.exit:                 ; preds = %bb.cr
  %i.hn = tail call ptr @__errno_location() #11
  %i.ho = load i32, ptr %i.hn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %uv__signal_register_handler.exit
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 572, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__signal_stop) #10
  unreachable

bb.ct:                                            ; preds = %uv__signal_register_handler.exit.thread, %bb.co, %uv__signal_register_handler.exit, %uv__signal_unregister_handler.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %bb.ct
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.hr = call i64 @write(i32 noundef %i.hq, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.hs = and i64 %i.hr, 2147483648
  %.not.not.not.not.i.not.i = icmp eq i64 %i.hs, 0
  br i1 %.not.not.not.not.i.not.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ht = tail call ptr @__errno_location() #11
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = icmp eq i32 %i.hu, 4
  br i1 %i.hv, label %bb.cu, label %bb.cw, !llvm.loop !1

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @abort() #10
  unreachable

bb.cx:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.hw = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #9
  %.not1.i = icmp eq i32 %i.hw, 0
  br i1 %.not1.i, label %uv__signal_unlock_and_unblock.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @abort() #10
  unreachable

uv__signal_unlock_and_unblock.exit:               ; preds = %bb.cx
  store i32 0, ptr %i.b, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8            ; 3 uses
  %i.hz = and i32 %i.hy, 4
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %uv__signal_unlock_and_unblock.exit
  %i.ib = and i32 %i.hy, -5
  store i32 %i.ib, ptr %i.hx, align 8
  %i.ic = and i32 %i.hy, 8
  %.not = icmp eq i32 %i.ic, 0
  br i1 %.not, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8
  %i.ih = add i32 %i.ig, -1
  store i32 %i.ih, ptr %i.if, align 8
  br label %bb.db

bb.db:                                            ; preds = %uv__signal_unlock_and_unblock.exit, %bb.cz, %bb.da, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uv_signal_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uv__make_pipe(ptr noundef nonnull %i.a, i32 noundef 64) #9 ; 2 uses
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %bb.c, label %uv__signal_loop_once_init.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = load i32, ptr %i.a, align 4
  %i.f = tail call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull @uv__signal_event, i32 noundef %i.e, i32 noundef 1) #9 ; 2 uses
  %.not16.i = icmp eq i32 %i.f, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 4
  %i.h = tail call i32 @uv__close(i32 noundef %i.g) #9 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @uv__close(i32 noundef %i.j) #9 ; 0 uses
  store i32 -1, ptr %i.a, align 4
  store i32 -1, ptr %i.i, align 4
  br label %uv__signal_loop_once_init.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 16, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 8, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.r, ptr %i.s, align 8
  store ptr %i.p, ptr %i.r, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 148
  store i32 0, ptr %i.w, align 4
  br label %uv__signal_loop_once_init.exit

uv__signal_loop_once_init.exit:                   ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.c, %bb.b ], [ %i.f, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @uv__signal_close(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @uv__signal_stop(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_signal_start(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uv__signal_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @uv__signal_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %4 = alloca %struct.sigaction, align 8          ; 8 uses
  %5 = alloca %struct.sigaction, align 8          ; 8 uses
  %6 = alloca %struct.uv_signal_s, align 8        ; 6 uses
  %7 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 383, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__signal_start) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %uv__signal_unlock_and_unblock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.j, align 8
  br label %uv__signal_unlock_and_unblock.exit

bb.f:                                             ; preds = %bb.d
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call fastcc void @uv__signal_block_and_lock(ptr noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i32 %2, ptr %i.k, align 8
  %.0117.i.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %bb.h ] ; 10 uses
  %.09.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp slt i32 %2, %i.m
  br i1 %i.n, label %uv__signal_compare.exit.thread3.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.o = icmp sgt i32 %2, %i.m
  br i1 %i.o, label %uv__signal_compare.exit.thread3.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 88
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 33554432
  %.not12.i = icmp eq i32 %i.r, 0
  br i1 %.not12.i, label %bb.k, label %uv__signal_compare.exit.thread3.i.i

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp ne ptr %i.t, null
  %i.v = icmp ult ptr %6, %.01110.i.i
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_compare.exit.i.i

uv__signal_compare.exit.i.i:                      ; preds = %bb.k
  %.not6.i.i = icmp ugt ptr %6, %.01110.i.i
  br i1 %.not6.i.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %uv__signal_compare.exit.i.i, %bb.k, %bb.j, %bb.i, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 112, %bb.k ], [ 120, %bb.i ], [ 112, %.lr.ph.i.i ], [ 112, %bb.j ], [ 120, %uv__signal_compare.exit.i.i ]
  %.1.i.i = phi ptr [ %.01110.i.i, %bb.k ], [ %.09.i.i, %bb.i ], [ %.01110.i.i, %.lr.ph.i.i ], [ %.01110.i.i, %bb.j ], [ %.09.i.i, %uv__signal_compare.exit.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 %.sink.i.i
  %.011.i.i = load ptr, ptr %i.w, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %.split, label %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i

uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i: ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_compare.exit.i.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i
  %8 = phi i32 [ %.pre.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %i.m, %uv__signal_compare.exit.i.i ]
  %.013.i11.i = phi ptr [ %.1.i.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %.01110.i.i, %uv__signal_compare.exit.i.i ]
  %i.x = icmp eq i32 %8, %2
  br i1 %i.x, label %bb.n, label %.split

.split:                                           ; preds = %bb.h, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = call i32 @sigfillset(ptr noundef nonnull %i.y) #9
  %.not.i38 = icmp eq i32 %i.z, 0
  br i1 %.not.i38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split
  call void @abort() #10
  unreachable

bb.m:                                             ; preds = %.split
  store ptr @uv__signal_handler, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.not3.i = icmp eq i32 %3, 0                    ; 2 uses
  %spec.select.i.a = select i1 %.not3.i, i32 268435456, i32 -1879048192
  store i32 %spec.select.i.a, ptr %i.aa, align 8
  %i.ab = call i32 @sigaction(i32 noundef %2, ptr noundef nonnull %5, ptr noundef null) #9
  %.not4.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i, label %.thread62, label %bb.r

.thread62:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.y

bb.n:                                             ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.not32 = icmp eq i32 %3, 0
  br i1 %.not32, label %bb.o, label %.thread54

.thread54:                                        ; preds = %bb.n
  store i32 %2, ptr %i.g, align 8
  br label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i11.i, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 33554432
  %.not33 = icmp eq i32 %i.ae, 0
  br i1 %.not33, label %.thread, label %.split27

.thread:                                          ; preds = %bb.o
  store i32 %2, ptr %i.g, align 8
  br label %bb.aa

.split27:                                         ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 152, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = call i32 @sigfillset(ptr noundef nonnull %i.af) #9
  %.not.i40 = icmp eq i32 %i.ag, 0
  br i1 %.not.i40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.split27
  call void @abort() #10
  unreachable

bb.q:                                             ; preds = %.split27
  store ptr @uv__signal_handler, ptr %4, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 268435456, ptr %i.ah, align 8
  %i.ai = call i32 @sigaction(i32 noundef %2, ptr noundef nonnull %4, ptr noundef null) #9
  %.not4.i41 = icmp eq i32 %i.ai, 0
  br i1 %.not4.i41, label %.thread56.thread, label %.thread56

.thread56.thread:                                 ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread60

bb.r:                                             ; preds = %bb.m
  %i.aj = tail call ptr @__errno_location() #11
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.not34 = icmp eq i32 %i.ak, 0
  br i1 %.not34, label %bb.y, label %bb.s

.thread56:                                        ; preds = %bb.q
  %i.al = tail call ptr @__errno_location() #11
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.not3458 = icmp eq i32 %i.am, 0
  br i1 %.not3458, label %.thread60, label %bb.s

.thread60:                                        ; preds = %.thread56.thread, %.thread56
  store i32 %2, ptr %i.g, align 8
  br label %bb.aa

bb.s:                                             ; preds = %.thread56, %bb.r
  %.pn = phi i32 [ %i.am, %.thread56 ], [ %i.ak, %bb.r ]
  %phi.call59 = sub nsw i32 0, %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 42, ptr %i.b, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.ao = call i64 @write(i32 noundef %i.an, ptr noundef nonnull %i.b, i64 noundef 1) #9
  %i.ap = and i64 %i.ao, 2147483648
  %.not.not.not.not.i.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.not.not.not.i.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = tail call ptr @__errno_location() #11
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %bb.t, label %bb.v, !llvm.loop !1

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @abort() #10
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.at = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %7, ptr noundef null) #9
  %.not1.i = icmp eq i32 %i.at, 0
  br i1 %.not1.i, label %uv__signal_unlock_and_unblock.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @abort() #10
  unreachable

bb.y:                                             ; preds = %.thread62, %bb.r
  store i32 %2, ptr %i.g, align 8
  br i1 %.not3.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread54, %bb.y
  %i.au = load i32, ptr %i.c, align 8
  %i.av = or i32 %i.au, 33554432
  store i32 %i.av, ptr %i.c, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.thread60, %.thread, %bb.z, %bb.y
  %.02613.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 4 uses
  %.not14.i = icmp eq ptr %.02613.i, null
  br i1 %.not14.i, label %.thread100, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %uv__signal_compare.exit.thread5.i, %.lr.ph.i
  %.02615.i = phi ptr [ %.02613.i, %.lr.ph.i ], [ %.026.i, %uv__signal_compare.exit.thread5.i ] ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02615.i, i64 104
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp slt i32 %2, %i.ay
  br i1 %i.az, label %uv__signal_compare.exit.thread5.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ba = icmp sgt i32 %2, %i.ay
  br i1 %i.ba, label %uv__signal_compare.exit.thread5.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = load i32, ptr %i.c, align 8
  %i.bc = and i32 %i.bb, 33554432                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02615.i, i64 88
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 33554432                 ; 2 uses
  %i.bg = icmp samesign ult i32 %i.bc, %i.bf
  br i1 %i.bg, label %uv__signal_compare.exit.thread5.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = icmp samesign ugt i32 %i.bc, %i.bf
  br i1 %i.bh, label %uv__signal_compare.exit.thread5.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02615.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %uv__signal_compare.exit.thread5.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = icmp ugt ptr %i.bi, %i.bk
  br i1 %i.bm, label %uv__signal_compare.exit.thread5.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = icmp ult ptr %0, %.02615.i
  br i1 %i.bn, label %uv__signal_compare.exit.thread5.i, label %uv__signal_compare.exit.i

uv__signal_compare.exit.i:                        ; preds = %bb.ah
  %.not9.i = icmp ugt ptr %0, %.02615.i
  br i1 %.not9.i, label %uv__signal_compare.exit.thread5.i, label %uv__signal_tree_s_RB_INSERT.exit

uv__signal_compare.exit.thread5.i:                ; preds = %uv__signal_compare.exit.i, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sink.i = phi i64 [ 112, %bb.af ], [ 112, %bb.ah ], [ 112, %bb.ab ], [ 112, %bb.ad ], [ 120, %bb.ag ], [ 120, %bb.ac ], [ 120, %bb.ae ], [ 120, %uv__signal_compare.exit.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02615.i, i64 %.sink.i
  %.026.i = load ptr, ptr %i.bo, align 8          ; 2 uses
  %.not.i44 = icmp eq ptr %.026.i, null
  br i1 %.not.i44, label %bb.ai, label %bb.ab, !llvm.loop !16

bb.ai:                                            ; preds = %uv__signal_compare.exit.thread5.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %.02615.i, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.02615.i, i64 %.sink.i
  store ptr %0, ptr %i.bs, align 8
  %.pr = load ptr, ptr %i.bq, align 8             ; 2 uses
  %.not1.i.i = icmp eq ptr %.pr, null
  br i1 %.not1.i.i, label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i, label %.lr.ph.i.i45

.thread100:                                       ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.bu, align 8
  store ptr %0, ptr @uv__signal_tree.0, align 8
  br label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

.lr.ph.i.i45:                                     ; preds = %bb.ai, %.backedge.i.i
  %i.bv = phi ptr [ %i.cm, %.backedge.i.i ], [ %.02613.i, %bb.ai ] ; 9 uses
  %i.bw = phi ptr [ %i.co, %.backedge.i.i ], [ %.pr, %bb.ai ] ; 15 uses
  %.01142.i.i = phi ptr [ %.0114.be.i.i, %.backedge.i.i ], [ %0, %bb.ai ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 112 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 136 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.aj, label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

bb.aj:                                            ; preds = %.lr.ph.i.i45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 7 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 19 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 112 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %i.cf = icmp eq ptr %i.bw, %i.ce
  br i1 %i.cf, label %bb.ak, label %bb.bd

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not126.i.i = icmp eq ptr %i.ch, null
  br i1 %.not126.i.i, label %bb.an, label %bb.al

end_hunk_1
begin_hunk_2_@uv__signal_global_reinit:bb.a

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i32 @uv__make_pipe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @uv__io_init_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @uv__signal_event(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.030 = phi i64 [ 0, %bb.a ], [ %.131, %bb.l ]  ; 6 uses
  %.029 = phi i64 [ 0, %bb.a ], [ 512, %bb.l ]    ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.030
  %i.e = sub nuw nsw i64 512, %.030
  %i.f = call i64 @read(i32 noundef %i.c, ptr noundef nonnull %i.d, i64 noundef %i.e) #9 ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 4294967295
  br i1 %i.h, label %bb.c, label %.critedge40

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #11
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %.critedge [
    i32 4, label %bb.l
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %.not39 = icmp eq i64 %.030, 0
  br i1 %.not39, label %bb.m, label %bb.l

.critedge:                                        ; preds = %bb.c
  tail call void @abort() #10
  unreachable

.critedge40:                                      ; preds = %bb.b
  %sext = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = add nsw i64 %i.k, %.030                  ; 2 uses
  %i.m = and i64 %i.l, -16                        ; 5 uses
  %.not42 = icmp eq i64 %i.m, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge40, %bb.j
  %.041 = phi i64 [ %i.af, %bb.j ], [ 0, %.critedge40 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.041 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16             ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 1
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__signal_event) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull %i.o, i32 noundef %i.q) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 148 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 33554432
  %.not38 = icmp eq i32 %i.ae, 0
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %i.o)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.af = add nuw nsw i64 %.041, 16               ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.m
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.j, %.critedge40
  %i.ah = and i64 %i.l, 15                        ; 3 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.ai, i64 %i.ah, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.k
  %.131 = phi i64 [ %.030, %bb.c ], [ %.030, %bb.d ], [ %i.ah, %bb.k ], [ 0, %._crit_edge ]
  %.1 = phi i64 [ %.029, %bb.c ], [ %.029, %bb.d ], [ %i.m, %bb.k ], [ %i.m, %._crit_edge ]
  %i.aj = icmp eq i64 %.1, 512
  br i1 %i.aj, label %bb.b, label %bb.m, !llvm.loop !19

bb.m:                                             ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__signal_block_and_lock(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.b = call i32 @sigfillset(ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @abort() #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %0) #9 ; 0 uses
  %i.d = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %0) #9
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.e = load i32, ptr @uv__signal_lock_pipefd, align 4
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.g = and i64 %i.f, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.not.not.not.i.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @__errno_location() #11
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.f, label %bb.h, !llvm.loop !2

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @abort() #10
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal void @uv__signal_handler(i32 noundef %0) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %struct.uv_signal_s, align 8        ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.uv__signal_msg_t, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.c = tail call ptr @__errno_location() #11    ; 5 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = load i32, ptr @uv__signal_lock_pipefd, align 4
  %i.g = call i64 @read(i32 noundef %i.f, ptr noundef nonnull %i.b, i64 noundef 1) #9
  %i.h = and i64 %i.g, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.not.not.not.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 4
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %uv__signal_lock.exit, !llvm.loop !2

uv__signal_lock.exit:                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %0, ptr %i.k, align 8
  %.0117.i.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %uv__signal_first_handle.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %bb.d ] ; 10 uses
  %.09.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp slt i32 %0, %i.m
  br i1 %i.n, label %uv__signal_compare.exit.thread3.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.o = icmp sgt i32 %0, %i.m
  br i1 %i.o, label %uv__signal_compare.exit.thread3.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 88
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 33554432
  %.not12.i = icmp eq i32 %i.r, 0
  br i1 %.not12.i, label %bb.g, label %uv__signal_compare.exit.thread3.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp ne ptr %i.t, null
  %i.v = icmp ult ptr %1, %.01110.i.i
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_compare.exit.i.i

uv__signal_compare.exit.i.i:                      ; preds = %bb.g
  %.not6.i.i = icmp ugt ptr %1, %.01110.i.i
  br i1 %.not6.i.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %uv__signal_compare.exit.i.i, %bb.g, %bb.f, %bb.e, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 112, %bb.g ], [ 120, %bb.e ], [ 112, %.lr.ph.i.i ], [ 112, %bb.f ], [ 120, %uv__signal_compare.exit.i.i ]
  %.1.i.i = phi ptr [ %.01110.i.i, %bb.g ], [ %.09.i.i, %bb.e ], [ %.01110.i.i, %.lr.ph.i.i ], [ %.01110.i.i, %bb.f ], [ %.09.i.i, %uv__signal_compare.exit.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 %.sink.i.i
  %.011.i.i = load ptr, ptr %i.w, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %uv__signal_first_handle.exit.thread, label %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i

uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i: ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_compare.exit.i.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i
  %3 = phi i32 [ %.pre.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %i.m, %uv__signal_compare.exit.i.i ]
  %.013.i11.i = phi ptr [ %.1.i.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %.01110.i.i, %uv__signal_compare.exit.i.i ] ; 2 uses
  %i.x = icmp eq i32 %3, %0
  br i1 %i.x, label %.lr.ph, label %uv__signal_first_handle.exit.thread

uv__signal_first_handle.exit.thread:              ; preds = %bb.d, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.critedge

.lr.ph:                                           ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i11.i, i64 104
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, %0
  br i1 %i.ab, label %.lr.ph68.preheader, label %.critedge

.lr.ph68.preheader:                               ; preds = %.lr.ph
  store i32 %0, ptr %i.y, align 8
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %uv__signal_tree_s_RB_NEXT.exit
  %.03167 = phi ptr [ %.2.i, %uv__signal_tree_s_RB_NEXT.exit ], [ %.013.i11.i, %.lr.ph68.preheader ] ; 7 uses
  store ptr %.03167, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.03167, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph68
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 556
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = call i64 @write(i32 noundef %i.af, ptr noundef nonnull %2, i64 noundef 16) #9
  %trunc = trunc i64 %i.ag to i32
  switch i32 %trunc, label %.thread [
    i32 -1, label %bb.i
    i32 16, label %.thread24
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.c, align 4
  switch i32 %i.ah, label %.thread [
    i32 4, label %bb.h
    i32 11, label %.loopexit
  ]

.thread:                                          ; preds = %bb.i, %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__signal_handler) #10
  unreachable

.thread24:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.03167, i64 144 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.thread24
  %i.al = getelementptr inbounds nuw i8, ptr %.03167, i64 120
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i19, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit, %.preheader.i
  %.0.i20 = phi ptr [ %i.ao, %.preheader.i ], [ %i.am, %.loopexit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i20, i64 112
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.ao, null
  br i1 %.not20.i, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader.i, !llvm.loop !20

bb.j:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %.03167, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not18.i = icmp eq ptr %i.aq, null
  br i1 %.not18.i, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %.03167, %i.as
  br i1 %i.at, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.m
  %.1.i = phi ptr [ %i.av, %bb.m ], [ %.03167, %.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 128
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %.not19.i = icmp eq ptr %i.av, null
  br i1 %.not19.i, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %.1.i, %i.ax
  br i1 %i.ay, label %bb.l, label %uv__signal_tree_s_RB_NEXT.exit, !llvm.loop !21

uv__signal_tree_s_RB_NEXT.exit:                   ; preds = %.preheader.i, %bb.m, %bb.k
  %.2.i = phi ptr [ %i.av, %bb.m ], [ %i.aq, %bb.k ], [ %.0.i20, %.preheader.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.2.i, i64 104
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, %0
  br i1 %i.bb, label %.lr.ph68, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %uv__signal_tree_s_RB_NEXT.exit, %bb.l, %.lr.ph, %uv__signal_first_handle.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.bd = call i64 @write(i32 noundef %i.bc, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.be = and i64 %i.bd, 2147483648
  %.not.not.not.not.i21.not = icmp eq i64 %i.be, 0
  br i1 %.not.not.not.not.i21.not, label %uv__signal_unlock.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load i32, ptr %i.c, align 4
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.n, label %uv__signal_unlock.exit, !llvm.loop !1

uv__signal_unlock.exit:                           ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.p

bb.p:                                             ; preds = %uv__signal_lock.exit, %uv__signal_unlock.exit
  store i32 %i.d, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
end_hunk_2
