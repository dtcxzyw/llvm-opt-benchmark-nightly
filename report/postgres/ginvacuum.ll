Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginvacuum?download=true
inline.NumInlined: 89
inline.NumDeleted: 23
begin_hunk_0_@ginbulkdelete:bb.a
  %5 = alloca %struct.GinVacuumState, align 8     ; 17 uses
  %i.c = alloca [512 x i32], align 16             ; 4 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.e = load ptr, ptr @CurrentMemoryContext, align 8
  %i.f = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.e, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #6
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 9696 ; 4 uses
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.d, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 9688 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  call void @initGinState(ptr noundef nonnull %i.m, ptr noundef %i.d) #6
  %i.n = icmp eq ptr %1, null
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = call ptr @palloc0(i64 noundef 40) #6     ; 2 uses
  %i.p = load i32, ptr @MyBackendType, align 4
  %i.q = icmp ne i32 %i.p, 4
  call void @ginInsertCleanup(ptr noundef nonnull %i.m, i1 noundef zeroext %i.q, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %i.o) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.058 = phi ptr [ %i.o, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.058, i64 8
  store double 0.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %.058, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.j, align 8
  %i.u = call i32 @ReadBufferExtended(ptr noundef %i.d, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %i.t) #6
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.c
  %.056.ph = phi i32 [ %i.ca, %.loopexit ], [ 1, %bb.c ]
  %.054.ph = phi i32 [ %i.cc, %.loopexit ], [ %i.u, %bb.c ] ; 16 uses
  %i.v = icmp slt i32 %.054.ph, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.outer
  %i.w = load ptr, ptr @BufferBlocks, align 8
  %i.x = add nsw i32 %.054.ph, -1
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  br label %BufferGetPage.exit.peel

bb.e:                                             ; preds = %.outer
  %i.ab = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ac = xor i32 %.054.ph, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  br label %BufferGetPage.exit.peel

BufferGetPage.exit.peel:                          ; preds = %bb.e, %bb.d
  %.0.i.i.peel = phi ptr [ %i.af, %bb.e ], [ %i.aa, %bb.d ] ; 4 uses
  call void @LockBufferInternal(i32 noundef %.054.ph, i32 noundef 1) #6
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.peel, i64 16 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.peel, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = and i16 %i.al, 2
  %.not.peel = icmp eq i16 %i.am, 0
  br i1 %.not.peel, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %BufferGetPage.exit.peel
  call void @UnlockBuffer(i32 noundef %.054.ph) #6
  call void @LockBufferInternal(i32 noundef %.054.ph, i32 noundef 3) #6
  %i.an = icmp eq i32 %.056.ph, 1
  br i1 %i.an, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.ao = load i16, ptr %i.ag, align 8
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.peel, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = and i16 %i.as, 2
  %.not62.peel = icmp eq i16 %i.at, 0
  br i1 %.not62.peel, label %.peel.next, label %.preheader

.peel.next:                                       ; preds = %bb.g
  call void @UnlockBuffer(i32 noundef %.054.ph) #6
  %i.au = icmp slt i32 %.054.ph, 0
  %i.av = add nsw i32 %.054.ph, -1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 13
  %i.ay = xor i32 %.054.ph, -1
  %i.az = zext nneg i32 %i.ay to i64
  br label %bb.h

bb.h:                                             ; preds = %.peel.next, %bb.l
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %BufferGetPage.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr @BufferBlocks, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.bc, %bb.i ], [ %i.be, %bb.j ] ; 4 uses
  call void @LockBufferInternal(i32 noundef %.054.ph, i32 noundef 1) #6
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = and i16 %i.bk, 2
  %.not = icmp eq i16 %i.bl, 0
  br i1 %.not, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %BufferGetPage.exit
  call void @UnlockBuffer(i32 noundef %.054.ph) #6
  call void @LockBufferInternal(i32 noundef %.054.ph, i32 noundef 3) #6
  %i.bm = load i16, ptr %i.bf, align 8
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = and i16 %i.bq, 2
  %.not62 = icmp eq i16 %i.br, 0
  br i1 %.not62, label %bb.l, label %.preheader

bb.l:                                             ; preds = %bb.k
  call void @UnlockBuffer(i32 noundef %.054.ph) #6
  br label %bb.h, !llvm.loop !6

.loopexit:                                        ; preds = %BufferGetPage.exit, %BufferGetPage.exit.peel
  %.0.i.i.lcssa = phi ptr [ %.0.i.i.peel, %BufferGetPage.exit.peel ], [ %.0.i.i, %BufferGetPage.exit ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.0.i.i.lcssa, i64 24
  %.val = load i32, ptr %i.bs, align 8
  %i.bt = and i32 %.val, 32767
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa, i64 %i.bu ; 2 uses
  %.val64 = load i16, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %i.bv, i64 2
  %.val65 = load i16, ptr %i.bw, align 2
  %i.bx = zext i16 %.val64 to i32
  %i.by = shl nuw i32 %i.bx, 16
  %i.bz = zext i16 %.val65 to i32
  %i.ca = or disjoint i32 %i.by, %i.bz            ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %.054.ph) #6
  %i.cb = load ptr, ptr %i.j, align 8
  %i.cc = call i32 @ReadBufferExtended(ptr noundef %i.d, i32 noundef 0, i32 noundef %i.ca, i32 noundef 0, ptr noundef %i.cb) #6
  br label %.outer

.preheader:                                       ; preds = %bb.g, %bb.f, %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 26
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.bg
  %.2 = phi i32 [ %i.kf, %bb.bg ], [ %.054.ph, %.preheader ] ; 8 uses
  %i.cf = icmp slt i32 %.2, 0                     ; 2 uses
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ch = xor i32 %.2, -1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8
  br label %BufferGetPage.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr @BufferBlocks, align 8
  %i.cm = add nsw i32 %.2, -1
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.o, %bb.n
  %.0.i.i6678 = phi ptr [ %i.ck, %bb.n ], [ %i.cp, %bb.o ] ; 10 uses
  %i.cq = getelementptr i8, ptr %.0.i.i6678, i64 12
  %.val82.i = load i16, ptr %i.cq, align 4        ; 2 uses
  %i.cr = icmp ult i16 %.val82.i, 25
  %i.cs = zext i16 %.val82.i to i32
  %i.ct = add nuw nsw i32 %i.cs, 262120
  %i.cu = lshr i32 %i.ct, 2
  %i.cv = trunc i32 %i.cu to i16                  ; 2 uses
  %.not8892.i = icmp eq i16 %i.cv, 0
  %.not88.i = select i1 %i.cr, i1 true, i1 %.not8892.i
  br i1 %.not88.i, label %ginVacuumEntryPage.exit.thread, label %.lr.ph.i.a

ginVacuumEntryPage.exit.thread:                   ; preds = %BufferGetPage.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i6678, i64 16
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i6678, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4
  br label %bb.av

.lr.ph.i.a:                                       ; preds = %BufferGetPage.exit.i, %bb.an
  %.074 = phi i32 [ %.175, %bb.an ], [ 0, %BufferGetPage.exit.i ] ; 4 uses
  %.06290.i = phi i16 [ %7, %bb.an ], [ 1, %BufferGetPage.exit.i ] ; 5 uses
  %.06389.i = phi ptr [ %.3.i, %bb.an ], [ %.0.i.i6678, %BufferGetPage.exit.i ] ; 7 uses
  %6 = zext i16 %.06290.i to i64                  ; 2 uses
  %i.db = getelementptr i8, ptr %.06389.i, i64 20
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %6
  %.val73.i = load i32, ptr %i.dc, align 4
  %i.dd = and i32 %.val73.i, 32767
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.06389.i, i64 %i.de ; 8 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4      ; 2 uses
  %.val85.i = load i16, ptr %i.dg, align 2
  switch i16 %.val85.i, label %bb.q [
    i16 -1, label %bb.p
    i16 0, label %bb.an
  ]

bb.p:                                             ; preds = %.lr.ph.i.a
  %.val80.i = load i16, ptr %i.df, align 2
  %i.dh = getelementptr i8, ptr %i.df, i64 2
  %.val81.i = load i16, ptr %i.dh, align 2
  %i.di = zext i16 %.val80.i to i32
  %i.dj = shl nuw i32 %i.di, 16
  %i.dk = zext i16 %.val81.i to i32
  %i.dl = or disjoint i32 %i.dj, %i.dk
  %i.dm = zext i32 %.074 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dm
  store i32 %i.dl, ptr %i.dn, align 4
  %i.do = add nuw i32 %.074, 1
  br label %bb.an

bb.q:                                             ; preds = %.lr.ph.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.val78.i = load i16, ptr %i.df, align 2
  %i.dp = getelementptr i8, ptr %i.df, i64 2
  %.val79.i = load i16, ptr %i.dp, align 2
  %i.dq = zext i16 %.val78.i to i32
  %i.dr = shl nuw i32 %i.dq, 16                   ; 2 uses
  %i.ds = zext i16 %.val79.i to i32
  %i.dt = or disjoint i32 %i.dr, %i.ds            ; 2 uses
  %.not69.i = icmp slt i32 %i.dr, 0               ; 2 uses
  br i1 %.not69.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = and i32 %i.dt, 2147483647
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dv
  %i.dx = call ptr @ginPostingListDecode(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.a) #6
  %.pr.i = load i32, ptr %i.a, align 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dy = zext nneg i32 %i.dt to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dy
  %.val83.i = load i16, ptr %i.dg, align 2
  %i.ea = zext i16 %.val83.i to i32               ; 2 uses
  store i32 %i.ea, ptr %i.a, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.eb = phi i32 [ %i.ea, %bb.s ], [ %.pr.i, %bb.r ] ; 2 uses
  %.060.i = phi ptr [ %i.dz, %bb.s ], [ %i.dx, %bb.r ] ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i.i, label %ginVacuumItemPointers.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.ed = zext nneg i32 %i.eb to i64              ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.aa, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 3 uses
  %.029.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.1.i.i, %bb.aa ] ; 4 uses
  %.02228.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.123.i.i, %bb.aa ] ; 4 uses
  %i.ee = load ptr, ptr %i.h, align 8
  %i.ef = getelementptr inbounds nuw [6 x i8], ptr %.060.i, i64 %indvars.iv.i.i ; 2 uses
  %i.eg = load ptr, ptr %i.i, align 8
  %i.eh = call zeroext i1 %i.ee(ptr noundef %i.ef, ptr noundef %i.eg) #6, !inline_history !7
  %i.ei = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not26.i.i = icmp eq ptr %.029.i.i, null       ; 2 uses
  br i1 %i.eh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8
  %i.el = fadd double %i.ek, 1.000000e+00
  store double %i.el, ptr %i.ej, align 8
  br i1 %.not26.i.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.em = call ptr @palloc_mul(i64 noundef 6, i64 noundef %i.ed) #6 ; 2 uses
  %i.en = mul nuw nsw i64 %indvars.iv.i.i, 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.em, ptr align 2 %.060.i, i64 %i.en, i1 false)
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = fadd double %i.ep, 1.000000e+00
  store double %i.eq, ptr %i.eo, align 8
  br i1 %.not26.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = sext i32 %.02228.i.i to i64
  %i.es = getelementptr inbounds [6 x i8], ptr %.029.i.i, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.es, ptr noundef nonnull align 2 dereferenceable(6) %i.ef, i64 6, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.et = add i32 %.02228.i.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %bb.v
  %.123.i.i = phi i32 [ %.02228.i.i, %bb.v ], [ %.02228.i.i, %bb.w ], [ %i.et, %bb.z ] ; 2 uses
  %.1.i.i = phi ptr [ %.029.i.i, %bb.v ], [ %i.em, %bb.w ], [ %.029.i.i, %bb.z ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ed
  br i1 %exitcond.not.i.i, label %ginVacuumItemPointers.exit.i, label %bb.u, !llvm.loop !0

ginVacuumItemPointers.exit.i:                     ; preds = %bb.aa, %bb.t
  %.022.lcssa.i.i = phi i32 [ 0, %bb.t ], [ %.123.i.i, %bb.aa ]
  %.0.lcssa.i.i = phi ptr [ null, %bb.t ], [ %.1.i.i, %bb.aa ] ; 3 uses
  store i32 %.022.lcssa.i.i, ptr %i.a, align 4
  br i1 %.not69.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %ginVacuumItemPointers.exit.i
  call void @pfree(ptr noundef %.060.i) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %ginVacuumItemPointers.exit.i
  %.not70.i = icmp eq ptr %.0.lcssa.i.i, null
  br i1 %.not70.i, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.eu = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = call ptr @ginCompressPostingList(ptr noundef nonnull %.0.lcssa.i.i, i32 noundef %i.eu, i32 noundef 2712, ptr noundef null) #6 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 6
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = zext i16 %i.ey to i64
  %i.fa = add nuw nsw i64 %i.ez, 1
  %i.fb = and i64 %i.fa, 131070
  %i.fc = add nuw nsw i64 %i.fb, 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.058.i = phi ptr [ %i.ew, %bb.ae ], [ null, %bb.ad ] ; 3 uses
  %.0.i = phi i64 [ %i.fc, %bb.ae ], [ 0, %bb.ad ]
  %i.fd = icmp eq ptr %.06389.i, %.0.i.i6678
  br i1 %i.fd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fe = call ptr @PageGetTempPageCopy(ptr noundef %.0.i.i6678) #6 ; 3 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 20
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %6
  %.val.i = load i32, ptr %i.fg, align 4
  %i.fh = and i32 %.val.i, 32767
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fi
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.i = phi ptr [ %i.fe, %bb.ag ], [ %.06389.i, %bb.af ] ; 3 uses
  %.061.i = phi ptr [ %i.fj, %bb.ag ], [ %i.df, %bb.af ] ; 2 uses
  %i.fk = call zeroext i16 @gintuple_get_attrnum(ptr noundef nonnull %i.m, ptr noundef %.061.i) #6
  %i.fl = call i64 @gintuple_get_key(ptr noundef nonnull %i.m, ptr noundef %.061.i, ptr noundef nonnull %i.b) #6
  %i.fm = load i8, ptr %i.b, align 1
  %i.fn = load i32, ptr %i.a, align 4
  %i.fo = call ptr @GinFormTuple(ptr noundef nonnull %i.m, i16 noundef zeroext %i.fk, i64 noundef %i.fl, i8 noundef signext %i.fm, ptr noundef %.058.i, i64 noundef %.0.i, i32 noundef %i.fn, i1 noundef zeroext true) #6 ; 3 uses
  %.not71.i = icmp eq ptr %.058.i, null
  br i1 %.not71.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @pfree(ptr noundef nonnull %.058.i) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @PageIndexTupleDelete(ptr noundef %.1.i, i16 noundef zeroext %.06290.i) #6
  %i.fp = getelementptr i8, ptr %i.fo, i64 6
  %.val86.i = load i16, ptr %i.fp, align 2
  %i.fq = and i16 %.val86.i, 8191
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = call zeroext i16 @PageAddItemExtended(ptr noundef %.1.i, ptr noundef %i.fo, i64 noundef %i.fr, i16 noundef zeroext %.06290.i, i32 noundef 0) #6
  %.not72.i = icmp eq i16 %i.fs, %.06290.i
  br i1 %.not72.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.fu = load ptr, ptr %5, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.fx) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 590, ptr noundef nonnull @__func__.ginVacuumEntryPage) #6
  unreachable

bb.al:                                            ; preds = %bb.aj
  call void @pfree(ptr noundef nonnull %i.fo) #6
  call void @pfree(ptr noundef nonnull %.0.lcssa.i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ac
  %.2.i = phi ptr [ %.1.i, %bb.al ], [ %.06389.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.p, %.lr.ph.i.a
  %.175 = phi i32 [ %.074, %bb.am ], [ %i.do, %bb.p ], [ %.074, %.lr.ph.i.a ] ; 3 uses
  %.3.i = phi ptr [ %.2.i, %bb.am ], [ %.06389.i, %bb.p ], [ %.06389.i, %.lr.ph.i.a ] ; 4 uses
  %7 = add i16 %.06290.i, 1                       ; 2 uses
  %.not.i = icmp ugt i16 %7, %i.cv
  br i1 %.not.i, label %ginVacuumEntryPage.exit, label %.lr.ph.i.a, !llvm.loop !8

ginVacuumEntryPage.exit:                          ; preds = %bb.an
  %i.fz = icmp eq ptr %.3.i, %.0.i.i6678
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i6678, i64 16
  %i.gb = load i16, ptr %i.ga, align 8
  %i.gc = zext i16 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i6678, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %.not6382 = icmp eq ptr %.3.i, null
  %.not63 = or i1 %i.fz, %.not6382
  br i1 %.not63, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %ginVacuumEntryPage.exit
  %i.gf = load volatile i32, ptr @CritSectionCount, align 4
  %i.gg = add i32 %i.gf, 1
  store volatile i32 %i.gg, ptr @CritSectionCount, align 4
  call void @PageRestoreTempPage(ptr noundef nonnull %.3.i, ptr noundef nonnull %.0.i.i6678) #6
  call void @MarkBufferDirty(i32 noundef %.2) #6
  %i.gh = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.cf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.gj = xor i32 %.2, -1
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8
  br label %BufferGetPage.exit.i68

bb.aq:                                            ; preds = %bb.ao
  %i.gn = load ptr, ptr @BufferBlocks, align 8
  %i.go = add nsw i32 %.2, -1
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 13
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gq
  br label %BufferGetPage.exit.i68

BufferGetPage.exit.i68:                           ; preds = %bb.aq, %bb.ap
  %.0.i.i.i69 = phi ptr [ %i.gm, %bb.ap ], [ %i.gr, %bb.aq ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 118
  %i.gv = load i8, ptr %i.gu, align 2
  %i.gw = icmp eq i8 %i.gv, 112
  br i1 %i.gw, label %bb.ar, label %xlogVacuumPage.exit

bb.ar:                                            ; preds = %BufferGetPage.exit.i68
  %i.gx = load i32, ptr @wal_level, align 4
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.at, label %xlogVacuumPage.exit

bb.at:                                            ; preds = %bb.as
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.au, label %xlogVacuumPage.exit

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @XLogBeginInsert() #6
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %.2, i8 noundef zeroext 9) #6
  %i.hf = call i64 @XLogInsert(i8 noundef zeroext 13, i8 noundef zeroext 64) #6 ; 2 uses
  %i.hg = call i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 32)
  store volatile i64 %i.hg, ptr %.0.i.i.i69, align 8
  br label %xlogVacuumPage.exit

xlogVacuumPage.exit:                              ; preds = %BufferGetPage.exit.i68, %bb.as, %bb.at, %bb.au
  %i.hh = load volatile i32, ptr @CritSectionCount, align 4
  %i.hi = add i32 %i.hh, -1
  store volatile i32 %i.hi, ptr @CritSectionCount, align 4
  br label %bb.av

bb.av:                                            ; preds = %ginVacuumEntryPage.exit, %ginVacuumEntryPage.exit.thread, %xlogVacuumPage.exit
  %i.hj = phi i32 [ %i.ge, %xlogVacuumPage.exit ], [ %i.da, %ginVacuumEntryPage.exit.thread ], [ %i.ge, %ginVacuumEntryPage.exit ] ; 2 uses
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
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.hl = load i32, ptr %i.hk, align 4            ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %.lr.ph
  %.040.i.i = phi i32 [ %i.hl, %.lr.ph ], [ %i.im, %bb.az ]
  %i.hm = load ptr, ptr %5, align 8
  %i.hn = load ptr, ptr %i.l, align 8
  %i.ho = call i32 @ReadBufferExtended(ptr noundef %i.hm, i32 noundef 0, i32 noundef %.040.i.i, i32 noundef 0, ptr noundef %i.hn) #6 ; 8 uses
  call void @LockBufferInternal(i32 noundef %i.ho, i32 noundef 1) #6
  %i.hp = icmp slt i32 %i.ho, 0
  br i1 %i.hp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.hr = xor i32 %i.ho, -1
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8
  br label %BufferGetPage.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.hv = load ptr, ptr @BufferBlocks, align 8
  %i.hw = add nsw i32 %i.ho, -1
  %i.hx = sext i32 %i.hw to i64
  %i.hy = shl nsw i64 %i.hx, 13
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i = phi ptr [ %i.hu, %bb.ax ], [ %i.hz, %bb.ay ] ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ib = load i16, ptr %i.ia, align 8
  %i.ic = zext i16 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 6
  %i.if = load i16, ptr %i.ie, align 2
  %i.ig = and i16 %i.if, 2
  %.not.i.i = icmp eq i16 %i.ig, 0
  br i1 %.not.i.i, label %bb.az, label %.preheader.i.i

bb.az:                                            ; preds = %BufferGetPage.exit.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  %.val.i.i = load i16, ptr %i.ih, align 8
  %i.ii = getelementptr i8, ptr %.0.i.i.i.i, i64 34
  %.val44.i.i = load i16, ptr %i.ii, align 2
  %i.ij = zext i16 %.val.i.i to i32
  %i.ik = shl nuw i32 %i.ij, 16
  %i.il = zext i16 %.val44.i.i to i32
  %i.im = or disjoint i32 %i.ik, %i.il
  call void @UnlockReleaseBuffer(i32 noundef %i.ho) #6
  br label %bb.aw

.preheader.i.i:                                   ; preds = %BufferGetPage.exit.i.i
  call void @UnlockBuffer(i32 noundef %i.ho) #6
  call void @LockBufferInternal(i32 noundef %i.ho, i32 noundef 3) #6
  br label %BufferGetPage.exit46.i.i

BufferGetPage.exit46.i.i:                         ; preds = %BufferGetPage.exit46.i.i.backedge, %.preheader.i.i
  %.039.i.i = phi i32 [ %i.ho, %.preheader.i.i ], [ %i.jl, %BufferGetPage.exit46.i.i.backedge ] ; 3 uses
  %.038.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i ], [ %.038.i.i.be, %BufferGetPage.exit46.i.i.backedge ] ; 3 uses
  %.037.i.i = phi i1 [ false, %.preheader.i.i ], [ %.1.i13.i, %BufferGetPage.exit46.i.i.backedge ] ; 2 uses
  %i.in = load ptr, ptr %i.g, align 8
  %i.io = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.in, ptr @CurrentMemoryContext, align 8
  %i.ip = load ptr, ptr %5, align 8
  call void @ginVacuumPostingTreeLeaf(ptr noundef %i.ip, i32 noundef %.039.i.i, ptr noundef nonnull %5) #6
  store ptr %i.io, ptr @CurrentMemoryContext, align 8
  %i.iq = load ptr, ptr %i.g, align 8
  call void @MemoryContextReset(ptr noundef %i.iq) #6
  %i.ir = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 16
  %i.is = load i16, ptr %i.ir, align 8
  %i.it = zext i16 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 %i.it ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 6
  %i.iw = load i16, ptr %i.iv, align 2
  %i.ix = and i16 %i.iw, 128
  %.not43.i.i = icmp eq i16 %i.ix, 0
  br i1 %.not43.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %BufferGetPage.exit46.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 12
  %i.iz = load i16, ptr %i.iy, align 4
  %i.ja = icmp eq i16 %i.iz, 32
  br i1 %i.ja, label %.thread.i, label %bb.bc

bb.bb:                                            ; preds = %BufferGetPage.exit46.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.jc = load i16, ptr %i.jb, align 4
  %i.jd = icmp eq i16 %i.jc, 0
  br i1 %i.jd, label %.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.je = load i32, ptr %i.iu, align 4            ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %.039.i.i) #6
  %i.jf = icmp eq i32 %i.je, -1
  br i1 %i.jf, label %ginVacuumPostingTreeLeaves.exit.i, label %bb.bd

.thread.i:                                        ; preds = %bb.bb, %bb.ba
  %i.jg = load i32, ptr %i.iu, align 4            ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %.039.i.i) #6
  %i.jh = icmp eq i32 %i.jg, -1
  br i1 %i.jh, label %ginVacuumPostingTreeLeaves.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %.thread.i, %bb.bc
  %i.ji = phi i32 [ %i.jg, %.thread.i ], [ %i.je, %bb.bc ]
  %.1.i13.i = phi i1 [ true, %.thread.i ], [ %.037.i.i, %bb.bc ]
  %i.jj = load ptr, ptr %5, align 8
  %i.jk = load ptr, ptr %i.l, align 8
end_hunk_0
