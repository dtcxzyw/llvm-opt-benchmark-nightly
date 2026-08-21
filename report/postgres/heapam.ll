Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/heapam?download=true
inline.NumInlined: 561
inline.NumDeleted: 108
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@heap_multi_insert:bb.a
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp eq i8 %i.j, 112
  br i1 %i.k, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %i.c, 0
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 119
  %i.t = load i8, ptr %i.s, align 1
  %.not223 = icmp eq i8 %i.t, 102
  br i1 %.not223, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call zeroext i1 @IsCatalogRelation(ptr noundef nonnull %0) #12
  %i.v = xor i1 %i.u, true
  %.pr.pre = load i32, ptr @wal_level, align 4
  %.pre.pre = load i8, ptr @XLogLogicalInfo, align 1, !range !6
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %.pre = phi i8 [ %.pre.pre, %bb.g ], [ %i.e, %bb.b ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ]
  %.pr = phi i32 [ %.pr.pre, %bb.g ], [ %i.c, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ]
  %.ph = phi i1 [ %i.v, %bb.g ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ]
  %i.w = trunc nuw i8 %.pre to i1
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.a
  %i.x = phi i1 [ %i.w, %thread-pre-split ], [ false, %bb.a ]
  %i.y = phi i32 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ] ; 2 uses
  %i.z = phi i1 [ %.ph, %thread-pre-split ], [ false, %bb.a ] ; 2 uses
  %i.aa = icmp sgt i32 %i.y, 1
  %or.cond3 = select i1 %i.aa, i1 true, i1 %i.x
  br i1 %or.cond3, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 118
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = icmp eq i8 %i.ae, 112
  br i1 %i.af, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp sgt i32 %i.y, 0
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.an = tail call zeroext i1 @IsCatalogRelation(ptr noundef nonnull %0) #12
  br i1 %i.an, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not224 = icmp eq ptr %i.ap, null
  br i1 %.not224, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ab, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 119
  %i.as = load i8, ptr %i.ar, align 1
  switch i8 %i.as, label %bb.q [
    i8 114, label %bb.p
    i8 109, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.au = load i8, ptr %i.at, align 8, !range !6, !noundef !7
  %i.av = icmp ne i8 %i.au, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.o, %bb.m, %bb.h, %bb.l, %bb.k, %bb.i
  %i.aw = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.h ], [ true, %bb.m ], [ %i.av, %bb.p ], [ false, %bb.o ], [ false, %bb.n ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 118
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = icmp eq i8 %i.ba, 112
  br i1 %i.bb, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr @wal_level, align 4
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp eq i32 %i.bi, 0
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  %i.bk = phi i1 [ false, %bb.q ], [ true, %bb.r ], [ false, %bb.s ], [ %i.bj, %bb.t ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not225 = icmp eq ptr %i.bm, null
  br i1 %.not225, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = shl i32 %i.bo, 13
  %i.bq = sub i32 819200, %i.bp
  %i.br = sdiv i32 %i.bq, 100
  %i.bs = sext i32 %i.br to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bt = phi i64 [ %i.bs, %bb.v ], [ 0, %bb.u ]  ; 2 uses
  %i.bu = sext i32 %2 to i64                      ; 4 uses
  %i.bv = shl nsw i64 %i.bu, 3
  %i.bw = tail call ptr @palloc(i64 noundef %i.bv) #12 ; 11 uses
  %i.bx = icmp sgt i32 %2, 0                      ; 3 uses
  br i1 %i.bx, label %.lr.ph, label %._crit_edge272.thread

.lr.ph:                                           ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call ptr @ExecFetchSlotHeapTuple(ptr noundef %i.ca, i1 noundef zeroext true, ptr noundef null) #12 ; 2 uses
  %i.cc = load i32, ptr %i.by, align 8
  %i.cd = load ptr, ptr %i.bz, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store i32 %i.cc, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.bz, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = tail call fastcc ptr @heap_prepare_insert(ptr noundef nonnull %0, ptr noundef %i.cb, i32 noundef %i.b, i32 noundef %3, i32 noundef %4)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  store ptr %i.cj, ptr %i.ck, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph271, label %bb.x, !llvm.loop !18

._crit_edge272.thread:                            ; preds = %bb.w
  tail call void @CheckForSerializableConflictIn(ptr noundef nonnull %0, ptr noundef null, i32 noundef -1) #12
  br label %bb.bm

.lr.ph271:                                        ; preds = %bb.x
  tail call void @CheckForSerializableConflictIn(ptr noundef nonnull %0, ptr noundef null, i32 noundef -1) #12
  %i.cl = sub nsw i64 8168, %i.bt                 ; 4 uses
  %i.cm = and i32 %4, 4
  %.not228 = icmp eq i32 %i.cm, 0                 ; 2 uses
  %or.cond7 = and i1 %i.aw, %i.bk                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = icmp ugt i32 %i.b, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.cv = select i1 %i.z, i8 24, i8 8
  %i.cw = add nsw i64 %i.bu, -1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph271, %bb.bk
  %.0210269 = phi i32 [ 0, %.lr.ph271 ], [ %.1211, %bb.bk ]
  %.0212268 = phi i32 [ 0, %.lr.ph271 ], [ %.1213, %bb.bk ]
  %.0214267 = phi i1 [ false, %.lr.ph271 ], [ %i.fe, %bb.bk ]
  %.0215266 = phi i32 [ 0, %.lr.ph271 ], [ %.lcssa, %bb.bk ] ; 6 uses
  %i.cx = load volatile i32, ptr @InterruptPending, align 4
  %.not227 = icmp eq i32 %i.cx, 0
  br i1 %.not227, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  call void @ProcessInterrupts() #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cy = icmp ne i32 %.0215266, 0
  %or.cond5 = and i1 %i.cy, %.0214267
  br i1 %or.cond5, label %bb.ab, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.cz = sext i32 %.0215266 to i64               ; 6 uses
  %i.da = sub nsw i64 %i.bu, %i.cz                ; 3 uses
  %xtraiter = and i64 %i.da, 1
  %i.db = icmp eq i64 %i.cw, %i.cz
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.da, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ %i.cz, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.01318.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %spec.select16.i.1, %.lr.ph.i ]
  %.01417.i = phi i64 [ %i.cl, %.lr.ph.preheader.i.new ], [ %i.dw, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 7
  %i.dh = and i64 %i.dg, 8589934584
  %i.di = or disjoint i64 %i.dh, 4                ; 2 uses
  %i.dj = icmp ult i64 %.01417.i, %i.di           ; 2 uses
  %spec.select.i = select i1 %i.dj, i64 %i.cl, i64 %.01417.i
  %i.dk = zext i1 %i.dj to i32
  %spec.select16.i = add i32 %.01318.i, %i.dk
  %i.dl = sub i64 %spec.select.i, %i.di           ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 7
  %i.ds = and i64 %i.dr, 8589934584
  %i.dt = or disjoint i64 %i.ds, 4                ; 2 uses
  %i.du = icmp ult i64 %i.dl, %i.dt               ; 2 uses
  %spec.select.i.1 = select i1 %i.du, i64 %i.cl, i64 %i.dl
  %i.dv = zext i1 %i.du to i32
  %spec.select16.i.1 = add i32 %spec.select16.i, %i.dv ; 3 uses
  %i.dw = sub i64 %spec.select.i.1, %i.dt         ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %heap_multi_insert_pages.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !19

bb.ab:                                            ; preds = %bb.aa
  %i.dx = add i32 %.0210269, 1
  %.pre299 = sext i32 %.0215266 to i64
  br label %heap_multi_insert_pages.exit

heap_multi_insert_pages.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %heap_multi_insert_pages.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %heap_multi_insert_pages.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ %i.cz, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %heap_multi_insert_pages.exit.loopexit.unr-lcssa ]
  %.01318.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %spec.select16.i.1, %heap_multi_insert_pages.exit.loopexit.unr-lcssa ]
  %.01417.i.epil.init = phi i64 [ %i.cl, %.lr.ph.preheader.i ], [ %i.dw, %heap_multi_insert_pages.exit.loopexit.unr-lcssa ]
  %lcmp.mod324 = trunc i64 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod324)
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv.i.epil.init
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add nuw nsw i64 %i.eb, 7
  %i.ed = and i64 %i.ec, 8589934584
  %i.ee = or disjoint i64 %i.ed, 4
  %i.ef = icmp ult i64 %.01417.i.epil.init, %i.ee
  %i.eg = zext i1 %i.ef to i32
  %spec.select16.i.epil = add i32 %.01318.i.epil.init, %i.eg
  br label %heap_multi_insert_pages.exit

heap_multi_insert_pages.exit:                     ; preds = %.lr.ph.i.epil.preheader, %heap_multi_insert_pages.exit.loopexit.unr-lcssa, %bb.ab
  %.pre-phi = phi i64 [ %.pre299, %bb.ab ], [ %i.cz, %heap_multi_insert_pages.exit.loopexit.unr-lcssa ], [ %i.cz, %.lr.ph.i.epil.preheader ]
  %.1213 = phi i32 [ %.0212268, %bb.ab ], [ %spec.select16.i.1, %heap_multi_insert_pages.exit.loopexit.unr-lcssa ], [ %spec.select16.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.1211 = phi i32 [ %i.dx, %bb.ab ], [ 0, %heap_multi_insert_pages.exit.loopexit.unr-lcssa ], [ 0, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.pre-phi ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = zext i32 %i.ej to i64
  %i.el = sub i32 %.1213, %.1211
  %i.em = call i32 @RelationGetBufferForTuple(ptr noundef nonnull %0, i64 noundef %i.ek, i32 noundef 0, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef %i.el) #12 ; 10 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %heap_multi_insert_pages.exit
  %i.eo = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ep = xor i32 %i.em, -1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8
  br label %BufferGetPage.exit

bb.ad:                                            ; preds = %heap_multi_insert_pages.exit
  %i.et = load ptr, ptr @BufferBlocks, align 8
  %i.eu = add nsw i32 %i.em, -1
  %i.ev = sext i32 %i.eu to i64
  %i.ew = shl nsw i64 %i.ev, 13
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.ac, %bb.ad
  %.0.i.i = phi ptr [ %i.es, %bb.ac ], [ %i.ex, %bb.ad ] ; 7 uses
  %i.ey = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.ey, align 4            ; 2 uses
  %i.ez = icmp ult i16 %.val, 25
  %i.fa = zext i16 %.val to i32
  %i.fb = add nuw nsw i32 %i.fa, 262120
  %i.fc = and i32 %i.fb, 262140
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = select i1 %i.ez, i1 true, i1 %i.fd      ; 6 uses
  %.not232 = xor i1 %i.fe, true
  %or.cond233 = or i1 %.not228, %.not232          ; 6 uses
  br i1 %or.cond233, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %BufferGetPage.exit
  %i.ff = load i32, ptr %i.a, align 4
  call void @LockBufferInternal(i32 noundef %i.ff, i32 noundef 3) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %BufferGetPage.exit
  %i.fg = load volatile i32, ptr @CritSectionCount, align 4
  %i.fh = add i32 %i.fg, 1
  store volatile i32 %i.fh, ptr @CritSectionCount, align 4
  %i.fi = load ptr, ptr %i.eh, align 8
  call void @RelationPutHeapTuple(ptr noundef nonnull %0, i32 noundef %i.em, ptr noundef %i.fi, i1 noundef zeroext false) #12
  br i1 %or.cond7, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fj = load ptr, ptr %i.eh, align 8
  call fastcc void @log_heap_new_cid(ptr noundef nonnull %0, ptr noundef %i.fj)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fk = add nsw i32 %.0215266, 1                ; 3 uses
  %i.fl = icmp slt i32 %i.fk, %2
  br i1 %i.fl, label %.lr.ph254.preheader, label %._crit_edge255

.lr.ph254.preheader:                              ; preds = %bb.ah
  %8 = sext i32 %i.fk to i64
  %i.fm = sub i32 %2, %.0215266                   ; 2 uses
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %bb.aq
  %indvars.iv282 = phi i64 [ %8, %.lr.ph254.preheader ], [ %indvars.iv.next283, %bb.aq ] ; 3 uses
  %.0205252 = phi i32 [ 1, %.lr.ph254.preheader ], [ %i.gq, %bb.aq ] ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv282
  %i.fo = load ptr, ptr %i.fn, align 8            ; 4 uses
  %i.fp = call i64 @PageGetHeapFreeSpace(ptr noundef %.0.i.i) #12
  %i.fq = load i32, ptr %i.fo, align 8
  %i.fr = zext i32 %i.fq to i64
  %i.fs = add nuw nsw i64 %i.fr, 7
  %i.ft = and i64 %i.fs, 8589934584
  %i.fu = add nsw i64 %i.ft, %i.bt
  %i.fv = icmp ult i64 %i.fp, %i.fu
  br i1 %i.fv, label %._crit_edge255.loopexit.split.loop.exit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph254
  call void @RelationPutHeapTuple(ptr noundef nonnull %0, i32 noundef %i.em, ptr noundef nonnull %i.fo, i1 noundef zeroext false) #12
  br i1 %or.cond7, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8            ; 6 uses
  %i.fy = call i32 @GetTopTransactionId() #12
  store i32 %i.fy, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull readonly align 8 dereferenceable(12) %0, i64 12, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.co, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.fz, i64 6, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  %i.gb = load i16, ptr %i.ga, align 4
  %i.gc = zext i16 %i.gb to i32                   ; 4 uses
  %i.gd = and i32 %i.gc, 32
  %.not.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = call i32 @HeapTupleHeaderGetCmin(ptr noundef nonnull %i.fx) #12
  store i32 %i.ge, ptr %i.cp, align 4
  %i.gf = call i32 @HeapTupleHeaderGetCmax(ptr noundef nonnull %i.fx) #12
  store i32 %i.gf, ptr %i.cq, align 4
  %i.gg = getelementptr i8, ptr %i.fx, i64 8
  %.val13.i = load i32, ptr %i.gg, align 4
  br label %log_heap_new_cid.exit

bb.al:                                            ; preds = %bb.aj
  %i.gh = and i32 %i.gc, 2048
  %.not11.i = icmp eq i32 %i.gh, 0
  br i1 %.not11.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gi = and i32 %i.gc, 128
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = and i32 %i.gc, 4176
  %i.gl = icmp eq i32 %i.gk, 64
  %i.gm = or i1 %i.gj, %i.gl
  br i1 %i.gm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gn = getelementptr i8, ptr %i.fx, i64 8
  %.val12.i = load i32, ptr %i.gn, align 4
  store i32 %.val12.i, ptr %i.cp, align 4
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i32 -1, ptr %i.cp, align 4
  %i.go = getelementptr i8, ptr %i.fx, i64 8
  %.val.i = load i32, ptr %i.go, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.val.sink.i = phi i32 [ %.val.i, %bb.ao ], [ -1, %bb.an ]
  store i32 %.val.sink.i, ptr %i.cq, align 4
  br label %log_heap_new_cid.exit

log_heap_new_cid.exit:                            ; preds = %bb.ak, %bb.ap
  %.sink.i = phi i32 [ -1, %bb.ap ], [ %.val13.i, %bb.ak ]
  store i32 %.sink.i, ptr %i.cr, align 4
  call void @XLogBeginInsert() #12
  call void @XLogRegisterData(ptr noundef nonnull %6, i32 noundef 34) #12
  %i.gp = call i64 @XLogInsert(i8 noundef zeroext 9, i8 noundef zeroext 112) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aq

bb.aq:                                            ; preds = %log_heap_new_cid.exit, %bb.ai
  %i.gq = add i32 %.0205252, 1                    ; 2 uses
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, 1
  %exitcond282.not = icmp eq i32 %i.gq, %i.fm
  br i1 %exitcond282.not, label %._crit_edge255, label %.lr.ph254, !llvm.loop !20

._crit_edge255.loopexit.split.loop.exit:          ; preds = %.lr.ph254
  %9 = trunc nsw i64 %indvars.iv282 to i32
  br label %._crit_edge255

._crit_edge255:                                   ; preds = %bb.aq, %._crit_edge255.loopexit.split.loop.exit, %bb.ah
  %.0205.lcssa = phi i32 [ 1, %bb.ah ], [ %.0205252, %._crit_edge255.loopexit.split.loop.exit ], [ %i.fm, %bb.aq ] ; 4 uses
  %.lcssa = phi i32 [ %i.fk, %bb.ah ], [ %9, %._crit_edge255.loopexit.split.loop.exit ], [ %2, %bb.aq ] ; 3 uses
  %i.gr = getelementptr i8, ptr %.0.i.i, i64 10   ; 3 uses
  %.val238 = load i16, ptr %i.gr, align 2         ; 3 uses
  %i.gs = and i16 %.val238, 4
  %i.gt = icmp ne i16 %i.gs, 0
  %or.cond234 = and i1 %.not228, %i.gt            ; 2 uses
  br i1 %or.cond234, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge255
  %i.gu = and i16 %.val238, -5
  store i16 %i.gu, ptr %i.gr, align 2
  %i.gv = call i32 @BufferGetBlockNumber(i32 noundef %i.em) #12
  %i.gw = load i32, ptr %i.a, align 4
  %i.gx = call zeroext i1 @visibilitymap_clear(ptr noundef nonnull %0, i32 noundef %i.gv, i32 noundef %i.gw, i8 noundef zeroext 3) #12 ; 0 uses
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge255
  br i1 %or.cond233, label %bb.at, label %.thread244

.thread244:                                       ; preds = %bb.as
  %i.gy = or i16 %.val238, 4
  store i16 %i.gy, ptr %i.gr, align 2
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store i32 0, ptr %i.gz, align 4
  %i.ha = call i32 @BufferGetBlockNumber(i32 noundef %i.em) #12
  %i.hb = load i32, ptr %i.a, align 4
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  call void @visibilitymap_set(i32 noundef %i.ha, i32 noundef %i.hb, i8 noundef zeroext 3, i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload) #12
  br label %bb.ax

bb.at:                                            ; preds = %bb.as, %bb.ar
  %or.cond11.not.not = select i1 %or.cond233, i1 %i.cs, i1 false
  br i1 %or.cond11.not.not, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4            ; 4 uses
  %.not = icmp eq i32 %i.hd, 0
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.he = icmp ugt i32 %i.hd, 2
  %i.hf = sub i32 %i.b, %i.hd
  %i.hg = icmp slt i32 %i.hf, 0
  %i.hh = icmp ult i32 %i.b, %i.hd
  %.0.i240 = select i1 %i.he, i1 %i.hg, i1 %i.hh
  br i1 %.0.i240, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  store i32 %i.b, ptr %i.hc, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.thread244, %bb.av, %bb.aw, %bb.at
  call void @MarkBufferDirty(i32 noundef %i.em) #12
  br i1 %i.bk, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.hi = sext i32 %.0205.lcssa to i64
  %i.hj = shl nsw i64 %i.hi, 1
  %.0201.idx = select i1 %i.fe, i64 0, i64 %i.hj  ; 2 uses
  %.0201 = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0201.idx ; 5 uses
  %storemerge = zext i1 %or.cond234 to i8
  %storemerge231 = select i1 %or.cond233, i8 %storemerge, i8 32
  store i8 %storemerge231, ptr %7, align 8
  %i.hk = trunc i32 %.0205.lcssa to i16
  store i16 %i.hk, ptr %i.cu, align 2
  %i.hl = icmp sgt i32 %.0205.lcssa, 0
  br i1 %i.hl, label %.lr.ph263.preheader, label %._crit_edge264

.lr.ph263.preheader:                              ; preds = %bb.ay
  %wide.trip.count286 = zext nneg i32 %.0205.lcssa to i64
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %bb.ba
  %indvars.iv283 = phi i64 [ 0, %.lr.ph263.preheader ], [ %indvars.iv.next284, %bb.ba ] ; 3 uses
  %.1202261 = phi ptr [ %.0201, %.lr.ph263.preheader ], [ %i.ir, %bb.ba ]
  %i.hm = trunc nuw nsw i64 %indvars.iv283 to i32
  %i.hn = add i32 %.0215266, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8            ; 3 uses
  br i1 %i.fe, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph263
  %i.hr = getelementptr i8, ptr %i.hq, i64 8
  %.val239 = load i16, ptr %i.hr, align 2
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv283
  store i16 %.val239, ptr %i.hs, align 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph263
  %i.ht = ptrtoint ptr %.1202261 to i64
  %i.hu = add i64 %i.ht, 1
  %i.hv = and i64 %i.hu, -2
  %i.hw = inttoptr i64 %i.hv to ptr               ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 7 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 4 uses
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 18
  %i.ib = load i16, ptr %i.ia, align 2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  store i16 %i.ib, ptr %i.ic, align 2
  %i.id = load ptr, ptr %i.hy, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 20
  %i.if = load i16, ptr %i.ie, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i16 %i.if, ptr %i.ig, align 2
  %i.ih = load ptr, ptr %i.hy, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 22
  %i.ij = load i8, ptr %i.ii, align 2
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hw, i64 6
  store i8 %i.ij, ptr %i.ik, align 2
  %i.il = load i32, ptr %i.hq, align 8
  %i.im = add i32 %i.il, -23                      ; 2 uses
  %i.in = load ptr, ptr %i.hy, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 23
  %i.ip = sext i32 %i.im to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hx, ptr nonnull align 1 %i.io, i64 %i.ip, i1 false)
  %i.iq = trunc i32 %i.im to i16
  store i16 %i.iq, ptr %i.hw, align 2
  %i.ir = getelementptr inbounds i8, ptr %i.hx, i64 %i.ip ; 2 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge264, label %.lr.ph263, !llvm.loop !21

._crit_edge264:                                   ; preds = %bb.ba, %bb.ay
  %.1202.lcssa = phi ptr [ %.0201, %bb.ay ], [ %i.ir, %bb.ba ]
  %i.is = ptrtoint ptr %.1202.lcssa to i64
  %i.it = ptrtoint ptr %.0201 to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = trunc i64 %i.iu to i32                  ; 2 uses
  br i1 %i.z, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge264
  %i.iw = load i8, ptr %7, align 8
  %i.ix = or i8 %i.iw, 8
  store i8 %i.ix, ptr %7, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge264
  %i.iy = icmp eq i32 %.lcssa, %2
  br i1 %i.iy, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.iz = load i8, ptr %7, align 8
  %i.ja = or i8 %i.iz, 2
  store i8 %i.ja, ptr %7, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %spec.select = select i1 %i.fe, i8 -48, i8 80   ; 2 uses
  %spec.select235 = select i1 %i.fe, i8 6, i8 0
  call void @XLogBeginInsert() #12
  %i.jb = trunc i64 %.0201.idx to i32
  %i.jc = add i32 %i.jb, 4
  call void @XLogRegisterData(ptr noundef nonnull %7, i32 noundef %i.jc) #12
  %i.jd = or disjoint i8 %spec.select235, %i.cv
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %i.em, i8 noundef zeroext %i.jd) #12
  br i1 %or.cond233, label %.thread249, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.je = load i32, ptr %i.a, align 4
  call void @XLogRegisterBuffer(i8 noundef zeroext 1, i32 noundef %i.je, i8 noundef zeroext 0) #12
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %.0201, i32 noundef %i.iv) #12
  call void @XLogSetRecordFlags(i8 noundef zeroext 1) #12
  %i.jf = call i64 @XLogInsert(i8 noundef zeroext 9, i8 noundef zeroext %spec.select) #12 ; 2 uses
  %i.jg = call i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 32) ; 2 uses
  store volatile i64 %i.jg, ptr %.0.i.i, align 8
  %i.jh = load i32, ptr %i.a, align 4             ; 4 uses
  %i.ji = icmp slt i32 %i.jh, 0
  br i1 %i.ji, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jj = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.jk = xor i32 %i.jh, -1
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8
  br label %.thread248

bb.bh:                                            ; preds = %bb.bf
  %i.jo = load ptr, ptr @BufferBlocks, align 8
  %i.jp = add nsw i32 %i.jh, -1
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 13
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  br label %.thread248

.thread248:                                       ; preds = %bb.bh, %bb.bg
  %.0.i.i241 = phi ptr [ %i.jn, %bb.bg ], [ %i.js, %bb.bh ]
  store volatile i64 %i.jg, ptr %.0.i.i241, align 8
  %i.jt = load volatile i32, ptr @CritSectionCount, align 4
  %i.ju = add i32 %i.jt, -1
  store volatile i32 %i.ju, ptr @CritSectionCount, align 4
  br label %bb.bj

.thread249:                                       ; preds = %bb.be
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %.0201, i32 noundef %i.iv) #12
  call void @XLogSetRecordFlags(i8 noundef zeroext 1) #12
  %i.jv = call i64 @XLogInsert(i8 noundef zeroext 9, i8 noundef zeroext %spec.select) #12 ; 2 uses
end_hunk_0
