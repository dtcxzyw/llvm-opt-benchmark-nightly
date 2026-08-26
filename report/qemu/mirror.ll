Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mirror?download=true
inline.NumInlined: 92
inline.NumDeleted: 30
begin_hunk_0_@mirror_wait_for_free_in_flight_slot
define internal void @mirror_wait_for_free_in_flight_slot(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %.08 = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9 = icmp eq ptr %.08, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.010 = phi ptr [ %.0, %bb.e ], [ %.08, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.010, i64 80
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 82
  %i.f = load i8, ptr %i.e, align 2, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.010, i64 81
  %i.i = load i8, ptr %i.h, align 1, !range !10, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.010, i64 88
  tail call void @qemu_co_queue_wait_impl(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 0) #11
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 120
  %.0 = load ptr, ptr %i.l, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.e, %bb.a
  tail call void @abort() #12
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @mirror_iteration(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @blk_bs(ptr noundef %i.f) #11
  %i.h = tail call zeroext i1 @bdrv_can_write_zeroes_with_unmap(ptr noundef %i.g) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 4
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1048576)
  tail call void @bdrv_graph_co_rdlock() #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16824
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @bdrv_graph_co_rdunlock() #11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @bdrv_dirty_bitmap_lock(ptr noundef %i.s) #11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 @bdrv_dirty_iter_next(ptr noundef %i.u) #11 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.t, align 8
  tail call void @bdrv_set_dirty_iter(ptr noundef %i.x, i64 noundef 0) #11
  %i.y = load ptr, ptr %i.t, align 8
  %i.z = tail call i64 @bdrv_dirty_iter_next(ptr noundef %i.y) #11 ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = tail call i64 @bdrv_get_dirty_count(ptr noundef %i.aa) #11
  %i.ac = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %trace_mirror_restart_iter.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.ad = load i16, ptr @_TRACE_MIRROR_RESTART_ITER_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.ad, 0
  br i1 %.not1.i, label %trace_mirror_restart_iter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 32768
  %.not2.i = icmp eq i32 %i.af, 0
  br i1 %.not2.i, label %trace_mirror_restart_iter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, ptr noundef nonnull %0, i64 noundef %i.ab) #11
  br label %trace_mirror_restart_iter.exit

trace_mirror_restart_iter.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ag = icmp sgt i64 %i.z, -1
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %trace_mirror_restart_iter.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_iteration) #12
  unreachable

bb.g:                                             ; preds = %trace_mirror_restart_iter.exit, %bb.a
  %.0150 = phi i64 [ %i.z, %trace_mirror_restart_iter.exit ], [ %i.v, %bb.a ] ; 6 uses
  %i.ah = load ptr, ptr %i.r, align 8
  tail call void @bdrv_dirty_bitmap_unlock(ptr noundef %i.ah) #11
  tail call void @mirror_wait_on_conflicts(ptr noundef null, ptr noundef nonnull %0, i64 noundef %.0150, i64 noundef 1)
  tail call void @job_pause_point(ptr noundef nonnull %0) #11
  %i.ai = load ptr, ptr %i.r, align 8
  tail call void @bdrv_dirty_bitmap_lock(ptr noundef %i.ai) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 10 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 4 uses
  %i.al = load i64, ptr %i.i, align 8
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 704
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %i.ap = phi i64 [ %i.ak, %.lr.ph ], [ %i.bo, %bb.o ]
  %i.aq = phi i64 [ %i.ak, %.lr.ph ], [ %i.bn, %bb.o ]
  %.0151197 = phi i32 [ 1, %.lr.ph ], [ %i.bl, %bb.o ] ; 4 uses
  %i.ar = add i64 %i.ap, %.0150                   ; 6 uses
  %i.as = sdiv i64 %i.ar, %i.aq                   ; 2 uses
  %i.at = load i64, ptr %i.an, align 8
  %.not = icmp slt i64 %i.ar, %i.at
  br i1 %.not, label %bb.i, label %.thread.loopexit

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.r, align 8
  %i.av = tail call zeroext i1 @bdrv_dirty_bitmap_get_locked(ptr noundef %i.au, i64 noundef %i.ar) #11
  br i1 %i.av, label %bb.j, label %.thread.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.ao, align 8
  %i.ax = lshr i64 %i.as, 6
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.as, 63
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %i.az, %i.bb
  %.not172 = icmp eq i64 %i.bc, 0
  br i1 %.not172, label %bb.k, label %.thread.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.t, align 8
  %i.be = tail call i64 @bdrv_dirty_iter_next(ptr noundef %i.bd) #11 ; 3 uses
  %i.bf = icmp sgt i64 %i.be, %i.ar
  %i.bg = icmp slt i64 %i.be, 0
  %or.cond = or i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.t, align 8
  tail call void @bdrv_set_dirty_iter(ptr noundef %i.bh, i64 noundef %i.ar) #11
  %i.bi = load ptr, ptr %i.t, align 8
  %i.bj = tail call i64 @bdrv_dirty_iter_next(ptr noundef %i.bi) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0154 = phi i64 [ %i.bj, %bb.l ], [ %i.be, %bb.k ]
  %i.bk = icmp eq i64 %.0154, %i.ar
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 577, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_iteration) #12
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bl = add i32 %.0151197, 1                    ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.bo = mul i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = load i64, ptr %i.i, align 8
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.h, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.o
  %.0151.lcssa.ph = phi i32 [ %i.bl, %bb.o ], [ %.0151197, %bb.h ], [ %.0151197, %bb.i ], [ %.0151197, %bb.j ]
  %.pre = load i64, ptr %i.aj, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.g
  %i.br = phi i64 [ %i.ak, %bb.g ], [ %.pre, %.thread.loopexit ]
  %.0151.lcssa = phi i32 [ 1, %bb.g ], [ %.0151.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %i.bs = load ptr, ptr %i.r, align 8
  %i.bt = sext i32 %.0151.lcssa to i64            ; 3 uses
  %i.bu = mul i64 %i.br, %i.bt
  tail call void @bdrv_reset_dirty_bitmap_locked(ptr noundef %i.bs, i64 noundef %.0150, i64 noundef %i.bu) #11
  %i.bv = load ptr, ptr %i.r, align 8
  tail call void @bdrv_dirty_bitmap_unlock(ptr noundef %i.bv) #11
  %i.bw = tail call noalias dereferenceable_or_null(136) ptr @g_malloc(i64 noundef 136) #13 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i8 0, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bw, i64 81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.2.0..sroa_idx.a, i8 0, i64 55, i1 false)
  %1 = load i64, ptr %i.aj, align 8
  %2 = mul i64 %1, %i.bt
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i64 %.0150, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.422.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i64 %2, ptr %.sroa.422.0..sroa_idx.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88 ; 2 uses
  tail call void @qemu_co_queue_init(ptr noundef nonnull %i.bx) #11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 120 ; 5 uses
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8
  store ptr %i.bw, ptr %i.ca, align 8
  store ptr %i.by, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load i64, ptr %i.aj, align 8
  %i.cf = sdiv i64 %.0150, %i.ce
  tail call void @bitmap_set(ptr noundef %i.cd, i64 noundef %i.cf, i64 noundef %i.bt) #11
  %i.cg = icmp sgt i32 %.0151.lcssa, 0
  br i1 %i.cg, label %.lr.ph207, label %.critedge

.lr.ph207:                                        ; preds = %.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %sext = shl i64 %i.l, 32
  %i.ci = ashr exact i64 %sext, 32                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 744
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph207, %bb.am
  %.1206 = phi i64 [ %.0150, %.lr.ph207 ], [ %i.ev, %bb.am ] ; 9 uses
  %.3205 = phi i32 [ %.0151.lcssa, %.lr.ph207 ], [ %i.fb, %bb.am ] ; 2 uses
  %i.cm = load i64, ptr %i.ch, align 8
  %i.cn = icmp slt i64 %.1206, %i.cm
  br i1 %i.cn, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1
  %i.co = load i64, ptr %i.aj, align 8
  %i.cp = srem i64 %.1206, %i.co
  %.not173 = icmp eq i64 %i.cp, 0
  br i1 %.not173, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 612, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_iteration) #12
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @bdrv_graph_co_rdlock() #11
  %i.cq = zext nneg i32 %.3205 to i64             ; 2 uses
  %i.cr = load i64, ptr %i.aj, align 8
  %i.cs = mul i64 %i.cr, %i.cq
  %i.ct = call i32 @bdrv_co_block_status_above(ptr noundef %i.q, ptr noundef null, i64 noundef %.1206, i64 noundef %i.cs, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #11 ; 4 uses
  call void @bdrv_graph_co_rdunlock() #11
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = load i64, ptr %i.aj, align 8
  %i.cw = mul i64 %i.cv, %i.cq
  %i.cx = call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.ci)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cy = and i32 %i.ct, 1
  %.not175 = icmp eq i32 %i.cy, 0
  %.pre211 = load i64, ptr %i.a, align 8          ; 2 uses
  br i1 %.not175, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = call i64 @llvm.smin.i64(i64 %.pre211, i64 %i.ci)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.da = phi i64 [ %.pre211, %bb.u ], [ %i.cz, %bb.v ], [ %i.cx, %bb.t ] ; 2 uses
  %i.db = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.dc = srem i64 %i.da, %i.db
  %i.dd = sub i64 %i.da, %i.dc                    ; 2 uses
  store i64 %i.dd, ptr %i.a, align 8
  %i.de = icmp slt i64 %i.dd, %i.db
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %i.db, ptr %i.a, align 8
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.df = and i32 %i.ct, -2147483647
  %or.cond182 = icmp eq i32 %i.df, 0
  br i1 %or.cond182, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 0, ptr %i.d, align 8, !annotation !12
  call void @bdrv_graph_co_rdlock() #11
  %i.dg = load ptr, ptr %i.e, align 8
  %i.dh = call ptr @blk_bs(ptr noundef %i.dg) #11
  %i.di = load i64, ptr %i.a, align 8
  call void @bdrv_round_to_subclusters(ptr noundef %i.dh, i64 noundef %.1206, i64 noundef %i.di, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  call void @bdrv_graph_co_rdunlock() #11
  %i.dj = load i64, ptr %i.c, align 8
  %i.dk = icmp eq i64 %i.dj, %.1206
  br i1 %i.dk, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dl = load i64, ptr %i.d, align 8
  %i.dm = load i64, ptr %i.a, align 8
  %i.dn = icmp eq i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.do = and i32 %i.ct, 2
  %.not179 = icmp eq i32 %i.do, 0
  %i.dp = select i1 %.not179, i32 2, i32 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.0158 = phi i32 [ %i.dp, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac, %bb.x
  %.1159 = phi i32 [ 0, %bb.x ], [ 0, %bb.y ], [ %.0158, %bb.ac ] ; 2 uses
  %i.dq = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.dr = icmp ugt i32 %i.dq, 15
  br i1 %i.dr, label %.lr.ph204, label %._crit_edge

.lr.ph204:                                        ; preds = %bb.ad, %mirror_wait_for_free_in_flight_slot.exit
  %i.ds = phi i32 [ %i.ei, %mirror_wait_for_free_in_flight_slot.exit ], [ %i.dq, %bb.ad ]
  %i.dt = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i184 = icmp eq i32 %i.dt, 0
  br i1 %.not.i184, label %trace_mirror_yield_in_flight.exit, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %.lr.ph204
  %i.du = load i16, ptr @_TRACE_MIRROR_YIELD_IN_FLIGHT_DSTATE, align 2
  %.not2.i185 = icmp eq i16 %i.du, 0
  br i1 %.not2.i185, label %trace_mirror_yield_in_flight.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i32, ptr @qemu_loglevel, align 4
  %i.dw = and i32 %i.dv, 32768
  %.not3.i = icmp eq i32 %i.dw, 0
  br i1 %.not3.i, label %trace_mirror_yield_in_flight.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef nonnull %0, i64 noundef %.1206, i32 noundef %i.ds) #11
  br label %trace_mirror_yield_in_flight.exit

trace_mirror_yield_in_flight.exit:                ; preds = %.lr.ph204, %bb.ae, %bb.af, %bb.ag
  %.08.i = load ptr, ptr %i.ck, align 8           ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %trace_mirror_yield_in_flight.exit, %bb.aj
  %.010.i = phi ptr [ %.0.i, %bb.aj ], [ %.08.i, %trace_mirror_yield_in_flight.exit ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.010.i, i64 80
  %i.dy = load i8, ptr %i.dx, align 8, !range !10, !noundef !11
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.010.i, i64 82
  %i.eb = load i8, ptr %i.ea, align 2, !range !10, !noundef !11
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i, i64 81
  %i.ee = load i8, ptr %i.ed, align 1, !range !10, !noundef !11
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.aj, label %mirror_wait_for_free_in_flight_slot.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i, i64 120
  %.0.i = load ptr, ptr %i.eg, align 8            ; 2 uses
  %.not.i186 = icmp eq ptr %.0.i, null
  br i1 %.not.i186, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %trace_mirror_yield_in_flight.exit, %bb.aj
  call void @abort() #12
  unreachable

mirror_wait_for_free_in_flight_slot.exit:         ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i, i64 88
  call void @qemu_co_queue_wait_impl(ptr noundef nonnull %i.eh, ptr noundef null, i32 noundef 0) #11
  %i.ei = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, 15
  br i1 %i.ej, label %.lr.ph204, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %mirror_wait_for_free_in_flight_slot.exit, %bb.ad
  %i.ek = load i32, ptr %i.cl, align 8
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %.thread189, label %bb.ak

.thread189:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
end_hunk_0
begin_hunk_1_@mirror_iteration:bb.a
  %i.es = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = icmp ne i32 %.1159, 0
  %or.cond3 = select i1 %i.eu, i1 %i.h, i1 false
  %or.cond183 = select i1 %i.et, i1 true, i1 %or.cond3
  %.0160 = select i1 %or.cond183, i64 0, i64 %i.er
  %i.ev = add i64 %.1206, %i.er
  %i.ew = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.ex = add nsw i64 %i.er, -1
  %i.ey = add i64 %i.ex, %i.ew
  %i.ez = sdiv i64 %i.ey, %i.ew
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = sub i32 %.3205, %i.fa                   ; 2 uses
  call void @block_job_ratelimit_processed_bytes(ptr noundef nonnull %0, i64 noundef %.0160) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.p, label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.am, %.thread, %.thread189
  %i.fd = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not181 = icmp eq ptr %i.fd, null
  %i.fe = load ptr, ptr %i.cb, align 8            ; 3 uses
  br i1 %.not181, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 128
  store ptr %i.fe, ptr %i.ff, align 8
  %.pre212 = load ptr, ptr %i.by, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %.critedge
  store ptr %i.fe, ptr %i.bz, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fg = phi ptr [ null, %bb.ao ], [ %.pre212, %bb.an ]
  store ptr %i.fg, ptr %i.fe, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  call void @qemu_co_queue_restart_all(ptr noundef nonnull %i.bx) #11
  call void @g_free(ptr noundef nonnull %i.bw) #11
  ret void
}

declare zeroext i1 @job_is_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @mirror_flush(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @blk_co_flush(ptr noundef %i.b) #11 ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = sub i32 0, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600
  store atomic i8 0, ptr %i.f monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @block_job_error_action(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef 0, i32 noundef range(i32 1, -2147483647) %i.e) #11
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i32 %i.c, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.c
}

declare void @job_sleep_ns(ptr noundef, i64 noundef) #2

declare void @block_job_ratelimit_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @mirror_wait_for_all_io(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 728
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %mirror_wait_for_free_in_flight_slot.exit
  %.08.i = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.010.i = phi ptr [ %.0.i, %bb.e ], [ %.08.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.010.i, i64 80
  %i.e = load i8, ptr %i.d, align 8, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 82
  %i.h = load i8, ptr %i.g, align 2, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 81
  %i.k = load i8, ptr %i.j, align 1, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %mirror_wait_for_free_in_flight_slot.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 120
  %.0.i = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %bb.b, %bb.e
  tail call void @abort() #12
  unreachable

mirror_wait_for_free_in_flight_slot.exit:         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 88
  tail call void @qemu_co_queue_wait_impl(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 0) #11
  %i.o = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %mirror_wait_for_free_in_flight_slot.exit, %bb.a
  ret void
}

declare void @bdrv_dirty_iter_free(ptr noundef) local_unnamed_addr #2

declare ptr @bdrv_filter_child(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bdrv_can_write_zeroes_with_unmap(ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_co_is_all_zeroes(ptr noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @mirror_throttle(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @qemu_clock_get_ns(i32 noundef 0) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sub i64 %i.a, %i.c
  %i.e = icmp ugt i64 %i.d, 100000000
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %i.b, align 8
  tail call void @job_sleep_ns(ptr noundef nonnull %0, i64 noundef 0) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @job_pause_point(ptr noundef nonnull %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @mirror_perform(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 3) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = srem i64 %1, %i.c
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 469, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_perform) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %2 to i64                       ; 4 uses
  %i.g = srem i64 %i.f, %i.c
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %1, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 471, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_perform) #12
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.m = tail call noalias dereferenceable_or_null(136) ptr @g_malloc(i64 noundef 136) #13 ; 16 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, i8 0, i64 40, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 83
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %.sroa.2.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx, i8 0, i64 21, i1 false)
  store ptr %0, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.m, i64 81
  store i8 0, ptr %.sroa.11.0..sroa_idx.a, align 1
  %.sroa.12.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.m, i64 82
  store i8 0, ptr %.sroa.12.0..sroa_idx.a, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @qemu_co_queue_init(ptr noundef nonnull %.sroa.11.0..sroa_idx) #11
  switch i32 %3, label %default.unreachable60 [
    i32 0, label %bb.g
    i32 1, label %bb.i
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not56 = icmp eq ptr %i.o, null
  br i1 %.not56, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.i, label %.sink.split

default.unreachable60:                            ; preds = %bb.f
  unreachable

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.o, %bb.g ], [ %i.q, %bb.h ]
  %mirror_co_discard.sink.ph = phi ptr [ @mirror_co_read, %bb.g ], [ @mirror_co_discard, %bb.h ]
  %i.r = load i64, ptr %i.b, align 8              ; 3 uses
  %i.s = sdiv i64 %1, %i.r
  %i.t = add nsw i64 %i.f, -1
  %i.u = add i64 %i.t, %i.r
  %i.v = sdiv i64 %i.u, %i.r
  call void @bitmap_clear(ptr noundef nonnull %.sink, i64 noundef %i.s, i64 noundef %i.v) #11
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %bb.f, %bb.g
  %mirror_co_discard.sink = phi ptr [ @mirror_co_zero, %bb.f ], [ @mirror_co_read, %bb.g ], [ @mirror_co_discard, %bb.h ], [ %mirror_co_discard.sink.ph, %.sink.split ]
  %i.w = call ptr @qemu_coroutine_create(ptr noundef nonnull %mirror_co_discard.sink, ptr noundef nonnull %i.m) #11 ; 2 uses
  store ptr %i.w, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.y, ptr %i.z, align 8
  store ptr %i.m, ptr %i.y, align 8
  store ptr %.sroa.2.0..sroa_idx.a, ptr %i.x, align 8
  call void @qemu_coroutine_enter(ptr noundef %i.w) #11
  %i.aa = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_perform) #12
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp samesign ult i64 %i.aa, 4294967296
  br i1 %i.ac, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_perform) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ad = trunc nuw i64 %i.aa to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.ad
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal noundef ptr @graph_lockable_auto_lock(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) #6 {
bb.a:
  tail call void @bdrv_graph_co_rdlock() #11
  ret ptr %0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @graph_lockable_auto_unlock(ptr nofree readnone captures(none) %0) #6 {
bb.a:
  tail call void @bdrv_graph_co_rdunlock() #11
  ret void
}

declare i32 @bdrv_co_is_allocated_above(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef) #2

declare ptr @qemu_coroutine_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @mirror_co_read(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 608 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 756
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = mul i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 616 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.k)
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 4 uses
  store i64 %i.m, ptr %i.j, align 8
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 364, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_co_read) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ult i64 %i.m, 2147483136
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 365, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_co_read) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  store i64 %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.r = load ptr, ptr %i.q, align 8
  %.not82 = icmp eq ptr %i.r, null
  br i1 %.not82, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = tail call i32 @mirror_cow_align(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull %i.j)
  %i.u = zext nneg i32 %i.t to i64
  %i.v = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp slt i64 %i.z, 4294967296
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 372, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_co_read) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.j, align 8             ; 3 uses
  %i.ac = load i64, ptr %i.h, align 8
  %.not83 = icmp ugt i64 %i.ab, %i.ac
  br i1 %.not83, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 373, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_co_read) #12
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ag = srem i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 377, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_co_read) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ai = and i64 %i.ab, 511
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 379, ptr noundef nonnull @__PRETTY_FUNCTION__.mirror_co_read) #12
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ak = add i64 %i.ab, -1
  %i.al = add i64 %i.ak, %i.af
  %i.am = udiv i64 %i.al, %i.af
  %i.an = trunc i64 %i.am to i32                  ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 688 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp slt i32 %i.ap, %i.an
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %mirror_wait_for_free_in_flight_slot.exit
  %i.at = load i64, ptr %i.ad, align 8
  %i.au = load i32, ptr %i.ar, align 8
  %i.av = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %trace_mirror_yield_in_flight.exit, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  %i.aw = load i16, ptr @_TRACE_MIRROR_YIELD_IN_FLIGHT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.aw, 0
  br i1 %.not2.i, label %trace_mirror_yield_in_flight.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr @qemu_loglevel, align 4
  %i.ay = and i32 %i.ax, 32768
  %.not3.i = icmp eq i32 %i.ay, 0
  br i1 %.not3.i, label %trace_mirror_yield_in_flight.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.a, i64 noundef %i.at, i32 noundef %i.au) #11
  br label %trace_mirror_yield_in_flight.exit

trace_mirror_yield_in_flight.exit:                ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.08.i = load ptr, ptr %i.as, align 8           ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %trace_mirror_yield_in_flight.exit, %bb.v
  %.010.i = phi ptr [ %.0.i, %bb.v ], [ %.08.i, %trace_mirror_yield_in_flight.exit ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i, i64 80
  %i.ba = load i8, ptr %i.az, align 8, !range !10, !noundef !11
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i, i64 82
  %i.bd = load i8, ptr %i.bc, align 2, !range !10, !noundef !11
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i, i64 81
  %i.bg = load i8, ptr %i.bf, align 1, !range !10, !noundef !11
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.v, label %mirror_wait_for_free_in_flight_slot.exit

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i, i64 120
  %.0.i = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i85 = icmp eq ptr %.0.i, null
  br i1 %.not.i85, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

end_hunk_1
