Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginget?download=true
inline.NumInlined: 178
inline.NumDeleted: 37
begin_hunk_0
@LocalBufferBlockPointers = external local_unnamed_addr global ptr, align 8
@BufferBlocks = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [60 x i8] c"could not find additional pending pages for same heap tuple\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ginget.c\00", align 1
@__func__.collectMatchesForHeapRow = private unnamed_addr constant [25 x i8] c"collectMatchesForHeapRow\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@work_mem = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to re-find tuple within index \22%s\22\00", align 1
@__func__.collectMatchBitmap = private unnamed_addr constant [19 x i8] c"collectMatchBitmap\00", align 1
@InterruptPending = external global i32, align 4
@pg_global_prng_state = external global %struct.pg_prng_state, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"entryLoadMoreItems, %u/%u, skip: %d\00", align 1
@__func__.entryLoadMoreItems = private unnamed_addr constant [19 x i8] c"entryLoadMoreItems\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @gingetbitmap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GinBtreeData, align 8       ; 3 uses
  %i.a = alloca i8, align 1                       ; 10 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.GinBtreeData, align 8       ; 9 uses
  %i.d = alloca [1024 x i64], align 16            ; 10 uses
  %i.e = alloca [1024 x i8], align 16             ; 11 uses
  %i.f = alloca [1024 x i8], align 16             ; 8 uses
  %4 = alloca %struct.ItemPointerData, align 2    ; 4 uses
  %5 = alloca %struct.pendingPosition, align 8    ; 16 uses
  %6 = alloca %struct.ItemPointerData, align 8    ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  tail call void @ginFreeScanKeys(ptr noundef %i.h) #7
  tail call void @ginNewScanKey(ptr noundef %0) #7
  %i.i = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9704
  %i.k = load i8, ptr %i.j, align 8, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %scanGetItem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @ReadBuffer(ptr noundef %i.n, i32 noundef 0) #7 ; 6 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @PredicateLockPage(ptr noundef %i.p, i32 noundef 0, ptr noundef %i.r) #7
  tail call void @LockBufferInternal(i32 noundef %i.o, i32 noundef 1) #7
  %i.s = icmp slt i32 %i.o, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.u = xor i32 %i.o, -1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  br label %BufferGetPage.exit.i

bb.d:                                             ; preds = %bb.b
  %i.y = load ptr, ptr @BufferBlocks, align 8
  %i.z = add nsw i32 %i.o, -1
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.ac, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %BufferGetPage.exit.i
  tail call void @UnlockReleaseBuffer(i32 noundef %i.o) #7
  br label %scanPendingInsert.exit

bb.f:                                             ; preds = %BufferGetPage.exit.i
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = tail call i32 @ReadBuffer(ptr noundef %i.ag, i32 noundef %i.ae) #7 ; 2 uses
  store i32 %i.ah, ptr %5, align 8
  tail call void @LockBufferInternal(i32 noundef %i.ah, i32 noundef 1) #7
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  store i16 1, ptr %i.ai, align 4
  tail call void @UnlockReleaseBuffer(i32 noundef %i.o) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 9672 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef %i.al) #7
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call fastcc zeroext i1 @scanGetCandidate(ptr noundef nonnull readonly %0, ptr noundef %5)
  br i1 %i.ao, label %.lr.ph74.i, label %collectMatchesForHeapRow.exit._crit_edge.i

.lr.ph74.i:                                       ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 9664
  br label %bb.g

bb.g:                                             ; preds = %collectMatchesForHeapRow.exit.backedge.i, %.lr.ph74.i
  %.2 = phi i64 [ 0, %.lr.ph74.i ], [ %.3, %collectMatchesForHeapRow.exit.backedge.i ] ; 3 uses
  %i.au = load ptr, ptr %i.g, align 8             ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 9672 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 8
  %.not179.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not179.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 9664
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.0114159.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = sext i32 %.0114159.i.i to i64
  %i.ba = getelementptr inbounds [152 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i32, ptr %i.ba, align 8
  %i.be = zext i32 %i.bd to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 0, i64 %i.be, i1 false)
  %i.bf = add nuw i32 %.0114159.i.i, 1            ; 2 uses
  %i.bg = load i32, ptr %i.av, align 8            ; 2 uses
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %._crit_edge.loopexit.i.i, !llvm.loop !9

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %i.bi = zext i32 %i.bg to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %.lcssa157.i.i = phi i64 [ 0, %bb.g ], [ %i.bi, %._crit_edge.loopexit.i.i ]
  %i.bj = load ptr, ptr %i.an, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %i.bj, i8 0, i64 %.lcssa157.i.i, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 9664 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 9536 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 7968 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ay, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.bp = load i16, ptr %i.ai, align 4
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -1
  %i.bt = load i16, ptr %i.ap, align 2            ; 3 uses
  %i.bu = zext i16 %i.bt to i64
  %i.bv = sub nsw i64 %i.bu, %i.bq
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bs, i8 0, i64 %i.bv, i1 false)
  %i.bw = load i32, ptr %5, align 8               ; 4 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bz = xor i32 %i.bw, -1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8
  br label %BufferGetPage.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr @BufferBlocks, align 8
  %i.ce = add nsw i32 %i.bw, -1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.cc, %bb.j ], [ %i.ch, %bb.k ] ; 8 uses
  %i.ci = load i32, ptr %i.av, align 8            ; 2 uses
  %.not180.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not180.i.i, label %._crit_edge171.i.thread.i, label %.lr.ph170.i.i

.lr.ph170.i.i:                                    ; preds = %BufferGetPage.exit.i.i
  %i.cj = getelementptr i8, ptr %.0.i.i.i.i, i64 20 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge168.i.i, %.lr.ph170.i.i
  %i.ck = phi i32 [ %i.ci, %.lr.ph170.i.i ], [ %i.iu, %._crit_edge168.i.i ]
  %.1115169.i.i = phi i32 [ 0, %.lr.ph170.i.i ], [ %i.iv, %._crit_edge168.i.i ] ; 2 uses
  %i.cl = load ptr, ptr %i.bk, align 8
  %i.cm = sext i32 %.1115169.i.i to i64           ; 2 uses
  %i.cn = getelementptr inbounds [152 x i8], ptr %i.cl, i64 %i.cm ; 5 uses
  %i.co = load i32, ptr %i.cn, align 8            ; 2 uses
  %.not181.i.i = icmp eq i32 %i.co, 0
  br i1 %.not181.i.i, label %._crit_edge168.i.i, label %.lr.ph167.i.i

.lr.ph167.i.i:                                    ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 136
  br label %bb.m

bb.m:                                             ; preds = %bb.ao, %.lr.ph167.i.i
  %i.cs = phi i32 [ %i.co, %.lr.ph167.i.i ], [ %i.ir, %bb.ao ]
  %.0113165.i.i = phi i32 [ 0, %.lr.ph167.i.i ], [ %i.is, %bb.ao ] ; 2 uses
  %i.ct = load ptr, ptr %i.cp, align 8
  %i.cu = sext i32 %.0113165.i.i to i64           ; 4 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8            ; 14 uses
  %i.cx = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.cy = load i16, ptr %i.ap, align 2            ; 3 uses
  %i.cz = load ptr, ptr %i.cq, align 8
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cu
  %i.db = load i8, ptr %i.da, align 1
  %.not122.i.i = icmp eq i8 %i.db, 0
  br i1 %.not122.i.i, label %.preheader147.i.i, label %bb.ao

.preheader147.i.i:                                ; preds = %bb.m
  %i.dc = icmp ult i16 %i.cx, %i.cy
  br i1 %i.dc, label %.lr.ph162.i.i, label %.thread.i.thread.i

.lr.ph162.i.i:                                    ; preds = %.preheader147.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  br label %bb.n

bb.n:                                             ; preds = %bb.af, %.lr.ph162.i.i
  %.0106161.i.i = phi i16 [ %i.cy, %.lr.ph162.i.i ], [ %.2.i.i, %bb.af ] ; 3 uses
  %.0108160.i.i = phi i16 [ %i.cx, %.lr.ph162.i.i ], [ %.2110.i.i, %bb.af ] ; 4 uses
  %narrow.i.i = sub nuw i16 %.0106161.i.i, %.0108160.i.i
  %i.dg = lshr i16 %narrow.i.i, 1
  %i.dh = add i16 %i.dg, %.0108160.i.i            ; 6 uses
  %i.di = zext i16 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr [4 x i8], ptr %i.cj, i64 %i.di
  %.val.i.i = load i32, ptr %i.dj, align 4
  %i.dk = and i32 %.val.i.i, 32767
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.dl ; 2 uses
  %i.dn = call zeroext i16 @gintuple_get_attrnum(ptr noundef nonnull %i.bl, ptr noundef %i.dm) #7 ; 2 uses
  %i.do = load i16, ptr %i.cr, align 8            ; 2 uses
  %i.dp = icmp ult i16 %i.do, %i.dn
  br i1 %i.dp, label %bb.af, label %bb.o, !llvm.loop !10

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp ugt i16 %i.do, %i.dn
  br i1 %i.dq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dr = add i16 %i.dh, 1
  br label %bb.af, !llvm.loop !10

bb.q:                                             ; preds = %bb.o
  %i.ds = add nsw i64 %i.di, -1                   ; 6 uses
  %i.dt = getelementptr inbounds i8, ptr %i.f, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !range !5, !noundef !6
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds i8, ptr %i.e, i64 %i.ds
  %i.dx = call i64 @gintuple_get_key(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dw) #7
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ds
  store i64 %i.dx, ptr %i.dy, align 8
  store i8 1, ptr %i.dt, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dz = load i8, ptr %i.dd, align 8             ; 4 uses
  %i.ea = icmp eq i8 %i.dz, -1
  br i1 %i.ea, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.eb = load i32, ptr %i.df, align 4
  %i.ec = icmp eq i32 %i.eb, 2
  br i1 %i.ec, label %bb.u, label %ginCompareEntries.exit.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds i8, ptr %i.e, i64 %i.ds
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp eq i8 %i.ee, 3
  br i1 %i.ef, label %ginCompareEntries.exit.thread141.i.i, label %ginCompareEntries.exit.thread.i.i

bb.v:                                             ; preds = %bb.s
  %i.eg = load i16, ptr %i.de, align 8
  %i.eh = load i64, ptr %i.cw, align 8
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ds
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %i.e, i64 %i.ds
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.dz, %i.el
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = icmp slt i8 %i.dz, %i.el
  %i.en = select i1 %i.em, i32 -1, i32 1
  br label %ginCompareEntries.exit.thread141.i.i

bb.x:                                             ; preds = %bb.v
  %.not13.i.i.i = icmp eq i8 %i.dz, 0
  br i1 %.not13.i.i.i, label %ginCompareEntries.exit.i.i, label %ginCompareEntries.exit.thread.i.i

ginCompareEntries.exit.i.i:                       ; preds = %bb.x
  %i.eo = zext i16 %i.eg to i64
  %i.ep = add nsw i64 %i.eo, -1                   ; 2 uses
  %i.eq = getelementptr inbounds [48 x i8], ptr %i.bm, i64 %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.ep
  %i.es = load i32, ptr %i.er, align 4
  %i.et = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.eq, i32 noundef %i.es, i64 noundef %i.eh, i64 noundef %i.ej) #7
  %i.eu = trunc i64 %i.et to i32                  ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %ginCompareEntries.exit.thread.i.i, label %ginCompareEntries.exit.thread141.i.i

ginCompareEntries.exit.thread.i.i:                ; preds = %ginCompareEntries.exit.i.i, %bb.x, %bb.u, %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !range !5, !noundef !6
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.y, label %matchPartialInPendingList.exit138.i.i

bb.y:                                             ; preds = %ginCompareEntries.exit.thread.i.i
  %i.ez = load i16, ptr %i.ap, align 2            ; 2 uses
  %i.fa = load i8, ptr %i.dd, align 8
  %.not.i124.i.i = icmp eq i8 %i.fa, 0
  %i.fb = icmp ult i16 %i.dh, %i.ez
  %or.cond.i.i = select i1 %.not.i124.i.i, i1 %i.fb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.i, label %matchPartialInPendingList.exit138.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.trip.count.i.i.i = zext i16 %i.ez to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ae ] ; 3 uses
  %i.fe = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i
  %.val.i.i.i = load i32, ptr %i.fe, align 4
  %i.ff = and i32 %.val.i.i.i, 32767
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.fg ; 2 uses
  %i.fi = call zeroext i16 @gintuple_get_attrnum(ptr noundef nonnull %i.bl, ptr noundef %i.fh) #7
  %i.fj = load i16, ptr %i.de, align 8
  %.not36.i.i.i = icmp eq i16 %i.fi, %i.fj
  br i1 %.not36.i.i.i, label %bb.aa, label %matchPartialInPendingList.exit138.i.i

bb.aa:                                            ; preds = %bb.z
  %i.fk = add nsw i64 %indvars.iv.i.i.i, -1       ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %i.f, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !range !5, !noundef !6
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fo = getelementptr inbounds i8, ptr %i.e, i64 %i.fk
  %i.fp = call i64 @gintuple_get_key(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fo) #7
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8
  store i8 1, ptr %i.fl, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fr = getelementptr inbounds i8, ptr %i.e, i64 %i.fk
  %i.fs = load i8, ptr %i.fr, align 1
  %.not37.i.i.i = icmp eq i8 %i.fs, 0
  br i1 %.not37.i.i.i, label %bb.ad, label %matchPartialInPendingList.exit138.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ft = load i16, ptr %i.de, align 8
  %i.fu = zext i16 %i.ft to i64
  %i.fv = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.fw = getelementptr inbounds [48 x i8], ptr %i.bo, i64 %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.fv
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = load i64, ptr %i.cw, align 8
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.fk
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = load i16, ptr %i.fc, align 8
  %i.gd = zext i16 %i.gc to i64
  %i.ge = load ptr, ptr %i.fd, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = call i64 @FunctionCall4Coll(ptr noundef nonnull %i.fw, i32 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.gb, i64 noundef %i.gd, i64 noundef %i.gf) #7
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %matchPartialInPendingList.exit138.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gj = icmp sgt i32 %i.gh, 0
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  %or.cond.i.i.i = select i1 %i.gj, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %matchPartialInPendingList.exit138.i.i, label %bb.z, !llvm.loop !11

ginCompareEntries.exit.thread141.i.i:             ; preds = %ginCompareEntries.exit.i.i, %bb.w, %bb.u
  %.0143.i.i = phi i32 [ %i.eu, %ginCompareEntries.exit.i.i ], [ %i.en, %bb.w ], [ -1, %bb.u ]
  %i.gk = icmp slt i32 %.0143.i.i, 0              ; 2 uses
  %i.gl = add i16 %i.dh, 1
  %.1109.i.i = select i1 %i.gk, i16 %.0108160.i.i, i16 %i.gl
  %.1107.i.i = select i1 %i.gk, i16 %i.dh, i16 %.0106161.i.i
  br label %bb.af

bb.af:                                            ; preds = %ginCompareEntries.exit.thread141.i.i, %bb.p, %bb.n
  %.2110.i.i = phi i16 [ %.1109.i.i, %ginCompareEntries.exit.thread141.i.i ], [ %i.dr, %bb.p ], [ %.0108160.i.i, %bb.n ] ; 2 uses
  %.2.i.i = phi i16 [ %.1107.i.i, %ginCompareEntries.exit.thread141.i.i ], [ %.0106161.i.i, %bb.p ], [ %i.dh, %bb.n ] ; 3 uses
  %i.gm = icmp ult i16 %.2110.i.i, %.2.i.i
  br i1 %i.gm, label %bb.n, label %.thread.i.thread.i

.thread.i.thread.i:                               ; preds = %bb.af, %.preheader147.i.i
  %.0106149.i46.i = phi i16 [ %i.cy, %.preheader147.i.i ], [ %.2.i.i, %bb.af ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  %i.go = load i8, ptr %i.gn, align 1, !range !5, !noundef !6
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %.thread.i.thread.i
  %i.gq = load i16, ptr %i.ap, align 2            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.gs = load i8, ptr %i.gr, align 8
  %.not.i126.i.i = icmp eq i8 %i.gs, 0
  %i.gt = icmp ult i16 %.0106149.i46.i, %i.gq
  %or.cond178.i.i = select i1 %.not.i126.i.i, i1 %i.gt, i1 false
  br i1 %or.cond178.i.i, label %.lr.ph.i129.i.i, label %matchPartialInPendingList.exit138.i.i

.lr.ph.i129.i.i:                                  ; preds = %bb.ag
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.gx = zext i16 %.0106149.i46.i to i64
  %wide.trip.count.i130.i.i = zext i16 %i.gq to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.am, %.lr.ph.i129.i.i
  %indvars.iv.i131.i.i = phi i64 [ %i.gx, %.lr.ph.i129.i.i ], [ %indvars.iv.next.i135.i.i, %bb.am ] ; 3 uses
  %i.gy = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv.i131.i.i
  %.val.i132.i.i = load i32, ptr %i.gy, align 4
  %i.gz = and i32 %.val.i132.i.i, 32767
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.ha ; 2 uses
  %i.hc = call zeroext i16 @gintuple_get_attrnum(ptr noundef nonnull %i.bl, ptr noundef %i.hb) #7
  %i.hd = load i16, ptr %i.gu, align 8
  %.not36.i133.i.i = icmp eq i16 %i.hc, %i.hd
  br i1 %.not36.i133.i.i, label %bb.ai, label %matchPartialInPendingList.exit138.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.he = add nsw i64 %indvars.iv.i131.i.i, -1    ; 5 uses
  %i.hf = getelementptr inbounds i8, ptr %i.f, i64 %i.he ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !range !5, !noundef !6
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr inbounds i8, ptr %i.e, i64 %i.he
  %i.hj = call i64 @gintuple_get_key(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.hi) #7
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.he
  store i64 %i.hj, ptr %i.hk, align 8
  store i8 1, ptr %i.hf, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hl = getelementptr inbounds i8, ptr %i.e, i64 %i.he
  %i.hm = load i8, ptr %i.hl, align 1
  %.not37.i134.i.i = icmp eq i8 %i.hm, 0
  br i1 %.not37.i134.i.i, label %bb.al, label %matchPartialInPendingList.exit138.i.i

bb.al:                                            ; preds = %bb.ak
  %i.hn = load i16, ptr %i.gu, align 8
  %i.ho = zext i16 %i.hn to i64
  %i.hp = add nsw i64 %i.ho, -1                   ; 2 uses
  %i.hq = getelementptr inbounds [48 x i8], ptr %i.bo, i64 %i.hp
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = load i64, ptr %i.cw, align 8
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.he
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = load i16, ptr %i.gv, align 8
  %i.hx = zext i16 %i.hw to i64
  %i.hy = load ptr, ptr %i.gw, align 8
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = call i64 @FunctionCall4Coll(ptr noundef nonnull %i.hq, i32 noundef %i.hs, i64 noundef %i.ht, i64 noundef %i.hv, i64 noundef %i.hx, i64 noundef %i.hz) #7
  %i.ib = trunc i64 %i.ia to i32                  ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %matchPartialInPendingList.exit138.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.id = icmp sgt i32 %i.ib, 0
  %indvars.iv.next.i135.i.i = add nuw nsw i64 %indvars.iv.i131.i.i, 1 ; 2 uses
  %exitcond.not.i136.i.i = icmp eq i64 %indvars.iv.next.i135.i.i, %wide.trip.count.i130.i.i
  %or.cond.i137.i.i = select i1 %i.id, i1 true, i1 %exitcond.not.i136.i.i
  br i1 %or.cond.i137.i.i, label %matchPartialInPendingList.exit138.i.i, label %bb.ah, !llvm.loop !11

matchPartialInPendingList.exit138.i.i:            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.y, %ginCompareEntries.exit.thread.i.i
  %.0.i125.sink.i.sink.i = phi i8 [ 0, %bb.ag ], [ 1, %ginCompareEntries.exit.thread.i.i ], [ 0, %bb.y ], [ 0, %bb.am ], [ 1, %bb.al ], [ 0, %bb.ah ], [ 0, %bb.ak ], [ 1, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.ae ]
  %i.ie = load ptr, ptr %i.cq, align 8
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.cu
  store i8 %.0.i125.sink.i.sink.i, ptr %i.if, align 1
  br label %bb.an

bb.an:                                            ; preds = %matchPartialInPendingList.exit138.i.i, %.thread.i.thread.i
  %i.ig = load ptr, ptr %i.cq, align 8
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 %i.cu
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = sext i8 %i.ii to i32
  %i.ik = load ptr, ptr %i.an, align 8
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 %i.cm ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !range !5, !noundef !6
  %i.in = zext nneg i8 %i.im to i32
  %i.io = or i32 %i.in, %i.ij
  %i.ip = icmp ne i32 %i.io, 0
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %i.il, align 1
  %.pre.i.i = load i32, ptr %i.cn, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.m
  %i.ir = phi i32 [ %i.cs, %bb.m ], [ %.pre.i.i, %bb.an ] ; 2 uses
  %i.is = add nuw i32 %.0113165.i.i, 1            ; 2 uses
  %i.it = icmp ult i32 %i.is, %i.ir
  br i1 %i.it, label %bb.m, label %._crit_edge168.loopexit.i.i, !llvm.loop !12

._crit_edge168.loopexit.i.i:                      ; preds = %bb.ao
  %.pre190.i.i = load i32, ptr %i.av, align 8
  br label %._crit_edge168.i.i

._crit_edge168.i.i:                               ; preds = %._crit_edge168.loopexit.i.i, %bb.l
  %i.iu = phi i32 [ %.pre190.i.i, %._crit_edge168.loopexit.i.i ], [ %i.ck, %bb.l ] ; 4 uses
  %i.iv = add nuw i32 %.1115169.i.i, 1            ; 2 uses
  %i.iw = icmp ult i32 %i.iv, %i.iu
  br i1 %i.iw, label %bb.l, label %._crit_edge171.i.i, !llvm.loop !13

._crit_edge171.i.i:                               ; preds = %._crit_edge168.i.i
  %.pre191.i.i = load i16, ptr %i.ap, align 2     ; 2 uses
  store i16 %.pre191.i.i, ptr %i.ai, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.iy = load i16, ptr %i.ix, align 8
  %i.iz = zext i16 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 6
  %i.jc = load i16, ptr %i.jb, align 2
  %i.jd = and i16 %i.jc, 32
  %.not.i.i = icmp eq i16 %i.jd, 0
  br i1 %.not.i.i, label %._crit_edge171.i.i..peel.begin_crit_edge, label %.critedge.i.i

._crit_edge171.i.i..peel.begin_crit_edge:         ; preds = %._crit_edge171.i.i
  %.pr.i.i.pre = load i32, ptr %5, align 8
  br label %.peel.begin

._crit_edge171.i.thread.i:                        ; preds = %BufferGetPage.exit.i.i
  store i16 %i.bt, ptr %i.ai, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.jf = load i16, ptr %i.je, align 8
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 6
  %i.jj = load i16, ptr %i.ji, align 2
  %i.jk = and i16 %i.jj, 32
  %.not.i118.i = icmp eq i16 %i.jk, 0
  br i1 %.not.i118.i, label %.peel.begin, label %.critedge.i.thread.i

.critedge.i.thread.i:                             ; preds = %._crit_edge171.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit.i

.peel.begin:                                      ; preds = %._crit_edge171.i.i..peel.begin_crit_edge, %._crit_edge171.i.thread.i
  %.pr.i.i = phi i32 [ %i.bw, %._crit_edge171.i.thread.i ], [ %.pr.i.i.pre, %._crit_edge171.i.i..peel.begin_crit_edge ] ; 4 uses
  %i.jl = phi i16 [ %i.bt, %._crit_edge171.i.thread.i ], [ %.pre191.i.i, %._crit_edge171.i.i..peel.begin_crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 8 dereferenceable(6) %i.aq, i64 6, i1 false)
  store i16 -1, ptr %i.aq, align 8
  store i16 -1, ptr %i.ar, align 2
  store i16 0, ptr %i.as, align 4
  %i.jm = icmp slt i32 %.pr.i.i, 0
  br i1 %i.jm, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.peel.begin
  %i.jn = load ptr, ptr @BufferBlocks, align 8
  %i.jo = add nsw i32 %.pr.i.i, -1
  %i.jp = sext i32 %i.jo to i64
  %i.jq = shl nsw i64 %i.jp, 13
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jq
  br label %BufferGetPage.exit.i38.i.peel

bb.aq:                                            ; preds = %.peel.begin
  %i.js = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.jt = xor i32 %.pr.i.i, -1
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.ju
  %i.jw = load ptr, ptr %i.jv, align 8
  br label %BufferGetPage.exit.i38.i.peel

BufferGetPage.exit.i38.i.peel:                    ; preds = %bb.aq, %bb.ap
  %.0.i.i.i39.i.peel = phi ptr [ %i.jw, %bb.aq ], [ %i.jr, %bb.ap ] ; 4 uses
  %i.jx = getelementptr i8, ptr %.0.i.i.i39.i.peel, i64 12
  %.val.i40.i.peel = load i16, ptr %i.jx, align 4 ; 2 uses
  %i.jy = icmp ult i16 %.val.i40.i.peel, 25
  %i.jz = zext i16 %.val.i40.i.peel to i32
  %i.ka = add nuw nsw i32 %i.jz, 262120
  %i.kb = lshr i32 %i.ka, 2
  %i.kc = trunc i32 %i.kb to i16
  %.0.i.i41.i.peel = select i1 %i.jy, i16 0, i16 %i.kc ; 2 uses
  %.not55.not.not.i.not.i.peel = icmp ugt i16 %i.jl, %.0.i.i41.i.peel
  br i1 %.not55.not.not.i.not.i.peel, label %bb.ar, label %.loopexit148

bb.ar:                                            ; preds = %BufferGetPage.exit.i38.i.peel
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.peel, i64 16
  %i.ke = load i16, ptr %i.kd, align 8
  %i.kf = zext i16 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.peel, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4            ; 2 uses
  %.not43.i.i.peel = icmp eq i32 %i.kh, -1
  br i1 %.not43.i.i.peel, label %scanGetCandidate.exit.thread47.i, label %.peel.next

.peel.next:                                       ; preds = %bb.ar, %bb.au
  %.sink266 = phi i32 [ %i.lg, %bb.au ], [ %i.kh, %bb.ar ]
  %i.ki = load ptr, ptr %i.m, align 8
  %i.kj = call i32 @ReadBuffer(ptr noundef %i.ki, i32 noundef %.sink266) #7 ; 6 uses
  call void @LockBufferInternal(i32 noundef %i.kj, i32 noundef 1) #7
  %i.kk = load i32, ptr %5, align 8
  call void @UnlockReleaseBuffer(i32 noundef %i.kk) #7
  store i32 %i.kj, ptr %5, align 8
  store i16 1, ptr %i.ai, align 4
  %i.kl = icmp slt i32 %i.kj, 0
  br i1 %i.kl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.peel.next
  %i.km = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.kn = xor i32 %i.kj, -1
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8
  br label %BufferGetPage.exit.i38.i

bb.at:                                            ; preds = %.peel.next
  %i.kr = load ptr, ptr @BufferBlocks, align 8
  %i.ks = add nsw i32 %i.kj, -1
  %i.kt = sext i32 %i.ks to i64
  %i.ku = shl nsw i64 %i.kt, 13
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ku
  br label %BufferGetPage.exit.i38.i

BufferGetPage.exit.i38.i:                         ; preds = %bb.at, %bb.as
  %.0.i.i.i39.i = phi ptr [ %i.kq, %bb.as ], [ %i.kv, %bb.at ] ; 4 uses
  %i.kw = getelementptr i8, ptr %.0.i.i.i39.i, i64 12
  %.val.i40.i = load i16, ptr %i.kw, align 4      ; 2 uses
  %i.kx = icmp ult i16 %.val.i40.i, 25
  %i.ky = zext i16 %.val.i40.i to i32
  %i.kz = add nuw nsw i32 %i.ky, 262120
  %i.la = lshr i32 %i.kz, 2
  %i.lb = trunc i32 %i.la to i16                  ; 2 uses
  %.not55.not.not.i.not.i312 = icmp eq i16 %i.lb, 0
  %.not55.not.not.i.not.i = select i1 %i.kx, i1 true, i1 %.not55.not.not.i.not.i312
  br i1 %.not55.not.not.i.not.i, label %bb.au, label %.loopexit148

bb.au:                                            ; preds = %BufferGetPage.exit.i38.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i, i64 16
  %i.ld = load i16, ptr %i.lc, align 8
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4            ; 2 uses
  %.not43.i.i = icmp eq i32 %i.lg, -1
  br i1 %.not43.i.i, label %scanGetCandidate.exit.thread47.i, label %.peel.next, !llvm.loop !14

scanGetCandidate.exit.thread47.i:                 ; preds = %bb.ar, %bb.au
  %.lcssa141.a = phi i32 [ %i.kj, %bb.au ], [ %.pr.i.i, %bb.ar ]
  call void @UnlockReleaseBuffer(i32 noundef %.lcssa141.a) #7
  store i32 0, ptr %5, align 8
  br label %.loopexit57.i

.loopexit148:                                     ; preds = %BufferGetPage.exit.i38.i, %BufferGetPage.exit.i38.i.peel
  %.0.i.i.i39.i.lcssa = phi ptr [ %.0.i.i.i39.i.peel, %BufferGetPage.exit.i38.i.peel ], [ %.0.i.i.i39.i, %BufferGetPage.exit.i38.i ] ; 6 uses
  %.0.i.i41.i.lcssa = phi i16 [ %.0.i.i41.i.peel, %BufferGetPage.exit.i38.i.peel ], [ %i.lb, %BufferGetPage.exit.i38.i ] ; 3 uses
  %.lcssa142 = phi i16 [ %i.jl, %BufferGetPage.exit.i38.i.peel ], [ 1, %BufferGetPage.exit.i38.i ] ; 2 uses
  %i.lh = zext i16 %.lcssa142 to i64
  %i.li = getelementptr i8, ptr %.0.i.i.i39.i.lcssa, i64 20 ; 3 uses
  %i.lj = getelementptr [4 x i8], ptr %i.li, i64 %i.lh
  %.val45.i.i = load i32, ptr %i.lj, align 4
  %i.lk = and i32 %.val45.i.i, 32767
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aq, ptr noundef nonnull align 2 dereferenceable(6) %i.lm, i64 6, i1 false)
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 16
  %i.lo = load i16, ptr %i.ln, align 8
  %i.lp = zext i16 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i.i.i39.i.lcssa, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 6
  %i.ls = load i16, ptr %i.lr, align 2
  %i.lt = and i16 %i.ls, 32
  %.not.i43.i = icmp eq i16 %i.lt, 0
  br i1 %.not.i43.i, label %bb.ax, label %.peel.begin.i.i

.peel.begin.i.i:                                  ; preds = %.loopexit148
  %storemerge.peel.i.i = add i16 %.lcssa142, 1    ; 3 uses
  store i16 %storemerge.peel.i.i, ptr %i.ap, align 2
  %.not42.peel.i.i = icmp ugt i16 %storemerge.peel.i.i, %.0.i.i41.i.lcssa
  br i1 %.not42.peel.i.i, label %scanGetCandidate.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %.peel.begin.i.i
end_hunk_0
