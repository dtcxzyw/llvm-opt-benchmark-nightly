Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/io?download=true
inline.NumInlined: 185
inline.NumDeleted: 42
begin_hunk_0_@bdrv_refresh_limits:bb.a
  %.04967 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.n ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.05068, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = and i32 %i.ae, 13
  %.not62 = icmp eq i32 %i.af, 0
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %.05068, align 8          ; 8 uses
  %i.ah = load i32, ptr %i.u, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16480
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %i.aj)
  store i32 %i.ak, ptr %i.u, align 8
  %i.al = load i32, ptr %i.v, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16500
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call i32 @llvm.umax.i32(i32 %i.al, i32 %i.an)
  store i32 %i.ao, ptr %i.v, align 4
  %i.ap = load i32, ptr %i.w, align 8             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16504
  %i.ar = load i32, ptr %i.aq, align 8
  %.fr.i = freeze i32 %i.ar                       ; 2 uses
  %i.as = add i32 %.fr.i, -1
  %i.at = add i32 %i.ap, -1
  %.not.i = icmp ult i32 %i.at, %i.as
  %i.au = select i1 %.not.i, i32 %i.ap, i32 %.fr.i
  store i32 %i.au, ptr %i.w, align 8
  %i.av = load i64, ptr %i.x, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16512
  %i.ax = load i64, ptr %i.aw, align 8
  %.fr88.i = freeze i64 %i.ax                     ; 2 uses
  %i.ay = add i64 %.fr88.i, -1
  %i.az = add i64 %i.av, -1
  %.not89.i = icmp ult i64 %i.az, %i.ay
  %i.ba = select i1 %.not89.i, i64 %i.av, i64 %.fr88.i
  store i64 %i.ba, ptr %i.x, align 8
  %i.bb = load i64, ptr %i.y, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 16536
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bd)
  store i64 %i.be, ptr %i.y, align 8
  %i.bf = load i64, ptr %i.z, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 16528
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bh)
  store i64 %i.bi, ptr %i.z, align 8
  %i.bj = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16544
  %i.bl = load i32, ptr %i.bk, align 8            ; 3 uses
  %i.bm = icmp eq i32 %i.bj, 0
  %i.bn = icmp eq i32 %i.bl, 0
  %i.bo = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bj)
  %spec.select86.i = select i1 %i.bn, i32 %i.bj, i32 %i.bo
  %i.bp = select i1 %i.bm, i32 %i.bl, i32 %spec.select86.i
  store i32 %i.bp, ptr %i.aa, align 8
  %i.bq = load i32, ptr %i.ab, align 8            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 16520
  %i.bs = load i32, ptr %i.br, align 8            ; 3 uses
  %i.bt = icmp eq i32 %i.bq, 0
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.bq)
  %spec.select87.i = select i1 %i.bu, i32 %i.bq, i32 %i.bv
  %i.bw = select i1 %i.bt, i32 %i.bs, i32 %spec.select87.i
  store i32 %i.bw, ptr %i.ab, align 8
  %.pre = load i32, ptr %i.ad, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bx = phi i32 [ %.pre, %bb.k ], [ %i.ae, %bb.j ]
  %.1 = phi i1 [ true, %bb.k ], [ %.04967, %bb.j ] ; 2 uses
  %i.by = and i32 %i.bx, 4
  %.not63 = icmp eq i32 %i.by, 0
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %.05068, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16548
  %i.cb = load i8, ptr %i.ca, align 4, !range !12, !noundef !13
  %i.cc = load i8, ptr %i.ac, align 4, !range !12, !noundef !13
  %i.cd = or i8 %i.cc, %i.cb
  store i8 %i.cd, ptr %i.ac, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.05068, i64 64
  %.050 = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not59 = icmp eq ptr %.050, null
  br i1 %.not59, label %._crit_edge, label %bb.j, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.n
  br i1 %.1, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.i, %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16528
  store i64 512, ptr %i.cf, align 8
  %i.cg = tail call i32 @getpagesize() #17
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16536
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16544
  store i32 1024, ptr %i.cj, align 8
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.cl, null
  br i1 %.not60, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %i.cl(ptr noundef %0, ptr noundef %spec.select) #14
  %i.cm = load ptr, ptr %spec.select, align 8
  %.not61 = icmp eq ptr %i.cm, null
  br i1 %.not61, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.pre70 = load i32, ptr %i.i, align 8
  %i.cn = icmp ugt i32 %.pre70, 1073741824
  br i1 %i.cn, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @__func__.bdrv_refresh_limits, ptr noundef nonnull @.str.6) #14
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.q, %bb.r, %bb.p, %bb.e
  %.val = load ptr, ptr %3, align 8
  %.val64 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val64, ptr noundef %.val) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @tran_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare ptr @llvm.ptr.annotation.p0.p0(ptr, ptr, ptr, i32, ptr) #6

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind sspstrong willreturn uwtable
define dso_local void @bdrv_enable_copy_on_read(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16960
  %i.b = atomicrmw add ptr %i.a, i32 1 seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_disable_copy_on_read(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16960
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_disable_copy_on_read) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @bdrv_drain_poll(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_poll) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @assert_bdrv_graph_readable() #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16840
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not11.i = icmp eq ptr %i.c, null
  br i1 %.not11.i, label %bdrv_parent_drained_poll.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  br i1 %2, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bdrv_parent_drained_poll_single.exit.us.i.a
  %.013.us.i = phi i1 [ %.1.us.i, %bdrv_parent_drained_poll_single.exit.us.i.a ], [ false, %.lr.ph.i ] ; 4 uses
  %.01012.us.i = phi ptr [ %i.e, %bdrv_parent_drained_poll_single.exit.us.i.a ], [ %i.c, %.lr.ph.i ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01012.us.i, i64 80
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %.01012.us.i, %1
  br i1 %i.f, label %bdrv_parent_drained_poll_single.exit.us.i.a, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01012.us.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bdrv_parent_drained_poll_single.exit.us.i.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.m, null
  br i1 %.not.i.us.i, label %bdrv_parent_drained_poll_single.exit.us.i.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call zeroext i1 %i.m(ptr noundef nonnull %.01012.us.i) #14, !inline_history !22
  %3 = or i1 %.013.us.i, %i.n
  br label %bdrv_parent_drained_poll_single.exit.us.i.a

bdrv_parent_drained_poll_single.exit.us.i.a:      ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.split.us.i
  %.1.us.i = phi i1 [ %.013.us.i, %.lr.ph.split.us.i ], [ %.013.us.i, %bb.d ], [ %3, %bb.f ], [ %.013.us.i, %bb.e ] ; 2 uses
  %.not.us.i = icmp eq ptr %i.e, null
  br i1 %.not.us.i, label %bdrv_parent_drained_poll.exit, label %.lr.ph.split.us.i, !llvm.loop !0

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bdrv_parent_drained_poll_single.exit.i.a
  %.013.i = phi i1 [ %.1.i, %bdrv_parent_drained_poll_single.exit.i.a ], [ false, %.lr.ph.i ] ; 3 uses
  %.01012.i = phi ptr [ %i.p, %bdrv_parent_drained_poll_single.exit.i.a ], [ %i.c, %.lr.ph.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01012.i, i64 80
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %.01012.i, %1
  br i1 %i.q, label %bdrv_parent_drained_poll_single.exit.i.a, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01012.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bdrv_parent_drained_poll_single.exit.i.a, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call zeroext i1 %i.u(ptr noundef nonnull %.01012.i) #14, !inline_history !22
  %4 = or i1 %.013.i, %i.v
  br label %bdrv_parent_drained_poll_single.exit.i.a

bdrv_parent_drained_poll_single.exit.i.a:         ; preds = %bb.h, %bb.g, %.lr.ph.split.i
  %.1.i = phi i1 [ %.013.i, %.lr.ph.split.i ], [ %4, %bb.h ], [ %.013.i, %bb.g ] ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bdrv_parent_drained_poll.exit, label %.lr.ph.split.i, !llvm.loop !0

bdrv_parent_drained_poll.exit:                    ; preds = %bdrv_parent_drained_poll_single.exit.i.a, %bdrv_parent_drained_poll_single.exit.us.i.a
  %.0.lcssa.i = phi i1 [ %.1.us.i, %bdrv_parent_drained_poll_single.exit.us.i.a ], [ %.1.i, %bdrv_parent_drained_poll_single.exit.i.a ]
  br i1 %.0.lcssa.i, label %bb.i, label %bdrv_parent_drained_poll.exit.thread

bdrv_parent_drained_poll.exit.thread:             ; preds = %bb.c, %bdrv_parent_drained_poll.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16964
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %.not = icmp ne i32 %i.x, 0
  br label %bb.i

bb.i:                                             ; preds = %bdrv_parent_drained_poll.exit.thread, %bdrv_parent_drained_poll.exit
  %.0 = phi i1 [ true, %bdrv_parent_drained_poll.exit ], [ %.not, %bdrv_parent_drained_poll.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_do_drained_begin_quiesce(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @bdrv_do_drained_begin(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bdrv_do_drained_begin(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_coroutine() #14
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bdrv_co_yield_to_drain(ptr noundef %0, i1 noundef zeroext true, ptr noundef %1, i1 noundef zeroext %2)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 359, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_do_drained_begin) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16976 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  tail call void @bdrv_graph_rdlock_main_loop() #14
  tail call void @assert_bdrv_graph_readable() #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16840
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.h, null
  br i1 %.not7.i, label %bdrv_parent_drained_begin.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bdrv_parent_drained_begin_single.exit.i
  %.08.i = phi ptr [ %i.j, %bdrv_parent_drained_begin_single.exit.i ], [ %i.h, %bb.f ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %.08.i, %1
  br i1 %i.k, label %bdrv_parent_drained_begin_single.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.l = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 126, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_begin_single) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i, i64 57 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !12, !noundef !13
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 128, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_begin_single) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bdrv_parent_drained_begin_single.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %i.s(ptr noundef nonnull %.08.i) #14, !inline_history !23
  br label %bdrv_parent_drained_begin_single.exit.i

bdrv_parent_drained_begin_single.exit.i:          ; preds = %bb.l, %bb.k, %.lr.ph.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bdrv_parent_drained_begin.exit, label %.lr.ph.i, !llvm.loop !24

bdrv_parent_drained_begin.exit:                   ; preds = %bdrv_parent_drained_begin_single.exit.i, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.m

bb.m:                                             ; preds = %bdrv_parent_drained_begin.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 344
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.w(ptr noundef nonnull %0) #14
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.n, %bb.m, %bdrv_parent_drained_begin.exit
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  br label %bb.o

bb.o:                                             ; preds = %glib_autoptr_cleanup_GraphLockableMainloop.exit, %bb.e
  br i1 %2, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.x = tail call ptr @bdrv_get_aio_context(ptr noundef nonnull %0) #14 ; 4 uses
  %i.y = atomicrmw add ptr @global_aio_wait, i32 1 seq_cst, align 4 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %.not29 = icmp eq ptr %i.x, null
  br i1 %.not29, label %in_aio_context_home_thread.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = tail call ptr @qemu_get_current_aio_context() #14
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %in_aio_context_home_thread.exit.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call ptr @qemu_get_aio_context() #14
  %i.ac = icmp eq ptr %i.x, %i.ab
  br i1 %i.ac, label %.split, label %in_aio_context_home_thread.exit.thread

.split:                                           ; preds = %bb.r
  %i.ad = tail call zeroext i1 @bql_locked() #14
  br i1 %i.ad, label %in_aio_context_home_thread.exit.preheader, label %in_aio_context_home_thread.exit.thread

in_aio_context_home_thread.exit.preheader:        ; preds = %.split, %bb.q
  %i.ae = tail call fastcc zeroext i1 @bdrv_drain_poll_top_level(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %i.ae, label %in_aio_context_home_thread.exit, label %.loopexit

in_aio_context_home_thread.exit:                  ; preds = %in_aio_context_home_thread.exit.preheader, %in_aio_context_home_thread.exit
  %i.af = tail call zeroext i1 @aio_poll(ptr noundef nonnull %i.x, i1 noundef zeroext true) #14 ; 0 uses
  %i.ag = tail call fastcc zeroext i1 @bdrv_drain_poll_top_level(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %i.ag, label %in_aio_context_home_thread.exit, label %.loopexit, !llvm.loop !25

in_aio_context_home_thread.exit.thread:           ; preds = %bb.r, %.split, %bb.p
  %i.ah = tail call ptr @qemu_get_current_aio_context() #14
  %i.ai = tail call ptr @qemu_get_aio_context() #14
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.preheader, label %bb.s

.preheader:                                       ; preds = %in_aio_context_home_thread.exit.thread
  %i.ak = tail call fastcc zeroext i1 @bdrv_drain_poll_top_level(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %i.ak, label %.lr.ph33, label %.loopexit

bb.s:                                             ; preds = %in_aio_context_home_thread.exit.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 380, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_do_drained_begin) #15
  unreachable

.lr.ph33:                                         ; preds = %.preheader, %.lr.ph33
  %i.al = tail call ptr @qemu_get_aio_context() #14
  %i.am = tail call zeroext i1 @aio_poll(ptr noundef %i.al, i1 noundef zeroext true) #14 ; 0 uses
  %i.an = tail call fastcc zeroext i1 @bdrv_drain_poll_top_level(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %i.an, label %.lr.ph33, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %in_aio_context_home_thread.exit, %.lr.ph33, %in_aio_context_home_thread.exit.preheader, %.preheader
  %i.ao = atomicrmw sub ptr @global_aio_wait, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.o, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_drained_begin(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @bdrv_do_drained_begin(ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_drained_end(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @bdrv_do_drained_end(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bdrv_do_drained_end(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_coroutine() #14
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bdrv_co_yield_to_drain(ptr noundef %0, i1 noundef zeroext false, ptr noundef %1, i1 noundef zeroext false)
  br label %bb.r

end_hunk_0
begin_hunk_1_@bdrv_do_drained_end:bb.a
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.k(ptr noundef nonnull %0) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  tail call void @assert_bdrv_graph_readable() #14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16840
  %.06.i = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bdrv_parent_drained_end_single.exit.i
  %.08.i = phi ptr [ %.0.i, %bdrv_parent_drained_end_single.exit.i ], [ %.06.i, %bb.k ] ; 5 uses
  %i.m = icmp eq ptr %.08.i, %1
  br i1 %i.m, label %bdrv_parent_drained_end_single.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.n = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_end_single) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i, i64 57 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !range !12, !noundef !13
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 72, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_end_single) #15
  unreachable

bb.p:                                             ; preds = %bb.n
  store i8 0, ptr %i.o, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bdrv_parent_drained_end_single.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void %i.u(ptr noundef nonnull %.08.i) #14, !inline_history !27
  br label %bdrv_parent_drained_end_single.exit.i

bdrv_parent_drained_end_single.exit.i:            ; preds = %bb.q, %bb.p, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i, i64 80
  %.0.i = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %.lr.ph.i, !llvm.loop !28

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bdrv_parent_drained_end_single.exit.i, %bb.k
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  br label %bb.r

bb.r:                                             ; preds = %glib_autoptr_cleanup_GraphLockableMainloop.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_drain(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @bdrv_do_drained_begin(ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  tail call fastcc void @bdrv_do_drained_end(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_drain_all_begin_nopoll() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 484, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_all_begin_nopoll) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @replay_events_enabled() #14
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @qemu_get_current_aio_context() #14
  %i.d = tail call ptr @qemu_get_aio_context() #14
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_all_begin_nopoll) #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = load i32, ptr @bdrv_drain_all_count, align 4 ; 2 uses
  %i.g = icmp ult i32 %i.f, 2147483647
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_all_begin_nopoll) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = add nuw nsw i32 %i.f, 1
  store i32 %i.h, ptr @bdrv_drain_all_count, align 4
  %i.i = tail call ptr @bdrv_next_all_states(ptr noundef null) #14 ; 2 uses
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.j = phi ptr [ %i.k, %.lr.ph ], [ %i.i, %bb.h ] ; 2 uses
  tail call fastcc void @bdrv_do_drained_begin(ptr noundef nonnull %i.j, ptr noundef null, i1 noundef zeroext false)
  %i.k = tail call ptr @bdrv_next_all_states(ptr noundef nonnull %i.j) #14 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.c
  ret void
}

declare zeroext i1 @replay_events_enabled() local_unnamed_addr #1

declare ptr @qemu_get_current_aio_context() local_unnamed_addr #1

declare ptr @qemu_get_aio_context() local_unnamed_addr #1

declare ptr @bdrv_next_all_states(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_drain_all_begin() #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_coroutine() #14
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bdrv_co_yield_to_drain(ptr noundef null, i1 noundef zeroext true, ptr noundef null, i1 noundef zeroext true)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @replay_events_enabled() #14
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @bdrv_drain_all_begin_nopoll()
  %i.c = atomicrmw add ptr @global_aio_wait, i32 1 seq_cst, align 4 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.d = tail call ptr @qemu_get_current_aio_context() #14
  %i.e = tail call ptr @qemu_get_aio_context() #14
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.g = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.g, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_all_begin) #15
  unreachable

._crit_edge:                                      ; preds = %bb.j, %.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 455, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_all_poll) #15
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.j
  tail call void @bdrv_graph_rdlock_main_loop() #14
  %i.h = tail call ptr @bdrv_next_all_states(ptr noundef null) #14 ; 2 uses
  %.not6.i = icmp eq ptr %i.h, null
  br i1 %.not6.i, label %bdrv_drain_all_poll.exit.thread, label %.lr.ph.i

bdrv_drain_all_poll.exit.thread:                  ; preds = %.lr.ph
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  br label %.loopexit12

.lr.ph.i:                                         ; preds = %.lr.ph, %bdrv_drain_poll.exit.i
  %i.i = phi ptr [ %i.z, %bdrv_drain_poll.exit.i ], [ %i.h, %.lr.ph ] ; 3 uses
  %.07.i = phi i1 [ %.0.i.i, %bdrv_drain_poll.exit.i ], [ false, %.lr.ph ]
  %i.j = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_poll) #15
  unreachable

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @assert_bdrv_graph_readable() #14
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16840
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not11.i.i.i, label %bdrv_parent_drained_poll.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bdrv_parent_drained_poll_single.exit.us.i.i.i.a
  %.013.us.i.i.i = phi i1 [ %.1.us.i.i.i, %bdrv_parent_drained_poll_single.exit.us.i.i.i.a ], [ false, %bb.g ] ; 3 uses
  %.01012.us.i.i.i = phi ptr [ %i.n, %bdrv_parent_drained_poll_single.exit.us.i.i.i.a ], [ %i.l, %bb.g ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01012.us.i.i.i, i64 80
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01012.us.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !12, !noundef !13
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bdrv_parent_drained_poll_single.exit.us.i.i.i.a, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.us.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.us.i.i.i, label %bdrv_parent_drained_poll_single.exit.us.i.i.i.a, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call zeroext i1 %i.u(ptr noundef nonnull %.01012.us.i.i.i) #14, !inline_history !30
  %0 = or i1 %.013.us.i.i.i, %i.v
  br label %bdrv_parent_drained_poll_single.exit.us.i.i.i.a

bdrv_parent_drained_poll_single.exit.us.i.i.i.a:  ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %.1.us.i.i.i = phi i1 [ %.013.us.i.i.i, %bb.h ], [ %.013.us.i.i.i, %.lr.ph.i.i.i ], [ %0, %bb.i ] ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.us.i.i.i, label %bdrv_parent_drained_poll.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

bdrv_parent_drained_poll.exit.i.i:                ; preds = %bdrv_parent_drained_poll_single.exit.us.i.i.i.a
  br i1 %.1.us.i.i.i, label %bdrv_drain_poll.exit.i, label %bdrv_parent_drained_poll.exit.thread.i.i

bdrv_parent_drained_poll.exit.thread.i.i:         ; preds = %bdrv_parent_drained_poll.exit.i.i, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16964
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %.not.i.i = icmp ne i32 %i.x, 0
  %i.y = or i1 %.07.i, %.not.i.i
  br label %bdrv_drain_poll.exit.i

bdrv_drain_poll.exit.i:                           ; preds = %bdrv_parent_drained_poll.exit.thread.i.i, %bdrv_parent_drained_poll.exit.i.i
  %.0.i.i = phi i1 [ true, %bdrv_parent_drained_poll.exit.i.i ], [ %i.y, %bdrv_parent_drained_poll.exit.thread.i.i ] ; 2 uses
  %i.z = tail call ptr @bdrv_next_all_states(ptr noundef nonnull %i.i) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bdrv_drain_all_poll.exit, label %.lr.ph.i, !llvm.loop !31

bdrv_drain_all_poll.exit:                         ; preds = %bdrv_drain_poll.exit.i
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  br i1 %.0.i.i, label %bb.j, label %.loopexit12

bb.j:                                             ; preds = %bdrv_drain_all_poll.exit
  %i.aa = tail call ptr @qemu_get_aio_context() #14
  %i.ab = tail call zeroext i1 @aio_poll(ptr noundef %i.aa, i1 noundef zeroext true) #14 ; 0 uses
  %i.ac = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !32

.loopexit12:                                      ; preds = %bdrv_drain_all_poll.exit, %bdrv_drain_all_poll.exit.thread
  %i.ad = atomicrmw sub ptr @global_aio_wait, i32 1 seq_cst, align 4 ; 0 uses
  %i.ae = tail call ptr @bdrv_next_all_states(ptr noundef null) #14 ; 2 uses
  %.not13 = icmp eq ptr %i.ae, null
  br i1 %.not13, label %.loopexit, label %.lr.ph15

.lr.ph15:                                         ; preds = %.loopexit12, %.lr.ph15
  %i.af = phi ptr [ %i.ag, %.lr.ph15 ], [ %i.ae, %.loopexit12 ] ; 2 uses
  tail call fastcc void @bdrv_drain_assert_idle(ptr noundef nonnull %i.af)
  %i.ag = tail call ptr @bdrv_next_all_states(ptr noundef nonnull %i.af) #14 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %.loopexit, label %.lr.ph15, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph15, %.loopexit12, %bb.c, %bb.b
  ret void
}

declare zeroext i1 @qemu_in_coroutine() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bdrv_co_yield_to_drain(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
bb.a:
  %4 = alloca %struct.BdrvCoDrainData, align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = tail call ptr @qemu_coroutine_self() #14
  %i.b = tail call zeroext i1 @qemu_in_coroutine() #14
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_yield_to_drain) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i1 %3 to i8
  %i.d = zext i1 %1 to i8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx, i8 0, i64 5, i1 false)
  store ptr %i.a, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.d, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 %i.c, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16964
  %i.f = atomicrmw add ptr %i.e, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = tail call ptr @qemu_get_aio_context() #14
  call void @replay_bh_schedule_oneshot_event(ptr noundef %i.g, ptr noundef nonnull @bdrv_co_drain_bh_cb, ptr noundef nonnull %4) #14
  call void @qemu_coroutine_yield() #14
  %i.h = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 346, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_yield_to_drain) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

declare zeroext i1 @aio_poll(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bdrv_drain_assert_idle(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 439, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_assert_idle) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16964
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_assert_idle) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16816
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.08 = phi ptr [ %i.h, %.lr.ph ], [ %i.f, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.08, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %.08, align 8
  tail call fastcc void @bdrv_drain_assert_idle(ptr noundef %i.i)
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %.lr.ph, !llvm.loop !34

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %.lr.ph, %bb.e
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_drain_all_end_quiesce(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_all_end_quiesce) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16976 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.e, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__func__.bdrv_drain_all_end_quiesce, ptr noundef nonnull @.str.10) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16680
  %i.f = load i32, ptr %i.e, align 8
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %.lr.ph, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__func__.bdrv_drain_all_end_quiesce, ptr noundef nonnull @.str.11) #15
  unreachable

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  tail call fastcc void @bdrv_do_drained_end(ptr noundef nonnull %0, ptr noundef null)
  %i.g = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_drain_all_end() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 551, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_all_end) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @replay_events_enabled() #14
  br i1 %i.b, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.c = tail call ptr @bdrv_next_all_states(ptr noundef null) #14 ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
end_hunk_1
begin_hunk_2_@bdrv_co_truncate:bb.a
  store ptr %i.cb, ptr %.pre15.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.cd = load ptr, ptr %6, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.ce, ptr noundef nonnull @.str.1, i32 noundef 591) #14
  call void @qemu_co_queue_restart_all(ptr noundef nonnull %.sroa.11.0..sroa_idx.i) #14
  %i.cf = atomicrmw sub ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  call void @aio_wait_kick() #14
  br label %bb.af

bb.af:                                            ; preds = %bdrv_check_qiov_request.exit.thread, %tracked_request_end.exit, %bb.h, %bb.f, %bb.d, %bb.b
  %.082 = phi i32 [ -22, %bb.d ], [ -123, %bb.b ], [ %i.h, %bb.f ], [ -13, %bb.h ], [ %.2, %tracked_request_end.exit ], [ -5, %bdrv_check_qiov_request.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.082
}

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @bdrv_filter_child(ptr noundef) local_unnamed_addr #1

declare ptr @bdrv_cow_child(ptr noundef) local_unnamed_addr #1

declare i32 @bdrv_co_refresh_total_sectors(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_cancel_in_flight(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3742, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_cancel_in_flight) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #14
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.e(ptr noundef nonnull %0) #14
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_preadv_snapshot(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  tail call void @assert_bdrv_graph_readable() #14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 584 ; 2 uses
  %i.e = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 667, ptr null)
  %i.f = load ptr, ptr %i.e, align 8
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16964 ; 2 uses
  %i.h = atomicrmw add ptr %i.g, i32 1 seq_cst, align 4 ; 0 uses
  %i.i = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 667, ptr null)
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #14
  %i.l = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @aio_wait_kick() #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -123, %bb.a ], [ -95, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_snapshot_block_status(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @assert_bdrv_graph_readable() #14
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 592 ; 2 uses
  %i.d = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 671, ptr null)
  %i.e = load ptr, ptr %i.d, align 8
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16964 ; 2 uses
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 671, ptr null)
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #14
  %i.k = atomicrmw sub ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @aio_wait_kick() #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -123, %bb.a ], [ -95, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_pdiscard_snapshot(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @assert_bdrv_graph_readable() #14
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.d = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 675, ptr null)
  %i.e = load ptr, ptr %i.d, align 8
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16964 ; 2 uses
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 675, ptr null)
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #14
  %i.k = atomicrmw sub ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @aio_wait_kick() #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -123, %bb.a ], [ -95, %bb.b ]
  ret i32 %.0
}

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @bdrv_refresh_limits_abort(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16464
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false)
  ret void
}

declare void @g_free(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #11

declare ptr @bdrv_get_aio_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @bdrv_drain_poll_top_level(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 282, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_poll_top_level) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #14
  %i.b = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_poll) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @assert_bdrv_graph_readable() #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16840
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not11.i.i = icmp eq ptr %i.d, null
  br i1 %.not11.i.i, label %bdrv_parent_drained_poll.exit.thread.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %bdrv_parent_drained_poll_single.exit.i.i.a
  %.013.i.i = phi i1 [ %.1.i.i, %bdrv_parent_drained_poll_single.exit.i.i.a ], [ false, %bb.e ] ; 3 uses
  %.01012.i.i = phi ptr [ %i.f, %bdrv_parent_drained_poll_single.exit.i.i.a ], [ %i.d, %bb.e ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %.01012.i.i, %1
  br i1 %i.g, label %bdrv_parent_drained_poll_single.exit.i.i.a, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bdrv_parent_drained_poll_single.exit.i.i.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call zeroext i1 %i.k(ptr noundef nonnull %.01012.i.i) #14, !inline_history !52
  %2 = or i1 %.013.i.i, %i.l
  br label %bdrv_parent_drained_poll_single.exit.i.i.a

bdrv_parent_drained_poll_single.exit.i.i.a:       ; preds = %bb.g, %bb.f, %.lr.ph.split.i.i
  %.1.i.i = phi i1 [ %.013.i.i, %.lr.ph.split.i.i ], [ %2, %bb.g ], [ %.013.i.i, %bb.f ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bdrv_parent_drained_poll.exit.i, label %.lr.ph.split.i.i, !llvm.loop !0

bdrv_parent_drained_poll.exit.i:                  ; preds = %bdrv_parent_drained_poll_single.exit.i.i.a
  br i1 %.1.i.i, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bdrv_parent_drained_poll.exit.thread.i

bdrv_parent_drained_poll.exit.thread.i:           ; preds = %bdrv_parent_drained_poll.exit.i, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16964
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %.not.i = icmp ne i32 %i.n, 0
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bdrv_parent_drained_poll.exit.i, %bdrv_parent_drained_poll.exit.thread.i
  %.0.i = phi i1 [ true, %bdrv_parent_drained_poll.exit.i ], [ %.not.i, %bdrv_parent_drained_poll.exit.thread.i ]
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  ret i1 %.0.i
}

declare void @replay_bh_schedule_oneshot_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bdrv_co_drain_bh_cb(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16964
  %i.e = atomicrmw sub ptr %i.d, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @aio_wait_kick() #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.g = load i8, ptr %i.f, align 1, !range !12, !noundef !13
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.l = load i8, ptr %i.k, align 2, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  tail call fastcc void @bdrv_do_drained_begin(ptr noundef nonnull %i.c, ptr noundef %i.j, i1 noundef zeroext %i.m)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.o = load i8, ptr %i.n, align 2, !range !12, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 303, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_drain_bh_cb) #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call fastcc void @bdrv_do_drained_end(ptr noundef nonnull %i.c, ptr noundef %i.r)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.t = load i8, ptr %i.s, align 1, !range !12, !noundef !13
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 307, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_drain_bh_cb) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @bdrv_drain_all_begin()
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.v, align 8
  tail call void @aio_co_wake(ptr noundef %i.a) #14
  ret void
}

declare void @aio_co_wake(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @bql_locked() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @bdrv_find_conflicting_request(ptr nofree noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 17032
  %.019 = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not20 = icmp eq ptr %.019, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.021 = phi ptr [ %.019, %.lr.ph ], [ %.0, %bb.i ] ; 8 uses
  %i.f = icmp eq ptr %.021, %0
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.021, i64 28
  %i.h = load i8, ptr %i.g, align 4, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.c, align 4, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %i.d, align 8              ; 3 uses
  %i.m = load i64, ptr %i.e, align 8              ; 2 uses
  %i.n = tail call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.l, i64 noundef %i.m, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, %i.p
  %.not.i = icmp slt i64 %i.l, %i.s
  %i.t = add i64 %i.m, %i.l
  %.not9.i = icmp slt i64 %i.p, %i.t
  %.0.i = and i1 %.not9.i, %.not.i
  br i1 %.0.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @qemu_coroutine_self() #14
  %i.v = getelementptr inbounds nuw i8, ptr %.021, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %.not16 = icmp eq ptr %i.u, %i.w
  br i1 %.not16, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 664, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_find_conflicting_request) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.021, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %.not17 = icmp eq ptr %i.y, null
  br i1 %.not17, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.021, i64 48
  %.0 = load ptr, ptr %i.z, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.h, %bb.i, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %.021, %bb.h ]
  ret ptr %.0.lcssa
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @bdrv_init_padding(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16464
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  %i.e = tail call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.f = icmp sgt i32 %i.c, -1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 1483, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_init_padding) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %4, i8 noundef 0, i64 noundef 144, i1 noundef false) #14
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = and i64 %i.g, %1                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add i64 %2, %1
  %i.k = and i64 %i.g, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  %i.m = sub i64 %i.d, %i.k
  %spec.select = select i1 %.not, i64 0, i64 %i.m ; 3 uses
  store i64 %spec.select, ptr %i.l, align 8
  %.not46 = icmp eq i64 %i.h, 0                   ; 2 uses
  %.not47 = icmp eq i64 %spec.select, 0           ; 2 uses
  %or.cond53 = select i1 %.not46, i1 %.not47, i1 false ; 2 uses
  br i1 %or.cond53, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %2, 0
  br i1 %.not48, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 1498, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_init_padding) #15
  unreachable

end_hunk_2
