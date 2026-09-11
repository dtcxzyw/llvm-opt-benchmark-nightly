Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/signal?download=true
inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0

@uv__signal_lock_pipefd = internal global [2 x i32] [i32 -1, i32 -1], align 4
@uv__signal_global_init_guard = internal global i32 0, align 4
@uv__signal_tree.0 = internal unnamed_addr global ptr null, align 8

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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

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
  %i.r = tail call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef %i.q, i32 noundef 1) #9 ; 2 uses
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

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
  %1 = alloca %struct.sigaction, align 8          ; 7 uses
  %2 = alloca %struct.sigaction, align 8          ; 4 uses
  %3 = alloca %struct.uv_signal_s, align 8        ; 6 uses
  %4 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.cz, label %bb.b

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
  br i1 %.not.i, label %bb.d, label %.preheader6.i, !llvm.loop !9

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
  br label %.preheader, !llvm.loop !10

.critedge.i.i:                                    ; preds = %bb.ch, %bb.bd
  %.2178.i.i = phi ptr [ %.217862.i.i, %bb.ch ], [ %.217861.i.i, %bb.bd ] ; 3 uses
  %.not208.i.i = icmp eq ptr %.2178.i.i, null
  br i1 %.not208.i.i, label %uv__signal_tree_s_RB_REMOVE.exit.thread, label %.critedge.thread3.i.i

.critedge.thread3.i.i:                            ; preds = %bb.y, %.critedge.i.i
  %.0117.i.i99 = phi ptr [ %.2178.i.i, %.critedge.i.i ], [ %i.bc, %bb.y ]
  %.21786.i.i = phi ptr [ %.2178.i.i, %.critedge.i.i ], [ %.0176.i.i, %bb.y ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.21786.i.i, i64 136
  store i32 0, ptr %i.gi, align 8
  br label %uv__signal_tree_s_RB_REMOVE.exit

uv__signal_tree_s_RB_REMOVE.exit.thread:          ; preds = %bb.z, %.critedge.i.i
  %i.gj = load i32, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  br label %bb.cm

uv__signal_tree_s_RB_REMOVE.exit:                 ; preds = %.loopexit.i, %.critedge.thread3.i.i
  %.0117.i.i = phi ptr [ %.0117.i.i99, %.critedge.thread3.i.i ], [ %uv__signal_tree.promoted.i.i, %.loopexit.i ] ; 2 uses
  %i.gk = load i32, ptr %i.b, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %i.gk, ptr %i.gl, align 8
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %bb.cm, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %uv__signal_tree_s_RB_REMOVE.exit, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %uv__signal_tree_s_RB_REMOVE.exit ] ; 8 uses
  %.09.i.i = phi ptr [ %.1.i.i15, %uv__signal_compare.exit.thread3.i.i ], [ null, %uv__signal_tree_s_RB_REMOVE.exit ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.gn = load i32, ptr %i.gm, align 8            ; 2 uses
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
  %or.cond.i = or i1 %i.gw, %i.gv                 ; 2 uses
  %spec.select.i18 = select i1 %or.cond.i, i64 112, i64 120
  %spec.select17.i = select i1 %or.cond.i, ptr %.01110.i.i, ptr %.09.i.i
  br label %uv__signal_compare.exit.thread3.i.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %bb.cl, %bb.ck, %bb.cj, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ %spec.select.i18, %bb.cl ], [ 120, %bb.cj ], [ 112, %.lr.ph.i.i ], [ 112, %bb.ck ]
  %.1.i.i15 = phi ptr [ %spec.select17.i, %bb.cl ], [ %.09.i.i, %bb.cj ], [ %.01110.i.i, %.lr.ph.i.i ], [ %.01110.i.i, %bb.ck ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 %.sink.i.i
  %.011.i.i = load ptr, ptr %i.gx, align 8        ; 2 uses
  %.not.i.i16 = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i16, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i17 = icmp eq ptr %.1.i.i15, null
  br i1 %.not.i17, label %bb.cm, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %.1.i.i15, i64 104
  %6 = load i32, ptr %5, align 8
  %i.gy = icmp eq i32 %6, %i.gk
  br i1 %i.gy, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %uv__signal_tree_s_RB_REMOVE.exit.thread, %uv__signal_tree_s_RB_REMOVE.exit, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  %i.gz = phi i32 [ %i.gj, %uv__signal_tree_s_RB_REMOVE.exit.thread ], [ %i.gk, %uv__signal_tree_s_RB_REMOVE.exit ], [ %i.gk, %uv__signal_tree_s_RB_NFIND.exit.i ], [ %i.gk, %uv__signal_tree_s_RB_NFIND.exit.thread8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %i.ha = call i32 @sigaction(i32 noundef %i.gz, ptr noundef nonnull %2, ptr noundef null) #9
  %.not.i20.a = icmp eq i32 %i.ha, 0
  br i1 %.not.i20.a, label %uv__signal_unregister_handler.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @abort() #10
  unreachable

uv__signal_unregister_handler.exit:               ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.cr

bb.co:                                            ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = and i32 %i.hc, 33554432
  %i.he = getelementptr inbounds nuw i8, ptr %.1.i.i15, i64 88
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = and i32 %i.hf, 33554432
  %i.hh = icmp eq i32 %i.hg, 0
  %i.hi = icmp ne i32 %i.hd, 0
  %or.cond = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, i8 0, i64 152, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hk = call i32 @sigfillset(ptr noundef nonnull %i.hj) #9
  %.not.i21 = icmp eq i32 %i.hk, 0
  br i1 %.not.i21, label %uv__signal_register_handler.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @abort() #10
  unreachable

uv__signal_register_handler.exit:                 ; preds = %bb.cp
  store ptr @uv__signal_handler, ptr %1, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 -1879048192, ptr %i.hl, align 8
  %i.hm = call i32 @sigaction(i32 noundef %i.gk, ptr noundef nonnull %1, ptr noundef null) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.cr

bb.cr:                                            ; preds = %bb.co, %uv__signal_register_handler.exit, %uv__signal_unregister_handler.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %bb.cr
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.ho = call i64 @write(i32 noundef %i.hn, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.hp = and i64 %i.ho, 2147483648
  %.not.not.not.not.i.not.i = icmp eq i64 %i.hp, 0
  br i1 %.not.not.not.not.i.not.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hq = tail call ptr @__errno_location() #11
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = icmp eq i32 %i.hr, 4
  br i1 %i.hs, label %bb.cs, label %bb.cu, !llvm.loop !1

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @abort() #10
  unreachable

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ht = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #9
  %.not1.i = icmp eq i32 %i.ht, 0
  br i1 %.not1.i, label %uv__signal_unlock_and_unblock.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @abort() #10
  unreachable

uv__signal_unlock_and_unblock.exit:               ; preds = %bb.cv
  store i32 0, ptr %i.b, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8            ; 3 uses
  %i.hw = and i32 %i.hv, 4
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %uv__signal_unlock_and_unblock.exit
  %i.hy = and i32 %i.hv, -5
  store i32 %i.hy, ptr %i.hu, align 8
  %i.hz = and i32 %i.hv, 8
  %.not = icmp eq i32 %i.hz, 0
  br i1 %.not, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8
  %i.ie = add i32 %i.id, -1
  store i32 %i.ie, ptr %i.ic, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %uv__signal_unlock_and_unblock.exit, %bb.cx, %bb.cy, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @uv_signal_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %i.f = tail call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef %i.e, i32 noundef 1) #9 ; 2 uses
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
define range(i32 -2147483647, -2147483648) i32 @uv_signal_start(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  %6 = alloca %struct.uv_signal_s, align 8        ; 5 uses
  %7 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %uv__signal_unlock_and_unblock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.g, align 8
  br label %uv__signal_unlock_and_unblock.exit

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @uv__signal_block_and_lock(ptr noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i32 %2, ptr %i.h, align 8
  %.0117.i.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %bb.f ] ; 8 uses
  %.09.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp slt i32 %2, %i.j
  br i1 %i.k, label %uv__signal_compare.exit.thread3.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp sgt i32 %2, %i.j
  br i1 %i.l, label %uv__signal_compare.exit.thread3.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 88
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 33554432
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %bb.i, label %uv__signal_compare.exit.thread3.i.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ne ptr %i.q, null
  %i.s = icmp ult ptr %6, %.01110.i.i
  %or.cond.i = or i1 %i.s, %i.r                   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i64 112, i64 120
  %spec.select17.i = select i1 %or.cond.i, ptr %.01110.i.i, ptr %.09.i.i
  br label %uv__signal_compare.exit.thread3.i.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ %spec.select.i, %bb.i ], [ 120, %bb.g ], [ 112, %.lr.ph.i.i ], [ 112, %bb.h ]
  %.1.i.i = phi ptr [ %spec.select17.i, %bb.i ], [ %.09.i.i, %bb.g ], [ %.01110.i.i, %.lr.ph.i.i ], [ %.01110.i.i, %bb.h ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 %.sink.i.i
  %.011.i.i = load ptr, ptr %i.t, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %.split, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %8 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %9 = load i32, ptr %8, align 8
  %i.u = icmp eq i32 %9, %2
  br i1 %i.u, label %bb.l, label %.split

.split:                                           ; preds = %bb.f, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = call i32 @sigfillset(ptr noundef nonnull %i.v) #9
  %.not.i36 = icmp eq i32 %i.w, 0
  br i1 %.not.i36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split
  call void @abort() #10
  unreachable

bb.k:                                             ; preds = %.split
  store ptr @uv__signal_handler, ptr %5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.not3.i = icmp eq i32 %3, 0                    ; 2 uses
  %spec.select.i.a = select i1 %.not3.i, i32 268435456, i32 -1879048192
  store i32 %spec.select.i.a, ptr %i.x, align 8
  %i.y = call i32 @sigaction(i32 noundef %2, ptr noundef nonnull %5, ptr noundef null) #9
  %.not4.i = icmp eq i32 %i.y, 0
  br i1 %.not4.i, label %.thread60, label %bb.p

.thread60:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.w

bb.l:                                             ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.not30 = icmp eq i32 %3, 0
  br i1 %.not30, label %bb.m, label %.thread52

.thread52:                                        ; preds = %bb.l
  store i32 %2, ptr %i.d, align 8
  br label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 88
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 33554432
  %.not31 = icmp eq i32 %i.ab, 0
  br i1 %.not31, label %.thread, label %.split26

.thread:                                          ; preds = %bb.m
  store i32 %2, ptr %i.d, align 8
  br label %bb.y

.split26:                                         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 152, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = call i32 @sigfillset(ptr noundef nonnull %i.ac) #9
  %.not.i38 = icmp eq i32 %i.ad, 0
  br i1 %.not.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split26
  call void @abort() #10
  unreachable

bb.o:                                             ; preds = %.split26
  store ptr @uv__signal_handler, ptr %4, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 268435456, ptr %i.ae, align 8
  %i.af = call i32 @sigaction(i32 noundef %2, ptr noundef nonnull %4, ptr noundef null) #9
  %.not4.i39 = icmp eq i32 %i.af, 0
  br i1 %.not4.i39, label %.thread54.thread, label %.thread54

.thread54.thread:                                 ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread58

bb.p:                                             ; preds = %bb.k
  %i.ag = tail call ptr @__errno_location() #11
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.not32 = icmp eq i32 %i.ah, 0
  br i1 %.not32, label %bb.w, label %bb.q

.thread54:                                        ; preds = %bb.o
  %i.ai = tail call ptr @__errno_location() #11
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.not3256 = icmp eq i32 %i.aj, 0
  br i1 %.not3256, label %.thread58, label %bb.q

.thread58:                                        ; preds = %.thread54.thread, %.thread54
  store i32 %2, ptr %i.d, align 8
  br label %bb.y

bb.q:                                             ; preds = %.thread54, %bb.p
  %.pn = phi i32 [ %i.aj, %.thread54 ], [ %i.ah, %bb.p ]
  %phi.call57 = sub nsw i32 0, %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 42, ptr %i.b, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.al = call i64 @write(i32 noundef %i.ak, ptr noundef nonnull %i.b, i64 noundef 1) #9
  %i.am = and i64 %i.al, 2147483648
  %.not.not.not.not.i.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.not.not.i.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = tail call ptr @__errno_location() #11
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 4
  br i1 %i.ap, label %bb.r, label %bb.t, !llvm.loop !1

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @abort() #10
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.aq = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %7, ptr noundef null) #9
  %.not1.i = icmp eq i32 %i.aq, 0
  br i1 %.not1.i, label %uv__signal_unlock_and_unblock.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @abort() #10
  unreachable

bb.w:                                             ; preds = %.thread60, %bb.p
  store i32 %2, ptr %i.d, align 8
  br i1 %.not3.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread52, %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = or i32 %i.as, 33554432
  store i32 %i.at, ptr %i.ar, align 8
  br label %bb.y

bb.y:                                             ; preds = %.thread58, %.thread, %bb.x, %bb.w
  %.02613.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 4 uses
  %.not14.i = icmp eq ptr %.02613.i, null
  br i1 %.not14.i, label %.thread98, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.z

bb.z:                                             ; preds = %uv__signal_compare.exit.thread5.i, %.lr.ph.i
  %.02615.i = phi ptr [ %.02613.i, %.lr.ph.i ], [ %.026.i, %uv__signal_compare.exit.thread5.i ] ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02615.i, i64 104
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp slt i32 %2, %i.ax
  br i1 %i.ay, label %uv__signal_compare.exit.thread5.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = icmp sgt i32 %2, %i.ax
  br i1 %i.az, label %uv__signal_compare.exit.thread5.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = load i32, ptr %i.au, align 8
  %i.bb = and i32 %i.ba, 33554432                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02615.i, i64 88
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = and i32 %i.bd, 33554432                 ; 2 uses
  %i.bf = icmp samesign ult i32 %i.bb, %i.be
  br i1 %i.bf, label %uv__signal_compare.exit.thread5.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = icmp samesign ugt i32 %i.bb, %i.be
  br i1 %i.bg, label %uv__signal_compare.exit.thread5.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02615.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp ult ptr %i.bh, %i.bj
  br i1 %i.bk, label %uv__signal_compare.exit.thread5.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = icmp ugt ptr %i.bh, %i.bj
  br i1 %i.bl, label %uv__signal_compare.exit.thread5.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bm = icmp ult ptr %0, %.02615.i
  br i1 %i.bm, label %uv__signal_compare.exit.thread5.i, label %uv__signal_compare.exit.i

uv__signal_compare.exit.i:                        ; preds = %bb.af
  %.not9.i = icmp ugt ptr %0, %.02615.i
  br i1 %.not9.i, label %uv__signal_compare.exit.thread5.i, label %uv__signal_tree_s_RB_INSERT.exit

uv__signal_compare.exit.thread5.i:                ; preds = %uv__signal_compare.exit.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sink.i = phi i64 [ 112, %bb.ad ], [ 112, %bb.af ], [ 112, %bb.z ], [ 112, %bb.ab ], [ 120, %bb.ae ], [ 120, %bb.aa ], [ 120, %bb.ac ], [ 120, %uv__signal_compare.exit.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02615.i, i64 %.sink.i
  %.026.i = load ptr, ptr %i.bn, align 8          ; 2 uses
  %.not.i42 = icmp eq ptr %.026.i, null
  br i1 %.not.i42, label %bb.ag, label %bb.z, !llvm.loop !11

bb.ag:                                            ; preds = %uv__signal_compare.exit.thread5.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %.02615.i, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.02615.i, i64 %.sink.i
  store ptr %0, ptr %i.br, align 8
  %.pr = load ptr, ptr %i.bp, align 8             ; 2 uses
  %.not1.i.i = icmp eq ptr %.pr, null
  br i1 %.not1.i.i, label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i, label %.lr.ph.i.i43

.thread98:                                        ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.bt, align 8
  store ptr %0, ptr @uv__signal_tree.0, align 8
  br label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

.lr.ph.i.i43:                                     ; preds = %bb.ag, %.backedge.i.i
  %i.bu = phi ptr [ %i.cl, %.backedge.i.i ], [ %.02613.i, %bb.ag ] ; 9 uses
  %i.bv = phi ptr [ %i.cn, %.backedge.i.i ], [ %.pr, %bb.ag ] ; 15 uses
  %.01142.i.i = phi ptr [ %.0114.be.i.i, %.backedge.i.i ], [ %0, %bb.ag ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 112 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 136 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.ah, label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

bb.ah:                                            ; preds = %.lr.ph.i.i43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 128 ; 7 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 19 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 112 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = icmp eq ptr %i.bv, %i.cd
  br i1 %i.ce, label %bb.ai, label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not126.i.i = icmp eq ptr %i.cg, null
end_hunk_1
begin_hunk_2_@uv__signal_event:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 148 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 33554432
  %.not36 = icmp eq i32 %i.ab, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %i.o)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ac = add nuw nsw i64 %.039, 16               ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.m
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.h, %.critedge38
  %i.ae = and i64 %i.l, 15                        ; 3 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.af, i64 %i.ae, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.i
  %.130 = phi i64 [ %.029, %bb.c ], [ %.029, %bb.d ], [ %i.ae, %bb.i ], [ 0, %._crit_edge ]
  %.1 = phi i64 [ %.028, %bb.c ], [ %.028, %bb.d ], [ %i.m, %bb.i ], [ %i.m, %._crit_edge ]
  %i.ag = icmp eq i64 %.1, 512
  br i1 %i.ag, label %bb.b, label %bb.k, !llvm.loop !14

bb.k:                                             ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define noundef i32 @uv_signal_stop(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @uv__signal_stop(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @uv__signal_global_reinit() #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = load i32, ptr @uv__signal_lock_pipefd, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uv__close(i32 noundef %i.b) #9 ; 0 uses
  store i32 -1, ptr @uv__signal_lock_pipefd, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4 ; 2 uses
  %.not2.i = icmp eq i32 %i.d, -1
  br i1 %.not2.i, label %uv__signal_cleanup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @uv__close(i32 noundef %i.d) #9 ; 0 uses
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  br label %uv__signal_cleanup.exit

uv__signal_cleanup.exit:                          ; preds = %bb.c, %bb.d
  %i.f = tail call i32 @uv__make_pipe(ptr noundef nonnull @uv__signal_lock_pipefd, i32 noundef 0) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %uv__signal_cleanup.exit
  tail call void @abort() #10
  unreachable

bb.f:                                             ; preds = %uv__signal_cleanup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.h = call i64 @write(i32 noundef %i.g, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.i = and i64 %i.h, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.i, 0
  br i1 %.not.not.not.not.i.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #11
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.g, label %bb.i, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  tail call void @abort() #10
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i32 @uv__make_pipe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #3

declare i32 @uv__io_init_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind uwtable
define internal void @uv__signal_handler(i32 noundef %0) #8 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %struct.uv_signal_s, align 8        ; 5 uses
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
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %0, ptr %i.k, align 8
  %.0117.i.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %uv__signal_first_handle.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %bb.d ] ; 8 uses
  %.09.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
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
  %or.cond.i = or i1 %i.v, %i.u                   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i64 112, i64 120
  %spec.select17.i = select i1 %or.cond.i, ptr %.01110.i.i, ptr %.09.i.i
  br label %uv__signal_compare.exit.thread3.i.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %bb.g, %bb.f, %bb.e, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ %spec.select.i, %bb.g ], [ 120, %bb.e ], [ 112, %.lr.ph.i.i ], [ 112, %bb.f ]
  %.1.i.i = phi ptr [ %spec.select17.i, %bb.g ], [ %.09.i.i, %bb.e ], [ %.01110.i.i, %.lr.ph.i.i ], [ %.01110.i.i, %bb.f ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 %.sink.i.i
  %.011.i.i = load ptr, ptr %i.w, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %uv__signal_first_handle.exit.thread, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %3 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %4 = load i32, ptr %3, align 8
  %i.x = icmp eq i32 %4, %0
  br i1 %i.x, label %.lr.ph, label %uv__signal_first_handle.exit.thread

uv__signal_first_handle.exit.thread:              ; preds = %bb.d, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.critedge

.lr.ph:                                           ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, %0
  br i1 %i.ab, label %.lr.ph50.preheader, label %.critedge

.lr.ph50.preheader:                               ; preds = %.lr.ph
  store i32 %0, ptr %i.y, align 8
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %uv__signal_tree_s_RB_NEXT.exit
  %.02549 = phi ptr [ %.2.i, %uv__signal_tree_s_RB_NEXT.exit ], [ %.1.i.i, %.lr.ph50.preheader ] ; 7 uses
  store ptr %.02549, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.02549, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph50
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 556
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = call i64 @write(i32 noundef %i.af, ptr noundef nonnull %2, i64 noundef 16) #9
  %i.ah = and i64 %i.ag, 4294967295
  %cond = icmp eq i64 %i.ah, 4294967295
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.c, align 4
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.h, label %.critedge2, !llvm.loop !15

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.02549, i64 144 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %bb.i, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.02549, i64 120
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i17 = icmp eq ptr %i.ao, null
  br i1 %.not.i17, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2, %.preheader.i
  %.0.i18 = phi ptr [ %i.aq, %.preheader.i ], [ %i.ao, %.critedge2 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i18, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.aq, null
  br i1 %.not20.i, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader.i, !llvm.loop !16

bb.k:                                             ; preds = %.critedge2
  %i.ar = getelementptr inbounds nuw i8, ptr %.02549, i64 128
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not18.i = icmp eq ptr %i.as, null
  br i1 %.not18.i, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %.02549, %i.au
  br i1 %i.av, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.n
  %.1.i = phi ptr [ %i.ax, %bb.n ], [ %.02549, %.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %.not19.i = icmp eq ptr %i.ax, null
  br i1 %.not19.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %.1.i, %i.az
  br i1 %i.ba, label %bb.m, label %uv__signal_tree_s_RB_NEXT.exit, !llvm.loop !17

uv__signal_tree_s_RB_NEXT.exit:                   ; preds = %.preheader.i, %bb.n, %bb.l
  %.2.i = phi ptr [ %i.ax, %bb.n ], [ %i.as, %bb.l ], [ %.0.i18, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2.i, i64 104
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp eq i32 %i.bc, %0
  br i1 %i.bd, label %.lr.ph50, label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %uv__signal_tree_s_RB_NEXT.exit, %bb.m, %.lr.ph, %uv__signal_first_handle.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.critedge
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.bf = call i64 @write(i32 noundef %i.be, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.bg = and i64 %i.bf, 2147483648
  %.not.not.not.not.i19.not = icmp eq i64 %i.bg, 0
  br i1 %.not.not.not.not.i19.not, label %uv__signal_unlock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %i.c, align 4
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %bb.o, label %uv__signal_unlock.exit, !llvm.loop !1

uv__signal_unlock.exit:                           ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.q

bb.q:                                             ; preds = %uv__signal_lock.exit, %uv__signal_unlock.exit
  store i32 %i.d, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
!2 = distinct !{!2, !6}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
end_hunk_2
