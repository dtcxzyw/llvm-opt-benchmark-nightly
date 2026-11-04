Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistget?download=true
inline.NumInlined: 63
inline.NumDeleted: 35
begin_hunk_0_@gistgettuple:bb.a
  %i.gq = load volatile i32, ptr @InterruptPending, align 4
  %.not84 = icmp eq i32 %i.gq, 0
  br i1 %.not84, label %bb.as, label %bb.ar, !prof !7

bb.ar:                                            ; preds = %bb.aq
  tail call void @ProcessInterrupts() #7
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gs = load i32, ptr %i.gr, align 8
  store i32 %i.gs, ptr %i.ar, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  tail call fastcc void @gistScanPage(ptr noundef %0, ptr noundef %i.gp, ptr noundef nonnull %i.gt, ptr noundef null, ptr noundef null)
  tail call void @pfree(ptr noundef nonnull %i.gp) #7
  %i.gu = load i16, ptr %i.ak, align 8            ; 3 uses
  %i.gv = icmp eq i16 %i.gu, 0
  br i1 %i.gv, label %bb.aj, label %.loopexit, !llvm.loop !10

.critedge:                                        ; preds = %gistkillitems.exit, %getNextGISTSearchItem.exit, %bb.w, %getNextGISTSearchItem.exit.i, %.thread35.i, %bb.q, %bb.c, %bb.ad
  %.3 = phi i1 [ false, %bb.q ], [ true, %bb.ad ], [ false, %bb.w ], [ false, %bb.c ], [ true, %.thread35.i ], [ false, %getNextGISTSearchItem.exit.i ], [ false, %getNextGISTSearchItem.exit ], [ false, %gistkillitems.exit ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pgstat_assoc_relation(ptr noundef) local_unnamed_addr #3

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @gistScanPage(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %5 = alloca %struct.GISTENTRY, align 8          ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %6 = alloca %struct.GISTENTRY, align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 14 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call i32 @ReadBuffer(ptr noundef %i.g, i32 noundef %i.i) #7 ; 10 uses
  tail call void @LockBufferInternal(i32 noundef %i.j, i32 noundef 1) #7
  %i.k = tail call i32 @BufferGetBlockNumber(i32 noundef %i.j) #7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @PredicateLockPage(ptr noundef %i.g, i32 noundef %i.k, ptr noundef %i.m) #7
  %i.n = load ptr, ptr %i.f, align 8
  tail call void @gistcheckpage(ptr noundef %i.n, i32 noundef %i.j) #7
  %i.o = icmp slt i32 %i.j, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.q = xor i32 %i.j, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr @BufferBlocks, align 8
  %i.v = add nsw i32 %i.j, -1
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 13
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.t, %bb.b ], [ %i.y, %bb.c ] ; 13 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 7 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = zext i16 %i.aa to i64                   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = and i16 %i.ag, 8
  %.not122 = icmp eq i16 %i.ah, 0
  br i1 %.not122, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = load volatile i64, ptr %i.ac, align 8   ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 32)
  %i.ak = icmp ult i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %.not123 = icmp eq i32 %i.am, -1
  br i1 %.not123, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ao, ptr @CurrentMemoryContext, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = add nsw i64 %i.at, 56
  %i.av = tail call ptr @palloc(i64 noundef %i.au) #7 ; 4 uses
  %i.aw = load i32, ptr %i.al, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = load i64, ptr %i.ad, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bb = load i32, ptr %i.aq, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %2, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @pairingheap_add(ptr noundef %i.bf, ptr noundef %i.av) #7
  store ptr %i.ap, ptr @CurrentMemoryContext, align 8
  %.pre = load i16, ptr %i.z, align 8
  %.pre167 = zext i16 %.pre to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %BufferGetPage.exit
  %.pre-phi = phi i64 [ %.pre167, %bb.g ], [ %i.ab, %bb.f ], [ %i.ab, %bb.e ], [ %i.ab, %BufferGetPage.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.pre-phi
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = and i16 %i.bi, 2
  %.not124 = icmp eq i16 %i.bj, 0
  br i1 %.not124, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @UnlockReleaseBuffer(i32 noundef %i.j) #7
  br label %bb.bj

bb.j:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 24650
  store i16 0, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 24648 ; 5 uses
  store i16 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 24656 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not125 = icmp eq ptr %i.bo, null
  br i1 %.not125, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @MemoryContextReset(ptr noundef nonnull %i.bo) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = tail call i64 @BufferGetLSNAtomic(i32 noundef %i.j) #7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.br, align 4            ; 2 uses
  %i.bs = icmp ult i16 %.val, 25
  %i.bt = zext i16 %.val to i32
  %i.bu = add nuw nsw i32 %i.bt, 262120
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = trunc i32 %i.bv to i16                  ; 2 uses
  %.not126160164 = icmp eq i16 %i.bw, 0
  %.not126160 = select i1 %i.bs, i1 true, i1 %.not126160164
  br i1 %.not126160, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bx = getelementptr i8, ptr %.0.i.i, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = ptrtoint ptr %5 to i64
  %i.cc = ptrtoint ptr %i.a to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = ptrtoint ptr %6 to i64
  %i.cg = ptrtoint ptr %i.b to i64
  %.not127 = icmp eq ptr %3, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %umax = add nuw nsw i16 %i.bw, 1
  %wide.trip.count = zext i16 %umax to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.bi
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.bi ] ; 5 uses
  %i.cm = getelementptr [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.cn = load i8, ptr %i.by, align 1, !range !4, !noundef !5
  %i.co = trunc nuw i8 %i.cn to i1
  %.val131.pre = load i32, ptr %i.cm, align 4     ; 2 uses
  %i.cp = and i32 %.val131.pre, 98304
  %i.cq = icmp eq i32 %i.cp, 98304
  %or.cond = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond, label %bb.bi, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = and i32 %.val131.pre, 32767
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cs ; 16 uses
  %i.cu = load ptr, ptr %i.d, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr @CurrentMemoryContext, align 8 ; 2 uses
  store ptr %i.cw, ptr @CurrentMemoryContext, align 8
  %i.cy = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  %i.da = load ptr, ptr %i.bz, align 8
  %i.db = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.dc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 4
  %.val.i = load i16, ptr %i.dd, align 2
  %i.de = icmp eq i16 %.val.i, -2
  br i1 %i.de, label %bb.o, label %.preheader92.i

.preheader92.i:                                   ; preds = %bb.n
  %i.df = icmp sgt i32 %i.db, 0
  br i1 %i.df, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader92.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dh = getelementptr i8, ptr %i.ct, i64 6
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %7 = trunc nuw i64 %indvars.iv to i16
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.dj = load i16, ptr %i.z, align 8
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dn = load i16, ptr %i.dm, align 4
  %i.do = and i16 %i.dn, 1
  %.not87.i = icmp eq i16 %i.do, 0
  br i1 %.not87.i, label %.preheader.i, label %bb.p

.preheader.i:                                     ; preds = %bb.o
  %i.dp = load i32, ptr %i.cd, align 4
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph101.i, label %gistindex_keytest.exit

.lr.ph101.i:                                      ; preds = %.preheader.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.dt = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 161, ptr noundef nonnull @__func__.gistindex_keytest) #7
  unreachable

bb.q:                                             ; preds = %bb.q, %.lr.ph101.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph101.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %i.du = load ptr, ptr %i.dr, align 8
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %indvars.iv.i
  store double -inf, ptr %i.dv, align 8
  %i.dw = load ptr, ptr %i.dr, align 8
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %indvars.iv.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 0, ptr %i.dy, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dz = load i32, ptr %i.cd, align 4
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next.i, %i.ea
  br i1 %i.eb, label %bb.q, label %gistindex_keytest.exit, !llvm.loop !13

bb.r:                                             ; preds = %.thread191, %.lr.ph.i
  %.1151 = phi i8 [ 0, %.lr.ph.i ], [ %.2152, %.thread191 ] ; 4 uses
  %.08094.i = phi i32 [ %i.db, %.lr.ph.i ], [ %i.gw, %.thread191 ] ; 2 uses
  %.08393.i = phi ptr [ %i.da, %.lr.ph.i ], [ %i.gv, %.thread191 ] ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.08393.i, i64 4 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 4            ; 2 uses
  %i.ee = sext i16 %i.ed to i32                   ; 3 uses
  %i.ef = load ptr, ptr %i.dg, align 8            ; 3 uses
  %.val.i135 = load i16, ptr %i.dh, align 2
  %i.eg = icmp slt i16 %.val.i135, 0
  br i1 %i.eg, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = sext i16 %i.ed to i64
  %i.ei = getelementptr [8 x i8], ptr %i.ef, i64 %i.eh ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 24
  %i.ek = load i16, ptr %i.ej, align 2            ; 2 uses
  %i.el = icmp sgt i16 %i.ek, -1
  br i1 %i.el, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.em = zext nneg i16 %i.ek to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.em ; 5 uses
  %i.eo = getelementptr i8, ptr %i.ei, i64 28
  %i.ep = load i8, ptr %i.eo, align 2, !range !4, !noundef !5
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = getelementptr i8, ptr %i.ei, i64 26
  %i.es = load i16, ptr %i.er, align 2
  %i.et = sext i16 %i.es to i32                   ; 3 uses
  br i1 %i.eq, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.eu = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.et)
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %.split.i.i137, label %bb.z

.split.i.i137:                                    ; preds = %bb.u
  %i.ew = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.et, i1 true)
  switch i32 %i.ew, label %bb.z [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.v:                                             ; preds = %.split.i.i137
  %i.ex = load i8, ptr %i.en, align 1
  %i.ey = sext i8 %i.ex to i64
  br label %index_getattr.exit139

bb.w:                                             ; preds = %.split.i.i137
  %i.ez = load i16, ptr %i.en, align 2
  %i.fa = sext i16 %i.ez to i64
  br label %index_getattr.exit139

bb.x:                                             ; preds = %.split.i.i137
  %i.fb = load i32, ptr %i.en, align 4
  %i.fc = sext i32 %i.fb to i64
  br label %index_getattr.exit139

bb.y:                                             ; preds = %.split.i.i137
  %i.fd = load i64, ptr %i.en, align 8
  br label %index_getattr.exit139

bb.z:                                             ; preds = %.split.i.i137, %bb.u
  %i.fe = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.ff = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef range(i32 -32768, 32768) %i.et) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #7
  unreachable

bb.aa:                                            ; preds = %bb.t
  %i.fg = ptrtoint ptr %i.en to i64
  br label %index_getattr.exit139

bb.ab:                                            ; preds = %bb.s
  %i.fh = call i64 @nocache_index_getattr(ptr noundef nonnull %i.ct, i32 noundef range(i32 -32768, 32768) %i.ee, ptr noundef nonnull %i.ef) #7
  br label %index_getattr.exit139

bb.ac:                                            ; preds = %bb.r
  %i.fi = add nsw i32 %i.ee, -1                   ; 2 uses
  %i.fj = ashr i32 %i.fi, 3
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.di, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = and i32 %i.fi, 7
  %i.fp = shl nuw nsw i32 1, %i.fo
  %i.fq = and i32 %i.fp, %i.fn
  %.not.i19.i138 = icmp eq i32 %i.fq, 0
  br i1 %.not.i19.i138, label %index_getattr.exit139.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fr = call i64 @nocache_index_getattr(ptr noundef nonnull %i.ct, i32 noundef range(i32 -32768, 32768) %i.ee, ptr noundef %i.ef) #7
  br label %index_getattr.exit139

index_getattr.exit139:                            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ad
  %.1.i136 = phi i64 [ %i.fh, %bb.ab ], [ %i.fr, %bb.ad ], [ %i.ey, %bb.v ], [ %i.fa, %bb.w ], [ %i.fc, %bb.x ], [ %i.fd, %bb.y ], [ %i.fg, %bb.aa ]
  %i.fs = load i32, ptr %.08393.i, align 8        ; 2 uses
  %i.ft = and i32 %i.fs, 1
  %.not.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i, label %bb.af, label %.thread186

index_getattr.exit139.thread:                     ; preds = %bb.ac
  %i.fu = load i32, ptr %.08393.i, align 8
  %i.fv = and i32 %i.fu, 65
  %or.cond199.not = icmp eq i32 %i.fv, 65
  br i1 %or.cond199.not, label %.thread191, label %.critedge

.thread186:                                       ; preds = %index_getattr.exit139
  %i.fw = and i32 %i.fs, 64
  %.not86.i188 = icmp eq i32 %i.fw, 0
  br i1 %.not86.i188, label %.thread191, label %bb.ae

bb.ae:                                            ; preds = %.thread186
  %i.fx = load i16, ptr %i.z, align 8
  %i.fy = zext i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.gb = load i16, ptr %i.ga, align 4
  %i.gc = and i16 %i.gb, 1
  %i.gd = icmp eq i16 %i.gc, 0
  br i1 %i.gd, label %.thread191, label %.critedge

bb.af:                                            ; preds = %index_getattr.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ge = load i16, ptr %i.ec, align 4
  %i.gf = sext i16 %i.ge to i32
  %i.gg = add nsw i32 %i.gf, -1
  call void @gistdentryinit(ptr noundef nonnull %i.cz, i32 noundef %i.gg, ptr noundef nonnull %5, i64 noundef %.1.i136, ptr noundef %i.dc, ptr noundef nonnull %.0.i.i, i16 noundef zeroext %7, i1 noundef zeroext false, i1 noundef zeroext false) #7
  store i8 1, ptr %i.a, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.08393.i, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.08393.i, i64 12
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.08393.i, i64 64
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.08393.i, i64 6
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = zext i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.08393.i, i64 8
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = zext i32 %i.gq to i64
  %i.gs = call i64 @FunctionCall5Coll(ptr noundef nonnull %i.gh, i32 noundef %i.gj, i64 noundef %i.cb, i64 noundef %i.gl, i64 noundef %i.go, i64 noundef %i.gr, i64 noundef %i.cc) #7
  %.not90.i = icmp eq i64 %i.gs, 0
  br i1 %.not90.i, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.gu = or i8 %i.gt, %.1151
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread191

.thread191:                                       ; preds = %index_getattr.exit139.thread, %.thread186, %bb.ag, %bb.ae
  %.2152 = phi i8 [ %i.gu, %bb.ag ], [ %.1151, %bb.ae ], [ %.1151, %.thread186 ], [ %.1151, %index_getattr.exit139.thread ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.08393.i, i64 72
  %i.gw = add nsw i32 %.08094.i, -1
  %i.gx = icmp sgt i32 %.08094.i, 1
  br i1 %i.gx, label %bb.r, label %._crit_edge.i, !llvm.loop !14

.critedge.i:                                      ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.critedge

._crit_edge.i:                                    ; preds = %.thread191, %.preheader92.i
  %.0150 = phi i8 [ 0, %.preheader92.i ], [ %.2152, %.thread191 ] ; 2 uses
  %i.gy = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %.lr.ph99.i, label %gistindex_keytest.exit

.lr.ph99.i:                                       ; preds = %._crit_edge.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = load ptr, ptr %i.ce, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.he = getelementptr i8, ptr %i.ct, i64 6
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %8 = trunc nuw i64 %indvars.iv to i16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.av, %.lr.ph99.i
  %.0149 = phi i8 [ 0, %.lr.ph99.i ], [ %.1, %bb.av ] ; 2 uses
  %.07997.i = phi ptr [ %i.hb, %.lr.ph99.i ], [ %i.js, %bb.av ] ; 5 uses
  %.28296.i = phi i32 [ %i.gy, %.lr.ph99.i ], [ %i.jt, %bb.av ] ; 2 uses
  %.28595.i = phi ptr [ %i.hc, %.lr.ph99.i ], [ %i.jr, %bb.av ] ; 8 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.28595.i, i64 4 ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 4            ; 2 uses
  %i.hi = sext i16 %i.hh to i32                   ; 3 uses
  %i.hj = load ptr, ptr %i.hd, align 8            ; 3 uses
  %.val.i134 = load i16, ptr %i.he, align 2
  %i.hk = icmp slt i16 %.val.i134, 0
  br i1 %i.hk, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hl = sext i16 %i.hh to i64
  %i.hm = getelementptr [8 x i8], ptr %i.hj, i64 %i.hl ; 3 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 24
  %i.ho = load i16, ptr %i.hn, align 2            ; 2 uses
  %i.hp = icmp sgt i16 %i.ho, -1
  br i1 %i.hp, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.hq = zext nneg i16 %i.ho to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hq ; 5 uses
  %i.hs = getelementptr i8, ptr %i.hm, i64 28
  %i.ht = load i8, ptr %i.hs, align 2, !range !4, !noundef !5
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = getelementptr i8, ptr %i.hm, i64 26
  %i.hw = load i16, ptr %i.hv, align 2
  %i.hx = sext i16 %i.hw to i32                   ; 3 uses
  br i1 %i.hu, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.hy = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.hx)
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %.split.i.i, label %bb.ap

.split.i.i:                                       ; preds = %bb.ak
  %i.ia = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.hx, i1 true)
  switch i32 %i.ia, label %bb.ap [
    i32 0, label %bb.al
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
  ]

bb.al:                                            ; preds = %.split.i.i
  %i.ib = load i8, ptr %i.hr, align 1
  %i.ic = sext i8 %i.ib to i64
  br label %index_getattr.exit

bb.am:                                            ; preds = %.split.i.i
  %i.id = load i16, ptr %i.hr, align 2
  %i.ie = sext i16 %i.id to i64
  br label %index_getattr.exit

bb.an:                                            ; preds = %.split.i.i
  %i.if = load i32, ptr %i.hr, align 4
  %i.ig = sext i32 %i.if to i64
  br label %index_getattr.exit

bb.ao:                                            ; preds = %.split.i.i
  %i.ih = load i64, ptr %i.hr, align 8
  br label %index_getattr.exit

bb.ap:                                            ; preds = %.split.i.i, %bb.ak
  %i.ii = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.ij = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef range(i32 -32768, 32768) %i.hx) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #7
  unreachable

bb.aq:                                            ; preds = %bb.aj
  %i.ik = ptrtoint ptr %i.hr to i64
  br label %index_getattr.exit

bb.ar:                                            ; preds = %bb.ai
  %i.il = call i64 @nocache_index_getattr(ptr noundef nonnull %i.ct, i32 noundef range(i32 -32768, 32768) %i.hi, ptr noundef nonnull %i.hj) #7
  br label %index_getattr.exit

bb.as:                                            ; preds = %bb.ah
  %i.im = add nsw i32 %i.hi, -1                   ; 2 uses
  %i.in = ashr i32 %i.im, 3
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.hf, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1
  %i.ir = zext i8 %i.iq to i32
  %i.is = and i32 %i.im, 7
  %i.it = shl nuw nsw i32 1, %i.is
  %i.iu = and i32 %i.it, %i.ir
  %.not.i19.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i19.i, label %index_getattr.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iv = call i64 @nocache_index_getattr(ptr noundef nonnull %i.ct, i32 noundef range(i32 -32768, 32768) %i.hi, ptr noundef %i.hj) #7
  br label %index_getattr.exit

index_getattr.exit:                               ; preds = %bb.al, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.at
  %.1.i = phi i64 [ %i.ik, %bb.aq ], [ %i.iv, %bb.at ], [ %i.il, %bb.ar ], [ %i.ic, %bb.al ], [ %i.ie, %bb.am ], [ %i.ig, %bb.an ], [ %i.ih, %bb.ao ]
  %i.iw = load i32, ptr %.28595.i, align 8
  %i.ix = trunc i32 %i.iw to i1
  br i1 %i.ix, label %index_getattr.exit.thread, label %bb.au

index_getattr.exit.thread:                        ; preds = %bb.as, %index_getattr.exit
  store double 0.000000e+00, ptr %.07997.i, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.07997.i, i64 8
  store i8 1, ptr %i.iy, align 8
  br label %bb.av

bb.au:                                            ; preds = %index_getattr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.iz = load i16, ptr %i.hg, align 4
  %i.ja = sext i16 %i.iz to i32
  %i.jb = add nsw i32 %i.ja, -1
  call void @gistdentryinit(ptr noundef nonnull %i.cz, i32 noundef %i.jb, ptr noundef nonnull %6, i64 noundef %.1.i, ptr noundef %i.dc, ptr noundef nonnull %.0.i.i, i16 noundef zeroext %8, i1 noundef zeroext false, i1 noundef zeroext false) #7
  store i8 0, ptr %i.b, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.28595.i, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %.28595.i, i64 12
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %.28595.i, i64 64
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.28595.i, i64 6
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = zext i16 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %.28595.i, i64 8
  %i.jl = load i32, ptr %i.jk, align 8
  %i.jm = zext i32 %i.jl to i64
  %i.jn = call i64 @FunctionCall5Coll(ptr noundef nonnull %i.jc, i32 noundef %i.je, i64 noundef %i.cf, i64 noundef %i.jg, i64 noundef %i.jj, i64 noundef %i.jm, i64 noundef %i.cg) #7
  %i.jo = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.jp = or i8 %i.jo, %.0149
  store i64 %i.jn, ptr %.07997.i, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %.07997.i, i64 8
  store i8 0, ptr %i.jq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %index_getattr.exit.thread
  %.1 = phi i8 [ %.0149, %index_getattr.exit.thread ], [ %i.jp, %bb.au ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.28595.i, i64 72
  %i.js = getelementptr inbounds nuw i8, ptr %.07997.i, i64 16
  %i.jt = add nsw i32 %.28296.i, -1
  %i.ju = icmp sgt i32 %.28296.i, 1
  br i1 %i.ju, label %bb.ah, label %gistindex_keytest.exit, !llvm.loop !15

gistindex_keytest.exit:                           ; preds = %bb.av, %bb.q, %.preheader.i, %._crit_edge.i
  %.3 = phi i8 [ 0, %bb.q ], [ 0, %.preheader.i ], [ %.0150, %._crit_edge.i ], [ %.0150, %bb.av ] ; 3 uses
  %.2 = phi i8 [ 0, %bb.q ], [ 0, %.preheader.i ], [ 0, %._crit_edge.i ], [ %.1, %bb.av ]
  store ptr %i.cx, ptr @CurrentMemoryContext, align 8
  %i.jv = load ptr, ptr %i.d, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void @MemoryContextReset(ptr noundef %i.jx) #7
  br i1 %.not127, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %gistindex_keytest.exit
  %i.jy = load i16, ptr %i.z, align 8
  %i.jz = zext i16 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.kc = load i16, ptr %i.kb, align 4
  %i.kd = and i16 %i.kc, 1
  %.not128 = icmp eq i16 %i.kd, 0
  br i1 %.not128, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ke = trunc nuw i8 %.3 to i1
  call void @tbm_add_tuples(ptr noundef nonnull %3, ptr noundef nonnull %i.ct, i32 noundef 1, i1 noundef zeroext %i.ke) #7
  %i.kf = load i64, ptr %4, align 8
  %i.kg = add i64 %i.kf, 1
  store i64 %i.kg, ptr %4, align 8
  br label %bb.bi

bb.ay:                                            ; preds = %bb.aw, %gistindex_keytest.exit
  %i.kh = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.kj = load i16, ptr %i.z, align 8
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %i.kn = load i16, ptr %i.km, align 4
  %i.ko = and i16 %i.kn, 1
  %.not129 = icmp eq i16 %i.ko, 0
  br i1 %.not129, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kp = load i16, ptr %i.bl, align 8
  %i.kq = zext i16 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.kq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.kr, ptr noundef nonnull align 2 dereferenceable(6) %i.ct, i64 6, i1 false)
  %i.ks = load i16, ptr %i.bl, align 8            ; 2 uses
  %i.kt = zext i16 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 6
  store i8 %.3, ptr %i.kv, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %9 = trunc nuw i64 %indvars.iv to i16
  store i16 %9, ptr %i.kw, align 8
  %i.kx = load i8, ptr %i.ci, align 8, !range !4, !noundef !5
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kz = load ptr, ptr %i.bn, align 8
  %i.la = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.kz, ptr @CurrentMemoryContext, align 8
  %i.lb = call ptr @gistFetchTuple(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull %i.ct) #7
  %i.lc = load i16, ptr %i.bl, align 8            ; 2 uses
  %i.ld = zext i16 %i.lc to i64
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.lb, ptr %i.lf, align 8
  store ptr %i.la, ptr @CurrentMemoryContext, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.lg = phi i16 [ %i.lc, %bb.bb ], [ %i.ks, %bb.ba ]
  %i.lh = add i16 %i.lg, 1
  store i16 %i.lh, ptr %i.bl, align 8
  br label %bb.bi

bb.bd:                                            ; preds = %bb.az, %bb.ay
  %i.li = load ptr, ptr %i.cj, align 8
  %i.lj = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.li, ptr @CurrentMemoryContext, align 8
  %i.lk = sext i32 %i.kh to i64
  %i.ll = shl nsw i64 %i.lk, 4                    ; 2 uses
  %i.lm = add nsw i64 %i.ll, 56
  %i.ln = call ptr @palloc(i64 noundef %i.lm) #7  ; 9 uses
  %i.lo = load i16, ptr %i.z, align 8
  %i.lp = zext i16 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  %i.ls = load i16, ptr %i.lr, align 4
  %i.lt = and i16 %i.ls, 1
  %.not130 = icmp eq i16 %i.lt, 0
  br i1 %.not130, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  store i32 -1, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.lv, ptr noundef nonnull align 2 dereferenceable(6) %i.ct, i64 6, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ln, i64 38
  store i8 %.3, ptr %i.lw, align 2
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 39
  store i8 %.2, ptr %i.lx, align 1
  %i.ly = load i8, ptr %i.ci, align 8, !range !4, !noundef !5
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ma = call ptr @gistFetchTuple(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull %i.ct) #7
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  store ptr %i.ma, ptr %i.mb, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %.val132 = load i16, ptr %i.ct, align 2
  %i.mc = getelementptr i8, ptr %i.ct, i64 2
  %.val133 = load i16, ptr %i.mc, align 2
  %i.md = zext i16 %.val132 to i32
  %i.me = shl nuw i32 %i.md, 16
  %i.mf = zext i16 %.val133 to i32
  %i.mg = or disjoint i32 %i.me, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  store i32 %i.mg, ptr %i.mh, align 8
  %i.mi = call i64 @BufferGetLSNAtomic(i32 noundef %i.j) #7
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  store i64 %i.mi, ptr %i.mj, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bf, %bb.bg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ln, i64 56
  %i.ml = load ptr, ptr %i.ck, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mk, ptr align 8 %i.ml, i64 %i.ll, i1 false)
  %i.mm = load ptr, ptr %i.cl, align 8
  call void @pairingheap_add(ptr noundef %i.mm, ptr noundef nonnull %i.ln) #7
  store ptr %i.lj, ptr @CurrentMemoryContext, align 8
  br label %bb.bi

.critedge:                                        ; preds = %index_getattr.exit139.thread, %bb.ae, %.critedge.i
  store ptr %i.cx, ptr @CurrentMemoryContext, align 8
  %i.mn = load ptr, ptr %i.d, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void @MemoryContextReset(ptr noundef %i.mp) #7
  br label %bb.bi

bb.bi:                                            ; preds = %bb.m, %.critedge, %bb.ax, %bb.bh, %bb.bc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.m, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.bi, %bb.l
  call void @UnlockReleaseBuffer(i32 noundef %i.j) #7
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ProcessInterrupts() local_unnamed_addr #3

declare void @pfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @gistgetbitmap(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.GISTSearchItem, align 8     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.e, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 476
  %i.l = load i8, ptr %i.k, align 4, !range !4, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @pgstat_assoc_relation(ptr noundef nonnull %i.h) #7
  %.pre = load ptr, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 480
  %.pre36 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.n = phi ptr [ %i.j, %bb.b ], [ %.pre36, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not27 = icmp eq ptr %i.s, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24648
  store i16 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24650
  store i16 0, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24656
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.z, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @MemoryContextReset(ptr noundef nonnull %i.z) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.ab, align 8
  call fastcc void @gistScanPage(ptr noundef nonnull %0, ptr noundef %2, ptr noundef null, ptr noundef %1, ptr noundef nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.c, i64 16      ; 2 uses
  %.val34 = load ptr, ptr %i.ac, align 8          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %getNextGISTSearchItem.exit.thread, label %getNextGISTSearchItem.exit

getNextGISTSearchItem.exit:                       ; preds = %bb.j, %bb.m
  %.val35 = phi ptr [ %.val, %bb.m ], [ %.val34, %bb.j ]
  %i.ag = tail call ptr @pairingheap_remove_first(ptr noundef nonnull %.val35) #7 ; 4 uses
  %.not29 = icmp eq ptr %i.ag, null
  br i1 %.not29, label %getNextGISTSearchItem.exit.thread, label %bb.k

bb.k:                                             ; preds = %getNextGISTSearchItem.exit
  %i.ah = load volatile i32, ptr @InterruptPending, align 4
  %.not30 = icmp eq i32 %i.ah, 0
  br i1 %.not30, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void @ProcessInterrupts() #7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  call fastcc void @gistScanPage(ptr noundef nonnull %0, ptr noundef %i.ag, ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef nonnull %i.a)
  tail call void @pfree(ptr noundef nonnull %i.ag) #7
  %.val = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %getNextGISTSearchItem.exit.thread, label %getNextGISTSearchItem.exit

getNextGISTSearchItem.exit.thread:                ; preds = %getNextGISTSearchItem.exit, %bb.m, %bb.j
  %i.am = load i64, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %getNextGISTSearchItem.exit.thread
  %.023 = phi i64 [ %i.am, %getNextGISTSearchItem.exit.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.023
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @gistcanreturn(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2
  %i.e = sext i16 %i.d to i32
  %i.f = icmp sgt i32 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i32 %1 to i16                      ; 2 uses
  %i.h = tail call i32 @index_getprocid(ptr noundef nonnull %0, i16 noundef signext %i.g, i16 noundef zeroext 9) #7
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @index_getprocid(ptr noundef nonnull %0, i16 noundef signext %i.g, i16 noundef zeroext 3) #7
  %.not7 = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ %.not7, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

declare i32 @index_getprocid(ptr noundef, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #3

declare i32 @ReadBuffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PredicateLockPage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #3

declare void @gistcheckpage(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pairingheap_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UnlockReleaseBuffer(i32 noundef) local_unnamed_addr #3

declare i64 @BufferGetLSNAtomic(i32 noundef) local_unnamed_addr #3

declare void @tbm_add_tuples(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @gistFetchTuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gistdentryinit(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare i64 @FunctionCall5Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @nocache_index_getattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @index_store_float8_orderby_distances(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @BufferBeginSetHintBits(i32 noundef) local_unnamed_addr #3
end_hunk_0
