Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_petite?download=true
inline.NumInlined: 26
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@petite_inflate2x_1to9:bb.a
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22 ; 3 uses
  %i.bc = sub i32 %i.bb, %i.av                    ; 2 uses
  %.not788.1 = icmp eq i32 %i.az, %i.bc
  br i1 %.not788.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph1270.1
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph1270.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1271.loopexit.unr-lcssa, label %.lr.ph1270, !llvm.loop !10

._crit_edge1271.loopexit.unr-lcssa:               ; preds = %bb.l
  %lcmp.mod1870.not = icmp eq i64 %xtraiter1869, 0
  br i1 %lcmp.mod1870.not, label %._crit_edge1271, label %.lr.ph1270.epil.preheader

.lr.ph1270.epil.preheader:                        ; preds = %._crit_edge1271.loopexit.unr-lcssa, %.lr.ph1270.preheader
  %.epil.init = phi i32 [ %.pre1516, %.lr.ph1270.preheader ], [ %i.bb, %._crit_edge1271.loopexit.unr-lcssa ]
  %indvars.iv1459.epil.init = phi i64 [ 0, %.lr.ph1270.preheader ], [ %indvars.iv.next1460.1, %._crit_edge1271.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1871 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod1871)
  %i.bd = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1459.epil.init
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1459.epil.init
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !22
  %i.bj = sub i32 %i.bi, %.epil.init              ; 2 uses
  %.not788.epil = icmp eq i32 %i.bf, %i.bj
  br i1 %.not788.epil, label %._crit_edge1271, label %bb.m

bb.m:                                             ; preds = %.lr.ph1270.epil.preheader
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !24
  br label %._crit_edge1271

._crit_edge1271:                                  ; preds = %._crit_edge1271.loopexit.unr-lcssa, %bb.m, %.lr.ph1270.epil.preheader, %.preheader1080
  %.not774 = icmp eq i32 %.06881252, 0
  br i1 %.not774, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %._crit_edge1271
  %i.bk = add i32 %6, 5                           ; 2 uses
  %i.bl = add i32 %i.bk, %5                       ; 2 uses
  %i.bm = zext i32 %.06811253 to i64              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm ; 2 uses
  br i1 %i.d, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.n
  %.not7761304 = icmp ult i32 %.06811253, %1
  br i1 %.not7761304, label %.critedge, label %.lr.ph1309

.lr.ph1309:                                       ; preds = %.preheader
  %.not1342 = icmp eq i32 %.06631255.fr, 0
  %i.bo = add i32 %4, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %i.bp ; 2 uses
  br i1 %.not1342, label %.lr.ph1309.split, label %.lr.ph1309.split.us.preheader

.lr.ph1309.split.us.preheader:                    ; preds = %.lr.ph1309
  %i.br = sub nsw i64 4, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.br  ; 2 uses
  %scevgep1465 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %.not776.us = icmp ult ptr %scevgep1465, %0
  br label %.lr.ph1309.split.us

.lr.ph1309.split.us:                              ; preds = %.lr.ph1309.split.us.preheader, %.critedge7.us
  %.06131308.us = phi ptr [ %i.bs, %.critedge7.us ], [ %i.bn, %.lr.ph1309.split.us.preheader ] ; 2 uses
  %.06171307.us = phi i32 [ %.16181275.us, %.critedge7.us ], [ 0, %.lr.ph1309.split.us.preheader ]
  %.06211306.us = phi i32 [ %.16221274.us, %.critedge7.us ], [ %i.bl, %.lr.ph1309.split.us.preheader ]
  %.16891305.us = phi i32 [ %.26901273.us1312, %.critedge7.us ], [ %.06881252, %.lr.ph1309.split.us.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.06131308.us, i64 4 ; 2 uses
  %.not777.us.not = icmp ugt ptr %i.bs, %i.o
  br i1 %.not777.us.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph1309.split.us
  %.0613.val891.us = load i32, ptr %.06131308.us, align 1 ; 2 uses
  %.not778.us = icmp eq i32 %.0613.val891.us, 0
  br i1 %.not778.us, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = sext i32 %.0613.val891.us to i64        ; 3 uses
  %.not7791272.us = icmp slt i64 %i.bt, %i.a
  br i1 %.not7791272.us, label %.critedge, label %.lr.ph1278.us.preheader

.lr.ph1278.us.preheader:                          ; preds = %bb.p
  %i.bu = getelementptr inbounds i8, ptr %i.c, i64 %i.bt
  %scevgep1464 = getelementptr i8, ptr %scevgep, i64 %i.bt
  %.not779.us1318 = icmp ult ptr %scevgep1464, %0
  br label %.lr.ph1278.us

.lr.ph1278.us:                                    ; preds = %.lr.ph1278.us.preheader, %bb.u
  %.06121276.us1311 = phi ptr [ %i.bv, %bb.u ], [ %i.bu, %.lr.ph1278.us.preheader ] ; 2 uses
  %.16181275.us = phi i32 [ %.3620.us, %bb.u ], [ %.06171307.us, %.lr.ph1278.us.preheader ] ; 4 uses
  %.16221274.us = phi i32 [ %.2623.us, %bb.u ], [ %.06211306.us, %.lr.ph1278.us.preheader ] ; 5 uses
  %.26901273.us1312 = phi i32 [ %i.ch, %bb.u ], [ %.16891305.us, %.lr.ph1278.us.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.06121276.us1311, i64 4 ; 2 uses
  %.not780.us1313.not = icmp ugt ptr %i.bv, %i.o
  br i1 %.not780.us1313.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %.lr.ph1278.us
  %.0612.val.us1314 = load i32, ptr %.06121276.us1311, align 1 ; 2 uses
  %.not781.us1315 = icmp eq i32 %.0612.val.us1314, 0
  br i1 %.not781.us1315, label %.critedge7.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = icmp sgt i32 %.0612.val.us1314, -1
  br i1 %i.bw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %.16181275.us, -1
  %i.by = icmp slt i32 %.16181275.us, 1
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = add i32 %.16221274.us, 5                ; 2 uses
  %i.ca = and i32 %i.bz, 7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.2623.us = phi i32 [ %i.bz, %bb.t ], [ %.16221274.us, %bb.s ], [ %.16221274.us, %bb.r ] ; 2 uses
  %.3620.us = phi i32 [ %i.ca, %bb.t ], [ %i.bx, %bb.s ], [ %.16181275.us, %bb.r ]
  %.0611.us = phi i32 [ %.16221274.us, %bb.t ], [ -1074785481, %bb.s ], [ -1074785481, %bb.r ] ; 2 uses
  %i.cb = load i32, ptr %i.bq, align 4, !tbaa !22
  %i.cc = add i32 %i.cb, %5
  %i.cd = icmp ult i32 %i.cc, %.0611.us
  %i.ce = sext i1 %i.cd to i32
  %i.cf = icmp ult i32 %.0611.us, %.2623.us
  %i.cg = sext i1 %i.cf to i32
  %spec.select.us1316 = add i32 %.26901273.us1312, %i.cg
  %.4692.us1317 = add i32 %spec.select.us1316, %i.ce ; 2 uses
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %.4692.us1317, i32 %.4692.us1317, i32 29)
  br i1 %.not779.us1318, label %.critedge, label %.lr.ph1278.us, !llvm.loop !11

.critedge7.us:                                    ; preds = %bb.q
  br i1 %.not776.us, label %.critedge, label %.lr.ph1309.split.us

.lr.ph1309.split:                                 ; preds = %.lr.ph1309
  %i.ci = icmp ugt i32 %i.bl, -1074785481
  %i.cj = sext i1 %i.ci to i32
  %i.ck = sub nsw i64 4, %i.a
  %scevgep1466 = getelementptr i8, ptr %0, i64 %i.ck ; 2 uses
  %scevgep1468 = getelementptr i8, ptr %scevgep1466, i64 %i.bm
  %.not776 = icmp ult ptr %scevgep1468, %0
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph1309.split, %.critedge7
  %.06131308 = phi ptr [ %i.bn, %.lr.ph1309.split ], [ %i.cl, %.critedge7 ] ; 2 uses
  %.16891305 = phi i32 [ %.06881252, %.lr.ph1309.split ], [ %.26901273.us, %.critedge7 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06131308, i64 4 ; 2 uses
  %.not777.not = icmp ugt ptr %i.cl, %i.o
  br i1 %.not777.not, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.0613.val891 = load i32, ptr %.06131308, align 1 ; 2 uses
  %.not778 = icmp eq i32 %.0613.val891, 0
  br i1 %.not778, label %.critedge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = sext i32 %.0613.val891 to i64           ; 3 uses
  %.not7791272 = icmp slt i64 %i.cm, %i.a
  br i1 %.not7791272, label %.critedge, label %.lr.ph1278.preheader

.lr.ph1278.preheader:                             ; preds = %bb.x
  %i.cn = getelementptr inbounds i8, ptr %i.c, i64 %i.cm
  %scevgep1467 = getelementptr i8, ptr %scevgep1466, i64 %i.cm
  %.not779.us = icmp ult ptr %scevgep1467, %0
  br label %.lr.ph1278

.lr.ph1278:                                       ; preds = %.lr.ph1278.preheader, %bb.z
  %.06121276.us = phi ptr [ %i.co, %bb.z ], [ %i.cn, %.lr.ph1278.preheader ] ; 2 uses
  %.26901273.us = phi i32 [ %i.ct, %bb.z ], [ %.16891305, %.lr.ph1278.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06121276.us, i64 4 ; 2 uses
  %.not780.us.not = icmp ugt ptr %i.co, %i.o
  br i1 %.not780.us.not, label %.critedge, label %bb.y

bb.y:                                             ; preds = %.lr.ph1278
  %.0612.val.us = load i32, ptr %.06121276.us, align 1
  %.not781.us = icmp eq i32 %.0612.val.us, 0
  br i1 %.not781.us, label %.critedge7, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load i32, ptr %i.bq, align 4, !tbaa !22
  %i.cq = add i32 %i.cp, %5
  %i.cr = icmp ult i32 %i.cq, -1074785481
  %i.cs = sext i1 %i.cr to i32
  %spec.select.us = add i32 %.26901273.us, %i.cj
  %.4692.us = add i32 %spec.select.us, %i.cs      ; 2 uses
  %i.ct = tail call i32 @llvm.fshl.i32(i32 %.4692.us, i32 %.4692.us, i32 29)
  br i1 %.not779.us, label %.critedge, label %.lr.ph1278, !llvm.loop !11

.critedge7:                                       ; preds = %bb.y
  br i1 %.not776, label %.critedge, label %bb.v

.critedge.thread:                                 ; preds = %bb.o, %bb.w, %bb.n
  %.6694992 = phi i32 [ %.06881252, %bb.n ], [ %.16891305, %bb.w ], [ %.16891305.us, %bb.o ]
  %i.cu = add i32 %.6694992, %i.bk                ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i32 noundef %i.cu) #6
  br label %bb.aa

.critedge:                                        ; preds = %bb.p, %.lr.ph1309.split.us, %.critedge7.us, %bb.u, %.lr.ph1278.us, %bb.x, %bb.v, %.critedge7, %.lr.ph1278, %bb.z, %.preheader
  %i.cv = load i32, ptr %.06551257, align 4, !tbaa !22 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.cv) #6
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.thread, %.critedge, %._crit_edge1271
  %.8 = phi i32 [ 0, %._crit_edge1271 ], [ %i.cu, %.critedge.thread ], [ %i.cv, %.critedge ]
  %wide.trip.count1490 = zext nneg i32 %.06681254 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.06551257, i64 8
  store i32 0, ptr %i.cw, align 4, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %.06551257, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !23 ; 3 uses
  %i.cz = add i32 %i.cy, -1
  %or.cond846.not.peel = icmp uge i32 %i.cz, %2
  %.not787.peel = icmp ugt i32 %i.cy, %2
  %or.cond = or i1 %or.cond846.not.peel, %.not787.peel
  br i1 %or.cond, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = zext i32 %i.cy to i64
  %i.db = load i32, ptr %.06551257, align 4, !tbaa !22
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.dd, i64 %i.da, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %exitcond1491.peel.not = icmp eq i32 %.06681254, 1
  br i1 %exitcond1491.peel.not, label %.lr.ph1333.preheader, label %.lr.ph1329.peel.next

.lr.ph1329.peel.next:                             ; preds = %bb.ac, %bb.af
  %indvars.iv1469 = phi i64 [ %indvars.iv.next1470, %bb.af ], [ 1, %bb.ac ] ; 3 uses
  %i.de = getelementptr [36 x i8], ptr %.06551257, i64 %indvars.iv1469 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !26
  %i.dh = getelementptr i8, ptr %i.de, i64 -24
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !23
  %i.dj = add i32 %i.di, %i.dg                    ; 2 uses
  %i.dk = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1469 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !26
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23 ; 2 uses
  %i.do = add i32 %i.dn, -1
  %or.cond846.not = icmp ult i32 %i.do, %2
  br i1 %or.cond846.not, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph1329.peel.next
  %i.dp = zext i32 %i.dj to i64                   ; 2 uses
  %i.dq = zext i32 %i.dn to i64                   ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, %i.dp
  %.not787 = icmp samesign ugt i64 %i.dr, %i.n
  br i1 %.not787, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %i.dp
  %i.dt = load i32, ptr %i.dk, align 4, !tbaa !22
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.du
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dv, i64 %i.dq, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph1329.peel.next, %bb.ad, %bb.ae
  %indvars.iv.next1470 = add nuw nsw i64 %indvars.iv1469, 1 ; 2 uses
  %exitcond1491.not = icmp eq i64 %indvars.iv.next1470, %wide.trip.count1490
  br i1 %exitcond1491.not, label %.lr.ph1333.preheader, label %.lr.ph1329.peel.next, !llvm.loop !12

.lr.ph1333.preheader:                             ; preds = %bb.af, %bb.ac
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  %wide.trip.count1514 = zext nneg i32 %.06681254 to i64
  br label %.lr.ph1333

.lr.ph1333:                                       ; preds = %.lr.ph1333.preheader, %.lr.ph1333
  %indvars.iv1493 = phi i64 [ 0, %.lr.ph1333.preheader ], [ %indvars.iv.next1494, %.lr.ph1333 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1493 ; 4 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !23
  %i.ee = trunc nuw nsw i64 %indvars.iv1493 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.ee, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ed) #6
  %indvars.iv.next1494 = add nuw nsw i64 %indvars.iv1493, 1 ; 2 uses
  %exitcond1515.not = icmp eq i64 %indvars.iv.next1494, %wide.trip.count1514
  br i1 %exitcond1515.not, label %._crit_edge1334, label %.lr.ph1333, !llvm.loop !13

._crit_edge1334:                                  ; preds = %.lr.ph1333
  %i.ef = tail call i32 @cli_rebuildpe(ptr noundef %0, ptr noundef nonnull %.06551257, i32 noundef %.06681254, i32 noundef %5, i32 noundef %.8, i32 noundef %9, i32 noundef %10, i32 noundef %7) #6
  %.not782 = icmp eq i32 %i.ef, 0
  br i1 %.not782, label %.thread1042.sink.split.sink.split, label %.thread1042.sink.split

bb.ag:                                            ; preds = %bb.e
  %.not790 = icmp sgt i32 %.2700.val, -1
  br i1 %.not790, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.p, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %.27001250, i64 12 ; 2 uses
  %.not833.not = icmp ugt ptr %i.eg, %i.o
  br i1 %.not833.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not834 = icmp eq ptr %.06551257, null
  br i1 %.not834, label %.thread1042, label %.thread1042.sink.split

bb.ak:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %.27001250, i64 8
  %.val890 = load i32, ptr %i.eh, align 1         ; 2 uses
  %i.ei = add nsw i32 %.val890, 4
  %.val889 = load i32, ptr %i.z, align 1
  %i.ej = sext i32 %.val889 to i64
  %i.ek = shl i32 %.2700.val, 2                   ; 3 uses
  %i.el = add i32 %i.ek, -4
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = sub nsw i64 %i.ej, %i.em                ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %i.c, i64 %i.en
  %i.ep = sext i32 %.val890 to i64
  %i.eq = sub nsw i64 %i.ep, %i.em                ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %i.c, i64 %i.eq
  %i.es = add i32 %i.ek, -1
  %or.cond849 = icmp uge i32 %i.es, %2
  %.not837 = icmp slt i64 %i.en, %i.a
  %or.cond1068 = select i1 %or.cond849, i1 true, i1 %.not837
  br i1 %or.cond1068, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = zext i32 %i.ek to i64                   ; 3 uses
  %i.eu = sub nsw i64 %i.et, %i.a
  %i.ev = add nsw i64 %i.eu, %i.en                ; 2 uses
  %.not838 = icmp sgt i64 %i.ev, %i.n
  %i.ew = icmp slt i64 %i.ev, 1
  %or.cond850.not1071 = or i1 %.not838, %i.ew
  %.not839 = icmp slt i64 %i.eq, %i.a
  %or.cond851 = select i1 %or.cond850.not1071, i1 true, i1 %.not839
  br i1 %or.cond851, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = add nsw i64 %i.q, %i.et
  %i.ey = add nsw i64 %i.ex, %i.eq
  %or.cond1069 = icmp ult i64 %i.ey, %i.n
  br i1 %or.cond1069, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.not841 = icmp eq ptr %.06551257, null
  br i1 %.not841, label %.thread1042, label %.thread1042.sink.split

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.eo, i64 %i.et, i1 false)
  br label %.thread1022

bb.ap:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %.27001250, i64 12
  %.not792 = icmp ule ptr %i.ez, %i.o
  %or.cond1335 = select i1 %i.r, i1 %.not792, i1 false
  br i1 %or.cond1335, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not793 = icmp eq ptr %.06551257, null
  br i1 %.not793, label %.thread1042, label %.thread1042.sink.split

bb.ar:                                            ; preds = %bb.ap
  %.val887 = load i32, ptr %i.z, align 1          ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.27001250, i64 8
  %.val886 = load i32, ptr %i.fa, align 1         ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.27001250, i64 16 ; 2 uses
  %i.fc = icmp sgt i32 %.06681254, 95
  br i1 %i.fc, label %.thread1042.sink.split.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = add nsw i32 %.06681254, 1               ; 4 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i64 %i.fe, 36
  %i.fg = tail call ptr @cli_realloc(ptr noundef %.06551257, i64 noundef %i.ff) #6 ; 20 uses
  %.not794 = icmp eq ptr %i.fg, null
  br i1 %.not794, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.not795 = icmp eq ptr %.06551257, null
  br i1 %.not795, label %.thread1042, label %.thread1042.sink.split

bb.au:                                            ; preds = %bb.as
  %i.fh = sext i32 %.06681254 to i64
  %i.fi = getelementptr inbounds [36 x i8], ptr %i.fg, i64 %i.fh ; 6 uses
  store i32 %.val886, ptr %i.fi, align 4, !tbaa !22
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12 ; 5 uses
  store i32 %.val887, ptr %i.fj, align 4, !tbaa !23
  %i.fk = sub i32 %.06951251, %.val886            ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  %spec.select = select i1 %i.fl, i32 %i.fk, i32 %.val887
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %spec.select, ptr %i.fm, align 4, !tbaa !24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fn, align 4, !tbaa !26
  %.not796 = icmp eq i32 %.val887, 0
  br i1 %.not796, label %.thread1022, label %bb.av

bb.av:                                            ; preds = %bb.au
end_hunk_0
