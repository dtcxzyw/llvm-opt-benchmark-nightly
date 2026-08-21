inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Fts3SegReaderStep:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !5411
  %.not230 = icmp eq i8 %i.ap, 0
  br i1 %.not230, label %bb.c, label %.thread

.thread:                                          ; preds = %.lr.ph
  call fastcc void @fts3SegReaderSetEof(ptr noundef nonnull %i.an)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.aq = call fastcc i32 @fts3SegReaderNext(ptr noundef %0, ptr noundef nonnull %i.an) ; 2 uses
  %.not231 = icmp eq i32 %i.aq, 0
  br i1 %.not231, label %bb.d, label %.thread334

bb.d:                                             ; preds = %.thread, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.x, align 4, !tbaa !5450 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !5451

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i32 [ %i.ak, %bb.b ], [ %i.ar, %bb.d ] ; 2 uses
  %i.au = icmp eq i32 %.lcssa, %i.k
  %i.av = sext i1 %i.au to i32
  %spec.select.i = add i32 %.lcssa, %i.av         ; 3 uses
  %i.aw = icmp sgt i32 %spec.select.i, 0
  br i1 %i.aw, label %.preheader.lr.ph.i, label %fts3SegReaderSort.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge
  %i.ax = add nsw i32 %spec.select.i, -1
  %i.ay = zext nneg i32 %i.ax to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ay, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %.02532.in.i = phi i32 [ %spec.select.i, %.preheader.lr.ph.i ], [ %.02532.i, %.thread.i ] ; 3 uses
  %.02532.i = add nsw i32 %.02532.in.i, -1
  %i.az = icmp slt i32 %.02532.in.i, %i.k
  br i1 %i.az, label %.lr.ph.preheader.i, label %.thread.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !5381 ; 5 uses
  %.phi.trans.insert465 = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %.pre466 = load ptr, ptr %.phi.trans.insert465, align 8, !tbaa !5389
  %.not.i302 = icmp eq ptr %.pre466, null         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  %i.bc = zext i1 %.not.i302 to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next34.i, %bb.j ] ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next34.i ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !5381 ; 5 uses
  %.phi.trans.insert.i303 = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %.pre.i304 = load ptr, ptr %.phi.trans.insert.i303, align 8, !tbaa !5389
  %i.bf = icmp eq ptr %.pre.i304, null            ; 2 uses
  br i1 %.not.i302, label %._crit_edge.i307, label %bb.e

._crit_edge.i307:                                 ; preds = %.lr.ph.i
  %i.bg = sext i1 %i.bf to i32
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !5434 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !5434 ; 2 uses
  %i.bk = sub nsw i32 %i.bh, %i.bj                ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !5385
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !5385
  %..i = select i1 %i.bl, i32 %i.bh, i32 %i.bj
  %i.bp = sext i32 %..i to i64
  %i.bq = call i32 @memcmp(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.bp) #59 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  %spec.select.i305 = select i1 %i.br, i32 %i.bk, i32 %i.bq
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %._crit_edge.i307
  %.neg.i306 = phi i32 [ %i.bg, %._crit_edge.i307 ], [ -1, %bb.e ]
  %i.bs = add nsw i32 %.neg.i306, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi i32 [ %spec.select.i305, %bb.f ], [ %i.bs, %bb.g ] ; 2 uses
  %i.bt = icmp eq i32 %.2.i, 0
  br i1 %i.bt, label %bb.i, label %fts3SegReaderCmp.exit

bb.i:                                             ; preds = %bb.h
  %i.bu = load i32, ptr %i.be, align 8, !tbaa !5400
  %i.bv = load i32, ptr %.pre.i, align 8, !tbaa !5400
  %i.bw = sub nsw i32 %i.bu, %i.bv
  br label %fts3SegReaderCmp.exit

fts3SegReaderCmp.exit:                            ; preds = %bb.h, %bb.i
  %.3.i = phi i32 [ %i.bw, %bb.i ], [ %.2.i, %bb.h ]
  %i.bx = icmp slt i32 %.3.i, 0
  br i1 %i.bx, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %fts3SegReaderCmp.exit
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  store ptr %.pre.i, ptr %i.bd, align 8, !tbaa !5381
  store ptr %i.be, ptr %i.by, align 8, !tbaa !5381
  %i.bz = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.ca = icmp sgt i32 %i.y, %i.bz
  br i1 %i.ca, label %.lr.ph.i, label %.thread.i, !llvm.loop !5436

.thread.i:                                        ; preds = %bb.j, %fts3SegReaderCmp.exit, %.preheader.i
  %i.cb = icmp sgt i32 %.02532.in.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.cb, label %.preheader.i, label %fts3SegReaderSort.exit, !llvm.loop !5437

fts3SegReaderSort.exit:                           ; preds = %.thread.i, %._crit_edge
  store i32 0, ptr %i.x, align 4, !tbaa !5450
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !5381 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !5389
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.thread334, label %bb.k

bb.k:                                             ; preds = %fts3SegReaderSort.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !5434 ; 5 uses
  store i32 %i.ch, ptr %i.z, align 8, !tbaa !5452
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !5385 ; 3 uses
  store ptr %i.cj, ptr %i.aa, align 8, !tbaa !5453
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !5352 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  %or.cond = select i1 %i.cl, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load i32, ptr %i.ac, align 8, !tbaa !5353 ; 3 uses
  %i.cn = icmp slt i32 %i.ch, %i.cm
  %i.co = icmp sgt i32 %i.ch, %i.cm
  %or.cond232 = and i1 %.not215, %i.co
  %or.cond414 = select i1 %i.cn, i1 true, i1 %or.cond232
  br i1 %or.cond414, label %.thread334, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = sext i32 %i.cm to i64
  %bcmp = call i32 @bcmp(ptr %i.cj, ptr nonnull %i.ck, i64 %i.cp)
  %.not216 = icmp eq i32 %bcmp, 0
  br i1 %.not216, label %bb.n, label %.thread334

bb.n:                                             ; preds = %bb.m, %bb.k
  br i1 %i.ad, label %.lr.ph391, label %.critedge

.lr.ph391:                                        ; preds = %bb.n
  %i.cq = sext i32 %i.ch to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph391, %bb.r
  %indvars.iv448 = phi i64 [ 1, %.lr.ph391 ], [ %indvars.iv.next449, %bb.r ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv448
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !5381 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !5389
  %.not217 = icmp eq ptr %i.cu, null
  br i1 %.not217, label %.critedge.loopexit.split.loop.exit530, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !5434
  %i.cx = icmp eq i32 %i.cw, %i.ch
  br i1 %i.cx, label %bb.q, label %.critedge.loopexit.split.loop.exit

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !5385
  %bcmp348 = call i32 @bcmp(ptr %i.cj, ptr %i.cz, i64 %i.cq)
  %i.da = icmp eq i32 %bcmp348, 0
  br i1 %i.da, label %bb.r, label %.critedge.loopexit.split.loop.exit534

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !5454

.critedge.loopexit.split.loop.exit:               ; preds = %bb.p
  %i.db = trunc nuw nsw i64 %indvars.iv448 to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit530:            ; preds = %bb.o
  %i.dc = trunc nuw nsw i64 %indvars.iv448 to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit534:            ; preds = %bb.q
  %i.dd = trunc nuw nsw i64 %indvars.iv448 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit530, %.critedge.loopexit.split.loop.exit534, %bb.n
  %.0183.lcssa = phi i32 [ 1, %bb.n ], [ %i.dd, %.critedge.loopexit.split.loop.exit534 ], [ %i.db, %.critedge.loopexit.split.loop.exit ], [ %i.dc, %.critedge.loopexit.split.loop.exit530 ], [ %i.k, %bb.r ] ; 12 uses
  %i.de = icmp ne i32 %.0183.lcssa, 1
  %or.cond8 = select i1 %i.de, i1 true, i1 %i.af
  br i1 %or.cond8, label %bb.y, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.df = load i8, ptr %i.l, align 1, !tbaa !5448
  %i.dg = icmp eq i8 %i.df, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %.pre462 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !5401
  %i.dh = icmp eq ptr %.pre462, null              ; 2 uses
  br i1 %i.dg, label %split, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.dh, label %split.thread, label %bb.y

split.thread:                                     ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !5439
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !5455
  br label %.thread490

split:                                            ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !5439 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !5455
  br i1 %i.dh, label %.thread490, label %bb.u

bb.u:                                             ; preds = %split
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !5438
  %i.dq = sext i32 %i.dm to i64                   ; 3 uses
  %i.dr = add nsw i64 %i.dq, 20
  %i.ds = load i64, ptr %i.ai, align 8, !tbaa !5456
  %i.dt = icmp sgt i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.v, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.u
  %.pre.i237 = load ptr, ptr %i.aj, align 8, !tbaa !5384
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.du = shl i32 %i.dm, 1
  %i.dv = add i32 %i.du, 20
  %i.dw = load ptr, ptr %i.aj, align 8, !tbaa !5384
  %i.dx = sext i32 %i.dv to i64                   ; 2 uses
  %i.dy = call i32 @sqlite3_initialize(), !inline_history !5457
  %.not.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %.thread492

sqlite3_realloc64.exit.i:                         ; preds = %bb.v
  %i.dz = call fastcc ptr @sqlite3Realloc(ptr noundef %i.dw, i64 noundef %i.dx), !inline_history !5457 ; 3 uses
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %.thread492, label %bb.w

bb.w:                                             ; preds = %sqlite3_realloc64.exit.i
  store ptr %i.dz, ptr %i.aj, align 8, !tbaa !5384
  store i64 %i.dx, ptr %i.ai, align 8, !tbaa !5456
  br label %bb.x

.thread490:                                       ; preds = %split, %split.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !5438
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !5458
  br label %.thread345

.thread492:                                       ; preds = %sqlite3_realloc64.exit.i, %bb.v
  %i.ed = load ptr, ptr %i.aj, align 8, !tbaa !5384
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !5458
  br label %.thread345

bb.x:                                             ; preds = %._crit_edge.i, %bb.w
  %i.ef = phi ptr [ %.pre.i237, %._crit_edge.i ], [ %i.dz, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr readonly align 1 %i.dp, i64 range(i64 -2147483648, 2147483649) %i.dq, i1 false)
  %i.eg = load ptr, ptr %i.aj, align 8, !tbaa !5384
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.eh, i8 0, i64 20, i1 false)
  %i.ei = load ptr, ptr %i.aj, align 8, !tbaa !5384
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !5458
  br label %.thread345

bb.y:                                             ; preds = %bb.t, %.critedge
  %wide.trip.count454 = zext i32 %.0183.lcssa to i64 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.z
  %indvars.iv451 = phi i64 [ 0, %bb.y ], [ %indvars.iv.next452, %bb.z ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv451
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !5381
  %.val = load i8, ptr %i.l, align 1, !tbaa !5448
  %i.em = call fastcc i32 @fts3SegReaderFirstDocid(i8 %.val, ptr noundef %i.el) ; 0 uses
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count454
  br i1 %exitcond455.not, label %bb.aa, label %bb.z, !llvm.loop !5459

bb.aa:                                            ; preds = %bb.z
  %spec.select.i239 = add nsw i32 %.0183.lcssa, -1 ; 3 uses
  %i.en = icmp samesign ugt i32 %.0183.lcssa, 1   ; 2 uses
  br i1 %i.en, label %.preheader.lr.ph.i241, label %fts3SegReaderSort.exit254

.preheader.lr.ph.i241:                            ; preds = %bb.aa
  %i.eo = add nsw i32 %.0183.lcssa, -2
  %i.ep = zext nneg i32 %i.eo to i64
  br label %.preheader.i242

.preheader.i242:                                  ; preds = %.thread.i246, %.preheader.lr.ph.i241
  %indvars.iv.i243 = phi i64 [ %i.ep, %.preheader.lr.ph.i241 ], [ %indvars.iv.next.i247, %.thread.i246 ] ; 3 uses
  %.02532.in.i244 = phi i32 [ %spec.select.i239, %.preheader.lr.ph.i241 ], [ %.02532.i245, %.thread.i246 ] ; 3 uses
  %.02532.i245 = add nsw i32 %.02532.in.i244, -1
  %2 = icmp slt i32 %.02532.in.i244, %.0183.lcssa
  br i1 %2, label %.lr.ph.preheader.i248, label %.thread.i246

.lr.ph.preheader.i248:                            ; preds = %.preheader.i242
  %.phi.trans.insert.i249 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i243
  %.pre.i250 = load ptr, ptr %.phi.trans.insert.i249, align 8, !tbaa !5381
  br label %.lr.ph.i251

.lr.ph.i251:                                      ; preds = %bb.ab, %.lr.ph.preheader.i248
  %i.eq = phi ptr [ %.pre.i250, %.lr.ph.preheader.i248 ], [ %i.ex, %bb.ab ]
  %indvars.iv33.i252 = phi i64 [ %indvars.iv.i243, %.lr.ph.preheader.i248 ], [ %indvars.iv.next34.i253, %bb.ab ] ; 2 uses
  %indvars.iv.next34.i253 = add nuw nsw i64 %indvars.iv33.i252, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next34.i253 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !5381
  %i.et = call i32 %i.n(ptr noundef %i.eq, ptr noundef %i.es) #58, !callees !5460, !inline_history !5461
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %.thread.i246, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i251
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i252 ; 2 uses
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !5381
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !5381 ; 2 uses
  store ptr %i.ex, ptr %i.er, align 8, !tbaa !5381
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !5381
  %i.ey = trunc nuw i64 %indvars.iv.next34.i253 to i32
  %i.ez = icmp sgt i32 %spec.select.i239, %i.ey
  br i1 %i.ez, label %.lr.ph.i251, label %.thread.i246, !llvm.loop !5436

.thread.i246:                                     ; preds = %bb.ab, %.lr.ph.i251, %.preheader.i242
  %i.fa = icmp sgt i32 %.02532.in.i244, 1
  %indvars.iv.next.i247 = add nsw i64 %indvars.iv.i243, -1
  br i1 %i.fa, label %.preheader.i242, label %fts3SegReaderSort.exit254, !llvm.loop !5437

fts3SegReaderSort.exit254:                        ; preds = %.thread.i246, %bb.aa
  %i.fb = load ptr, ptr %i.i, align 8, !tbaa !5381 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 112
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !5447
  %.not221408 = icmp eq ptr %i.fd, null
  br i1 %.not221408, label %._crit_edge412.thread, label %.lr.ph411

.lr.ph411:                                        ; preds = %fts3SegReaderSort.exit254, %fts3SegReaderSort.exit295
  %i.fe = phi ptr [ %i.ph, %fts3SegReaderSort.exit295 ], [ %i.fb, %fts3SegReaderSort.exit254 ] ; 2 uses
  %.0174410 = phi i64 [ %.4, %fts3SegReaderSort.exit295 ], [ 0, %fts3SegReaderSort.exit254 ] ; 6 uses
  %.0175409 = phi i32 [ %.4179, %fts3SegReaderSort.exit295 ], [ 0, %fts3SegReaderSort.exit254 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  store ptr null, ptr %i.e, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  store i32 0, ptr %i.f, align 4, !tbaa !27
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !5462 ; 8 uses
  %i.fh = call fastcc i32 @fts3SegReaderNextDocid(ptr noundef %0, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) ; 0 uses
  br i1 %i.en, label %.lr.ph402, label %.critedge10

.lr.ph402:                                        ; preds = %.lr.ph411, %fts3SegReaderNextDocid.exit
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %fts3SegReaderNextDocid.exit ], [ 1, %.lr.ph411 ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv456
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !5381 ; 13 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 112 ; 4 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !5447 ; 3 uses
  %.not223 = icmp eq ptr %i.fl, null
  br i1 %.not223, label %.critedge10.loopexit.split.loop.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph402
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 128 ; 4 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !5462
  %i.fo = icmp eq i64 %i.fn, %i.fg
  br i1 %i.fo, label %bb.ad, label %.critedge10.loopexit.split.loop.exit540

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr %i.fl, ptr %i.b, align 8, !tbaa !259
  %i.fp = load i8, ptr %i.l, align 1, !tbaa !5448
  %.not.i255 = icmp eq i8 %i.fp, 0
  br i1 %.not.i255, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !5401
  %.not54.i = icmp eq ptr %i.fr, null
  br i1 %.not54.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store i8 0, ptr %i.c, align 1, !tbaa !231
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !5438
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !5439
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 120
  call fastcc void @sqlite3Fts3DoclistPrev(i32 noundef 0, ptr noundef %i.ft, i32 noundef %i.fv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.c), !inline_history !5463
  %i.fx = load i8, ptr %i.c, align 1, !tbaa !231
  %.not61.i = icmp eq i8 %i.fx, 0
  %i.fy = load ptr, ptr %i.b, align 8
  %storemerge.i = select i1 %.not61.i, ptr %i.fy, ptr null
  store ptr %storemerge.i, ptr %i.fk, align 8, !tbaa !5447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %fts3SegReaderNextDocid.exit

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !5438 ; 2 uses
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !5439
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ga, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fj, i64 56 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fj, i64 40 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fj, i64 52 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.lcssa7681.i = phi ptr [ %i.fl, %bb.ag ], [ %.lcssa76.i, %bb.aj ] ; 3 uses
  %.041.i = phi i8 [ 0, %bb.ag ], [ %.1.lcssa.i, %bb.aj ] ; 2 uses
  %i.gj = load i8, ptr %.lcssa7681.i, align 1, !tbaa !231 ; 2 uses
  %i.gk = or i8 %i.gj, %.041.i
  %.not5577.i = icmp eq i8 %i.gk, 0
  br i1 %.not5577.i, label %._crit_edge.i257, label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %bb.ah, %.lr.ph.i256
  %i.gl = phi i8 [ %i.gp, %.lr.ph.i256 ], [ %i.gj, %bb.ah ]
  %i.gm = phi ptr [ %i.gn, %.lr.ph.i256 ], [ %.lcssa7681.i, %bb.ah ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 3 uses
  %i.go = and i8 %i.gl, -128                      ; 2 uses
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !231 ; 2 uses
  %i.gq = or i8 %i.gp, %i.go
  %.not55.i = icmp eq i8 %i.gq, 0
  br i1 %.not55.i, label %._crit_edge.i257, label %.lr.ph.i256, !llvm.loop !5464

._crit_edge.i257:                                 ; preds = %.lr.ph.i256, %bb.ah
  %.lcssa76.i = phi ptr [ %.lcssa7681.i, %bb.ah ], [ %i.gn, %.lr.ph.i256 ] ; 3 uses
  %.1.lcssa.i = phi i8 [ %.041.i, %bb.ah ], [ %i.go, %.lr.ph.i256 ]
  %i.gr = load ptr, ptr %i.gg, align 8, !tbaa !5390
  %i.gs = icmp eq ptr %i.gr, null                 ; 2 uses
  br i1 %i.gs, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i257
  %i.gt = load ptr, ptr %i.gh, align 8, !tbaa !5389
  %i.gu = load i32, ptr %i.gi, align 4, !tbaa !5444
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv
  %i.gx = icmp ult ptr %.lcssa76.i, %i.gw
  br i1 %i.gx, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = call fastcc i32 @fts3SegReaderIncrRead(ptr noundef nonnull %i.fj), !inline_history !5463
  %.not56.i = icmp eq i32 %i.gy, 0
  br i1 %.not56.i, label %bb.ah, label %fts3SegReaderNextDocid.exit

bb.ak:                                            ; preds = %bb.ai, %._crit_edge.i257
  %i.gz = getelementptr inbounds nuw i8, ptr %.lcssa76.i, i64 1 ; 5 uses
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !259
  %i.ha = icmp ult ptr %i.gz, %i.gf
  br i1 %i.ha, label %.lr.ph86.preheader.i, label %.critedge.i

.lr.ph86.preheader.i:                             ; preds = %bb.ak
  %.promoted97.i = ptrtoaddr ptr %i.gz to i64
  %i.hb = add i64 %i.ge, %i.gb
  %i.hc = sub i64 %i.hb, %.promoted97.i
  %scevgep.i = getelementptr i8, ptr %i.gz, i64 %i.hc
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.al, %.lr.ph86.preheader.i
  %i.hd = phi ptr [ %i.hg, %bb.al ], [ %i.gz, %.lr.ph86.preheader.i ] ; 6 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !231
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph86.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.hg, %scevgep.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph86.i, !llvm.loop !5465

.critedge.i:                                      ; preds = %bb.al, %bb.ak
  store ptr null, ptr %i.fk, align 8, !tbaa !5447
  br label %fts3SegReaderNextDocid.exit

bb.am:                                            ; preds = %.lr.ph86.i
  store ptr %i.hd, ptr %i.b, align 8
  br i1 %i.gs, label %fts3SegReaderRequire.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = add i64 %i.hh, 10
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i.i
  %i.hj = load ptr, ptr %i.gh, align 8, !tbaa !5389
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.hi, %i.hk
  %i.hm = load i32, ptr %i.gi, align 4, !tbaa !5444
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp sgt i64 %i.hl, %i.hn
  br i1 %i.ho, label %bb.ao, label %fts3SegReaderRequire.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.hp = call fastcc i32 @fts3SegReaderIncrRead(ptr noundef nonnull %i.fj), !inline_history !5466
  %i.hq = load ptr, ptr %i.gg, align 8, !tbaa !5390
  %i.hr = icmp ne ptr %i.hq, null
  %i.hs = icmp eq i32 %i.hp, 0                    ; 2 uses
  %or.cond.i.i = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond.i.i, label %bb.an, label %fts3SegReaderRequire.exit.i, !llvm.loop !5446

fts3SegReaderRequire.exit.i:                      ; preds = %bb.ao
  br i1 %i.hs, label %fts3SegReaderRequire.exit.thread.i, label %fts3SegReaderNextDocid.exit

fts3SegReaderRequire.exit.thread.i:               ; preds = %bb.an, %fts3SegReaderRequire.exit.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.ht = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.d), !inline_history !5463
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.hd, i64 %i.hu
  store ptr %i.hv, ptr %i.fk, align 8, !tbaa !5447
  %i.hw = load i8, ptr %i.l, align 1, !tbaa !5448
  %.not59.i = icmp eq i8 %i.hw, 0
  %i.hx = load i64, ptr %i.fm, align 8, !tbaa !5462
  %i.hy = load i64, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %i.hz = sub i64 0, %i.hy
  %.sink.p.i = select i1 %.not59.i, i64 %i.hy, i64 %i.hz
  %.sink.i = add i64 %.sink.p.i, %i.hx
  store i64 %.sink.i, ptr %i.fm, align 8, !tbaa !5462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  br label %fts3SegReaderNextDocid.exit

fts3SegReaderNextDocid.exit:                      ; preds = %bb.aj, %bb.af, %.critedge.i, %fts3SegReaderRequire.exit.i, %fts3SegReaderRequire.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %wide.trip.count454
  br i1 %exitcond460.not, label %.critedge10, label %.lr.ph402, !llvm.loop !5467

end_hunk_0
begin_hunk_1_@fts3PoslistPhraseMerge:bb.a
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !231
  %i.rp = sext i8 %i.ro to i32                    ; 2 uses
  %i.rq = and i32 %i.rm, -128
  %i.rr = or i32 %i.rq, %i.rp
  %.not.i88 = icmp eq i32 %i.rr, 0
  br i1 %.not.i88, label %fts3PoslistCopy.exit90, label %.lr.ph.i86, !llvm.loop !5478

fts3PoslistCopy.exit90:                           ; preds = %.lr.ph.i86, %fts3PoslistCopy.exit
  %i.rs = phi ptr [ %i.ri, %fts3PoslistCopy.exit ], [ %i.rj, %.lr.ph.i86 ]
  %.7209218 = phi ptr [ %.7.ph, %fts3PoslistCopy.exit ], [ %.7209217, %.lr.ph.i86 ] ; 3 uses
  %.0.lcssa.i89 = phi ptr [ %.6189.ph, %fts3PoslistCopy.exit ], [ %i.rn, %.lr.ph.i86 ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i89, i64 1
  store ptr %i.rt, ptr %4, align 8, !tbaa !259
  store ptr %i.rs, ptr %5, align 8, !tbaa !259
  %i.ru = load ptr, ptr %0, align 8, !tbaa !259
  %i.rv = icmp eq ptr %i.ru, %.7209218
  br i1 %i.rv, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %fts3PoslistCopy.exit90
  %i.rw = getelementptr inbounds nuw i8, ptr %.7209218, i64 1
  store i8 0, ptr %.7209218, align 1, !tbaa !231
  store ptr %i.rw, ptr %0, align 8, !tbaa !259
  br label %bb.ci

bb.ci:                                            ; preds = %fts3PoslistCopy.exit90, %sqlite3Fts3GetVarint32.exit41, %sqlite3Fts3GetVarint32.exit, %bb.ch
  %.0 = phi i32 [ 1, %bb.ch ], [ 0, %sqlite3Fts3GetVarint32.exit ], [ 0, %sqlite3Fts3GetVarint32.exit41 ], [ 0, %fts3PoslistCopy.exit90 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3EvalPhraseStart(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !5612   ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i8, ptr %i.d, align 4, !tbaa !5553
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 463
  %i.g = load i8, ptr %i.f, align 1, !tbaa !5448
  %i.h = icmp eq i8 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = add i32 %i.j, -5
  %or.cond = icmp ult i32 %i.k, -4
  br i1 %or.cond, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not111 = icmp slt i32 %i.m, 1
  br i1 %exitcond.not111, label %.critedge.thread, label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph, %bb.f
  %.04169113 = phi i32 [ %.not56, %bb.f ], [ 0, %.lr.ph ]
  %indvars.iv112 = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv112 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !5592
  %.not53 = icmp eq i32 %i.q, 0
  br i1 %.not53, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %.lr.ph114
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5774 ; 2 uses
  %.not54 = icmp eq ptr %i.s, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !5804
  %.not55 = icmp eq i32 %i.u, 0
  br i1 %.not55, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not56 = phi i32 [ %.04169113, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge_crit_edge, label %.lr.ph114, !llvm.loop !5863

..critedge_crit_edge:                             ; preds = %bb.f
  %i.v = icmp eq i32 %.not56, 0
  br i1 %i.v, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %..critedge_crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !5368
  %.not51 = icmp slt i32 %i.x, %i.z
  %spec.select57 = select i1 %.not51, i32 %i.x, i32 -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 463 ; 2 uses
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !27
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph116, label %.critedge3

.lr.ph116:                                        ; preds = %bb.g, %sqlite3Fts3MsrIncrStart.exit
  %indvars.iv79115 = phi i64 [ %indvars.iv.next80, %sqlite3Fts3MsrIncrStart.exit ], [ 0, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv79115 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !5774 ; 9 uses
  %.not52 = icmp eq ptr %i.af, null
  br i1 %.not52, label %sqlite3Fts3MsrIncrStart.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph116
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !5595 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !5588 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !5379 ; 3 uses
  %i.al = load i8, ptr %i.aa, align 1, !tbaa !5448
  %.not.i = icmp eq i8 %i.al, 0
  %i.am = select i1 %.not.i, ptr @fts3SegReaderDoclistCmp, ptr @fts3SegReaderDoclistCmpRev
  %i.an = tail call fastcc i32 @fts3SegReaderStart(ptr noundef %i.c, ptr noundef nonnull %i.af, ptr noundef readonly %i.ag, i32 noundef %i.ai), !inline_history !5864 ; 2 uses
  %.not38.i = icmp eq i32 %i.an, 0
  br i1 %.not38.i, label %.preheader.i, label %.critedge3

.preheader.i:                                     ; preds = %bb.h
  %i.ao = icmp sgt i32 %i.ak, 0
  br i1 %i.ao, label %.lr.ph.i, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.preheader.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !5450
  br label %fts3SegReaderSort.exit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !5380
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !5381 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !5389
  %.not39.i = icmp eq ptr %i.au, null
  br i1 %.not39.i, label %.thread.split.loop.exit65.i, label %fts3SegReaderTermCmp.exit.i

fts3SegReaderTermCmp.exit.i:                      ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !5434 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !5385
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.ai)
  %i.az = sext i32 %..i.i to i64
  %bcmp.i = tail call i32 @bcmp(ptr %i.ay, ptr readonly %i.ag, i64 %i.az), !inline_history !5864
  %i.ba = icmp eq i32 %bcmp.i, 0
  %.not4044.i = icmp eq i32 %i.aw, %i.ai
  %.not40.i = select i1 %i.ba, i1 %.not4044.i, i1 false
  br i1 %.not40.i, label %bb.j, label %.thread.split.loop.exit67.i

bb.j:                                             ; preds = %fts3SegReaderTermCmp.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.i, !llvm.loop !5865

.thread.split.loop.exit65.i:                      ; preds = %bb.i
  %i.bb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.split.loop.exit67.i:                      ; preds = %fts3SegReaderTermCmp.exit.i
  %i.bc = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %.thread.split.loop.exit67.i, %.thread.split.loop.exit65.i
  %.034.lcssa.i = phi i32 [ %i.bb, %.thread.split.loop.exit65.i ], [ %i.bc, %.thread.split.loop.exit67.i ], [ %i.ak, %bb.j ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  store i32 %.034.lcssa.i, ptr %i.bd, align 4, !tbaa !5450
  %i.be = icmp sgt i32 %.034.lcssa.i, 0
  br i1 %i.be, label %.lr.ph51.i, label %fts3SegReaderSort.exit.i

.lr.ph51.i:                                       ; preds = %.thread.i, %bb.k
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %bb.k ], [ 0, %.thread.i ] ; 4 uses
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !5380
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv56.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !5381
  %.val.i = load i8, ptr %i.aa, align 1, !tbaa !5448
  %i.bi = tail call fastcc i32 @fts3SegReaderFirstDocid(i8 %.val.i, ptr noundef %i.bh), !inline_history !5864 ; 2 uses
  %.not41.i = icmp eq i32 %i.bi, 0
  br i1 %.not41.i, label %bb.k, label %.critedge3

bb.k:                                             ; preds = %.lr.ph51.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 3 uses
  %i.bj = load i32, ptr %i.bd, align 4, !tbaa !5450
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next57.i, %i.bk
  br i1 %i.bl, label %.lr.ph51.i, label %._crit_edge.i, !llvm.loop !5866

._crit_edge.i:                                    ; preds = %bb.k
  %i.bm = trunc nuw nsw i64 %indvars.iv.next57.i to i32 ; 2 uses
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !5380 ; 3 uses
  %spec.select.i42.i = add nsw i32 %i.bm, -1      ; 2 uses
  %.not70.i = icmp eq i64 %indvars.iv56.i, 0
  br i1 %.not70.i, label %fts3SegReaderSort.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %._crit_edge.i
  %i.bo = add nuw nsw i64 %indvars.iv56.i, 4294967295
  %i.bp = and i64 %i.bo, 4294967295
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread.i.i, %.preheader.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.bp, %.preheader.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 3 uses
  %.02532.in.i.i = phi i32 [ %spec.select.i42.i, %.preheader.lr.ph.i.i ], [ %.02532.i.i, %.thread.i.i ] ; 3 uses
  %.02532.i.i = add nsw i32 %.02532.in.i.i, -1
  %3 = icmp slt i32 %.02532.in.i.i, %i.bm
  br i1 %3, label %.lr.ph.preheader.i.i, label %.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !5381
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %i.bq = phi ptr [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.bx, %bb.l ]
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ], [ %indvars.iv.next34.i.i, %bb.l ] ; 2 uses
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next34.i.i ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !5381
  %i.bt = tail call i32 %i.am(ptr noundef %i.bq, ptr noundef %i.bs) #58, !callees !5460, !inline_history !5867
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv33.i.i ; 2 uses
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !5381
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !5381 ; 2 uses
  store ptr %i.bx, ptr %i.br, align 8, !tbaa !5381
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !5381
  %i.by = trunc nuw i64 %indvars.iv.next34.i.i to i32
  %i.bz = icmp sgt i32 %spec.select.i42.i, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %.thread.i.i, !llvm.loop !5436

.thread.i.i:                                      ; preds = %bb.l, %.lr.ph.i.i, %.preheader.i.i
  %i.ca = icmp sgt i32 %.02532.in.i.i, 1
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.ca, label %.preheader.i.i, label %fts3SegReaderSort.exit.i, !llvm.loop !5437

fts3SegReaderSort.exit.i:                         ; preds = %.thread.i.i, %._crit_edge.i, %.thread.i, %.thread.thread.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 %spec.select57, ptr %i.cb, align 8, !tbaa !5868
  br label %sqlite3Fts3MsrIncrStart.exit

sqlite3Fts3MsrIncrStart.exit:                     ; preds = %fts3SegReaderSort.exit.i, %.lr.ph116
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79115, 1 ; 2 uses
  %i.cc = load i32, ptr %i.l, align 8, !tbaa !27
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next80, %i.cd
  br i1 %i.ce, label %.lr.ph116, label %.critedge3, !llvm.loop !5869

.critedge.thread:                                 ; preds = %bb.e, %.lr.ph114, %.lr.ph, %bb.a, %bb.b, %bb.c, %..critedge_crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 84
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.critedge.thread
  %indvars.iv.i58 = phi i64 [ 0, %.critedge.thread ], [ %indvars.iv.next.i60, %bb.r ] ; 4 uses
  %i.ci = load i32, ptr %i.cf, align 8, !tbaa !27
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.i58, %i.cj
  br i1 %i.ck, label %bb.n, label %.critedge3

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %indvars.iv.i58 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !5774
  %.not.i59 = icmp eq ptr %i.cn, null
  br i1 %.not.i59, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr null, ptr %i.b, align 8, !tbaa !259
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cp = call fastcc i32 @fts3TermSelect(ptr noundef %i.c, ptr noundef nonnull %i.cl, i32 noundef %i.co, ptr noundef %i.a, ptr noundef %i.b), !inline_history !5870 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !27
  %i.ct = trunc nuw nsw i64 %indvars.iv.i58 to i32
  %i.cu = tail call fastcc i32 @fts3EvalPhraseMergeToken(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef %i.ct, ptr noundef %i.cr, i32 noundef %i.cs), !inline_history !5870
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i = phi i32 [ %i.cu, %bb.p ], [ %i.cp, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.2.i = phi i32 [ %.1.i, %bb.q ], [ 0, %bb.n ]  ; 2 uses
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i58, 1
  %i.cv = icmp eq i32 %.2.i, 0
  br i1 %i.cv, label %bb.m, label %.critedge3, !llvm.loop !5871

.critedge3:                                       ; preds = %bb.h, %sqlite3Fts3MsrIncrStart.exit, %.lr.ph51.i, %bb.r, %bb.m, %bb.g
  %.sink = phi i32 [ 1, %.lr.ph51.i ], [ 0, %bb.r ], [ 1, %bb.g ], [ 0, %bb.m ], [ 1, %sqlite3Fts3MsrIncrStart.exit ], [ 1, %bb.h ]
  %.2 = phi i32 [ %i.bi, %.lr.ph51.i ], [ %.2.i, %bb.r ], [ 0, %bb.g ], [ 0, %bb.m ], [ 0, %sqlite3Fts3MsrIncrStart.exit ], [ %i.an, %bb.h ]
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %.sink, ptr %i.cw, align 8, !tbaa !27
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts3EvalNextRow(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca [4 x %struct.TokenDoclist], align 16 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !27
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %common.ret360

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !5632
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %common.ret360

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !5553  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 1, ptr %i.m, align 1, !tbaa !5872
  %i.n = load i32, ptr %1, align 8, !tbaa !5570
  switch i32 %i.n, label %bb.aj [
    i32 1, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.t
    i32 2, label %bb.ad
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !5607 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !5605 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 50
  %i.t = load i8, ptr %i.s, align 2, !tbaa !5838
  %.not175 = icmp eq i8 %i.t, 0
  br i1 %.not175, label %bb.f, label %bb.e

common.ret360:                                    ; preds = %bb.g, %.critedge11, %fts3EvalPhraseNext.exit, %.critedge4, %bb.m, %bb.ac, %bb.ab, %bb.b, %bb.a, %bb.e
  ret void

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @fts3EvalNextRow(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef %2)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !5634
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !5634
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !5632
  store i8 %i.y, ptr %i.h, align 8, !tbaa !5632
  br label %common.ret360

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 50
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !5838
  %.not176 = icmp eq i8 %i.aa, 0
  tail call fastcc void @fts3EvalNextRow(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %2)
  br i1 %.not176, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !5634
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !5634
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !5632
  store i8 %i.af, ptr %i.h, align 8, !tbaa !5632
  br label %common.ret360

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @fts3EvalNextRow(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !5632
  %.not177217 = icmp eq i8 %i.ah, 0
  br i1 %.not177217, label %.lr.ph218, label %.critedge.thread

.lr.ph218:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.not179 = icmp eq i8 %i.l, 0
  br label %bb.i

.critedge.thread:                                 ; preds = %bb.l, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !5634
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.am, ptr %i.an, align 8, !tbaa !5634
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph218, %bb.l
  %i.ao = load i8, ptr %i.ai, align 8, !tbaa !5632 ; 2 uses
  %.not178 = icmp eq i8 %i.ao, 0
  br i1 %.not178, label %bb.j, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.i
  %.pre240 = load i64, ptr %i.aj, align 8, !tbaa !5634
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %2, align 4, !tbaa !27
  %i.aq = icmp eq i32 %i.ap, 0
  %.pre241 = load i64, ptr %i.aj, align 8, !tbaa !5634 ; 4 uses
  br i1 %i.aq, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !5634 ; 2 uses
  %.not181 = icmp eq i64 %.pre241, %i.ar
  br i1 %.not181, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not193 = icmp sgt i64 %.pre241, %i.ar
  %i.as = xor i1 %.not179, %.not193
  %. = select i1 %i.as, ptr %i.p, ptr %i.r
  tail call fastcc void @fts3EvalNextRow(ptr noundef nonnull %0, ptr noundef nonnull %., ptr noundef %2)
  %i.at = load i8, ptr %i.ag, align 8, !tbaa !5632
  %.not177 = icmp eq i8 %i.at, 0
  br i1 %.not177, label %bb.i, label %.critedge.thread

.loopexit:                                        ; preds = %bb.j, %bb.k, %..critedge_crit_edge
  %i.au = phi i64 [ %.pre240, %..critedge_crit_edge ], [ %.pre241, %bb.k ], [ %.pre241, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.au, ptr %i.av, align 8, !tbaa !5634
end_hunk_1
