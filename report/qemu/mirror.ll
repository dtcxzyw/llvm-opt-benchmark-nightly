Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mirror?download=true
inline.NumInlined: 92
inline.NumDeleted: 30
begin_hunk_0_@mirror_wait_on_conflicts:bb.a
  br i1 %i.ai, label %.lr.ph49.split.us, label %.critedge, !llvm.loop !17

.lr.ph49.split:                                   ; preds = %.lr.ph49, %.loopexit
  %i.aj = load i32, ptr %i.h, align 8
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph49.split
  %.03645 = load ptr, ptr %i.m, align 8           ; 2 uses
  %.not46 = icmp eq ptr %.03645, null
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.03647 = phi ptr [ %.036, %bb.i ], [ %.03645, %bb.e ] ; 7 uses
  %i.al = icmp eq ptr %.03647, %0
  br i1 %i.al, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.03647, i64 48
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03647, i64 56
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ar = add i64 %i.an, -1
  %i.as = add i64 %i.ar, %i.ap
  %i.at = add i64 %i.as, %i.aq
  %i.au = udiv i64 %i.at, %i.aq
  %i.av = sdiv i64 %i.an, %i.aq
  %i.aw = add i64 %i.au, -1
  %i.ax = icmp uge i64 %i.aw, %i.c
  %i.ay = icmp uge i64 %i.n, %i.av
  %.not9.i = and i1 %i.ay, %i.ax
  br i1 %.not9.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.03647, i64 112
  %i.ba = load ptr, ptr %i.az, align 8
  %.not39 = icmp eq ptr %i.ba, null
  br i1 %.not39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %.03647, ptr %i.o, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.03647, i64 88
  tail call void @qemu_co_queue_wait_impl(ptr noundef nonnull %i.bb, ptr noundef null, i32 noundef 0) #11
  store ptr null, ptr %i.o, align 8
  br label %.loopexit

bb.i:                                             ; preds = %bb.f, %.lr.ph, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.03647, i64 120
  %.036 = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not = icmp eq ptr %.036, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !16

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.h
  %i.bd = load ptr, ptr %i.i, align 8
  %i.be = tail call i64 @find_next_bit(ptr noundef %i.bd, i64 noundef %i.g, i64 noundef %i.c) #11
  %i.bf = icmp ult i64 %i.be, %i.g
  br i1 %i.bf, label %.lr.ph49.split, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %.lr.ph49.split, %.loopexit, %.lr.ph49.split.us, %.loopexit.us, %bb.a
  ret void
}

declare void @bitmap_set(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @find_next_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @qemu_co_queue_wait_impl(ptr noundef, ptr noundef, i32 noundef) #2

declare zeroext i1 @bdrv_dirty_bitmap_get(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bdrv_reset_dirty_bitmap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @job_progress_increase_remaining(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bitmap_clear(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @blk_co_pwritev_part(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @blk_co_pwrite_zeroes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @blk_co_pdiscard(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare void @job_progress_update(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @block_job_error_action(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @bdrv_get_dirty_count(ptr noundef) local_unnamed_addr #2

declare void @qemu_co_queue_restart_all(ptr noundef) #2

declare i32 @bdrv_co_flush(ptr noundef) #2

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @bdrv_cow_child(ptr noundef) local_unnamed_addr #2

declare ptr @bdrv_filter_or_cow_child(ptr noundef) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @mirror_run(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.BlockDriverInfo, align 8    ; 5 uses
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @blk_bs(ptr noundef %i.g) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void @bdrv_graph_co_rdlock() #11
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = tail call ptr @bdrv_filter_child(ptr noundef %i.i) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bdrv_filter_bs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8
  br label %bdrv_filter_bs.exit

bdrv_filter_bs.exit:                              ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 7 uses
  store i16 0, ptr %i.a, align 2, !annotation !14
  tail call void @bdrv_graph_co_rdunlock() #11
  %i.m = tail call zeroext i1 @job_is_cancelled(ptr noundef nonnull %0) #11
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bdrv_filter_bs.exit
  tail call void @bdrv_graph_co_rdlock() #11
  %i.n = tail call i64 @bdrv_co_getlength(ptr noundef %i.l) #11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  store i64 %i.n, ptr %i.o, align 8
  tail call void @bdrv_graph_co_rdunlock() #11
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = trunc i64 %i.p to i32
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = tail call i64 @blk_co_getlength(ptr noundef %i.s) #11 ; 5 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = trunc i64 %i.t to i32
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = tail call ptr @blk_bs(ptr noundef %i.y) #11
  %i.aa = icmp eq ptr %i.x, %i.z
  %i.ab = load i64, ptr %i.o, align 8             ; 4 uses
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp sgt i64 %i.ab, %i.t
  br i1 %i.ac, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = tail call i32 @blk_co_truncate(ptr noundef %i.ad, i64 noundef %i.ab, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, ptr noundef null) #11 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.critedge, label %thread-pre-split

bb.j:                                             ; preds = %bb.g
  %.not189 = icmp eq i64 %i.ab, %i.t
  br i1 %.not189, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 1067, ptr noundef nonnull @__func__.mirror_run, ptr noundef nonnull @.str.20) #11
  br label %.critedge

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %i.o, align 8
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %bb.j, %bb.h
  %i.ag = phi i64 [ %.pr, %thread-pre-split ], [ %i.t, %bb.j ], [ %i.ab, %bb.h ] ; 2 uses
  %.0172 = phi i32 [ %i.ae, %thread-pre-split ], [ 0, %bb.j ], [ 0, %bb.h ] ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bitmap_new.exit

bb.m:                                             ; preds = %bb.l
  tail call void @job_transition_to_ready(ptr noundef nonnull %0) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 600
  store atomic i8 1, ptr %i.ai monotonic, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 601
  %i.aj = tail call zeroext i1 @job_cancel_requested(ptr noundef nonnull %0) #11
  br i1 %i.aj, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o
  %i.ak = load i8, ptr %3, align 1, !range !12, !noundef !13
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @job_yield(ptr noundef nonnull %0) #11
  %i.am = tail call zeroext i1 @job_cancel_requested(ptr noundef nonnull %0) #11
  br i1 %i.am, label %.critedge, label %bb.n, !llvm.loop !18

bitmap_new.exit:                                  ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = add i64 %i.ag, -1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = sdiv i64 %i.aq, %i.ao
  %i.as = add i64 %i.ar, 63
  %i.at = lshr i64 %i.as, 6                       ; 2 uses
  %i.au = tail call noalias ptr @g_malloc0_n(i64 noundef %i.at, i64 noundef 8) #14
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.au, ptr %i.av, align 8
  call void @bdrv_get_backing_filename(ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 2) #11
  call void @bdrv_graph_co_rdlock() #11
  %i.aw = call i32 @bdrv_co_get_info(ptr noundef %i.h, ptr noundef nonnull %2) #11
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = load i32, ptr %2, align 8               ; 2 uses
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond = select i1 %i.ax, i1 %i.az, i1 false
  %spec.select = select i1 %or.cond, i32 %i.ay, i32 512
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  store i32 %spec.select, ptr %i.ba, align 8
  %i.bb = load i8, ptr %i.a, align 2
  %.not190 = icmp eq i8 %i.bb, 0
  br i1 %.not190, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bitmap_new.exit
  %i.bc = call ptr @bdrv_backing_chain_next(ptr noundef %i.h) #11
  %.not191 = icmp eq ptr %i.bc, null
  br i1 %.not191, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.an, align 8
  %i.be = load i32, ptr %i.ba, align 8
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i64 %i.bd, %i.bf
  br i1 %i.bg, label %bitmap_new.exit201, label %bb.r

bitmap_new.exit201:                               ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bf)
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = call noalias ptr @g_malloc0_n(i64 noundef %i.at, i64 noundef 8) #14
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr %i.bk, ptr %i.bl, align 8
  br label %bb.r

bb.r:                                             ; preds = %bitmap_new.exit201, %bb.q, %bb.p, %bitmap_new.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 16544
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 16544
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 756
  store i32 %i.bq, ptr %i.br, align 4
  call void @bdrv_graph_co_rdunlock() #11
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = call ptr @qemu_try_blockalign(ptr noundef %i.l, i64 noundef %i.bt) #11 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.bu, ptr %i.bv, align 8
  %i.bw = icmp eq ptr %i.bu, null
  br i1 %i.bw, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load i64, ptr %i.an, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 679, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_free_init) #12
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cb = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store ptr null, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8
  %.not19.i = icmp eq i64 %i.cb, 0
  br i1 %.not19.i, label %mirror_free_init.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.ce = shl i64 %i.bx, 32
  %i.cf = ashr exact i64 %i.ce, 32                ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i
  %.021.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.ck, %bb.v ] ; 4 uses
  %.01820.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %i.cj, %bb.v ]
  store ptr null, ptr %.021.i, align 8
  %i.cg = load ptr, ptr %i.cd, align 8
  store ptr %.021.i, ptr %i.cg, align 8
  store ptr %.021.i, ptr %i.cd, align 8
  %i.ch = load i32, ptr %i.by, align 8
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.by, align 8
  %i.cj = sub i64 %.01820.i, %i.cf                ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.021.i, i64 %i.cf
  %.not.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i, label %mirror_free_init.exit, label %bb.v, !llvm.loop !19

mirror_free_init.exit:                            ; preds = %bb.v, %bb.u
  %i.cl = call i64 @qemu_clock_get_ns(i32 noundef 0) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.co = load i32, ptr %i.cn, align 8
  %.not192 = icmp eq i32 %i.co, 2
  br i1 %.not192, label %bb.y, label %bb.w

bb.w:                                             ; preds = %mirror_free_init.exit
  %i.cp = call i32 @mirror_dirty_init(ptr noundef nonnull %0) ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = call zeroext i1 @job_is_cancelled(ptr noundef nonnull %0) #11
  br i1 %i.cr, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x, %mirror_free_init.exit
  %.1173 = phi i32 [ 0, %bb.x ], [ %.0172, %mirror_free_init.exit ]
  store ptr %0, ptr %i.e, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not193 = icmp eq ptr %i.ct, null
  br i1 %.not193, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1127, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_run) #12
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call ptr @bdrv_dirty_iter_new(ptr noundef %i.cv) #11
  store ptr %i.cw, ptr %i.cs, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 4 uses
  %i.cy = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 601
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 728
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %mirror_flush.exit.thread
  call void @job_pause_point(ptr noundef nonnull %0) #11
  %i.dl = call zeroext i1 @job_is_cancelled(ptr noundef nonnull %0) #11
  br i1 %i.dl, label %.critedge, label %.split.us

.split.us:                                        ; preds = %bb.ab
  %i.dm = load ptr, ptr %i.cu, align 8
  %i.dn = call i64 @bdrv_get_dirty_count(ptr noundef %i.dm) #11 ; 5 uses
  %i.do = load i64, ptr %i.da, align 8
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = load i64, ptr %i.db, align 8
  %i.dr = add i64 %i.dp, %i.dq
  call void @job_progress_set_remaining(ptr noundef nonnull %0, i64 noundef %i.dr) #11
  %i.ds = call i64 @qemu_clock_get_ns(i32 noundef 0) #11
  %i.dt = load i64, ptr %i.cm, align 8
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.dv(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.45, i32 noundef 56) #11, !inline_history !0
  %i.dw = load i32, ptr %i.dc, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.45, i32 noundef 56) #11
  %i.dx = icmp ult i64 %i.du, 100000000
  %i.dy = icmp eq i32 %i.dw, 0
  %or.cond4 = select i1 %i.dx, i1 %i.dy, i1 false
  %.pre = load i32, ptr %i.dd, align 8            ; 4 uses
  br i1 %or.cond4, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %.split.us
  %i.dz = icmp ugt i32 %.pre, 15
  %.pre256 = load i32, ptr %i.by, align 8         ; 2 uses
  %i.ea = icmp eq i32 %.pre256, 0
  %or.cond279 = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond279, label %bb.ae, label %bb.ad

end_hunk_0
