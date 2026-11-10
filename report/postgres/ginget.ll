Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginget?download=true
inline.NumInlined: 178
inline.NumDeleted: 37
begin_hunk_0_@gingetbitmap:bb.a
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kr
  %i.kt = load ptr, ptr %i.ks, align 8
  br label %BufferGetPage.exit.i38.i

bb.at:                                            ; preds = %.peel.next
  %i.ku = load ptr, ptr @BufferBlocks, align 8
  %i.kv = add nsw i32 %i.km, -1
  %i.kw = sext i32 %i.kv to i64
  %i.kx = shl nsw i64 %i.kw, 13
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kx
  br label %BufferGetPage.exit.i38.i

BufferGetPage.exit.i38.i:                         ; preds = %bb.at, %bb.as
  %.0.i.i.i39.i = phi ptr [ %i.kt, %bb.as ], [ %i.ky, %bb.at ] ; 4 uses
  %i.kz = getelementptr i8, ptr %.0.i.i.i39.i, i64 12
  %.val.i40.i = load i16, ptr %i.kz, align 4      ; 2 uses
  %i.la = icmp ult i16 %.val.i40.i, 25
  %i.lb = zext i16 %.val.i40.i to i32
  %i.lc = add nuw nsw i32 %i.lb, 262120
  %i.ld = lshr i32 %i.lc, 2
  %i.le = trunc i32 %i.ld to i16                  ; 2 uses
  %.not55.not.not.i.not.i312 = icmp eq i16 %i.le, 0
  %.not55.not.not.i.not.i = select i1 %i.la, i1 true, i1 %.not55.not.not.i.not.i312
  br i1 %.not55.not.not.i.not.i, label %bb.au, label %.loopexit148

bb.au:                                            ; preds = %BufferGetPage.exit.i38.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i, i64 16
  %i.lg = load i16, ptr %i.lf, align 8
  %i.lh = zext i16 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %.not43.i.i = icmp eq i32 %i.lj, -1
  br i1 %.not43.i.i, label %scanGetCandidate.exit.thread47.i, label %.peel.next, !llvm.loop !14

scanGetCandidate.exit.thread47.i:                 ; preds = %bb.ar, %bb.au
  %.lcssa141 = phi i32 [ %i.km, %bb.au ], [ %.pr.i.i, %bb.ar ]
  call void @UnlockReleaseBuffer(i32 noundef %.lcssa141) #7
  store i32 0, ptr %5, align 8
  br label %.loopexit57.i

.loopexit148:                                     ; preds = %BufferGetPage.exit.i38.i, %BufferGetPage.exit.i38.i.peel
  %.0.i.i.i39.i.lcssa = phi ptr [ %.0.i.i.i39.i.peel, %BufferGetPage.exit.i38.i.peel ], [ %.0.i.i.i39.i, %BufferGetPage.exit.i38.i ] ; 6 uses
  %.0.i.i41.i.lcssa = phi i16 [ %.0.i.i41.i.peel, %BufferGetPage.exit.i38.i.peel ], [ %i.le, %BufferGetPage.exit.i38.i ] ; 3 uses
  %.lcssa142 = phi i16 [ %i.jo, %BufferGetPage.exit.i38.i.peel ], [ 1, %BufferGetPage.exit.i38.i ] ; 2 uses
  %i.lk = zext i16 %.lcssa142 to i64
  %i.ll = getelementptr i8, ptr %.0.i.i.i39.i.lcssa, i64 20 ; 3 uses
  %i.lm = getelementptr [4 x i8], ptr %i.ll, i64 %i.lk
  %.val45.i.i = load i32, ptr %i.lm, align 4
  %i.ln = and i32 %.val45.i.i, 32767
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 %i.lo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aq, ptr noundef nonnull align 2 dereferenceable(6) %i.lp, i64 6, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 16
  %i.lr = load i16, ptr %i.lq, align 8
  %i.ls = zext i16 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 6
  %i.lv = load i16, ptr %i.lu, align 2
  %i.lw = and i16 %i.lv, 32
  %.not.i43.i = icmp eq i16 %i.lw, 0
  br i1 %.not.i43.i, label %bb.ax, label %.peel.begin.i.i

.peel.begin.i.i:                                  ; preds = %.loopexit148
  %storemerge.peel.i.i = add i16 %.lcssa142, 1    ; 3 uses
  store i16 %storemerge.peel.i.i, ptr %i.ap, align 2
  %.not42.peel.i.i = icmp ugt i16 %storemerge.peel.i.i, %.0.i.i41.i.lcssa
  br i1 %.not42.peel.i.i, label %scanGetCandidate.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %.peel.begin.i.i
  %i.lx = zext i16 %storemerge.peel.i.i to i64
  %i.ly = getelementptr [4 x i8], ptr %i.ll, i64 %i.lx
  %.val44.peel.i.i = load i32, ptr %i.ly, align 4
  %i.lz = and i32 %.val44.peel.i.i, 32767
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 %i.ma
  %i.mc = call zeroext i1 @ItemPointerEquals(ptr noundef nonnull %i.aq, ptr noundef %i.mb) #7
  br i1 %i.mc, label %.peel.next.i.i, label %scanGetCandidate.exit.thread.i

.peel.next.i.i:                                   ; preds = %bb.av, %bb.aw
  %storemerge.in.i.i = load i16, ptr %i.ap, align 2
  %storemerge.i.i = add i16 %storemerge.in.i.i, 1 ; 3 uses
  store i16 %storemerge.i.i, ptr %i.ap, align 2
  %.not42.i.i = icmp ugt i16 %storemerge.i.i, %.0.i.i41.i.lcssa
  br i1 %.not42.i.i, label %scanGetCandidate.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %.peel.next.i.i
  %i.md = zext i16 %storemerge.i.i to i64
  %i.me = getelementptr [4 x i8], ptr %i.ll, i64 %i.md
  %.val44.i.i = load i32, ptr %i.me, align 4
  %i.mf = and i32 %.val44.i.i, 32767
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 %i.mg
  %i.mi = call zeroext i1 @ItemPointerEquals(ptr noundef nonnull %i.aq, ptr noundef %i.mh) #7
  br i1 %i.mi, label %.peel.next.i.i, label %scanGetCandidate.exit.thread.i, !llvm.loop !0

bb.ax:                                            ; preds = %.loopexit148
  %i.mj = add nsw i16 %.0.i.i41.i.lcssa, 1
  store i16 %i.mj, ptr %i.ap, align 2
  br label %scanGetCandidate.exit.thread.i

scanGetCandidate.exit.thread.i:                   ; preds = %bb.aw, %.peel.next.i.i, %bb.ax, %bb.av, %.peel.begin.i.i
  %i.mk = call zeroext i1 @ItemPointerEquals(ptr noundef nonnull %i.aq, ptr noundef nonnull %4) #7
  br i1 %i.mk, label %bb.ay, label %.loopexit57.i

.loopexit57.i:                                    ; preds = %scanGetCandidate.exit.thread.i, %scanGetCandidate.exit.thread47.i
  %i.ml = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.mm = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1814, ptr noundef nonnull @__func__.collectMatchesForHeapRow) #7
  unreachable

bb.ay:                                            ; preds = %scanGetCandidate.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.i

.critedge.i.i:                                    ; preds = %._crit_edge171.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.mn = icmp eq i32 %i.ix, 0
  br i1 %i.mn, label %.loopexit.i, label %.lr.ph173.i.i

.lr.ph173.i.i:                                    ; preds = %.critedge.i.i
  %i.mo = load ptr, ptr %i.an, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %.lr.ph173.i.i
  %.2116172.i.i = phi i32 [ 0, %.lr.ph173.i.i ], [ %i.my, %bb.bb ] ; 2 uses
  %i.mp = sext i32 %.2116172.i.i to i64           ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !range !5, !noundef !6
  %i.ms = icmp eq i8 %i.mr, 0
  br i1 %i.ms, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mt = load ptr, ptr %i.bk, align 8
  %i.mu = getelementptr inbounds [152 x i8], ptr %i.mt, i64 %i.mp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 138
  %i.mw = load i8, ptr %i.mv, align 2, !range !5, !noundef !6
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.bb, label %collectMatchesForHeapRow.exit.backedge.i, !llvm.loop !15

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.my = add nuw i32 %.2116172.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.my, %i.ix
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.az, !llvm.loop !16

.loopexit.i:                                      ; preds = %bb.bb, %.critedge.i.i, %.critedge.i.thread.i
  %i.mz = load ptr, ptr %i.i, align 8
  %i.na = load ptr, ptr @CurrentMemoryContext, align 8 ; 2 uses
  store ptr %i.mz, ptr @CurrentMemoryContext, align 8
  %i.nb = load i32, ptr %i.aj, align 8
  %.not.i = icmp eq i32 %i.nb, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %bb.bc
  %.03272.i = phi i32 [ %i.nm, %bb.bc ], [ 0, %.loopexit.i ] ; 2 uses
  %.03471.i = phi i8 [ %i.nl, %bb.bc ], [ 0, %.loopexit.i ]
  %i.nc = load ptr, ptr %i.at, align 8
  %i.nd = sext i32 %.03272.i to i64
  %i.ne = getelementptr inbounds [152 x i8], ptr %i.nc, i64 %i.nd ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 56
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = call zeroext i1 %i.ng(ptr noundef %i.ne) #7, !inline_history !17
  br i1 %i.nh, label %bb.bc, label %.thread54.i

.thread54.i:                                      ; preds = %.lr.ph.i
  store ptr %i.na, ptr @CurrentMemoryContext, align 8
  %i.ni = load ptr, ptr %i.i, align 8
  call void @MemoryContextReset(ptr noundef %i.ni) #7
  br label %collectMatchesForHeapRow.exit.backedge.i

bb.bc:                                            ; preds = %.lr.ph.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 147
  %i.nk = load i8, ptr %i.nj, align 1, !range !5, !noundef !6
  %i.nl = or i8 %i.nk, %.03471.i                  ; 2 uses
  %i.nm = add nuw i32 %.03272.i, 1                ; 2 uses
  %i.nn = load i32, ptr %i.aj, align 8
  %i.no = icmp ult i32 %i.nm, %i.nn
  br i1 %i.no, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !18

._crit_edge.loopexit.i:                           ; preds = %bb.bc
  %i.np = trunc nuw i8 %i.nl to i1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.loopexit.i
  %.034.lcssa.i = phi i1 [ false, %.loopexit.i ], [ %i.np, %._crit_edge.loopexit.i ]
  store ptr %i.na, ptr @CurrentMemoryContext, align 8
  %i.nq = load ptr, ptr %i.i, align 8
  call void @MemoryContextReset(ptr noundef %i.nq) #7
  call void @tbm_add_tuples(ptr noundef %1, ptr noundef nonnull %i.aq, i32 noundef 1, i1 noundef zeroext %.034.lcssa.i) #7
  %i.nr = add i64 %.2, 1
  br label %collectMatchesForHeapRow.exit.backedge.i

collectMatchesForHeapRow.exit.backedge.i:         ; preds = %bb.ba, %._crit_edge.i, %.thread54.i
  %.3 = phi i64 [ %i.nr, %._crit_edge.i ], [ %.2, %.thread54.i ], [ %.2, %bb.ba ] ; 2 uses
  %i.ns = call fastcc zeroext i1 @scanGetCandidate(ptr noundef nonnull readonly %0, ptr noundef %5)
  br i1 %i.ns, label %bb.g, label %collectMatchesForHeapRow.exit._crit_edge.i, !llvm.loop !15

collectMatchesForHeapRow.exit._crit_edge.i:       ; preds = %collectMatchesForHeapRow.exit.backedge.i, %bb.f
  %.156 = phi i64 [ 0, %bb.f ], [ %.3, %collectMatchesForHeapRow.exit.backedge.i ]
  %i.nt = load ptr, ptr %i.an, align 8
  call void @pfree(ptr noundef %i.nt) #7
  br label %scanPendingInsert.exit

scanPendingInsert.exit:                           ; preds = %bb.e, %collectMatchesForHeapRow.exit._crit_edge.i
  %.4 = phi i64 [ 0, %bb.e ], [ %.156, %collectMatchesForHeapRow.exit._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.nu = load ptr, ptr %i.g, align 8             ; 8 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 6 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 9688 ; 3 uses
  %i.nx = load i32, ptr %i.nw, align 8
  %.not68.i = icmp eq i32 %i.nx, 0
  br i1 %.not68.i, label %.loopexit.i22, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %scanPendingInsert.exit
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 9680 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 8 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 8 uses
  br label %bb.bd

bb.bd:                                            ; preds = %startScanEntry.exit.i, %.lr.ph.i16
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i, %startScanEntry.exit.i ] ; 2 uses
  %i.oc = load ptr, ptr %i.ny, align 8
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i
  %i.oe = load ptr, ptr %i.od, align 8            ; 20 uses
  %i.of = load ptr, ptr %i.q, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 36 ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 684
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 672 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 680 ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 48 ; 9 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 664
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  %i.on = getelementptr inbounds nuw i8, ptr %i.oe, i64 687
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oe, i64 688 ; 7 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oe, i64 32 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 686 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oe, i64 9 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oe, i64 28
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oe, i64 56 ; 3 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.dd, %bb.bd
  store i16 0, ptr %i.oh, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.og, i8 0, i64 10, i1 false)
  %i.ox = load ptr, ptr %i.oi, align 8            ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i17, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @pfree(ptr noundef nonnull %i.ox) #7
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store ptr null, ptr %i.oi, align 8
  store i32 0, ptr %i.oj, align 8
  store ptr null, ptr %i.ok, align 8
  store i32 -1, ptr %i.ol, align 8
  store i32 -1, ptr %i.om, align 8
  store i8 0, ptr %i.on, align 1
  store i32 0, ptr %i.oo, align 8
  %i.oy = load i16, ptr %i.op, align 8
  %i.oz = load i64, ptr %i.oe, align 8
  %i.pa = load i8, ptr %i.oq, align 8
  call void @ginPrepareEntryScan(ptr noundef nonnull %3, i16 noundef zeroext %i.oy, i64 noundef %i.oz, i8 noundef signext %i.pa, ptr noundef nonnull %i.nv) #7
  %i.pb = call ptr @ginFindLeafPage(ptr noundef nonnull %3, i1 noundef zeroext true, i1 noundef zeroext false) #7 ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 4 ; 16 uses
  %i.pd = load i32, ptr %i.pc, align 4            ; 3 uses
  %i.pe = icmp slt i32 %i.pd, 0
  br i1 %i.pe, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.pf = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.pg = xor i32 %i.pd, -1
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.ph
  %i.pj = load ptr, ptr %i.pi, align 8
  br label %BufferGetPage.exit.i.i18

bb.bi:                                            ; preds = %bb.bg
  %i.pk = load ptr, ptr @BufferBlocks, align 8
  %i.pl = add nsw i32 %i.pd, -1
  %i.pm = sext i32 %i.pl to i64
  %i.pn = shl nsw i64 %i.pm, 13
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pn
  br label %BufferGetPage.exit.i.i18

BufferGetPage.exit.i.i18:                         ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i19 = phi ptr [ %i.pj, %bb.bh ], [ %i.po, %bb.bi ] ; 2 uses
  store i8 1, ptr %i.or, align 2
  %i.pp = load i8, ptr %i.os, align 1, !range !5, !noundef !6
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %BufferGetPage.exit.i.i18
  %i.pr = load i8, ptr %i.oq, align 8
  %i.ps = icmp eq i8 %i.pr, -1
  br i1 %i.ps, label %bb.bk, label %bb.dg

bb.bk:                                            ; preds = %bb.bj, %BufferGetPage.exit.i.i18
  %i.pt = load ptr, ptr %i.nz, align 8
  %i.pu = call zeroext i1 %i.pt(ptr noundef nonnull %3, ptr noundef nonnull %i.pb) #7, !inline_history !19 ; 0 uses
  %i.pv = load i32, ptr @work_mem, align 4
  %i.pw = sext i32 %i.pv to i64
  %i.px = shl nsw i64 %i.pw, 10
  %i.py = call ptr @tbm_create(i64 noundef %i.px, ptr noundef null) #7 ; 2 uses
  store ptr %i.py, ptr %i.ok, align 8
  %i.pz = load i8, ptr %i.os, align 1, !range !5, !noundef !6
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.qb = load i8, ptr %i.oq, align 8
  %.not.i.i.i31 = icmp eq i8 %i.qb, 0
  br i1 %.not.i.i.i31, label %bb.bm, label %collectMatchBitmap.exit.thread.i.i

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.qc = load i16, ptr %i.op, align 8            ; 3 uses
  %i.qd = load ptr, ptr %i.oa, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = zext i16 %i.qc to i64
  %i.qh = add nsw i64 %i.qg, -1                   ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.qi, i64 %i.qh ; 2 uses
  %i.qk = load ptr, ptr %i.ob, align 8
  %i.ql = load i32, ptr %i.pc, align 4
  %i.qm = call i32 @BufferGetBlockNumber(i32 noundef %i.ql) #7
  call void @PredicateLockPage(ptr noundef %i.qk, i32 noundef %i.qm, ptr noundef %i.of) #7
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 10 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 4 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  br label %bb.bn

bb.bn:                                            ; preds = %moveRightIfItNeeded.exit.i.i.i, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.qq = load i32, ptr %i.pc, align 4            ; 5 uses
  %i.qr = icmp slt i32 %i.qq, 0
  br i1 %i.qr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.qs = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.qt = xor i32 %i.qq, -1
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %i.qu
  %i.qw = load ptr, ptr %i.qv, align 8
  br label %BufferGetPage.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.qx = load ptr, ptr @BufferBlocks, align 8
  %i.qy = add nsw i32 %i.qq, -1
  %i.qz = sext i32 %i.qy to i64
  %i.ra = shl nsw i64 %i.qz, 13
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.ra
  br label %BufferGetPage.exit.i.i.i.i

BufferGetPage.exit.i.i.i.i:                       ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i = phi ptr [ %i.qw, %bb.bo ], [ %i.rb, %bb.bp ] ; 3 uses
  %i.rc = load i16, ptr %i.qn, align 8
  %i.rd = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 12
  %.val.i.i.i.i = load i16, ptr %i.rd, align 4    ; 2 uses
  %i.re = icmp ult i16 %.val.i.i.i.i, 25
  %i.rf = zext i16 %.val.i.i.i.i to i32
  %i.rg = add nuw nsw i32 %i.rf, 262120
  %i.rh = lshr i32 %i.rg, 2
  %i.ri = trunc i32 %i.rh to i16
  %.0.i.i.i.i.i = select i1 %i.re, i16 0, i16 %i.ri
  %i.rj = icmp ugt i16 %i.rc, %.0.i.i.i.i.i
  br i1 %i.rj, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %BufferGetPage.exit.i.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.rl = load i16, ptr %i.rk, align 8
  %i.rm = zext i16 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4
  %i.rp = icmp eq i32 %i.ro, -1
  br i1 %i.rp, label %collectMatchBitmap.exit.thread95.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rq = load ptr, ptr %i.ob, align 8
  %i.rr = call i32 @ginStepRight(i32 noundef %i.qq, ptr noundef %i.rq, i32 noundef 1) #7 ; 2 uses
  store i32 %i.rr, ptr %i.pc, align 4
  %i.rs = call i32 @BufferGetBlockNumber(i32 noundef %i.rr) #7 ; 2 uses
  store i32 %i.rs, ptr %i.pb, align 8
  store i16 1, ptr %i.qn, align 8
  %i.rt = load ptr, ptr %i.ob, align 8
  call void @PredicateLockPage(ptr noundef %i.rt, i32 noundef %i.rs, ptr noundef %i.of) #7
  %.pre.i.i.i = load i32, ptr %i.pc, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %BufferGetPage.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@scanGetCandidate:bb.a
  %.val44 = load i32, ptr %i.bb, align 4
  %i.bc = and i32 %.val44, 32767
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bd
  %i.bf = tail call zeroext i1 @ItemPointerEquals(ptr noundef nonnull %i.a, ptr noundef %i.be) #7
  br i1 %i.bf, label %.peel.next, label %.loopexit, !llvm.loop !0

bb.j:                                             ; preds = %bb.g
  %i.bg = add nsw i16 %.0.i, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bg, ptr %i.bh, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %bb.i, %.peel.begin, %bb.h, %.thread, %bb.j
  ret i1 %.not55.not.not.not.not
}

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare void @UnlockBuffer(i32 noundef) local_unnamed_addr #2

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @ItemPointerEquals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare zeroext i16 @gintuple_get_attrnum(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @gintuple_get_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @FunctionCall4Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ginPrepareEntryScan(ptr noundef, i16 noundef zeroext, i64 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @ginFindLeafPage(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @tbm_end_private_iterate(ptr noundef) local_unnamed_addr #2

declare void @tbm_free(ptr noundef) local_unnamed_addr #2

declare void @freeGinBtreeStack(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @tbm_is_empty(ptr noundef) local_unnamed_addr #2

declare ptr @tbm_begin_private_iterate(ptr noundef) local_unnamed_addr #2

declare ptr @ginScanBeginPostingTree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @IncrBufferRefCount(i32 noundef) local_unnamed_addr #2

declare ptr @GinDataLeafPageGetItems(ptr noundef, ptr noundef, i48) local_unnamed_addr #2

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #2

declare ptr @ginReadTuple(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @tbm_create(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @datumCopy(i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @ginStepRight(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GinDataLeafPageGetItemsToTbm(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @entryIndexByFrequencyCmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = sext i32 %i.a to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 688
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 688
  %i.n = load i32, ptr %i.m, align 8
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.i, i32 %i.n)
  ret i32 %.0
}

declare void @ProcessInterrupts() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @entryGetItem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i48 %2) unnamed_addr #0 {
bb.a:
  %.sroa.7.0.extract.shift = lshr i48 %2, 16      ; 3 uses
  %.sroa.11.0.extract.shift = lshr i48 %2, 32     ; 3 uses
  %.sroa.11.0.extract.trunc = trunc nuw i48 %.sroa.11.0.extract.shift to i16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i48 %2 to i32
  %i.d = shl i32 %i.c, 16
  %i.e = trunc nuw i48 %.sroa.7.0.extract.shift to i32
  %i.f = and i32 %i.e, 65535
  %i.g = or disjoint i32 %i.f, %i.d               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 684 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 3 uses
  %i.l = icmp eq i48 %.sroa.11.0.extract.shift, 65535
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 42 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 686 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 687
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 688
  br label %.backedge96

.backedge96:                                      ; preds = %.backedge96.backedge, %bb.b
  %i.u = load i32, ptr %i.h, align 8              ; 4 uses
  %.not87 = icmp eq i32 %i.u, -1
  br i1 %.not87, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.backedge96
  %i.v = load i8, ptr %i.i, align 4, !range !5, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i16, ptr %i.j, align 4
  %i.y = zext i16 %i.x to i32
  %i.z = load i32, ptr %i.k, align 8
  %.not70 = icmp sle i32 %i.z, %i.y
  %i.aa = icmp ult i32 %i.u, %i.g
  %or.cond = select i1 %.not70, i1 true, i1 %i.aa
  br i1 %or.cond, label %.critedge, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.old = icmp ult i32 %i.u, %i.g
  br i1 %.old, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ab = icmp eq i32 %i.u, %i.g
  %or.cond86 = select i1 %i.l, i1 %i.ab, i1 false
  br i1 %or.cond86, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %.backedge96
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = tail call zeroext i1 @tbm_private_iterate(ptr noundef %i.ac, ptr noundef nonnull %i.h) #7
  br i1 %i.ad, label %bb.g, label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge
  store i16 -1, ptr %i.o, align 8
  store i16 -1, ptr %i.p, align 2
  store i16 0, ptr %i.q, align 4
  %i.ae = load ptr, ptr %i.m, align 8
  tail call void @tbm_end_private_iterate(ptr noundef %i.ae) #7
  store ptr null, ptr %i.m, align 8
  store i8 1, ptr %i.r, align 2
  br label %.loopexit

bb.g:                                             ; preds = %.critedge
  %i.af = load i8, ptr %i.i, align 4, !range !5, !noundef !6
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call i32 @tbm_extract_page_tuple(ptr noundef nonnull %i.h, ptr noundef nonnull %i.n, i32 noundef 291) #7
  store i32 %i.ah, ptr %i.k, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i16 0, ptr %i.j, align 4
  br label %.backedge96.backedge

.backedge96.backedge:                             ; preds = %bb.i, %bb.n, %bb.o
  br label %.backedge96, !llvm.loop !40

.critedge2:                                       ; preds = %bb.f
  %.pre = load i8, ptr %i.r, align 2, !range !5
  %i.ai = trunc nuw i8 %.pre to i1
  br i1 %i.ai, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.critedge2
  %i.aj = load i8, ptr %i.i, align 4, !range !5, !noundef !6
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load i32, ptr %i.h, align 8             ; 5 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = lshr i32 %i.al, 16
  %i.an = trunc nuw i32 %i.am to i16
  store i16 %i.an, ptr %i.o, align 8
  %i.ao = trunc i32 %i.al to i16
  store i16 %i.ao, ptr %i.p, align 2
  store i16 -1, ptr %i.q, align 4
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i32 %i.al, %i.g
  br i1 %i.ap, label %bb.m, label %..loopexit94_crit_edge

..loopexit94_crit_edge:                           ; preds = %bb.l
  %.pre121 = load i16, ptr %i.j, align 4          ; 2 uses
  %.phi.trans.insert = zext i16 %.pre121 to i64
  %.phi.trans.insert122 = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.phi.trans.insert
  %.pre123 = load i16, ptr %.phi.trans.insert122, align 2
  br label %.loopexit94

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.k, align 8             ; 2 uses
  %i.ar = add i32 %i.aq, -1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  %.not72 = icmp ugt i16 %i.au, %.sroa.11.0.extract.trunc
  br i1 %.not72, label %.preheader93, label %bb.n

.preheader93:                                     ; preds = %bb.m
  %.promoted = load i16, ptr %i.j, align 4        ; 3 uses
  %i.av = zext i16 %.promoted to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2            ; 2 uses
  %.not73111 = icmp ugt i16 %i.ax, %.sroa.11.0.extract.trunc
  br i1 %.not73111, label %.loopexit94, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.ay = trunc i32 %i.aq to i16
  store i16 %i.ay, ptr %i.j, align 4
  br label %.backedge96.backedge

.lr.ph:                                           ; preds = %.preheader93, %.lr.ph
  %i.az = phi i16 [ %i.ba, %.lr.ph ], [ %.promoted, %.preheader93 ]
  %i.ba = add i16 %i.az, 1                        ; 4 uses
  store i16 %i.ba, ptr %i.j, align 4
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2            ; 2 uses
  %.not73 = icmp ugt i16 %i.bd, %.sroa.11.0.extract.trunc
  br i1 %.not73, label %.loopexit94, label %.lr.ph, !llvm.loop !41

.loopexit94:                                      ; preds = %.lr.ph, %..loopexit94_crit_edge, %.preheader93
  %i.be = phi i16 [ %.pre123, %..loopexit94_crit_edge ], [ %i.ax, %.preheader93 ], [ %i.bd, %.lr.ph ]
  %i.bf = phi i16 [ %.pre121, %..loopexit94_crit_edge ], [ %.promoted, %.preheader93 ], [ %i.ba, %.lr.ph ]
  %i.bg = lshr i32 %i.al, 16
  %i.bh = trunc nuw i32 %i.bg to i16
  store i16 %i.bh, ptr %i.o, align 8
  %i.bi = trunc i32 %i.al to i16
  store i16 %i.bi, ptr %i.p, align 2
  store i16 %i.be, ptr %i.q, align 4
  %i.bj = add i16 %i.bf, 1
  store i16 %i.bj, ptr %i.j, align 4
  %i.bk = load i8, ptr %i.s, align 1, !range !5, !noundef !6
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.loopexit94
  %i.bm = tail call double @pg_prng_double(ptr noundef nonnull @pg_global_prng_state) #7
  %i.bn = load i32, ptr @GinFuzzySearchLimit, align 4
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = load i32, ptr %i.t, align 8
  %i.bq = uitofp i32 %i.bp to double
  %i.br = fdiv double %i.bo, %i.bq
  %i.bs = fcmp ogt double %i.bm, %i.br
  br i1 %i.bs, label %.backedge96.backedge, label %.loopexit

bb.p:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 9 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %.not88 = icmp eq i32 %i.bu, 0
  br i1 %.not88, label %.preheader, label %.preheader91

.preheader91:                                     ; preds = %bb.p
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  %.sroa.7.0.extract.trunc = trunc i48 %.sroa.7.0.extract.shift to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 684 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.by = getelementptr i8, ptr %1, i64 42        ; 4 uses
  %i.bz = getelementptr i8, ptr %1, i64 44        ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 818 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 820
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 822
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 686 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 687
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 688
  br label %.outer

.preheader:                                       ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 684 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.cl = load i16, ptr %i.cj, align 4            ; 2 uses
  %i.cm = zext i16 %i.cl to i32
  %i.cn = load i32, ptr %i.ck, align 8            ; 2 uses
  %.not68113 = icmp sgt i32 %i.cn, %i.cm
  br i1 %.not68113, label %.lr.ph114, label %._crit_edge

.lr.ph114:                                        ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.cq = getelementptr i8, ptr %1, i64 42
  %i.cr = getelementptr i8, ptr %1, i64 44
  %.sroa.0.0.extract.trunc.mask = and i48 %2, 65535
  %i.cs = zext nneg i48 %.sroa.0.0.extract.trunc.mask to i64
  %i.ct = shl nuw i64 %i.cs, 48
  %i.cu = shl i48 %.sroa.7.0.extract.shift, 32
  %i.cv = zext i48 %i.cu to i64
  %i.cw = or disjoint i64 %i.ct, %i.cv
  %i.cx = zext nneg i48 %.sroa.11.0.extract.shift to i64
  %i.cy = or disjoint i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 687
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 688
  br label %bb.q

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i16 -1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i16 -1, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i16 0, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 686
  store i8 1, ptr %i.de, align 2
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph114, %.backedge
  %i.df = phi i32 [ %i.cn, %.lr.ph114 ], [ %i.ds, %.backedge ]
  %i.dg = phi i16 [ %i.cl, %.lr.ph114 ], [ %i.dt, %.backedge ] ; 2 uses
  %i.dh = load ptr, ptr %i.cp, align 8
  %i.di = add i16 %i.dg, 1                        ; 2 uses
  store i16 %i.di, ptr %i.cj, align 4
  %i.dj = zext i16 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [6 x i8], ptr %i.dh, i64 %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.co, ptr noundef nonnull align 2 dereferenceable(6) %i.dk, i64 6, i1 false)
  %.val8.i = load i16, ptr %i.co, align 8
  %.val9.i = load i16, ptr %i.cq, align 2
  %i.dl = zext i16 %.val8.i to i64
  %i.dm = zext i16 %.val9.i to i64
  %i.dn = shl nuw i64 %i.dl, 48
  %i.do = shl nuw nsw i64 %i.dm, 32
  %i.dp = or disjoint i64 %i.do, %i.dn
  %.val5.i = load i16, ptr %i.cr, align 4
  %i.dq = zext i16 %.val5.i to i64
  %i.dr = or disjoint i64 %i.dp, %i.dq
  %.not89 = icmp ugt i64 %i.dr, %i.cy
  br i1 %.not89, label %bb.r, label %.backedge

.backedge:                                        ; preds = %..backedge_crit_edge, %bb.q
  %i.ds = phi i32 [ %.pre125, %..backedge_crit_edge ], [ %i.df, %bb.q ] ; 2 uses
  %i.dt = phi i16 [ %.pre124, %..backedge_crit_edge ], [ %i.di, %bb.q ] ; 2 uses
  %i.du = zext i16 %i.dt to i32
  %.not68 = icmp sgt i32 %i.ds, %i.du
  br i1 %.not68, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.dv = load i8, ptr %i.cz, align 1, !range !5, !noundef !6
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dx = tail call double @pg_prng_double(ptr noundef nonnull @pg_global_prng_state) #7
  %i.dy = load i32, ptr @GinFuzzySearchLimit, align 4
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = load i32, ptr %i.da, align 8
  %i.eb = uitofp i32 %i.ea to double
  %i.ec = fdiv double %i.dz, %i.eb
  %i.ed = fcmp ogt double %i.dx, %i.ec
  br i1 %i.ed, label %..backedge_crit_edge, label %.loopexit

..backedge_crit_edge:                             ; preds = %bb.s
  %.pre124 = load i16, ptr %i.cj, align 4
  %.pre125 = load i32, ptr %i.ck, align 8
  br label %.backedge

bb.t:                                             ; preds = %.backedge153, %.outer
  %i.ee = load i16, ptr %i.bv, align 4            ; 3 uses
  %i.ef = zext i16 %i.ee to i32
  %i.eg = load i32, ptr %i.bw, align 8
  %.not69 = icmp sgt i32 %i.eg, %i.ef
  br i1 %.not69, label %bb.av, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = load i32, ptr %i.bt, align 4            ; 3 uses
  %.not84.i = icmp eq i32 %i.eh, 0
  br i1 %.not84.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.cg, align 2
  br label %entryLoadMoreItems.exit

bb.w:                                             ; preds = %bb.u
  %.val8.i.i = load i16, ptr %i.bx, align 8
  %.val9.i.i = load i16, ptr %i.by, align 2
  %i.ei = zext i16 %.val8.i.i to i64
  %i.ej = zext i16 %.val9.i.i to i64
  %i.ek = shl nuw i64 %i.ei, 48
  %i.el = shl nuw nsw i64 %i.ej, 32
  %i.em = or disjoint i64 %i.el, %i.ek
  %.val5.i.i = load i16, ptr %i.bz, align 4
  %i.en = zext i16 %.val5.i.i to i64
  %i.eo = or disjoint i64 %i.em, %i.en
  %i.ep = icmp eq i64 %i.eo, %i.ix
  br i1 %i.ep, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @LockBufferInternal(i32 noundef %i.eh, i32 noundef 1) #7
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  tail call void @ReleaseBuffer(i32 noundef %i.eh) #7
  br i1 %brmerge, label %._crit_edge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i16 %i.jg, ptr %i.ca, align 2
  store i16 %i.jh, ptr %i.cb, align 4
  br label %bb.aa

._crit_edge.i:                                    ; preds = %bb.y
  store i32 %i.iz, ptr %i.ca, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i, %bb.z
  %.sink.i = phi i16 [ %i.ji, %._crit_edge.i ], [ 1, %bb.z ]
  store i16 %.sink.i, ptr %i.cc, align 2
  store i8 0, ptr %i.ce, align 8
  %i.eq = tail call ptr @ginFindLeafPage(ptr noundef nonnull %i.cd, i1 noundef zeroext true, i1 noundef zeroext false) #7 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4            ; 2 uses
  store i32 %i.es, ptr %i.bt, align 4
  tail call void @IncrBufferRefCount(i32 noundef %i.es) #7
  tail call void @freeGinBtreeStack(ptr noundef %i.eq) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.054.i = phi i8 [ 1, %bb.x ], [ 0, %bb.aa ]    ; 2 uses
  %i.et = tail call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #7
  br i1 %i.et, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = xor i8 %.054.i, 1
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %i.jl, i32 noundef %i.jm, i32 noundef %i.ev) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @__func__.entryLoadMoreItems) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ex = load i32, ptr %i.bt, align 4            ; 3 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.fa = xor i32 %i.ex, -1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8
  br label %BufferGetPage.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.fe = load ptr, ptr @BufferBlocks, align 8
  %i.ff = add nsw i32 %i.ex, -1
  %i.fg = sext i32 %i.ff to i64
  %i.fh = shl nsw i64 %i.fg, 13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fh
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.af, %bb.ae
  %.0.i.i.i = phi ptr [ %i.fd, %bb.ae ], [ %i.fi, %bb.af ]
  %i.fj = trunc nuw i8 %.054.i to i1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %BufferGetPage.exit.i
  %.155.i = phi i1 [ %i.fj, %BufferGetPage.exit.i ], [ true, %.backedge.i.backedge ]
  %.0.i = phi ptr [ %.0.i.i.i, %BufferGetPage.exit.i ], [ %.1.i, %.backedge.i.backedge ] ; 3 uses
  store i16 0, ptr %i.bv, align 4
  %i.fk = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not58.i = icmp eq ptr %i.fk, null
  br i1 %.not58.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.backedge.i
  tail call void @pfree(ptr noundef nonnull %i.fk) #7
  store ptr null, ptr %i.cf, align 8
  store i32 0, ptr %i.bw, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.backedge.i
  br i1 %.155.i, label %bb.ai, label %BufferGetPage.exit71.i

bb.ai:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.fm = load i16, ptr %i.fl, align 8
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = icmp eq i32 %i.fp, -1
  %i.fr = load i32, ptr %i.bt, align 4            ; 2 uses
  br i1 %i.fq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @UnlockReleaseBuffer(i32 noundef %i.fr) #7
  store i32 0, ptr %i.bt, align 4
  store i8 1, ptr %i.cg, align 2
  br label %entryLoadMoreItems.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fs = load ptr, ptr %0, align 8
  %i.ft = tail call i32 @ginStepRight(i32 noundef %i.fr, ptr noundef %i.fs, i32 noundef 1) #7 ; 4 uses
  store i32 %i.ft, ptr %i.bt, align 4
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fv = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.fw = xor i32 %i.ft, -1
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8
  br label %BufferGetPage.exit71.i

bb.am:                                            ; preds = %bb.ak
  %i.ga = load ptr, ptr @BufferBlocks, align 8
  %i.gb = add nsw i32 %i.ft, -1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i64 %i.gc, 13
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd
  br label %BufferGetPage.exit71.i

BufferGetPage.exit71.i:                           ; preds = %bb.am, %bb.al, %bb.ah
  %.1.i = phi ptr [ %.0.i, %bb.ah ], [ %i.fz, %bb.al ], [ %i.ge, %bb.am ] ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.gg = load i16, ptr %i.gf, align 8
  %i.gh = zext i16 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  %i.gk = load i16, ptr %i.gj, align 2
  %i.gl = and i16 %i.gk, 4
  %.not59.i = icmp eq i16 %i.gl, 0
  br i1 %.not59.i, label %bb.an, label %.backedge.i.backedge

bb.an:                                            ; preds = %BufferGetPage.exit71.i
  %i.gm = load i32, ptr %i.gi, align 4
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %.val6.i75.i = load i16, ptr %i.go, align 8
  %i.gp = getelementptr i8, ptr %.1.i, i64 26
  %.val7.i76.i = load i16, ptr %i.gp, align 2
  %i.gq = zext i16 %.val6.i75.i to i64
  %i.gr = zext i16 %.val7.i76.i to i64
  %i.gs = shl nuw i64 %i.gq, 48
  %i.gt = shl nuw nsw i64 %i.gr, 32
  %i.gu = or disjoint i64 %i.gt, %i.gs
  %i.gv = getelementptr i8, ptr %.1.i, i64 28
  %.val.i77.i = load i16, ptr %i.gv, align 4
  %i.gw = zext i16 %.val.i77.i to i64
  %i.gx = or disjoint i64 %i.gu, %i.gw
  %.not85.i = icmp ult i64 %i.ix, %i.gx
  br i1 %.not85.i, label %bb.ap, label %.backedge.i.backedge

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gy = tail call ptr @GinDataLeafPageGetItems(ptr noundef nonnull %.1.i, ptr noundef nonnull %i.bw, i48 %.sroa.0.0.insert.insert) #7 ; 2 uses
  store ptr %i.gy, ptr %i.cf, align 8
  %i.gz = load i32, ptr %i.bw, align 8            ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph.preheader.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.at, %bb.ap, %bb.ao, %BufferGetPage.exit71.i
  br label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %bb.ap
  %wide.trip.count.i = zext nneg i32 %i.gz to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.at ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [6 x i8], ptr %i.gy, i64 %indvars.iv.i ; 3 uses
  %.val6.i81.i = load i16, ptr %i.hb, align 2
  %i.hc = getelementptr i8, ptr %i.hb, i64 2
  %.val7.i82.i = load i16, ptr %i.hc, align 2
  %i.hd = zext i16 %.val6.i81.i to i64
  %i.he = zext i16 %.val7.i82.i to i64
  %i.hf = shl nuw i64 %i.hd, 48
  %i.hg = shl nuw nsw i64 %i.he, 32
  %i.hh = or disjoint i64 %i.hg, %i.hf
  %i.hi = getelementptr i8, ptr %i.hb, i64 4
  %.val.i83.i = load i16, ptr %i.hi, align 2
  %i.hj = zext i16 %.val.i83.i to i64
  %i.hk = or disjoint i64 %i.hh, %i.hj
  %i.hl = icmp ult i64 %i.ix, %i.hk
  br i1 %i.hl, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.lr.ph.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.hn = trunc i64 %indvars.iv.i to i16
  store i16 %i.hn, ptr %i.bv, align 4
  %i.ho = load i16, ptr %i.hm, align 8
  %i.hp = zext i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = icmp eq i32 %i.hr, -1
  %i.ht = load i32, ptr %i.bt, align 4            ; 2 uses
  br i1 %i.hs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @UnlockReleaseBuffer(i32 noundef %i.ht) #7
  store i32 0, ptr %i.bt, align 4
  br label %entryLoadMoreItems.exit

bb.as:                                            ; preds = %bb.aq
  tail call void @UnlockBuffer(i32 noundef %i.ht) #7
  br label %entryLoadMoreItems.exit

bb.at:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.backedge.i.backedge, label %.lr.ph.i, !llvm.loop !42

entryLoadMoreItems.exit:                          ; preds = %bb.v, %bb.aj, %bb.ar, %bb.as
  %i.hu = load i8, ptr %i.cg, align 2, !range !5, !noundef !6
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.au, label %.backedge153

.backedge153:                                     ; preds = %entryLoadMoreItems.exit, %bb.av
  br label %bb.t, !llvm.loop !43

bb.au:                                            ; preds = %entryLoadMoreItems.exit
  store i16 -1, ptr %i.bx, align 8
  store i16 -1, ptr %i.by, align 2
  store i16 0, ptr %i.bz, align 4
  br label %.loopexit

bb.av:                                            ; preds = %bb.t
  %i.hw = load ptr, ptr %i.cf, align 8
  %i.hx = add i16 %i.ee, 1
  store i16 %i.hx, ptr %i.bv, align 4
  %i.hy = zext i16 %i.ee to i64
  %i.hz = getelementptr inbounds nuw [6 x i8], ptr %i.hw, i64 %i.hy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bx, ptr noundef nonnull align 2 dereferenceable(6) %i.hz, i64 6, i1 false)
  %.val8.i79 = load i16, ptr %i.bx, align 8
  %.val9.i80 = load i16, ptr %i.by, align 2
  %i.ia = zext i16 %.val8.i79 to i64
  %i.ib = zext i16 %.val9.i80 to i64
  %i.ic = shl nuw i64 %i.ia, 48
  %i.id = shl nuw nsw i64 %i.ib, 32
  %i.ie = or disjoint i64 %i.id, %i.ic
  %.val5.i81 = load i16, ptr %i.bz, align 4
  %i.if = zext i16 %.val5.i81 to i64
  %i.ig = or disjoint i64 %i.ie, %i.if
  %.not90 = icmp ugt i64 %i.ig, %i.jq
  br i1 %.not90, label %bb.aw, label %.backedge153

bb.aw:                                            ; preds = %bb.av
  %i.ih = load i8, ptr %i.ch, align 1, !range !5, !noundef !6
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.ij = tail call double @pg_prng_double(ptr noundef nonnull @pg_global_prng_state) #7
  %i.ik = load i32, ptr @GinFuzzySearchLimit, align 4
  %i.il = sitofp i32 %i.ik to double
  %i.im = load i32, ptr %i.ci, align 8
  %i.in = uitofp i32 %i.im to double
  %i.io = fdiv double %i.il, %i.in
  %i.ip = fcmp ogt double %i.ij, %i.io
  br i1 %i.ip, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload = load i16, ptr %i.bx, align 8
  %.sroa.7.0.copyload = load i16, ptr %i.by, align 2
  %.sroa.11.0.copyload = load i16, ptr %i.bz, align 4
  br label %.outer

.outer:                                           ; preds = %.preheader91, %bb.ay
  %.sroa.11.0.ph = phi i16 [ %.sroa.11.0.extract.trunc, %.preheader91 ], [ %.sroa.11.0.copyload, %bb.ay ] ; 5 uses
  %.sroa.7.0.ph = phi i16 [ %.sroa.7.0.extract.trunc, %.preheader91 ], [ %.sroa.7.0.copyload, %bb.ay ] ; 2 uses
  %.sroa.0.0.ph = phi i16 [ %.sroa.0.0.extract.trunc, %.preheader91 ], [ %.sroa.0.0.copyload, %bb.ay ] ; 3 uses
  %.sroa.11.0.insert.ext = zext i16 %.sroa.11.0.ph to i48
  %.sroa.11.0.insert.shift = shl nuw i48 %.sroa.11.0.insert.ext, 32
  %.sroa.7.0.insert.ext = zext i16 %.sroa.7.0.ph to i48 ; 2 uses
  %.sroa.7.0.insert.shift = shl nuw nsw i48 %.sroa.7.0.insert.ext, 16 ; 2 uses
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.ph to i48
  %i.iq = or disjoint i48 %.sroa.11.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i48 %i.iq, %.sroa.7.0.insert.shift ; 2 uses
  %i.ir = zext i16 %.sroa.0.0.ph to i64
  %i.is = shl nuw i64 %i.ir, 48                   ; 2 uses
  %i.it = shl nuw i48 %.sroa.7.0.insert.ext, 32
  %i.iu = zext i48 %i.it to i64
  %i.iv = or disjoint i64 %i.is, %i.iu
  %i.iw = zext i16 %.sroa.11.0.ph to i64          ; 2 uses
  %i.ix = or disjoint i64 %i.iv, %i.iw            ; 3 uses
  %i.iy = icmp ne i16 %.sroa.11.0.ph, -1
  %i.iz = trunc i48 %.sroa.0.0.insert.insert to i32 ; 2 uses
  %i.ja = shl i32 %i.iz, 16
  %i.jb = trunc nuw i48 %.sroa.7.0.insert.shift to i32
  %i.jc = lshr exact i32 %i.jb, 16                ; 2 uses
  %i.jd = or disjoint i32 %i.jc, %i.ja            ; 2 uses
  %.not.i = icmp eq i32 %i.jd, -1
  %i.je = add nuw i32 %i.jd, 1                    ; 2 uses
  %i.jf = lshr i32 %i.je, 16
  %i.jg = trunc nuw i32 %i.jf to i16
  %i.jh = trunc i32 %i.je to i16
  %i.ji = add i16 %.sroa.11.0.ph, 1
  %i.jj = zext i16 %.sroa.0.0.ph to i32
  %i.jk = shl nuw i32 %i.jj, 16
  %i.jl = or disjoint i32 %i.jc, %i.jk
  %i.jm = zext i16 %.sroa.11.0.ph to i32
  %i.jn = zext i16 %.sroa.7.0.ph to i64
  %i.jo = shl nuw nsw i64 %i.jn, 32
  %i.jp = or disjoint i64 %i.is, %i.jo
  %i.jq = or disjoint i64 %i.jp, %i.iw
  %brmerge = select i1 %i.iy, i1 true, i1 %.not.i
  br label %bb.t

.loopexit:                                        ; preds = %.critedge2, %bb.o, %.loopexit94, %bb.aw, %bb.ax, %bb.r, %bb.s, %.critedge2.thread, %bb.k, %._crit_edge, %bb.au
  ret void
}

declare zeroext i1 @tbm_private_iterate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @tbm_extract_page_tuple(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @pg_prng_double(ptr noundef) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7, !8}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{null}
!18 = distinct !{!18, !7}
!19 = distinct !{null, null}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{null, null}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{null, null}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
end_hunk_1
