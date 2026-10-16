Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/xlog?download=true
inline.NumInlined: 370
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@XLogInsertRecord:bb.a
  %i.ac = add i32 %i.ab, 1
  store volatile i32 %i.ac, ptr @CritSectionCount, align 4
  br i1 %i.n, label %bb.g, label %bb.z, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr @WALInsertLockAcquire.lockToTry, align 4 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr @MyProcNumber, align 4
  %i.ag = srem i32 %i.af, 8                       ; 2 uses
  store i32 %i.ag, ptr @WALInsertLockAcquire.lockToTry, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i32 [ %i.ag, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  store i32 %i.ah, ptr @MyLockNo, align 4
  %i.ai = load ptr, ptr @WALInsertLocks, align 8
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.aj
  %i.al = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.ak, i32 noundef 0) #24
  br i1 %i.al, label %WALInsertLockAcquire.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr @WALInsertLockAcquire.lockToTry, align 4
  %i.an = add nsw i32 %i.am, 1
  %i.ao = srem i32 %i.an, 8
  store i32 %i.ao, ptr @WALInsertLockAcquire.lockToTry, align 4
  br label %WALInsertLockAcquire.exit

WALInsertLockAcquire.exit:                        ; preds = %bb.i, %bb.j
  %i.ap = load i64, ptr @RedoRecPtr, align 8      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %.not = icmp eq i64 %i.ap, %i.ar
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %WALInsertLockAcquire.exit
  store i64 %i.ar, ptr @RedoRecPtr, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %WALInsertLockAcquire.exit
  %i.as = phi i64 [ %i.ar, %bb.k ], [ %i.ap, %WALInsertLockAcquire.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.au = load i8, ptr %i.at, align 8, !range !5, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp sgt i32 %i.ax, 0                   ; 2 uses
  %i.az = zext i1 %i.ay to i8
  store i8 %i.az, ptr @doPageWrites, align 1
  br i1 %i.ay, label %bb.n, label %bb.p

.critedge:                                        ; preds = %bb.l
  store i8 1, ptr @doPageWrites, align 1
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m
  %i.ba = freeze i64 %i.as
  %i.bb = add i64 %1, -1
  %or.cond.not = icmp uge i64 %i.bb, %i.ba
  %or.cond.not129 = and i1 %or.cond.not, %i.i
  br i1 %or.cond.not129, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @WALInsertLockRelease()
  %i.bc = load volatile i32, ptr @CritSectionCount, align 4
  %i.bd = add i32 %i.bc, -1
  store volatile i32 %i.bd, ptr @CritSectionCount, align 4
  br label %bb.bf

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.be = load i32, ptr %i.e, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load ptr, ptr @XLogCtl, align 8         ; 6 uses
  %i.bh = add i32 %i.be, 7
  %i.bi = and i32 %i.bh, -8
  %i.bj = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bg, i8 1, ptr elementtype(i8) %i.bg) #24, !srcloc !8
  %.not.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i, label %SpinLockAcquire.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call i32 @s_lock(ptr noundef %i.bg, ptr noundef nonnull @.str.109, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #24 ; 0 uses
  br label %SpinLockAcquire.exit

SpinLockAcquire.exit:                             ; preds = %bb.p, %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8            ; 4 uses
  %i.bn = sext i32 %i.bi to i64
  %i.bo = add i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  store i64 %i.bo, ptr %i.bl, align 8
  store i64 %i.bm, ptr %i.bp, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !9
  store volatile i8 0, ptr %i.bg, align 8
  %i.br = load i32, ptr @UsableBytesInSegment, align 4
  %i.bs = sext i32 %i.br to i64                   ; 6 uses
  %i.bt = urem i64 %i.bm, %i.bs                   ; 3 uses
  %i.bu = udiv i64 %i.bm, %i.bs
  %i.bv = icmp ult i64 %i.bt, 8152
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %SpinLockAcquire.exit
  %i.bw = add nuw nsw i64 %i.bt, 40
  br label %XLogBytePosToRecPtr.exit

bb.s:                                             ; preds = %SpinLockAcquire.exit
  %i.bx = add i64 %i.bt, -8152                    ; 2 uses
  %i.by = udiv i64 %i.bx, 8168
  %i.bz = urem i64 %i.bx, 8168
  %i.ca = shl i64 %i.by, 13
  %i.cb = add nuw nsw i64 %i.bz, 8216
  %i.cc = add i64 %i.cb, %i.ca
  br label %XLogBytePosToRecPtr.exit

XLogBytePosToRecPtr.exit:                         ; preds = %bb.r, %bb.s
  %.0.i53 = phi i64 [ %i.bw, %bb.r ], [ %i.cc, %bb.s ]
  %i.cd = load i32, ptr @wal_segment_size, align 4
  %i.ce = sext i32 %i.cd to i64                   ; 3 uses
  %i.cf = mul i64 %i.bu, %i.ce
  %i.cg = and i64 %.0.i53, 4294967295
  %i.ch = add i64 %i.cf, %i.cg                    ; 2 uses
  store i64 %i.ch, ptr %i.a, align 8
  %i.ci = urem i64 %i.bo, %i.bs                   ; 4 uses
  %i.cj = udiv i64 %i.bo, %i.bs
  %i.ck = icmp ult i64 %i.ci, 8152
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %XLogBytePosToRecPtr.exit
  %i.cl = icmp eq i64 %i.ci, 0
  %i.cm = add nuw nsw i64 %i.ci, 40
  %spec.select.i = select i1 %i.cl, i64 0, i64 %i.cm
  br label %XLogBytePosToEndRecPtr.exit

bb.u:                                             ; preds = %XLogBytePosToRecPtr.exit
  %i.cn = add i64 %i.ci, -8152                    ; 2 uses
  %i.co = udiv i64 %i.cn, 8168
  %i.cp = urem i64 %i.cn, 8168                    ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = shl i64 %i.co, 13                       ; 2 uses
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = add i64 %i.cr, 8192
  br label %XLogBytePosToEndRecPtr.exit

bb.w:                                             ; preds = %bb.u
  %i.ct = add nuw nsw i64 %i.cp, 8216
  %i.cu = add i64 %i.ct, %i.cr
  br label %XLogBytePosToEndRecPtr.exit

XLogBytePosToEndRecPtr.exit:                      ; preds = %bb.t, %bb.v, %bb.w
  %.0.i54 = phi i64 [ %i.cu, %bb.w ], [ %spec.select.i, %bb.t ], [ %i.cs, %bb.v ]
  %i.cv = mul i64 %i.cj, %i.ce
  %i.cw = and i64 %.0.i54, 4294967295
  %i.cx = add i64 %i.cv, %i.cw                    ; 2 uses
  store i64 %i.cx, ptr %i.b, align 8
  %i.cy = urem i64 %i.bq, %i.bs                   ; 3 uses
  %i.cz = udiv i64 %i.bq, %i.bs
  %i.da = icmp ult i64 %i.cy, 8152
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %XLogBytePosToEndRecPtr.exit
  %i.db = add nuw nsw i64 %i.cy, 40
  br label %XLogBytePosToRecPtr.exit56

bb.y:                                             ; preds = %XLogBytePosToEndRecPtr.exit
  %i.dc = add i64 %i.cy, -8152                    ; 2 uses
  %i.dd = udiv i64 %i.dc, 8168
  %i.de = urem i64 %i.dc, 8168
  %i.df = shl i64 %i.dd, 13
  %i.dg = add nuw nsw i64 %i.de, 8216
  %i.dh = add i64 %i.dg, %i.df
  br label %XLogBytePosToRecPtr.exit56

XLogBytePosToRecPtr.exit56:                       ; preds = %bb.x, %bb.y
  %.0.i55 = phi i64 [ %i.db, %bb.x ], [ %i.dh, %bb.y ]
  %i.di = mul i64 %i.cz, %i.ce
  %i.dj = and i64 %.0.i55, 4294967295
  %i.dk = add i64 %i.di, %i.dj
  store i64 %i.dk, ptr %i.bf, align 8
  br label %.thread

bb.z:                                             ; preds = %bb.f
  tail call fastcc void @WALInsertLockAcquireExclusive()
  br i1 %i.o, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = load i32, ptr %i.e, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dn = load ptr, ptr @XLogCtl, align 8         ; 4 uses
  %i.do = add i32 %i.dl, 7
  %i.dp = and i32 %i.do, -8
  tail call fastcc void @SpinLockAcquire(ptr noundef %i.dn)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = sext i32 %i.dp to i64
  %i.dt = add i64 %i.dr, %i.ds                    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  store i64 %i.dt, ptr %i.dq, align 8
  store i64 %i.dr, ptr %i.du, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !9
  store volatile i8 0, ptr %i.dn, align 8
  %6 = tail call fastcc i64 @XLogBytePosToRecPtr(i64 noundef %i.dr) ; 4 uses
  store i64 %6, ptr %i.a, align 8
  %7 = tail call fastcc i64 @XLogBytePosToEndRecPtr(i64 noundef %i.dt) ; 2 uses
  store i64 %7, ptr %i.b, align 8
  %8 = tail call fastcc i64 @XLogBytePosToRecPtr(i64 noundef %i.dv)
  store i64 %8, ptr %i.dm, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i64 %6, ptr %9, align 8
  store i64 %6, ptr @RedoRecPtr, align 8
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dx = call fastcc zeroext i1 @ReserveXLogSwitch(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.dw)
  br i1 %i.dx, label %..thread_crit_edge, label %bb.as

..thread_crit_edge:                               ; preds = %bb.ab
  %.pre = load i64, ptr %i.a, align 8
  %.pre91 = load i64, ptr %i.b, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.aa, %XLogBytePosToRecPtr.exit56
  %i.dy = phi i64 [ %.pre91, %..thread_crit_edge ], [ %7, %bb.aa ], [ %i.cx, %XLogBytePosToRecPtr.exit56 ] ; 3 uses
  %i.dz = phi i64 [ %.pre, %..thread_crit_edge ], [ %6, %bb.aa ], [ %i.ch, %XLogBytePosToRecPtr.exit56 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = load ptr, ptr @pg_comp_crc32c, align 8
  %i.ed = tail call i32 %i.ec(i32 noundef %i.eb, ptr noundef nonnull %i.e, i64 noundef 20) #24
  %i.ee = xor i32 %i.ed, -1
  store i32 %i.ee, ptr %i.ea, align 4
  %i.ef = load i32, ptr %i.e, align 8
  %i.eg = tail call fastcc ptr @GetXLogBuffer(i64 noundef %i.dz, i32 noundef %i.aa)
  %i.eh = and i64 %i.dz, 8191                     ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  %i.ej = trunc nuw nsw i64 %i.eh to i32
  %i.ek = sub nuw nsw i32 8192, %i.ej
  %i.el = select i1 %i.ei, i32 0, i32 %i.ek
  br label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.thread, %._crit_edge.i
  %.077113.i = phi i64 [ %i.hr, %._crit_edge.i ], [ %i.dz, %.thread ] ; 2 uses
  %.078112.i = phi i32 [ %i.ht, %._crit_edge.i ], [ 0, %.thread ] ; 2 uses
  %.080111.i = phi i32 [ %i.hs, %._crit_edge.i ], [ %i.el, %.thread ] ; 3 uses
  %.082110.i = phi ptr [ %i.hq, %._crit_edge.i ], [ %i.eg, %.thread ] ; 2 uses
  %.085109.i = phi ptr [ %i.hu, %._crit_edge.i ], [ %0, %.thread ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.085109.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.085109.i, i64 16
  %i.ep = load i32, ptr %i.eo, align 8            ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, %.080111.i
  br i1 %i.eq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph115.i, %GetXLogBuffer.exit.i
  %.075102.i = phi i32 [ %i.et, %GetXLogBuffer.exit.i ], [ %i.ep, %.lr.ph115.i ]
  %.076101.i = phi ptr [ %i.es, %GetXLogBuffer.exit.i ], [ %i.en, %.lr.ph115.i ] ; 2 uses
  %.1100.i = phi i64 [ %.2.i, %GetXLogBuffer.exit.i ], [ %.077113.i, %.lr.ph115.i ]
  %.17999.i = phi i32 [ %i.eu, %GetXLogBuffer.exit.i ], [ %.078112.i, %.lr.ph115.i ]
  %.18198.i = phi i32 [ %i.hn, %GetXLogBuffer.exit.i ], [ %.080111.i, %.lr.ph115.i ] ; 3 uses
  %.18397.i = phi ptr [ %.284.i, %GetXLogBuffer.exit.i ], [ %.082110.i, %.lr.ph115.i ]
  %i.er = sext i32 %.18198.i to i64               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.18397.i, ptr align 1 %.076101.i, i64 %i.er, i1 false)
  %i.es = getelementptr inbounds i8, ptr %.076101.i, i64 %i.er ; 2 uses
  %i.et = sub i32 %.075102.i, %.18198.i           ; 3 uses
  %i.eu = add i32 %.18198.i, %.17999.i            ; 3 uses
  %i.ev = add i64 %.1100.i, %i.er                 ; 16 uses
  %i.ew = lshr i64 %i.ev, 13                      ; 3 uses
  %i.ex = load i64, ptr @GetXLogBuffer.cachedPage, align 8
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i
  %i.ez = load ptr, ptr @GetXLogBuffer.cachedPos, align 8
  %i.fa = and i64 %i.ev, 8191
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fa
  br label %GetXLogBuffer.exit.i

bb.ad:                                            ; preds = %.lr.ph.i
  %i.fc = load ptr, ptr @XLogCtl, align 8         ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 304
  %i.fe = load i32, ptr %i.fd, align 8
  %i.ff = add i32 %i.fe, 1
  %i.fg = sext i32 %i.ff to i64
  %i.fh = urem i64 %i.ew, %i.fg
  %i.fi = and i64 %i.ev, 8191                     ; 2 uses
  %reass.sub.i.i = and i64 %i.ev, -8192
  %i.fj = add i64 %reass.sub.i.i, 8192            ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 296
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = shl i64 %i.fh, 32                       ; 2 uses
  %i.fn = ashr exact i64 %i.fm, 32                ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fn
  %i.fp = load volatile i64, ptr %i.fo, align 8
  %.not.i.i = icmp eq i64 %i.fj, %i.fp
  br i1 %.not.i.i, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i64 %i.fi, label %bb.ah [
    i64 24, label %bb.af
    i64 40, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.fq = load i32, ptr @wal_segment_size, align 4
  %i.fr = add i32 %i.fq, -1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = and i64 %i.ev, %i.fs
  %i.fu = icmp ugt i64 %i.ft, 8192
  %i.fv = add nsw i64 %i.ev, -24
  %spec.select31.i.i = select i1 %i.fu, i64 %i.fv, i64 %i.ev
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fw = load i32, ptr @wal_segment_size, align 4
  %i.fx = add i32 %i.fw, -1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = and i64 %i.ev, %i.fy
  %i.ga = icmp ult i64 %i.fz, 8192
  %i.gb = add nsw i64 %i.ev, -40
  %spec.select.i.i = select i1 %i.ga, i64 %i.gb, i64 %i.ev
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i.i = phi i64 [ %spec.select31.i.i, %bb.af ], [ %spec.select.i.i, %bb.ag ], [ %i.ev, %bb.ae ] ; 2 uses
  %.b.i.i.i = load i1, ptr @holdingAllLocks, align 1
  %i.gc = load ptr, ptr @WALInsertLocks, align 8  ; 3 uses
  br i1 %.b.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 896
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 912
  tail call void @LWLockUpdateVar(ptr noundef nonnull %i.gd, ptr noundef nonnull %i.ge, i64 noundef %.0.i.i) #24
  br label %WALInsertLockUpdateInsertingAt.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gf = load i32, ptr @MyLockNo, align 4
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [128 x i8], ptr %i.gc, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  tail call void @LWLockUpdateVar(ptr noundef %i.gh, ptr noundef nonnull %i.gi, i64 noundef %.0.i.i) #24
  br label %WALInsertLockUpdateInsertingAt.exit.i.i

WALInsertLockUpdateInsertingAt.exit.i.i:          ; preds = %bb.aj, %bb.ai
  tail call fastcc void @AdvanceXLInsertBuffer(i64 noundef %i.ev, i32 noundef %i.aa, i1 noundef zeroext false)
  %i.gj = load ptr, ptr @XLogCtl, align 8         ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 296
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.fn
  %i.gn = load volatile i64, ptr %i.gm, align 8
  %.not30.i.i = icmp eq i64 %i.fj, %i.gn
  br i1 %.not30.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %WALInsertLockUpdateInsertingAt.exit.i.i
  %i.go = tail call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #25 ; 0 uses
  %i.gp = lshr i64 %i.ev, 32
  %i.gq = trunc nuw i64 %i.gp to i32
  %i.gr = trunc i64 %i.ev to i32
  %i.gs = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.111, i32 noundef %i.gq, i32 noundef %i.gr) #24 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 1750, ptr noundef nonnull @__func__.GetXLogBuffer) #24
  unreachable

bb.al:                                            ; preds = %bb.ad
  tail call void asm sideeffect "lock; addl $$0,0(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !10
  %.pre.i.i = load ptr, ptr @XLogCtl, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %WALInsertLockUpdateInsertingAt.exit.i.i
  %i.gt = phi ptr [ %i.gj, %WALInsertLockUpdateInsertingAt.exit.i.i ], [ %.pre.i.i, %bb.al ]
  store i64 %i.ew, ptr @GetXLogBuffer.cachedPage, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 288
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = ashr exact i64 %i.fm, 19
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw ; 2 uses
  store ptr %i.gx, ptr @GetXLogBuffer.cachedPos, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.fi
  br label %GetXLogBuffer.exit.i

GetXLogBuffer.exit.i:                             ; preds = %bb.am, %bb.ac
  %.027.i.i = phi ptr [ %i.fb, %bb.ac ], [ %i.gy, %bb.am ] ; 3 uses
  %i.gz = sub i32 %i.ef, %i.eu
  %i.ha = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 16
  store i32 %i.gz, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2
  %i.hd = or i16 %i.hc, 1
  store i16 %i.hd, ptr %i.hb, align 2
  %i.he = load i32, ptr @wal_segment_size, align 4
  %i.hf = add i32 %i.he, -1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = and i64 %i.ev, %i.hg
  %i.hi = icmp eq i64 %i.hh, 0
  %.284.v.i = select i1 %i.hi, i64 40, i64 24     ; 2 uses
  %.284.i = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 %.284.v.i ; 2 uses
  %.2.i = add i64 %.284.v.i, %i.ev                ; 3 uses
  %i.hj = and i64 %.2.i, 8191                     ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = trunc nuw nsw i64 %i.hj to i32
  %i.hm = sub nuw nsw i32 8192, %i.hl
  %i.hn = select i1 %i.hk, i32 0, i32 %i.hm       ; 3 uses
  %i.ho = icmp sgt i32 %i.et, %i.hn
  br i1 %i.ho, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %GetXLogBuffer.exit.i, %.lr.ph115.i
  %.183.lcssa.i = phi ptr [ %.082110.i, %.lr.ph115.i ], [ %.284.i, %GetXLogBuffer.exit.i ] ; 2 uses
  %.181.lcssa.i = phi i32 [ %.080111.i, %.lr.ph115.i ], [ %i.hn, %GetXLogBuffer.exit.i ]
  %.179.lcssa.i = phi i32 [ %.078112.i, %.lr.ph115.i ], [ %i.eu, %GetXLogBuffer.exit.i ]
  %.1.lcssa.i = phi i64 [ %.077113.i, %.lr.ph115.i ], [ %.2.i, %GetXLogBuffer.exit.i ]
  %.076.lcssa.i = phi ptr [ %i.en, %.lr.ph115.i ], [ %i.es, %GetXLogBuffer.exit.i ]
  %.075.lcssa.i = phi i32 [ %i.ep, %.lr.ph115.i ], [ %i.et, %GetXLogBuffer.exit.i ] ; 3 uses
  %i.hp = sext i32 %.075.lcssa.i to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.183.lcssa.i, ptr align 1 %.076.lcssa.i, i64 %i.hp, i1 false)
  %i.hq = getelementptr inbounds i8, ptr %.183.lcssa.i, i64 %i.hp
  %i.hr = add i64 %.1.lcssa.i, %i.hp              ; 4 uses
  %i.hs = sub i32 %.181.lcssa.i, %.075.lcssa.i    ; 2 uses
  %i.ht = add i32 %.075.lcssa.i, %.179.lcssa.i
  %i.hu = load ptr, ptr %.085109.i, align 8       ; 2 uses
  %.not.i57 = icmp eq ptr %i.hu, null
  br i1 %.not.i57, label %._crit_edge116.i, label %.lr.ph115.i, !llvm.loop !18

._crit_edge116.i:                                 ; preds = %._crit_edge.i
  br i1 %i.o, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %._crit_edge116.i
  %i.hv = load i32, ptr @wal_segment_size, align 4
  %i.hw = add i32 %i.hv, -1
end_hunk_0
begin_hunk_1_@CreateCheckPoint:bb.a

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.ha = load volatile i32, ptr @CritSectionCount, align 4
  %i.hb = add i32 %i.ha, 1
  store volatile i32 %i.hb, ptr @CritSectionCount, align 4
  call void @XLogBeginInsert() #24
  call void @XLogRegisterData(ptr noundef nonnull %1, i32 noundef 96) #24
  %i.hc = select i1 %.not89, i8 0, i8 16
  %i.hd = call i64 @XLogInsert(i8 noundef zeroext 0, i8 noundef zeroext %i.hc) #24 ; 5 uses
  call void @XLogFlush(i64 noundef %i.hd)
  br i1 %.not89, label %bb.aj, label %.critedge96

bb.aj:                                            ; preds = %bb.ai
  store i32 %..085108, ptr @LocalXLogInsertAllowed, align 4
  %i.he = load i64, ptr %1, align 8
  %i.hf = load i64, ptr @ProcLastRecPtr, align 8
  %.not = icmp eq i64 %i.he, %i.hf
  br i1 %.not, label %.critedge96, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hg = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #25 ; 0 uses
  %i.hh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.66) #24 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 7778, ptr noundef nonnull @__func__.CreateCheckPoint) #24
  unreachable

.critedge96:                                      ; preds = %bb.ai, %bb.aj
  %i.hi = load ptr, ptr @ControlFile, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.hk = load i64, ptr %i.hj, align 8            ; 2 uses
  %i.hl = load ptr, ptr @MainLWLockArray, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1152
  %i.hn = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.hm, i32 noundef 0) #24 ; 0 uses
  %.pre = load ptr, ptr @ControlFile, align 8     ; 5 uses
  br i1 %.not89, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge96
  %i.ho = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store i32 1, ptr %i.ho, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.critedge96
  %i.hp = load i64, ptr @ProcLastRecPtr, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  store i64 %i.hp, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hr, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %.pre, i64 144
  store i64 0, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  store i32 0, ptr %i.ht, align 8
  %i.hu = load ptr, ptr @XLogCtl, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 232 ; 2 uses
  %i.hw = call i64 asm sideeffect "\09lock\09\09\09\09\0A\09xaddq\09$0,$1\09\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.hv, i64 0, ptr nonnull elementtype(i64) %i.hv) #24, !srcloc !11
  %i.hx = load ptr, ptr @ControlFile, align 8     ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 136
  store i64 %i.hw, ptr %i.hy, align 8
  %i.hz = load ptr, ptr @DataDir, align 8
  call void @update_controlfile(ptr noundef %i.hz, ptr noundef %i.hx, i1 noundef zeroext true) #24
  %i.ia = load ptr, ptr @MainLWLockArray, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1152
  call void @LWLockRelease(ptr noundef nonnull %i.ib) #24
  %i.ic = load volatile i32, ptr @CritSectionCount, align 4
  %i.id = add i32 %i.ic, -1
  store volatile i32 %i.id, ptr @CritSectionCount, align 4
  call void @WakeupWalSummarizer() #24
  call void @SyncPostCheckpoint() #24
  %.not93 = icmp eq i64 %i.hk, 0
  %.pre117 = load i64, ptr @RedoRecPtr, align 8   ; 2 uses
  br i1 %.not93, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ie = sub i64 %.pre117, %i.hk
  %i.if = uitofp i64 %i.ie to double              ; 4 uses
  store double %i.if, ptr @PrevCheckPointDistance, align 8
  %i.ig = load double, ptr @CheckPointDistanceEstimate, align 8 ; 2 uses
  %i.ih = fcmp olt double %i.ig, %i.if
  %i.ii = fmul nnan double %i.if, 1.000000e-01
  %i.ij = call double @llvm.fmuladd.f64(double %i.ig, double 9.000000e-01, double %i.ii)
  %storemerge.i = select i1 %i.ih, double %i.if, double %i.ij
  store double %storemerge.i, ptr @CheckPointDistanceEstimate, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ik = load i32, ptr @wal_segment_size, align 4
  %i.il = sext i32 %i.ik to i64
  %i.im = udiv i64 %.pre117, %i.il
  store i64 %i.im, ptr %i.d, align 8
  call fastcc void @KeepLogSeg(i64 noundef %i.hd, ptr noundef %i.d)
  %i.in = load i64, ptr %i.d, align 8             ; 2 uses
  %i.io = call zeroext i1 @InvalidateObsoleteReplicationSlots(i32 noundef 9, i64 noundef %i.in, i32 noundef 0, i32 noundef 0) #24
  br i1 %i.io, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ip = load i64, ptr @RedoRecPtr, align 8
  %i.iq = load i32, ptr @wal_segment_size, align 4
  %i.ir = sext i32 %i.iq to i64
  %i.is = udiv i64 %i.ip, %i.ir
  store i64 %i.is, ptr %i.d, align 8
  call fastcc void @KeepLogSeg(i64 noundef %i.hd, ptr noundef %i.d)
  %.pre118 = load i64, ptr %i.d, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.it = phi i64 [ %.pre118, %bb.ap ], [ %i.in, %bb.ao ]
  %i.iu = add i64 %i.it, -1
  %i.iv = load i64, ptr @RedoRecPtr, align 8
  %i.iw = load i32, ptr %i.bh, align 8
  call fastcc void @RemoveOldXlogFiles(i64 noundef %i.iu, i64 noundef %i.iv, i64 noundef %i.hd, i32 noundef %i.iw)
  br i1 %.not89, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = load i32, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.iy = load ptr, ptr @XLogCtl, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 320
  %i.ja = load i8, ptr %i.iz, align 8, !range !5, !noundef !6
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.as, label %PreallocXlogFiles.exit

bb.as:                                            ; preds = %bb.ar
  %i.jc = add i64 %i.hd, -1                       ; 2 uses
  %i.jd = load i32, ptr @wal_segment_size, align 4 ; 3 uses
  %i.je = add i32 %i.jd, -1
  %i.jf = sext i32 %i.je to i64
  %i.jg = and i64 %i.jc, %i.jf
  %i.jh = sitofp i32 %i.jd to double
  %i.ji = fmul nnan double %i.jh, 7.500000e-01
  %i.jj = fptoui double %i.ji to i32
  %i.jk = zext i32 %i.jj to i64
  %.not.i103 = icmp ult i64 %i.jg, %i.jk
  br i1 %.not.i103, label %PreallocXlogFiles.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jl = sext i32 %i.jd to i64
  %i.jm = udiv i64 %i.jc, %i.jl
  %i.jn = add i64 %i.jm, 1
  %i.jo = call fastcc i32 @XLogFileInitInternal(i64 noundef %i.jn, i32 noundef %i.ix, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, -1
  br i1 %i.jp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jq = call i32 @close(i32 noundef %i.jo) #24  ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jr = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.aw, label %PreallocXlogFiles.exit

bb.aw:                                            ; preds = %bb.av
  %i.jt = load i32, ptr getelementptr inbounds nuw (i8, ptr @CheckpointStats, i64 48), align 8
  %i.ju = add i32 %i.jt, 1
  store i32 %i.ju, ptr getelementptr inbounds nuw (i8, ptr @CheckpointStats, i64 48), align 8
  br label %PreallocXlogFiles.exit

PreallocXlogFiles.exit:                           ; preds = %bb.ar, %bb.as, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ax

bb.ax:                                            ; preds = %PreallocXlogFiles.exit, %bb.aq
  %i.jv = load i8, ptr @LocalRecoveryInProgress, align 1, !range !5, !noundef !6
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %RecoveryInProgress.exit105, label %RecoveryInProgress.exit105.thread

RecoveryInProgress.exit105:                       ; preds = %bb.ax
  %i.jx = load ptr, ptr @XLogCtl, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 316
  %i.jz = load volatile i32, ptr %i.jy, align 4
  %i.ka = icmp ne i32 %i.jz, 2                    ; 2 uses
  %i.kb = zext i1 %i.ka to i8
  store i8 %i.kb, ptr @LocalRecoveryInProgress, align 1
  br i1 %i.ka, label %bb.ay, label %RecoveryInProgress.exit105.thread

RecoveryInProgress.exit105.thread:                ; preds = %bb.ax, %RecoveryInProgress.exit105
  %i.kc = call i32 @GetOldestTransactionIdConsideredRunning() #24
  call void @TruncateSUBTRANS(i32 noundef %i.kc) #24
  br label %bb.ay

bb.ay:                                            ; preds = %RecoveryInProgress.exit105.thread, %RecoveryInProgress.exit105
  call fastcc void @LogCheckpointEnd(i1 noundef zeroext false, i32 noundef %0)
  br i1 %.not89, label %bb.az, label %update_checkpoint_display.exit106

bb.az:                                            ; preds = %bb.ay
  call void @set_ps_display_with_len(ptr noundef nonnull @.str.50, i64 noundef 0) #24
  br label %update_checkpoint_display.exit106

update_checkpoint_display.exit106:                ; preds = %bb.az, %bb.ay, %bb.h, %bb.i
  %.087 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.ay ], [ true, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i1 %.087
}

declare void @SyncPreCheckpoint() local_unnamed_addr #5

declare i32 @GetOldestActiveTransactionId(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @XLogBytePosToRecPtr(i64 noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr @UsableBytesInSegment, align 4
  %3 = sext i32 %2 to i64                         ; 2 uses
  %4 = urem i64 %0, %3                            ; 3 uses
  %5 = udiv i64 %0, %3
  %6 = icmp ult i64 %4, 8152
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = add nuw nsw i64 %4, 40
  br label %16

9:                                                ; preds = %1
  %10 = add i64 %4, -8152                         ; 2 uses
  %11 = udiv i64 %10, 8168
  %12 = urem i64 %10, 8168
  %13 = shl i64 %11, 13
  %14 = add nuw nsw i64 %12, 8216
  %15 = add i64 %14, %13
  br label %16

16:                                               ; preds = %9, %7
  %.0 = phi i64 [ %8, %7 ], [ %15, %9 ]
  %17 = load i32, ptr @wal_segment_size, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %5, %18
  %20 = and i64 %.0, 4294967295
  %21 = add i64 %19, %20
  ret i64 %21
}

declare void @XLogBeginInsert() local_unnamed_addr #5

declare void @XLogRegisterData(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @XLogInsert(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @LogCheckpointStart(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #24
  br i1 %i.a, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %. = select i1 %1, i32 7179, i32 7184
  %.str.185..str.186 = select i1 %1, ptr @.str.185, ptr @.str.186
  %i.b = insertelement <8 x i32> poison, i32 %0, i64 0
  %i.c = shufflevector <8 x i32> %i.b, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.d = and <8 x i32> %i.c, <i32 16, i32 256, i32 128, i32 32, i32 8, i32 4, i32 2, i32 1>
  %i.e = icmp eq <8 x i32> %i.d, zeroinitializer  ; 8 uses
  %i.f = extractelement <8 x i1> %i.e, i64 7
  %i.g = select i1 %i.f, ptr @.str.50, ptr @.str.188
  %i.h = extractelement <8 x i1> %i.e, i64 6
  %i.i = select i1 %i.h, ptr @.str.50, ptr @.str.189
  %i.j = extractelement <8 x i1> %i.e, i64 5
  %i.k = select i1 %i.j, ptr @.str.50, ptr @.str.190
  %i.l = extractelement <8 x i1> %i.e, i64 4
  %i.m = select i1 %i.l, ptr @.str.50, ptr @.str.191
  %i.n = extractelement <8 x i1> %i.e, i64 3
  %i.o = select i1 %i.n, ptr @.str.50, ptr @.str.192
  %i.p = extractelement <8 x i1> %i.e, i64 2
  %i.q = select i1 %i.p, ptr @.str.50, ptr @.str.193
  %i.r = extractelement <8 x i1> %i.e, i64 1
  %i.s = select i1 %i.r, ptr @.str.50, ptr @.str.194
  %i.t = extractelement <8 x i1> %i.e, i64 0
  %i.u = select i1 %i.t, ptr @.str.50, ptr @.str.195
  %i.v = tail call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull @CheckpointFlagsString.buf, i64 noundef 128, ptr noundef nonnull @.str.187, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u) #24 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull %.str.185..str.186, ptr noundef nonnull @CheckpointFlagsString.buf) #24 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef %., ptr noundef nonnull @__func__.LogCheckpointStart) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  ret void
}

declare zeroext i1 @IsLogicalDecodingEnabled() local_unnamed_addr #5

declare void @MultiXactGetCheckptMulti(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @GetVirtualXIDsDelayingChkpt(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @AbsorbSyncRequests() local_unnamed_addr #5

declare zeroext i1 @HaveVirtualXIDsDelayingChkpt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @CheckPointGuts(i64 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @CheckPointRelationMap() #24
  %i.a = trunc i32 %1 to i1
  tail call void @CheckPointReplicationSlots(i1 noundef zeroext %i.a) #24
  tail call void @CheckPointSnapBuild() #24
  tail call void @CheckPointLogicalRewriteHeap() #24
  tail call void @CheckPointReplicationOrigin() #24
  %i.b = tail call i64 @GetCurrentTimestamp() #24
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @CheckpointStats, i64 8), align 8
  tail call void @CheckPointCLOG() #24
  tail call void @CheckPointCommitTs() #24
  tail call void @CheckPointSUBTRANS() #24
  tail call void @CheckPointMultiXact() #24
  tail call void @CheckPointPredicate() #24
  tail call void @CheckPointBuffers(i32 noundef %1) #24
  %i.c = tail call i64 @GetCurrentTimestamp() #24
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @CheckpointStats, i64 16), align 8
  tail call void @ProcessSyncRequests() #24
  %i.d = tail call i64 @GetCurrentTimestamp() #24
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @CheckpointStats, i64 24), align 8
  tail call void @CheckPointTwoPhase(i64 noundef %0) #24
  ret void
}

declare i64 @LogStandbySnapshot() local_unnamed_addr #5

declare void @WakeupWalSummarizer() local_unnamed_addr #5

declare void @SyncPostCheckpoint() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @KeepLogSeg(i64 noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @wal_segment_size, align 4
  %i.b = sext i32 %i.a to i64
  %i.c = udiv i64 %0, %i.b                        ; 6 uses
  %i.d = load ptr, ptr @XLogCtl, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 452 ; 3 uses
  %i.f = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.e, i8 1, ptr nonnull elementtype(i8) %i.e) #24, !srcloc !8
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %XLogGetReplicationSlotMinimumLSN.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @s_lock(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.109, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #24 ; 0 uses
  br label %XLogGetReplicationSlotMinimumLSN.exit

XLogGetReplicationSlotMinimumLSN.exit:            ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr @XLogCtl, align 8          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 452
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !9
  store volatile i8 0, ptr %i.k, align 4
  %.not = icmp ne i64 %i.j, 0
  %i.l = icmp ult i64 %i.j, %0
  %or.cond37 = and i1 %.not, %i.l
  br i1 %or.cond37, label %bb.c, label %bb.e

bb.c:                                             ; preds = %XLogGetReplicationSlotMinimumLSN.exit
  %i.m = load i32, ptr @wal_segment_size, align 4 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = udiv i64 %i.j, %i.n                      ; 3 uses
  %i.p = load i32, ptr @max_slot_wal_keep_size_mb, align 4 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %i.r = load i8, ptr @IsBinaryUpgrade, align 1, !range !5
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sdiv i32 %i.m, 1048576
  %i.u = sdiv i32 %i.p, %i.t
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = sub i64 %i.c, %i.o
  %i.x = icmp ugt i64 %i.w, %i.v
  %i.y = sub i64 %i.c, %i.v
  %spec.select = select i1 %i.x, i64 %i.y, i64 %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %XLogGetReplicationSlotMinimumLSN.exit
  %.1 = phi i64 [ %i.o, %bb.c ], [ %spec.select, %bb.d ], [ %i.c, %XLogGetReplicationSlotMinimumLSN.exit ] ; 2 uses
  %i.z = tail call i64 @GetOldestUnsummarizedLSN(ptr noundef null, ptr noundef null) #24 ; 2 uses
  %.not35 = icmp eq i64 %i.z, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr @wal_segment_size, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = udiv i64 %i.z, %i.ab
  %spec.select38 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.3 = phi i64 [ %spec.select38, %bb.f ], [ %.1, %bb.e ] ; 3 uses
  %i.ad = load i32, ptr @wal_keep_size_mb, align 4 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr @wal_segment_size, align 4
  %i.ag = sdiv i32 %i.af, 1048576
  %i.ah = sdiv i32 %i.ad, %i.ag
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = sub i64 %i.c, %.3
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not36 = icmp ugt i64 %i.c, %i.ai
  %i.al = sub nuw i64 %i.c, %i.ai
  %spec.select39 = select i1 %.not36, i64 %i.al, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.5 = phi i64 [ %.3, %bb.g ], [ %.3, %bb.h ], [ %spec.select39, %bb.i ] ; 2 uses
  %i.am = load i64, ptr %1, align 8
  %i.an = icmp ult i64 %.5, %i.am
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %.5, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

declare zeroext i1 @InvalidateObsoleteReplicationSlots(i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @RemoveOldXlogFiles(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.f = load i32, ptr @wal_segment_size, align 4 ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = udiv i64 %2, %i.g
  store i64 %i.h, ptr %i.e, align 8
  %i.i = udiv i64 %1, %i.g
end_hunk_1
