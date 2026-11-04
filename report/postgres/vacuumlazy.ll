Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/vacuumlazy?download=true
inline.NumInlined: 92
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@heap_vacuum_rel:bb.a
  store i32 0, ptr %i.l, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i8 0, ptr %i.ch, align 2
  call fastcc void @lazy_vacuum(ptr noundef nonnull %i.at)
  %i.kc = load ptr, ptr %i.at, align 8
  %i.kd = add i32 %.0126.i, 1
  call void @FreeSpaceMapVacuumRange(ptr noundef %i.kc, i32 noundef %.0125.i, i32 noundef %i.kd) #6
  call void @pgstat_progress_update_param(i32 noundef 0, i64 noundef 1) #6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai, %bb.ah
  %.1.i = phi i32 [ %.0126.i, %bb.al ], [ %.0125.i, %bb.ai ], [ %.0125.i, %bb.ah ] ; 9 uses
  %i.ke = call i32 @read_stream_next_buffer(ptr noundef %i.iq, ptr noundef nonnull %i.o) #6 ; 20 uses
  %.not171.i = icmp eq i32 %i.ke, 0
  br i1 %.not171.i, label %bb.dc, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kf = load ptr, ptr %i.o, align 8
  %i.kg = load i8, ptr %i.kf, align 1, !range !4, !noundef !5
  %i.kh = trunc nuw i8 %i.kg to i1                ; 2 uses
  call void @CheckBufferIsPinnedOnce(i32 noundef %i.ke) #6
  %i.ki = icmp slt i32 %i.ke, 0
  br i1 %i.ki, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kj = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.kk = xor i32 %i.ke, -1
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8
  br label %BufferGetPage.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ko = load ptr, ptr @BufferBlocks, align 8
  %i.kp = add nsw i32 %i.ke, -1
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 13
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kr
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.ap, %bb.ao
  %.0.i.i.i = phi ptr [ %i.kn, %bb.ao ], [ %i.ks, %bb.ap ] ; 9 uses
  %i.kt = call i32 @BufferGetBlockNumber(i32 noundef %i.ke) #6 ; 17 uses
  %i.ku = load i32, ptr %i.cr, align 4
  %i.kv = add i32 %i.ku, 1
  store i32 %i.kv, ptr %i.cr, align 4
  br i1 %i.kh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %BufferGetPage.exit.i
  %i.kw = load i32, ptr %i.cs, align 8
  %i.kx = add i32 %i.kw, 1
  store i32 %i.kx, ptr %i.cs, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %BufferGetPage.exit.i
  %i.ky = zext i32 %i.kt to i64
  call void @pgstat_progress_update_param(i32 noundef 2, i64 noundef %i.ky) #6
  store i32 %i.kt, ptr %i.ir, align 8
  store i16 0, ptr %i.is, align 4
  store i32 1, ptr %i.bi, align 8
  %i.kz = load ptr, ptr %i.at, align 8
  call void @visibilitymap_pin(ptr noundef %i.kz, i32 noundef %i.kt, ptr noundef nonnull %i.l) #6
  %i.la = call zeroext i1 @ConditionalLockBufferForCleanup(i32 noundef %i.ke) #6 ; 3 uses
  br i1 %i.la, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @LockBufferInternal(i32 noundef %i.ke, i32 noundef 1) #6
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.lb = load i32, ptr %i.l, align 4             ; 5 uses
  %i.lc = getelementptr i8, ptr %.0.i.i.i, i64 14
  %.val.i.i = load i16, ptr %i.lc, align 2
  %i.ld = icmp eq i16 %.val.i.i, 0
  br i1 %i.ld, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @UnlockReleaseBuffer(i32 noundef %i.ke) #6
  %i.le = load ptr, ptr %i.at, align 8
  %i.lf = call i64 @GetRecordedFreeSpace(ptr noundef %i.le, i32 noundef %i.kt) #6
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %.sink.split.i.i, label %lazy_scan_new_or_empty.exit.thread.i

bb.av:                                            ; preds = %bb.at
  %i.lh = getelementptr i8, ptr %.0.i.i.i, i64 12 ; 3 uses
  %.val35.i.i = load i16, ptr %i.lh, align 4
  %i.li = icmp ult i16 %.val35.i.i, 25
  br i1 %i.li, label %bb.aw, label %lazy_scan_new_or_empty.exit.i

bb.aw:                                            ; preds = %bb.av
  br i1 %i.la, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @UnlockBuffer(i32 noundef %i.ke) #6
  call void @LockBufferInternal(i32 noundef %i.ke, i32 noundef 3) #6
  %.val34.i.i = load i16, ptr %i.lh, align 4
  %i.lj = icmp ult i16 %.val34.i.i, 25
  br i1 %i.lj, label %bb.ay, label %lazy_scan_new_or_empty.exit.thread189.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.lk = getelementptr i8, ptr %.0.i.i.i, i64 10 ; 3 uses
  %.val36.i.i = load i16, ptr %i.lk, align 2
  %i.ll = and i16 %.val36.i.i, 4
  %.not.i.i = icmp eq i16 %i.ll, 0
  br i1 %.not.i.i, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  call void @LockBufferInternal(i32 noundef %i.lb, i32 noundef 3) #6
  %i.lm = load volatile i32, ptr @CritSectionCount, align 4
  %i.ln = add i32 %i.lm, 1
  store volatile i32 %i.ln, ptr @CritSectionCount, align 4
  call void @MarkBufferDirty(i32 noundef %i.ke) #6
  %i.lo = load i16, ptr %i.lk, align 2
  %i.lp = or i16 %i.lo, 4
  store i16 %i.lp, ptr %i.lk, align 2
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.lq, align 4
  %i.lr = load ptr, ptr %i.at, align 8            ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.lr, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @visibilitymap_set(i32 noundef %i.kt, i32 noundef %i.lb, i8 noundef zeroext 3, i64 %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i) #6
  %i.ls = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 56
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 118
  %i.lw = load i8, ptr %i.lv, align 2
  %i.lx = icmp eq i8 %i.lw, 112
  br i1 %i.lx, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ly = load i32, ptr @wal_level, align 4
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.mb = load i32, ptr %i.ma, align 8
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.me = load i32, ptr %i.md, align 8
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  call void @log_heap_prune_and_freeze(ptr noundef nonnull %i.ls, i32 noundef %i.ke, i32 noundef %i.lb, i8 noundef zeroext 3, i32 noundef 0, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.mg = load volatile i32, ptr @CritSectionCount, align 4
  %i.mh = add i32 %i.mg, -1
  store volatile i32 %i.mh, ptr @CritSectionCount, align 4
  call void @UnlockBuffer(i32 noundef %i.lb) #6
  %i.mi = load <2 x i32>, ptr %i.do, align 4
  %i.mj = add <2 x i32> %i.mi, splat (i32 1)
  store <2 x i32> %i.mj, ptr %i.do, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ay
  %i.mk = call i64 @PageGetHeapFreeSpace(ptr noundef nonnull %.0.i.i.i) #6
  call void @UnlockReleaseBuffer(i32 noundef %i.ke) #6
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bf, %bb.au
  %.sink37.i.i = phi i64 [ %i.mk, %bb.bf ], [ 8168, %bb.au ]
  %i.ml = load ptr, ptr %i.at, align 8
  call void @RecordPageWithFreeSpace(ptr noundef %i.ml, i32 noundef %i.kt, i64 noundef %.sink37.i.i) #6
  br label %lazy_scan_new_or_empty.exit.thread.i

lazy_scan_new_or_empty.exit.i:                    ; preds = %bb.av
  br i1 %i.la, label %.thread.i266, label %lazy_scan_new_or_empty.exit.thread189.i

lazy_scan_new_or_empty.exit.thread189.i:          ; preds = %lazy_scan_new_or_empty.exit.i, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.mm = load i32, ptr %i.ee, align 8
  store i32 %i.mm, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.mn = load i32, ptr %i.ef, align 4
  store i32 %i.mn, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %.val.i140.i = load i16, ptr %i.lh, align 4     ; 2 uses
  %i.mo = icmp ult i16 %.val.i140.i, 25
  %i.mp = zext i16 %.val.i140.i to i32
  %i.mq = add nuw nsw i32 %i.mp, 262120
  %i.mr = lshr i32 %i.mq, 2
  %i.ms = trunc i32 %i.mr to i16                  ; 2 uses
  %.not114127.i.i = icmp eq i16 %i.ms, 0
  %.not114.i.i = select i1 %i.mo, i1 true, i1 %.not114127.i.i
  br i1 %.not114.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %lazy_scan_new_or_empty.exit.thread189.i
  %i.mt = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.mu = lshr i32 %i.kt, 16
  %i.mv = trunc nuw i32 %i.mu to i16
  %i.mw = trunc i32 %i.kt to i16
  %umax.i.i = add nuw nsw i16 %i.ms, 1
  %wide.trip.count.i.i = zext i16 %umax.i.i to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bq, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bq ] ; 3 uses
  %.060120.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %.1.ph.i.i, %bb.bq ] ; 2 uses
  %.064118.i.i.a = phi i32 [ 0, %.lr.ph.i.i ], [ %.263.ph.i.i, %bb.bq ] ; 7 uses
  %.067117.i.i.a = phi i32 [ 0, %.lr.ph.i.i ], [ %.266.ph.i.i, %bb.bq ] ; 7 uses
  %.070116.i.i.a = phi i32 [ 0, %.lr.ph.i.i ], [ %.269.ph.i.i, %bb.bq ] ; 7 uses
  %.070116.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.171.ph.i.i, %bb.bq ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %16 = trunc nuw i64 %indvars.iv.i.i to i16      ; 3 uses
  store i16 %16, ptr %i.is, align 4
  %i.mx = getelementptr [4 x i8], ptr %i.mt, i64 %indvars.iv.i.i ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4            ; 2 uses
  %i.mz = lshr i32 %i.my, 15
  %i.na = and i32 %i.mz, 3
  switch i32 %i.na, label %default.unreachable [
    i32 0, label %bb.bq
    i32 2, label %bb.bh
    i32 3, label %bb.bi
    i32 1, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bq

bb.bi:                                            ; preds = %bb.bg
  %i.nb = add i32 %.070116.i.i, 1
  %i.nc = sext i32 %.070116.i.i to i64
  %i.nd = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.nc
  store i16 %16, ptr %i.nd, align 2
  br label %bb.bq

default.unreachable:                              ; preds = %bb.bg
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.ne = and i32 %i.my, 32767
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.nf
  %i.nh = call zeroext i1 @heap_tuple_should_freeze(ptr noundef %i.ng, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #6
  br i1 %i.nh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ni = load i8, ptr %i.dx, align 8, !range !4, !noundef !5
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.bx, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  store i16 %i.mv, ptr %i.it, align 4
  store i16 %i.mw, ptr %i.iu, align 2
  store i16 %16, ptr %i.iv, align 8
  %.val80.i.i = load i32, ptr %i.mx, align 4      ; 2 uses
  %i.nk = and i32 %.val80.i.i, 32767
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.nl
  store ptr %i.nm, ptr %i.iw, align 8
  %i.nn = lshr i32 %.val80.i.i, 17
  store i32 %i.nn, ptr %8, align 8
  %i.no = load ptr, ptr %i.at, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 72
  %i.nq = load i32, ptr %i.np, align 8
  store i32 %i.nq, ptr %i.ix, align 4
  %i.nr = load i32, ptr %i.ed, align 8
  %i.ns = call i32 @HeapTupleSatisfiesVacuum(ptr noundef nonnull %8, i32 noundef %i.nr, i32 noundef %i.ke) #6
  switch i32 %i.ns, label %bb.bp [
    i32 4, label %bb.bm
    i32 1, label %bb.bm
    i32 0, label %bb.bn
    i32 2, label %bb.bo
    i32 3, label %bb.bq
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  %i.nt = add i32 %.070116.i.i.a, 1
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  %i.nu = add i32 %.064118.i.i.a, 1
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  %i.nv = add i32 %.067117.i.i.a, 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.nw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.nx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.36) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2288, ptr noundef nonnull @__func__.lazy_scan_noprune) #6
  unreachable

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bi, %bb.bh, %bb.bg
  %.171.ph.i.i = phi i32 [ %.070116.i.i, %bb.bl ], [ %.070116.i.i, %bb.bm ], [ %.070116.i.i, %bb.bn ], [ %.070116.i.i, %bb.bo ], [ %.070116.i.i, %bb.bg ], [ %i.nb, %bb.bi ], [ %.070116.i.i, %bb.bh ] ; 5 uses
  %.269.ph.i.i = phi i32 [ %.070116.i.i.a, %bb.bl ], [ %i.nt, %bb.bm ], [ %.070116.i.i.a, %bb.bn ], [ %.070116.i.i.a, %bb.bo ], [ %.070116.i.i.a, %bb.bg ], [ %.070116.i.i.a, %bb.bi ], [ %.070116.i.i.a, %bb.bh ] ; 2 uses
  %.266.ph.i.i = phi i32 [ %.067117.i.i.a, %bb.bl ], [ %.067117.i.i.a, %bb.bm ], [ %.067117.i.i.a, %bb.bn ], [ %i.nv, %bb.bo ], [ %.067117.i.i.a, %bb.bg ], [ %.067117.i.i.a, %bb.bi ], [ %.067117.i.i.a, %bb.bh ] ; 2 uses
  %.263.ph.i.i = phi i32 [ %.064118.i.i.a, %bb.bl ], [ %.064118.i.i.a, %bb.bm ], [ %i.nu, %bb.bn ], [ %.064118.i.i.a, %bb.bo ], [ %.064118.i.i.a, %bb.bg ], [ %.064118.i.i.a, %bb.bi ], [ %.064118.i.i.a, %bb.bh ] ; 4 uses
  %.1.ph.i.i = phi i1 [ true, %bb.bl ], [ true, %bb.bm ], [ true, %bb.bn ], [ true, %bb.bo ], [ %.060120.i.i, %bb.bg ], [ %.060120.i.i, %bb.bi ], [ true, %bb.bh ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.i.i, label %._crit_edge.i.i, label %bb.bg, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %bb.bq
  %.pre.i.i = load i32, ptr %i.i, align 4
  %.pre128.i.i = load i32, ptr %i.j, align 4
  %i.ny = sext i32 %.269.ph.i.i to i64            ; 3 uses
  %i.nz = sext i32 %.266.ph.i.i to i64            ; 3 uses
  store i16 0, ptr %i.is, align 4
  store i32 %.pre.i.i, ptr %i.ee, align 8
  store i32 %.pre128.i.i, ptr %i.ef, align 4
  %i.oa = load i32, ptr %i.bn, align 8
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.br, label %bb.bs

._crit_edge.thread.i.i:                           ; preds = %lazy_scan_new_or_empty.exit.thread189.i
  store i16 0, ptr %i.is, align 4
  %i.oc = load i32, ptr %i.bn, align 8
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %bb.br, label %.thread.i.i

bb.br:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.060.lcssa147.i.i = phi i1 [ false, %._crit_edge.thread.i.i ], [ %.1.ph.i.i, %._crit_edge.i.i ]
  %.061.lcssa144.i.i = phi i32 [ 0, %._crit_edge.thread.i.i ], [ %.263.ph.i.i, %._crit_edge.i.i ]
  %.064.lcssa143.i.i = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %i.nz, %._crit_edge.i.i ]
  %.067.lcssa140.i.i = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %i.ny, %._crit_edge.i.i ]
  %.070.lcssa135.i.i = phi i32 [ 0, %._crit_edge.thread.i.i ], [ %.171.ph.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.oe = icmp sgt i32 %.070.lcssa135.i.i, 0      ; 2 uses
  %i.of = call i32 @llvm.smax.i32(i32 %.070.lcssa135.i.i, i32 0)
  %spec.select.i.i = add i32 %i.of, %.061.lcssa144.i.i
  %spec.select79.i.i = select i1 %i.oe, i1 true, i1 %.060.lcssa147.i.i
  br label %.thread.i.i

bb.bs:                                            ; preds = %._crit_edge.i.i
  %i.og = icmp sgt i32 %.171.ph.i.i, 0
  br i1 %i.og, label %bb.bt, label %.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.oh = load i32, ptr %i.cv, align 8
  %i.oi = add i32 %i.oh, 1
  store i32 %i.oi, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i64 25769803783, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.oj = load ptr, ptr %i.ib, align 8
  call void @TidStoreSetBlockOffsets(ptr noundef %i.oj, i32 noundef %i.kt, ptr noundef nonnull %i.k, i32 noundef %.171.ph.i.i) #6
  %i.ok = zext nneg i32 %.171.ph.i.i to i64       ; 2 uses
  %i.ol = load ptr, ptr %i.ig, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8
  %i.oo = add i64 %i.on, %i.ok
  store i64 %i.oo, ptr %i.om, align 8
  %i.op = load ptr, ptr %i.ig, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load i64, ptr %i.oq, align 8
  store i64 %i.or, ptr %i.h, align 16
  %i.os = load ptr, ptr %i.ib, align 8
  %i.ot = call i64 @TidStoreMemoryUsage(ptr noundef %i.os) #6
  store i64 %i.ot, ptr %i.iy, align 8
  call void @pgstat_progress_update_multi_param(i32 noundef 2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %i.ou = load i64, ptr %i.dk, align 8
  %i.ov = add i64 %i.ou, %i.ok
  store i64 %i.ov, ptr %i.dk, align 8
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs, %bb.br, %._crit_edge.thread.i.i
  %.064.lcssa141.i.i = phi i64 [ %i.nz, %bb.bs ], [ %.064.lcssa143.i.i, %bb.br ], [ %i.nz, %bb.bt ], [ 0, %._crit_edge.thread.i.i ]
  %.067.lcssa138.i.i = phi i64 [ %i.ny, %bb.bs ], [ %.067.lcssa140.i.i, %bb.br ], [ %i.ny, %bb.bt ], [ 0, %._crit_edge.thread.i.i ]
  %.070.lcssa137.i.i = phi i1 [ false, %bb.bs ], [ %i.oe, %bb.br ], [ true, %bb.bt ], [ false, %._crit_edge.thread.i.i ]
  %.3.i.i = phi i32 [ %.263.ph.i.i, %bb.bs ], [ %spec.select.i.i, %bb.br ], [ %.263.ph.i.i, %bb.bt ], [ 0, %._crit_edge.thread.i.i ] ; 2 uses
  %.2.i.i = phi i1 [ %.1.ph.i.i, %bb.bs ], [ %spec.select79.i.i, %bb.br ], [ %.1.ph.i.i, %bb.bt ], [ false, %._crit_edge.thread.i.i ]
  %i.ow = load i64, ptr %i.dl, align 8
  %i.ox = add i64 %i.ow, %.067.lcssa138.i.i
  store i64 %i.ox, ptr %i.dl, align 8
  %i.oy = load i64, ptr %i.dm, align 8
  %i.oz = add i64 %i.oy, %.064.lcssa141.i.i
  store i64 %i.oz, ptr %i.dm, align 8
  %i.pa = sext i32 %.3.i.i to i64
  %i.pb = load i64, ptr %i.dn, align 8
  %i.pc = add i64 %i.pb, %i.pa
  store i64 %i.pc, ptr %i.dn, align 8
  %i.pd = icmp sgt i32 %.3.i.i, 0
  br i1 %i.pd, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.thread.i.i
  %i.pe = load i32, ptr %i.cw, align 4
  %i.pf = add i32 %i.pe, 1
  store i32 %i.pf, ptr %i.cw, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread.i.i
  br i1 %.2.i.i, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.pg = add i32 %i.kt, 1
  store i32 %i.pg, ptr %i.cx, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.bk
  store i16 0, ptr %i.is, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @UnlockBuffer(i32 noundef %i.ke) #6
  call void @LockBufferForCleanup(i32 noundef %i.ke) #6
  %.pre = load i32, ptr %i.l, align 4
  br label %.thread.i266

bb.by:                                            ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %.thread155.i

.thread.i266:                                     ; preds = %bb.bx, %lazy_scan_new_or_empty.exit.i
  %i.ph = phi i32 [ %.pre, %bb.bx ], [ %i.lb, %lazy_scan_new_or_empty.exit.i ]
  %i.pi = load ptr, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  store ptr %i.pi, ptr %7, align 8
  store i32 %i.ke, ptr %i.iz, align 8
  store i32 %i.ph, ptr %i.ja, align 4
  store i32 1, ptr %i.jb, align 8
  store i32 10, ptr %i.jc, align 4
  %i.pj = load ptr, ptr %i.ec, align 8
  store ptr %i.pj, ptr %i.jd, align 8
  store ptr %i.dv, ptr %i.je, align 8
  %i.pk = load i32, ptr %i.bn, align 8
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.thread.i266
  store i32 11, ptr %i.jc, align 4
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.thread.i266
  %i.pm = phi i32 [ 15, %bb.bz ], [ 14, %.thread.i266 ]
  %i.pn = load i8, ptr %i.ek, align 1, !range !4, !noundef !5
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 %i.pm, ptr %i.jc, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void @heap_page_prune_and_freeze(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %i.is, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ef) #6
  %i.pp = load i32, ptr %i.jf, align 4
  %i.pq = icmp sgt i32 %i.pp, 0
  br i1 %i.pq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.pr = load i32, ptr %i.cu, align 8
  %i.ps = add i32 %i.pr, 1
  store i32 %i.ps, ptr %i.cu, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.pt = load i32, ptr %i.jg, align 4            ; 2 uses
  %i.pu = icmp sgt i32 %i.pt, 0
  br i1 %i.pu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.pv = load i32, ptr %i.cv, align 8
  %i.pw = add i32 %i.pv, 1
  store i32 %i.pw, ptr %i.cv, align 8
  %i.px = zext nneg i32 %i.pt to i64
  call void @pg_qsort(ptr noundef nonnull %i.jh, i64 noundef %i.px, i64 noundef 2, ptr noundef nonnull @cmpOffsetNumbers) #6
  %i.py = load i32, ptr %i.jg, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i64 25769803783, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.pz = load ptr, ptr %i.ib, align 8
  call void @TidStoreSetBlockOffsets(ptr noundef %i.pz, i32 noundef %i.kt, ptr noundef nonnull %i.jh, i32 noundef %i.py) #6
  %i.qa = sext i32 %i.py to i64
  %i.qb = load ptr, ptr %i.ig, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = add i64 %i.qd, %i.qa
  store i64 %i.qe, ptr %i.qc, align 8
  %i.qf = load ptr, ptr %i.ig, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load i64, ptr %i.qg, align 8
  store i64 %i.qh, ptr %i.f, align 16
  %i.qi = load ptr, ptr %i.ib, align 8
  %i.qj = call i64 @TidStoreMemoryUsage(ptr noundef %i.qi) #6
  store i64 %i.qj, ptr %i.ji, align 8
  call void @pgstat_progress_update_multi_param(i32 noundef 2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.qk = load i8, ptr %i.jj, align 4, !range !4, !noundef !5
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.qm = load i32, ptr %i.do, align 4
end_hunk_0
begin_hunk_1_@heap_vacuum_rel:bb.a

._crit_edge.i:                                    ; preds = %bb.dz, %bb.du
  %i.xh = load ptr, ptr %i.at, align 8
  %i.xi = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef %i.xh, i32 noundef 0) #6
  %.not44.i = icmp eq i32 %i.xi, %.041.i
  br i1 %.not44.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i
  %i.xj = load ptr, ptr %i.at, align 8
  call void @UnlockRelation(ptr noundef %i.xj, i32 noundef 8) #6
  br label %lazy_truncate_heap.exit

bb.eb:                                            ; preds = %._crit_edge.i
  %i.xk = load i8, ptr @timing_tsc_enabled, align 1, !range !4, !noundef !5
  %i.xl = trunc nuw i8 %i.xk to i1
  br i1 %i.xl, label %bb.ec, label %bb.ed, !prof !18

bb.ec:                                            ; preds = %bb.eb
  %i.xm = call { i64, i32 } @llvm.x86.rdtscp()
  %i.xn = extractvalue { i64, i32 } %i.xm, 0
  br label %pg_get_ticks.exit75.i.i

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.xo = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #6 ; 0 uses
  %i.xp = load i64, ptr %4, align 8
  %i.xq = mul i64 %i.xp, 1000000000
  %i.xr = load i64, ptr %i.wq, align 8
  %i.xs = add i64 %i.xq, %i.xr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %pg_get_ticks.exit75.i.i

pg_get_ticks.exit75.i.i:                          ; preds = %bb.ed, %bb.ec
  %.sroa.0.0.i74.i.i = phi i64 [ %i.xn, %bb.ec ], [ %i.xs, %bb.ed ]
  %i.xt = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.xu = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.xv = icmp ugt i32 %i.xt, %i.xu
  br i1 %i.xv, label %.lr.ph96.i.i, label %count_nondeletable_pages.exit.i

.lr.ph96.i.i:                                     ; preds = %pg_get_ticks.exit75.i.i, %.critedge.i.i
  %.05795.i.i = phi i32 [ %i.zc, %.critedge.i.i ], [ %i.xt, %pg_get_ticks.exit75.i.i ] ; 5 uses
  %.06394.i.i = phi i32 [ %.164.i.i, %.critedge.i.i ], [ -1, %pg_get_ticks.exit75.i.i ] ; 2 uses
  %.sroa.026.093.i.i = phi i64 [ %.sroa.026.3.i.i, %.critedge.i.i ], [ %.sroa.0.0.i74.i.i, %pg_get_ticks.exit75.i.i ] ; 3 uses
  %i.xw = and i32 %.05795.i.i, 31
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %bb.ee, label %.thread.i.i272

bb.ee:                                            ; preds = %.lr.ph96.i.i
  %i.xy = load i8, ptr @timing_tsc_enabled, align 1, !range !4, !noundef !5
  %i.xz = trunc nuw i8 %i.xy to i1
  br i1 %i.xz, label %bb.ef, label %bb.eg, !prof !18

bb.ef:                                            ; preds = %bb.ee
  %i.ya = call { i64, i32 } @llvm.x86.rdtscp()
  %i.yb = extractvalue { i64, i32 } %i.ya, 0
  br label %pg_get_ticks.exit.i.i

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.yc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #6 ; 0 uses
  %i.yd = load i64, ptr %3, align 8
  %i.ye = mul i64 %i.yd, 1000000000
  %i.yf = load i64, ptr %i.wr, align 8
  %i.yg = add i64 %i.ye, %i.yf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %pg_get_ticks.exit.i.i

pg_get_ticks.exit.i.i:                            ; preds = %bb.eg, %bb.ef
  %.sroa.0.0.i.i.i = phi i64 [ %i.yb, %bb.ef ], [ %i.yg, %bb.eg ] ; 2 uses
  %i.yh = sub i64 %.sroa.0.0.i.i.i, %.sroa.026.093.i.i ; 5 uses
  %i.yi = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.yj = icmp eq i64 %i.yi, 0
  br i1 %i.yj, label %pg_ticks_to_ns.exit.i.i, label %bb.eh

bb.eh:                                            ; preds = %pg_get_ticks.exit.i.i
  %i.yk = load i64, ptr @max_ticks_no_overflow, align 8
  %i.yl = icmp sgt i64 %i.yh, %i.yk
  br i1 %i.yl, label %bb.ei, label %bb.ej, !prof !7

bb.ei:                                            ; preds = %bb.eh
  %i.ym = ashr i64 %i.yh, 14
  %i.yn = mul i64 %i.ym, %i.yi
  %i.yo = and i64 %i.yh, 16383
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.011.i.i.i = phi i64 [ %i.yo, %bb.ei ], [ %i.yh, %bb.eh ]
  %.010.i.i.i = phi i64 [ %i.yn, %bb.ei ], [ 0, %bb.eh ]
  %i.yp = mul i64 %.011.i.i.i, %i.yi
  %i.yq = lshr i64 %i.yp, 14
  %i.yr = add i64 %i.yq, %.010.i.i.i
  br label %pg_ticks_to_ns.exit.i.i

pg_ticks_to_ns.exit.i.i:                          ; preds = %bb.ej, %pg_get_ticks.exit.i.i
  %.0.i.i.i275 = phi i64 [ %i.yr, %bb.ej ], [ %i.yh, %pg_get_ticks.exit.i.i ]
  %i.ys = icmp sgt i64 %.0.i.i.i275, 19999999
  br i1 %i.ys, label %bb.ek, label %.thread.i.i272

bb.ek:                                            ; preds = %pg_ticks_to_ns.exit.i.i
  %i.yt = load ptr, ptr %i.at, align 8
  %i.yu = call zeroext i1 @LockHasWaitersRelation(ptr noundef %i.yt, i32 noundef 8) #6
  br i1 %i.yu, label %bb.el, label %.thread.i.i272

bb.el:                                            ; preds = %bb.ek
  %i.yv = load i8, ptr %i.bj, align 4, !range !4, !noundef !5
  %i.yw = trunc nuw i8 %i.yv to i1
  %i.yx = select i1 %i.yw, i32 17, i32 13
  %i.yy = call zeroext i1 @errstart(i32 noundef %i.yx, ptr noundef null) #6
  br i1 %i.yy, label %bb.em, label %count_nondeletable_pages.exit.i

bb.em:                                            ; preds = %bb.el
  %i.yz = load ptr, ptr %i.bg, align 8
  %i.za = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42, ptr noundef %i.yz) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3324, ptr noundef nonnull @__func__.count_nondeletable_pages) #6
  br label %count_nondeletable_pages.exit.i

.thread.i.i272:                                   ; preds = %bb.ek, %pg_ticks_to_ns.exit.i.i, %.lr.ph96.i.i
  %.sroa.026.3.i.i = phi i64 [ %.sroa.026.093.i.i, %.lr.ph96.i.i ], [ %.sroa.0.0.i.i.i, %bb.ek ], [ %.sroa.026.093.i.i, %pg_ticks_to_ns.exit.i.i ]
  %i.zb = load volatile i32, ptr @InterruptPending, align 4
  %.not.i.i273 = icmp eq i32 %i.zb, 0
  br i1 %.not.i.i273, label %bb.eo, label %bb.en, !prof !18

bb.en:                                            ; preds = %.thread.i.i272
  call void @ProcessInterrupts() #6
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread.i.i272
  %i.zc = add i32 %.05795.i.i, -1                 ; 6 uses
  %i.zd = icmp ugt i32 %.06394.i.i, %i.zc
  br i1 %i.zd, label %bb.ep, label %.loopexit.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.ze = and i32 %i.zc, -32                      ; 2 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.es, %bb.ep
  %.05390.i.i = phi i32 [ %i.ze, %bb.ep ], [ %i.zi, %bb.es ] ; 3 uses
  %i.zf = load ptr, ptr %i.at, align 8
  %i.zg = call i64 @PrefetchBuffer(ptr noundef %i.zf, i32 noundef 0, i32 noundef %.05390.i.i) #6 ; 0 uses
  %i.zh = load volatile i32, ptr @InterruptPending, align 4
  %.not72.i.i = icmp eq i32 %i.zh, 0
  br i1 %.not72.i.i, label %bb.es, label %bb.er, !prof !18

bb.er:                                            ; preds = %bb.eq
  call void @ProcessInterrupts() #6
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.zi = add nuw i32 %.05390.i.i, 1
  %.not69.not.i.i = icmp ult i32 %.05390.i.i, %i.zc
  br i1 %.not69.not.i.i, label %bb.eq, label %.loopexit.i.i, !llvm.loop !12

.loopexit.i.i:                                    ; preds = %bb.es, %bb.eo
  %.164.i.i = phi i32 [ %.06394.i.i, %bb.eo ], [ %i.ze, %bb.es ]
  %i.zj = load ptr, ptr %i.at, align 8
  %i.zk = load ptr, ptr %i.bp, align 8
  %i.zl = call i32 @ReadBufferExtended(ptr noundef %i.zj, i32 noundef 0, i32 noundef %i.zc, i32 noundef 0, ptr noundef %i.zk) #6 ; 6 uses
  call void @LockBufferInternal(i32 noundef %i.zl, i32 noundef 1) #6
  %i.zm = icmp slt i32 %i.zl, 0
  br i1 %i.zm, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %.loopexit.i.i
  %i.zn = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.zo = xor i32 %i.zl, -1
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.zp
  %i.zr = load ptr, ptr %i.zq, align 8
  br label %BufferGetPage.exit.i.i

bb.eu:                                            ; preds = %.loopexit.i.i
  %i.zs = load ptr, ptr @BufferBlocks, align 8
  %i.zt = add nsw i32 %i.zl, -1
  %i.zu = sext i32 %i.zt to i64
  %i.zv = shl nsw i64 %i.zu, 13
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zv
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i = phi ptr [ %i.zr, %bb.et ], [ %i.zw, %bb.eu ] ; 3 uses
  %i.zx = getelementptr i8, ptr %.0.i.i.i.i, i64 14
  %.val76.i.i = load i16, ptr %i.zx, align 2
  %i.zy = icmp eq i16 %.val76.i.i, 0
  br i1 %i.zy, label %.critedge.i.i, label %bb.ev, !llvm.loop !13

bb.ev:                                            ; preds = %BufferGetPage.exit.i.i
  %i.zz = getelementptr i8, ptr %.0.i.i.i.i, i64 12
  %.val77.i.i = load i16, ptr %i.zz, align 4      ; 2 uses
  %i.aaa = icmp ult i16 %.val77.i.i, 25
  br i1 %i.aaa, label %.critedge.i.i, label %bb.ew, !llvm.loop !13

bb.ew:                                            ; preds = %bb.ev
  %i.aab = zext i16 %.val77.i.i to i32
  %i.aac = add nuw nsw i32 %i.aab, 262120
  %i.aad = lshr i32 %i.aac, 2
  %i.aae = trunc i32 %i.aad to i16                ; 2 uses
  %.not70.not91.i.i = icmp eq i16 %i.aae, 0
  br i1 %.not70.not91.i.i, label %.critedge.i.i, label %.lr.ph.i.i274

.lr.ph.i.i274:                                    ; preds = %bb.ew
  %i.aaf = getelementptr i8, ptr %.0.i.i.i.i, i64 20
  %umax.i.i275 = add nuw nsw i16 %i.aae, 1
  %wide.trip.count.i.i276 = zext nneg i16 %umax.i.i275 to i64
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ey
  %indvars.iv.next.i.i278 = add nuw nsw i64 %indvars.iv.i.i277, 1 ; 2 uses
  %exitcond.i.i279 = icmp eq i64 %indvars.iv.next.i.i278, %wide.trip.count.i.i276
  br i1 %exitcond.i.i279, label %.critedge.i.i, label %bb.ey, !llvm.loop !14

bb.ey:                                            ; preds = %bb.ex, %.lr.ph.i.i274
  %indvars.iv.i.i277 = phi i64 [ 1, %.lr.ph.i.i274 ], [ %indvars.iv.next.i.i278, %bb.ex ] ; 2 uses
  %i.aag = getelementptr [4 x i8], ptr %i.aaf, i64 %indvars.iv.i.i277
  %i.aah = load i32, ptr %i.aag, align 4
  %i.aai = and i32 %i.aah, 98304
  %.not71.i.i = icmp eq i32 %i.aai, 0
  br i1 %.not71.i.i, label %bb.ex, label %..thread83.loopexit_crit_edge97.i.i

..thread83.loopexit_crit_edge97.i.i:              ; preds = %bb.ey
  call void @UnlockReleaseBuffer(i32 noundef %i.zl) #6
  br label %count_nondeletable_pages.exit.i

.critedge.i.i:                                    ; preds = %bb.ex, %bb.ew, %bb.ev, %BufferGetPage.exit.i.i
  call void @UnlockReleaseBuffer(i32 noundef %i.zl) #6
  %i.aaj = load i32, ptr %i.cx, align 8           ; 2 uses
  %i.aak = icmp ugt i32 %i.zc, %i.aaj
  br i1 %i.aak, label %.lr.ph96.i.i, label %count_nondeletable_pages.exit.i

count_nondeletable_pages.exit.i:                  ; preds = %.critedge.i.i, %..thread83.loopexit_crit_edge97.i.i, %bb.em, %bb.el, %pg_get_ticks.exit75.i.i
  %.046.i = phi i1 [ false, %pg_get_ticks.exit75.i.i ], [ true, %bb.el ], [ false, %..thread83.loopexit_crit_edge97.i.i ], [ true, %bb.em ], [ false, %.critedge.i.i ]
  %.4.i.i = phi i32 [ %i.xu, %pg_get_ticks.exit75.i.i ], [ %.05795.i.i, %bb.el ], [ %.05795.i.i, %..thread83.loopexit_crit_edge97.i.i ], [ %.05795.i.i, %bb.em ], [ %i.aaj, %.critedge.i.i ] ; 8 uses
  store i32 %.4.i.i, ptr %i.ir, align 8
  %.not45.i = icmp ult i32 %.4.i.i, %.041.i
  %i.aal = load ptr, ptr %i.at, align 8           ; 2 uses
  br i1 %.not45.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %count_nondeletable_pages.exit.i
  call void @UnlockRelation(ptr noundef %i.aal, i32 noundef 8) #6
  br label %lazy_truncate_heap.exit

bb.fa:                                            ; preds = %count_nondeletable_pages.exit.i
  call void @RelationTruncate(ptr noundef %i.aal, i32 noundef %.4.i.i) #6
  %i.aam = load ptr, ptr %i.at, align 8
  call void @UnlockRelation(ptr noundef %i.aam, i32 noundef 8) #6
  %i.aan = sub nuw i32 %.041.i, %.4.i.i
  %i.aao = load i32, ptr %i.ct, align 4
  %i.aap = add i32 %i.aan, %i.aao
  store i32 %i.aap, ptr %i.ct, align 4
  store i32 %.4.i.i, ptr %i.ea, align 8
  %i.aaq = load i8, ptr %i.bj, align 4, !range !4, !noundef !5
  %i.aar = trunc nuw i8 %i.aaq to i1
  %i.aas = select i1 %i.aar, i32 17, i32 13
  %i.aat = call zeroext i1 @errstart(i32 noundef %i.aas, ptr noundef null) #6
  br i1 %i.aat, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.aau = load ptr, ptr %i.bg, align 8
  %i.aav = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef %i.aau, i32 noundef %.041.i, i32 noundef %.4.i.i) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3262, ptr noundef nonnull @__func__.lazy_truncate_heap) #6
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.aaw = load i32, ptr %i.cx, align 8
  %i.aax = icmp ugt i32 %.4.i.i, %i.aaw
  %i.aay = and i1 %.046.i, %i.aax
  br i1 %i.aay, label %bb.du, label %lazy_truncate_heap.exit, !llvm.loop !15

lazy_truncate_heap.exit:                          ; preds = %bb.fc, %bb.ds, %bb.dt, %update_relstats_all_indexes.exit, %bb.ez, %bb.ea, %bb.dy, %bb.dx
  %i.aaz = load ptr, ptr %12, align 8
  store ptr %i.aaz, ptr @error_context_stack, align 8
  call void @pgstat_progress_update_param(i32 noundef 0, i64 noundef 6) #6
  %i.aba = load i8, ptr %i.eh, align 8, !range !4, !noundef !5
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %lazy_truncate_heap.exit
  store i32 0, ptr %i.ee, align 8
  store i32 0, ptr %i.ef, align 4
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %lazy_truncate_heap.exit
  %i.abc = load i32, ptr %i.ea, align 8           ; 5 uses
  call void @visibilitymap_count(ptr noundef nonnull %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u) #6
  %i.abd = load i32, ptr %i.t, align 4            ; 2 uses
  %i.abe = icmp ugt i32 %i.abd, %i.abc
  br i1 %i.abe, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 %i.abc, ptr %i.t, align 4
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.abf = phi i32 [ %i.abc, %bb.ff ], [ %i.abd, %bb.fe ] ; 4 uses
  %i.abg = load i32, ptr %i.u, align 4            ; 2 uses
  %i.abh = icmp ugt i32 %i.abg, %i.abf
  br i1 %i.abh, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 %i.abf, ptr %i.u, align 4
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.abi = phi i32 [ %i.abf, %bb.fh ], [ %i.abg, %bb.fg ]
  %i.abj = load double, ptr %i.cz, align 8
  %i.abk = load i32, ptr %i.bn, align 8
  %i.abl = icmp sgt i32 %i.abk, 0
  %i.abm = load i32, ptr %i.ee, align 8
  %i.abn = load i32, ptr %i.ef, align 4
  call void @vac_update_relstats(ptr noundef nonnull %0, i32 noundef %i.abc, double noundef %i.abj, i32 noundef %i.abf, i32 noundef %i.abi, i1 noundef zeroext %i.abl, i32 noundef %i.abm, i32 noundef %i.abn, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i1 noundef zeroext false) #6
  %i.abo = load double, ptr %i.cz, align 8        ; 2 uses
  %i.abp = fcmp ogt double %i.abo, 0.000000e+00
  %spec.select278 = select i1 %i.abp, double %i.abo, double 0.000000e+00
  %spec.select = fptosi double %spec.select278 to i64
  %i.abq = load i64, ptr %i.dm, align 8
  %i.abr = load i64, ptr %i.dn, align 8
  %i.abs = add i64 %i.abr, %i.abq
  call void @pgstat_report_vacuum(ptr noundef nonnull %0, i64 noundef %spec.select, i64 noundef %i.abs, i64 noundef %i.ak) #6
  call void @pgstat_progress_end_command() #6
  br i1 %i.aj, label %bb.fj, label %.thread364

bb.fj:                                            ; preds = %bb.fi
  %i.abt = call i64 @GetCurrentTimestamp() #6     ; 2 uses
  br i1 %.not, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abv = load i32, ptr %i.abu, align 8          ; 2 uses
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.abx = call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.ak, i64 noundef %i.abt, i32 noundef %i.abv) #6
  br i1 %i.abx, label %bb.fm, label %.thread365

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @TimestampDifference(i64 noundef %i.ak, i64 noundef %i.abt, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  call void @WalUsageAccumDiff(ptr noundef nonnull %13, ptr noundef nonnull @pgWalUsage, ptr noundef nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %14, i8 0, i64 128, i1 false)
  call void @BufferUsageAccumDiff(ptr noundef nonnull %14, ptr noundef nonnull @pgBufferUsage, ptr noundef nonnull %11) #6
  %i.aby = load i64, ptr %14, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.aca = load i64, ptr %i.abz, align 8
  %i.acb = add i64 %i.aca, %i.aby
  %i.acc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.acd = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ace = load <2 x i64>, ptr %i.acc, align 8
  %i.acf = load <2 x i64>, ptr %i.acd, align 8
  %i.acg = add <2 x i64> %i.acf, %i.ace           ; 3 uses
  call void @initStringInfo(ptr noundef nonnull %15) #6
  br i1 %.not, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aci = load i8, ptr %i.ach, align 4, !range !4, !noundef !5
  %i.acj = trunc nuw i8 %i.aci to i1
  %i.ack = load i8, ptr %i.dx, align 8, !range !4, !noundef !5
  %i.acl = trunc nuw i8 %i.ack to i1              ; 2 uses
  br i1 %i.acj, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %.str.4..str.5 = select i1 %i.acl, ptr @.str.4, ptr @.str.5
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %.str.6..str.7 = select i1 %i.acl, ptr @.str.6, ptr @.str.7
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fm
  %.0242 = phi ptr [ %.str.6..str.7, %bb.fp ], [ %.str.4..str.5, %bb.fo ], [ @.str.3, %bb.fm ]
  %i.acm = load ptr, ptr %i.aw, align 8
  %i.acn = load ptr, ptr %i.bc, align 8
  %i.aco = load ptr, ptr %i.bg, align 8
  %i.acp = load i32, ptr %i.df, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %15, ptr noundef nonnull %.0242, ptr noundef %i.acm, ptr noundef %i.acn, ptr noundef %i.aco, i32 noundef %i.acp) #6
  %i.acq = load i32, ptr %i.ct, align 4
  %i.acr = load i32, ptr %i.cr, align 4           ; 2 uses
  %i.acs = icmp eq i32 %i.dz, 0                   ; 3 uses
  %i.act = uitofp i32 %i.acr to double
  %i.acu = fmul nnan double %i.act, 1.000000e+02
  %i.acv = uitofp i32 %i.dz to double             ; 3 uses
  %i.acw = fdiv double %i.acu, %i.acv
  %i.acx = select i1 %i.acs, double 1.000000e+02, double %i.acw
  %i.acy = load i32, ptr %i.cs, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %15, ptr noundef nonnull @.str.8, i32 noundef %i.acq, i32 noundef %i.abc, i32 noundef %i.acr, double noundef %i.acx, i32 noundef %i.acy) #6
  %i.acz = load i64, ptr %i.di, align 8
  %i.ada = load double, ptr %i.cy, align 8
  %i.adb = fptosi double %i.ada to i64
  %i.adc = load i64, ptr %i.dm, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %15, ptr noundef nonnull @.str.9, i64 noundef %i.acz, i64 noundef %i.adb, i64 noundef %i.adc) #6
  %i.add = load i64, ptr %i.dn, align 8           ; 2 uses
  %i.ade = icmp sgt i64 %i.add, 0
  br i1 %i.ade, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.adf = load i32, ptr %i.cw, align 4
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %15, ptr noundef nonnull @.str.10, i64 noundef %i.add, i32 noundef %i.adf) #6
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.adg = call i64 @ReadNextFullTransactionId() #6
  %i.adh = trunc i64 %i.adg to i32
  %i.adi = load i32, ptr %i.ed, align 8           ; 2 uses
  %i.adj = sub i32 %i.adh, %i.adi
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %15, ptr noundef nonnull @.str.11, i32 noundef %i.adi, i32 noundef %i.adj) #6
  %i.adk = load i8, ptr %i.r, align 1, !range !4, !noundef !5
  %i.adl = trunc nuw i8 %i.adk to i1
  br i1 %i.adl, label %bb.ft, label %bb.fu
end_hunk_1
begin_hunk_2_@lazy_vacuum:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 5 uses
  %i.by = load i32, ptr %i.bc, align 8
  %i.bz = sext i32 %i.by to i64
  %.not32.not.i.not.not = icmp sge i64 %indvars.iv.i, %i.bz ; 3 uses
  br i1 %.not32.not.i.not.not, label %lazy_vacuum_all_indexes.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %i.bi, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.bj, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cf = load ptr, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store ptr %i.cc, ptr %2, align 8
  %i.cg = load ptr, ptr %0, align 8
  store ptr %i.cg, ptr %i.bk, align 8
  store i8 0, ptr %i.bl, align 8
  store i8 0, ptr %i.bm, align 1
  store i8 1, ptr %i.bn, align 2
  store i32 13, ptr %i.bo, align 4
  store double %i.ba, ptr %i.bp, align 8
  %i.ch = load ptr, ptr %i.bq, align 8
  store ptr %i.ch, ptr %i.br, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = call ptr @pstrdup(ptr noundef nonnull %i.ck) #6
  store ptr %i.cl, ptr %i.bs, align 8
  %i.cm = load i16, ptr %i.bt, align 4
  %i.cn = load i32, ptr %i.bu, align 8
  %i.co = load i32, ptr %i.bv, align 8
  store i32 -1, ptr %i.bu, align 8
  store i16 0, ptr %i.bt, align 4
  store i32 2, ptr %i.bv, align 8
  %i.cp = load ptr, ptr %i.bw, align 8
  %i.cq = load ptr, ptr %i.bx, align 8
  %i.cr = call ptr @vac_bulkdel_one_index(ptr noundef nonnull %2, ptr noundef %i.cf, ptr noundef %i.cp, ptr noundef %i.cq) #6
  store i32 %i.cn, ptr %i.bu, align 8
  store i16 %i.cm, ptr %i.bt, align 4
  store i32 %i.co, ptr %i.bv, align 8
  %i.cs = load ptr, ptr %i.bs, align 8
  call void @pfree(ptr noundef %i.cs) #6
  store ptr null, ptr %i.bs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.ct = load ptr, ptr %i.bj, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i
  store ptr %i.cr, ptr %i.cu, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  call void @pgstat_progress_update_param(i32 noundef 9, i64 noundef %indvars.iv.next.i) #6
  %i.cv = call fastcc zeroext i1 @lazy_check_wraparound_failsafe(ptr noundef nonnull %0)
  br i1 %i.cv, label %lazy_vacuum_all_indexes.exit, label %bb.k, !llvm.loop !19

bb.m:                                             ; preds = %bb.j
  %i.cw = fptosi float %i.az to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @parallel_vacuum_bulkdel_all_indexes(ptr noundef nonnull %i.bh, i64 noundef %i.cw, i32 noundef %i.cy, ptr noundef nonnull %i.cz) #6
  %i.da = call fastcc zeroext i1 @lazy_check_wraparound_failsafe(ptr noundef nonnull %0)
  %not..i = xor i1 %i.da, true
  br label %lazy_vacuum_all_indexes.exit

lazy_vacuum_all_indexes.exit:                     ; preds = %bb.k, %bb.l, %bb.m
  %.3.i = phi i1 [ %not..i, %bb.m ], [ %.not32.not.i.not.not, %bb.l ], [ %.not32.not.i.not.not, %bb.k ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = add i32 %i.dc, 1                        ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 %i.de, ptr %i.df, align 16
  call void @pgstat_progress_update_multi_param(i32 noundef 3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br i1 %.3.i, label %bb.n, label %bb.ay

bb.n:                                             ; preds = %lazy_vacuum_all_indexes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4
  call void @pgstat_progress_update_param(i32 noundef 0, i64 noundef 3) #6
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 9 uses
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 8 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.dl = load i32, ptr %i.dk, align 8
  store i32 -1, ptr %i.di, align 8
  store i16 0, ptr %i.dg, align 4
  store i32 3, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call ptr @TidStoreBeginIterate(ptr noundef %i.dn) #6 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = call ptr @read_stream_begin_relation(i32 noundef 9, ptr noundef %i.dq, ptr noundef %i.dr, i32 noundef 0, ptr noundef nonnull @vacuum_reap_lp_read_stream_next, ptr noundef %i.do, i64 noundef 16) #6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @vacuum_delay_point(i1 noundef zeroext false) #6
  %i.dt = call i32 @read_stream_next_buffer(ptr noundef %i.ds, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not39.i = icmp eq i32 %i.dt, 0
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.au, %.lr.ph.i
  %i.ec = phi i32 [ %i.dt, %.lr.ph.i ], [ %i.jt, %bb.au ] ; 14 uses
  %.03040.i = phi i32 [ 0, %.lr.ph.i ], [ %i.js, %bb.au ]
  %i.ed = call i32 @BufferGetBlockNumber(i32 noundef %i.ec) #6 ; 6 uses
  store i32 %i.ed, ptr %i.di, align 8
  %i.ee = load ptr, ptr %i.d, align 8
  %i.ef = call i32 @TidStoreGetBlockOffsets(ptr noundef %i.ee, ptr noundef nonnull %i.e, i32 noundef 2048) #6 ; 6 uses
  %i.eg = load ptr, ptr %0, align 8
  call void @visibilitymap_pin(ptr noundef %i.eg, i32 noundef %i.ed, ptr noundef nonnull %i.c) #6
  call void @LockBufferInternal(i32 noundef %i.ec, i32 noundef 3) #6
  %i.eh = load i32, ptr %i.c, align 4             ; 4 uses
  %i.ei = icmp slt i32 %i.ec, 0                   ; 3 uses
  br i1 %i.ei, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ej = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ek = xor i32 %i.ec, -1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8
  br label %BufferGetPage.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.eo = load ptr, ptr @BufferBlocks, align 8
  %i.ep = add nsw i32 %i.ec, -1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 13
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi ptr [ %i.en, %bb.p ], [ %i.es, %bb.q ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.et = zext i32 %i.ed to i64
  call void @pgstat_progress_update_param(i32 noundef 3, i64 noundef %i.et) #6
  %i.eu = load i16, ptr %i.dg, align 4
  %i.ev = load i32, ptr %i.di, align 8
  %i.ew = load i32, ptr %i.dk, align 8
  store i32 %i.ed, ptr %i.di, align 8
  store i16 0, ptr %i.dg, align 4
  store i32 3, ptr %i.dk, align 8
  %i.ex = load ptr, ptr %0, align 8
  %i.ey = load ptr, ptr %i.du, align 8
  br i1 %i.ei, label %bb.r, label %bb.s

bb.r:                                             ; preds = %BufferGetPage.exit.i.i
  %i.ez = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.fa = xor i32 %i.ec, -1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8
  br label %BufferGetPage.exit.i.i.i

bb.s:                                             ; preds = %BufferGetPage.exit.i.i
  %i.fe = load ptr, ptr @BufferBlocks, align 8
  %i.ff = add nsw i32 %i.ec, -1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fh
  br label %BufferGetPage.exit.i.i.i

BufferGetPage.exit.i.i.i:                         ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi ptr [ %i.fd, %bb.r ], [ %i.fi, %bb.s ] ; 3 uses
  %i.fj = call i32 @BufferGetBlockNumber(i32 noundef %i.ec) #6 ; 2 uses
  %i.fk = getelementptr i8, ptr %.0.i.i.i.i.i, i64 12
  %.val.i.i.i = load i16, ptr %i.fk, align 4      ; 2 uses
  %i.fl = icmp ult i16 %.val.i.i.i, 25
  %i.fm = zext i16 %.val.i.i.i to i32
  %i.fn = add nuw nsw i32 %i.fm, 262120           ; 2 uses
  %3 = and i32 %i.fn, 262140
  %.not7576.i.i.i = icmp eq i32 %3, 0
  %.not75.i.i.i = select i1 %i.fl, i1 true, i1 %.not7576.i.i.i
  br i1 %.not75.i.i.i, label %.loopexit.i.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BufferGetPage.exit.i.i.i
  %4 = lshr i32 %i.fn, 2
  %i.fo = getelementptr i8, ptr %.0.i.i.i.i.i, i64 20
  %i.fp = lshr i32 %i.fj, 16
  %i.fq = trunc nuw i32 %i.fp to i16
  %i.fr = trunc i32 %i.fj to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %.mask.i.i.i = and i32 %4, 65535
  %5 = call i32 @llvm.umax.i32(i32 %.mask.i.i.i, i32 1)
  %narrow.i.i = add nuw nsw i32 %5, 1
  %6 = zext nneg i32 %narrow.i.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.ae, %.lr.ph.i.i.i
  %.061.i.i = phi i8 [ 1, %.lr.ph.i.i.i ], [ %.162.i.i, %bb.ae ] ; 4 uses
  %.059.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.160.i.i, %bb.ae ] ; 8 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ae ] ; 4 uses
  %.05074.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1.ph.i.i.i, %bb.ae ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %7 = trunc nuw i64 %indvars.iv.i.i.i to i16     ; 2 uses
  store i16 %7, ptr %i.dg, align 4
  %i.ft = getelementptr [4 x i8], ptr %i.fo, i64 %indvars.iv.i.i.i
  %i.fu = load i32, ptr %i.ft, align 4            ; 4 uses
  %i.fv = lshr i32 %i.fu, 15
  %i.fw = and i32 %i.fv, 3
  switch i32 %i.fw, label %bb.u [
    i32 0, label %bb.ae
    i32 2, label %bb.ae
  ]

bb.u:                                             ; preds = %bb.t
  store i16 %i.fq, ptr %i.dv, align 4
  store i16 %i.fr, ptr %i.dw, align 2
  store i16 %7, ptr %i.dx, align 8
  %i.fx = and i32 %i.fu, 98304
  %i.fy = icmp eq i32 %i.fx, 98304
  br i1 %i.fy, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not59.i.i.i = icmp slt i32 %.05074.i.i.i, %i.ef
  br i1 %.not59.i.i.i, label %bb.w, label %heap_page_would_be_all_visible.exit.sink.split.i.i

bb.w:                                             ; preds = %bb.v
  %i.fz = sext i32 %.05074.i.i.i to i64
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2
  %8 = zext i16 %i.gb to i64
  %.not60.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %8
  br i1 %.not60.i.i.i, label %bb.x, label %heap_page_would_be_all_visible.exit.sink.split.i.i

bb.x:                                             ; preds = %bb.w
  %i.gc = add nsw i32 %.05074.i.i.i, 1
  br label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.gd = and i32 %i.fu, 32767
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.ge
  store ptr %i.gf, ptr %i.dy, align 8
  %i.gg = lshr i32 %i.fu, 17
  store i32 %i.gg, ptr %1, align 8
  %i.gh = load i32, ptr %i.fs, align 8
  store i32 %i.gh, ptr %i.dz, align 4
  %i.gi = call i32 @HeapTupleSatisfiesVacuumHorizon(ptr noundef nonnull %1, i32 noundef %i.ec, ptr noundef nonnull %i.a) #6
  switch i32 %i.gi, label %bb.ad [
    i32 1, label %bb.z
    i32 0, label %heap_page_would_be_all_visible.exit.sink.split.i.i
    i32 2, label %heap_page_would_be_all_visible.exit.sink.split.i.i
    i32 3, label %heap_page_would_be_all_visible.exit.sink.split.i.i
    i32 4, label %heap_page_would_be_all_visible.exit.sink.split.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.gj = load ptr, ptr %i.dy, align 8            ; 3 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 20
  %.val62.i.i.i = load i16, ptr %i.gk, align 4    ; 2 uses
  %i.gl = and i16 %.val62.i.i.i, 256
  %.not.i.i.i = icmp eq i16 %i.gl, 0
  br i1 %.not.i.i.i, label %heap_page_would_be_all_visible.exit.sink.split.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = and i16 %.val62.i.i.i, 768
  %i.gn = icmp eq i16 %i.gm, 768
  br i1 %i.gn, label %HeapTupleHeaderGetXmin.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val2.i.i.i.i = load i32, ptr %i.gj, align 4
  br label %HeapTupleHeaderGetXmin.exit.i.i.i

HeapTupleHeaderGetXmin.exit.i.i.i:                ; preds = %bb.ab, %bb.aa
  %i.go = phi i32 [ %.val2.i.i.i.i, %bb.ab ], [ 2, %bb.aa ] ; 4 uses
  %i.gp = icmp ugt i32 %i.go, 2                   ; 2 uses
  %i.gq = icmp ugt i32 %.059.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.gq, %i.gp
  %i.gr = sub i32 %i.go, %.059.i.i
  %i.gs = icmp sgt i32 %i.gr, 0
  %i.gt = icmp ugt i32 %i.go, %.059.i.i
  %.0.i63.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.gs, i1 %i.gt
  %or.cond.i.i.i = and i1 %i.gp, %.0.i63.i.i.i
  %spec.select74.i.i = select i1 %or.cond.i.i.i, i32 %i.go, i32 %.059.i.i ; 2 uses
  %i.gu = trunc nuw i8 %.061.i.i to i1
  br i1 %i.gu, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %HeapTupleHeaderGetXmin.exit.i.i.i
  %i.gv = call zeroext i1 @heap_tuple_needs_eventual_freeze(ptr noundef nonnull %i.gj) #6
  %not..i.i = xor i1 %i.gv, true
  %spec.select75.i.i = zext i1 %not..i.i to i8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.gw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.gx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.36) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3730, ptr noundef nonnull @__func__.heap_page_would_be_all_visible) #6
  unreachable

bb.ae:                                            ; preds = %bb.ac, %HeapTupleHeaderGetXmin.exit.i.i.i, %bb.x, %bb.t, %bb.t
  %.162.i.i = phi i8 [ %.061.i.i, %bb.x ], [ %.061.i.i, %bb.t ], [ %spec.select75.i.i, %bb.ac ], [ 0, %HeapTupleHeaderGetXmin.exit.i.i.i ], [ %.061.i.i, %bb.t ] ; 3 uses
  %.160.i.i = phi i32 [ %.059.i.i, %bb.x ], [ %.059.i.i, %bb.t ], [ %spec.select74.i.i, %bb.ac ], [ %spec.select74.i.i, %HeapTupleHeaderGetXmin.exit.i.i.i ], [ %.059.i.i, %bb.t ] ; 6 uses
  %.1.ph.i.i.i = phi i32 [ %i.gc, %bb.x ], [ %.05074.i.i.i, %bb.t ], [ %.05074.i.i.i, %bb.ac ], [ %.05074.i.i.i, %HeapTupleHeaderGetXmin.exit.i.i.i ], [ %.05074.i.i.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %6
  br i1 %exitcond.not.i.i, label %.loopexit.i.i.i, label %bb.t, !llvm.loop !20

.loopexit.i.i.i:                                  ; preds = %bb.ae
  %i.gy = icmp ugt i32 %.160.i.i, 2
  br i1 %i.gy, label %bb.af, label %.loopexit.i.thread.i.i

bb.af:                                            ; preds = %.loopexit.i.i.i
  %i.gz = call zeroext i1 @GlobalVisTestXidConsideredRunning(ptr noundef %i.ey, i32 noundef %.160.i.i, i1 noundef zeroext true) #6
  br i1 %i.gz, label %heap_page_would_be_all_visible.exit.i.i, label %.loopexit.i.thread.i.i

heap_page_would_be_all_visible.exit.sink.split.i.i: ; preds = %bb.z, %bb.y, %bb.y, %bb.y, %bb.y, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %heap_page_would_be_all_visible.exit.i.i

heap_page_would_be_all_visible.exit.i.i:          ; preds = %heap_page_would_be_all_visible.exit.sink.split.i.i, %bb.af
  %.4.i.i = phi i32 [ %.160.i.i, %bb.af ], [ %.059.i.i, %heap_page_would_be_all_visible.exit.sink.split.i.i ]
  store i16 0, ptr %i.dg, align 4
  br label %bb.ag

.loopexit.i.thread.i.i:                           ; preds = %bb.af, %.loopexit.i.i.i, %BufferGetPage.exit.i.i.i
  %.364.ph.i.i = phi i8 [ %.162.i.i, %bb.af ], [ %.162.i.i, %.loopexit.i.i.i ], [ 1, %BufferGetPage.exit.i.i.i ]
  %.4.ph.i.i = phi i32 [ %.160.i.i, %bb.af ], [ %.160.i.i, %.loopexit.i.i.i ], [ 0, %BufferGetPage.exit.i.i.i ]
  store i16 0, ptr %i.dg, align 4
  %i.ha = trunc nuw i8 %.364.ph.i.i to i1         ; 2 uses
  %spec.select.i.i = select i1 %i.ha, i8 3, i8 1
  call void @LockBufferInternal(i32 noundef %i.eh, i32 noundef 3) #6
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.thread.i.i, %heap_page_would_be_all_visible.exit.i.i
  %.472.i.i = phi i32 [ %.4.ph.i.i, %.loopexit.i.thread.i.i ], [ %.4.i.i, %heap_page_would_be_all_visible.exit.i.i ]
  %.36471.i.i = phi i1 [ %i.ha, %.loopexit.i.thread.i.i ], [ false, %heap_page_would_be_all_visible.exit.i.i ]
  %.1.i.i = phi i8 [ %spec.select.i.i, %.loopexit.i.thread.i.i ], [ 0, %heap_page_would_be_all_visible.exit.i.i ] ; 4 uses
  %i.hb = load volatile i32, ptr @CritSectionCount, align 4
  %i.hc = add i32 %i.hb, 1
  store volatile i32 %i.hc, ptr @CritSectionCount, align 4
  %i.hd = icmp sgt i32 %i.ef, 0
  br i1 %i.hd, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.he = getelementptr i8, ptr %.0.i.i.i.i, i64 20 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ef to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.hf = icmp ult i32 %i.ef, 4
  br i1 %i.hf, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.ai

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.ah ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i.i.epil
  %i.hh = load i16, ptr %i.hg, align 2            ; 2 uses
  %i.hi = zext i16 %i.hh to i64
  %i.hj = getelementptr [4 x i8], ptr %i.he, i64 %i.hi
  store i32 0, ptr %i.hj, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil
  store i16 %i.hh, ptr %i.hk, align 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %bb.ah, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.ah, %bb.ag
  %.0.lcssa.i.i = phi i32 [ 0, %bb.ag ], [ %i.ef, %bb.ah ], [ %i.ef, %._crit_edge.i.i.loopexit.unr-lcssa ]
  call void @PageTruncateLinePointerArray(ptr noundef %.0.i.i.i.i) #6
  %.not.i.i = icmp eq i8 %.1.i.i, 0               ; 2 uses
  br i1 %.not.i.i, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.ai ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.ai ]
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.hm = load i16, ptr %i.hl, align 8            ; 2 uses
  %i.hn = zext i16 %i.hm to i64
  %i.ho = getelementptr [4 x i8], ptr %i.he, i64 %i.hn
  store i32 0, ptr %i.ho, align 4
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i16 %i.hm, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i.i
  %i.hr = load i16, ptr %i.hq, align 2            ; 2 uses
  %i.hs = zext i16 %i.hr to i64
  %i.ht = getelementptr [4 x i8], ptr %i.he, i64 %i.hs
  store i32 0, ptr %i.ht, align 4
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  store i16 %i.hr, ptr %i.hu, align 2
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.1
  %i.hw = load i16, ptr %i.hv, align 4            ; 2 uses
  %i.hx = zext i16 %i.hw to i64
  %i.hy = getelementptr [4 x i8], ptr %i.he, i64 %i.hx
  store i32 0, ptr %i.hy, align 4
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.1
  store i16 %i.hw, ptr %i.hz, align 4
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.2
  %i.ib = load i16, ptr %i.ia, align 2            ; 2 uses
  %i.ic = zext i16 %i.ib to i64
  %i.id = getelementptr [4 x i8], ptr %i.he, i64 %i.ic
  store i32 0, ptr %i.id, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.2
  store i16 %i.ib, ptr %i.ie, align 2
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !22

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 10 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 2
  %i.ih = or i16 %i.ig, 4
  store i16 %i.ih, ptr %i.if, align 2
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 0, ptr %i.ii, align 4
  %i.ij = load ptr, ptr %0, align 8               ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ij, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @visibilitymap_set(i32 noundef %i.ed, i32 noundef %i.eh, i8 noundef zeroext %.1.i.i, i64 %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i) #6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i.i
  %.048.i.i = phi i32 [ %.472.i.i, %bb.aj ], [ 0, %._crit_edge.i.i ]
  call void @MarkBufferDirty(i32 noundef %i.ec) #6
  %i.ik = load ptr, ptr %0, align 8               ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 118
  %i.io = load i8, ptr %i.in, align 2
  %i.ip = icmp eq i8 %i.io, 112
  br i1 %i.ip, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i32, ptr @wal_level, align 4
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.iw = load i32, ptr %i.iv, align 8
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.iy = select i1 %.not.i.i, i32 0, i32 %i.eh
  call void @log_heap_prune_and_freeze(ptr noundef nonnull %i.ik, i32 noundef %i.ec, i32 noundef %i.iy, i8 noundef zeroext %.1.i.i, i32 noundef %.048.i.i, i1 noundef zeroext false, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef %.0.lcssa.i.i) #6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %i.iz = load volatile i32, ptr @CritSectionCount, align 4
  %i.ja = add i32 %i.iz, -1
  store volatile i32 %i.ja, ptr @CritSectionCount, align 4
  %i.jb = and i8 %.1.i.i, 1
  %.not52.i.i = icmp eq i8 %i.jb, 0
  br i1 %.not52.i.i, label %lazy_vacuum_heap_page.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @UnlockBuffer(i32 noundef %i.eh) #6
  %i.jc = load i32, ptr %i.ea, align 4
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr %i.ea, align 4
  br i1 %.36471.i.i, label %bb.ar, label %lazy_vacuum_heap_page.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.je = load i32, ptr %i.eb, align 8
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.eb, align 8
  br label %lazy_vacuum_heap_page.exit.i

lazy_vacuum_heap_page.exit.i:                     ; preds = %bb.ar, %bb.aq, %bb.ap
  store i32 %i.ev, ptr %i.di, align 8
  store i16 %i.eu, ptr %i.dg, align 4
  store i32 %i.ew, ptr %i.dk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br i1 %i.ei, label %bb.as, label %bb.at

bb.as:                                            ; preds = %lazy_vacuum_heap_page.exit.i
  %i.jg = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.jh = xor i32 %i.ec, -1
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8
end_hunk_2
begin_hunk_3_@lazy_vacuum:bb.a
lazy_vacuum_heap_rel.exit:                        ; preds = %bb.aw, %bb.ax
  store i32 %i.dj, ptr %i.di, align 8
  store i16 %i.dh, ptr %i.dg, align 4
  store i32 %i.dl, ptr %i.dk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.ay

bb.ay:                                            ; preds = %lazy_vacuum_all_indexes.exit.thread, %lazy_vacuum_heap_rel.exit, %lazy_vacuum_all_indexes.exit, %bb.i
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = add i32 %i.ke, 1
  store i32 %i.kf, ptr %i.kd, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = call i64 @TidStoreMemoryUsage(ptr noundef %i.kh) #6
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = add i64 %i.kk, %i.ki
  store i64 %i.kl, ptr %i.kj, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8            ; 2 uses
  %.not.i15 = icmp eq ptr %i.kn, null
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  br i1 %.not.i15, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @parallel_vacuum_reset_dead_items(ptr noundef nonnull %i.kn) #6
  %i.kp = load ptr, ptr %i.km, align 8
  %i.kq = call ptr @parallel_vacuum_get_dead_items(ptr noundef %i.kp, ptr noundef nonnull %i.ko) #6
  store ptr %i.kq, ptr %i.kg, align 8
  br label %dead_items_reset.exit

bb.ba:                                            ; preds = %bb.ay
  %i.kr = load ptr, ptr %i.kg, align 8
  call void @TidStoreDestroy(ptr noundef %i.kr) #6
  %i.ks = load ptr, ptr %i.ko, align 8
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = call ptr @TidStoreCreateLocal(i64 noundef %i.kt, i1 noundef zeroext true) #6
  store ptr %i.ku, ptr %i.kg, align 8
  %i.kv = load ptr, ptr %i.ko, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 0, ptr %i.kw, align 8
  br label %dead_items_reset.exit

dead_items_reset.exit:                            ; preds = %bb.ba, %bb.az, %bb.d, %bb.c
  ret void
}

declare void @FreeSpaceMapVacuumRange(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @read_stream_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CheckBufferIsPinnedOnce(i32 noundef) local_unnamed_addr #2

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #2

declare void @visibilitymap_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @ConditionalLockBufferForCleanup(i32 noundef) local_unnamed_addr #2

declare void @LockBufferForCleanup(i32 noundef) local_unnamed_addr #2

declare i64 @PageGetHeapFreeSpace(ptr noundef) local_unnamed_addr #2

declare void @UnlockReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare void @RecordPageWithFreeSpace(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare double @vac_estimate_reltuples(ptr noundef, i32 noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare void @read_stream_end(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @visibilitymap_get_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @parallel_vacuum_reset_dead_items(ptr noundef) local_unnamed_addr #2

declare ptr @parallel_vacuum_get_dead_items(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @TidStoreDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @TidStoreCreateLocal(i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @parallel_vacuum_bulkdel_all_indexes(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @vac_bulkdel_one_index(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @TidStoreBeginIterate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @vacuum_reap_lp_read_stream_next(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @TidStoreIterateNext(ptr noundef %1) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.c = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @TidStoreGetBlockOffsets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @TidStoreEndIterate(ptr noundef) local_unnamed_addr #2

declare ptr @TidStoreIterateNext(ptr noundef) local_unnamed_addr #2

declare void @PageTruncateLinePointerArray(ptr noundef) local_unnamed_addr #2

declare void @visibilitymap_set(i32 noundef, i32 noundef, i8 noundef zeroext, i64, i32) local_unnamed_addr #2

declare void @MarkBufferDirty(i32 noundef) local_unnamed_addr #2

declare void @log_heap_prune_and_freeze(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @HeapTupleSatisfiesVacuumHorizon(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @heap_tuple_needs_eventual_freeze(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @GlobalVisTestXidConsideredRunning(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @UnlockBuffer(i32 noundef) local_unnamed_addr #2

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @GetRecordedFreeSpace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @heap_tuple_should_freeze(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @HeapTupleSatisfiesVacuum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @TidStoreSetBlockOffsets(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @heap_page_prune_and_freeze(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -65535, 65536) i32 @cmpOffsetNumbers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = load i16, ptr %1, align 2
  %i.c = zext i16 %i.a to i32
  %i.d = zext i16 %i.b to i32
  %i.e = sub nsw i32 %i.c, %i.d
  ret i32 %i.e
}

declare void @parallel_vacuum_cleanup_all_indexes(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @vac_cleanup_one_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @vacuum_xid_failsafe_check(ptr noundef) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @ConditionalLockRelation(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ProcessInterrupts() local_unnamed_addr #2

declare i32 @WaitLatch(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @ResetLatch(ptr noundef) local_unnamed_addr #2

declare void @UnlockRelation(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RelationTruncate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @LockHasWaitersRelation(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @PrefetchBuffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ReadBufferExtended(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare { i64, i32 } @llvm.x86.rdtscp() #6

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @parallel_vacuum_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare void @parallel_vacuum_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @set_errcontext_domain(ptr noundef) local_unnamed_addr #2

declare i32 @errcontext_msg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
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
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !23}
!22 = distinct !{!22, !6}
!23 = !{!"llvm.loop.unroll.disable"}
end_hunk_3
