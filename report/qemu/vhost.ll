Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vhost?download=true
inline.NumInlined: 182
inline.NumDeleted: 88
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@vhost_dev_init:bb.a

bb.o:                                             ; preds = %bb.n
  %i.am = call zeroext i1 @memory_devices_memslot_auto_decision_active() #15
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 1709, ptr noundef nonnull @__func__.vhost_dev_init, ptr noundef nonnull @.str.13) #15
  call void (ptr, ptr, ...) @error_append_hint(ptr noundef %4, ptr noundef nonnull @.str.14) #15
  br label %bb.aq

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %.not126 = icmp eq i32 %i.ao, 0
  br i1 %.not126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 444
  %.not107 = icmp eq i32 %3, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.ac
  %.082124 = phi i32 [ 0, %.lr.ph ], [ %i.co, %bb.ac ] ; 5 uses
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = sext i32 %.082124 to i64
  %i.av = getelementptr inbounds [128 x i8], ptr %i.at, i64 %i.au ; 4 uses
  %i.aw = load i32, ptr %i.aq, align 4
  %i.ax = add i32 %i.aw, %.082124                 ; 2 uses
  %i.ay = load ptr, ptr %i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 256
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i32 %i.ba(ptr noundef nonnull %0, i32 noundef %i.ax) #15, !inline_history !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 %i.bb, ptr %6, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 84 ; 4 uses
  %i.bd = call i32 @event_notifier_init(ptr noundef nonnull %i.bc, i32 noundef 0) #15 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.loopexit.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = call i32 @event_notifier_get_wfd(ptr noundef nonnull %i.bc) #15
  store i32 %i.bf, ptr %i.ar, align 4
  %i.bg = load ptr, ptr %i.i, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i32 %i.bi(ptr noundef nonnull %0, ptr noundef nonnull %6) #15, !inline_history !22 ; 3 uses
  %.not.i93 = icmp eq i32 %i.bj, 0
  br i1 %.not.i93, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = sub i32 0, %i.bj                        ; 2 uses
  %i.bl = call ptr @strerror(i32 noundef %i.bk) #15
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.76, ptr noundef %i.bl, i32 noundef %i.bk) #15
  br label %vhost_virtqueue_init.exit

bb.u:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  store ptr %0, ptr %i.bm, align 8
  %i.bn = load ptr, ptr %i.i, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not42.i = icmp eq ptr %i.bp, null
  br i1 %.not42.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 96 ; 3 uses
  %i.br = call i32 @event_notifier_init(ptr noundef nonnull %i.bq, i32 noundef 0) #15 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %vhost_virtqueue_init.exit.thread103, label %bb.w

vhost_virtqueue_init.exit.thread103:              ; preds = %bb.v
  call void @event_notifier_cleanup(ptr noundef nonnull %i.bc) #15
  br label %.loopexit.sink.split

bb.w:                                             ; preds = %bb.v
  %i.bt = call i32 @event_notifier_get_fd(ptr noundef nonnull %i.bq) #15
  store i32 %i.bt, ptr %i.ar, align 4
  %i.bu = load ptr, ptr %i.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 152
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i32 %i.bw(ptr noundef nonnull %0, ptr noundef nonnull %6) #15, !inline_history !22 ; 2 uses
  %.not43.i = icmp eq i32 %i.bx, 0
  br i1 %.not43.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @event_notifier_set_handler(ptr noundef nonnull %i.bq, ptr noundef nonnull @vhost_virtqueue_error_notifier) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  br i1 %.not107, label %vhost_virtqueue_init.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = load ptr, ptr %i.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 256
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call i32 %i.ca(ptr noundef nonnull %0, i32 noundef %i.ax) #15, !inline_history !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 %i.cb, ptr %5, align 4
  store i32 1, ptr %i.as, align 4
  %i.cc = load ptr, ptr %i.i, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 160
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %vhost_virtqueue_set_busyloop_timeout.exit.thread.i, label %bb.aa

vhost_virtqueue_set_busyloop_timeout.exit.thread.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = call i32 %i.ce(ptr noundef nonnull %0, ptr noundef nonnull %5) #15, !inline_history !23 ; 4 uses
  %.not14.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not14.i.i, label %vhost_virtqueue_set_busyloop_timeout.exit.thread46.i, label %vhost_virtqueue_set_busyloop_timeout.exit.i

vhost_virtqueue_set_busyloop_timeout.exit.thread46.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %vhost_virtqueue_init.exit.thread

vhost_virtqueue_set_busyloop_timeout.exit.i:      ; preds = %bb.aa
  %i.cg = sub i32 0, %i.cf                        ; 2 uses
  %i.ch = call ptr @strerror(i32 noundef %i.cg) #15
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.80, ptr noundef %i.ch, i32 noundef %i.cg) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.ci = icmp slt i32 %i.cf, 0
  br i1 %i.ci, label %bb.ab, label %vhost_virtqueue_init.exit.thread

bb.ab:                                            ; preds = %vhost_virtqueue_set_busyloop_timeout.exit.i, %vhost_virtqueue_set_busyloop_timeout.exit.thread.i, %bb.w
  %.0.i45.sink.i = phi i32 [ %i.bx, %bb.w ], [ -22, %vhost_virtqueue_set_busyloop_timeout.exit.thread.i ], [ %i.cf, %vhost_virtqueue_set_busyloop_timeout.exit.i ] ; 2 uses
  %.str.78.sink.i = phi ptr [ @.str.77, %bb.w ], [ @.str.78, %vhost_virtqueue_set_busyloop_timeout.exit.thread.i ], [ @.str.78, %vhost_virtqueue_set_busyloop_timeout.exit.i ]
  %i.cj = sub i32 0, %.0.i45.sink.i               ; 2 uses
  %i.ck = call ptr @strerror(i32 noundef %i.cj) #15
  call void (ptr, ...) @error_report(ptr noundef nonnull %.str.78.sink.i, ptr noundef %i.ck, i32 noundef %i.cj) #15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  call void @event_notifier_cleanup(ptr noundef nonnull %i.cl) #15
  br label %vhost_virtqueue_init.exit

vhost_virtqueue_init.exit.thread:                 ; preds = %vhost_virtqueue_set_busyloop_timeout.exit.i, %bb.y, %vhost_virtqueue_set_busyloop_timeout.exit.thread46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ac

vhost_virtqueue_init.exit:                        ; preds = %bb.t, %bb.ab
  %.1.i = phi i32 [ %i.bj, %bb.t ], [ %.0.i45.sink.i, %bb.ab ] ; 2 uses
  call void @event_notifier_cleanup(ptr noundef nonnull %i.bc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.cm = icmp slt i32 %.1.i, 0
  br i1 %i.cm, label %.loopexit, label %bb.ac

.loopexit.sink.split:                             ; preds = %bb.r, %vhost_virtqueue_init.exit.thread103
  %.035.i102.ph = phi i32 [ %i.br, %vhost_virtqueue_init.exit.thread103 ], [ %i.bd, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.loopexit

.loopexit:                                        ; preds = %vhost_virtqueue_init.exit, %.loopexit.sink.split
  %.035.i102 = phi i32 [ %.035.i102.ph, %.loopexit.sink.split ], [ %.1.i, %vhost_virtqueue_init.exit ] ; 2 uses
  %i.cn = sub i32 0, %.035.i102
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 1720, ptr noundef nonnull @__func__.vhost_dev_init, i32 noundef %i.cn, ptr noundef nonnull @.str.15, i32 noundef %.082124) #15
  br label %bb.aq

bb.ac:                                            ; preds = %vhost_virtqueue_init.exit.thread, %vhost_virtqueue_init.exit
  %i.co = add nuw i32 %.082124, 1                 ; 3 uses
  %i.cp = load i32, ptr %i.an, align 8
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.r, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.ac, %bb.q
  %.084.lcssa = phi i32 [ 0, %bb.q ], [ %i.co, %bb.ac ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr @vhost_begin, ptr %i.cr, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @vhost_commit, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @vhost_region_addnop, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @vhost_region_addnop, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vhost_log_start, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vhost_log_stop, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @vhost_log_sync, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr @vhost_log_global_start, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @vhost_log_global_stop, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx, i8 0, i64 40, i1 false)
  store i32 10, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @.str.16, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cs, i8 0, i64 112, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i8 0, i64 40, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.0..sroa_idx, i8 0, i64 56, i1 false)
  store ptr @vhost_iommu_region_add, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @vhost_iommu_region_del, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr @.str.17, ptr %.sroa.41.0..sroa_idx, align 8
  %i.ct = load ptr, ptr %i.f, align 8
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = and i64 %i.cw, 67108864
  %.not106 = icmp eq i64 %i.cx, 0
  br i1 %.not106, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.10, i32 noundef 1748, ptr noundef nonnull @__func__.vhost_dev_init, ptr noundef nonnull @.str.18) #15
  br label %vhost_dev_log_is_shared.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr %i.i, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 272
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not.i94 = icmp eq ptr %i.da, null
  br i1 %.not.i94, label %vhost_dev_log_is_shared.exit.thread, label %vhost_dev_log_is_shared.exit

vhost_dev_log_is_shared.exit:                     ; preds = %bb.af
  %i.db = call zeroext i1 %i.da(ptr noundef nonnull %0) #15, !inline_history !25
  br i1 %i.db, label %bb.ag, label %vhost_dev_log_is_shared.exit.thread

bb.ag:                                            ; preds = %vhost_dev_log_is_shared.exit
  %i.dc = call zeroext i1 @qemu_memfd_alloc_check() #15
  br i1 %i.dc, label %vhost_dev_log_is_shared.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.10, i32 noundef 1751, ptr noundef nonnull @__func__.vhost_dev_init, ptr noundef nonnull @.str.19) #15
  br label %vhost_dev_log_is_shared.exit.thread

vhost_dev_log_is_shared.exit.thread:              ; preds = %bb.af, %bb.ae, %bb.ah, %bb.ag, %vhost_dev_log_is_shared.exit
  %.pr = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.ai, label %.thread

.thread:                                          ; preds = %._crit_edge, %vhost_dev_log_is_shared.exit.thread
  %i.dd = call i32 @migrate_add_blocker_normal(ptr noundef nonnull %i.f, ptr noundef %4) #15 ; 2 uses
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %.thread, %vhost_dev_log_is_shared.exit.thread
  %i.df = call noalias dereferenceable_or_null(8) ptr @g_malloc0(i64 noundef 8) #17
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr null, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 0, ptr %i.dm, align 8
  call void @memory_listener_register(ptr noundef nonnull %i.cr, ptr noundef nonnull @address_space_memory) #15
  %i.dn = load ptr, ptr @vhost_devices, align 8   ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8
  %.not91 = icmp eq ptr %i.dn, null
  br i1 %.not91, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 560
  store ptr %i.do, ptr %i.dp, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr %0, ptr @vhost_devices, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @vhost_devices, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.dg, align 8
  %i.ds = load i32, ptr %i.dr, align 8            ; 2 uses
  %i.dt = call i32 @memory_devices_get_reserved_memslots() #15 ; 2 uses
  %i.du = add i32 %i.dt, %i.ds
  %i.dv = icmp ugt i32 %i.du, %i.ak
  br i1 %i.dv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 1788, ptr noundef nonnull @__func__.vhost_dev_init, ptr noundef nonnull @.str.20, i32 noundef %i.ak, i32 noundef %i.ds, i32 noundef %i.dt) #15
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %i.dw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i95 = icmp eq i32 %i.dw, 0
  br i1 %.not.i95, label %trace_vhost_dev_init_out.exit, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %i.dx = load i16, ptr @_TRACE_VHOST_DEV_INIT_OUT_DSTATE, align 2
  %.not1.i96 = icmp eq i16 %i.dx, 0
  br i1 %.not1.i96, label %trace_vhost_dev_init_out.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = load i32, ptr @qemu_loglevel, align 4
  %i.dz = and i32 %i.dy, 32768
  %.not2.i97 = icmp eq i32 %i.dz, 0
  br i1 %.not2.i97, label %trace_vhost_dev_init_out.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.108, ptr noundef nonnull %0) #15
  br label %trace_vhost_dev_init_out.exit

bb.aq:                                            ; preds = %.thread, %bb.g, %bb.al, %.loopexit, %bb.p, %bb.m, %bb.i
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.p ], [ %.082124, %.loopexit ], [ %.084.lcssa, %.thread ], [ %.084.lcssa, %bb.al ]
  %.083 = phi i32 [ %i.n, %bb.g ], [ %i.s, %bb.i ], [ %.0.i, %bb.m ], [ -22, %bb.p ], [ %.035.i102, %.loopexit ], [ %i.dd, %.thread ], [ -22, %bb.al ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 %.1, ptr %i.ea, align 8
  call void @vhost_dev_cleanup(ptr noundef nonnull %0)
  br label %trace_vhost_dev_init_out.exit

trace_vhost_dev_init_out.exit:                    ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aq
  %.0 = phi i32 [ %.083, %bb.aq ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @memory_devices_memslot_auto_decision_active() local_unnamed_addr #2

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @error_append_hint(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @vhost_begin(ptr nofree noundef writeonly captures(none) initializes((408, 412), (416, 424)) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vhost_commit(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load i32, ptr %i.h, align 8              ; 5 uses
  store i32 %i.i, ptr %i.d, align 8
  %.not = icmp eq i32 %i.i, %i.e
  br i1 %.not, label %.preheader104, label %MemoryRegionSection_eq.exit.thread

.preheader104:                                    ; preds = %bb.a
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader104
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

bb.b:                                             ; preds = %MemoryRegionSection_eq.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv ; 7 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %indvars.iv ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 16
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %MemoryRegionSection_eq.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.d, label %MemoryRegionSection_eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.x = load i64, ptr %i.w, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.z = load i64, ptr %i.y, align 16
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %MemoryRegionSection_eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 40
end_hunk_0
