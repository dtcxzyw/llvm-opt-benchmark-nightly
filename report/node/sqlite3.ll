Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@fts5IndexTombstoneRebuild:bb.a

bb.m:                                             ; preds = %sqlite3_mutex_leave.exit.i.i.i
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.az(ptr noundef nonnull %.pr.i.i.i) #59, !inline_history !7692
  br label %sqlite3MallocAlarm.exit.i.i

sqlite3MallocAlarm.exit.i.i:                      ; preds = %bb.m, %sqlite3_mutex_leave.exit.i.i.i, %bb.l
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !259 ; 2 uses
  %.not17.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not17.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %sqlite3MallocAlarm.exit.i.i
  %i.bb = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.bc = sub nsw i64 %i.ba, %i.av
  %.not18.i.i = icmp slt i64 %i.bb, %i.bc
  br i1 %.not18.i.i, label %bb.p, label %mallocWithAlarm.exit.i

bb.o:                                             ; preds = %bb.k
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %sqlite3MallocAlarm.exit.i.i, %sqlite3StatusHighwater.exit.i.i
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !214
  %i.be = tail call ptr %i.bd(i32 noundef %i.ap) #59, !inline_history !7690 ; 4 uses
  %.not19.i.i = icmp eq ptr %i.be, null
  br i1 %.not19.i.i, label %mallocWithAlarm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.bg = tail call i32 %i.bf(ptr noundef nonnull %i.be) #59, !inline_history !7693
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.bj = add nsw i64 %i.bi, %i.bh                ; 3 uses
  store i64 %i.bj, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !19
  %i.bl = icmp sgt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.r, label %sqlite3StatusUp.exit.i.i

bb.r:                                             ; preds = %bb.q
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !19
  br label %sqlite3StatusUp.exit.i.i

sqlite3StatusUp.exit.i.i:                         ; preds = %bb.r, %bb.q
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19 ; 2 uses
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !19
  %.not21.i.i = icmp slt i64 %i.bm, %i.bo
  br i1 %.not21.i.i, label %mallocWithAlarm.exit.i, label %bb.s

bb.s:                                             ; preds = %sqlite3StatusUp.exit.i.i
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !19
  br label %mallocWithAlarm.exit.i

mallocWithAlarm.exit.i:                           ; preds = %bb.s, %sqlite3StatusUp.exit.i.i, %bb.p, %bb.n
  %storemerge.i.i = phi ptr [ null, %bb.n ], [ %i.be, %bb.s ], [ %i.be, %sqlite3StatusUp.exit.i.i ], [ null, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.bp, null
  br i1 %.not.i6.i, label %sqlite3Malloc.exit, label %bb.t

bb.t:                                             ; preds = %mallocWithAlarm.exit.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.bq(ptr noundef nonnull %i.bp) #59, !inline_history !7694
  br label %sqlite3Malloc.exit

bb.u:                                             ; preds = %bb.g
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !214
  %i.bs = tail call ptr %i.br(i32 noundef %i.ag) #59, !inline_history !7695
  br label %sqlite3Malloc.exit

sqlite3Malloc.exit:                               ; preds = %mallocWithAlarm.exit.i, %bb.t, %bb.u
  %.0.i71 = phi ptr [ %storemerge.i.i, %bb.t ], [ %i.bs, %bb.u ], [ %storemerge.i.i, %mallocWithAlarm.exit.i ] ; 6 uses
  %i.bt = icmp eq ptr %.0.i71, null
  br i1 %i.bt, label %sqlite3_malloc64.exit.thread.i65.thread, label %bb.v

sqlite3_malloc64.exit.thread.i65.thread:          ; preds = %bb.f, %sqlite3Malloc.exit
  store i32 7, ptr %i.q, align 4, !tbaa !24
  br label %sqlite3Fts5MallocZero.exit67.thread

bb.v:                                             ; preds = %sqlite3Malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i71, i8 0, i64 %i.af, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8
  store i32 %i.ad, ptr %i.bu, align 8, !tbaa !6916
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i71, i64 16
  store ptr %i.bv, ptr %.0.i71, align 8, !tbaa !6914
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv
  store ptr %.0.i71, ptr %i.bw, align 8, !tbaa !6780
  br label %sqlite3Fts5MallocZero.exit67.thread

sqlite3Fts5MallocZero.exit67.thread:              ; preds = %.lr.ph.split, %sqlite3_malloc64.exit.thread.i65.thread, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.split, !llvm.loop !7696

._crit_edge.loopexit:                             ; preds = %sqlite3Fts5MallocZero.exit67.thread
  %.pre = load i32, ptr %i.q, align 4, !tbaa !6358
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sqlite3Fts5MallocZero.exit
  %i.bx = phi i1 [ false, %sqlite3Fts5MallocZero.exit ], [ true, %._crit_edge.loopexit ]
  %.0.i127 = phi ptr [ %.0.i, %sqlite3Fts5MallocZero.exit ], [ %.0.i128, %._crit_edge.loopexit ] ; 7 uses
  %i.by = phi i32 [ %.pre110, %sqlite3Fts5MallocZero.exit ], [ %.pre, %._crit_edge.loopexit ]
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.w, label %.critedge.thread

._crit_edge.thread136:                            ; preds = %sqlite3_malloc64.exit.thread.i
  %.pre110132 = load i32, ptr %i.q, align 4, !tbaa !24
  %i.ca = icmp eq i32 %.pre110132, 0
  br i1 %i.ca, label %.preheader78.i, label %.critedge.thread

bb.w:                                             ; preds = %._crit_edge
  br i1 %i.bx, label %.lr.ph.i, label %.preheader78.i

.lr.ph.i:                                         ; preds = %bb.w
  %wide.trip.count.i = zext nneg i32 %.358 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cb = icmp eq i32 %.358, 1
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.x

.preheader78.i.loopexit.unr-lcssa:                ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader78.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader78.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader78.i.loopexit.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %.358 to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i127, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !6780
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !6914
  store i8 %i.r, ptr %i.ce, align 1, !tbaa !229
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !6780
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !6914
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 0, ptr %i.ch, align 1
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.epil.preheader, %.preheader78.i.loopexit.unr-lcssa, %._crit_edge.thread136, %bb.w
  %.0.i127138141 = phi ptr [ null, %._crit_edge.thread136 ], [ %.0.i127, %bb.w ], [ %.0.i127, %.preheader78.i.loopexit.unr-lcssa ], [ %.0.i127, %.epil.preheader ] ; 5 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.x ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0.i127, i64 %indvars.iv.i ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !6780
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !6914
  store i8 %i.r, ptr %i.ck, align 1, !tbaa !229
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !6780
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !6914
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 0, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0.i127, i64 %indvars.iv.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !6780
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !6914
  store i8 %i.r, ptr %i.cr, align 1, !tbaa !229
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !6780
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !6914
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  store i32 0, ptr %i.cu, align 1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader78.i.loopexit.unr-lcssa, label %bb.x, !llvm.loop !7697

bb.y:                                             ; preds = %fts5DataRelease.exit.i, %.preheader78.i
  %indvars.iv102.i = phi i64 [ 0, %.preheader78.i ], [ %indvars.iv.next103.i, %fts5DataRelease.exit.i ] ; 5 uses
  %i.cv = load i32, ptr %i.f, align 8, !tbaa !6703
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv102.i, %i.cw
  br i1 %i.cx, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.cy = icmp eq i64 %indvars.iv102.i, %i.s
  br i1 %i.cy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load i32, ptr %1, align 8, !tbaa !6697
  %i.da = add nsw i32 %i.cz, 65536
  %i.db = zext i32 %i.da to i64
  %i.dc = shl i64 %i.db, 37
  %i.dd = add nuw nsw i64 %i.dc, %indvars.iv102.i
  %i.de = tail call fastcc ptr @fts5DataRead(ptr noundef nonnull %0, i64 noundef %i.dd), !inline_history !7698 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.059.i = phi ptr [ %i.de, %bb.aa ], [ null, %bb.z ] ; 4 uses
  %.054.i = phi ptr [ %i.de, %bb.aa ], [ %2, %bb.z ] ; 5 uses
  %.not.i = icmp eq ptr %.054.i, null
  br i1 %.not.i, label %bb.ap, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %.054.i, align 8, !tbaa !6914
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !229
  %i.dh = icmp eq i8 %i.dg, 4                     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.054.i, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !6916
  %i.dk = add nsw i32 %i.dj, -8                   ; 2 uses
  %7 = sdiv i32 %i.dk, 4
  %i.dl = sdiv i32 %i.dk, 8
  %8 = select i1 %i.dh, i32 %7, i32 %i.dl         ; 2 uses
  %i.dm = icmp sgt i32 %8, 0
  br i1 %i.dm, label %.lr.ph85.preheader.i, label %fts5IndexTombstoneAddToPage.exit.i

.lr.ph85.preheader.i:                             ; preds = %bb.ac
  %wide.trip.count100.i = zext nneg i32 %8 to i64
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.thread.i, %.lr.ph85.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph85.preheader.i ], [ %indvars.iv.next98.i, %.thread.i ] ; 3 uses
  %i.dn = load ptr, ptr %.054.i, align 8, !tbaa !6914
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph85.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv97.i
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %.not62.i = icmp eq i32 %i.dq, 0
  br i1 %.not62.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  %i.dr = zext i32 %rev.i to i64
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph85.i
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv97.i
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %.not61.i = icmp eq i64 %i.dt, 0
  br i1 %.not61.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = tail call i64 @llvm.bswap.i64(i64 %i.dt)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.257.i = phi i64 [ %i.du, %bb.ag ], [ %i.dr, %bb.ae ] ; 15 uses
  %i.dv = urem i64 %.257.i, %i.t
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.0.i127138141, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !6780 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !6914 ; 5 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !229
  %i.ea = icmp eq i8 %i.dz, 4                     ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !6916 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 16
  %i.ee = add nsw i32 %i.ec, -8
  %i.ef = select i1 %i.ea, i32 2, i32 3
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = select i1 %i.ed, i32 %i.eg, i32 1       ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !229
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw i32 %i.ek, 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 5 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !229
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 16
  %i.eq = or disjoint i32 %i.ep, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 6 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !229
  %i.et = zext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 8
  %i.ev = or disjoint i32 %i.eq, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dy, i64 7 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !229
  %i.ey = zext i8 %i.ex to i32
  %i.ez = or disjoint i32 %i.ev, %i.ey            ; 2 uses
  %i.fa = udiv i64 %.257.i, %i.t
  %i.fb = zext nneg i32 %i.eh to i64
  %i.fc = urem i64 %i.fa, %i.fb
  %i.fd = trunc nuw nsw i64 %i.fc to i32          ; 2 uses
  %i.fe = icmp ugt i64 %.257.i, 4294967295
  %or.cond.i.i = and i1 %i.fe, %i.ea
  br i1 %or.cond.i.i, label %fts5IndexTombstoneAddToPage.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = lshr i32 %i.eh, 1
  %.not.i.i68 = icmp slt i32 %i.ez, %i.ff
  br i1 %.not.i.i68, label %bb.aj, label %fts5IndexTombstoneAddToPage.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fg = add nsw i32 %i.ez, 1                    ; 4 uses
  %i.fh = lshr i32 %i.fg, 24
  %i.fi = trunc nuw i32 %i.fh to i8
  store i8 %i.fi, ptr %i.ei, align 1, !tbaa !229
  %i.fj = lshr i32 %i.fg, 16
  %i.fk = trunc i32 %i.fj to i8
  store i8 %i.fk, ptr %i.em, align 1, !tbaa !229
  %i.fl = lshr i32 %i.fg, 8
  %i.fm = trunc i32 %i.fl to i8
  store i8 %i.fm, ptr %i.er, align 1, !tbaa !229
  %i.fn = trunc i32 %i.fg to i8
  store i8 %i.fn, ptr %i.ew, align 1, !tbaa !229
  %i.fo = load ptr, ptr %i.dx, align 8, !tbaa !6914
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  br i1 %i.ea, label %.preheader.i, label %.preheader76.i

.preheader.i:                                     ; preds = %bb.aj, %bb.ak
  %.045.i.i = phi i32 [ %i.fv, %bb.ak ], [ %i.eh, %bb.aj ] ; 2 uses
  %.041.i.i = phi i32 [ %i.fu, %bb.ak ], [ %i.fd, %bb.aj ] ; 2 uses
  %i.fq = zext nneg i32 %.041.i.i to i64          ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !24
  %.not49.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not49.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i
  %i.ft = add nuw nsw i32 %.041.i.i, 1
  %i.fu = urem i32 %i.ft, %i.eh
  %i.fv = add nsw i32 %.045.i.i, -1
  %i.fw = icmp eq i32 %.045.i.i, 0
  br i1 %i.fw, label %.thread.i, label %.preheader.i, !llvm.loop !7687

bb.al:                                            ; preds = %.preheader.i
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fq ; 4 uses
  %i.fy = lshr i64 %.257.i, 24
  %i.fz = trunc i64 %i.fy to i8
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !229
  %i.ga = lshr i64 %.257.i, 16
  %i.gb = trunc i64 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !229
  %i.gd = lshr i64 %.257.i, 8
  %i.ge = trunc i64 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !229
  %i.gg = trunc i64 %.257.i to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !229
  br label %.thread.i

.preheader76.i:                                   ; preds = %bb.aj, %bb.am
  %.146.i.i = phi i32 [ %i.gn, %bb.am ], [ %i.eh, %bb.aj ] ; 2 uses
  %.142.i.i = phi i32 [ %i.gm, %bb.am ], [ %i.fd, %bb.aj ] ; 2 uses
  %i.gi = zext nneg i32 %.142.i.i to i64          ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !19
  %.not48.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not48.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader76.i
  %i.gl = add nuw nsw i32 %.142.i.i, 1
  %i.gm = urem i32 %i.gl, %i.eh
  %i.gn = add nsw i32 %.146.i.i, -1
  %i.go = icmp eq i32 %.146.i.i, 0
  br i1 %i.go, label %.thread.i, label %.preheader76.i, !llvm.loop !7688

bb.an:                                            ; preds = %.preheader76.i
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gi ; 8 uses
  %i.gq = lshr i64 %.257.i, 56
  %i.gr = trunc nuw i64 %i.gq to i8
  store i8 %i.gr, ptr %i.gp, align 1, !tbaa !229
  %i.gs = lshr i64 %.257.i, 48
  %i.gt = trunc i64 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !229
  %i.gv = lshr i64 %.257.i, 40
  %i.gw = trunc i64 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !229
  %i.gy = lshr i64 %.257.i, 32
  %i.gz = trunc i64 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 3
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !229
  %i.hb = lshr i64 %.257.i, 24
  %i.hc = trunc i64 %i.hb to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !229
  %i.he = lshr i64 %.257.i, 16
  %i.hf = trunc i64 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gp, i64 5
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !229
  %i.hh = lshr i64 %.257.i, 8
  %i.hi = trunc i64 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 6
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !229
  %i.hk = trunc i64 %.257.i to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 7
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !229
  br label %.thread.i

.thread.i:                                        ; preds = %bb.am, %bb.ak, %bb.an, %bb.al, %bb.af, %bb.ad
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count100.i
  br i1 %exitcond101.not.i, label %fts5IndexTombstoneAddToPage.exit.i, label %.lr.ph85.i, !llvm.loop !7699

fts5IndexTombstoneAddToPage.exit.i:               ; preds = %.thread.i, %bb.ai, %bb.ah, %bb.ac
  %.4.i = phi i32 [ 0, %bb.ac ], [ 0, %.thread.i ], [ 1, %bb.ai ], [ 2, %bb.ah ] ; 2 uses
  %i.hm = icmp eq i64 %indvars.iv102.i, 0
  br i1 %i.hm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %fts5IndexTombstoneAddToPage.exit.i
  %i.hn = load ptr, ptr %.054.i, align 8, !tbaa !6914
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !229
  %i.hq = load ptr, ptr %.0.i127138141, align 8, !tbaa !6780
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !6914
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store i8 %i.hp, ptr %i.hs, align 1, !tbaa !229
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %fts5IndexTombstoneAddToPage.exit.i, %bb.ab
  %.5.i = phi i32 [ 0, %bb.ab ], [ %.4.i, %bb.ao ], [ %.4.i, %fts5IndexTombstoneAddToPage.exit.i ]
  %i.ht = icmp eq ptr %.059.i, null
  br i1 %i.ht, label %fts5DataRelease.exit.i, label %bb.aq
end_hunk_0
