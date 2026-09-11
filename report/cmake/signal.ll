Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/signal?download=true
inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0

@uv__signal_lock_pipefd = internal global [2 x i32] [i32 -1, i32 -1], align 4
@uv__signal_global_init_guard = internal global i32 0, align 4
@uv__signal_tree.0 = internal unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @uv__signal_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @uv__signal_lock_pipefd, align 4, !tbaa !12 ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uv__close(i32 noundef %i.a) #9 ; 0 uses
  store i32 -1, ptr @uv__signal_lock_pipefd, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12 ; 2 uses
  %.not2 = icmp eq i32 %i.c, -1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @uv__close(i32 noundef %i.c) #9 ; 0 uses
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare i32 @uv__close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uv__signal_global_once_init() local_unnamed_addr #0 {
bb.a:
  tail call void @uv_once(ptr noundef nonnull @uv__signal_global_init_guard, ptr noundef nonnull @uv__signal_global_init) #9
  ret void
}

declare void @uv_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @uv__signal_global_init() #0 {
bb.a:
  %i.a = load i32, ptr @uv__signal_lock_pipefd, align 4, !tbaa !12
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
define dso_local i32 @uv__signal_loop_fork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %uv__signal_loop_once_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  tail call void @uv__io_stop(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.e = load i32, ptr %i.a, align 8, !tbaa !12
  %i.f = tail call i32 @uv__close(i32 noundef %i.e) #9 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = tail call i32 @uv__close(i32 noundef %i.h) #9 ; 0 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !12
  store i32 -1, ptr %i.g, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.019 = load ptr, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %.not20 = icmp eq ptr %.019, %i.j
  br i1 %.not20, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.021 = phi ptr [ %.0, %bb.d ], [ %.019, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.021, i64 -16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %.not18 = icmp eq i32 %i.l, 16
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.021, i64 112
  store i32 0, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %.021, i64 116
  store i32 0, ptr %i.n, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0 = load ptr, ptr %.021, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %.0, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 8, !tbaa !12
  %i.o = icmp eq i32 %.pre, -1
  br i1 %i.o, label %._crit_edge.thread, label %uv__signal_loop_once_init.exit

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.p = tail call i32 @uv__make_pipe(ptr noundef nonnull %i.a, i32 noundef 64) #9 ; 2 uses
  %.not15.i = icmp eq i32 %i.p, 0
  br i1 %.not15.i, label %bb.e, label %uv__signal_loop_once_init.exit

bb.e:                                             ; preds = %._crit_edge.thread
  %i.q = load i32, ptr %i.a, align 8, !tbaa !12
  %i.r = tail call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef %i.q, i32 noundef 1) #9 ; 2 uses
  %.not16.i = icmp eq i32 %i.r, 0
  br i1 %.not16.i, label %uv__signal_loop_once_init.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.a, align 8, !tbaa !12
  %i.t = tail call i32 @uv__close(i32 noundef %i.s) #9 ; 0 uses
  %i.u = load i32, ptr %i.g, align 4, !tbaa !12
  %i.v = tail call i32 @uv__close(i32 noundef %i.u) #9 ; 0 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !12
  store i32 -1, ptr %i.g, align 4, !tbaa !12
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
define dso_local void @uv__signal_loop_cleanup(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.017 = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %.not18 = icmp eq ptr %.017, %i.a
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.019 = phi ptr [ %.0, %bb.c ], [ %.017, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %.019, i64 -16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp eq i32 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds i8, ptr %.019, i64 -32
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.0 = load ptr, ptr %.019, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %.not15 = icmp eq i32 %i.g, -1
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.h = tail call i32 @uv__close(i32 noundef %i.g) #9 ; 0 uses
  store i32 -1, ptr %i.f, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12   ; 2 uses
  %.not16 = icmp eq i32 %i.j, -1
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @uv__close(i32 noundef %i.j) #9 ; 0 uses
  store i32 -1, ptr %i.i, align 4, !tbaa !12
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.da, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @uv__signal_block_and_lock(ptr noundef %4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 4 uses
  br i1 %i.g, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread.i, label %.preheader6.i

.thread.i:                                        ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31
  br label %bb.s

.preheader6.i:                                    ; preds = %bb.c, %.preheader6.i
  %.069.i = phi ptr [ %i.p, %.preheader6.i ], [ %i.i, %bb.c ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.069.i, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %.preheader6.i, !llvm.loop !55

bb.d:                                             ; preds = %.preheader6.i
  %i.q = getelementptr inbounds nuw i8, ptr %.069.i, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %.069.i, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.069.i, i64 128 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.069.i, i64 136
  %i.w = load i32, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %.not80.i = icmp eq ptr %i.s, null
  br i1 %.not80.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  store ptr %i.u, ptr %i.x, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not81.i = icmp eq ptr %i.u, null
  br i1 %.not81.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = icmp eq ptr %i.z, %.069.i
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.s, ptr %i.y, align 8, !tbaa !28
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  store ptr %i.s, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.ad = icmp eq ptr %i.ac, %0
  %spec.select.i = select i1 %i.ad, ptr %.069.i, ptr %i.u ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !tbaa.struct !57
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 3 uses
  %.not82.i = icmp eq ptr %i.af, null
  br i1 %.not82.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.069.i, ptr %i.ag, align 8, !tbaa !28
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store ptr %.069.i, ptr %i.aj, align 8, !tbaa !29
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  store ptr %.069.i, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  store ptr %.069.i, ptr %i.al, align 8, !tbaa !30
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %.not83.i = icmp eq ptr %i.am, null
  br i1 %.not83.i, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  store ptr %.069.i, ptr %i.an, align 8, !tbaa !30
  br label %.loopexit.i

bb.r:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not86.i = icmp eq ptr %i.i, null
  br i1 %.not86.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.i
  %i.as = phi i32 [ %i.n, %.thread.i ], [ %i.ar, %bb.r ]
  %i.at = phi ptr [ %i.l, %.thread.i ], [ %i.ap, %bb.r ] ; 2 uses
  %.0673.i = phi ptr [ %i.f, %.thread.i ], [ %i.i, %bb.r ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0673.i, i64 128
  store ptr %i.at, ptr %i.au, align 8, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.av = phi i32 [ %i.as, %bb.s ], [ %i.ar, %bb.r ] ; 3 uses
  %i.aw = phi ptr [ %i.at, %bb.s ], [ %i.ap, %bb.r ] ; 5 uses
  %.0674.i = phi ptr [ %.0673.i, %bb.s ], [ null, %bb.r ] ; 6 uses
  %.not87.i = icmp eq ptr %i.aw, null
  br i1 %.not87.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = icmp eq ptr %i.ay, %0
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.0674.i, ptr %i.ax, align 8, !tbaa !28
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  store ptr %.0674.i, ptr %i.ba, align 8, !tbaa !29
  br label %.loopexit.i

bb.x:                                             ; preds = %bb.t
  store ptr %.0674.i, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.p, %bb.q, %bb.x, %bb.w, %bb.v
  %.168.i = phi ptr [ %.0674.i, %bb.v ], [ %.0674.i, %bb.w ], [ %.0674.i, %bb.x ], [ %i.s, %bb.q ], [ %i.s, %bb.p ]
  %.1.i = phi ptr [ %i.aw, %bb.v ], [ %i.aw, %bb.w ], [ null, %bb.x ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.p ]
  %.065.i = phi i32 [ %i.av, %bb.v ], [ %i.av, %bb.w ], [ %i.av, %bb.x ], [ %i.w, %bb.q ], [ %i.w, %bb.p ]
  %i.bb = icmp eq i32 %.065.i, 0
  %uv__signal_tree.promoted.i.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 2 uses
  br i1 %i.bb, label %.preheader, label %uv__signal_tree_s_RB_REMOVE.exit

.preheader:                                       ; preds = %.loopexit.i, %bb.cj
  %i.bc = phi ptr [ %i.go, %bb.cj ], [ %uv__signal_tree.promoted.i.i, %.loopexit.i ] ; 9 uses
  %.0179.i.i = phi ptr [ %.1180.i.i, %bb.cj ], [ %.1.i, %.loopexit.i ] ; 26 uses
  %.0176.i.i = phi ptr [ %.0179.i.i, %bb.cj ], [ %.168.i, %.loopexit.i ] ; 5 uses
  %i.bd = icmp eq ptr %.0176.i.i, null
  br i1 %i.bd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 136
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = icmp ne i32 %i.bf, 0
  %.not.i.i = icmp eq ptr %.0176.i.i, %i.bc
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %.critedge.thread3.i.i, label %bb.aa

bb.z:                                             ; preds = %.preheader
  %.not.old.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.old.i.i, label %uv__signal_tree_s_RB_REMOVE.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 112 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28 ; 10 uses
  %i.bj = icmp eq ptr %i.bi, %.0176.i.i
  br i1 %i.bj, label %bb.ab, label %bb.bf

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 120 ; 5 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !31
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bm, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@uv__signal_stop:bb.a
bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.eq = phi ptr [ %.pre.i.i, %bb.bk ], [ %i.eh, %bb.bl ], [ %i.eh, %bb.bm ]
  %i.er = phi ptr [ %i.bc, %bb.bk ], [ %i.bc, %bb.bl ], [ %i.bi, %bb.bm ]
  store ptr %.0179.i.i, ptr %i.eg, align 8, !tbaa !29
  store ptr %i.bi, ptr %i.ej, align 8, !tbaa !30
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bf
  %i.es = phi ptr [ %i.er, %bb.bn ], [ %i.bc, %bb.bf ] ; 5 uses
  %.2.i.i = phi ptr [ %i.eq, %bb.bn ], [ %i.bi, %bb.bf ] ; 12 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 112
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null                 ; 2 uses
  br i1 %i.ev, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 136
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !31
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.bq, label %.thread105.i.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ez = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 120
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !29 ; 10 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.cj, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 136
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !31
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.cj, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ff = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 120
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 136
  br i1 %i.ev, label %.thread103.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bs
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 136
  %.pre54.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !31
  %i.fh = icmp eq i32 %.pre54.i.i, 0
  br i1 %i.fh, label %.thread103.i.i, label %.thread105.i.i

.thread103.i.i:                                   ; preds = %.thread.i.i, %bb.bs
  store i32 0, ptr %i.fg, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 136
  store i32 1, ptr %i.fi, align 8, !tbaa !31
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 112 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !28 ; 3 uses
  store ptr %i.fk, ptr %i.ff, align 8, !tbaa !29
  %.not195.i.i = icmp eq ptr %i.fk, null
  br i1 %.not195.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.thread103.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  store ptr %.2.i.i, ptr %i.fl, align 8, !tbaa !30
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread103.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 128 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !30 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !30
  %.not196.i.i = icmp eq ptr %i.fn, null
  br i1 %.not196.i.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 112 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !28
  %i.fr = icmp eq ptr %.2.i.i, %i.fq
  br i1 %i.fr, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.fa, ptr %i.fp, align 8, !tbaa !28
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 120
  store ptr %i.fa, ptr %i.fs, align 8, !tbaa !29
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  store ptr %i.fa, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %bb.bz

.thread105.i.i:                                   ; preds = %bb.bp, %.thread.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 136 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !31
  %i.fv = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 136
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !31
  store i32 0, ptr %i.ft, align 8, !tbaa !31
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.217868.i.i = phi ptr [ %i.es, %bb.bw ], [ %i.es, %bb.bx ], [ %i.fa, %bb.by ] ; 2 uses
  store ptr %.2.i.i, ptr %i.fj, align 8, !tbaa !28
  store ptr %i.fa, ptr %i.fm, align 8, !tbaa !30
  %i.fw = load ptr, ptr %i.bh, align 8, !tbaa !28 ; 4 uses
  %.phi.trans.insert57.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 112
  %.pre58.i.i = load ptr, ptr %.phi.trans.insert57.i.i, align 8, !tbaa !28 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 136 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !31
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 136
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !31
  store i32 0, ptr %i.fx, align 8, !tbaa !31
  %.not197.i.i = icmp eq ptr %.pre58.i.i, null
  br i1 %.not197.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.thread105.i.i
  %i.ga = phi ptr [ %.2.i.i, %.thread105.i.i ], [ %i.fw, %bb.bz ]
  %i.gb = phi ptr [ %i.eu, %.thread105.i.i ], [ %.pre58.i.i, %bb.bz ]
  %.217867108.i.i = phi ptr [ %i.es, %.thread105.i.i ], [ %.217868.i.i, %bb.bz ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 136
  store i32 0, ptr %i.gc, align 8, !tbaa !31
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.gd = phi ptr [ %i.fw, %bb.bz ], [ %i.ga, %bb.ca ] ; 7 uses
  %.217867109.i.i = phi ptr [ %.217868.i.i, %bb.bz ], [ %.217867108.i.i, %bb.ca ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 120 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !29 ; 3 uses
  store ptr %i.gf, ptr %i.bh, align 8, !tbaa !28
  %.not198.i.i = icmp eq ptr %i.gf, null
  br i1 %.not198.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 128
  store ptr %.0179.i.i, ptr %i.gg, align 8, !tbaa !30
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.gh = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 128 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !30 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !30
  %.not199.i.i = icmp eq ptr %i.gi, null
  br i1 %.not199.i.i, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 112 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !28
  %i.gm = icmp eq ptr %.0179.i.i, %i.gl
  br i1 %i.gm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.gd, ptr %i.gk, align 8, !tbaa !28
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 120
  store ptr %i.gd, ptr %i.gn, align 8, !tbaa !29
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  store ptr %i.gd, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.217866.i.i = phi ptr [ %.217867109.i.i, %bb.cf ], [ %.217867109.i.i, %bb.cg ], [ %i.gd, %bb.ch ]
  store ptr %.0179.i.i, ptr %i.ge, align 8, !tbaa !29
  store ptr %i.gd, ptr %i.gh, align 8, !tbaa !30
  br label %.critedge.i.i

bb.cj:                                            ; preds = %bb.br, %bb.bq, %bb.an, %bb.am
  %.2.sink.i.i = phi ptr [ %.0.i.i, %bb.am ], [ %.0.i.i, %bb.an ], [ %.2.i.i, %bb.br ], [ %.2.i.i, %bb.bq ]
  %i.go = phi ptr [ %i.cc, %bb.am ], [ %i.cc, %bb.an ], [ %i.es, %bb.br ], [ %i.es, %bb.bq ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.2.sink.i.i, i64 136
  store i32 1, ptr %i.gp, align 8, !tbaa !31
  %.1180.in.i.i = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 128
  %.1180.i.i = load ptr, ptr %.1180.in.i.i, align 8, !tbaa !30
  br label %.preheader, !llvm.loop !56

.critedge.i.i:                                    ; preds = %bb.ci, %bb.be
  %.2178.i.i = phi ptr [ %.217866.i.i, %bb.ci ], [ %.217865.i.i, %bb.be ] ; 3 uses
  %.not208.i.i = icmp eq ptr %.2178.i.i, null
  br i1 %.not208.i.i, label %uv__signal_tree_s_RB_REMOVE.exit.thread, label %.critedge.thread3.i.i

.critedge.thread3.i.i:                            ; preds = %bb.y, %.critedge.i.i
  %.0117.i.i113 = phi ptr [ %.2178.i.i, %.critedge.i.i ], [ %i.bc, %bb.y ]
  %.21786.i.i = phi ptr [ %.2178.i.i, %.critedge.i.i ], [ %.0176.i.i, %bb.y ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.21786.i.i, i64 136
  store i32 0, ptr %i.gq, align 8, !tbaa !31
  br label %uv__signal_tree_s_RB_REMOVE.exit

uv__signal_tree_s_RB_REMOVE.exit.thread:          ; preds = %bb.z, %.critedge.i.i
  %i.gr = load i32, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  br label %bb.cn

uv__signal_tree_s_RB_REMOVE.exit:                 ; preds = %.loopexit.i, %.critedge.thread3.i.i
  %.0117.i.i = phi ptr [ %.0117.i.i113, %.critedge.thread3.i.i ], [ %uv__signal_tree.promoted.i.i, %.loopexit.i ] ; 2 uses
  %i.gs = load i32, ptr %i.b, align 8, !tbaa !27  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %i.gs, ptr %i.gt, align 8, !tbaa !27
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %bb.cn, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %uv__signal_tree_s_RB_REMOVE.exit, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %uv__signal_tree_s_RB_REMOVE.exit ] ; 8 uses
  %.09.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %uv__signal_tree_s_RB_REMOVE.exit ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !27 ; 2 uses
  %i.gw = icmp slt i32 %i.gs, %i.gv
  br i1 %i.gw, label %uv__signal_compare.exit.thread3.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i
  %i.gx = icmp sgt i32 %i.gs, %i.gv
  br i1 %i.gx, label %uv__signal_compare.exit.thread3.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gy = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 88
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !35
  %i.ha = and i32 %i.gz, 33554432
  %.not12.i = icmp eq i32 %i.ha, 0
  br i1 %.not12.i, label %bb.cm, label %uv__signal_compare.exit.thread3.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.hb = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !36
  %i.hd = icmp ne ptr %i.hc, null
  %i.he = icmp ult ptr %3, %.01110.i.i
  %or.cond.i = or i1 %i.he, %i.hd                 ; 2 uses
  %spec.select.i17 = select i1 %or.cond.i, i64 112, i64 120
  %spec.select17.i = select i1 %or.cond.i, ptr %.01110.i.i, ptr %.09.i.i
  br label %uv__signal_compare.exit.thread3.i.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %bb.cm, %bb.cl, %bb.ck, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ %spec.select.i17, %bb.cm ], [ 120, %bb.ck ], [ 112, %.lr.ph.i.i ], [ 112, %bb.cl ]
  %.1.i.i = phi ptr [ %spec.select17.i, %bb.cm ], [ %.09.i.i, %bb.ck ], [ %.01110.i.i, %.lr.ph.i.i ], [ %.01110.i.i, %bb.cl ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 %.sink.i.i
  %.011.i.i = load ptr, ptr %i.hf, align 8, !tbaa !34 ; 2 uses
  %.not.i.i15 = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i15, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i16 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i16, label %bb.cn, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %i.hg = icmp eq i32 %6, %i.gs
  br i1 %i.hg, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %uv__signal_tree_s_RB_REMOVE.exit.thread, %uv__signal_tree_s_RB_REMOVE.exit, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  %i.hh = phi i32 [ %i.gr, %uv__signal_tree_s_RB_REMOVE.exit.thread ], [ %i.gs, %uv__signal_tree_s_RB_REMOVE.exit ], [ %i.gs, %uv__signal_tree_s_RB_NFIND.exit.i ], [ %i.gs, %uv__signal_tree_s_RB_NFIND.exit.thread8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %i.hi = call i32 @sigaction(i32 noundef %i.hh, ptr noundef nonnull %2, ptr noundef null) #9
  %.not.i17 = icmp eq i32 %i.hi, 0
  br i1 %.not.i17, label %uv__signal_unregister_handler.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @abort() #10
  unreachable

uv__signal_unregister_handler.exit:               ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.cs

bb.cp:                                            ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !35
  %i.hl = and i32 %i.hk, 33554432
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 88
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !35
  %i.ho = and i32 %i.hn, 33554432
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = icmp ne i32 %i.hl, 0
  %or.cond = select i1 %i.hp, i1 true, i1 %i.hq
  br i1 %or.cond, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, i8 0, i64 152, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hs = call i32 @sigfillset(ptr noundef nonnull %i.hr) #9
  %.not.i18 = icmp eq i32 %i.hs, 0
  br i1 %.not.i18, label %uv__signal_register_handler.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @abort() #10
  unreachable

uv__signal_register_handler.exit:                 ; preds = %bb.cq
  store ptr @uv__signal_handler, ptr %1, align 8, !tbaa !37
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 -1879048192, ptr %i.ht, align 8, !tbaa !40
  %i.hu = call i32 @sigaction(i32 noundef %i.gs, ptr noundef nonnull %1, ptr noundef null) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cp, %uv__signal_register_handler.exit, %uv__signal_unregister_handler.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1, !tbaa !37
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cu, %bb.cs
  %i.hv = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12
  %i.hw = call i64 @write(i32 noundef %i.hv, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.hx = and i64 %i.hw, 2147483648
  %.not.not.not.not.i.not.i = icmp eq i64 %i.hx, 0
  br i1 %.not.not.not.not.i.not.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hy = tail call ptr @__errno_location() #11
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !12
  %i.ia = icmp eq i32 %i.hz, 4
  br i1 %i.ia, label %bb.ct, label %bb.cv, !llvm.loop !1

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @abort() #10
  unreachable

bb.cw:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ib = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #9
  %.not1.i = icmp eq i32 %i.ib, 0
  br i1 %.not1.i, label %uv__signal_unlock_and_unblock.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @abort() #10
  unreachable

uv__signal_unlock_and_unblock.exit:               ; preds = %bb.cw
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !35 ; 3 uses
  %i.ie = and i32 %i.id, 4
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %uv__signal_unlock_and_unblock.exit
  %i.ig = and i32 %i.id, -5
  store i32 %i.ig, ptr %i.ic, align 8, !tbaa !35
  %i.ih = and i32 %i.id, 8
  %.not = icmp eq i32 %i.ih, 0
  br i1 %.not, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !36
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !48
  %i.im = add i32 %i.il, -1
  store i32 %i.im, ptr %i.ik, align 8, !tbaa !48
  br label %bb.da

bb.da:                                            ; preds = %uv__signal_unlock_and_unblock.exit, %bb.cy, %bb.cz, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uv_signal_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uv__make_pipe(ptr noundef nonnull %i.a, i32 noundef 64) #9 ; 2 uses
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %bb.c, label %uv__signal_loop_once_init.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = load i32, ptr %i.a, align 4, !tbaa !12
  %i.f = tail call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef %i.e, i32 noundef 1) #9 ; 2 uses
  %.not16.i = icmp eq i32 %i.f, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 4, !tbaa !12
  %i.h = tail call i32 @uv__close(i32 noundef %i.g) #9 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12
  %i.k = tail call i32 @uv__close(i32 noundef %i.j) #9 ; 0 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !12
  store i32 -1, ptr %i.i, align 4, !tbaa !12
  br label %uv__signal_loop_once_init.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 16, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 8, ptr %i.n, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !60
  store ptr %i.p, ptr %i.r, align 8, !tbaa !16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 148
  store i32 0, ptr %i.w, align 4, !tbaa !25
  br label %uv__signal_loop_once_init.exit

uv__signal_loop_once_init.exit:                   ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.c, %bb.b ], [ %i.f, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @uv__signal_close(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
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
  %6 = alloca %struct.uv_signal_s, align 8        ; 5 uses
  %7 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %uv__signal_unlock_and_unblock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = icmp eq i32 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.g, align 8, !tbaa !49
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
  store i32 %2, ptr %i.h, align 8, !tbaa !27
  %.0117.i.i = load ptr, ptr @uv__signal_tree.0, align 8, !tbaa !34 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %bb.f ] ; 8 uses
  %.09.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = icmp slt i32 %2, %i.j
  br i1 %i.k, label %uv__signal_compare.exit.thread3.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp sgt i32 %2, %i.j
  br i1 %i.l, label %uv__signal_compare.exit.thread3.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 88
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %i.o = and i32 %i.n, 33554432
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %bb.i, label %uv__signal_compare.exit.thread3.i.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
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
  %.011.i.i = load ptr, ptr %i.t, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %.split, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %8 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %9 = load i32, ptr %8, align 8, !tbaa !27
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
  store ptr @uv__signal_handler, ptr %5, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.not3.i = icmp eq i32 %3, 0                    ; 2 uses
  %spec.select.i.a = select i1 %.not3.i, i32 268435456, i32 -1879048192
  store i32 %spec.select.i.a, ptr %i.x, align 8, !tbaa !40
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
  store i32 %2, ptr %i.d, align 8, !tbaa !27
  br label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !35
  %i.ab = and i32 %i.aa, 33554432
  %.not31 = icmp eq i32 %i.ab, 0
  br i1 %.not31, label %.thread, label %.split26

.thread:                                          ; preds = %bb.m
  store i32 %2, ptr %i.d, align 8, !tbaa !27
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
  store ptr @uv__signal_handler, ptr %4, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 268435456, ptr %i.ae, align 8, !tbaa !40
  %i.af = call i32 @sigaction(i32 noundef %2, ptr noundef nonnull %4, ptr noundef null) #9
  %.not4.i39 = icmp eq i32 %i.af, 0
  br i1 %.not4.i39, label %.thread54.thread, label %.thread54

.thread54.thread:                                 ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread58

bb.p:                                             ; preds = %bb.k
  %i.ag = tail call ptr @__errno_location() #11
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.not32 = icmp eq i32 %i.ah, 0
  br i1 %.not32, label %bb.w, label %bb.q

.thread54:                                        ; preds = %bb.o
  %i.ai = tail call ptr @__errno_location() #11
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.not3256 = icmp eq i32 %i.aj, 0
  br i1 %.not3256, label %.thread58, label %bb.q

.thread58:                                        ; preds = %.thread54.thread, %.thread54
  store i32 %2, ptr %i.d, align 8, !tbaa !27
  br label %bb.y

bb.q:                                             ; preds = %.thread54, %bb.p
  %.pn = phi i32 [ %i.aj, %.thread54 ], [ %i.ah, %bb.p ]
  %phi.call57 = sub nsw i32 0, %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 42, ptr %i.b, align 1, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12
  %i.al = call i64 @write(i32 noundef %i.ak, ptr noundef nonnull %i.b, i64 noundef 1) #9
  %i.am = and i64 %i.al, 2147483648
  %.not.not.not.not.i.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.not.not.i.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = tail call ptr @__errno_location() #11
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
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
  store i32 %2, ptr %i.d, align 8, !tbaa !27
  br i1 %.not3.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread52, %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !35
  %i.at = or i32 %i.as, 33554432
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %.thread58, %.thread, %bb.x, %bb.w
  %.02613.i = load ptr, ptr @uv__signal_tree.0, align 8, !tbaa !34 ; 3 uses
  %.not14.i = icmp eq ptr %.02613.i, null
  br i1 %.not14.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.z

bb.z:                                             ; preds = %uv__signal_compare.exit.thread5.i, %.lr.ph.i
  %.02615.i = phi ptr [ %.02613.i, %.lr.ph.i ], [ %.026.i, %uv__signal_compare.exit.thread5.i ] ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02615.i, i64 104
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !27 ; 2 uses
  %i.ay = icmp slt i32 %2, %i.ax
  br i1 %i.ay, label %uv__signal_compare.exit.thread5.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = icmp sgt i32 %2, %i.ax
  br i1 %i.az, label %uv__signal_compare.exit.thread5.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = load i32, ptr %i.au, align 8, !tbaa !35
  %i.bb = and i32 %i.ba, 33554432                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02615.i, i64 88
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !35
  %i.be = and i32 %i.bd, 33554432                 ; 2 uses
  %i.bf = icmp samesign ult i32 %i.bb, %i.be
  br i1 %i.bf, label %uv__signal_compare.exit.thread5.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = icmp samesign ugt i32 %i.bb, %i.be
  br i1 %i.bg, label %uv__signal_compare.exit.thread5.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02615.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36 ; 2 uses
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
  %.026.i = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 2 uses
  %.not.i42 = icmp eq ptr %.026.i, null
  br i1 %.not.i42, label %bb.ag, label %bb.z, !llvm.loop !62

bb.ag:                                            ; preds = %uv__signal_compare.exit.thread5.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.02615.i, i64 %.sink.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.02615.i, ptr %i.bq, align 8, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.br, align 8, !tbaa !31
  store ptr %0, ptr %i.bo, align 8, !tbaa !34
  br label %.lr.ph.i.i43

.thread.i:                                        ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.bt, align 8, !tbaa !31
  store ptr %0, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

.lr.ph.i.i43:                                     ; preds = %.backedge.i.i, %bb.ag
  %i.bu = phi ptr [ %i.cl, %.backedge.i.i ], [ %.02613.i, %bb.ag ] ; 9 uses
  %i.bv = phi ptr [ %i.cn, %.backedge.i.i ], [ %.02615.i, %bb.ag ] ; 15 uses
  %.01142.i.i = phi ptr [ %.0114.be.i.i, %.backedge.i.i ], [ %0, %bb.ag ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 112 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 136 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !31
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.ah, label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

bb.ah:                                            ; preds = %.lr.ph.i.i43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 128 ; 7 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 19 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 112 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28 ; 4 uses
  %i.ce = icmp eq ptr %i.bv, %i.cd
  br i1 %i.ce, label %bb.ai, label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !29 ; 2 uses
  %.not126.i.i = icmp eq ptr %i.cg, null
  br i1 %.not126.i.i, label %bb.al, label %bb.aj

end_hunk_1
begin_hunk_2_@uv__signal_event:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 148 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !35
  %i.ab = and i32 %i.aa, 33554432
  %.not36 = icmp eq i32 %i.ab, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %i.o)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ac = add nuw nsw i64 %.039, 16               ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.m
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !64

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
  br i1 %i.ag, label %bb.b, label %bb.k, !llvm.loop !65

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
define dso_local noundef i32 @uv_signal_stop(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
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
  %i.b = load i32, ptr @uv__signal_lock_pipefd, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uv__close(i32 noundef %i.b) #9 ; 0 uses
  store i32 -1, ptr @uv__signal_lock_pipefd, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12 ; 2 uses
  %.not2.i = icmp eq i32 %i.d, -1
  br i1 %.not2.i, label %uv__signal_cleanup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @uv__close(i32 noundef %i.d) #9 ; 0 uses
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12
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
  store i8 42, ptr %i.a, align 1, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12
  %i.h = call i64 @write(i32 noundef %i.g, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.i = and i64 %i.h, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.i, 0
  br i1 %.not.not.not.not.i.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #11
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
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
  %i.e = load i32, ptr @uv__signal_lock_pipefd, align 4, !tbaa !12
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.g = and i64 %i.f, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.not.not.not.i.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @__errno_location() #11
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = load i32, ptr @uv__signal_lock_pipefd, align 4, !tbaa !12
  %i.g = call i64 @read(i32 noundef %i.f, ptr noundef nonnull %i.b, i64 noundef 1) #9
  %i.h = and i64 %i.g, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.not.not.not.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 4, !tbaa !12
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %uv__signal_lock.exit, !llvm.loop !2

uv__signal_lock.exit:                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %0, ptr %i.k, align 8, !tbaa !27
  %.0117.i.i = load ptr, ptr @uv__signal_tree.0, align 8, !tbaa !34 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0117.i.i, null
  br i1 %.not8.i.i, label %uv__signal_first_handle.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %uv__signal_compare.exit.thread3.i.i
  %.01110.i.i = phi ptr [ %.011.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0117.i.i, %bb.d ] ; 8 uses
  %.09.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = icmp slt i32 %0, %i.m
  br i1 %i.n, label %uv__signal_compare.exit.thread3.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.o = icmp sgt i32 %0, %i.m
  br i1 %i.o, label %uv__signal_compare.exit.thread3.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35
  %i.r = and i32 %i.q, 33554432
  %.not12.i = icmp eq i32 %i.r, 0
  br i1 %.not12.i, label %bb.g, label %uv__signal_compare.exit.thread3.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.01110.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
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
  %.011.i.i = load ptr, ptr %i.w, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !0

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %uv__signal_first_handle.exit.thread, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %3 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %i.x = icmp eq i32 %4, %0
  br i1 %i.x, label %.lr.ph, label %uv__signal_first_handle.exit.thread

uv__signal_first_handle.exit.thread:              ; preds = %bb.d, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.critedge

.lr.ph:                                           ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27
  %i.ab = icmp eq i32 %i.aa, %0
  br i1 %i.ab, label %.lr.ph50.preheader, label %.critedge

.lr.ph50.preheader:                               ; preds = %.lr.ph
  store i32 %0, ptr %i.y, align 8, !tbaa !52
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %uv__signal_tree_s_RB_NEXT.exit
  %.02549 = phi ptr [ %.2.i, %uv__signal_tree_s_RB_NEXT.exit ], [ %.1.i.i, %.lr.ph50.preheader ] ; 7 uses
  store ptr %.02549, ptr %2, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %.02549, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph50
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 556
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = call i64 @write(i32 noundef %i.af, ptr noundef nonnull %2, i64 noundef 16) #9
  %i.ah = and i64 %i.ag, 4294967295
  %cond = icmp eq i64 %i.ah, 4294967295
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !12
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.h, label %.critedge2, !llvm.loop !66

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.02549, i64 144 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !24
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !24
  br label %.critedge2

.critedge2:                                       ; preds = %bb.i, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.02549, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ao, null
  br i1 %.not.i17, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2, %.preheader.i
  %.0.i18 = phi ptr [ %i.aq, %.preheader.i ], [ %i.ao, %.critedge2 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i18, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 2 uses
  %.not20.i = icmp eq ptr %i.aq, null
  br i1 %.not20.i, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader.i, !llvm.loop !67

bb.k:                                             ; preds = %.critedge2
  %i.ar = getelementptr inbounds nuw i8, ptr %.02549, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30 ; 3 uses
  %.not18.i = icmp eq ptr %i.as, null
  br i1 %.not18.i, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28
  %i.av = icmp eq ptr %.02549, %i.au
  br i1 %i.av, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.n
  %.1.i = phi ptr [ %i.ax, %bb.n ], [ %.02549, %.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 4 uses
  %.not19.i = icmp eq ptr %i.ax, null
  br i1 %.not19.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.ba = icmp eq ptr %.1.i, %i.az
  br i1 %i.ba, label %bb.m, label %uv__signal_tree_s_RB_NEXT.exit, !llvm.loop !68

uv__signal_tree_s_RB_NEXT.exit:                   ; preds = %.preheader.i, %bb.n, %bb.l
  %.2.i = phi ptr [ %i.ax, %bb.n ], [ %i.as, %bb.l ], [ %.0.i18, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2.i, i64 104
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !27
  %i.bd = icmp eq i32 %i.bc, %0
  br i1 %i.bd, label %.lr.ph50, label %.critedge, !llvm.loop !69

.critedge:                                        ; preds = %uv__signal_tree_s_RB_NEXT.exit, %bb.m, %.lr.ph, %uv__signal_first_handle.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.critedge
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12
  %i.bf = call i64 @write(i32 noundef %i.be, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.bg = and i64 %i.bf, 2147483648
  %.not.not.not.not.i19.not = icmp eq i64 %i.bg, 0
  br i1 %.not.not.not.not.i19.not, label %uv__signal_unlock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !12
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %bb.o, label %uv__signal_unlock.exit, !llvm.loop !1

uv__signal_unlock.exit:                           ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.q

bb.q:                                             ; preds = %uv__signal_lock.exit, %uv__signal_unlock.exit
  store i32 %i.d, ptr %i.c, align 4, !tbaa !12
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

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS9uv__queue", !13, i64 0}
!15 = !{!"uv__queue", !14, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 0}
!17 = !{!"p1 _ZTS9uv_loop_s", !13, i64 0}
!18 = !{!"p1 _ZTS11uv_handle_s", !13, i64 0}
!19 = !{!"uv_handle_s", !13, i64 0, !17, i64 8, !9, i64 16, !13, i64 24, !15, i64 32, !8, i64 48, !18, i64 80, !9, i64 88}
!20 = !{!19, !9, i64 16}
!21 = !{!"p1 _ZTS11uv_signal_s", !13, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !9, i64 24}
!23 = !{!"uv_signal_s", !13, i64 0, !17, i64 8, !9, i64 16, !13, i64 24, !15, i64 32, !8, i64 48, !18, i64 80, !9, i64 88, !13, i64 96, !9, i64 104, !22, i64 112, !9, i64 144, !9, i64 148}
!24 = !{!23, !9, i64 144}
!25 = !{!23, !9, i64 148}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!23, !9, i64 104}
!28 = !{!23, !21, i64 112}
!29 = !{!23, !21, i64 120}
!30 = !{!23, !21, i64 128}
!31 = !{!23, !9, i64 136}
!32 = !{!"uv__signal_tree_s", !21, i64 0}
!33 = !{!32, !21, i64 0}
!34 = !{!21, !21, i64 0}
!35 = !{!23, !9, i64 88}
!36 = !{!23, !17, i64 8}
!37 = !{!8, !8, i64 0}
!38 = !{!"", !8, i64 0}
!39 = !{!"sigaction", !8, i64 0, !38, i64 8, !9, i64 136, !13, i64 144}
!40 = !{!39, !9, i64 136}
!41 = !{!"long", !8, i64 0}
!42 = !{!"any p2 pointer", !13, i64 0}
!43 = !{!"p2 _ZTS8uv__io_s", !42, i64 0}
!44 = !{!"uv_async_s", !13, i64 0, !17, i64 8, !9, i64 16, !13, i64 24, !15, i64 32, !8, i64 48, !18, i64 80, !9, i64 88, !13, i64 96, !15, i64 104, !9, i64 120}
!45 = !{!"uv__io_s", !41, i64 0, !15, i64 8, !15, i64 24, !9, i64 40, !9, i64 44, !9, i64 48}
!46 = !{!"", !13, i64 0, !9, i64 8}
!47 = !{!"uv_loop_s", !13, i64 0, !9, i64 8, !15, i64 16, !8, i64 32, !13, i64 40, !9, i64 48, !41, i64 56, !9, i64 64, !15, i64 72, !15, i64 88, !43, i64 104, !9, i64 112, !9, i64 116, !15, i64 120, !8, i64 136, !44, i64 176, !8, i64 304, !18, i64 360, !15, i64 368, !15, i64 384, !15, i64 400, !15, i64 416, !15, i64 432, !13, i64 448, !45, i64 456, !9, i64 512, !46, i64 520, !41, i64 536, !41, i64 544, !8, i64 552, !45, i64 560, !23, i64 616, !9, i64 768, !45, i64 776, !13, i64 832, !9, i64 840}
!48 = !{!47, !9, i64 8}
!49 = !{!23, !13, i64 96}
!50 = !{!"", !21, i64 0, !9, i64 8}
!51 = !{!50, !21, i64 0}
!52 = !{!50, !9, i64 8}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !26}
!56 = distinct !{!56, !26}
!57 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 4, !12}
!58 = !{!19, !17, i64 8}
!59 = !{!19, !9, i64 88}
!60 = !{!15, !14, i64 8}
!61 = !{!19, !18, i64 80}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
end_hunk_2
