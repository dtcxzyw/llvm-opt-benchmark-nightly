Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/vacuumlazy?download=true
inline.NumInlined: 92
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lazy_vacuum:bb.a
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
  %i.fn = add nuw nsw i32 %i.fm, 262120
  %i.fo = lshr i32 %i.fn, 2
  %i.fp = trunc i32 %i.fo to i16                  ; 2 uses
  %.not7576.i.i.i = icmp eq i16 %i.fp, 0
  %.not75.i.i.i = select i1 %i.fl, i1 true, i1 %.not7576.i.i.i
  br i1 %.not75.i.i.i, label %.loopexit.i.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BufferGetPage.exit.i.i.i
  %i.fq = getelementptr i8, ptr %.0.i.i.i.i.i, i64 20
  %i.fr = lshr i32 %i.fj, 16
  %i.fs = trunc nuw i32 %i.fr to i16
  %i.ft = trunc i32 %i.fj to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  br label %bb.t

bb.t:                                             ; preds = %bb.ae, %.lr.ph.i.i.i
  %.061.i.i = phi i8 [ 1, %.lr.ph.i.i.i ], [ %.162.i.i, %bb.ae ] ; 4 uses
  %.059.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.160.i.i, %bb.ae ] ; 8 uses
  %.05074.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1.ph.i.i.i, %bb.ae ] ; 7 uses
  %.05373.i.i.i = phi i16 [ 1, %.lr.ph.i.i.i ], [ %i.hb, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i16 %.05373.i.i.i, ptr %i.dg, align 4
  %i.fv = zext i16 %.05373.i.i.i to i64
  %i.fw = getelementptr [4 x i8], ptr %i.fq, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4            ; 4 uses
  %i.fy = lshr i32 %i.fx, 15
  %i.fz = and i32 %i.fy, 3
  switch i32 %i.fz, label %bb.u [
    i32 0, label %bb.ae
    i32 2, label %bb.ae
  ]

bb.u:                                             ; preds = %bb.t
  store i16 %i.fs, ptr %i.dv, align 4
  store i16 %i.ft, ptr %i.dw, align 2
  store i16 %.05373.i.i.i, ptr %i.dx, align 8
  %i.ga = and i32 %i.fx, 98304
  %i.gb = icmp eq i32 %i.ga, 98304
  br i1 %i.gb, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not59.i.i.i = icmp slt i32 %.05074.i.i.i, %i.ef
  br i1 %.not59.i.i.i, label %bb.w, label %heap_page_would_be_all_visible.exit.sink.split.i.i

bb.w:                                             ; preds = %bb.v
  %i.gc = sext i32 %.05074.i.i.i to i64
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2
  %.not60.i.i.i = icmp eq i16 %i.ge, %.05373.i.i.i
  br i1 %.not60.i.i.i, label %bb.x, label %heap_page_would_be_all_visible.exit.sink.split.i.i

bb.x:                                             ; preds = %bb.w
  %i.gf = add nsw i32 %.05074.i.i.i, 1
  br label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.gg = and i32 %i.fx, 32767
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.gh
  store ptr %i.gi, ptr %i.dy, align 8
  %i.gj = lshr i32 %i.fx, 17
  store i32 %i.gj, ptr %1, align 8
  %i.gk = load i32, ptr %i.fu, align 8
  store i32 %i.gk, ptr %i.dz, align 4
  %i.gl = call i32 @HeapTupleSatisfiesVacuumHorizon(ptr noundef nonnull %1, i32 noundef %i.ec, ptr noundef nonnull %i.a) #6
  switch i32 %i.gl, label %bb.ad [
    i32 1, label %bb.z
    i32 0, label %heap_page_would_be_all_visible.exit.sink.split.i.i
    i32 2, label %heap_page_would_be_all_visible.exit.sink.split.i.i
    i32 3, label %heap_page_would_be_all_visible.exit.sink.split.i.i
    i32 4, label %heap_page_would_be_all_visible.exit.sink.split.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.gm = load ptr, ptr %i.dy, align 8            ; 3 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 20
  %.val62.i.i.i = load i16, ptr %i.gn, align 4    ; 2 uses
  %i.go = and i16 %.val62.i.i.i, 256
  %.not.i.i.i = icmp eq i16 %i.go, 0
  br i1 %.not.i.i.i, label %heap_page_would_be_all_visible.exit.sink.split.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = and i16 %.val62.i.i.i, 768
  %i.gq = icmp eq i16 %i.gp, 768
  br i1 %i.gq, label %HeapTupleHeaderGetXmin.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val2.i.i.i.i = load i32, ptr %i.gm, align 4
  br label %HeapTupleHeaderGetXmin.exit.i.i.i

HeapTupleHeaderGetXmin.exit.i.i.i:                ; preds = %bb.ab, %bb.aa
  %i.gr = phi i32 [ %.val2.i.i.i.i, %bb.ab ], [ 2, %bb.aa ] ; 4 uses
  %i.gs = icmp ugt i32 %i.gr, 2                   ; 2 uses
  %i.gt = icmp ugt i32 %.059.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.gt, %i.gs
  %i.gu = sub i32 %i.gr, %.059.i.i
  %i.gv = icmp sgt i32 %i.gu, 0
  %i.gw = icmp ugt i32 %i.gr, %.059.i.i
  %.0.i63.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.gv, i1 %i.gw
  %or.cond.i.i.i = and i1 %i.gs, %.0.i63.i.i.i
  %spec.select74.i.i = select i1 %or.cond.i.i.i, i32 %i.gr, i32 %.059.i.i ; 2 uses
  %i.gx = trunc nuw i8 %.061.i.i to i1
  br i1 %i.gx, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %HeapTupleHeaderGetXmin.exit.i.i.i
  %i.gy = call zeroext i1 @heap_tuple_needs_eventual_freeze(ptr noundef nonnull %i.gm) #6
  %not..i.i = xor i1 %i.gy, true
  %spec.select75.i.i = zext i1 %not..i.i to i8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.gz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ha = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.36) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3730, ptr noundef nonnull @__func__.heap_page_would_be_all_visible) #6
  unreachable

bb.ae:                                            ; preds = %bb.ac, %HeapTupleHeaderGetXmin.exit.i.i.i, %bb.x, %bb.t, %bb.t
  %.162.i.i = phi i8 [ %.061.i.i, %bb.x ], [ %.061.i.i, %bb.t ], [ %spec.select75.i.i, %bb.ac ], [ 0, %HeapTupleHeaderGetXmin.exit.i.i.i ], [ %.061.i.i, %bb.t ] ; 3 uses
  %.160.i.i = phi i32 [ %.059.i.i, %bb.x ], [ %.059.i.i, %bb.t ], [ %spec.select74.i.i, %bb.ac ], [ %spec.select74.i.i, %HeapTupleHeaderGetXmin.exit.i.i.i ], [ %.059.i.i, %bb.t ] ; 6 uses
  %.1.ph.i.i.i = phi i32 [ %i.gf, %bb.x ], [ %.05074.i.i.i, %bb.t ], [ %.05074.i.i.i, %bb.ac ], [ %.05074.i.i.i, %HeapTupleHeaderGetXmin.exit.i.i.i ], [ %.05074.i.i.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %i.hb = add i16 %.05373.i.i.i, 1                ; 2 uses
  %.not85.i.i.i = icmp ugt i16 %i.hb, %i.fp
  br i1 %.not85.i.i.i, label %.loopexit.i.i.i, label %bb.t, !llvm.loop !20

.loopexit.i.i.i:                                  ; preds = %bb.ae
  %i.hc = icmp ugt i32 %.160.i.i, 2
  br i1 %i.hc, label %bb.af, label %.loopexit.i.thread.i.i

bb.af:                                            ; preds = %.loopexit.i.i.i
  %i.hd = call zeroext i1 @GlobalVisTestXidConsideredRunning(ptr noundef %i.ey, i32 noundef %.160.i.i, i1 noundef zeroext true) #6
  br i1 %i.hd, label %heap_page_would_be_all_visible.exit.i.i, label %.loopexit.i.thread.i.i

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
  %3 = trunc nuw i8 %.364.ph.i.i to i1            ; 2 uses
  %spec.select.i.i = select i1 %3, i8 3, i8 1
  call void @LockBufferInternal(i32 noundef %i.eh, i32 noundef 3) #6
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.thread.i.i, %heap_page_would_be_all_visible.exit.i.i
  %.472.i.i = phi i32 [ %.4.ph.i.i, %.loopexit.i.thread.i.i ], [ %.4.i.i, %heap_page_would_be_all_visible.exit.i.i ]
  %.36471.i.i = phi i1 [ %3, %.loopexit.i.thread.i.i ], [ false, %heap_page_would_be_all_visible.exit.i.i ]
  %.1.i.i = phi i8 [ %spec.select.i.i, %.loopexit.i.thread.i.i ], [ 0, %heap_page_would_be_all_visible.exit.i.i ] ; 4 uses
  %i.he = load volatile i32, ptr @CritSectionCount, align 4
  %i.hf = add i32 %i.he, 1
  store volatile i32 %i.hf, ptr @CritSectionCount, align 4
  %i.hg = icmp sgt i32 %i.ef, 0
  br i1 %i.hg, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.hh = getelementptr i8, ptr %.0.i.i.i.i, i64 20 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ef to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.hi = icmp ult i32 %i.ef, 4
  br i1 %i.hi, label %.epil.preheader, label %.lr.ph.i.i.new

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
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i.i.epil
  %i.hk = load i16, ptr %i.hj, align 2            ; 2 uses
  %i.hl = zext i16 %i.hk to i64
  %i.hm = getelementptr [4 x i8], ptr %i.hh, i64 %i.hl
  store i32 0, ptr %i.hm, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil
  store i16 %i.hk, ptr %i.hn, align 2
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
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.hp = load i16, ptr %i.ho, align 8            ; 2 uses
  %i.hq = zext i16 %i.hp to i64
  %i.hr = getelementptr [4 x i8], ptr %i.hh, i64 %i.hq
  store i32 0, ptr %i.hr, align 4
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i16 %i.hp, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i.i
  %i.hu = load i16, ptr %i.ht, align 2            ; 2 uses
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr [4 x i8], ptr %i.hh, i64 %i.hv
  store i32 0, ptr %i.hw, align 4
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  store i16 %i.hu, ptr %i.hx, align 2
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.1
  %i.hz = load i16, ptr %i.hy, align 4            ; 2 uses
  %i.ia = zext i16 %i.hz to i64
  %i.ib = getelementptr [4 x i8], ptr %i.hh, i64 %i.ia
  store i32 0, ptr %i.ib, align 4
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.1
  store i16 %i.hz, ptr %i.ic, align 4
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.2
  %i.ie = load i16, ptr %i.id, align 2            ; 2 uses
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr [4 x i8], ptr %i.hh, i64 %i.if
  store i32 0, ptr %i.ig, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.2
  store i16 %i.ie, ptr %i.ih, align 2
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !22

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 10 ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 2
  %i.ik = or i16 %i.ij, 4
  store i16 %i.ik, ptr %i.ii, align 2
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 0, ptr %i.il, align 4
  %i.im = load ptr, ptr %0, align 8               ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.im, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @visibilitymap_set(i32 noundef %i.ed, i32 noundef %i.eh, i8 noundef zeroext %.1.i.i, i64 %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i) #6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i.i
  %.048.i.i = phi i32 [ %.472.i.i, %bb.aj ], [ 0, %._crit_edge.i.i ]
  call void @MarkBufferDirty(i32 noundef %i.ec) #6
  %i.in = load ptr, ptr %0, align 8               ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 56
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 118
  %i.ir = load i8, ptr %i.iq, align 2
  %i.is = icmp eq i8 %i.ir, 112
  br i1 %i.is, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.it = load i32, ptr @wal_level, align 4
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  %i.iw = load i32, ptr %i.iv, align 8
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.iz = load i32, ptr %i.iy, align 8
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.jb = select i1 %.not.i.i, i32 0, i32 %i.eh
  call void @log_heap_prune_and_freeze(ptr noundef nonnull %i.in, i32 noundef %i.ec, i32 noundef %i.jb, i8 noundef zeroext %.1.i.i, i32 noundef %.048.i.i, i1 noundef zeroext false, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef %.0.lcssa.i.i) #6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %i.jc = load volatile i32, ptr @CritSectionCount, align 4
  %i.jd = add i32 %i.jc, -1
  store volatile i32 %i.jd, ptr @CritSectionCount, align 4
  %i.je = and i8 %.1.i.i, 1
  %.not52.i.i = icmp eq i8 %i.je, 0
  br i1 %.not52.i.i, label %lazy_vacuum_heap_page.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @UnlockBuffer(i32 noundef %i.eh) #6
  %i.jf = load i32, ptr %i.ea, align 4
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.ea, align 4
  br i1 %.36471.i.i, label %bb.ar, label %lazy_vacuum_heap_page.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.jh = load i32, ptr %i.eb, align 8
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.eb, align 8
  br label %lazy_vacuum_heap_page.exit.i

lazy_vacuum_heap_page.exit.i:                     ; preds = %bb.ar, %bb.aq, %bb.ap
  store i32 %i.ev, ptr %i.di, align 8
  store i16 %i.eu, ptr %i.dg, align 4
  store i32 %i.ew, ptr %i.dk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br i1 %i.ei, label %bb.as, label %bb.at

bb.as:                                            ; preds = %lazy_vacuum_heap_page.exit.i
  %i.jj = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.jk = xor i32 %i.ec, -1
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8
  br label %bb.au

bb.at:                                            ; preds = %lazy_vacuum_heap_page.exit.i
  %i.jo = load ptr, ptr @BufferBlocks, align 8
  %i.jp = add nsw i32 %i.ec, -1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl nuw nsw i64 %i.jq, 13
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.i.i.i = phi ptr [ %i.jn, %bb.as ], [ %i.js, %bb.at ]
  %i.jt = call i64 @PageGetHeapFreeSpace(ptr noundef %.0.i.i.i) #6
  call void @UnlockReleaseBuffer(i32 noundef %i.ec) #6
  %i.ju = load ptr, ptr %0, align 8
  call void @RecordPageWithFreeSpace(ptr noundef %i.ju, i32 noundef %i.ed, i64 noundef %i.jt) #6
  %i.jv = add i32 %.03040.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @vacuum_delay_point(i1 noundef zeroext false) #6
  %i.jw = call i32 @read_stream_next_buffer(ptr noundef %i.ds, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not.i14 = icmp eq i32 %i.jw, 0
  br i1 %.not.i14, label %._crit_edge.i, label %bb.o

._crit_edge.i:                                    ; preds = %bb.au, %bb.n
  %.030.lcssa.i = phi i32 [ 0, %bb.n ], [ %i.jv, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @read_stream_end(ptr noundef %i.ds) #6
end_hunk_0
