Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gist?download=true
inline.NumInlined: 150
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gistdoinsert:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 0, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 8 uses
  store ptr %6, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.s = phi i8 [ 0, %bb.a ], [ %.pre, %.backedge ]
  %.0112 = phi ptr [ %6, %bb.a ], [ %.0112.be, %.backedge ] ; 4 uses
  %.0 = phi i1 [ false, %bb.a ], [ %.0.be, %.backedge ] ; 2 uses
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.0112, i64 4
  %i.v = load i32, ptr %i.u, align 4
  call void @UnlockBuffer(i32 noundef %i.v) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %.0112, i64 4
  %i.x = load i32, ptr %i.w, align 4
  call void @ReleaseBuffer(i32 noundef %i.x) #8
  %i.y = getelementptr inbounds nuw i8, ptr %.0112, i64 32
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  store ptr %i.z, ptr %i.p, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !6, !noundef !7
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.d, %.lr.ph.peel.next
  %.1113148 = phi ptr [ %i.ae, %.lr.ph.peel.next ], [ %i.z, %bb.d ] ; 2 uses
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %.1113148, i64 4
  %.pre158 = load i32, ptr %.phi.trans.insert157, align 4
  call void @ReleaseBuffer(i32 noundef %.pre158) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %.1113148, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !range !6, !noundef !7
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.peel.next, label %._crit_edge.loopexit, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %.lr.ph.peel.next
  store ptr %i.ae, ptr %i.p, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d, %bb.b
  %.1113.lcssa = phi ptr [ %.0112, %bb.b ], [ %i.z, %bb.d ], [ %i.ae, %._crit_edge.loopexit ] ; 31 uses
  %.1.lcssa = phi i1 [ %.0, %bb.b ], [ false, %bb.d ], [ false, %._crit_edge.loopexit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 16 ; 5 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ak = load i32, ptr %.1113.lcssa, align 8
  %i.al = call i32 @ReadBuffer(ptr noundef %0, i32 noundef %i.ak) #8
  %i.am = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 4
  store i32 %i.al, ptr %i.am, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %.1.lcssa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  call void @LockBufferInternal(i32 noundef %i.ao, i32 noundef 1) #8
  %i.ap = load i32, ptr %i.an, align 4
  call void @gistcheckpage(ptr noundef %0, i32 noundef %i.ap) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 4 ; 18 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 4 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.au = xor i32 %i.ar, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %BufferGetPage.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr @BufferBlocks, align 8
  %i.az = add nsw i32 %i.ar, -1
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.i, %bb.j
  %i.bd = phi ptr [ %i.ax, %bb.i ], [ %i.bc, %bb.j ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 8 ; 6 uses
  store ptr %i.bd, ptr %i.be, align 8
  br i1 %.1.lcssa, label %bb.k, label %.thread

bb.k:                                             ; preds = %BufferGetPage.exit
  %i.bf = load volatile i64, ptr %i.bd, align 8   ; 2 uses
  %i.bg = call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  store i64 %i.bg, ptr %i.ai, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i16, ptr %i.bl, align 4            ; 2 uses
  %i.bn = and i16 %i.bm, 8
  %.not118 = icmp eq i16 %i.bn, 0
  br i1 %.not118, label %bb.ac, label %bb.l

.thread:                                          ; preds = %BufferGetPage.exit
  %i.bo = call i64 @BufferGetLSNAtomic(i32 noundef %i.ar) #8
  store i64 %i.bo, ptr %i.ai, align 8
  %i.bp = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i16, ptr %i.bu, align 4            ; 2 uses
  %i.bw = and i16 %i.bv, 8
  %.not118141 = icmp eq i16 %i.bw, 0
  br i1 %.not118141, label %bb.ac, label %.thread142

.thread142:                                       ; preds = %.thread
  %i.bx = load i32, ptr %i.aq, align 4
  call void @UnlockBuffer(i32 noundef %i.bx) #8
  %i.by = load i32, ptr %i.aq, align 4
  call void @LockBufferInternal(i32 noundef %i.by, i32 noundef 3) #8
  %i.bz = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i16, ptr %i.ca, align 8
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i16, ptr %i.ce, align 4
  %i.cg = and i16 %i.cf, 8
  %.not129 = icmp eq i16 %i.cg, 0
  br i1 %.not129, label %.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread142
  %i.ch = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %i.r, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %.1113.lcssa, align 8
  %i.cl = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.cj, i32 noundef %i.ck) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1209, ptr noundef nonnull @__func__.gistfixsplit) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 26 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %.029.i = phi i32 [ %i.cn, %bb.n ], [ %i.ew, %bb.v ] ; 5 uses
  %.028.i = phi ptr [ null, %bb.n ], [ %i.em, %bb.v ]
  %i.cq = call ptr @palloc(i64 noundef 16) #8     ; 3 uses
  %i.cr = icmp slt i32 %.029.i, 0
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ct = xor i32 %.029.i, -1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %BufferGetPage.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr @BufferBlocks, align 8
  %i.cy = add nsw i32 %.029.i, -1
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 13
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.q, %bb.p
  %.0.i.i31.i = phi ptr [ %i.cw, %bb.p ], [ %i.db, %bb.q ] ; 5 uses
  %i.dc = getelementptr i8, ptr %.0.i.i31.i, i64 12
  %.val.i.i = load i16, ptr %i.dc, align 4        ; 2 uses
  %i.dd = icmp ult i16 %.val.i.i, 25
  %i.de = zext i16 %.val.i.i to i32
  %i.df = add nuw nsw i32 %i.de, 262120
  %8 = lshr i32 %i.df, 2
  %9 = trunc i32 %8 to i16                        ; 2 uses
  %.not3740.i.i = icmp eq i16 %9, 0
  %.not37.i.i = select i1 %i.dd, i1 true, i1 %.not3740.i.i
  br i1 %.not37.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BufferGetPage.exit.i.i
  %i.dg = getelementptr i8, ptr %.0.i.i31.i, i64 20
  %umax.i.i = add nuw nsw i16 %9, 1
  %wide.trip.count.i.i = zext i16 %umax.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 2 uses
  %.039.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.2.i.i, %bb.u ] ; 3 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i
  %.val36.i.i = load i32, ptr %i.dh, align 4
  %i.di = and i32 %.val36.i.i, 32767
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 %i.dj ; 2 uses
  %i.dl = icmp eq ptr %.039.i.i, null
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = call ptr @CopyIndexTuple(ptr noundef nonnull %i.dk) #8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dn = call ptr @gistgetadjusted(ptr noundef %0, ptr noundef nonnull %.039.i.i, ptr noundef nonnull %i.dk, ptr noundef %3) #8 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.dn, null
  %spec.select.i.i = select i1 %.not34.i.i, ptr %.039.i.i, ptr %i.dn
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i.i = phi ptr [ %i.dm, %bb.s ], [ %spec.select.i.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.i.i, label %._crit_edge.i.i, label %bb.r, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %bb.u
  %.not33.i.i = icmp eq ptr %.2.i.i, null
  br i1 %.not33.i.i, label %._crit_edge.thread.i.i, label %gistformdownlink.exit.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %BufferGetPage.exit.i.i
  %i.do = load ptr, ptr %i.co, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4
  call void @LockBufferInternal(i32 noundef %i.dq, i32 noundef 3) #8
  call fastcc void @gistFindCorrectParent(ptr noundef %0, ptr noundef %.1113.lcssa)
  %i.dr = load ptr, ptr %i.co, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = load i16, ptr %i.cp, align 2
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr i8, ptr %i.dt, i64 20
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.dv
  %.val35.i.i = load i32, ptr %i.dx, align 4
  %i.dy = and i32 %.val35.i.i, 32767
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dz
  %i.eb = call ptr @CopyIndexTuple(ptr noundef %i.ea) #8
  %i.ec = load ptr, ptr %i.co, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4
  call void @UnlockBuffer(i32 noundef %i.ee) #8
  br label %gistformdownlink.exit.i

gistformdownlink.exit.i:                          ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.3.i.i = phi ptr [ %.2.i.i, %._crit_edge.i.i ], [ %i.eb, %._crit_edge.thread.i.i ] ; 4 uses
  %i.ef = call i32 @BufferGetBlockNumber(i32 noundef %.029.i) #8 ; 2 uses
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc nuw i32 %i.eg to i16
  store i16 %i.eh, ptr %.3.i.i, align 2
  %i.ei = trunc i32 %i.ef to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 2
  store i16 %i.ei, ptr %i.ej, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  store i16 -1, ptr %i.ek, align 2
  store i32 %.029.i, ptr %i.cq, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %.3.i.i, ptr %i.el, align 8
  %i.em = call ptr @lappend(ptr noundef %.028.i, ptr noundef nonnull %i.cq) #8 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 16
  %i.eo = load i16, ptr %i.en, align 8
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.es = load i16, ptr %i.er, align 4
  %i.et = and i16 %i.es, 8
  %.not.i = icmp eq i16 %i.et, 0
  br i1 %.not.i, label %gistfixsplit.exit, label %bb.v

bb.v:                                             ; preds = %gistformdownlink.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = call i32 @ReadBuffer(ptr noundef %0, i32 noundef %i.ev) #8 ; 2 uses
  call void @LockBufferInternal(i32 noundef %i.ew, i32 noundef 3) #8
  br label %bb.o

gistfixsplit.exit:                                ; preds = %gistformdownlink.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ex = load ptr, ptr %i.co, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4
  call void @LockBufferInternal(i32 noundef %i.ez, i32 noundef 3) #8, !inline_history !14
  %.not.i.i139 = icmp eq ptr %i.em, null
  br i1 %.not.i.i139, label %gistfinishsplit.exit, label %list_length.exit.i

list_length.exit.i:                               ; preds = %gistfixsplit.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %.036.i = add i32 %i.fb, -1                     ; 2 uses
  %i.fc = icmp sgt i32 %.036.i, 1
  br i1 %i.fc, label %.lr.ph.i, label %gistfinishsplit.exit

.lr.ph.i:                                         ; preds = %list_length.exit.i
  %.pre162 = load i8, ptr %i.k, align 8, !range !6
  %i.fd = getelementptr i8, ptr %i.em, i64 16
  %i.fe = zext nneg i32 %.036.i to i64
  %i.ff = zext i32 %i.fb to i64
  %i.fg = trunc nuw i8 %.pre162 to i1
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv39.i = phi i64 [ %i.ff, %.lr.ph.i ], [ %indvars.iv.next40.i, %bb.ab ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.fe, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 3 uses
  %.val35.i = load ptr, ptr %i.fd, align 8        ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.val35.i, i64 %indvars.iv.i
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %i.fj = add nsw i64 %indvars.iv39.i, 4294967294
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.val35.i, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8
  call fastcc void @gistFindCorrectParent(ptr noundef %0, ptr noundef nonnull %.1113.lcssa)
  %i.fn = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fp = load i32, ptr %i.fm, align 8
  %i.fq = load i32, ptr %i.fi, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = call i32 @BufferGetBlockNumber(i32 noundef %i.fs) #8, !inline_history !15
  call void @CheckForSerializableConflictIn(ptr noundef %0, ptr noundef null, i32 noundef %i.ft) #8, !inline_history !15
  %i.fu = load i32, ptr %i.fr, align 4
  %i.fv = call zeroext i1 @gistplacetopage(ptr noundef %0, i64 noundef %2, ptr noundef %3, i32 noundef %i.fu, ptr noundef nonnull %i.fo, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef %i.fp, ptr noundef nonnull %i.a, i1 noundef zeroext true, ptr noundef %4, i1 noundef zeroext %i.fg), !inline_history !15
  %.not24.i = icmp eq i32 %i.fq, 0
  br i1 %.not24.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @UnlockReleaseBuffer(i32 noundef %i.fq) #8, !inline_history !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fw = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i140 = icmp eq ptr %i.fw, null
  br i1 %.not.i140, label %gistinserttuples.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call fastcc void @gistfinishsplit(ptr noundef nonnull readonly %7, ptr noundef nonnull %i.fn, ptr noundef %3, ptr noundef nonnull %i.fw, i1 noundef zeroext false) #10, !inline_history !15
  br label %gistinserttuples.exit

gistinserttuples.exit:                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.fv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %gistinserttuples.exit
  store i16 0, ptr %i.cp, align 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %gistinserttuples.exit
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.fx = icmp sgt i64 %indvars.iv.i, 2
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1
  br i1 %i.fx, label %bb.w, label %gistfinishsplit.exit, !llvm.loop !0

gistfinishsplit.exit:                             ; preds = %bb.ab, %gistfixsplit.exit, %list_length.exit.i
  %i.fy = getelementptr i8, ptr %i.em, i64 16
  %.val33.i = load ptr, ptr %i.fy, align 8        ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.gb = load ptr, ptr %.val33.i, align 8        ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  store ptr %i.gd, ptr %i.b, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  store ptr %i.gf, ptr %i.q, align 8
  call fastcc void @gistFindCorrectParent(ptr noundef %0, ptr noundef nonnull %.1113.lcssa)
  %i.gg = load ptr, ptr %i.co, align 8
  %i.gh = load i16, ptr %i.cp, align 2
  %i.gi = load i32, ptr %i.gb, align 8
  %i.gj = load i32, ptr %i.ga, align 8
  %i.gk = call fastcc zeroext i1 @gistinserttuples(ptr noundef nonnull readonly %7, ptr noundef %i.gg, ptr noundef %3, ptr noundef nonnull %i.b, i32 noundef 2, i16 noundef zeroext %i.gh, i32 noundef %i.gi, i32 noundef %i.gj, i1 noundef zeroext true, i1 noundef zeroext false) #11, !inline_history !14 ; 0 uses
  store i16 0, ptr %i.cp, align 2
  %i.gl = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 24
  store i8 1, ptr %i.gl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.gm = load i32, ptr %i.aq, align 4
  call void @UnlockReleaseBuffer(i32 noundef %i.gm) #8
  %i.gn = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.go = load ptr, ptr %i.gn, align 8            ; 2 uses
  store ptr %i.go, ptr %i.p, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.as, %BufferGetPage.exit134, %bb.ar, %bb.aq, %gistfinishsplit.exit, %bb.af, %bb.ay, %bb.bb, %.thread142
  %.0112.be = phi ptr [ %i.go, %gistfinishsplit.exit ], [ %.1113.lcssa, %.thread142 ], [ %i.hd, %bb.af ], [ %.1113.lcssa, %bb.ay ], [ %i.kr, %bb.bb ], [ %.1113.lcssa, %BufferGetPage.exit134 ], [ %i.jf, %bb.as ], [ %i.jd, %bb.ar ], [ %.1113.lcssa, %bb.aq ] ; 2 uses
  %.0.be = phi i1 [ false, %gistfinishsplit.exit ], [ true, %.thread142 ], [ false, %bb.af ], [ false, %bb.ay ], [ false, %bb.bb ], [ true, %BufferGetPage.exit134 ], [ false, %bb.as ], [ false, %bb.ar ], [ true, %bb.aq ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0112.be, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !6
  br label %bb.b
end_hunk_0
begin_hunk_1_@gistSplitByKey

declare zeroext i1 @gistfitpage(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CreateTupleDescTruncatedCopy(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fmgr_info_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @index_getprocinfo(ptr noundef, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @index_getprocid(ptr noundef, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @freeGISTstate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @MemoryContextDelete(ptr noundef %i.a) #8
  ret void
}

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #1

declare void @UnlockBuffer(i32 noundef) local_unnamed_addr #1

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gistfinishsplit(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4
  tail call void @LockBufferInternal(i32 noundef %i.e, i32 noundef 3) #8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %._crit_edge, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.036 = add i32 %i.g, -1                        ; 2 uses
  %i.h = icmp sgt i32 %.036, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %list_length.exit
  %i.i = getelementptr i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.k = zext nneg i32 %.036 to i64
  %i.l = zext i32 %i.g to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a, %list_length.exit
  %i.m = getelementptr i8, ptr %3, i64 16
  %.val33 = load ptr, ptr %i.m, align 8           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %.val33, align 8           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.r, ptr %i.a, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8
  tail call fastcc void @gistFindCorrectParent(ptr noundef %i.v, ptr noundef nonnull %1)
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2
  %i.z = load i32, ptr %i.p, align 8
  %i.aa = load i32, ptr %i.o, align 8
  %i.ab = call fastcc zeroext i1 @gistinserttuples(ptr noundef %0, ptr noundef %i.w, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2, i16 noundef zeroext %i.y, i32 noundef %i.z, i32 noundef %i.aa, i1 noundef zeroext true, i1 noundef zeroext %4) ; 0 uses
  store i16 0, ptr %i.x, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv39 = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next40, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.val35 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = add i64 %indvars.iv39, 4294967294
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %0, align 8
  tail call fastcc void @gistFindCorrectParent(ptr noundef %i.aj, ptr noundef nonnull %1)
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = load i32, ptr %i.ai, align 8
  %i.an = load i32, ptr %i.ae, align 8
  %i.ao = tail call fastcc zeroext i1 @gistinserttuples(ptr noundef %0, ptr noundef %i.ak, ptr noundef %2, ptr noundef nonnull %i.al, i32 noundef 1, i16 noundef zeroext 0, i32 noundef %i.am, i32 noundef %i.an, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.j, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ap = icmp sgt i64 %indvars.iv, 2
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !0
}

declare ptr @CopyIndexTuple(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gistFindCorrectParent(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.ac, %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4
  tail call void @gistcheckpage(ptr noundef %0, i32 noundef %i.e) #8
  %i.f = load i32, ptr %i.d, align 4              ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.h = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.i = xor i32 %i.f, -1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %tailrecurse
  %i.m = load ptr, ptr @BufferBlocks, align 8
  %i.n = add nsw i32 %i.f, -1
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 13
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.0.i.i, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.0.i.i, i64 12
  %.val71 = load i16, ptr %i.s, align 4           ; 3 uses
  %i.t = icmp ult i16 %.val71, 25
  %i.u = zext i16 %.val71 to i32
  %i.v = add nuw nsw i32 %i.u, 262120
  %i.w = lshr i32 %i.v, 2
  %i.x = trunc i32 %i.w to i16
  %.0.i = select i1 %i.t, i16 0, i16 %i.x
  %i.y = load i16, ptr %i.b, align 2              ; 2 uses
  %i.z = freeze i16 %.0.i
  %i.aa = add i16 %i.y, -1
  %or.cond.not = icmp ult i16 %i.aa, %i.z
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.ab = zext i16 %i.y to i64
  %i.ac = getelementptr i8, ptr %.0.i.i, i64 20
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.ab
  %.val73 = load i32, ptr %i.ad, align 4
  %i.ae = and i32 %.val73, 32767
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.af ; 2 uses
  %.val76 = load i16, ptr %i.ag, align 2
  %i.ah = getelementptr i8, ptr %i.ag, i64 2
  %.val77 = load i16, ptr %i.ah, align 2
  %i.ai = zext i16 %.val76 to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = zext i16 %.val77 to i32
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = load i32, ptr %1, align 8
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %BufferGetPage.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.ap = phi i32 [ %i.bs, %bb.l ], [ %i.f, %bb.e ]
  %.val = phi i16 [ %.val.pre, %bb.l ], [ %.val71, %bb.e ] ; 2 uses
  %i.aq = phi ptr [ %.0.i.i79, %bb.l ], [ %.0.i.i, %bb.e ] ; 4 uses
  %i.ar = icmp ult i16 %.val, 25
  %i.as = zext i16 %.val to i32
  %i.at = add nuw nsw i32 %i.as, 262120
  %i.au = lshr i32 %i.at, 2
  %i.av = trunc i32 %i.au to i16                  ; 2 uses
  %.not68109119 = icmp eq i16 %i.av, 0
  %.not68109 = select i1 %i.ar, i1 true, i1 %.not68109119
  br i1 %.not68109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %i.aq, i64 20
  %i.ax = load i32, ptr %1, align 8
  %umax = add nuw nsw i16 %i.av, 1
  %wide.trip.count = zext i16 %umax to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv
  %.val72 = load i32, ptr %i.ay, align 4
  %i.az = and i32 %.val72, 32767
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ba ; 2 uses
  %.val74 = load i16, ptr %i.bb, align 2
  %i.bc = getelementptr i8, ptr %i.bb, i64 2
  %.val75 = load i16, ptr %i.bc, align 2
  %i.bd = zext i16 %.val74 to i32
  %i.be = shl nuw i32 %i.bd, 16
  %i.bf = zext i16 %.val75 to i32
  %i.bg = or disjoint i32 %i.be, %i.bf
  %i.bh = icmp eq i32 %i.bg, %i.ax
  br i1 %i.bh, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %2 = trunc nuw i64 %indvars.iv to i16
  store i16 %2, ptr %i.b, align 2
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.g, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8
  store i32 %i.bn, ptr %i.c, align 8
  store i16 0, ptr %i.ao, align 2
  tail call void @UnlockReleaseBuffer(i32 noundef %i.ap) #8
  %i.bo = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %bb.m, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bq = tail call i32 @ReadBuffer(ptr noundef %0, i32 noundef %i.bo) #8 ; 2 uses
  store i32 %i.bq, ptr %i.d, align 4
  tail call void @LockBufferInternal(i32 noundef %i.bq, i32 noundef 3) #8
  %i.br = load i32, ptr %i.d, align 4
  tail call void @gistcheckpage(ptr noundef %0, i32 noundef %i.br) #8
  %i.bs = load i32, ptr %i.d, align 4             ; 4 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bv = xor i32 %i.bs, -1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr @BufferBlocks, align 8
  %i.ca = add nsw i32 %i.bs, -1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.i79 = phi ptr [ %i.by, %bb.j ], [ %i.cd, %bb.k ] ; 3 uses
  store ptr %.0.i.i79, ptr %i.r, align 8
  %.phi.trans.insert = getelementptr i8, ptr %.0.i.i79, i64 12
  %.val.pre = load i16, ptr %.phi.trans.insert, align 4
  br label %bb.f

bb.m:                                             ; preds = %._crit_edge
  %i.ce = load ptr, ptr %i.a, align 8
  %.063.in111 = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.063112 = load ptr, ptr %.063.in111, align 8   ; 2 uses
  %.not69113 = icmp eq ptr %.063112, null
  br i1 %.not69113, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.m, %.lr.ph116
  %.063114 = phi ptr [ %.063, %.lr.ph116 ], [ %.063112, %bb.m ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.063114, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  tail call void @ReleaseBuffer(i32 noundef %i.cg) #8
  %.063.in = getelementptr inbounds nuw i8, ptr %.063114, i64 32
  %.063 = load ptr, ptr %.063.in, align 8         ; 2 uses
  %.not69 = icmp eq ptr %.063, null
  br i1 %.not69, label %._crit_edge117, label %.lr.ph116, !llvm.loop !33

._crit_edge117:                                   ; preds = %.lr.ph116, %bb.m
  %i.ch = load i32, ptr %1, align 8               ; 2 uses
  %i.ci = tail call ptr @palloc0(i64 noundef 40) #8 ; 3 uses
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 26
  store i16 0, ptr %i.cj, align 2
  %i.ck = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.ci) #8 ; 2 uses
  %.not86.i = icmp eq ptr %i.ck, null
  br i1 %.not86.i, label %.loopexit.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %._crit_edge117, %._crit_edge.i
  %.087.i = phi ptr [ %.2.lcssa.i, %._crit_edge.i ], [ %i.ck, %._crit_edge117 ] ; 2 uses
  %i.cl = getelementptr i8, ptr %.087.i, i64 16
  %.0.val.i = load ptr, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %.0.val.i, align 8        ; 7 uses
  %i.cn = tail call ptr @list_delete_first(ptr noundef nonnull %.087.i) #8 ; 4 uses
  %i.co = load i32, ptr %i.cm, align 8
  %i.cp = tail call i32 @ReadBuffer(ptr noundef %0, i32 noundef %i.co) #8 ; 9 uses
  tail call void @LockBufferInternal(i32 noundef %i.cp, i32 noundef 1) #8
  tail call void @gistcheckpage(ptr noundef %0, i32 noundef %i.cp) #8
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph89.i
  %i.cr = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.cs = xor i32 %i.cp, -1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %BufferGetPage.exit.i

bb.o:                                             ; preds = %.lr.ph89.i
  %i.cw = load ptr, ptr @BufferBlocks, align 8
  %i.cx = add nsw i32 %i.cp, -1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.cv, %bb.n ], [ %i.da, %bb.o ] ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.dc = load i16, ptr %i.db, align 8
  %i.dd = zext i16 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = load i16, ptr %i.df, align 4
  %i.dh = and i16 %i.dg, 1
  %.not68.i = icmp eq i16 %i.dh, 0
  br i1 %.not68.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %BufferGetPage.exit.i
  tail call void @UnlockReleaseBuffer(i32 noundef %i.cp) #8
  br label %.loopexit.i

bb.q:                                             ; preds = %BufferGetPage.exit.i
  %i.di = tail call i64 @BufferGetLSNAtomic(i32 noundef %i.cp) #8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.di, ptr %i.dj, align 8
  %i.dk = load i16, ptr %i.db, align 8
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.do = load i16, ptr %i.dn, align 4
  %i.dp = and i16 %i.do, 8
  %.not69.i = icmp eq i16 %i.dp, 0
  br i1 %.not69.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dr = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 963, ptr noundef nonnull @__func__.gistFindPath) #8
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not70.i = icmp eq ptr %i.dt, null
  br i1 %.not70.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = load volatile i64, ptr %i.dm, align 8   ; 2 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 32)
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ea = load i32, ptr %i.dz, align 8
  %.not71.i = icmp eq i32 %i.ea, -1
  br i1 %.not71.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = tail call ptr @palloc0(i64 noundef 40) #8 ; 4 uses
  %i.ec = load i16, ptr %i.db, align 8
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8
  store i32 %i.eg, ptr %i.eb, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 0, ptr %i.eh, align 2
  %i.ei = load ptr, ptr %i.ds, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ek = tail call ptr @lcons(ptr noundef nonnull %i.eb, ptr noundef %i.cn) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.1.i = phi ptr [ %i.ek, %bb.v ], [ %i.cn, %bb.u ], [ %i.cn, %bb.t ], [ %i.cn, %bb.s ] ; 2 uses
  %i.el = getelementptr i8, ptr %.0.i.i.i, i64 12
  %.val.i = load i16, ptr %i.el, align 4          ; 2 uses
  %i.em = icmp ult i16 %.val.i, 25
  %i.en = zext i16 %.val.i to i32
  %i.eo = add nuw nsw i32 %i.en, 262120
  %i.ep = lshr i32 %i.eo, 2
  %i.eq = trunc i32 %i.ep to i16                  ; 2 uses
  %.not728390.i = icmp eq i16 %i.eq, 0
  %.not7283.i = select i1 %i.em, i1 true, i1 %.not728390.i
  br i1 %.not7283.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.er = getelementptr i8, ptr %.0.i.i.i, i64 20
  %umax.i = add nuw nsw i16 %i.eq, 1
  %wide.trip.count.i = zext i16 %umax.i to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.y ] ; 4 uses
  %.285.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.ff, %bb.y ]
  %i.es = getelementptr [4 x i8], ptr %i.er, i64 %indvars.iv.i
  %.val73.i = load i32, ptr %i.es, align 4
  %i.et = and i32 %.val73.i, 32767
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.eu ; 2 uses
  %.val74.i = load i16, ptr %i.ev, align 2
  %i.ew = getelementptr i8, ptr %i.ev, i64 2
  %.val75.i = load i16, ptr %i.ew, align 2
  %i.ex = zext i16 %.val74.i to i32
  %i.ey = shl nuw i32 %i.ex, 16
  %i.ez = zext i16 %.val75.i to i32
  %i.fa = or disjoint i32 %i.ey, %i.ez            ; 2 uses
  %i.fb = icmp eq i32 %i.fa, %i.ch
  br i1 %i.fb, label %gistFindPath.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = tail call ptr @palloc0(i64 noundef 40) #8 ; 4 uses
  store i32 %i.fa, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 26
  %3 = trunc nuw i64 %indvars.iv.i to i16
  store i16 %3, ptr %i.fd, align 2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store ptr %i.cm, ptr %i.fe, align 8
  %i.ff = tail call ptr @lappend(ptr noundef %.285.i, ptr noundef nonnull %i.fc) #8 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %._crit_edge.i, label %bb.x, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.y, %bb.w
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.w ], [ %i.ff, %bb.y ] ; 2 uses
  tail call void @UnlockReleaseBuffer(i32 noundef %i.cp) #8
  %.not.i = icmp eq ptr %.2.lcssa.i, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph89.i, !llvm.loop !35

.loopexit.i:                                      ; preds = %._crit_edge117, %._crit_edge.i, %bb.p
  %i.fg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.fj, i32 noundef %i.ch) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1017, ptr noundef nonnull @__func__.gistFindPath) #8
  unreachable

gistFindPath.exit:                                ; preds = %bb.x
  %4 = trunc nuw i64 %indvars.iv.i to i16
  tail call void @UnlockReleaseBuffer(i32 noundef %i.cp) #8
  store i16 %4, ptr %i.b, align 2
  br label %bb.z

bb.z:                                             ; preds = %gistFindPath.exit, %BufferGetPage.exit82
  %.1118 = phi ptr [ %i.cm, %gistFindPath.exit ], [ %i.gb, %BufferGetPage.exit82 ] ; 4 uses
  %i.fl = load i32, ptr %.1118, align 8
  %i.fm = tail call i32 @ReadBuffer(ptr noundef %0, i32 noundef %i.fl) #8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1118, i64 4
  store i32 %i.fm, ptr %i.fn, align 4
  %i.fo = icmp slt i32 %i.fm, 0
  br i1 %i.fo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fp = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.fq = xor i32 %i.fm, -1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8
  br label %BufferGetPage.exit82

bb.ab:                                            ; preds = %bb.z
  %i.fu = load ptr, ptr @BufferBlocks, align 8
  %i.fv = add nsw i32 %i.fm, -1
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 13
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fx
  br label %BufferGetPage.exit82

BufferGetPage.exit82:                             ; preds = %bb.aa, %bb.ab
  %.0.i.i81 = phi ptr [ %i.ft, %bb.aa ], [ %i.fy, %bb.ab ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.1118, i64 8
  store ptr %.0.i.i81, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.1118, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not70 = icmp eq ptr %i.gb, null
  br i1 %.not70, label %bb.ac, label %bb.z, !llvm.loop !36

bb.ac:                                            ; preds = %BufferGetPage.exit82
  store ptr %i.cm, ptr %i.a, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.gd = load i32, ptr %i.gc, align 4
  tail call void @LockBufferInternal(i32 noundef %i.gd, i32 noundef 3) #8
  br label %tailrecurse

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #1

declare ptr @list_delete_first(ptr noundef) local_unnamed_addr #1

declare ptr @lcons(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @gistinserttuples(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 1, 3) %4, i16 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call i32 @BufferGetBlockNumber(i32 noundef %i.d) #8
  tail call void @CheckForSerializableConflictIn(ptr noundef %i.b, ptr noundef null, i32 noundef %i.e) #8
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i32, ptr %i.c, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !6, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = call zeroext i1 @gistplacetopage(ptr noundef %i.f, i64 noundef %i.h, ptr noundef %2, i32 noundef %i.i, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5, ptr noundef null, i32 noundef %6, ptr noundef nonnull %i.a, i1 noundef zeroext true, ptr noundef %i.k, i1 noundef zeroext %i.n)
  %.not24 = icmp eq i32 %7, 0
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @UnlockReleaseBuffer(i32 noundef %7) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = icmp ne i32 %6, 0
  %or.cond = and i1 %i.p, %9
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @UnlockBuffer(i32 noundef %6) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @gistfinishsplit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.q, i1 noundef zeroext %8)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.c, align 4
  tail call void @UnlockBuffer(i32 noundef %i.r) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %i.o
}

declare void @CheckForSerializableConflictIn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @index_compute_xid_horizon_for_tuples(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PageIndexMultiDelete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @gistXLogDelete(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { "function-inline-cost-multiplier"="4" }
attributes #11 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5, !13}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = !{ptr @gistfinishsplit}
!15 = !{ptr @gistinserttuples, ptr @gistfinishsplit}
!16 = !{ptr @gistinserttuples}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
end_hunk_1
