Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginvacuum?download=true
inline.NumInlined: 89
inline.NumDeleted: 23
begin_hunk_0_@ginbulkdelete:bb.a
  br label %BufferGetPage.exit.i68

BufferGetPage.exit.i68:                           ; preds = %bb.aq, %bb.ap
  %.0.i.i.i69 = phi ptr [ %i.go, %bb.ap ], [ %i.gt, %bb.aq ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 118
  %i.gx = load i8, ptr %i.gw, align 2
  %i.gy = icmp eq i8 %i.gx, 112
  br i1 %i.gy, label %bb.ar, label %xlogVacuumPage.exit

bb.ar:                                            ; preds = %BufferGetPage.exit.i68
  %i.gz = load i32, ptr @wal_level, align 4
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.at, label %xlogVacuumPage.exit

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.au, label %xlogVacuumPage.exit

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @XLogBeginInsert() #6
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %.2, i8 noundef zeroext 9) #6
  %i.hh = call i64 @XLogInsert(i8 noundef zeroext 13, i8 noundef zeroext 64) #6 ; 2 uses
  %i.hi = call i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 32)
  store volatile i64 %i.hi, ptr %.0.i.i.i69, align 8
  br label %xlogVacuumPage.exit

xlogVacuumPage.exit:                              ; preds = %BufferGetPage.exit.i68, %bb.as, %bb.at, %bb.au
  %i.hj = load volatile i32, ptr @CritSectionCount, align 4
  %i.hk = add i32 %i.hj, -1
  store volatile i32 %i.hk, ptr @CritSectionCount, align 4
  br label %bb.av

bb.av:                                            ; preds = %ginVacuumEntryPage.exit, %ginVacuumEntryPage.exit.thread, %xlogVacuumPage.exit
  %i.hl = phi i32 [ %i.gg, %xlogVacuumPage.exit ], [ %i.da, %ginVacuumEntryPage.exit.thread ], [ %i.gg, %ginVacuumEntryPage.exit ] ; 2 uses
  %.276106 = phi i32 [ %.175, %xlogVacuumPage.exit ], [ 0, %ginVacuumEntryPage.exit.thread ], [ %.175, %ginVacuumEntryPage.exit ] ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %.2) #6
  call void @vacuum_delay_point(i1 noundef zeroext false) #6
  %.not85 = icmp eq i32 %.276106, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.av
  %wide.trip.count = zext i32 %.276106 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ginVacuumPostingTree.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %ginVacuumPostingTree.exit ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.hn = load i32, ptr %i.hm, align 4            ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %.lr.ph
  %.040.i.i = phi i32 [ %i.hn, %.lr.ph ], [ %i.io, %bb.az ]
  %i.ho = load ptr, ptr %5, align 8
  %i.hp = load ptr, ptr %i.l, align 8
  %i.hq = call i32 @ReadBufferExtended(ptr noundef %i.ho, i32 noundef 0, i32 noundef %.040.i.i, i32 noundef 0, ptr noundef %i.hp) #6 ; 8 uses
  call void @LockBufferInternal(i32 noundef %i.hq, i32 noundef 1) #6
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hs = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ht = xor i32 %i.hq, -1
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8
  br label %BufferGetPage.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.hx = load ptr, ptr @BufferBlocks, align 8
  %i.hy = add nsw i32 %i.hq, -1
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 13
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ia
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i = phi ptr [ %i.hw, %bb.ax ], [ %i.ib, %bb.ay ] ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.id = load i16, ptr %i.ic, align 8
  %i.ie = zext i16 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 6
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = and i16 %i.ih, 2
  %.not.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.i, label %bb.az, label %.preheader.i.i

bb.az:                                            ; preds = %BufferGetPage.exit.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  %.val.i.i = load i16, ptr %i.ij, align 8
  %i.ik = getelementptr i8, ptr %.0.i.i.i.i, i64 34
  %.val44.i.i = load i16, ptr %i.ik, align 2
  %i.il = zext i16 %.val.i.i to i32
  %i.im = shl nuw i32 %i.il, 16
  %i.in = zext i16 %.val44.i.i to i32
  %i.io = or disjoint i32 %i.im, %i.in
  call void @UnlockReleaseBuffer(i32 noundef %i.hq) #6
  br label %bb.aw

.preheader.i.i:                                   ; preds = %BufferGetPage.exit.i.i
  call void @UnlockBuffer(i32 noundef %i.hq) #6
  call void @LockBufferInternal(i32 noundef %i.hq, i32 noundef 3) #6
  br label %BufferGetPage.exit46.i.i

BufferGetPage.exit46.i.i:                         ; preds = %BufferGetPage.exit46.i.i.backedge, %.preheader.i.i
  %.039.i.i = phi i32 [ %i.hq, %.preheader.i.i ], [ %i.jn, %BufferGetPage.exit46.i.i.backedge ] ; 3 uses
  %.038.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i ], [ %.038.i.i.be, %BufferGetPage.exit46.i.i.backedge ] ; 3 uses
  %.037.i.i = phi i1 [ false, %.preheader.i.i ], [ %.1.i13.i, %BufferGetPage.exit46.i.i.backedge ] ; 2 uses
  %i.ip = load ptr, ptr %i.g, align 8
  %i.iq = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ip, ptr @CurrentMemoryContext, align 8
  %i.ir = load ptr, ptr %5, align 8
  call void @ginVacuumPostingTreeLeaf(ptr noundef %i.ir, i32 noundef %.039.i.i, ptr noundef nonnull %5) #6
  store ptr %i.iq, ptr @CurrentMemoryContext, align 8
  %i.is = load ptr, ptr %i.g, align 8
  call void @MemoryContextReset(ptr noundef %i.is) #6
  %i.it = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 16
  %i.iu = load i16, ptr %i.it, align 8
  %i.iv = zext i16 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 %i.iv ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 6
  %i.iy = load i16, ptr %i.ix, align 2
  %i.iz = and i16 %i.iy, 128
  %.not43.i.i = icmp eq i16 %i.iz, 0
  br i1 %.not43.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %BufferGetPage.exit46.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 12
  %i.jb = load i16, ptr %i.ja, align 4
  %i.jc = icmp eq i16 %i.jb, 32
  br i1 %i.jc, label %.thread.i, label %bb.bc

bb.bb:                                            ; preds = %BufferGetPage.exit46.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.je = load i16, ptr %i.jd, align 4
  %i.jf = icmp eq i16 %i.je, 0
  br i1 %i.jf, label %.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jg = load i32, ptr %i.iw, align 4            ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %.039.i.i) #6
  %i.jh = icmp eq i32 %i.jg, -1
  br i1 %i.jh, label %ginVacuumPostingTreeLeaves.exit.i, label %bb.bd

.thread.i:                                        ; preds = %bb.bb, %bb.ba
  %i.ji = load i32, ptr %i.iw, align 4            ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %.039.i.i) #6
  %i.jj = icmp eq i32 %i.ji, -1
  br i1 %i.jj, label %ginVacuumPostingTreeLeaves.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %.thread.i, %bb.bc
  %i.jk = phi i32 [ %i.ji, %.thread.i ], [ %i.jg, %bb.bc ]
  %.1.i13.i = phi i1 [ true, %.thread.i ], [ %.037.i.i, %bb.bc ]
  %i.jl = load ptr, ptr %5, align 8
  %i.jm = load ptr, ptr %i.l, align 8
  %i.jn = call i32 @ReadBufferExtended(ptr noundef %i.jl, i32 noundef 0, i32 noundef %i.jk, i32 noundef 0, ptr noundef %i.jm) #6 ; 5 uses
  call void @LockBufferInternal(i32 noundef %i.jn, i32 noundef 3) #6
  %i.jo = icmp slt i32 %i.jn, 0
  br i1 %i.jo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jp = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.jq = xor i32 %i.jn, -1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8
  br label %BufferGetPage.exit46.i.i.backedge

bb.bf:                                            ; preds = %bb.bd
  %i.ju = load ptr, ptr @BufferBlocks, align 8
  %i.jv = add nsw i32 %i.jn, -1
  %i.jw = sext i32 %i.jv to i64
  %i.jx = shl nsw i64 %i.jw, 13
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jx
  br label %BufferGetPage.exit46.i.i.backedge

BufferGetPage.exit46.i.i.backedge:                ; preds = %bb.bf, %bb.be
  %.038.i.i.be = phi ptr [ %i.jy, %bb.bf ], [ %i.jt, %bb.be ]
  br label %BufferGetPage.exit46.i.i

ginVacuumPostingTreeLeaves.exit.i:                ; preds = %bb.bc
  br i1 %.037.i.i, label %ginVacuumPostingTreeLeaves.exit.thread.i, label %ginVacuumPostingTree.exit

ginVacuumPostingTreeLeaves.exit.thread.i:         ; preds = %.thread.i, %ginVacuumPostingTreeLeaves.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.jz = load ptr, ptr %5, align 8
  %i.ka = load ptr, ptr %i.l, align 8
  %i.kb = call i32 @ReadBufferExtended(ptr noundef %i.jz, i32 noundef 0, i32 noundef %i.hn, i32 noundef 0, ptr noundef %i.ka) #6 ; 3 uses
  call void @LockBufferForCleanup(i32 noundef %i.kb) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %6 = zext i32 %i.kb to i64
  store i64 %6, ptr %i.cd, align 8
  store i8 1, ptr %i.ce, align 2
  %i.kc = call fastcc zeroext i1 @ginScanPostingTreeToDelete(ptr noundef nonnull %5, ptr noundef nonnull %4) ; 0 uses
  %i.kd = load ptr, ptr %4, align 8               ; 2 uses
  %.not17.i = icmp eq ptr %i.kd, null
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %ginVacuumPostingTreeLeaves.exit.thread.i, %.lr.ph.i70
  %.018.i = phi ptr [ %i.ke, %.lr.ph.i70 ], [ %i.kd, %ginVacuumPostingTreeLeaves.exit.thread.i ] ; 2 uses
  %i.ke = load ptr, ptr %.018.i, align 8          ; 2 uses
  call void @pfree(ptr noundef nonnull %.018.i) #6
  %.not.i71 = icmp eq ptr %i.ke, null
  br i1 %.not.i71, label %._crit_edge.i, label %.lr.ph.i70, !llvm.loop !9

._crit_edge.i:                                    ; preds = %.lr.ph.i70, %ginVacuumPostingTreeLeaves.exit.thread.i
  call void @UnlockReleaseBuffer(i32 noundef %i.kb) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %ginVacuumPostingTree.exit

ginVacuumPostingTree.exit:                        ; preds = %ginVacuumPostingTreeLeaves.exit.i, %._crit_edge.i
  call void @vacuum_delay_point(i1 noundef zeroext false) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %ginVacuumPostingTree.exit, %bb.av
  %i.kf = icmp eq i32 %i.hl, -1
  br i1 %i.kf, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge
  %i.kg = load ptr, ptr %i.j, align 8
  %i.kh = call i32 @ReadBufferExtended(ptr noundef %i.d, i32 noundef 0, i32 noundef %i.hl, i32 noundef 0, ptr noundef %i.kg) #6 ; 2 uses
  call void @LockBufferInternal(i32 noundef %i.kh, i32 noundef 3) #6
  br label %bb.m

bb.bh:                                            ; preds = %._crit_edge
  %i.ki = load ptr, ptr %i.g, align 8
  call void @MemoryContextDelete(ptr noundef %i.ki) #6
  %i.kj = load ptr, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret ptr %i.kj
}

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @initGinState(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare void @ginInsertCleanup(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @ReadBufferExtended(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UnlockReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare void @PageRestoreTempPage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MarkBufferDirty(i32 noundef) local_unnamed_addr #2

declare void @vacuum_delay_point(i1 noundef zeroext) local_unnamed_addr #2

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ginvacuumcleanup(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GinState, align 8           ; 6 uses
  %3 = alloca %struct.GinStatsData, align 8       ; 8 uses
  %4 = alloca %struct.BlockRangeReadStreamPrivate, align 4 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @MyBackendType, align 4
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @initGinState(ptr noundef nonnull %2, ptr noundef %i.a) #6
  call void @ginInsertCleanup(ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %1) #6
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @palloc0(i64 noundef 40) #6 ; 2 uses
  call void @initGinState(ptr noundef nonnull %2, ptr noundef %i.a) #6
  %i.i = load i32, ptr @MyBackendType, align 4
  %i.j = icmp ne i32 %i.i, 4
  call void @ginInsertCleanup(ptr noundef nonnull %2, i1 noundef zeroext %i.j, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %i.h) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.058 = phi ptr [ %i.h, %bb.e ], [ %1, %bb.d ]  ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double %i.l, double 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %.058, i64 8
  store double %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.q = load i8, ptr %i.p, align 2, !range !13, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.058, i64 4
  store i8 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.thread66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %.thread66

.thread66:                                        ; preds = %bb.g, %bb.f
  %i.y = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %i.a, i32 noundef 0) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @LockRelationForExtension(ptr noundef nonnull %i.a, i32 noundef 7) #6
  %i.z = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %i.a, i32 noundef 0) #6
  call void @UnlockRelationForExtension(ptr noundef nonnull %i.a, i32 noundef 7) #6
  br label %bb.i

bb.i:                                             ; preds = %.thread66, %bb.h
  %i.aa = phi i32 [ %i.y, %.thread66 ], [ %i.z, %bb.h ] ; 4 uses
  %i.ab = phi i1 [ false, %.thread66 ], [ true, %bb.h ]
  store i32 1, ptr %4, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.aa, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call ptr @read_stream_begin_relation(i32 noundef 13, ptr noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull @block_range_read_stream_cb, ptr noundef nonnull %4, i64 noundef 0) #6 ; 2 uses
  %i.ag = icmp ugt i32 %i.aa, 1
  br i1 %i.ag, label %.lr.ph, label %bb.t

.lr.ph:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.s
  %i.ak = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.s ] ; 5 uses
  %i.al = phi i32 [ 0, %.lr.ph ], [ %i.cb, %bb.s ] ; 4 uses
  %i.am = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.s ] ; 5 uses
  %.072 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.s ]  ; 5 uses
  %.05770 = phi i32 [ 1, %.lr.ph ], [ %i.cd, %bb.s ] ; 2 uses
  call void @vacuum_delay_point(i1 noundef zeroext false) #6
  %i.an = call i32 @read_stream_next_buffer(ptr noundef %i.af, ptr noundef null) #6 ; 5 uses
  call void @LockBufferInternal(i32 noundef %i.an, i32 noundef 1) #6
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.aq = xor i32 %i.an, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  br label %BufferGetPage.exit

bb.l:                                             ; preds = %bb.j
  %i.au = load ptr, ptr @BufferBlocks, align 8
  %i.av = add nsw i32 %i.an, -1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.at, %bb.k ], [ %i.ay, %bb.l ] ; 6 uses
  %i.az = getelementptr i8, ptr %.0.i.i, i64 14
  %.val.i = load i16, ptr %i.az, align 2
  %i.ba = icmp eq i16 %.val.i, 0
  br i1 %i.ba, label %GinPageIsRecyclable.exit.thread, label %bb.m

bb.m:                                             ; preds = %BufferGetPage.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %i.bg = load i16, ptr %i.bf, align 2            ; 2 uses
  %i.bh = and i16 %i.bg, 4
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %GinPageIsRecyclable.exit.thread68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
end_hunk_0
