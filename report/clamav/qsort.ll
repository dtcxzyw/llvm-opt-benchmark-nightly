inline.NumInlined: 24
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @cli_qsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %2                            ; 15 uses
  %i.b = icmp ne i64 %2, 8
  %i.c = zext i1 %i.b to i32                      ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or i64 %2, %i.d
  %i.f = and i64 %i.e, 7
  %or.cond541 = icmp eq i64 %i.f, 0               ; 3 uses
  %i.g = select i1 %or.cond541, i32 %i.c, i32 2   ; 2 uses
  %i.h = icmp ult i64 %1, 7
  br i1 %i.h, label %.preheader480, label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.a
  %.not387 = icmp eq ptr %3, null                 ; 7 uses
  %sext471 = shl i64 %2, 32
  %i.i = ashr exact i64 %sext471, 32              ; 51 uses
  %i.j = lshr i64 %i.i, 3                         ; 35 uses
  %i.k = and i64 %i.i, -8
  %.not = icmp eq i64 %i.j, 0
  %i.l = select i1 %.not, i64 8, i64 %i.k         ; 2 uses
  %i.m = tail call i64 @llvm.smax.i64(i64 %i.i, i64 1) ; 2 uses
  %smin972 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 1) ; 2 uses
  %i.n = tail call i64 @llvm.smax.i64(i64 %i.i, i64 1) ; 38 uses
  %i.o = and i64 %i.i, -8
  %.not1548 = icmp eq i64 %i.j, 0
  %i.p = select i1 %.not1548, i64 8, i64 %i.o     ; 2 uses
  %i.q = and i64 %i.i, -8                         ; 2 uses
  %.not1549 = icmp eq i64 %i.j, 0
  %i.r = select i1 %.not1549, i64 8, i64 %i.q     ; 2 uses
  %.not1550 = icmp eq i64 %i.j, 0
  %i.s = select i1 %.not1550, i64 8, i64 %i.q     ; 2 uses
  %min.iters.check1186 = icmp slt i64 %i.i, 4
  %min.iters.check1188 = icmp slt i64 %i.i, 32
  %i.t = and i64 %i.n, 28
  %n.vec1190 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.u = sub nsw i64 %i.i, %n.vec1190
  %cmp.n1201 = icmp eq i64 %i.n, %n.vec1190
  %min.epilog.iters.check1209 = icmp eq i64 %i.t, 0
  %n.vec1211 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.v = sub nsw i64 %i.i, %n.vec1211
  %cmp.n1220 = icmp eq i64 %i.n, %n.vec1211
  %min.iters.check1162 = icmp ult i64 %i.i, 32
  %n.vec1164 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.w = shl nuw i64 %n.vec1164, 3                ; 2 uses
  %4 = and i64 %i.j, 3
  %cmp.n1175 = icmp eq i64 %i.j, %n.vec1164
  %min.iters.check1116 = icmp slt i64 %i.i, 4
  %min.iters.check1118 = icmp slt i64 %i.i, 32
  %i.x = and i64 %i.n, 28
  %n.vec1120 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.y = sub nsw i64 %i.i, %n.vec1120
  %cmp.n1131 = icmp eq i64 %i.n, %n.vec1120
  %min.epilog.iters.check1139 = icmp eq i64 %i.x, 0
  %n.vec1141 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.z = sub nsw i64 %i.i, %n.vec1141
  %cmp.n1150 = icmp eq i64 %i.n, %n.vec1141
  %min.iters.check1092 = icmp ult i64 %i.i, 32
  %n.vec1094 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.aa = shl nuw i64 %n.vec1094, 3               ; 2 uses
  %5 = and i64 %i.j, 3
  %cmp.n1105 = icmp eq i64 %i.j, %n.vec1094
  %min.iters.check1044 = icmp slt i64 %i.i, 4
  %min.iters.check1046 = icmp slt i64 %i.i, 32
  %i.ab = and i64 %i.n, 28
  %n.vec1048 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.ac = sub nsw i64 %i.i, %n.vec1048
  %cmp.n1059 = icmp eq i64 %i.n, %n.vec1048
  %min.epilog.iters.check1067 = icmp eq i64 %i.ab, 0
  %n.vec1069 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.ad = sub nsw i64 %i.i, %n.vec1069
  %cmp.n1078 = icmp eq i64 %i.n, %n.vec1069
  %min.iters.check1020 = icmp ult i64 %i.i, 32
  %n.vec1022 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.ae = shl nuw i64 %n.vec1022, 3               ; 2 uses
  %6 = and i64 %i.j, 3
  %cmp.n1033 = icmp eq i64 %i.j, %n.vec1022
  %min.iters.check974 = icmp slt i64 %i.i, 4
  %min.iters.check976 = icmp slt i64 %i.i, 32
  %i.af = and i64 %i.n, 28
  %n.vec978 = and i64 %i.n, 9223372036854775776   ; 6 uses
  %i.ag = sub nsw i64 %i.i, %n.vec978
  %cmp.n989 = icmp eq i64 %i.n, %n.vec978
  %min.epilog.iters.check997 = icmp eq i64 %i.af, 0
  %n.vec999 = and i64 %i.n, 9223372036854775804   ; 5 uses
  %i.ah = sub nsw i64 %i.i, %n.vec999
  %cmp.n1008 = icmp eq i64 %i.n, %n.vec999
  %min.iters.check949 = icmp ult i64 %i.i, 48
  %n.vec951 = and i64 %i.j, 2305843009213693948   ; 3 uses
  %i.ai = shl nuw i64 %n.vec951, 3                ; 2 uses
  %7 = and i64 %i.j, 3
  %cmp.n962 = icmp eq i64 %i.j, %n.vec951
  br label %bb.b

.preheader480:                                    ; preds = %bb.bq, %bb.a
  %.0336.lcssa = phi i64 [ %1, %bb.a ], [ %i.abk, %bb.bq ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.fr723, %bb.bq ] ; 26 uses
  %or.cond.lcssa = phi i1 [ %or.cond541, %bb.a ], [ %or.cond, %bb.bq ]
  %.lcssa = phi i32 [ %i.g, %bb.a ], [ %i.abo, %bb.bq ]
  %i.aj = mul i64 %.0336.lcssa, %2                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.aj ; 6 uses
  %.0351582 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %2 ; 6 uses
  %i.al = icmp samesign ult i64 %2, %i.aj
  br i1 %i.al, label %.preheader479.lr.ph, label %.loopexit

.preheader479.lr.ph:                              ; preds = %.preheader480
  %.not395 = icmp eq ptr %3, null                 ; 3 uses
  %i.am = icmp eq i32 %.lcssa, 0
  %sext476 = shl i64 %2, 32
  %i.an = ashr exact i64 %sext476, 32             ; 20 uses
  %i.ao = lshr i64 %i.an, 3                       ; 11 uses
  br i1 %i.am, label %.preheader479.lr.ph.split.us, label %.preheader479.lr.ph.split

.preheader479.lr.ph.split.us:                     ; preds = %.preheader479.lr.ph
  br i1 %.not395, label %.preheader479.us.us, label %.preheader479.us

.preheader479.us.us:                              ; preds = %.preheader479.lr.ph.split.us, %.critedge.us.us
  %.0351583.us.us = phi ptr [ %.0351.us.us, %.critedge.us.us ], [ %.0351582, %.preheader479.lr.ph.split.us ] ; 4 uses
  %i.ap = icmp ugt ptr %.0351583.us.us, %.0.lcssa
  br i1 %i.ap, label %.lr.ph577.us.us.preheader, label %.critedge.us.us

.lr.ph577.us.us.preheader:                        ; preds = %.preheader479.us.us
  %.pre685 = load i32, ptr %.0351583.us.us, align 4, !tbaa !8
  br label %.lr.ph577.us.us

.critedge.us.us:                                  ; preds = %swapfunc.exit.us.us.us.us, %.lr.ph577.us.us, %.preheader479.us.us
  %.0351.us.us = getelementptr inbounds nuw i8, ptr %.0351583.us.us, i64 %2 ; 2 uses
  %i.aq = icmp ult ptr %.0351.us.us, %i.ak
  br i1 %i.aq, label %.preheader479.us.us, label %.loopexit

.lr.ph577.us.us:                                  ; preds = %.lr.ph577.us.us.preheader, %swapfunc.exit.us.us.us.us
  %i.ar = phi i32 [ %i.az, %swapfunc.exit.us.us.us.us ], [ %.pre685, %.lr.ph577.us.us.preheader ]
  %.0348576.us.us.us.us = phi ptr [ %i.as, %swapfunc.exit.us.us.us.us ], [ %.0351583.us.us, %.lr.ph577.us.us.preheader ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.0348576.us.us.us.us, i64 %i.a ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = sub i32 %i.at, %i.ar
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %swapfunc.exit.us.us.us.us, label %.critedge.us.us

swapfunc.exit.us.us.us.us:                        ; preds = %.lr.ph577.us.us
  %i.aw = load i64, ptr %.0348576.us.us.us.us, align 8, !tbaa !9 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !9
  store i64 %i.ax, ptr %.0348576.us.us.us.us, align 8, !tbaa !9
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !9
  %i.ay = icmp ugt ptr %i.as, %.0.lcssa
  %i.az = trunc i64 %i.aw to i32
  br i1 %i.ay, label %.lr.ph577.us.us, label %.critedge.us.us

.preheader479.us:                                 ; preds = %.preheader479.lr.ph.split.us, %.critedge.us
  %.0351583.us = phi ptr [ %.0351.us, %.critedge.us ], [ %.0351582, %.preheader479.lr.ph.split.us ] ; 3 uses
  %i.ba = icmp ugt ptr %.0351583.us, %.0.lcssa
  br i1 %i.ba, label %.lr.ph577.us, label %.critedge.us

.critedge.us:                                     ; preds = %swapfunc.exit.us.us590, %.lr.ph577.us, %.preheader479.us
  %.0351.us = getelementptr inbounds nuw i8, ptr %.0351583.us, i64 %2 ; 2 uses
  %i.bb = icmp ult ptr %.0351.us, %i.ak
  br i1 %i.bb, label %.preheader479.us, label %.loopexit

.lr.ph577.us:                                     ; preds = %.preheader479.us, %swapfunc.exit.us.us590
  %.0348576.us.us589 = phi ptr [ %i.bc, %swapfunc.exit.us.us590 ], [ %.0351583.us, %.preheader479.us ] ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.0348576.us.us589, i64 %i.a ; 5 uses
  %i.bd = tail call i32 %3(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0348576.us.us589) #2
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %swapfunc.exit.us.us590, label %.critedge.us

swapfunc.exit.us.us590:                           ; preds = %.lr.ph577.us
  %i.bf = load i64, ptr %.0348576.us.us589, align 8, !tbaa !9
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !9
  store i64 %i.bg, ptr %.0348576.us.us589, align 8, !tbaa !9
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !9
  %i.bh = icmp ugt ptr %i.bc, %.0.lcssa
  br i1 %i.bh, label %.lr.ph577.us, label %.critedge.us

.preheader479.lr.ph.split:                        ; preds = %.preheader479.lr.ph
  br i1 %or.cond.lcssa, label %.preheader479.lr.ph.split.split.us, label %.preheader479.lr.ph.split.split

.preheader479.lr.ph.split.split.us:               ; preds = %.preheader479.lr.ph.split
  %i.bi = and i64 %i.an, -8                       ; 2 uses
  %i.bj = add i64 %2, %i.bi
  %i.bk = add i64 %i.bj, 8                        ; 2 uses
  %.not1564 = icmp eq i64 %i.ao, 0
  %i.bl = select i1 %.not1564, i64 0, i64 8       ; 4 uses
  %i.bm = add nsw i64 %i.bi, 8                    ; 2 uses
  br i1 %.not395, label %.preheader479.us594.us.preheader, label %.preheader479.us594.preheader

.preheader479.us594.preheader:                    ; preds = %.preheader479.lr.ph.split.split.us
  %min.iters.check1501 = icmp ult i64 %i.an, 32
  %n.vec1503 = and i64 %i.ao, 2305843009213693948 ; 3 uses
  %i.bn = shl nuw i64 %n.vec1503, 3               ; 2 uses
  %8 = and i64 %i.ao, 3
  %cmp.n1514 = icmp eq i64 %i.ao, %n.vec1503
  br label %.preheader479.us594

.preheader479.us594.us.preheader:                 ; preds = %.preheader479.lr.ph.split.split.us
  %min.iters.check1531 = icmp ult i64 %i.an, 32
  %n.vec1533 = and i64 %i.ao, 2305843009213693948 ; 3 uses
  %i.bo = shl nuw i64 %n.vec1533, 3               ; 2 uses
  %9 = and i64 %i.ao, 3
  %cmp.n1544 = icmp eq i64 %i.ao, %n.vec1533
  br label %.preheader479.us594.us

.preheader479.us594.us:                           ; preds = %.preheader479.us594.us.preheader, %.critedge.us596.us
  %indvar1520 = phi i64 [ %indvar.next1521, %.critedge.us596.us ], [ 0, %.preheader479.us594.us.preheader ] ; 2 uses
  %.0351583.us595.us = phi ptr [ %.0351.us597.us, %.critedge.us596.us ], [ %.0351582, %.preheader479.us594.us.preheader ] ; 4 uses
  %i.bp = mul i64 %2, %indvar1520                 ; 3 uses
  %i.bq = icmp ugt ptr %.0351583.us595.us, %.0.lcssa
  br i1 %i.bq, label %.lr.ph577.us598.us.preheader, label %.critedge.us596.us

.lr.ph577.us598.us.preheader:                     ; preds = %.preheader479.us594.us
  %.pre684 = load i32, ptr %.0351583.us595.us, align 4, !tbaa !8
  %i.br = add i64 %i.bk, %i.bp
  %i.bs = add i64 %i.bm, %i.bp
  br label %.lr.ph577.us598.us

.critedge.us596.us:                               ; preds = %swapfunc.exit.loopexit.us.us.us.us, %.lr.ph577.us598.us, %.preheader479.us594.us
  %.0351.us597.us = getelementptr inbounds nuw i8, ptr %.0351583.us595.us, i64 %2 ; 2 uses
  %i.bt = icmp ult ptr %.0351.us597.us, %i.ak
  %indvar.next1521 = add i64 %indvar1520, 1
  br i1 %i.bt, label %.preheader479.us594.us, label %.loopexit

.lr.ph577.us598.us:                               ; preds = %.lr.ph577.us598.us.preheader, %swapfunc.exit.loopexit.us.us.us.us
  %indvar1522 = phi i64 [ 0, %.lr.ph577.us598.us.preheader ], [ %indvar.next1523, %swapfunc.exit.loopexit.us.us.us.us ] ; 2 uses
  %i.bu = phi i32 [ %.pre684, %.lr.ph577.us598.us.preheader ], [ %i.cc, %swapfunc.exit.loopexit.us.us.us.us ]
  %.0348576.us579.us.us.us = phi ptr [ %.0351583.us595.us, %.lr.ph577.us598.us.preheader ], [ %i.cb, %swapfunc.exit.loopexit.us.us.us.us ] ; 6 uses
  %i.bv = mul i64 %2, %indvar1522                 ; 3 uses
  %i.bw = add i64 %i.bl, %i.bv
  %i.bx = sub i64 %i.br, %i.bw
  %scevgep1524 = getelementptr i8, ptr %.0.lcssa, i64 %i.bx
  %i.by = sub i64 %i.bp, %i.bv
  %scevgep1525 = getelementptr i8, ptr %.0.lcssa, i64 %i.by
  %i.bz = add i64 %i.bl, %i.bv
  %i.ca = sub i64 %i.bs, %i.bz
  %scevgep1526 = getelementptr i8, ptr %.0.lcssa, i64 %i.ca
  %i.cb = getelementptr inbounds i8, ptr %.0348576.us579.us.us.us, i64 %i.a ; 7 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 2 uses
  %i.cd = sub i32 %i.cc, %i.bu
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader769, label %.critedge.us596.us

.preheader769:                                    ; preds = %.lr.ph577.us598.us
  br i1 %min.iters.check1531, label %scalar.ph1530.preheader, label %vector.memcheck1518

vector.memcheck1518:                              ; preds = %.preheader769
  %bound01527 = icmp ult ptr %.0348576.us579.us.us.us, %scevgep1526
  %bound11528 = icmp ult ptr %scevgep1525, %scevgep1524
  %found.conflict1529 = and i1 %bound01527, %bound11528
  br i1 %found.conflict1529, label %scalar.ph1530.preheader, label %vector.ph1532

vector.ph1532:                                    ; preds = %vector.memcheck1518
  %i.cf = getelementptr i8, ptr %i.cb, i64 %i.bo
  %i.cg = getelementptr i8, ptr %.0348576.us579.us.us.us, i64 %i.bo
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1532
  %index1535 = phi i64 [ 0, %vector.ph1532 ], [ %index.next1542, %vector.body1534 ] ; 2 uses
  %i.ch = shl i64 %index1535, 3                   ; 2 uses
  %next.gep1536 = getelementptr i8, ptr %i.cb, i64 %i.ch ; 3 uses
  %next.gep1537 = getelementptr i8, ptr %.0348576.us579.us.us.us, i64 %i.ch ; 3 uses
  %i.ci = getelementptr i8, ptr %next.gep1537, i64 16 ; 2 uses
  %wide.load1538 = load <2 x i64>, ptr %next.gep1537, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %wide.load1539 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %i.cj = getelementptr i8, ptr %next.gep1536, i64 16 ; 2 uses
  %wide.load1540 = load <2 x i64>, ptr %next.gep1536, align 8, !tbaa !9, !alias.scope !14
  %wide.load1541 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !9, !alias.scope !14
  store <2 x i64> %wide.load1540, ptr %next.gep1537, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  store <2 x i64> %wide.load1541, ptr %i.ci, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  store <2 x i64> %wide.load1538, ptr %next.gep1536, align 8, !tbaa !9, !alias.scope !14
  store <2 x i64> %wide.load1539, ptr %i.cj, align 8, !tbaa !9, !alias.scope !14
  %index.next1542 = add nuw i64 %index1535, 4     ; 2 uses
  %i.ck = icmp eq i64 %index.next1542, %n.vec1533
  br i1 %i.ck, label %middle.block1543, label %vector.body1534, !llvm.loop !16

middle.block1543:                                 ; preds = %vector.body1534
  br i1 %cmp.n1544, label %swapfunc.exit.loopexit.us.us.us.us, label %scalar.ph1530.preheader

scalar.ph1530.preheader:                          ; preds = %vector.memcheck1518, %.preheader769, %middle.block1543
  %.022.i.us.us.us.us.ph = phi ptr [ %i.cb, %vector.memcheck1518 ], [ %i.cb, %.preheader769 ], [ %i.cf, %middle.block1543 ]
  %.021.i.us.us.us.us.ph = phi ptr [ %.0348576.us579.us.us.us, %vector.memcheck1518 ], [ %.0348576.us579.us.us.us, %.preheader769 ], [ %i.cg, %middle.block1543 ]
  %.0.i.us.us.us.us.ph = phi i64 [ %i.ao, %vector.memcheck1518 ], [ %i.ao, %.preheader769 ], [ %9, %middle.block1543 ]
  br label %scalar.ph1530

scalar.ph1530:                                    ; preds = %scalar.ph1530.preheader, %scalar.ph1530
  %.022.i.us.us.us.us = phi ptr [ %i.co, %scalar.ph1530 ], [ %.022.i.us.us.us.us.ph, %scalar.ph1530.preheader ] ; 3 uses
  %.021.i.us.us.us.us = phi ptr [ %i.cn, %scalar.ph1530 ], [ %.021.i.us.us.us.us.ph, %scalar.ph1530.preheader ] ; 3 uses
  %.0.i.us.us.us.us = phi i64 [ %i.cp, %scalar.ph1530 ], [ %.0.i.us.us.us.us.ph, %scalar.ph1530.preheader ] ; 2 uses
  %i.cl = load i64, ptr %.021.i.us.us.us.us, align 8, !tbaa !9
  %i.cm = load i64, ptr %.022.i.us.us.us.us, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i.us.us.us.us, i64 8
  store i64 %i.cm, ptr %.021.i.us.us.us.us, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %.022.i.us.us.us.us, i64 8
  store i64 %i.cl, ptr %.022.i.us.us.us.us, align 8, !tbaa !9
  %i.cp = add nsw i64 %.0.i.us.us.us.us, -1
  %i.cq = icmp samesign ugt i64 %.0.i.us.us.us.us, 1
  br i1 %i.cq, label %scalar.ph1530, label %swapfunc.exit.loopexit.us.us.us.us, !llvm.loop !19

swapfunc.exit.loopexit.us.us.us.us:               ; preds = %scalar.ph1530, %middle.block1543
  %i.cr = icmp ugt ptr %i.cb, %.0.lcssa
  %indvar.next1523 = add i64 %indvar1522, 1
  br i1 %i.cr, label %.lr.ph577.us598.us, label %.critedge.us596.us

.preheader479.us594:                              ; preds = %.preheader479.us594.preheader, %.critedge.us596
  %indvar1490 = phi i64 [ %indvar.next1491, %.critedge.us596 ], [ 0, %.preheader479.us594.preheader ] ; 2 uses
  %.0351583.us595 = phi ptr [ %.0351.us597, %.critedge.us596 ], [ %.0351582, %.preheader479.us594.preheader ] ; 3 uses
  %i.cs = mul i64 %2, %indvar1490                 ; 3 uses
  %i.ct = icmp ugt ptr %.0351583.us595, %.0.lcssa
  br i1 %i.ct, label %.lr.ph577.us598.preheader, label %.critedge.us596

.lr.ph577.us598.preheader:                        ; preds = %.preheader479.us594
  %i.cu = add i64 %i.bk, %i.cs
  %i.cv = add i64 %i.bm, %i.cs
  br label %.lr.ph577.us598

.critedge.us596:                                  ; preds = %swapfunc.exit.loopexit.us.us, %.lr.ph577.us598, %.preheader479.us594
  %.0351.us597 = getelementptr inbounds nuw i8, ptr %.0351583.us595, i64 %2 ; 2 uses
  %i.cw = icmp ult ptr %.0351.us597, %i.ak
  %indvar.next1491 = add i64 %indvar1490, 1
  br i1 %i.cw, label %.preheader479.us594, label %.loopexit

.lr.ph577.us598:                                  ; preds = %.lr.ph577.us598.preheader, %swapfunc.exit.loopexit.us.us
  %indvar1492 = phi i64 [ %indvar.next1493, %swapfunc.exit.loopexit.us.us ], [ 0, %.lr.ph577.us598.preheader ] ; 2 uses
  %.0348576.us579.us = phi ptr [ %i.dd, %swapfunc.exit.loopexit.us.us ], [ %.0351583.us595, %.lr.ph577.us598.preheader ] ; 7 uses
  %i.cx = mul i64 %2, %indvar1492                 ; 3 uses
  %i.cy = add i64 %i.bl, %i.cx
  %i.cz = sub i64 %i.cu, %i.cy
  %scevgep1494 = getelementptr i8, ptr %.0.lcssa, i64 %i.cz
  %i.da = sub i64 %i.cs, %i.cx
  %scevgep1495 = getelementptr i8, ptr %.0.lcssa, i64 %i.da
  %i.db = add i64 %i.bl, %i.cx
  %i.dc = sub i64 %i.cv, %i.db
  %scevgep1496 = getelementptr i8, ptr %.0.lcssa, i64 %i.dc
  %i.dd = getelementptr inbounds i8, ptr %.0348576.us579.us, i64 %i.a ; 7 uses
  %i.de = tail call i32 %3(ptr noundef nonnull %i.dd, ptr noundef nonnull %.0348576.us579.us) #2
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader771, label %.critedge.us596

.preheader771:                                    ; preds = %.lr.ph577.us598
  br i1 %min.iters.check1501, label %scalar.ph1500.preheader, label %vector.memcheck1488

vector.memcheck1488:                              ; preds = %.preheader771
  %bound01497 = icmp ult ptr %.0348576.us579.us, %scevgep1496
  %bound11498 = icmp ult ptr %scevgep1495, %scevgep1494
  %found.conflict1499 = and i1 %bound01497, %bound11498
  br i1 %found.conflict1499, label %scalar.ph1500.preheader, label %vector.ph1502

vector.ph1502:                                    ; preds = %vector.memcheck1488
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.bn
  %i.dh = getelementptr i8, ptr %.0348576.us579.us, i64 %i.bn
  br label %vector.body1504

vector.body1504:                                  ; preds = %vector.body1504, %vector.ph1502
  %index1505 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1512, %vector.body1504 ] ; 2 uses
  %i.di = shl i64 %index1505, 3                   ; 2 uses
  %next.gep1506 = getelementptr i8, ptr %i.dd, i64 %i.di ; 3 uses
  %next.gep1507 = getelementptr i8, ptr %.0348576.us579.us, i64 %i.di ; 3 uses
  %i.dj = getelementptr i8, ptr %next.gep1507, i64 16 ; 2 uses
  %wide.load1508 = load <2 x i64>, ptr %next.gep1507, align 8, !tbaa !9, !alias.scope !20, !noalias !23
  %wide.load1509 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !9, !alias.scope !20, !noalias !23
  %i.dk = getelementptr i8, ptr %next.gep1506, i64 16 ; 2 uses
  %wide.load1510 = load <2 x i64>, ptr %next.gep1506, align 8, !tbaa !9, !alias.scope !23
  %wide.load1511 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !9, !alias.scope !23
  store <2 x i64> %wide.load1510, ptr %next.gep1507, align 8, !tbaa !9, !alias.scope !20, !noalias !23
  store <2 x i64> %wide.load1511, ptr %i.dj, align 8, !tbaa !9, !alias.scope !20, !noalias !23
  store <2 x i64> %wide.load1508, ptr %next.gep1506, align 8, !tbaa !9, !alias.scope !23
  store <2 x i64> %wide.load1509, ptr %i.dk, align 8, !tbaa !9, !alias.scope !23
  %index.next1512 = add nuw i64 %index1505, 4     ; 2 uses
  %i.dl = icmp eq i64 %index.next1512, %n.vec1503
  br i1 %i.dl, label %middle.block1513, label %vector.body1504, !llvm.loop !25

middle.block1513:                                 ; preds = %vector.body1504
  br i1 %cmp.n1514, label %swapfunc.exit.loopexit.us.us, label %scalar.ph1500.preheader

scalar.ph1500.preheader:                          ; preds = %vector.memcheck1488, %.preheader771, %middle.block1513
  %.022.i.us.us.ph = phi ptr [ %i.dd, %vector.memcheck1488 ], [ %i.dd, %.preheader771 ], [ %i.dg, %middle.block1513 ]
  %.021.i.us.us.ph = phi ptr [ %.0348576.us579.us, %vector.memcheck1488 ], [ %.0348576.us579.us, %.preheader771 ], [ %i.dh, %middle.block1513 ]
  %.0.i.us.us.ph = phi i64 [ %i.ao, %vector.memcheck1488 ], [ %i.ao, %.preheader771 ], [ %8, %middle.block1513 ]
  br label %scalar.ph1500

scalar.ph1500:                                    ; preds = %scalar.ph1500.preheader, %scalar.ph1500
  %.022.i.us.us = phi ptr [ %i.dp, %scalar.ph1500 ], [ %.022.i.us.us.ph, %scalar.ph1500.preheader ] ; 3 uses
  %.021.i.us.us = phi ptr [ %i.do, %scalar.ph1500 ], [ %.021.i.us.us.ph, %scalar.ph1500.preheader ] ; 3 uses
  %.0.i.us.us = phi i64 [ %i.dq, %scalar.ph1500 ], [ %.0.i.us.us.ph, %scalar.ph1500.preheader ] ; 2 uses
  %i.dm = load i64, ptr %.021.i.us.us, align 8, !tbaa !9
  %i.dn = load i64, ptr %.022.i.us.us, align 8, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 8
  store i64 %i.dn, ptr %.021.i.us.us, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 8
  store i64 %i.dm, ptr %.022.i.us.us, align 8, !tbaa !9
  %i.dq = add nsw i64 %.0.i.us.us, -1
  %i.dr = icmp samesign ugt i64 %.0.i.us.us, 1
  br i1 %i.dr, label %scalar.ph1500, label %swapfunc.exit.loopexit.us.us, !llvm.loop !26

swapfunc.exit.loopexit.us.us:                     ; preds = %scalar.ph1500, %middle.block1513
  %i.ds = icmp ugt ptr %i.dd, %.0.lcssa
  %indvar.next1493 = add i64 %indvar1492, 1
  br i1 %i.ds, label %.lr.ph577.us598, label %.critedge.us596

.preheader479.lr.ph.split.split:                  ; preds = %.preheader479.lr.ph.split
  %i.dt = add i64 %2, %i.an
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %smin1437 = tail call i64 @llvm.smin.i64(i64 %i.an, i64 1) ; 2 uses
  %i.dv = tail call i64 @llvm.smax.i64(i64 %i.an, i64 1) ; 2 uses
  %i.dw = tail call i64 @llvm.smax.i64(i64 %i.an, i64 1) ; 10 uses
  br i1 %.not395, label %.preheader479.us599.preheader, label %.preheader479.preheader

.preheader479.preheader:                          ; preds = %.preheader479.lr.ph.split.split
  %min.iters.check1398 = icmp slt i64 %i.an, 4
  %min.iters.check1400 = icmp slt i64 %i.an, 32
  %i.dx = and i64 %i.dw, 28
  %n.vec1402 = and i64 %i.dw, 9223372036854775776 ; 6 uses
  %i.dy = sub nsw i64 %i.an, %n.vec1402
  %cmp.n1413 = icmp eq i64 %i.dw, %n.vec1402
  %min.epilog.iters.check1421 = icmp eq i64 %i.dx, 0
  %n.vec1423 = and i64 %i.dw, 9223372036854775804 ; 5 uses
  %i.dz = sub nsw i64 %i.an, %n.vec1423
  %cmp.n1432 = icmp eq i64 %i.dw, %n.vec1423
  br label %.preheader479

.preheader479.us599.preheader:                    ; preds = %.preheader479.lr.ph.split.split
  %min.iters.check1450 = icmp slt i64 %i.an, 4
  %min.iters.check1452 = icmp slt i64 %i.an, 32
  %i.ea = and i64 %i.dw, 28
  %n.vec1454 = and i64 %i.dw, 9223372036854775776 ; 6 uses
  %i.eb = sub nsw i64 %i.an, %n.vec1454
  %cmp.n1465 = icmp eq i64 %i.dw, %n.vec1454
  %min.epilog.iters.check1473 = icmp eq i64 %i.ea, 0
  %n.vec1475 = and i64 %i.dw, 9223372036854775804 ; 5 uses
  %i.ec = sub nsw i64 %i.an, %n.vec1475
  %cmp.n1484 = icmp eq i64 %i.dw, %n.vec1475
  br label %.preheader479.us599

.preheader479.us599:                              ; preds = %.preheader479.us599.preheader, %.critedge.us601
  %indvar1438 = phi i64 [ %indvar.next1439, %.critedge.us601 ], [ 0, %.preheader479.us599.preheader ] ; 2 uses
  %.0351583.us600 = phi ptr [ %.0351.us602, %.critedge.us601 ], [ %.0351582, %.preheader479.us599.preheader ] ; 3 uses
  %i.ed = mul i64 %2, %indvar1438                 ; 3 uses
  %i.ee = add i64 %i.dv, %i.ed
  %i.ef = icmp ugt ptr %.0351583.us600, %.0.lcssa
  br i1 %i.ef, label %.lr.ph577.us603.preheader, label %.critedge.us601

.lr.ph577.us603.preheader:                        ; preds = %.preheader479.us599
  %i.eg = add i64 %i.du, %i.ed
  br label %.lr.ph577.us603

.critedge.us601:                                  ; preds = %swapfunc.exit.loopexit478.us.us, %.lr.ph577.us603, %.preheader479.us599
  %.0351.us602 = getelementptr inbounds nuw i8, ptr %.0351583.us600, i64 %2 ; 2 uses
  %i.eh = icmp ult ptr %.0351.us602, %i.ak
  %indvar.next1439 = add i64 %indvar1438, 1
  br i1 %i.eh, label %.preheader479.us599, label %.loopexit

.lr.ph577.us603:                                  ; preds = %.lr.ph577.us603.preheader, %swapfunc.exit.loopexit478.us.us
  %indvar1440 = phi i64 [ %indvar.next1441, %swapfunc.exit.loopexit478.us.us ], [ 0, %.lr.ph577.us603.preheader ] ; 2 uses
  %.0348576.us581.us = phi ptr [ %i.en, %swapfunc.exit.loopexit478.us.us ], [ %.0351583.us600, %.lr.ph577.us603.preheader ] ; 9 uses
  %i.ei = mul i64 %2, %indvar1440                 ; 3 uses
  %i.ej = add i64 %smin1437, %i.ei
  %i.ek = sub i64 %i.eg, %i.ej
  %scevgep1442 = getelementptr i8, ptr %.0.lcssa, i64 %i.ek
  %i.el = sub i64 %i.ed, %i.ei
  %scevgep1443 = getelementptr i8, ptr %.0.lcssa, i64 %i.el
  %i.em = sub i64 %i.ee, %i.ei
  %scevgep1444 = getelementptr i8, ptr %.0.lcssa, i64 %i.em
  %i.en = getelementptr inbounds i8, ptr %.0348576.us581.us, i64 %i.a ; 9 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = load i32, ptr %.0348576.us581.us, align 4, !tbaa !8
  %i.eq = sub i32 %i.eo, %i.ep
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %iter.check1470, label %.critedge.us601

iter.check1470:                                   ; preds = %.lr.ph577.us603
  br i1 %min.iters.check1450, label %.preheader.us.us.preheader, label %vector.memcheck1436

vector.memcheck1436:                              ; preds = %iter.check1470
  %bound01445 = icmp ult ptr %.0348576.us581.us, %scevgep1444
  %bound11446 = icmp ult ptr %scevgep1443, %scevgep1442
  %found.conflict1447 = and i1 %bound01445, %bound11446
  br i1 %found.conflict1447, label %.preheader.us.us.preheader, label %vector.main.loop.iter.check1451

vector.main.loop.iter.check1451:                  ; preds = %vector.memcheck1436
  br i1 %min.iters.check1452, label %vec.epilog.ph1474, label %vector.ph1453

vector.ph1453:                                    ; preds = %vector.main.loop.iter.check1451
  %i.es = getelementptr i8, ptr %.0348576.us581.us, i64 %n.vec1454
  %i.et = getelementptr i8, ptr %i.en, i64 %n.vec1454
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1453
  %index1456 = phi i64 [ 0, %vector.ph1453 ], [ %index.next1463, %vector.body1455 ] ; 3 uses
  %next.gep1457 = getelementptr i8, ptr %.0348576.us581.us, i64 %index1456 ; 3 uses
  %next.gep1458 = getelementptr i8, ptr %i.en, i64 %index1456 ; 3 uses
  %i.eu = getelementptr i8, ptr %next.gep1457, i64 16 ; 2 uses
  %wide.load1459 = load <16 x i8>, ptr %next.gep1457, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %wide.load1460 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %i.ev = getelementptr i8, ptr %next.gep1458, i64 16 ; 2 uses
  %wide.load1461 = load <16 x i8>, ptr %next.gep1458, align 1, !tbaa !27, !alias.scope !31
  %wide.load1462 = load <16 x i8>, ptr %i.ev, align 1, !tbaa !27, !alias.scope !31
  store <16 x i8> %wide.load1461, ptr %next.gep1457, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  store <16 x i8> %wide.load1462, ptr %i.eu, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  store <16 x i8> %wide.load1459, ptr %next.gep1458, align 1, !tbaa !27, !alias.scope !31
  store <16 x i8> %wide.load1460, ptr %i.ev, align 1, !tbaa !27, !alias.scope !31
  %index.next1463 = add nuw i64 %index1456, 32    ; 2 uses
  %i.ew = icmp eq i64 %index.next1463, %n.vec1454
  br i1 %i.ew, label %middle.block1464, label %vector.body1455, !llvm.loop !33

middle.block1464:                                 ; preds = %vector.body1455
  br i1 %cmp.n1465, label %swapfunc.exit.loopexit478.us.us, label %vec.epilog.iter.check1472

vec.epilog.iter.check1472:                        ; preds = %middle.block1464
  br i1 %min.epilog.iters.check1473, label %.preheader.us.us.preheader, label %vec.epilog.ph1474, !prof !34

vec.epilog.ph1474:                                ; preds = %vector.main.loop.iter.check1451, %vec.epilog.iter.check1472
  %vec.epilog.resume.val1466 = phi i64 [ %n.vec1454, %vec.epilog.iter.check1472 ], [ 0, %vector.main.loop.iter.check1451 ]
  %i.ex = getelementptr i8, ptr %.0348576.us581.us, i64 %n.vec1475
  %i.ey = getelementptr i8, ptr %i.en, i64 %n.vec1475
  br label %vec.epilog.vector.body1476

vec.epilog.vector.body1476:                       ; preds = %vec.epilog.vector.body1476, %vec.epilog.ph1474
  %index1477 = phi i64 [ %vec.epilog.resume.val1466, %vec.epilog.ph1474 ], [ %index.next1482, %vec.epilog.vector.body1476 ] ; 3 uses
  %next.gep1478 = getelementptr i8, ptr %.0348576.us581.us, i64 %index1477 ; 2 uses
  %next.gep1479 = getelementptr i8, ptr %i.en, i64 %index1477 ; 2 uses
  %wide.load1480 = load <4 x i8>, ptr %next.gep1478, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %wide.load1481 = load <4 x i8>, ptr %next.gep1479, align 1, !tbaa !27, !alias.scope !31
  store <4 x i8> %wide.load1481, ptr %next.gep1478, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  store <4 x i8> %wide.load1480, ptr %next.gep1479, align 1, !tbaa !27, !alias.scope !31
  %index.next1482 = add nuw i64 %index1477, 4     ; 2 uses
  %i.ez = icmp eq i64 %index.next1482, %n.vec1475
  br i1 %i.ez, label %vec.epilog.middle.block1483, label %vec.epilog.vector.body1476, !llvm.loop !35

vec.epilog.middle.block1483:                      ; preds = %vec.epilog.vector.body1476
  br i1 %cmp.n1484, label %swapfunc.exit.loopexit478.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %vector.memcheck1436, %iter.check1470, %vec.epilog.iter.check1472, %vec.epilog.middle.block1483
  %.020.i.us.us.ph = phi i64 [ %i.an, %iter.check1470 ], [ %i.an, %vector.memcheck1436 ], [ %i.eb, %vec.epilog.iter.check1472 ], [ %i.ec, %vec.epilog.middle.block1483 ]
  %.019.i.us.us.ph = phi ptr [ %.0348576.us581.us, %iter.check1470 ], [ %.0348576.us581.us, %vector.memcheck1436 ], [ %i.es, %vec.epilog.iter.check1472 ], [ %i.ex, %vec.epilog.middle.block1483 ]
  %.018.i.us.us.ph = phi ptr [ %i.en, %iter.check1470 ], [ %i.en, %vector.memcheck1436 ], [ %i.et, %vec.epilog.iter.check1472 ], [ %i.ey, %vec.epilog.middle.block1483 ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %.preheader.us.us
  %.020.i.us.us = phi i64 [ %i.fe, %.preheader.us.us ], [ %.020.i.us.us.ph, %.preheader.us.us.preheader ] ; 2 uses
  %.019.i.us.us = phi ptr [ %i.fc, %.preheader.us.us ], [ %.019.i.us.us.ph, %.preheader.us.us.preheader ] ; 3 uses
  %.018.i.us.us = phi ptr [ %i.fd, %.preheader.us.us ], [ %.018.i.us.us.ph, %.preheader.us.us.preheader ] ; 3 uses
  %i.fa = load i8, ptr %.019.i.us.us, align 1, !tbaa !27
  %i.fb = load i8, ptr %.018.i.us.us, align 1, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %.019.i.us.us, i64 1
  store i8 %i.fb, ptr %.019.i.us.us, align 1, !tbaa !27
  %i.fd = getelementptr inbounds nuw i8, ptr %.018.i.us.us, i64 1
  store i8 %i.fa, ptr %.018.i.us.us, align 1, !tbaa !27
  %i.fe = add nsw i64 %.020.i.us.us, -1
  %i.ff = icmp sgt i64 %.020.i.us.us, 1
  br i1 %i.ff, label %.preheader.us.us, label %swapfunc.exit.loopexit478.us.us, !llvm.loop !36

swapfunc.exit.loopexit478.us.us:                  ; preds = %.preheader.us.us, %vec.epilog.middle.block1483, %middle.block1464
  %i.fg = icmp ugt ptr %i.en, %.0.lcssa
  %indvar.next1441 = add i64 %indvar1440, 1
  br i1 %i.fg, label %.lr.ph577.us603, label %.critedge.us601

.preheader479:                                    ; preds = %.preheader479.preheader, %.critedge
  %indvar1386 = phi i64 [ %indvar.next1387, %.critedge ], [ 0, %.preheader479.preheader ] ; 2 uses
  %.0351583 = phi ptr [ %.0351, %.critedge ], [ %.0351582, %.preheader479.preheader ] ; 3 uses
  %i.fh = mul i64 %2, %indvar1386                 ; 3 uses
  %i.fi = add i64 %i.dv, %i.fh
  %i.fj = icmp ugt ptr %.0351583, %.0.lcssa
  br i1 %i.fj, label %.lr.ph577.preheader, label %.critedge

.lr.ph577.preheader:                              ; preds = %.preheader479
  %i.fk = add i64 %i.du, %i.fh
  br label %.lr.ph577

.lr.ph577:                                        ; preds = %.lr.ph577.preheader, %swapfunc.exit.loopexit478
  %indvar1388 = phi i64 [ %indvar.next1389, %swapfunc.exit.loopexit478 ], [ 0, %.lr.ph577.preheader ] ; 2 uses
  %.0348576 = phi ptr [ %i.fq, %swapfunc.exit.loopexit478 ], [ %.0351583, %.lr.ph577.preheader ] ; 9 uses
  %i.fl = mul i64 %2, %indvar1388                 ; 3 uses
  %i.fm = add i64 %smin1437, %i.fl
  %i.fn = sub i64 %i.fk, %i.fm
  %scevgep1390 = getelementptr i8, ptr %.0.lcssa, i64 %i.fn
  %i.fo = sub i64 %i.fh, %i.fl
  %scevgep1391 = getelementptr i8, ptr %.0.lcssa, i64 %i.fo
  %i.fp = sub i64 %i.fi, %i.fl
end_hunk_0
begin_hunk_1_@cli_qsort:bb.a
  %i.kq = sub i32 %i.kf, %i.kk
  %i.kr = icmp slt i32 %i.kq, 0
  %.398 = select i1 %i.kr, ptr %i.ke, ptr %i.gq
  br label %med3.exit402.thread

med3.exit402:                                     ; preds = %bb.c
  br i1 %.not387, label %med3.exit402.med3.exit402.thread_crit_edge, label %med3.exit402.thread463

med3.exit402.med3.exit402.thread_crit_edge:       ; preds = %med3.exit402
  %.pre = load i32, ptr %.0543, align 4, !tbaa !8
  %.pre681 = load i32, ptr %i.gn, align 4, !tbaa !8
  br label %med3.exit402.thread

med3.exit402.thread463:                           ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %med3.exit402
  %.1349470 = phi ptr [ %.0543, %med3.exit402 ], [ %i.ie, %bb.aa ], [ %i.ie, %bb.z ], [ %i.ie, %bb.y ], [ %i.ie, %bb.x ] ; 5 uses
  %.1352469 = phi ptr [ %i.gn, %med3.exit402 ], [ %i.jl, %bb.aa ], [ %i.jl, %bb.z ], [ %i.jl, %bb.y ], [ %i.jl, %bb.x ] ; 4 uses
  %.0355468 = phi ptr [ %i.gq, %med3.exit402 ], [ %i.jz, %bb.aa ], [ %i.jo, %bb.z ], [ %i.jv, %bb.y ], [ %i.jo, %bb.x ] ; 5 uses
  %i.ks = tail call i32 %3(ptr noundef %.1349470, ptr noundef %.1352469) #2, !inline_history !45
  %i.kt = icmp slt i32 %i.ks, 0
  %i.ku = tail call i32 %3(ptr noundef %.1352469, ptr noundef %.0355468) #2, !inline_history !45 ; 2 uses
  br i1 %i.kt, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %med3.exit402.thread463
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %med3.exit403, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kw = tail call i32 %3(ptr noundef %.1349470, ptr noundef %.0355468) #2, !inline_history !45
  %i.kx = icmp slt i32 %i.kw, 0
  %i.ky = select i1 %i.kx, ptr %.0355468, ptr %.1349470
  br label %med3.exit403

bb.ai:                                            ; preds = %med3.exit402.thread463
  %i.kz = icmp sgt i32 %i.ku, 0
  br i1 %i.kz, label %med3.exit403, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.la = tail call i32 %3(ptr noundef %.1349470, ptr noundef %.0355468) #2, !inline_history !45
  %i.lb = icmp slt i32 %i.la, 0
  %i.lc = select i1 %i.lb, ptr %.1349470, ptr %.0355468
  br label %med3.exit403

med3.exit402.thread:                              ; preds = %med3.exit402.med3.exit402.thread_crit_edge, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.ld = phi i32 [ %.pre681, %med3.exit402.med3.exit402.thread_crit_edge ], [ %i.ka, %bb.ac ], [ %i.ka, %bb.ad ], [ %i.ka, %bb.ae ], [ %i.ka, %bb.af ] ; 2 uses
  %i.le = phi i32 [ %.pre, %med3.exit402.med3.exit402.thread_crit_edge ], [ %i.it, %bb.ac ], [ %i.it, %bb.ad ], [ %i.it, %bb.ae ], [ %i.it, %bb.af ] ; 3 uses
  %.1349460 = phi ptr [ %.0543, %med3.exit402.med3.exit402.thread_crit_edge ], [ %.ph, %bb.ac ], [ %.ph, %bb.ad ], [ %.ph, %bb.ae ], [ %.ph, %bb.af ] ; 2 uses
  %.1352459 = phi ptr [ %i.gn, %med3.exit402.med3.exit402.thread_crit_edge ], [ %.ph453, %bb.ac ], [ %.ph453, %bb.ad ], [ %.ph453, %bb.ae ], [ %.ph453, %bb.af ] ; 2 uses
  %.0355458 = phi ptr [ %i.gq, %med3.exit402.med3.exit402.thread_crit_edge ], [ %i.kg, %bb.ac ], [ %.397, %bb.ad ], [ %i.kg, %bb.ae ], [ %.398, %bb.af ] ; 3 uses
  %i.lf = sub i32 %i.le, %i.ld
  %i.lg = icmp slt i32 %i.lf, 0
  %i.lh = load i32, ptr %.0355458, align 4, !tbaa !8 ; 3 uses
  %i.li = sub i32 %i.ld, %i.lh                    ; 2 uses
  br i1 %i.lg, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %med3.exit402.thread
  %i.lj = icmp slt i32 %i.li, 0
  br i1 %i.lj, label %med3.exit403, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lk = sub i32 %i.le, %i.lh
  %i.ll = icmp slt i32 %i.lk, 0
  %i.lm = select i1 %i.ll, ptr %.0355458, ptr %.1349460
  br label %med3.exit403

bb.am:                                            ; preds = %med3.exit402.thread
  %i.ln = icmp sgt i32 %i.li, 0
  br i1 %i.ln, label %med3.exit403, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lo = sub i32 %i.le, %i.lh
  %i.lp = icmp slt i32 %i.lo, 0
  %i.lq = select i1 %i.lp, ptr %.1349460, ptr %.0355458
  br label %med3.exit403

med3.exit403:                                     ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.an, %bb.al, %bb.ak, %bb.am, %bb.b
  %.2353 = phi ptr [ %i.gn, %bb.b ], [ %.1352459, %bb.am ], [ %i.lm, %bb.al ], [ %i.lq, %bb.an ], [ %.1352459, %bb.ak ], [ %i.ky, %bb.ah ], [ %i.lc, %bb.aj ], [ %.1352469, %bb.ag ], [ %.1352469, %bb.ai ] ; 16 uses
  %i.lr = icmp eq i32 %i.gj, 0                    ; 5 uses
  br i1 %i.lr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %med3.exit403
  %i.ls = load i64, ptr %.0543, align 8, !tbaa !9
  %i.lt = load i64, ptr %.2353, align 8, !tbaa !9
  store i64 %i.lt, ptr %.0543, align 8, !tbaa !9
  store i64 %i.ls, ptr %.2353, align 8, !tbaa !9
  br label %swapfunc.exit410

bb.ap:                                            ; preds = %med3.exit403
  br i1 %or.cond544, label %.preheader624.preheader, label %iter.check1206

iter.check1206:                                   ; preds = %bb.ap
  br i1 %min.iters.check1186, label %.preheader496.preheader, label %vector.memcheck1179

vector.memcheck1179:                              ; preds = %iter.check1206
  %scevgep1180 = getelementptr i8, ptr %.0543, i64 %i.n
  %scevgep1181 = getelementptr i8, ptr %.2353, i64 %i.n
  %bound01182 = icmp ult ptr %.0543, %scevgep1181
  %bound11183 = icmp ult ptr %.2353, %scevgep1180
  %found.conflict1184 = and i1 %bound01182, %bound11183
  br i1 %found.conflict1184, label %.preheader496.preheader, label %vector.main.loop.iter.check1187

vector.main.loop.iter.check1187:                  ; preds = %vector.memcheck1179
  br i1 %min.iters.check1188, label %vec.epilog.ph1210, label %vector.ph1189

vector.ph1189:                                    ; preds = %vector.main.loop.iter.check1187
  %i.lu = getelementptr i8, ptr %.0543, i64 %n.vec1190
  %i.lv = getelementptr i8, ptr %.2353, i64 %n.vec1190
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1189
  %index1192 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1199, %vector.body1191 ] ; 3 uses
  %next.gep1193 = getelementptr i8, ptr %.0543, i64 %index1192 ; 3 uses
  %next.gep1194 = getelementptr i8, ptr %.2353, i64 %index1192 ; 3 uses
  %i.lw = getelementptr i8, ptr %next.gep1193, i64 16 ; 2 uses
  %wide.load1195 = load <16 x i8>, ptr %next.gep1193, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %wide.load1196 = load <16 x i8>, ptr %i.lw, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %i.lx = getelementptr i8, ptr %next.gep1194, i64 16 ; 2 uses
  %wide.load1197 = load <16 x i8>, ptr %next.gep1194, align 1, !tbaa !27, !alias.scope !49
  %wide.load1198 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !27, !alias.scope !49
  store <16 x i8> %wide.load1197, ptr %next.gep1193, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  store <16 x i8> %wide.load1198, ptr %i.lw, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  store <16 x i8> %wide.load1195, ptr %next.gep1194, align 1, !tbaa !27, !alias.scope !49
  store <16 x i8> %wide.load1196, ptr %i.lx, align 1, !tbaa !27, !alias.scope !49
  %index.next1199 = add nuw i64 %index1192, 32    ; 2 uses
  %i.ly = icmp eq i64 %index.next1199, %n.vec1190
  br i1 %i.ly, label %middle.block1200, label %vector.body1191, !llvm.loop !51

middle.block1200:                                 ; preds = %vector.body1191
  br i1 %cmp.n1201, label %swapfunc.exit410, label %vec.epilog.iter.check1208

vec.epilog.iter.check1208:                        ; preds = %middle.block1200
  br i1 %min.epilog.iters.check1209, label %.preheader496.preheader, label %vec.epilog.ph1210, !prof !34

vec.epilog.ph1210:                                ; preds = %vector.main.loop.iter.check1187, %vec.epilog.iter.check1208
  %vec.epilog.resume.val1202 = phi i64 [ %n.vec1190, %vec.epilog.iter.check1208 ], [ 0, %vector.main.loop.iter.check1187 ]
  %i.lz = getelementptr i8, ptr %.0543, i64 %n.vec1211
  %i.ma = getelementptr i8, ptr %.2353, i64 %n.vec1211
  br label %vec.epilog.vector.body1212

vec.epilog.vector.body1212:                       ; preds = %vec.epilog.vector.body1212, %vec.epilog.ph1210
  %index1213 = phi i64 [ %vec.epilog.resume.val1202, %vec.epilog.ph1210 ], [ %index.next1218, %vec.epilog.vector.body1212 ] ; 3 uses
  %next.gep1214 = getelementptr i8, ptr %.0543, i64 %index1213 ; 2 uses
  %next.gep1215 = getelementptr i8, ptr %.2353, i64 %index1213 ; 2 uses
  %wide.load1216 = load <4 x i8>, ptr %next.gep1214, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %wide.load1217 = load <4 x i8>, ptr %next.gep1215, align 1, !tbaa !27, !alias.scope !49
  store <4 x i8> %wide.load1217, ptr %next.gep1214, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  store <4 x i8> %wide.load1216, ptr %next.gep1215, align 1, !tbaa !27, !alias.scope !49
  %index.next1218 = add nuw i64 %index1213, 4     ; 2 uses
  %i.mb = icmp eq i64 %index.next1218, %n.vec1211
  br i1 %i.mb, label %vec.epilog.middle.block1219, label %vec.epilog.vector.body1212, !llvm.loop !52

vec.epilog.middle.block1219:                      ; preds = %vec.epilog.vector.body1212
  br i1 %cmp.n1220, label %swapfunc.exit410, label %.preheader496.preheader

.preheader496.preheader:                          ; preds = %vector.memcheck1179, %iter.check1206, %vec.epilog.iter.check1208, %vec.epilog.middle.block1219
  %.020.i404.ph = phi i64 [ %i.i, %iter.check1206 ], [ %i.i, %vector.memcheck1179 ], [ %i.u, %vec.epilog.iter.check1208 ], [ %i.v, %vec.epilog.middle.block1219 ]
  %.019.i405.ph = phi ptr [ %.0543, %iter.check1206 ], [ %.0543, %vector.memcheck1179 ], [ %i.lu, %vec.epilog.iter.check1208 ], [ %i.lz, %vec.epilog.middle.block1219 ]
  %.018.i406.ph = phi ptr [ %.2353, %iter.check1206 ], [ %.2353, %vector.memcheck1179 ], [ %i.lv, %vec.epilog.iter.check1208 ], [ %i.ma, %vec.epilog.middle.block1219 ]
  br label %.preheader496

.preheader624.preheader:                          ; preds = %bb.ap
  br i1 %min.iters.check1162, label %.preheader624.preheader1586, label %vector.memcheck1154

vector.memcheck1154:                              ; preds = %.preheader624.preheader
  %scevgep1156 = getelementptr i8, ptr %.0543, i64 %i.s
  %scevgep1157 = getelementptr i8, ptr %.2353, i64 %i.s
  %bound01158 = icmp ult ptr %.0543, %scevgep1157
  %bound11159 = icmp ult ptr %.2353, %scevgep1156
  %found.conflict1160 = and i1 %bound01158, %bound11159
  br i1 %found.conflict1160, label %.preheader624.preheader1586, label %vector.ph1163

vector.ph1163:                                    ; preds = %vector.memcheck1154
  %i.mc = getelementptr i8, ptr %.2353, i64 %i.w
  %i.md = getelementptr i8, ptr %.0543, i64 %i.w
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1163
  %index1166 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1173, %vector.body1165 ] ; 2 uses
  %i.me = shl i64 %index1166, 3                   ; 2 uses
  %next.gep1167 = getelementptr i8, ptr %.2353, i64 %i.me ; 3 uses
  %next.gep1168 = getelementptr i8, ptr %.0543, i64 %i.me ; 3 uses
  %i.mf = getelementptr i8, ptr %next.gep1168, i64 16 ; 2 uses
  %wide.load1169 = load <2 x i64>, ptr %next.gep1168, align 8, !tbaa !9, !alias.scope !53, !noalias !56
  %wide.load1170 = load <2 x i64>, ptr %i.mf, align 8, !tbaa !9, !alias.scope !53, !noalias !56
  %i.mg = getelementptr i8, ptr %next.gep1167, i64 16 ; 2 uses
  %wide.load1171 = load <2 x i64>, ptr %next.gep1167, align 8, !tbaa !9, !alias.scope !56
  %wide.load1172 = load <2 x i64>, ptr %i.mg, align 8, !tbaa !9, !alias.scope !56
  store <2 x i64> %wide.load1171, ptr %next.gep1168, align 8, !tbaa !9, !alias.scope !53, !noalias !56
  store <2 x i64> %wide.load1172, ptr %i.mf, align 8, !tbaa !9, !alias.scope !53, !noalias !56
  store <2 x i64> %wide.load1169, ptr %next.gep1167, align 8, !tbaa !9, !alias.scope !56
  store <2 x i64> %wide.load1170, ptr %i.mg, align 8, !tbaa !9, !alias.scope !56
  %index.next1173 = add nuw i64 %index1166, 4     ; 2 uses
  %i.mh = icmp eq i64 %index.next1173, %n.vec1164
  br i1 %i.mh, label %middle.block1174, label %vector.body1165, !llvm.loop !58

middle.block1174:                                 ; preds = %vector.body1165
  br i1 %cmp.n1175, label %swapfunc.exit410, label %.preheader624.preheader1586

.preheader624.preheader1586:                      ; preds = %vector.memcheck1154, %.preheader624.preheader, %middle.block1174
  %.022.i407.ph = phi ptr [ %.2353, %vector.memcheck1154 ], [ %.2353, %.preheader624.preheader ], [ %i.mc, %middle.block1174 ]
  %.021.i408.ph = phi ptr [ %.0543, %vector.memcheck1154 ], [ %.0543, %.preheader624.preheader ], [ %i.md, %middle.block1174 ]
  %.0.i409.ph = phi i64 [ %i.j, %vector.memcheck1154 ], [ %i.j, %.preheader624.preheader ], [ %4, %middle.block1174 ]
  br label %.preheader624

.preheader624:                                    ; preds = %.preheader624.preheader1586, %.preheader624
  %.022.i407 = phi ptr [ %i.ml, %.preheader624 ], [ %.022.i407.ph, %.preheader624.preheader1586 ] ; 3 uses
  %.021.i408 = phi ptr [ %i.mk, %.preheader624 ], [ %.021.i408.ph, %.preheader624.preheader1586 ] ; 3 uses
  %.0.i409 = phi i64 [ %i.mm, %.preheader624 ], [ %.0.i409.ph, %.preheader624.preheader1586 ] ; 2 uses
  %i.mi = load i64, ptr %.021.i408, align 8, !tbaa !9
  %i.mj = load i64, ptr %.022.i407, align 8, !tbaa !9
  %i.mk = getelementptr inbounds nuw i8, ptr %.021.i408, i64 8
  store i64 %i.mj, ptr %.021.i408, align 8, !tbaa !9
  %i.ml = getelementptr inbounds nuw i8, ptr %.022.i407, i64 8
  store i64 %i.mi, ptr %.022.i407, align 8, !tbaa !9
  %i.mm = add nsw i64 %.0.i409, -1
  %i.mn = icmp samesign ugt i64 %.0.i409, 1
  br i1 %i.mn, label %.preheader624, label %swapfunc.exit410, !llvm.loop !59

.preheader496:                                    ; preds = %.preheader496.preheader, %.preheader496
  %.020.i404 = phi i64 [ %i.ms, %.preheader496 ], [ %.020.i404.ph, %.preheader496.preheader ] ; 2 uses
  %.019.i405 = phi ptr [ %i.mq, %.preheader496 ], [ %.019.i405.ph, %.preheader496.preheader ] ; 3 uses
  %.018.i406 = phi ptr [ %i.mr, %.preheader496 ], [ %.018.i406.ph, %.preheader496.preheader ] ; 3 uses
  %i.mo = load i8, ptr %.019.i405, align 1, !tbaa !27
  %i.mp = load i8, ptr %.018.i406, align 1, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %.019.i405, i64 1
  store i8 %i.mp, ptr %.019.i405, align 1, !tbaa !27
  %i.mr = getelementptr inbounds nuw i8, ptr %.018.i406, i64 1
  store i8 %i.mo, ptr %.018.i406, align 1, !tbaa !27
  %i.ms = add nsw i64 %.020.i404, -1
  %i.mt = icmp sgt i64 %.020.i404, 1
  br i1 %i.mt, label %.preheader496, label %swapfunc.exit410, !llvm.loop !60

swapfunc.exit410:                                 ; preds = %.preheader496, %.preheader624, %middle.block1200, %vec.epilog.middle.block1219, %middle.block1174, %bb.ao
  %i.mu = getelementptr inbounds nuw i8, ptr %.0543, i64 %2 ; 8 uses
  %i.mv = add i64 %.0336542, -1
  %i.mw = mul i64 %i.mv, %2
  %i.mx = getelementptr inbounds nuw i8, ptr %.0543, i64 %i.mw ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %swapfunc.exit431, %swapfunc.exit410
  %.0345 = phi i32 [ 0, %swapfunc.exit410 ], [ 1, %swapfunc.exit431 ] ; 2 uses
  %.0342 = phi ptr [ %i.mx, %swapfunc.exit410 ], [ %.1343527, %swapfunc.exit431 ] ; 2 uses
  %.0340 = phi ptr [ %i.mx, %swapfunc.exit410 ], [ %i.rj, %swapfunc.exit431 ] ; 9 uses
  %.0338 = phi ptr [ %i.mu, %swapfunc.exit410 ], [ %i.ri, %swapfunc.exit431 ] ; 5 uses
  %.0337 = phi ptr [ %i.mu, %swapfunc.exit410 ], [ %.1.lcssa, %swapfunc.exit431 ] ; 2 uses
  %.not388514 = icmp ugt ptr %.0338, %.0340
  br i1 %.not388514, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aq
  %i.my = getelementptr i8, ptr %.0338, i64 %i.n
  %i.mz = getelementptr i8, ptr %.0338, i64 %i.r
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %indvar1085 = phi i64 [ %indvar.next1086, %bb.ay ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1518 = phi ptr [ %.2, %bb.ay ], [ %.0337, %.lr.ph.preheader ] ; 19 uses
  %.1339516 = phi ptr [ %i.om, %bb.ay ], [ %.0338, %.lr.ph.preheader ] ; 18 uses
  %.1346515 = phi i32 [ %.2347, %bb.ay ], [ %.0345, %.lr.ph.preheader ] ; 2 uses
  %i.na = mul i64 %2, %indvar1085
  %scevgep1111 = getelementptr i8, ptr %i.my, i64 %i.na
  %i.nb = mul i64 %2, %indvar1085
  %scevgep1087 = getelementptr i8, ptr %i.mz, i64 %i.nb
  br i1 %.not387, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph
  %i.nc = tail call i32 %3(ptr noundef %.1339516, ptr noundef %.0543) #2
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph
  %i.nd = load i32, ptr %.1339516, align 4, !tbaa !8
  %i.ne = load i32, ptr %.0543, align 4, !tbaa !8
  %i.nf = sub i32 %i.nd, %i.ne
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ng = phi i32 [ %i.nc, %bb.ar ], [ %i.nf, %bb.as ] ; 2 uses
  %i.nh = icmp slt i32 %i.ng, 1
  br i1 %i.nh, label %bb.au, label %.critedge2

bb.au:                                            ; preds = %bb.at
  %i.ni = icmp eq i32 %i.ng, 0
  br i1 %i.ni, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %i.lr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nj = load i64, ptr %.1518, align 8, !tbaa !9
  %i.nk = load i64, ptr %.1339516, align 8, !tbaa !9
  store i64 %i.nk, ptr %.1518, align 8, !tbaa !9
  store i64 %i.nj, ptr %.1339516, align 8, !tbaa !9
  br label %swapfunc.exit417

bb.ax:                                            ; preds = %bb.av
  br i1 %or.cond544, label %.preheader617.preheader, label %iter.check1136

iter.check1136:                                   ; preds = %bb.ax
  br i1 %min.iters.check1116, label %.preheader488.preheader, label %vector.memcheck1109

vector.memcheck1109:                              ; preds = %iter.check1136
  %scevgep1110 = getelementptr i8, ptr %.1518, i64 %i.n
  %bound01112 = icmp ult ptr %.1518, %scevgep1111
  %bound11113 = icmp ult ptr %.1339516, %scevgep1110
  %found.conflict1114 = and i1 %bound01112, %bound11113
  br i1 %found.conflict1114, label %.preheader488.preheader, label %vector.main.loop.iter.check1117

vector.main.loop.iter.check1117:                  ; preds = %vector.memcheck1109
  br i1 %min.iters.check1118, label %vec.epilog.ph1140, label %vector.ph1119

vector.ph1119:                                    ; preds = %vector.main.loop.iter.check1117
  %i.nl = getelementptr i8, ptr %.1518, i64 %n.vec1120
  %i.nm = getelementptr i8, ptr %.1339516, i64 %n.vec1120
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1119
  %index1122 = phi i64 [ 0, %vector.ph1119 ], [ %index.next1129, %vector.body1121 ] ; 3 uses
  %next.gep1123 = getelementptr i8, ptr %.1518, i64 %index1122 ; 3 uses
  %next.gep1124 = getelementptr i8, ptr %.1339516, i64 %index1122 ; 3 uses
  %i.nn = getelementptr i8, ptr %next.gep1123, i64 16 ; 2 uses
  %wide.load1125 = load <16 x i8>, ptr %next.gep1123, align 1, !tbaa !27, !alias.scope !61, !noalias !64
  %wide.load1126 = load <16 x i8>, ptr %i.nn, align 1, !tbaa !27, !alias.scope !61, !noalias !64
  %i.no = getelementptr i8, ptr %next.gep1124, i64 16 ; 2 uses
  %wide.load1127 = load <16 x i8>, ptr %next.gep1124, align 1, !tbaa !27, !alias.scope !64
  %wide.load1128 = load <16 x i8>, ptr %i.no, align 1, !tbaa !27, !alias.scope !64
  store <16 x i8> %wide.load1127, ptr %next.gep1123, align 1, !tbaa !27, !alias.scope !61, !noalias !64
  store <16 x i8> %wide.load1128, ptr %i.nn, align 1, !tbaa !27, !alias.scope !61, !noalias !64
  store <16 x i8> %wide.load1125, ptr %next.gep1124, align 1, !tbaa !27, !alias.scope !64
  store <16 x i8> %wide.load1126, ptr %i.no, align 1, !tbaa !27, !alias.scope !64
  %index.next1129 = add nuw i64 %index1122, 32    ; 2 uses
  %i.np = icmp eq i64 %index.next1129, %n.vec1120
  br i1 %i.np, label %middle.block1130, label %vector.body1121, !llvm.loop !66

middle.block1130:                                 ; preds = %vector.body1121
  br i1 %cmp.n1131, label %swapfunc.exit417, label %vec.epilog.iter.check1138

vec.epilog.iter.check1138:                        ; preds = %middle.block1130
  br i1 %min.epilog.iters.check1139, label %.preheader488.preheader, label %vec.epilog.ph1140, !prof !34

vec.epilog.ph1140:                                ; preds = %vector.main.loop.iter.check1117, %vec.epilog.iter.check1138
  %vec.epilog.resume.val1132 = phi i64 [ %n.vec1120, %vec.epilog.iter.check1138 ], [ 0, %vector.main.loop.iter.check1117 ]
  %i.nq = getelementptr i8, ptr %.1518, i64 %n.vec1141
  %i.nr = getelementptr i8, ptr %.1339516, i64 %n.vec1141
  br label %vec.epilog.vector.body1142

vec.epilog.vector.body1142:                       ; preds = %vec.epilog.vector.body1142, %vec.epilog.ph1140
  %index1143 = phi i64 [ %vec.epilog.resume.val1132, %vec.epilog.ph1140 ], [ %index.next1148, %vec.epilog.vector.body1142 ] ; 3 uses
  %next.gep1144 = getelementptr i8, ptr %.1518, i64 %index1143 ; 2 uses
  %next.gep1145 = getelementptr i8, ptr %.1339516, i64 %index1143 ; 2 uses
  %wide.load1146 = load <4 x i8>, ptr %next.gep1144, align 1, !tbaa !27, !alias.scope !61, !noalias !64
  %wide.load1147 = load <4 x i8>, ptr %next.gep1145, align 1, !tbaa !27, !alias.scope !64
  store <4 x i8> %wide.load1147, ptr %next.gep1144, align 1, !tbaa !27, !alias.scope !61, !noalias !64
  store <4 x i8> %wide.load1146, ptr %next.gep1145, align 1, !tbaa !27, !alias.scope !64
  %index.next1148 = add nuw i64 %index1143, 4     ; 2 uses
  %i.ns = icmp eq i64 %index.next1148, %n.vec1141
  br i1 %i.ns, label %vec.epilog.middle.block1149, label %vec.epilog.vector.body1142, !llvm.loop !67

vec.epilog.middle.block1149:                      ; preds = %vec.epilog.vector.body1142
  br i1 %cmp.n1150, label %swapfunc.exit417, label %.preheader488.preheader

.preheader488.preheader:                          ; preds = %vector.memcheck1109, %iter.check1136, %vec.epilog.iter.check1138, %vec.epilog.middle.block1149
  %.020.i411.ph = phi i64 [ %i.i, %iter.check1136 ], [ %i.i, %vector.memcheck1109 ], [ %i.y, %vec.epilog.iter.check1138 ], [ %i.z, %vec.epilog.middle.block1149 ]
  %.019.i412.ph = phi ptr [ %.1518, %iter.check1136 ], [ %.1518, %vector.memcheck1109 ], [ %i.nl, %vec.epilog.iter.check1138 ], [ %i.nq, %vec.epilog.middle.block1149 ]
  %.018.i413.ph = phi ptr [ %.1339516, %iter.check1136 ], [ %.1339516, %vector.memcheck1109 ], [ %i.nm, %vec.epilog.iter.check1138 ], [ %i.nr, %vec.epilog.middle.block1149 ]
  br label %.preheader488

.preheader617.preheader:                          ; preds = %bb.ax
  br i1 %min.iters.check1092, label %.preheader617.preheader1579, label %vector.memcheck1082

vector.memcheck1082:                              ; preds = %.preheader617.preheader
  %scevgep1084 = getelementptr i8, ptr %.1518, i64 %i.r
  %bound01088 = icmp ult ptr %.1518, %scevgep1087
  %bound11089 = icmp ult ptr %.1339516, %scevgep1084
  %found.conflict1090 = and i1 %bound01088, %bound11089
  br i1 %found.conflict1090, label %.preheader617.preheader1579, label %vector.ph1093

vector.ph1093:                                    ; preds = %vector.memcheck1082
  %i.nt = getelementptr i8, ptr %.1339516, i64 %i.aa
  %i.nu = getelementptr i8, ptr %.1518, i64 %i.aa
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1093
  %index1096 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1103, %vector.body1095 ] ; 2 uses
  %i.nv = shl i64 %index1096, 3                   ; 2 uses
  %next.gep1097 = getelementptr i8, ptr %.1339516, i64 %i.nv ; 3 uses
  %next.gep1098 = getelementptr i8, ptr %.1518, i64 %i.nv ; 3 uses
  %i.nw = getelementptr i8, ptr %next.gep1098, i64 16 ; 2 uses
  %wide.load1099 = load <2 x i64>, ptr %next.gep1098, align 8, !tbaa !9, !alias.scope !68, !noalias !71
  %wide.load1100 = load <2 x i64>, ptr %i.nw, align 8, !tbaa !9, !alias.scope !68, !noalias !71
  %i.nx = getelementptr i8, ptr %next.gep1097, i64 16 ; 2 uses
  %wide.load1101 = load <2 x i64>, ptr %next.gep1097, align 8, !tbaa !9, !alias.scope !71
  %wide.load1102 = load <2 x i64>, ptr %i.nx, align 8, !tbaa !9, !alias.scope !71
  store <2 x i64> %wide.load1101, ptr %next.gep1098, align 8, !tbaa !9, !alias.scope !68, !noalias !71
  store <2 x i64> %wide.load1102, ptr %i.nw, align 8, !tbaa !9, !alias.scope !68, !noalias !71
  store <2 x i64> %wide.load1099, ptr %next.gep1097, align 8, !tbaa !9, !alias.scope !71
  store <2 x i64> %wide.load1100, ptr %i.nx, align 8, !tbaa !9, !alias.scope !71
  %index.next1103 = add nuw i64 %index1096, 4     ; 2 uses
  %i.ny = icmp eq i64 %index.next1103, %n.vec1094
  br i1 %i.ny, label %middle.block1104, label %vector.body1095, !llvm.loop !73

middle.block1104:                                 ; preds = %vector.body1095
  br i1 %cmp.n1105, label %swapfunc.exit417, label %.preheader617.preheader1579

.preheader617.preheader1579:                      ; preds = %vector.memcheck1082, %.preheader617.preheader, %middle.block1104
  %.022.i414.ph = phi ptr [ %.1339516, %vector.memcheck1082 ], [ %.1339516, %.preheader617.preheader ], [ %i.nt, %middle.block1104 ]
  %.021.i415.ph = phi ptr [ %.1518, %vector.memcheck1082 ], [ %.1518, %.preheader617.preheader ], [ %i.nu, %middle.block1104 ]
  %.0.i416.ph = phi i64 [ %i.j, %vector.memcheck1082 ], [ %i.j, %.preheader617.preheader ], [ %5, %middle.block1104 ]
  br label %.preheader617

.preheader617:                                    ; preds = %.preheader617.preheader1579, %.preheader617
  %.022.i414 = phi ptr [ %i.oc, %.preheader617 ], [ %.022.i414.ph, %.preheader617.preheader1579 ] ; 3 uses
  %.021.i415 = phi ptr [ %i.ob, %.preheader617 ], [ %.021.i415.ph, %.preheader617.preheader1579 ] ; 3 uses
  %.0.i416 = phi i64 [ %i.od, %.preheader617 ], [ %.0.i416.ph, %.preheader617.preheader1579 ] ; 2 uses
  %i.nz = load i64, ptr %.021.i415, align 8, !tbaa !9
  %i.oa = load i64, ptr %.022.i414, align 8, !tbaa !9
  %i.ob = getelementptr inbounds nuw i8, ptr %.021.i415, i64 8
  store i64 %i.oa, ptr %.021.i415, align 8, !tbaa !9
  %i.oc = getelementptr inbounds nuw i8, ptr %.022.i414, i64 8
  store i64 %i.nz, ptr %.022.i414, align 8, !tbaa !9
  %i.od = add nsw i64 %.0.i416, -1
  %i.oe = icmp samesign ugt i64 %.0.i416, 1
  br i1 %i.oe, label %.preheader617, label %swapfunc.exit417, !llvm.loop !74

.preheader488:                                    ; preds = %.preheader488.preheader, %.preheader488
  %.020.i411 = phi i64 [ %i.oj, %.preheader488 ], [ %.020.i411.ph, %.preheader488.preheader ] ; 2 uses
  %.019.i412 = phi ptr [ %i.oh, %.preheader488 ], [ %.019.i412.ph, %.preheader488.preheader ] ; 3 uses
  %.018.i413 = phi ptr [ %i.oi, %.preheader488 ], [ %.018.i413.ph, %.preheader488.preheader ] ; 3 uses
  %i.of = load i8, ptr %.019.i412, align 1, !tbaa !27
  %i.og = load i8, ptr %.018.i413, align 1, !tbaa !27
  %i.oh = getelementptr inbounds nuw i8, ptr %.019.i412, i64 1
  store i8 %i.og, ptr %.019.i412, align 1, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %.018.i413, i64 1
  store i8 %i.of, ptr %.018.i413, align 1, !tbaa !27
  %i.oj = add nsw i64 %.020.i411, -1
  %i.ok = icmp sgt i64 %.020.i411, 1
  br i1 %i.ok, label %.preheader488, label %swapfunc.exit417, !llvm.loop !75

swapfunc.exit417:                                 ; preds = %.preheader488, %.preheader617, %middle.block1130, %vec.epilog.middle.block1149, %middle.block1104, %bb.aw
  %i.ol = getelementptr inbounds nuw i8, ptr %.1518, i64 %2
  br label %bb.ay

bb.ay:                                            ; preds = %swapfunc.exit417, %bb.au
  %.2347 = phi i32 [ 1, %swapfunc.exit417 ], [ %.1346515, %bb.au ] ; 2 uses
  %.2 = phi ptr [ %i.ol, %swapfunc.exit417 ], [ %.1518, %bb.au ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.1339516, i64 %2 ; 3 uses
  %.not388 = icmp ugt ptr %i.om, %.0340
  %indvar.next1086 = add i64 %indvar1085, 1
  br i1 %.not388, label %.critedge2, label %.lr.ph

.critedge2:                                       ; preds = %bb.at, %bb.ay, %bb.aq
  %.1346.lcssa = phi i32 [ %.0345, %bb.aq ], [ %.2347, %bb.ay ], [ %.1346515, %bb.at ] ; 2 uses
  %.1339.lcssa = phi ptr [ %.0338, %bb.aq ], [ %i.om, %bb.ay ], [ %.1339516, %bb.at ] ; 37 uses
  %.1.lcssa = phi ptr [ %.0337, %bb.aq ], [ %.2, %bb.ay ], [ %.1518, %bb.at ] ; 2 uses
  %.not390525 = icmp ugt ptr %.1339.lcssa, %.0340
  br i1 %.not390525, label %.critedge2._crit_edge, label %.lr.ph530

.lr.ph530:                                        ; preds = %.critedge2, %bb.bg
  %indvar = phi i64 [ %indvar.next, %bb.bg ], [ 0, %.critedge2 ] ; 5 uses
  %.1341528 = phi ptr [ %i.qb, %bb.bg ], [ %.0340, %.critedge2 ] ; 32 uses
  %.1343527 = phi ptr [ %.2344, %bb.bg ], [ %.0342, %.critedge2 ] ; 19 uses
  %.3526 = phi i32 [ %.4, %bb.bg ], [ %.1346.lcssa, %.critedge2 ]
  %i.on = mul i64 %2, %indvar
  %i.oo = sub i64 %i.n, %i.on
  %scevgep1038 = getelementptr i8, ptr %.0340, i64 %i.oo
  %i.op = mul i64 %2, %indvar
  %i.oq = sub i64 %i.p, %i.op
  %scevgep1014 = getelementptr i8, ptr %.0340, i64 %i.oq
  br i1 %.not387, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph530
  %i.or = tail call i32 %3(ptr noundef %.1341528, ptr noundef %.0543) #2
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph530
  %i.os = load i32, ptr %.1341528, align 4, !tbaa !8
  %i.ot = load i32, ptr %.0543, align 4, !tbaa !8
  %i.ou = sub i32 %i.os, %i.ot
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ov = phi i32 [ %i.or, %bb.az ], [ %i.ou, %bb.ba ] ; 2 uses
  %i.ow = icmp sgt i32 %i.ov, -1
  br i1 %i.ow, label %bb.bc, label %.critedge4

bb.bc:                                            ; preds = %bb.bb
  %i.ox = icmp eq i32 %i.ov, 0
  br i1 %i.ox, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.lr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.oy = load i64, ptr %.1341528, align 8, !tbaa !9
  %i.oz = load i64, ptr %.1343527, align 8, !tbaa !9
  store i64 %i.oz, ptr %.1341528, align 8, !tbaa !9
  store i64 %i.oy, ptr %.1343527, align 8, !tbaa !9
  br label %swapfunc.exit424

bb.bf:                                            ; preds = %bb.bd
  br i1 %or.cond544, label %.preheader615.preheader, label %iter.check1064

iter.check1064:                                   ; preds = %bb.bf
  br i1 %min.iters.check1044, label %.preheader486.preheader, label %vector.memcheck1037

vector.memcheck1037:                              ; preds = %iter.check1064
  %scevgep1039 = getelementptr i8, ptr %.1343527, i64 %i.n
  %bound01040 = icmp ult ptr %.1341528, %scevgep1039
  %bound11041 = icmp ult ptr %.1343527, %scevgep1038
  %found.conflict1042 = and i1 %bound01040, %bound11041
  br i1 %found.conflict1042, label %.preheader486.preheader, label %vector.main.loop.iter.check1045

vector.main.loop.iter.check1045:                  ; preds = %vector.memcheck1037
  br i1 %min.iters.check1046, label %vec.epilog.ph1068, label %vector.ph1047

vector.ph1047:                                    ; preds = %vector.main.loop.iter.check1045
  %i.pa = getelementptr i8, ptr %.1341528, i64 %n.vec1048
  %i.pb = getelementptr i8, ptr %.1343527, i64 %n.vec1048
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %vector.ph1047
  %index1050 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1057, %vector.body1049 ] ; 3 uses
  %next.gep1051 = getelementptr i8, ptr %.1341528, i64 %index1050 ; 3 uses
  %next.gep1052 = getelementptr i8, ptr %.1343527, i64 %index1050 ; 3 uses
  %i.pc = getelementptr i8, ptr %next.gep1051, i64 16 ; 2 uses
  %wide.load1053 = load <16 x i8>, ptr %next.gep1051, align 1, !tbaa !27, !alias.scope !76, !noalias !79
  %wide.load1054 = load <16 x i8>, ptr %i.pc, align 1, !tbaa !27, !alias.scope !76, !noalias !79
  %i.pd = getelementptr i8, ptr %next.gep1052, i64 16 ; 2 uses
  %wide.load1055 = load <16 x i8>, ptr %next.gep1052, align 1, !tbaa !27, !alias.scope !79
  %wide.load1056 = load <16 x i8>, ptr %i.pd, align 1, !tbaa !27, !alias.scope !79
  store <16 x i8> %wide.load1055, ptr %next.gep1051, align 1, !tbaa !27, !alias.scope !76, !noalias !79
  store <16 x i8> %wide.load1056, ptr %i.pc, align 1, !tbaa !27, !alias.scope !76, !noalias !79
  store <16 x i8> %wide.load1053, ptr %next.gep1052, align 1, !tbaa !27, !alias.scope !79
  store <16 x i8> %wide.load1054, ptr %i.pd, align 1, !tbaa !27, !alias.scope !79
  %index.next1057 = add nuw i64 %index1050, 32    ; 2 uses
  %i.pe = icmp eq i64 %index.next1057, %n.vec1048
  br i1 %i.pe, label %middle.block1058, label %vector.body1049, !llvm.loop !81

middle.block1058:                                 ; preds = %vector.body1049
  br i1 %cmp.n1059, label %swapfunc.exit424, label %vec.epilog.iter.check1066

vec.epilog.iter.check1066:                        ; preds = %middle.block1058
  br i1 %min.epilog.iters.check1067, label %.preheader486.preheader, label %vec.epilog.ph1068, !prof !34

vec.epilog.ph1068:                                ; preds = %vector.main.loop.iter.check1045, %vec.epilog.iter.check1066
  %vec.epilog.resume.val1060 = phi i64 [ %n.vec1048, %vec.epilog.iter.check1066 ], [ 0, %vector.main.loop.iter.check1045 ]
  %i.pf = getelementptr i8, ptr %.1341528, i64 %n.vec1069
  %i.pg = getelementptr i8, ptr %.1343527, i64 %n.vec1069
  br label %vec.epilog.vector.body1070

vec.epilog.vector.body1070:                       ; preds = %vec.epilog.vector.body1070, %vec.epilog.ph1068
  %index1071 = phi i64 [ %vec.epilog.resume.val1060, %vec.epilog.ph1068 ], [ %index.next1076, %vec.epilog.vector.body1070 ] ; 3 uses
  %next.gep1072 = getelementptr i8, ptr %.1341528, i64 %index1071 ; 2 uses
  %next.gep1073 = getelementptr i8, ptr %.1343527, i64 %index1071 ; 2 uses
  %wide.load1074 = load <4 x i8>, ptr %next.gep1072, align 1, !tbaa !27, !alias.scope !76, !noalias !79
  %wide.load1075 = load <4 x i8>, ptr %next.gep1073, align 1, !tbaa !27, !alias.scope !79
  store <4 x i8> %wide.load1075, ptr %next.gep1072, align 1, !tbaa !27, !alias.scope !76, !noalias !79
  store <4 x i8> %wide.load1074, ptr %next.gep1073, align 1, !tbaa !27, !alias.scope !79
  %index.next1076 = add nuw i64 %index1071, 4     ; 2 uses
  %i.ph = icmp eq i64 %index.next1076, %n.vec1069
  br i1 %i.ph, label %vec.epilog.middle.block1077, label %vec.epilog.vector.body1070, !llvm.loop !82

vec.epilog.middle.block1077:                      ; preds = %vec.epilog.vector.body1070
  br i1 %cmp.n1078, label %swapfunc.exit424, label %.preheader486.preheader

.preheader486.preheader:                          ; preds = %vector.memcheck1037, %iter.check1064, %vec.epilog.iter.check1066, %vec.epilog.middle.block1077
  %.020.i418.ph = phi i64 [ %i.i, %iter.check1064 ], [ %i.i, %vector.memcheck1037 ], [ %i.ac, %vec.epilog.iter.check1066 ], [ %i.ad, %vec.epilog.middle.block1077 ]
  %.019.i419.ph = phi ptr [ %.1341528, %iter.check1064 ], [ %.1341528, %vector.memcheck1037 ], [ %i.pa, %vec.epilog.iter.check1066 ], [ %i.pf, %vec.epilog.middle.block1077 ]
  %.018.i420.ph = phi ptr [ %.1343527, %iter.check1064 ], [ %.1343527, %vector.memcheck1037 ], [ %i.pb, %vec.epilog.iter.check1066 ], [ %i.pg, %vec.epilog.middle.block1077 ]
  br label %.preheader486

.preheader615.preheader:                          ; preds = %bb.bf
  br i1 %min.iters.check1020, label %.preheader615.preheader1577, label %vector.memcheck1012

vector.memcheck1012:                              ; preds = %.preheader615.preheader
  %scevgep1015 = getelementptr i8, ptr %.1343527, i64 %i.p
  %bound01016 = icmp ult ptr %.1341528, %scevgep1015
  %bound11017 = icmp ult ptr %.1343527, %scevgep1014
  %found.conflict1018 = and i1 %bound01016, %bound11017
  br i1 %found.conflict1018, label %.preheader615.preheader1577, label %vector.ph1021

vector.ph1021:                                    ; preds = %vector.memcheck1012
  %i.pi = getelementptr i8, ptr %.1343527, i64 %i.ae
  %i.pj = getelementptr i8, ptr %.1341528, i64 %i.ae
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %vector.ph1021
  %index1024 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1031, %vector.body1023 ] ; 2 uses
  %i.pk = shl i64 %index1024, 3                   ; 2 uses
  %next.gep1025 = getelementptr i8, ptr %.1343527, i64 %i.pk ; 3 uses
  %next.gep1026 = getelementptr i8, ptr %.1341528, i64 %i.pk ; 3 uses
  %i.pl = getelementptr i8, ptr %next.gep1026, i64 16 ; 2 uses
  %wide.load1027 = load <2 x i64>, ptr %next.gep1026, align 8, !tbaa !9, !alias.scope !83, !noalias !86
  %wide.load1028 = load <2 x i64>, ptr %i.pl, align 8, !tbaa !9, !alias.scope !83, !noalias !86
  %i.pm = getelementptr i8, ptr %next.gep1025, i64 16 ; 2 uses
  %wide.load1029 = load <2 x i64>, ptr %next.gep1025, align 8, !tbaa !9, !alias.scope !86
  %wide.load1030 = load <2 x i64>, ptr %i.pm, align 8, !tbaa !9, !alias.scope !86
  store <2 x i64> %wide.load1029, ptr %next.gep1026, align 8, !tbaa !9, !alias.scope !83, !noalias !86
  store <2 x i64> %wide.load1030, ptr %i.pl, align 8, !tbaa !9, !alias.scope !83, !noalias !86
  store <2 x i64> %wide.load1027, ptr %next.gep1025, align 8, !tbaa !9, !alias.scope !86
  store <2 x i64> %wide.load1028, ptr %i.pm, align 8, !tbaa !9, !alias.scope !86
  %index.next1031 = add nuw i64 %index1024, 4     ; 2 uses
  %i.pn = icmp eq i64 %index.next1031, %n.vec1022
  br i1 %i.pn, label %middle.block1032, label %vector.body1023, !llvm.loop !88

middle.block1032:                                 ; preds = %vector.body1023
  br i1 %cmp.n1033, label %swapfunc.exit424, label %.preheader615.preheader1577

.preheader615.preheader1577:                      ; preds = %vector.memcheck1012, %.preheader615.preheader, %middle.block1032
  %.022.i421.ph = phi ptr [ %.1343527, %vector.memcheck1012 ], [ %.1343527, %.preheader615.preheader ], [ %i.pi, %middle.block1032 ]
  %.021.i422.ph = phi ptr [ %.1341528, %vector.memcheck1012 ], [ %.1341528, %.preheader615.preheader ], [ %i.pj, %middle.block1032 ]
  %.0.i423.ph = phi i64 [ %i.j, %vector.memcheck1012 ], [ %i.j, %.preheader615.preheader ], [ %6, %middle.block1032 ]
  br label %.preheader615

.preheader615:                                    ; preds = %.preheader615.preheader1577, %.preheader615
  %.022.i421 = phi ptr [ %i.pr, %.preheader615 ], [ %.022.i421.ph, %.preheader615.preheader1577 ] ; 3 uses
  %.021.i422 = phi ptr [ %i.pq, %.preheader615 ], [ %.021.i422.ph, %.preheader615.preheader1577 ] ; 3 uses
  %.0.i423 = phi i64 [ %i.ps, %.preheader615 ], [ %.0.i423.ph, %.preheader615.preheader1577 ] ; 2 uses
  %i.po = load i64, ptr %.021.i422, align 8, !tbaa !9
  %i.pp = load i64, ptr %.022.i421, align 8, !tbaa !9
  %i.pq = getelementptr inbounds nuw i8, ptr %.021.i422, i64 8
  store i64 %i.pp, ptr %.021.i422, align 8, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.022.i421, i64 8
  store i64 %i.po, ptr %.022.i421, align 8, !tbaa !9
  %i.ps = add nsw i64 %.0.i423, -1
  %i.pt = icmp samesign ugt i64 %.0.i423, 1
  br i1 %i.pt, label %.preheader615, label %swapfunc.exit424, !llvm.loop !89

.preheader486:                                    ; preds = %.preheader486.preheader, %.preheader486
  %.020.i418 = phi i64 [ %i.py, %.preheader486 ], [ %.020.i418.ph, %.preheader486.preheader ] ; 2 uses
  %.019.i419 = phi ptr [ %i.pw, %.preheader486 ], [ %.019.i419.ph, %.preheader486.preheader ] ; 3 uses
  %.018.i420 = phi ptr [ %i.px, %.preheader486 ], [ %.018.i420.ph, %.preheader486.preheader ] ; 3 uses
  %i.pu = load i8, ptr %.019.i419, align 1, !tbaa !27
  %i.pv = load i8, ptr %.018.i420, align 1, !tbaa !27
  %i.pw = getelementptr inbounds nuw i8, ptr %.019.i419, i64 1
  store i8 %i.pv, ptr %.019.i419, align 1, !tbaa !27
  %i.px = getelementptr inbounds nuw i8, ptr %.018.i420, i64 1
  store i8 %i.pu, ptr %.018.i420, align 1, !tbaa !27
  %i.py = add nsw i64 %.020.i418, -1
  %i.pz = icmp sgt i64 %.020.i418, 1
  br i1 %i.pz, label %.preheader486, label %swapfunc.exit424, !llvm.loop !90

swapfunc.exit424:                                 ; preds = %.preheader486, %.preheader615, %middle.block1058, %vec.epilog.middle.block1077, %middle.block1032, %bb.be
  %i.qa = getelementptr inbounds i8, ptr %.1343527, i64 %i.a
  br label %bb.bg

bb.bg:                                            ; preds = %swapfunc.exit424, %bb.bc
  %.4 = phi i32 [ 1, %swapfunc.exit424 ], [ %.3526, %bb.bc ] ; 2 uses
  %.2344 = phi ptr [ %i.qa, %swapfunc.exit424 ], [ %.1343527, %bb.bc ] ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %.1341528, i64 %i.a ; 3 uses
  %.not390 = icmp ugt ptr %.1339.lcssa, %i.qb
  %indvar.next = add i64 %indvar, 1
  br i1 %.not390, label %.critedge2._crit_edge, label %.lr.ph530

.critedge4:                                       ; preds = %bb.bb
  br i1 %i.lr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.critedge4
  %i.qc = load i64, ptr %.1339.lcssa, align 8, !tbaa !9
  %i.qd = load i64, ptr %.1341528, align 8, !tbaa !9
  store i64 %i.qd, ptr %.1339.lcssa, align 8, !tbaa !9
  store i64 %i.qc, ptr %.1341528, align 8, !tbaa !9
  br label %swapfunc.exit431

bb.bi:                                            ; preds = %.critedge4
  br i1 %or.cond544, label %.preheader619.preheader, label %iter.check994

iter.check994:                                    ; preds = %bb.bi
  br i1 %min.iters.check974, label %.preheader490.preheader, label %vector.memcheck966

vector.memcheck966:                               ; preds = %iter.check994
  %scevgep967 = getelementptr i8, ptr %.1339.lcssa, i64 %i.m
  %i.qe = mul i64 %2, %indvar
  %i.qf = sub i64 %i.m, %i.qe
  %scevgep968 = getelementptr i8, ptr %.0340, i64 %i.qf
  %bound0969 = icmp ult ptr %.1339.lcssa, %scevgep968
  %bound1970 = icmp ult ptr %.1341528, %scevgep967
  %found.conflict971 = and i1 %bound0969, %bound1970
  br i1 %found.conflict971, label %.preheader490.preheader, label %vector.main.loop.iter.check975

vector.main.loop.iter.check975:                   ; preds = %vector.memcheck966
  br i1 %min.iters.check976, label %vec.epilog.ph998, label %vector.ph977

vector.ph977:                                     ; preds = %vector.main.loop.iter.check975
  %i.qg = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec978
  %i.qh = getelementptr i8, ptr %.1341528, i64 %n.vec978
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next987, %vector.body979 ] ; 3 uses
  %next.gep981 = getelementptr i8, ptr %.1339.lcssa, i64 %index980 ; 3 uses
  %next.gep982 = getelementptr i8, ptr %.1341528, i64 %index980 ; 3 uses
  %i.qi = getelementptr i8, ptr %next.gep981, i64 16 ; 2 uses
  %wide.load983 = load <16 x i8>, ptr %next.gep981, align 1, !tbaa !27, !alias.scope !91, !noalias !94
  %wide.load984 = load <16 x i8>, ptr %i.qi, align 1, !tbaa !27, !alias.scope !91, !noalias !94
  %i.qj = getelementptr i8, ptr %next.gep982, i64 16 ; 2 uses
  %wide.load985 = load <16 x i8>, ptr %next.gep982, align 1, !tbaa !27, !alias.scope !94
  %wide.load986 = load <16 x i8>, ptr %i.qj, align 1, !tbaa !27, !alias.scope !94
  store <16 x i8> %wide.load985, ptr %next.gep981, align 1, !tbaa !27, !alias.scope !91, !noalias !94
  store <16 x i8> %wide.load986, ptr %i.qi, align 1, !tbaa !27, !alias.scope !91, !noalias !94
  store <16 x i8> %wide.load983, ptr %next.gep982, align 1, !tbaa !27, !alias.scope !94
  store <16 x i8> %wide.load984, ptr %i.qj, align 1, !tbaa !27, !alias.scope !94
  %index.next987 = add nuw i64 %index980, 32      ; 2 uses
  %i.qk = icmp eq i64 %index.next987, %n.vec978
  br i1 %i.qk, label %middle.block988, label %vector.body979, !llvm.loop !96

middle.block988:                                  ; preds = %vector.body979
  br i1 %cmp.n989, label %swapfunc.exit431, label %vec.epilog.iter.check996

vec.epilog.iter.check996:                         ; preds = %middle.block988
  br i1 %min.epilog.iters.check997, label %.preheader490.preheader, label %vec.epilog.ph998, !prof !34

vec.epilog.ph998:                                 ; preds = %vector.main.loop.iter.check975, %vec.epilog.iter.check996
  %vec.epilog.resume.val990 = phi i64 [ %n.vec978, %vec.epilog.iter.check996 ], [ 0, %vector.main.loop.iter.check975 ]
  %i.ql = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec999
  %i.qm = getelementptr i8, ptr %.1341528, i64 %n.vec999
  br label %vec.epilog.vector.body1000

vec.epilog.vector.body1000:                       ; preds = %vec.epilog.vector.body1000, %vec.epilog.ph998
  %index1001 = phi i64 [ %vec.epilog.resume.val990, %vec.epilog.ph998 ], [ %index.next1006, %vec.epilog.vector.body1000 ] ; 3 uses
  %next.gep1002 = getelementptr i8, ptr %.1339.lcssa, i64 %index1001 ; 2 uses
  %next.gep1003 = getelementptr i8, ptr %.1341528, i64 %index1001 ; 2 uses
  %wide.load1004 = load <4 x i8>, ptr %next.gep1002, align 1, !tbaa !27, !alias.scope !91, !noalias !94
  %wide.load1005 = load <4 x i8>, ptr %next.gep1003, align 1, !tbaa !27, !alias.scope !94
  store <4 x i8> %wide.load1005, ptr %next.gep1002, align 1, !tbaa !27, !alias.scope !91, !noalias !94
  store <4 x i8> %wide.load1004, ptr %next.gep1003, align 1, !tbaa !27, !alias.scope !94
  %index.next1006 = add nuw i64 %index1001, 4     ; 2 uses
  %i.qn = icmp eq i64 %index.next1006, %n.vec999
  br i1 %i.qn, label %vec.epilog.middle.block1007, label %vec.epilog.vector.body1000, !llvm.loop !97

vec.epilog.middle.block1007:                      ; preds = %vec.epilog.vector.body1000
  br i1 %cmp.n1008, label %swapfunc.exit431, label %.preheader490.preheader

.preheader490.preheader:                          ; preds = %vector.memcheck966, %iter.check994, %vec.epilog.iter.check996, %vec.epilog.middle.block1007
  %.020.i425.ph = phi i64 [ %i.i, %iter.check994 ], [ %i.i, %vector.memcheck966 ], [ %i.ag, %vec.epilog.iter.check996 ], [ %i.ah, %vec.epilog.middle.block1007 ]
  %.019.i426.ph = phi ptr [ %.1339.lcssa, %iter.check994 ], [ %.1339.lcssa, %vector.memcheck966 ], [ %i.qg, %vec.epilog.iter.check996 ], [ %i.ql, %vec.epilog.middle.block1007 ]
  %.018.i427.ph = phi ptr [ %.1341528, %iter.check994 ], [ %.1341528, %vector.memcheck966 ], [ %i.qh, %vec.epilog.iter.check996 ], [ %i.qm, %vec.epilog.middle.block1007 ]
  br label %.preheader490

.preheader619.preheader:                          ; preds = %bb.bi
  br i1 %min.iters.check949, label %.preheader619.preheader1581, label %vector.memcheck941

vector.memcheck941:                               ; preds = %.preheader619.preheader
  %scevgep943 = getelementptr i8, ptr %.1339.lcssa, i64 %i.l
  %i.qo = mul i64 %2, %indvar
  %i.qp = sub i64 %i.l, %i.qo
  %scevgep944 = getelementptr i8, ptr %.0340, i64 %i.qp
  %bound0945 = icmp ult ptr %.1339.lcssa, %scevgep944
  %bound1946 = icmp ult ptr %.1341528, %scevgep943
  %found.conflict947 = and i1 %bound0945, %bound1946
  br i1 %found.conflict947, label %.preheader619.preheader1581, label %vector.ph950

vector.ph950:                                     ; preds = %vector.memcheck941
  %i.qq = getelementptr i8, ptr %.1341528, i64 %i.ai
  %i.qr = getelementptr i8, ptr %.1339.lcssa, i64 %i.ai
  br label %vector.body952

vector.body952:                                   ; preds = %vector.body952, %vector.ph950
  %index953 = phi i64 [ 0, %vector.ph950 ], [ %index.next960, %vector.body952 ] ; 2 uses
  %i.qs = shl i64 %index953, 3                    ; 2 uses
  %next.gep954 = getelementptr i8, ptr %.1341528, i64 %i.qs ; 3 uses
  %next.gep955 = getelementptr i8, ptr %.1339.lcssa, i64 %i.qs ; 3 uses
  %i.qt = getelementptr i8, ptr %next.gep955, i64 16 ; 2 uses
  %wide.load956 = load <2 x i64>, ptr %next.gep955, align 8, !tbaa !9, !alias.scope !98, !noalias !101
  %wide.load957 = load <2 x i64>, ptr %i.qt, align 8, !tbaa !9, !alias.scope !98, !noalias !101
  %i.qu = getelementptr i8, ptr %next.gep954, i64 16 ; 2 uses
  %wide.load958 = load <2 x i64>, ptr %next.gep954, align 8, !tbaa !9, !alias.scope !101
  %wide.load959 = load <2 x i64>, ptr %i.qu, align 8, !tbaa !9, !alias.scope !101
  store <2 x i64> %wide.load958, ptr %next.gep955, align 8, !tbaa !9, !alias.scope !98, !noalias !101
  store <2 x i64> %wide.load959, ptr %i.qt, align 8, !tbaa !9, !alias.scope !98, !noalias !101
  store <2 x i64> %wide.load956, ptr %next.gep954, align 8, !tbaa !9, !alias.scope !101
  store <2 x i64> %wide.load957, ptr %i.qu, align 8, !tbaa !9, !alias.scope !101
  %index.next960 = add nuw i64 %index953, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next960, %n.vec951
  br i1 %i.qv, label %middle.block961, label %vector.body952, !llvm.loop !103

middle.block961:                                  ; preds = %vector.body952
  br i1 %cmp.n962, label %swapfunc.exit431, label %.preheader619.preheader1581

.preheader619.preheader1581:                      ; preds = %vector.memcheck941, %.preheader619.preheader, %middle.block961
  %.022.i428.ph = phi ptr [ %.1341528, %vector.memcheck941 ], [ %.1341528, %.preheader619.preheader ], [ %i.qq, %middle.block961 ]
  %.021.i429.ph = phi ptr [ %.1339.lcssa, %vector.memcheck941 ], [ %.1339.lcssa, %.preheader619.preheader ], [ %i.qr, %middle.block961 ]
  %.0.i430.ph = phi i64 [ %i.j, %vector.memcheck941 ], [ %i.j, %.preheader619.preheader ], [ %7, %middle.block961 ]
  br label %.preheader619

.preheader619:                                    ; preds = %.preheader619.preheader1581, %.preheader619
  %.022.i428 = phi ptr [ %i.qz, %.preheader619 ], [ %.022.i428.ph, %.preheader619.preheader1581 ] ; 3 uses
  %.021.i429 = phi ptr [ %i.qy, %.preheader619 ], [ %.021.i429.ph, %.preheader619.preheader1581 ] ; 3 uses
  %.0.i430 = phi i64 [ %i.ra, %.preheader619 ], [ %.0.i430.ph, %.preheader619.preheader1581 ] ; 2 uses
  %i.qw = load i64, ptr %.021.i429, align 8, !tbaa !9
  %i.qx = load i64, ptr %.022.i428, align 8, !tbaa !9
  %i.qy = getelementptr inbounds nuw i8, ptr %.021.i429, i64 8
  store i64 %i.qx, ptr %.021.i429, align 8, !tbaa !9
  %i.qz = getelementptr inbounds nuw i8, ptr %.022.i428, i64 8
  store i64 %i.qw, ptr %.022.i428, align 8, !tbaa !9
  %i.ra = add nsw i64 %.0.i430, -1
  %i.rb = icmp samesign ugt i64 %.0.i430, 1
  br i1 %i.rb, label %.preheader619, label %swapfunc.exit431, !llvm.loop !104

.preheader490:                                    ; preds = %.preheader490.preheader, %.preheader490
  %.020.i425 = phi i64 [ %i.rg, %.preheader490 ], [ %.020.i425.ph, %.preheader490.preheader ] ; 2 uses
  %.019.i426 = phi ptr [ %i.re, %.preheader490 ], [ %.019.i426.ph, %.preheader490.preheader ] ; 3 uses
  %.018.i427 = phi ptr [ %i.rf, %.preheader490 ], [ %.018.i427.ph, %.preheader490.preheader ] ; 3 uses
  %i.rc = load i8, ptr %.019.i426, align 1, !tbaa !27
  %i.rd = load i8, ptr %.018.i427, align 1, !tbaa !27
  %i.re = getelementptr inbounds nuw i8, ptr %.019.i426, i64 1
  store i8 %i.rd, ptr %.019.i426, align 1, !tbaa !27
  %i.rf = getelementptr inbounds nuw i8, ptr %.018.i427, i64 1
  store i8 %i.rc, ptr %.018.i427, align 1, !tbaa !27
  %i.rg = add nsw i64 %.020.i425, -1
  %i.rh = icmp sgt i64 %.020.i425, 1
  br i1 %i.rh, label %.preheader490, label %swapfunc.exit431, !llvm.loop !105

swapfunc.exit431:                                 ; preds = %.preheader490, %.preheader619, %middle.block988, %vec.epilog.middle.block1007, %middle.block961, %bb.bh
  %i.ri = getelementptr inbounds nuw i8, ptr %.1339.lcssa, i64 %2
  %i.rj = getelementptr inbounds i8, ptr %.1341528, i64 %i.a
  br label %bb.aq

.critedge2._crit_edge:                            ; preds = %.critedge2, %bb.bg
  %.3.lcssa = phi i32 [ %.4, %bb.bg ], [ %.1346.lcssa, %.critedge2 ]
  %.1343.lcssa = phi ptr [ %.2344, %bb.bg ], [ %.0342, %.critedge2 ]
  %.1341.lcssa = phi ptr [ %i.qb, %bb.bg ], [ %.0340, %.critedge2 ]
  %i.rk = icmp eq i32 %.3.lcssa, 0
  %i.rl = mul i64 %.0336542, %2                   ; 4 uses
  %i.rm = getelementptr i8, ptr %.0543, i64 %i.rl ; 9 uses
  br i1 %i.rk, label %.preheader484, label %bb.bj

.preheader484:                                    ; preds = %.critedge2._crit_edge
  %i.rn = icmp samesign ult i64 %2, %i.rl
  br i1 %i.rn, label %.preheader483.lr.ph, label %.loopexit

.preheader483.lr.ph:                              ; preds = %.preheader484
  br i1 %i.lr, label %.preheader483.lr.ph.split.us, label %.preheader483.lr.ph.split

.preheader483.lr.ph.split.us:                     ; preds = %.preheader483.lr.ph
  br i1 %.not387, label %.preheader483.us.us, label %.preheader483.us

.preheader483.us.us:                              ; preds = %.preheader483.lr.ph.split.us, %.critedge6.us.us
  %.3354557.us.us = phi ptr [ %i.rp, %.critedge6.us.us ], [ %i.mu, %.preheader483.lr.ph.split.us ] ; 4 uses
  %i.ro = icmp ugt ptr %.3354557.us.us, %.0543
  br i1 %i.ro, label %.lr.ph552.us.us.preheader, label %.critedge6.us.us

.lr.ph552.us.us.preheader:                        ; preds = %.preheader483.us.us
  %.pre683 = load i32, ptr %.3354557.us.us, align 4, !tbaa !8
  br label %.lr.ph552.us.us

.critedge6.us.us:                                 ; preds = %swapfunc.exit438.us.us.us.us, %.lr.ph552.us.us, %.preheader483.us.us
  %i.rp = getelementptr inbounds nuw i8, ptr %.3354557.us.us, i64 %2 ; 2 uses
  %i.rq = icmp ult ptr %i.rp, %i.rm
  br i1 %i.rq, label %.preheader483.us.us, label %.loopexit

.lr.ph552.us.us:                                  ; preds = %.lr.ph552.us.us.preheader, %swapfunc.exit438.us.us.us.us
  %i.rr = phi i32 [ %i.rz, %swapfunc.exit438.us.us.us.us ], [ %.pre683, %.lr.ph552.us.us.preheader ]
  %.2350551.us.us.us.us = phi ptr [ %i.rs, %swapfunc.exit438.us.us.us.us ], [ %.3354557.us.us, %.lr.ph552.us.us.preheader ] ; 3 uses
  %i.rs = getelementptr inbounds i8, ptr %.2350551.us.us.us.us, i64 %i.a ; 5 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !8
  %i.ru = sub i32 %i.rt, %i.rr
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %swapfunc.exit438.us.us.us.us, label %.critedge6.us.us

swapfunc.exit438.us.us.us.us:                     ; preds = %.lr.ph552.us.us
  %i.rw = load i64, ptr %.2350551.us.us.us.us, align 8, !tbaa !9 ; 2 uses
  %i.rx = load i64, ptr %i.rs, align 8, !tbaa !9
  store i64 %i.rx, ptr %.2350551.us.us.us.us, align 8, !tbaa !9
  store i64 %i.rw, ptr %i.rs, align 8, !tbaa !9
  %i.ry = icmp ugt ptr %i.rs, %.0543
  %i.rz = trunc i64 %i.rw to i32
  br i1 %i.ry, label %.lr.ph552.us.us, label %.critedge6.us.us

.preheader483.us:                                 ; preds = %.preheader483.lr.ph.split.us, %.critedge6.us
  %.3354557.us = phi ptr [ %i.sb, %.critedge6.us ], [ %i.mu, %.preheader483.lr.ph.split.us ] ; 3 uses
  %i.sa = icmp ugt ptr %.3354557.us, %.0543
  br i1 %i.sa, label %.lr.ph552.us, label %.critedge6.us

.critedge6.us:                                    ; preds = %swapfunc.exit438.us.us564, %.lr.ph552.us, %.preheader483.us
  %i.sb = getelementptr inbounds nuw i8, ptr %.3354557.us, i64 %2 ; 2 uses
  %i.sc = icmp ult ptr %i.sb, %i.rm
  br i1 %i.sc, label %.preheader483.us, label %.loopexit

.lr.ph552.us:                                     ; preds = %.preheader483.us, %swapfunc.exit438.us.us564
  %.2350551.us.us563 = phi ptr [ %i.sd, %swapfunc.exit438.us.us564 ], [ %.3354557.us, %.preheader483.us ] ; 4 uses
  %i.sd = getelementptr inbounds i8, ptr %.2350551.us.us563, i64 %i.a ; 5 uses
  %i.se = tail call i32 %3(ptr noundef nonnull %i.sd, ptr noundef nonnull %.2350551.us.us563) #2
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %swapfunc.exit438.us.us564, label %.critedge6.us

swapfunc.exit438.us.us564:                        ; preds = %.lr.ph552.us
  %i.sg = load i64, ptr %.2350551.us.us563, align 8, !tbaa !9
  %i.sh = load i64, ptr %i.sd, align 8, !tbaa !9
  store i64 %i.sh, ptr %.2350551.us.us563, align 8, !tbaa !9
  store i64 %i.sg, ptr %i.sd, align 8, !tbaa !9
  %i.si = icmp ugt ptr %i.sd, %.0543
  br i1 %i.si, label %.lr.ph552.us, label %.critedge6.us

.preheader483.lr.ph.split:                        ; preds = %.preheader483.lr.ph
  br i1 %or.cond544, label %.preheader483.lr.ph.split.split.us, label %.preheader483.lr.ph.split.split

.preheader483.lr.ph.split.split.us:               ; preds = %.preheader483.lr.ph.split
  %i.sj = and i64 %i.i, -8                        ; 2 uses
  %i.sk = add i64 %2, %i.sj
  %i.sl = add i64 %i.sk, 8                        ; 2 uses
  %.not1560 = icmp eq i64 %i.j, 0
  %i.sm = select i1 %.not1560, i64 0, i64 8       ; 4 uses
  %i.sn = add nsw i64 %i.sj, 8                    ; 2 uses
  br i1 %.not387, label %.preheader483.us568.us.preheader, label %.preheader483.us568.preheader

.preheader483.us568.preheader:                    ; preds = %.preheader483.lr.ph.split.split.us
  %min.iters.check1337 = icmp ult i64 %i.i, 32
  %n.vec1339 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.so = shl nuw i64 %n.vec1339, 3               ; 2 uses
  %10 = and i64 %i.j, 3
  %cmp.n1350 = icmp eq i64 %i.j, %n.vec1339
  br label %.preheader483.us568

.preheader483.us568.us.preheader:                 ; preds = %.preheader483.lr.ph.split.split.us
  %min.iters.check1367 = icmp ult i64 %i.i, 32
  %n.vec1369 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.sp = shl nuw i64 %n.vec1369, 3               ; 2 uses
  %11 = and i64 %i.j, 3
  %cmp.n1380 = icmp eq i64 %i.j, %n.vec1369
  br label %.preheader483.us568.us

.preheader483.us568.us:                           ; preds = %.preheader483.us568.us.preheader, %.critedge6.us570.us
  %indvar1356 = phi i64 [ %indvar.next1357, %.critedge6.us570.us ], [ 0, %.preheader483.us568.us.preheader ] ; 2 uses
  %.3354557.us569.us = phi ptr [ %i.su, %.critedge6.us570.us ], [ %i.mu, %.preheader483.us568.us.preheader ] ; 4 uses
  %i.sq = mul i64 %2, %indvar1356                 ; 3 uses
  %i.sr = icmp ugt ptr %.3354557.us569.us, %.0543
  br i1 %i.sr, label %.lr.ph552.us571.us.preheader, label %.critedge6.us570.us

.lr.ph552.us571.us.preheader:                     ; preds = %.preheader483.us568.us
  %.pre682 = load i32, ptr %.3354557.us569.us, align 4, !tbaa !8
  %i.ss = add i64 %i.sl, %i.sq
  %i.st = add i64 %i.sn, %i.sq
  br label %.lr.ph552.us571.us

.critedge6.us570.us:                              ; preds = %swapfunc.exit438.loopexit.us.us.us.us, %.lr.ph552.us571.us, %.preheader483.us568.us
  %i.su = getelementptr inbounds nuw i8, ptr %.3354557.us569.us, i64 %2 ; 2 uses
  %i.sv = icmp ult ptr %i.su, %i.rm
  %indvar.next1357 = add i64 %indvar1356, 1
  br i1 %i.sv, label %.preheader483.us568.us, label %.loopexit

.lr.ph552.us571.us:                               ; preds = %.lr.ph552.us571.us.preheader, %swapfunc.exit438.loopexit.us.us.us.us
  %indvar1358 = phi i64 [ 0, %.lr.ph552.us571.us.preheader ], [ %indvar.next1359, %swapfunc.exit438.loopexit.us.us.us.us ] ; 2 uses
  %i.sw = phi i32 [ %.pre682, %.lr.ph552.us571.us.preheader ], [ %i.te, %swapfunc.exit438.loopexit.us.us.us.us ]
  %.2350551.us554.us.us.us = phi ptr [ %.3354557.us569.us, %.lr.ph552.us571.us.preheader ], [ %i.td, %swapfunc.exit438.loopexit.us.us.us.us ] ; 6 uses
  %i.sx = mul i64 %2, %indvar1358                 ; 3 uses
  %i.sy = add i64 %i.sm, %i.sx
  %i.sz = sub i64 %i.ss, %i.sy
  %scevgep1360 = getelementptr i8, ptr %.0543, i64 %i.sz
  %i.ta = sub i64 %i.sq, %i.sx
  %scevgep1361 = getelementptr i8, ptr %.0543, i64 %i.ta
  %i.tb = add i64 %i.sm, %i.sx
  %i.tc = sub i64 %i.st, %i.tb
  %scevgep1362 = getelementptr i8, ptr %.0543, i64 %i.tc
  %i.td = getelementptr inbounds i8, ptr %.2350551.us554.us.us.us, i64 %i.a ; 7 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !8  ; 2 uses
  %i.tf = sub i32 %i.te, %i.sw
  %i.tg = icmp sgt i32 %i.tf, 0
  br i1 %i.tg, label %.preheader777, label %.critedge6.us570.us

.preheader777:                                    ; preds = %.lr.ph552.us571.us
  br i1 %min.iters.check1367, label %scalar.ph1366.preheader, label %vector.memcheck1354

vector.memcheck1354:                              ; preds = %.preheader777
  %bound01363 = icmp ult ptr %.2350551.us554.us.us.us, %scevgep1362
  %bound11364 = icmp ult ptr %scevgep1361, %scevgep1360
  %found.conflict1365 = and i1 %bound01363, %bound11364
  br i1 %found.conflict1365, label %scalar.ph1366.preheader, label %vector.ph1368

vector.ph1368:                                    ; preds = %vector.memcheck1354
  %i.th = getelementptr i8, ptr %i.td, i64 %i.sp
  %i.ti = getelementptr i8, ptr %.2350551.us554.us.us.us, i64 %i.sp
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %vector.ph1368
  %index1371 = phi i64 [ 0, %vector.ph1368 ], [ %index.next1378, %vector.body1370 ] ; 2 uses
  %i.tj = shl i64 %index1371, 3                   ; 2 uses
  %next.gep1372 = getelementptr i8, ptr %i.td, i64 %i.tj ; 3 uses
  %next.gep1373 = getelementptr i8, ptr %.2350551.us554.us.us.us, i64 %i.tj ; 3 uses
  %i.tk = getelementptr i8, ptr %next.gep1373, i64 16 ; 2 uses
  %wide.load1374 = load <2 x i64>, ptr %next.gep1373, align 8, !tbaa !9, !alias.scope !106, !noalias !109
  %wide.load1375 = load <2 x i64>, ptr %i.tk, align 8, !tbaa !9, !alias.scope !106, !noalias !109
  %i.tl = getelementptr i8, ptr %next.gep1372, i64 16 ; 2 uses
  %wide.load1376 = load <2 x i64>, ptr %next.gep1372, align 8, !tbaa !9, !alias.scope !109
  %wide.load1377 = load <2 x i64>, ptr %i.tl, align 8, !tbaa !9, !alias.scope !109
  store <2 x i64> %wide.load1376, ptr %next.gep1373, align 8, !tbaa !9, !alias.scope !106, !noalias !109
  store <2 x i64> %wide.load1377, ptr %i.tk, align 8, !tbaa !9, !alias.scope !106, !noalias !109
  store <2 x i64> %wide.load1374, ptr %next.gep1372, align 8, !tbaa !9, !alias.scope !109
  store <2 x i64> %wide.load1375, ptr %i.tl, align 8, !tbaa !9, !alias.scope !109
  %index.next1378 = add nuw i64 %index1371, 4     ; 2 uses
  %i.tm = icmp eq i64 %index.next1378, %n.vec1369
  br i1 %i.tm, label %middle.block1379, label %vector.body1370, !llvm.loop !111

middle.block1379:                                 ; preds = %vector.body1370
  br i1 %cmp.n1380, label %swapfunc.exit438.loopexit.us.us.us.us, label %scalar.ph1366.preheader

scalar.ph1366.preheader:                          ; preds = %vector.memcheck1354, %.preheader777, %middle.block1379
  %.022.i435.us.us.us.us.ph = phi ptr [ %i.td, %vector.memcheck1354 ], [ %i.td, %.preheader777 ], [ %i.th, %middle.block1379 ]
  %.021.i436.us.us.us.us.ph = phi ptr [ %.2350551.us554.us.us.us, %vector.memcheck1354 ], [ %.2350551.us554.us.us.us, %.preheader777 ], [ %i.ti, %middle.block1379 ]
  %.0.i437.us.us.us.us.ph = phi i64 [ %i.j, %vector.memcheck1354 ], [ %i.j, %.preheader777 ], [ %11, %middle.block1379 ]
  br label %scalar.ph1366

scalar.ph1366:                                    ; preds = %scalar.ph1366.preheader, %scalar.ph1366
  %.022.i435.us.us.us.us = phi ptr [ %i.tq, %scalar.ph1366 ], [ %.022.i435.us.us.us.us.ph, %scalar.ph1366.preheader ] ; 3 uses
  %.021.i436.us.us.us.us = phi ptr [ %i.tp, %scalar.ph1366 ], [ %.021.i436.us.us.us.us.ph, %scalar.ph1366.preheader ] ; 3 uses
  %.0.i437.us.us.us.us = phi i64 [ %i.tr, %scalar.ph1366 ], [ %.0.i437.us.us.us.us.ph, %scalar.ph1366.preheader ] ; 2 uses
  %i.tn = load i64, ptr %.021.i436.us.us.us.us, align 8, !tbaa !9
  %i.to = load i64, ptr %.022.i435.us.us.us.us, align 8, !tbaa !9
  %i.tp = getelementptr inbounds nuw i8, ptr %.021.i436.us.us.us.us, i64 8
  store i64 %i.to, ptr %.021.i436.us.us.us.us, align 8, !tbaa !9
  %i.tq = getelementptr inbounds nuw i8, ptr %.022.i435.us.us.us.us, i64 8
  store i64 %i.tn, ptr %.022.i435.us.us.us.us, align 8, !tbaa !9
  %i.tr = add nsw i64 %.0.i437.us.us.us.us, -1
  %i.ts = icmp samesign ugt i64 %.0.i437.us.us.us.us, 1
  br i1 %i.ts, label %scalar.ph1366, label %swapfunc.exit438.loopexit.us.us.us.us, !llvm.loop !112

swapfunc.exit438.loopexit.us.us.us.us:            ; preds = %scalar.ph1366, %middle.block1379
  %i.tt = icmp ugt ptr %i.td, %.0543
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %i.tt, label %.lr.ph552.us571.us, label %.critedge6.us570.us

.preheader483.us568:                              ; preds = %.preheader483.us568.preheader, %.critedge6.us570
  %indvar1326 = phi i64 [ %indvar.next1327, %.critedge6.us570 ], [ 0, %.preheader483.us568.preheader ] ; 2 uses
  %.3354557.us569 = phi ptr [ %i.ty, %.critedge6.us570 ], [ %i.mu, %.preheader483.us568.preheader ] ; 3 uses
  %i.tu = mul i64 %2, %indvar1326                 ; 3 uses
  %i.tv = icmp ugt ptr %.3354557.us569, %.0543
  br i1 %i.tv, label %.lr.ph552.us571.preheader, label %.critedge6.us570

.lr.ph552.us571.preheader:                        ; preds = %.preheader483.us568
  %i.tw = add i64 %i.sl, %i.tu
  %i.tx = add i64 %i.sn, %i.tu
  br label %.lr.ph552.us571

.critedge6.us570:                                 ; preds = %swapfunc.exit438.loopexit.us.us, %.lr.ph552.us571, %.preheader483.us568
  %i.ty = getelementptr inbounds nuw i8, ptr %.3354557.us569, i64 %2 ; 2 uses
  %i.tz = icmp ult ptr %i.ty, %i.rm
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %i.tz, label %.preheader483.us568, label %.loopexit

.lr.ph552.us571:                                  ; preds = %.lr.ph552.us571.preheader, %swapfunc.exit438.loopexit.us.us
  %indvar1328 = phi i64 [ %indvar.next1329, %swapfunc.exit438.loopexit.us.us ], [ 0, %.lr.ph552.us571.preheader ] ; 2 uses
  %.2350551.us554.us = phi ptr [ %i.ug, %swapfunc.exit438.loopexit.us.us ], [ %.3354557.us569, %.lr.ph552.us571.preheader ] ; 7 uses
  %i.ua = mul i64 %2, %indvar1328                 ; 3 uses
  %i.ub = add i64 %i.sm, %i.ua
  %i.uc = sub i64 %i.tw, %i.ub
  %scevgep1330 = getelementptr i8, ptr %.0543, i64 %i.uc
  %i.ud = sub i64 %i.tu, %i.ua
  %scevgep1331 = getelementptr i8, ptr %.0543, i64 %i.ud
  %i.ue = add i64 %i.sm, %i.ua
  %i.uf = sub i64 %i.tx, %i.ue
  %scevgep1332 = getelementptr i8, ptr %.0543, i64 %i.uf
  %i.ug = getelementptr inbounds i8, ptr %.2350551.us554.us, i64 %i.a ; 7 uses
  %i.uh = tail call i32 %3(ptr noundef nonnull %i.ug, ptr noundef nonnull %.2350551.us554.us) #2
  %i.ui = icmp sgt i32 %i.uh, 0
  br i1 %i.ui, label %.preheader779, label %.critedge6.us570

.preheader779:                                    ; preds = %.lr.ph552.us571
  br i1 %min.iters.check1337, label %scalar.ph1336.preheader, label %vector.memcheck1324

vector.memcheck1324:                              ; preds = %.preheader779
  %bound01333 = icmp ult ptr %.2350551.us554.us, %scevgep1332
  %bound11334 = icmp ult ptr %scevgep1331, %scevgep1330
  %found.conflict1335 = and i1 %bound01333, %bound11334
  br i1 %found.conflict1335, label %scalar.ph1336.preheader, label %vector.ph1338

vector.ph1338:                                    ; preds = %vector.memcheck1324
  %i.uj = getelementptr i8, ptr %i.ug, i64 %i.so
  %i.uk = getelementptr i8, ptr %.2350551.us554.us, i64 %i.so
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1348, %vector.body1340 ] ; 2 uses
  %i.ul = shl i64 %index1341, 3                   ; 2 uses
  %next.gep1342 = getelementptr i8, ptr %i.ug, i64 %i.ul ; 3 uses
  %next.gep1343 = getelementptr i8, ptr %.2350551.us554.us, i64 %i.ul ; 3 uses
  %i.um = getelementptr i8, ptr %next.gep1343, i64 16 ; 2 uses
  %wide.load1344 = load <2 x i64>, ptr %next.gep1343, align 8, !tbaa !9, !alias.scope !113, !noalias !116
  %wide.load1345 = load <2 x i64>, ptr %i.um, align 8, !tbaa !9, !alias.scope !113, !noalias !116
  %i.un = getelementptr i8, ptr %next.gep1342, i64 16 ; 2 uses
  %wide.load1346 = load <2 x i64>, ptr %next.gep1342, align 8, !tbaa !9, !alias.scope !116
  %wide.load1347 = load <2 x i64>, ptr %i.un, align 8, !tbaa !9, !alias.scope !116
  store <2 x i64> %wide.load1346, ptr %next.gep1343, align 8, !tbaa !9, !alias.scope !113, !noalias !116
  store <2 x i64> %wide.load1347, ptr %i.um, align 8, !tbaa !9, !alias.scope !113, !noalias !116
  store <2 x i64> %wide.load1344, ptr %next.gep1342, align 8, !tbaa !9, !alias.scope !116
  store <2 x i64> %wide.load1345, ptr %i.un, align 8, !tbaa !9, !alias.scope !116
  %index.next1348 = add nuw i64 %index1341, 4     ; 2 uses
  %i.uo = icmp eq i64 %index.next1348, %n.vec1339
  br i1 %i.uo, label %middle.block1349, label %vector.body1340, !llvm.loop !118

middle.block1349:                                 ; preds = %vector.body1340
  br i1 %cmp.n1350, label %swapfunc.exit438.loopexit.us.us, label %scalar.ph1336.preheader

scalar.ph1336.preheader:                          ; preds = %vector.memcheck1324, %.preheader779, %middle.block1349
  %.022.i435.us.us.ph = phi ptr [ %i.ug, %vector.memcheck1324 ], [ %i.ug, %.preheader779 ], [ %i.uj, %middle.block1349 ]
  %.021.i436.us.us.ph = phi ptr [ %.2350551.us554.us, %vector.memcheck1324 ], [ %.2350551.us554.us, %.preheader779 ], [ %i.uk, %middle.block1349 ]
  %.0.i437.us.us.ph = phi i64 [ %i.j, %vector.memcheck1324 ], [ %i.j, %.preheader779 ], [ %10, %middle.block1349 ]
  br label %scalar.ph1336

scalar.ph1336:                                    ; preds = %scalar.ph1336.preheader, %scalar.ph1336
  %.022.i435.us.us = phi ptr [ %i.us, %scalar.ph1336 ], [ %.022.i435.us.us.ph, %scalar.ph1336.preheader ] ; 3 uses
  %.021.i436.us.us = phi ptr [ %i.ur, %scalar.ph1336 ], [ %.021.i436.us.us.ph, %scalar.ph1336.preheader ] ; 3 uses
  %.0.i437.us.us = phi i64 [ %i.ut, %scalar.ph1336 ], [ %.0.i437.us.us.ph, %scalar.ph1336.preheader ] ; 2 uses
  %i.up = load i64, ptr %.021.i436.us.us, align 8, !tbaa !9
  %i.uq = load i64, ptr %.022.i435.us.us, align 8, !tbaa !9
  %i.ur = getelementptr inbounds nuw i8, ptr %.021.i436.us.us, i64 8
  store i64 %i.uq, ptr %.021.i436.us.us, align 8, !tbaa !9
  %i.us = getelementptr inbounds nuw i8, ptr %.022.i435.us.us, i64 8
  store i64 %i.up, ptr %.022.i435.us.us, align 8, !tbaa !9
  %i.ut = add nsw i64 %.0.i437.us.us, -1
  %i.uu = icmp samesign ugt i64 %.0.i437.us.us, 1
  br i1 %i.uu, label %scalar.ph1336, label %swapfunc.exit438.loopexit.us.us, !llvm.loop !119

swapfunc.exit438.loopexit.us.us:                  ; preds = %scalar.ph1336, %middle.block1349
  %i.uv = icmp ugt ptr %i.ug, %.0543
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %i.uv, label %.lr.ph552.us571, label %.critedge6.us570

.preheader483.lr.ph.split.split:                  ; preds = %.preheader483.lr.ph.split
  %i.uw = add i64 %2, %i.i
  %i.ux = add i64 %i.uw, 1                        ; 2 uses
  br i1 %.not387, label %.preheader483.us572.preheader, label %.preheader483.preheader

.preheader483.preheader:                          ; preds = %.preheader483.lr.ph.split.split
  %min.iters.check1236 = icmp slt i64 %i.i, 4
  %min.iters.check1238 = icmp slt i64 %i.i, 32
  %i.uy = and i64 %i.n, 28
  %n.vec1240 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.uz = sub nsw i64 %i.i, %n.vec1240
  %cmp.n1251 = icmp eq i64 %i.n, %n.vec1240
  %min.epilog.iters.check1259 = icmp eq i64 %i.uy, 0
  %n.vec1261 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.va = sub nsw i64 %i.i, %n.vec1261
  %cmp.n1270 = icmp eq i64 %i.n, %n.vec1261
  br label %.preheader483

.preheader483.us572.preheader:                    ; preds = %.preheader483.lr.ph.split.split
  %min.iters.check1286 = icmp slt i64 %i.i, 4
  %min.iters.check1288 = icmp slt i64 %i.i, 32
  %i.vb = and i64 %i.n, 28
  %n.vec1290 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.vc = sub nsw i64 %i.i, %n.vec1290
  %cmp.n1301 = icmp eq i64 %i.n, %n.vec1290
  %min.epilog.iters.check1309 = icmp eq i64 %i.vb, 0
  %n.vec1311 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.vd = sub nsw i64 %i.i, %n.vec1311
  %cmp.n1320 = icmp eq i64 %i.n, %n.vec1311
  br label %.preheader483.us572

.preheader483.us572:                              ; preds = %.preheader483.us572.preheader, %.critedge6.us574
  %indvar1275 = phi i64 [ %indvar.next1276, %.critedge6.us574 ], [ 0, %.preheader483.us572.preheader ] ; 2 uses
  %.3354557.us573 = phi ptr [ %i.vi, %.critedge6.us574 ], [ %i.mu, %.preheader483.us572.preheader ] ; 3 uses
  %i.ve = mul i64 %2, %indvar1275                 ; 3 uses
  %i.vf = add i64 %i.n, %i.ve
  %i.vg = icmp ugt ptr %.3354557.us573, %.0543
  br i1 %i.vg, label %.lr.ph552.us575.preheader, label %.critedge6.us574

.lr.ph552.us575.preheader:                        ; preds = %.preheader483.us572
  %i.vh = add i64 %i.ux, %i.ve
  br label %.lr.ph552.us575

.critedge6.us574:                                 ; preds = %swapfunc.exit438.loopexit482.us.us, %.lr.ph552.us575, %.preheader483.us572
  %i.vi = getelementptr inbounds nuw i8, ptr %.3354557.us573, i64 %2 ; 2 uses
  %i.vj = icmp ult ptr %i.vi, %i.rm
  %indvar.next1276 = add i64 %indvar1275, 1
  br i1 %i.vj, label %.preheader483.us572, label %.loopexit

.lr.ph552.us575:                                  ; preds = %.lr.ph552.us575.preheader, %swapfunc.exit438.loopexit482.us.us
  %indvar1277 = phi i64 [ %indvar.next1278, %swapfunc.exit438.loopexit482.us.us ], [ 0, %.lr.ph552.us575.preheader ] ; 2 uses
  %.2350551.us556.us = phi ptr [ %i.vp, %swapfunc.exit438.loopexit482.us.us ], [ %.3354557.us573, %.lr.ph552.us575.preheader ] ; 9 uses
  %i.vk = mul i64 %2, %indvar1277                 ; 3 uses
  %i.vl = add i64 %smin972, %i.vk
  %i.vm = sub i64 %i.vh, %i.vl
  %scevgep1279 = getelementptr i8, ptr %.0543, i64 %i.vm
  %i.vn = sub i64 %i.ve, %i.vk
  %scevgep1280 = getelementptr i8, ptr %.0543, i64 %i.vn
  %i.vo = sub i64 %i.vf, %i.vk
  %scevgep1281 = getelementptr i8, ptr %.0543, i64 %i.vo
  %i.vp = getelementptr inbounds i8, ptr %.2350551.us556.us, i64 %i.a ; 9 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !8
  %i.vr = load i32, ptr %.2350551.us556.us, align 4, !tbaa !8
  %i.vs = sub i32 %i.vq, %i.vr
  %i.vt = icmp sgt i32 %i.vs, 0
  br i1 %i.vt, label %iter.check1306, label %.critedge6.us574

iter.check1306:                                   ; preds = %.lr.ph552.us575
  br i1 %min.iters.check1286, label %.preheader481.us.us.preheader, label %vector.memcheck1274

vector.memcheck1274:                              ; preds = %iter.check1306
  %bound01282 = icmp ult ptr %.2350551.us556.us, %scevgep1281
  %bound11283 = icmp ult ptr %scevgep1280, %scevgep1279
  %found.conflict1284 = and i1 %bound01282, %bound11283
  br i1 %found.conflict1284, label %.preheader481.us.us.preheader, label %vector.main.loop.iter.check1287

vector.main.loop.iter.check1287:                  ; preds = %vector.memcheck1274
  br i1 %min.iters.check1288, label %vec.epilog.ph1310, label %vector.ph1289

vector.ph1289:                                    ; preds = %vector.main.loop.iter.check1287
  %i.vu = getelementptr i8, ptr %.2350551.us556.us, i64 %n.vec1290
  %i.vv = getelementptr i8, ptr %i.vp, i64 %n.vec1290
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1299, %vector.body1291 ] ; 3 uses
  %next.gep1293 = getelementptr i8, ptr %.2350551.us556.us, i64 %index1292 ; 3 uses
  %next.gep1294 = getelementptr i8, ptr %i.vp, i64 %index1292 ; 3 uses
  %i.vw = getelementptr i8, ptr %next.gep1293, i64 16 ; 2 uses
  %wide.load1295 = load <16 x i8>, ptr %next.gep1293, align 1, !tbaa !27, !alias.scope !120, !noalias !123
  %wide.load1296 = load <16 x i8>, ptr %i.vw, align 1, !tbaa !27, !alias.scope !120, !noalias !123
  %i.vx = getelementptr i8, ptr %next.gep1294, i64 16 ; 2 uses
  %wide.load1297 = load <16 x i8>, ptr %next.gep1294, align 1, !tbaa !27, !alias.scope !123
  %wide.load1298 = load <16 x i8>, ptr %i.vx, align 1, !tbaa !27, !alias.scope !123
  store <16 x i8> %wide.load1297, ptr %next.gep1293, align 1, !tbaa !27, !alias.scope !120, !noalias !123
  store <16 x i8> %wide.load1298, ptr %i.vw, align 1, !tbaa !27, !alias.scope !120, !noalias !123
  store <16 x i8> %wide.load1295, ptr %next.gep1294, align 1, !tbaa !27, !alias.scope !123
  store <16 x i8> %wide.load1296, ptr %i.vx, align 1, !tbaa !27, !alias.scope !123
  %index.next1299 = add nuw i64 %index1292, 32    ; 2 uses
  %i.vy = icmp eq i64 %index.next1299, %n.vec1290
  br i1 %i.vy, label %middle.block1300, label %vector.body1291, !llvm.loop !125

middle.block1300:                                 ; preds = %vector.body1291
  br i1 %cmp.n1301, label %swapfunc.exit438.loopexit482.us.us, label %vec.epilog.iter.check1308

vec.epilog.iter.check1308:                        ; preds = %middle.block1300
  br i1 %min.epilog.iters.check1309, label %.preheader481.us.us.preheader, label %vec.epilog.ph1310, !prof !34

vec.epilog.ph1310:                                ; preds = %vector.main.loop.iter.check1287, %vec.epilog.iter.check1308
  %vec.epilog.resume.val1302 = phi i64 [ %n.vec1290, %vec.epilog.iter.check1308 ], [ 0, %vector.main.loop.iter.check1287 ]
  %i.vz = getelementptr i8, ptr %.2350551.us556.us, i64 %n.vec1311
  %i.wa = getelementptr i8, ptr %i.vp, i64 %n.vec1311
  br label %vec.epilog.vector.body1312

vec.epilog.vector.body1312:                       ; preds = %vec.epilog.vector.body1312, %vec.epilog.ph1310
  %index1313 = phi i64 [ %vec.epilog.resume.val1302, %vec.epilog.ph1310 ], [ %index.next1318, %vec.epilog.vector.body1312 ] ; 3 uses
  %next.gep1314 = getelementptr i8, ptr %.2350551.us556.us, i64 %index1313 ; 2 uses
  %next.gep1315 = getelementptr i8, ptr %i.vp, i64 %index1313 ; 2 uses
  %wide.load1316 = load <4 x i8>, ptr %next.gep1314, align 1, !tbaa !27, !alias.scope !120, !noalias !123
  %wide.load1317 = load <4 x i8>, ptr %next.gep1315, align 1, !tbaa !27, !alias.scope !123
  store <4 x i8> %wide.load1317, ptr %next.gep1314, align 1, !tbaa !27, !alias.scope !120, !noalias !123
  store <4 x i8> %wide.load1316, ptr %next.gep1315, align 1, !tbaa !27, !alias.scope !123
  %index.next1318 = add nuw i64 %index1313, 4     ; 2 uses
  %i.wb = icmp eq i64 %index.next1318, %n.vec1311
  br i1 %i.wb, label %vec.epilog.middle.block1319, label %vec.epilog.vector.body1312, !llvm.loop !126

vec.epilog.middle.block1319:                      ; preds = %vec.epilog.vector.body1312
  br i1 %cmp.n1320, label %swapfunc.exit438.loopexit482.us.us, label %.preheader481.us.us.preheader

.preheader481.us.us.preheader:                    ; preds = %vector.memcheck1274, %iter.check1306, %vec.epilog.iter.check1308, %vec.epilog.middle.block1319
  %.020.i432.us.us.ph = phi i64 [ %i.i, %iter.check1306 ], [ %i.i, %vector.memcheck1274 ], [ %i.vc, %vec.epilog.iter.check1308 ], [ %i.vd, %vec.epilog.middle.block1319 ]
  %.019.i433.us.us.ph = phi ptr [ %.2350551.us556.us, %iter.check1306 ], [ %.2350551.us556.us, %vector.memcheck1274 ], [ %i.vu, %vec.epilog.iter.check1308 ], [ %i.vz, %vec.epilog.middle.block1319 ]
  %.018.i434.us.us.ph = phi ptr [ %i.vp, %iter.check1306 ], [ %i.vp, %vector.memcheck1274 ], [ %i.vv, %vec.epilog.iter.check1308 ], [ %i.wa, %vec.epilog.middle.block1319 ]
  br label %.preheader481.us.us

.preheader481.us.us:                              ; preds = %.preheader481.us.us.preheader, %.preheader481.us.us
  %.020.i432.us.us = phi i64 [ %i.wg, %.preheader481.us.us ], [ %.020.i432.us.us.ph, %.preheader481.us.us.preheader ] ; 2 uses
  %.019.i433.us.us = phi ptr [ %i.we, %.preheader481.us.us ], [ %.019.i433.us.us.ph, %.preheader481.us.us.preheader ] ; 3 uses
  %.018.i434.us.us = phi ptr [ %i.wf, %.preheader481.us.us ], [ %.018.i434.us.us.ph, %.preheader481.us.us.preheader ] ; 3 uses
  %i.wc = load i8, ptr %.019.i433.us.us, align 1, !tbaa !27
  %i.wd = load i8, ptr %.018.i434.us.us, align 1, !tbaa !27
  %i.we = getelementptr inbounds nuw i8, ptr %.019.i433.us.us, i64 1
  store i8 %i.wd, ptr %.019.i433.us.us, align 1, !tbaa !27
  %i.wf = getelementptr inbounds nuw i8, ptr %.018.i434.us.us, i64 1
  store i8 %i.wc, ptr %.018.i434.us.us, align 1, !tbaa !27
  %i.wg = add nsw i64 %.020.i432.us.us, -1
  %i.wh = icmp sgt i64 %.020.i432.us.us, 1
  br i1 %i.wh, label %.preheader481.us.us, label %swapfunc.exit438.loopexit482.us.us, !llvm.loop !127

swapfunc.exit438.loopexit482.us.us:               ; preds = %.preheader481.us.us, %vec.epilog.middle.block1319, %middle.block1300
  %i.wi = icmp ugt ptr %i.vp, %.0543
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %i.wi, label %.lr.ph552.us575, label %.critedge6.us574

.preheader483:                                    ; preds = %.preheader483.preheader, %.critedge6
  %indvar1225 = phi i64 [ %indvar.next1226, %.critedge6 ], [ 0, %.preheader483.preheader ] ; 2 uses
  %.3354557 = phi ptr [ %i.xk, %.critedge6 ], [ %i.mu, %.preheader483.preheader ] ; 3 uses
  %i.wj = mul i64 %2, %indvar1225                 ; 3 uses
  %i.wk = add i64 %i.n, %i.wj
  %i.wl = icmp ugt ptr %.3354557, %.0543
  br i1 %i.wl, label %.lr.ph552.preheader, label %.critedge6

.lr.ph552.preheader:                              ; preds = %.preheader483
  %i.wm = add i64 %i.ux, %i.wj
  br label %.lr.ph552

.lr.ph552:                                        ; preds = %.lr.ph552.preheader, %swapfunc.exit438.loopexit482
  %indvar1227 = phi i64 [ %indvar.next1228, %swapfunc.exit438.loopexit482 ], [ 0, %.lr.ph552.preheader ] ; 2 uses
  %.2350551 = phi ptr [ %i.ws, %swapfunc.exit438.loopexit482 ], [ %.3354557, %.lr.ph552.preheader ] ; 9 uses
  %i.wn = mul i64 %2, %indvar1227                 ; 3 uses
  %i.wo = add i64 %smin972, %i.wn
  %i.wp = sub i64 %i.wm, %i.wo
  %scevgep1229 = getelementptr i8, ptr %.0543, i64 %i.wp
  %i.wq = sub i64 %i.wj, %i.wn
  %scevgep1230 = getelementptr i8, ptr %.0543, i64 %i.wq
  %i.wr = sub i64 %i.wk, %i.wn
  %scevgep1231 = getelementptr i8, ptr %.0543, i64 %i.wr
  %i.ws = getelementptr inbounds i8, ptr %.2350551, i64 %i.a ; 9 uses
  %i.wt = tail call i32 %3(ptr noundef nonnull %i.ws, ptr noundef nonnull %.2350551) #2
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %iter.check1256, label %.critedge6

iter.check1256:                                   ; preds = %.lr.ph552
  br i1 %min.iters.check1236, label %.preheader481.preheader, label %vector.memcheck1224

vector.memcheck1224:                              ; preds = %iter.check1256
  %bound01232 = icmp ult ptr %.2350551, %scevgep1231
  %bound11233 = icmp ult ptr %scevgep1230, %scevgep1229
  %found.conflict1234 = and i1 %bound01232, %bound11233
  br i1 %found.conflict1234, label %.preheader481.preheader, label %vector.main.loop.iter.check1237

vector.main.loop.iter.check1237:                  ; preds = %vector.memcheck1224
  br i1 %min.iters.check1238, label %vec.epilog.ph1260, label %vector.ph1239

vector.ph1239:                                    ; preds = %vector.main.loop.iter.check1237
  %i.wv = getelementptr i8, ptr %.2350551, i64 %n.vec1240
  %i.ww = getelementptr i8, ptr %i.ws, i64 %n.vec1240
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1249, %vector.body1241 ] ; 3 uses
  %next.gep1243 = getelementptr i8, ptr %.2350551, i64 %index1242 ; 3 uses
  %next.gep1244 = getelementptr i8, ptr %i.ws, i64 %index1242 ; 3 uses
  %i.wx = getelementptr i8, ptr %next.gep1243, i64 16 ; 2 uses
  %wide.load1245 = load <16 x i8>, ptr %next.gep1243, align 1, !tbaa !27, !alias.scope !128, !noalias !131
  %wide.load1246 = load <16 x i8>, ptr %i.wx, align 1, !tbaa !27, !alias.scope !128, !noalias !131
  %i.wy = getelementptr i8, ptr %next.gep1244, i64 16 ; 2 uses
  %wide.load1247 = load <16 x i8>, ptr %next.gep1244, align 1, !tbaa !27, !alias.scope !131
  %wide.load1248 = load <16 x i8>, ptr %i.wy, align 1, !tbaa !27, !alias.scope !131
  store <16 x i8> %wide.load1247, ptr %next.gep1243, align 1, !tbaa !27, !alias.scope !128, !noalias !131
  store <16 x i8> %wide.load1248, ptr %i.wx, align 1, !tbaa !27, !alias.scope !128, !noalias !131
  store <16 x i8> %wide.load1245, ptr %next.gep1244, align 1, !tbaa !27, !alias.scope !131
  store <16 x i8> %wide.load1246, ptr %i.wy, align 1, !tbaa !27, !alias.scope !131
  %index.next1249 = add nuw i64 %index1242, 32    ; 2 uses
  %i.wz = icmp eq i64 %index.next1249, %n.vec1240
  br i1 %i.wz, label %middle.block1250, label %vector.body1241, !llvm.loop !133

middle.block1250:                                 ; preds = %vector.body1241
  br i1 %cmp.n1251, label %swapfunc.exit438.loopexit482, label %vec.epilog.iter.check1258

vec.epilog.iter.check1258:                        ; preds = %middle.block1250
  br i1 %min.epilog.iters.check1259, label %.preheader481.preheader, label %vec.epilog.ph1260, !prof !34

vec.epilog.ph1260:                                ; preds = %vector.main.loop.iter.check1237, %vec.epilog.iter.check1258
  %vec.epilog.resume.val1252 = phi i64 [ %n.vec1240, %vec.epilog.iter.check1258 ], [ 0, %vector.main.loop.iter.check1237 ]
  %i.xa = getelementptr i8, ptr %.2350551, i64 %n.vec1261
  %i.xb = getelementptr i8, ptr %i.ws, i64 %n.vec1261
  br label %vec.epilog.vector.body1262

vec.epilog.vector.body1262:                       ; preds = %vec.epilog.vector.body1262, %vec.epilog.ph1260
  %index1263 = phi i64 [ %vec.epilog.resume.val1252, %vec.epilog.ph1260 ], [ %index.next1268, %vec.epilog.vector.body1262 ] ; 3 uses
  %next.gep1264 = getelementptr i8, ptr %.2350551, i64 %index1263 ; 2 uses
  %next.gep1265 = getelementptr i8, ptr %i.ws, i64 %index1263 ; 2 uses
  %wide.load1266 = load <4 x i8>, ptr %next.gep1264, align 1, !tbaa !27, !alias.scope !128, !noalias !131
  %wide.load1267 = load <4 x i8>, ptr %next.gep1265, align 1, !tbaa !27, !alias.scope !131
  store <4 x i8> %wide.load1267, ptr %next.gep1264, align 1, !tbaa !27, !alias.scope !128, !noalias !131
  store <4 x i8> %wide.load1266, ptr %next.gep1265, align 1, !tbaa !27, !alias.scope !131
  %index.next1268 = add nuw i64 %index1263, 4     ; 2 uses
  %i.xc = icmp eq i64 %index.next1268, %n.vec1261
  br i1 %i.xc, label %vec.epilog.middle.block1269, label %vec.epilog.vector.body1262, !llvm.loop !134

vec.epilog.middle.block1269:                      ; preds = %vec.epilog.vector.body1262
  br i1 %cmp.n1270, label %swapfunc.exit438.loopexit482, label %.preheader481.preheader

.preheader481.preheader:                          ; preds = %vector.memcheck1224, %iter.check1256, %vec.epilog.iter.check1258, %vec.epilog.middle.block1269
  %.020.i432.ph = phi i64 [ %i.i, %iter.check1256 ], [ %i.i, %vector.memcheck1224 ], [ %i.uz, %vec.epilog.iter.check1258 ], [ %i.va, %vec.epilog.middle.block1269 ]
  %.019.i433.ph = phi ptr [ %.2350551, %iter.check1256 ], [ %.2350551, %vector.memcheck1224 ], [ %i.wv, %vec.epilog.iter.check1258 ], [ %i.xa, %vec.epilog.middle.block1269 ]
  %.018.i434.ph = phi ptr [ %i.ws, %iter.check1256 ], [ %i.ws, %vector.memcheck1224 ], [ %i.ww, %vec.epilog.iter.check1258 ], [ %i.xb, %vec.epilog.middle.block1269 ]
  br label %.preheader481

.preheader481:                                    ; preds = %.preheader481.preheader, %.preheader481
  %.020.i432 = phi i64 [ %i.xh, %.preheader481 ], [ %.020.i432.ph, %.preheader481.preheader ] ; 2 uses
  %.019.i433 = phi ptr [ %i.xf, %.preheader481 ], [ %.019.i433.ph, %.preheader481.preheader ] ; 3 uses
  %.018.i434 = phi ptr [ %i.xg, %.preheader481 ], [ %.018.i434.ph, %.preheader481.preheader ] ; 3 uses
  %i.xd = load i8, ptr %.019.i433, align 1, !tbaa !27
  %i.xe = load i8, ptr %.018.i434, align 1, !tbaa !27
  %i.xf = getelementptr inbounds nuw i8, ptr %.019.i433, i64 1
  store i8 %i.xe, ptr %.019.i433, align 1, !tbaa !27
  %i.xg = getelementptr inbounds nuw i8, ptr %.018.i434, i64 1
  store i8 %i.xd, ptr %.018.i434, align 1, !tbaa !27
  %i.xh = add nsw i64 %.020.i432, -1
  %i.xi = icmp sgt i64 %.020.i432, 1
  br i1 %i.xi, label %.preheader481, label %swapfunc.exit438.loopexit482, !llvm.loop !135

swapfunc.exit438.loopexit482:                     ; preds = %.preheader481, %vec.epilog.middle.block1269, %middle.block1250
  %i.xj = icmp ugt ptr %i.ws, %.0543
  %indvar.next1228 = add i64 %indvar1227, 1
  br i1 %i.xj, label %.lr.ph552, label %.critedge6

.critedge6:                                       ; preds = %swapfunc.exit438.loopexit482, %.lr.ph552, %.preheader483
  %i.xk = getelementptr inbounds nuw i8, ptr %.3354557, i64 %2 ; 2 uses
  %i.xl = icmp ult ptr %i.xk, %i.rm
  %indvar.next1226 = add i64 %indvar1225, 1
  br i1 %i.xl, label %.preheader483, label %.loopexit

bb.bj:                                            ; preds = %.critedge2._crit_edge
  %i.xm = ptrtoint ptr %.1.lcssa to i64           ; 2 uses
  %i.xn = sub i64 %i.xm, %i.gk
  %i.xo = ptrtoint ptr %.1339.lcssa to i64
  %i.xp = sub i64 %i.xo, %i.xm                    ; 2 uses
  %.399 = tail call i64 @llvm.smin.i64(i64 %i.xn, i64 %i.xp) ; 3 uses
  %i.xq = trunc i64 %.399 to i32
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %bb.bk, label %swapfunc.exit445

bb.bk:                                            ; preds = %bb.bj
  %i.xs = and i64 %.399, 2147483647               ; 14 uses
  %i.xt = sub nsw i64 0, %i.xs
  %i.xu = getelementptr i8, ptr %.1339.lcssa, i64 %i.xt ; 12 uses
  br i1 %or.cond544, label %bb.bl, label %iter.check923

iter.check923:                                    ; preds = %bb.bk
  %i.xv = tail call i64 @llvm.umax.i64(i64 %i.xs, i64 1) ; 3 uses
  %min.iters.check903 = icmp samesign ult i64 %i.xs, 4
  br i1 %min.iters.check903, label %.preheader494.preheader, label %vector.memcheck892

vector.memcheck892:                               ; preds = %iter.check923
  %scevgep895 = getelementptr i8, ptr %.0543, i64 %i.xs
  %bound0898 = icmp ult ptr %.0543, %.1339.lcssa
  %bound1899 = icmp ult ptr %i.xu, %scevgep895
  %found.conflict900 = and i1 %bound0898, %bound1899
  br i1 %found.conflict900, label %.preheader494.preheader, label %vector.main.loop.iter.check904

vector.main.loop.iter.check904:                   ; preds = %vector.memcheck892
  %min.iters.check905 = icmp samesign ult i64 %i.xs, 32
  br i1 %min.iters.check905, label %vec.epilog.ph927, label %vector.ph906

vector.ph906:                                     ; preds = %vector.main.loop.iter.check904
  %i.xw = and i64 %i.xv, 28
  %n.vec907 = and i64 %i.xv, 2147483616           ; 6 uses
  %i.xx = sub nsw i64 %i.xs, %n.vec907
  %i.xy = getelementptr i8, ptr %.0543, i64 %n.vec907
  %i.xz = getelementptr i8, ptr %i.xu, i64 %n.vec907
  br label %vector.body908

vector.body908:                                   ; preds = %vector.body908, %vector.ph906
  %index909 = phi i64 [ 0, %vector.ph906 ], [ %index.next916, %vector.body908 ] ; 3 uses
  %next.gep910 = getelementptr i8, ptr %.0543, i64 %index909 ; 3 uses
  %next.gep911 = getelementptr i8, ptr %i.xu, i64 %index909 ; 3 uses
  %i.ya = getelementptr i8, ptr %next.gep910, i64 16 ; 2 uses
  %wide.load912 = load <16 x i8>, ptr %next.gep910, align 1, !tbaa !27, !alias.scope !136, !noalias !139
  %wide.load913 = load <16 x i8>, ptr %i.ya, align 1, !tbaa !27, !alias.scope !136, !noalias !139
  %i.yb = getelementptr i8, ptr %next.gep911, i64 16 ; 2 uses
  %wide.load914 = load <16 x i8>, ptr %next.gep911, align 1, !tbaa !27, !alias.scope !139
  %wide.load915 = load <16 x i8>, ptr %i.yb, align 1, !tbaa !27, !alias.scope !139
  store <16 x i8> %wide.load914, ptr %next.gep910, align 1, !tbaa !27, !alias.scope !136, !noalias !139
  store <16 x i8> %wide.load915, ptr %i.ya, align 1, !tbaa !27, !alias.scope !136, !noalias !139
  store <16 x i8> %wide.load912, ptr %next.gep911, align 1, !tbaa !27, !alias.scope !139
  store <16 x i8> %wide.load913, ptr %i.yb, align 1, !tbaa !27, !alias.scope !139
  %index.next916 = add nuw i64 %index909, 32      ; 2 uses
  %i.yc = icmp eq i64 %index.next916, %n.vec907
  br i1 %i.yc, label %middle.block917, label %vector.body908, !llvm.loop !141

middle.block917:                                  ; preds = %vector.body908
  %cmp.n918 = icmp eq i64 %i.xs, %n.vec907
  br i1 %cmp.n918, label %swapfunc.exit445, label %vec.epilog.iter.check925

vec.epilog.iter.check925:                         ; preds = %middle.block917
  %min.epilog.iters.check926 = icmp eq i64 %i.xw, 0
  br i1 %min.epilog.iters.check926, label %.preheader494.preheader, label %vec.epilog.ph927, !prof !34

vec.epilog.ph927:                                 ; preds = %vector.main.loop.iter.check904, %vec.epilog.iter.check925
  %vec.epilog.resume.val919 = phi i64 [ %n.vec907, %vec.epilog.iter.check925 ], [ 0, %vector.main.loop.iter.check904 ]
  %n.vec928 = and i64 %i.xv, 2147483644           ; 5 uses
  %i.yd = sub nsw i64 %i.xs, %n.vec928
  %i.ye = getelementptr i8, ptr %.0543, i64 %n.vec928
  %i.yf = getelementptr i8, ptr %i.xu, i64 %n.vec928
  br label %vec.epilog.vector.body929

vec.epilog.vector.body929:                        ; preds = %vec.epilog.vector.body929, %vec.epilog.ph927
  %index930 = phi i64 [ %vec.epilog.resume.val919, %vec.epilog.ph927 ], [ %index.next935, %vec.epilog.vector.body929 ] ; 3 uses
  %next.gep931 = getelementptr i8, ptr %.0543, i64 %index930 ; 2 uses
  %next.gep932 = getelementptr i8, ptr %i.xu, i64 %index930 ; 2 uses
  %wide.load933 = load <4 x i8>, ptr %next.gep931, align 1, !tbaa !27, !alias.scope !136, !noalias !139
  %wide.load934 = load <4 x i8>, ptr %next.gep932, align 1, !tbaa !27, !alias.scope !139
  store <4 x i8> %wide.load934, ptr %next.gep931, align 1, !tbaa !27, !alias.scope !136, !noalias !139
  store <4 x i8> %wide.load933, ptr %next.gep932, align 1, !tbaa !27, !alias.scope !139
  %index.next935 = add nuw i64 %index930, 4       ; 2 uses
  %i.yg = icmp eq i64 %index.next935, %n.vec928
  br i1 %i.yg, label %vec.epilog.middle.block936, label %vec.epilog.vector.body929, !llvm.loop !142

vec.epilog.middle.block936:                       ; preds = %vec.epilog.vector.body929
  %cmp.n937 = icmp eq i64 %i.xs, %n.vec928
  br i1 %cmp.n937, label %swapfunc.exit445, label %.preheader494.preheader

.preheader494.preheader:                          ; preds = %vector.memcheck892, %iter.check923, %vec.epilog.iter.check925, %vec.epilog.middle.block936
  %.020.i439.ph = phi i64 [ %i.xs, %iter.check923 ], [ %i.xs, %vector.memcheck892 ], [ %i.xx, %vec.epilog.iter.check925 ], [ %i.yd, %vec.epilog.middle.block936 ]
  %.019.i440.ph = phi ptr [ %.0543, %iter.check923 ], [ %.0543, %vector.memcheck892 ], [ %i.xy, %vec.epilog.iter.check925 ], [ %i.ye, %vec.epilog.middle.block936 ]
  %.018.i441.ph = phi ptr [ %i.xu, %iter.check923 ], [ %i.xu, %vector.memcheck892 ], [ %i.xz, %vec.epilog.iter.check925 ], [ %i.yf, %vec.epilog.middle.block936 ]
  br label %.preheader494

bb.bl:                                            ; preds = %bb.bk
  %i.yh = lshr i64 %i.xs, 3                       ; 6 uses
  %min.iters.check875 = icmp samesign ult i64 %i.xs, 64
  br i1 %min.iters.check875, label %scalar.ph874.preheader, label %vector.memcheck865

vector.memcheck865:                               ; preds = %bb.bl
  %scevgep866 = getelementptr i8, ptr %.0543, i64 8
  %i.yi = and i64 %.399, 2147483640               ; 2 uses
  %.not1555 = icmp eq i64 %i.yh, 0
  %i.yj = select i1 %.not1555, i64 0, i64 8       ; 2 uses
  %i.yk = sub nsw i64 %i.yi, %i.yj
  %scevgep868 = getelementptr i8, ptr %scevgep866, i64 %i.yk
  %scevgep869 = getelementptr i8, ptr %.1339.lcssa, i64 8
  %i.yl = add nuw nsw i64 %i.xs, %i.yj
  %i.ym = sub nsw i64 %i.yi, %i.yl
  %scevgep870 = getelementptr i8, ptr %scevgep869, i64 %i.ym
  %bound0871 = icmp ult ptr %.0543, %scevgep870
  %bound1872 = icmp ult ptr %i.xu, %scevgep868
  %found.conflict873 = and i1 %bound0871, %bound1872
  br i1 %found.conflict873, label %scalar.ph874.preheader, label %vector.ph876

vector.ph876:                                     ; preds = %vector.memcheck865
  %n.vec877 = and i64 %i.yh, 268435452            ; 3 uses
  %i.yn = shl nuw nsw i64 %n.vec877, 3            ; 2 uses
  %i.yo = getelementptr i8, ptr %i.xu, i64 %i.yn
  %i.yp = getelementptr i8, ptr %.0543, i64 %i.yn
  %12 = and i64 %i.yh, 3
  br label %vector.body878

vector.body878:                                   ; preds = %vector.body878, %vector.ph876
  %index879 = phi i64 [ 0, %vector.ph876 ], [ %index.next886, %vector.body878 ] ; 2 uses
  %i.yq = shl i64 %index879, 3                    ; 2 uses
  %next.gep880 = getelementptr i8, ptr %i.xu, i64 %i.yq ; 3 uses
  %next.gep881 = getelementptr i8, ptr %.0543, i64 %i.yq ; 3 uses
  %i.yr = getelementptr i8, ptr %next.gep881, i64 16 ; 2 uses
  %wide.load882 = load <2 x i64>, ptr %next.gep881, align 8, !tbaa !9, !alias.scope !143, !noalias !146
  %wide.load883 = load <2 x i64>, ptr %i.yr, align 8, !tbaa !9, !alias.scope !143, !noalias !146
  %i.ys = getelementptr i8, ptr %next.gep880, i64 16 ; 2 uses
  %wide.load884 = load <2 x i64>, ptr %next.gep880, align 8, !tbaa !9, !alias.scope !146
  %wide.load885 = load <2 x i64>, ptr %i.ys, align 8, !tbaa !9, !alias.scope !146
  store <2 x i64> %wide.load884, ptr %next.gep881, align 8, !tbaa !9, !alias.scope !143, !noalias !146
  store <2 x i64> %wide.load885, ptr %i.yr, align 8, !tbaa !9, !alias.scope !143, !noalias !146
  store <2 x i64> %wide.load882, ptr %next.gep880, align 8, !tbaa !9, !alias.scope !146
  store <2 x i64> %wide.load883, ptr %i.ys, align 8, !tbaa !9, !alias.scope !146
  %index.next886 = add nuw i64 %index879, 4       ; 2 uses
  %i.yt = icmp eq i64 %index.next886, %n.vec877
  br i1 %i.yt, label %middle.block887, label %vector.body878, !llvm.loop !148

middle.block887:                                  ; preds = %vector.body878
  %cmp.n888 = icmp eq i64 %i.yh, %n.vec877
  br i1 %cmp.n888, label %swapfunc.exit445, label %scalar.ph874.preheader

scalar.ph874.preheader:                           ; preds = %vector.memcheck865, %bb.bl, %middle.block887
  %.022.i442.ph = phi ptr [ %i.xu, %vector.memcheck865 ], [ %i.xu, %bb.bl ], [ %i.yo, %middle.block887 ]
  %.021.i443.ph = phi ptr [ %.0543, %vector.memcheck865 ], [ %.0543, %bb.bl ], [ %i.yp, %middle.block887 ]
  %.0.i444.ph = phi i64 [ %i.yh, %vector.memcheck865 ], [ %i.yh, %bb.bl ], [ %12, %middle.block887 ]
  br label %scalar.ph874

scalar.ph874:                                     ; preds = %scalar.ph874.preheader, %scalar.ph874
  %.022.i442 = phi ptr [ %i.yx, %scalar.ph874 ], [ %.022.i442.ph, %scalar.ph874.preheader ] ; 3 uses
  %.021.i443 = phi ptr [ %i.yw, %scalar.ph874 ], [ %.021.i443.ph, %scalar.ph874.preheader ] ; 3 uses
  %.0.i444 = phi i64 [ %i.yy, %scalar.ph874 ], [ %.0.i444.ph, %scalar.ph874.preheader ] ; 2 uses
  %i.yu = load i64, ptr %.021.i443, align 8, !tbaa !9
  %i.yv = load i64, ptr %.022.i442, align 8, !tbaa !9
  %i.yw = getelementptr inbounds nuw i8, ptr %.021.i443, i64 8
  store i64 %i.yv, ptr %.021.i443, align 8, !tbaa !9
  %i.yx = getelementptr inbounds nuw i8, ptr %.022.i442, i64 8
  store i64 %i.yu, ptr %.022.i442, align 8, !tbaa !9
  %i.yy = add nsw i64 %.0.i444, -1
  %i.yz = icmp samesign ugt i64 %.0.i444, 1
  br i1 %i.yz, label %scalar.ph874, label %swapfunc.exit445, !llvm.loop !149

.preheader494:                                    ; preds = %.preheader494.preheader, %.preheader494
  %.020.i439 = phi i64 [ %i.ze, %.preheader494 ], [ %.020.i439.ph, %.preheader494.preheader ] ; 2 uses
  %.019.i440 = phi ptr [ %i.zc, %.preheader494 ], [ %.019.i440.ph, %.preheader494.preheader ] ; 3 uses
  %.018.i441 = phi ptr [ %i.zd, %.preheader494 ], [ %.018.i441.ph, %.preheader494.preheader ] ; 3 uses
  %i.za = load i8, ptr %.019.i440, align 1, !tbaa !27
  %i.zb = load i8, ptr %.018.i441, align 1, !tbaa !27
  %i.zc = getelementptr inbounds nuw i8, ptr %.019.i440, i64 1
  store i8 %i.zb, ptr %.019.i440, align 1, !tbaa !27
  %i.zd = getelementptr inbounds nuw i8, ptr %.018.i441, i64 1
  store i8 %i.za, ptr %.018.i441, align 1, !tbaa !27
  %i.ze = add nsw i64 %.020.i439, -1
  %i.zf = icmp samesign ugt i64 %.020.i439, 1
  br i1 %i.zf, label %.preheader494, label %swapfunc.exit445, !llvm.loop !150

swapfunc.exit445:                                 ; preds = %.preheader494, %scalar.ph874, %middle.block917, %vec.epilog.middle.block936, %middle.block887, %bb.bj
  %i.zg = ptrtoint ptr %.1343.lcssa to i64        ; 2 uses
  %i.zh = ptrtoint ptr %.1341.lcssa to i64
  %i.zi = sub i64 %i.zg, %i.zh                    ; 2 uses
  %i.zj = ptrtoint ptr %i.rm to i64
  %i.zk = add i64 %2, %i.zg
  %i.zl = sub i64 %i.zj, %i.zk
  %.400 = tail call i64 @llvm.umin.i64(i64 %i.zi, i64 %i.zl) ; 3 uses
  %i.zm = trunc i64 %.400 to i32
  %i.zn = icmp sgt i32 %i.zm, 0
  br i1 %i.zn, label %bb.bm, label %swapfunc.exit452

bb.bm:                                            ; preds = %swapfunc.exit445
  %i.zo = and i64 %.400, 2147483647               ; 14 uses
  %i.zp = sub nsw i64 0, %i.zo
  %i.zq = getelementptr i8, ptr %i.rm, i64 %i.zp  ; 12 uses
  br i1 %or.cond544, label %bb.bn, label %iter.check

iter.check:                                       ; preds = %bb.bm
  %i.zr = tail call i64 @llvm.umax.i64(i64 %i.zo, i64 1) ; 3 uses
  %min.iters.check836 = icmp samesign ult i64 %i.zo, 4
  br i1 %min.iters.check836, label %.preheader492.preheader, label %vector.memcheck825

vector.memcheck825:                               ; preds = %iter.check
  %scevgep828 = getelementptr i8, ptr %.1339.lcssa, i64 %i.zo
  %scevgep830 = getelementptr i8, ptr %.0543, i64 %i.rl
  %bound0831 = icmp ult ptr %.1339.lcssa, %scevgep830
  %bound1832 = icmp ult ptr %i.zq, %scevgep828
  %found.conflict833 = and i1 %bound0831, %bound1832
  br i1 %found.conflict833, label %.preheader492.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck825
  %min.iters.check837 = icmp samesign ult i64 %i.zo, 32
  br i1 %min.iters.check837, label %vec.epilog.ph, label %vector.ph838

vector.ph838:                                     ; preds = %vector.main.loop.iter.check
  %i.zs = and i64 %i.zr, 28
  %n.vec839 = and i64 %i.zr, 2147483616           ; 6 uses
  %i.zt = sub nsw i64 %i.zo, %n.vec839
  %i.zu = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec839
  %i.zv = getelementptr i8, ptr %i.zq, i64 %n.vec839
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next848, %vector.body840 ] ; 3 uses
  %next.gep842 = getelementptr i8, ptr %.1339.lcssa, i64 %index841 ; 3 uses
  %next.gep843 = getelementptr i8, ptr %i.zq, i64 %index841 ; 3 uses
  %i.zw = getelementptr i8, ptr %next.gep842, i64 16 ; 2 uses
  %wide.load844 = load <16 x i8>, ptr %next.gep842, align 1, !tbaa !27, !alias.scope !151, !noalias !154
  %wide.load845 = load <16 x i8>, ptr %i.zw, align 1, !tbaa !27, !alias.scope !151, !noalias !154
  %i.zx = getelementptr i8, ptr %next.gep843, i64 16 ; 2 uses
  %wide.load846 = load <16 x i8>, ptr %next.gep843, align 1, !tbaa !27, !alias.scope !154
  %wide.load847 = load <16 x i8>, ptr %i.zx, align 1, !tbaa !27, !alias.scope !154
  store <16 x i8> %wide.load846, ptr %next.gep842, align 1, !tbaa !27, !alias.scope !151, !noalias !154
  store <16 x i8> %wide.load847, ptr %i.zw, align 1, !tbaa !27, !alias.scope !151, !noalias !154
  store <16 x i8> %wide.load844, ptr %next.gep843, align 1, !tbaa !27, !alias.scope !154
  store <16 x i8> %wide.load845, ptr %i.zx, align 1, !tbaa !27, !alias.scope !154
  %index.next848 = add nuw i64 %index841, 32      ; 2 uses
  %i.zy = icmp eq i64 %index.next848, %n.vec839
  br i1 %i.zy, label %middle.block849, label %vector.body840, !llvm.loop !156

middle.block849:                                  ; preds = %vector.body840
  %cmp.n850 = icmp eq i64 %i.zo, %n.vec839
  br i1 %cmp.n850, label %swapfunc.exit452, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block849
  %min.epilog.iters.check = icmp eq i64 %i.zs, 0
  br i1 %min.epilog.iters.check, label %.preheader492.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec839, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec854 = and i64 %i.zr, 2147483644           ; 5 uses
  %i.zz = sub nsw i64 %i.zo, %n.vec854
  %i.aaa = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec854
  %i.aab = getelementptr i8, ptr %i.zq, i64 %n.vec854
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index855 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next860, %vec.epilog.vector.body ] ; 3 uses
  %next.gep856 = getelementptr i8, ptr %.1339.lcssa, i64 %index855 ; 2 uses
  %next.gep857 = getelementptr i8, ptr %i.zq, i64 %index855 ; 2 uses
  %wide.load858 = load <4 x i8>, ptr %next.gep856, align 1, !tbaa !27, !alias.scope !151, !noalias !154
  %wide.load859 = load <4 x i8>, ptr %next.gep857, align 1, !tbaa !27, !alias.scope !154
  store <4 x i8> %wide.load859, ptr %next.gep856, align 1, !tbaa !27, !alias.scope !151, !noalias !154
  store <4 x i8> %wide.load858, ptr %next.gep857, align 1, !tbaa !27, !alias.scope !154
  %index.next860 = add nuw i64 %index855, 4       ; 2 uses
  %i.aac = icmp eq i64 %index.next860, %n.vec854
  br i1 %i.aac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n861 = icmp eq i64 %i.zo, %n.vec854
  br i1 %cmp.n861, label %swapfunc.exit452, label %.preheader492.preheader

.preheader492.preheader:                          ; preds = %vector.memcheck825, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.i446.ph = phi i64 [ %i.zo, %iter.check ], [ %i.zo, %vector.memcheck825 ], [ %i.zt, %vec.epilog.iter.check ], [ %i.zz, %vec.epilog.middle.block ]
  %.019.i447.ph = phi ptr [ %.1339.lcssa, %iter.check ], [ %.1339.lcssa, %vector.memcheck825 ], [ %i.zu, %vec.epilog.iter.check ], [ %i.aaa, %vec.epilog.middle.block ]
  %.018.i448.ph = phi ptr [ %i.zq, %iter.check ], [ %i.zq, %vector.memcheck825 ], [ %i.zv, %vec.epilog.iter.check ], [ %i.aab, %vec.epilog.middle.block ]
  br label %.preheader492

bb.bn:                                            ; preds = %bb.bm
  %i.aad = lshr i64 %i.zo, 3                      ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.zo, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bn
  %scevgep = getelementptr i8, ptr %.1339.lcssa, i64 8
  %i.aae = and i64 %.400, 2147483640              ; 2 uses
  %.not1557 = icmp eq i64 %i.aad, 0
  %i.aaf = select i1 %.not1557, i64 0, i64 8      ; 2 uses
  %i.aag = sub nsw i64 %i.aae, %i.aaf
  %scevgep816 = getelementptr i8, ptr %scevgep, i64 %i.aag
  %scevgep817 = getelementptr i8, ptr %.0543, i64 8
  %i.aah = add i64 %i.rl, %i.aae
  %i.aai = add nuw nsw i64 %i.zo, %i.aaf
  %i.aaj = sub i64 %i.aah, %i.aai
  %scevgep818 = getelementptr i8, ptr %scevgep817, i64 %i.aaj
  %bound0 = icmp ult ptr %.1339.lcssa, %scevgep818
  %bound1 = icmp ult ptr %i.zq, %scevgep816
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aad, 268435452              ; 3 uses
  %i.aak = shl nuw nsw i64 %n.vec, 3              ; 2 uses
  %i.aal = getelementptr i8, ptr %i.zq, i64 %i.aak
  %i.aam = getelementptr i8, ptr %.1339.lcssa, i64 %i.aak
  %13 = and i64 %i.aad, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aan = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.zq, i64 %i.aan ; 3 uses
  %next.gep819 = getelementptr i8, ptr %.1339.lcssa, i64 %i.aan ; 3 uses
  %i.aao = getelementptr i8, ptr %next.gep819, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep819, align 8, !tbaa !9, !alias.scope !158, !noalias !161
  %wide.load820 = load <2 x i64>, ptr %i.aao, align 8, !tbaa !9, !alias.scope !158, !noalias !161
  %i.aap = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load821 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !161
  %wide.load822 = load <2 x i64>, ptr %i.aap, align 8, !tbaa !9, !alias.scope !161
  store <2 x i64> %wide.load821, ptr %next.gep819, align 8, !tbaa !9, !alias.scope !158, !noalias !161
  store <2 x i64> %wide.load822, ptr %i.aao, align 8, !tbaa !9, !alias.scope !158, !noalias !161
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !9, !alias.scope !161
  store <2 x i64> %wide.load820, ptr %i.aap, align 8, !tbaa !9, !alias.scope !161
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aaq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaq, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aad, %n.vec
  br i1 %cmp.n, label %swapfunc.exit452, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bn, %middle.block
  %.022.i449.ph = phi ptr [ %i.zq, %vector.memcheck ], [ %i.zq, %bb.bn ], [ %i.aal, %middle.block ]
  %.021.i450.ph = phi ptr [ %.1339.lcssa, %vector.memcheck ], [ %.1339.lcssa, %bb.bn ], [ %i.aam, %middle.block ]
  %.0.i451.ph = phi i64 [ %i.aad, %vector.memcheck ], [ %i.aad, %bb.bn ], [ %13, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.i449 = phi ptr [ %i.aau, %scalar.ph ], [ %.022.i449.ph, %scalar.ph.preheader ] ; 3 uses
  %.021.i450 = phi ptr [ %i.aat, %scalar.ph ], [ %.021.i450.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.i451 = phi i64 [ %i.aav, %scalar.ph ], [ %.0.i451.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aar = load i64, ptr %.021.i450, align 8, !tbaa !9
  %i.aas = load i64, ptr %.022.i449, align 8, !tbaa !9
  %i.aat = getelementptr inbounds nuw i8, ptr %.021.i450, i64 8
  store i64 %i.aas, ptr %.021.i450, align 8, !tbaa !9
  %i.aau = getelementptr inbounds nuw i8, ptr %.022.i449, i64 8
  store i64 %i.aar, ptr %.022.i449, align 8, !tbaa !9
  %i.aav = add nsw i64 %.0.i451, -1
  %i.aaw = icmp samesign ugt i64 %.0.i451, 1
  br i1 %i.aaw, label %scalar.ph, label %swapfunc.exit452, !llvm.loop !164

.preheader492:                                    ; preds = %.preheader492.preheader, %.preheader492
  %.020.i446 = phi i64 [ %i.abb, %.preheader492 ], [ %.020.i446.ph, %.preheader492.preheader ] ; 2 uses
  %.019.i447 = phi ptr [ %i.aaz, %.preheader492 ], [ %.019.i447.ph, %.preheader492.preheader ] ; 3 uses
  %.018.i448 = phi ptr [ %i.aba, %.preheader492 ], [ %.018.i448.ph, %.preheader492.preheader ] ; 3 uses
  %i.aax = load i8, ptr %.019.i447, align 1, !tbaa !27
  %i.aay = load i8, ptr %.018.i448, align 1, !tbaa !27
  %i.aaz = getelementptr inbounds nuw i8, ptr %.019.i447, i64 1
  store i8 %i.aay, ptr %.019.i447, align 1, !tbaa !27
  %i.aba = getelementptr inbounds nuw i8, ptr %.018.i448, i64 1
  store i8 %i.aax, ptr %.018.i448, align 1, !tbaa !27
  %i.abb = add nsw i64 %.020.i446, -1
  %i.abc = icmp samesign ugt i64 %.020.i446, 1
  br i1 %i.abc, label %.preheader492, label %swapfunc.exit452, !llvm.loop !165

swapfunc.exit452:                                 ; preds = %.preheader492, %scalar.ph, %middle.block849, %vec.epilog.middle.block, %middle.block, %swapfunc.exit445
  %sext392 = shl i64 %i.xp, 32
  %i.abd = ashr exact i64 %sext392, 32            ; 2 uses
  %i.abe = icmp ugt i64 %i.abd, %2
  br i1 %i.abe, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %swapfunc.exit452
  %i.abf = udiv i64 %i.abd, %2
  tail call void @cli_qsort(ptr noundef %.0543, i64 noundef %i.abf, i64 noundef %2, ptr noundef %3)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %swapfunc.exit452
  %sext393 = shl i64 %i.zi, 32
  %i.abg = ashr exact i64 %sext393, 32            ; 3 uses
  %i.abh = icmp ugt i64 %i.abg, %2
  br i1 %i.abh, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.abi = sub nsw i64 0, %i.abg
  %i.abj = getelementptr inbounds i8, ptr %i.rm, i64 %i.abi
  %.fr723 = freeze ptr %i.abj                     ; 3 uses
  %i.abk = udiv i64 %i.abg, %2                    ; 3 uses
  %i.abl = ptrtoint ptr %.fr723 to i64            ; 2 uses
  %i.abm = or i64 %2, %i.abl
  %i.abn = and i64 %i.abm, 7
  %or.cond = icmp eq i64 %i.abn, 0                ; 3 uses
  %i.abo = select i1 %or.cond, i32 %i.c, i32 2    ; 2 uses
  %i.abp = icmp ult i64 %i.abk, 7
  br i1 %i.abp, label %.preheader480, label %bb.b

.loopexit:                                        ; preds = %bb.bp, %.critedge6, %.critedge6.us574, %.critedge6.us570, %.critedge6.us570.us, %.critedge6.us, %.critedge6.us.us, %.critedge, %.critedge.us601, %.critedge.us596, %.critedge.us596.us, %.critedge.us, %.critedge.us.us, %.preheader484, %.preheader480
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_qsort_r(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %2                            ; 15 uses
  %i.b = icmp ne i64 %2, 8
  %i.c = zext i1 %i.b to i32                      ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or i64 %2, %i.d
  %i.f = and i64 %i.e, 7
  %or.cond550 = icmp eq i64 %i.f, 0               ; 3 uses
  %i.g = select i1 %or.cond550, i32 %i.c, i32 2   ; 2 uses
  %i.h = icmp ult i64 %1, 7
  br i1 %i.h, label %.preheader489, label %.lr.ph555

.lr.ph555:                                        ; preds = %bb.a
  %.not396 = icmp eq ptr %3, null                 ; 7 uses
  %sext480 = shl i64 %2, 32
  %i.i = ashr exact i64 %sext480, 32              ; 51 uses
  %i.j = lshr i64 %i.i, 3                         ; 35 uses
  %i.k = and i64 %i.i, -8
  %.not = icmp eq i64 %i.j, 0
  %i.l = select i1 %.not, i64 8, i64 %i.k         ; 2 uses
  %i.m = tail call i64 @llvm.smax.i64(i64 %i.i, i64 1) ; 2 uses
  %smin981 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 1) ; 2 uses
  %i.n = tail call i64 @llvm.smax.i64(i64 %i.i, i64 1) ; 38 uses
  %i.o = and i64 %i.i, -8
  %.not1557 = icmp eq i64 %i.j, 0
  %i.p = select i1 %.not1557, i64 8, i64 %i.o     ; 2 uses
  %i.q = and i64 %i.i, -8                         ; 2 uses
  %.not1558 = icmp eq i64 %i.j, 0
  %i.r = select i1 %.not1558, i64 8, i64 %i.q     ; 2 uses
  %.not1559 = icmp eq i64 %i.j, 0
  %i.s = select i1 %.not1559, i64 8, i64 %i.q     ; 2 uses
  %min.iters.check1195 = icmp slt i64 %i.i, 4
  %min.iters.check1197 = icmp slt i64 %i.i, 32
  %i.t = and i64 %i.n, 28
  %n.vec1199 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.u = sub nsw i64 %i.i, %n.vec1199
  %cmp.n1210 = icmp eq i64 %i.n, %n.vec1199
  %min.epilog.iters.check1218 = icmp eq i64 %i.t, 0
  %n.vec1220 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.v = sub nsw i64 %i.i, %n.vec1220
  %cmp.n1229 = icmp eq i64 %i.n, %n.vec1220
  %min.iters.check1171 = icmp ult i64 %i.i, 32
  %n.vec1173 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.w = shl nuw i64 %n.vec1173, 3                ; 2 uses
  %5 = and i64 %i.j, 3
  %cmp.n1184 = icmp eq i64 %i.j, %n.vec1173
  %min.iters.check1125 = icmp slt i64 %i.i, 4
  %min.iters.check1127 = icmp slt i64 %i.i, 32
  %i.x = and i64 %i.n, 28
  %n.vec1129 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.y = sub nsw i64 %i.i, %n.vec1129
  %cmp.n1140 = icmp eq i64 %i.n, %n.vec1129
  %min.epilog.iters.check1148 = icmp eq i64 %i.x, 0
  %n.vec1150 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.z = sub nsw i64 %i.i, %n.vec1150
  %cmp.n1159 = icmp eq i64 %i.n, %n.vec1150
  %min.iters.check1101 = icmp ult i64 %i.i, 32
  %n.vec1103 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.aa = shl nuw i64 %n.vec1103, 3               ; 2 uses
  %6 = and i64 %i.j, 3
  %cmp.n1114 = icmp eq i64 %i.j, %n.vec1103
  %min.iters.check1053 = icmp slt i64 %i.i, 4
  %min.iters.check1055 = icmp slt i64 %i.i, 32
  %i.ab = and i64 %i.n, 28
  %n.vec1057 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.ac = sub nsw i64 %i.i, %n.vec1057
  %cmp.n1068 = icmp eq i64 %i.n, %n.vec1057
  %min.epilog.iters.check1076 = icmp eq i64 %i.ab, 0
  %n.vec1078 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.ad = sub nsw i64 %i.i, %n.vec1078
  %cmp.n1087 = icmp eq i64 %i.n, %n.vec1078
  %min.iters.check1029 = icmp ult i64 %i.i, 32
  %n.vec1031 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.ae = shl nuw i64 %n.vec1031, 3               ; 2 uses
  %7 = and i64 %i.j, 3
  %cmp.n1042 = icmp eq i64 %i.j, %n.vec1031
  %min.iters.check983 = icmp slt i64 %i.i, 4
  %min.iters.check985 = icmp slt i64 %i.i, 32
  %i.af = and i64 %i.n, 28
  %n.vec987 = and i64 %i.n, 9223372036854775776   ; 6 uses
  %i.ag = sub nsw i64 %i.i, %n.vec987
  %cmp.n998 = icmp eq i64 %i.n, %n.vec987
  %min.epilog.iters.check1006 = icmp eq i64 %i.af, 0
  %n.vec1008 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.ah = sub nsw i64 %i.i, %n.vec1008
  %cmp.n1017 = icmp eq i64 %i.n, %n.vec1008
  %min.iters.check958 = icmp ult i64 %i.i, 48
  %n.vec960 = and i64 %i.j, 2305843009213693948   ; 3 uses
  %i.ai = shl nuw i64 %n.vec960, 3                ; 2 uses
  %8 = and i64 %i.j, 3
  %cmp.n971 = icmp eq i64 %i.j, %n.vec960
  br label %bb.b

.preheader489:                                    ; preds = %bb.bq, %bb.a
  %.0345.lcssa = phi i64 [ %1, %bb.a ], [ %i.abk, %bb.bq ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.fr732, %bb.bq ] ; 26 uses
  %or.cond.lcssa = phi i1 [ %or.cond550, %bb.a ], [ %or.cond, %bb.bq ]
  %.lcssa = phi i32 [ %i.g, %bb.a ], [ %i.abo, %bb.bq ]
  %i.aj = mul i64 %.0345.lcssa, %2                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.aj ; 6 uses
  %.0360591 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %2 ; 6 uses
  %i.al = icmp samesign ult i64 %2, %i.aj
  br i1 %i.al, label %.preheader488.lr.ph, label %.loopexit

.preheader488.lr.ph:                              ; preds = %.preheader489
  %.not404 = icmp eq ptr %3, null                 ; 3 uses
  %i.am = icmp eq i32 %.lcssa, 0
  %sext485 = shl i64 %2, 32
  %i.an = ashr exact i64 %sext485, 32             ; 20 uses
  %i.ao = lshr i64 %i.an, 3                       ; 11 uses
  br i1 %i.am, label %.preheader488.lr.ph.split.us, label %.preheader488.lr.ph.split

.preheader488.lr.ph.split.us:                     ; preds = %.preheader488.lr.ph
  br i1 %.not404, label %.preheader488.us.us, label %.preheader488.us

.preheader488.us.us:                              ; preds = %.preheader488.lr.ph.split.us, %.critedge.us.us
  %.0360592.us.us = phi ptr [ %.0360.us.us, %.critedge.us.us ], [ %.0360591, %.preheader488.lr.ph.split.us ] ; 4 uses
  %i.ap = icmp ugt ptr %.0360592.us.us, %.0.lcssa
  br i1 %i.ap, label %.lr.ph586.us.us.preheader, label %.critedge.us.us

.lr.ph586.us.us.preheader:                        ; preds = %.preheader488.us.us
  %.pre694 = load i32, ptr %.0360592.us.us, align 4, !tbaa !8
  br label %.lr.ph586.us.us

.critedge.us.us:                                  ; preds = %swapfunc.exit.us.us.us.us, %.lr.ph586.us.us, %.preheader488.us.us
  %.0360.us.us = getelementptr inbounds nuw i8, ptr %.0360592.us.us, i64 %2 ; 2 uses
  %i.aq = icmp ult ptr %.0360.us.us, %i.ak
  br i1 %i.aq, label %.preheader488.us.us, label %.loopexit

.lr.ph586.us.us:                                  ; preds = %.lr.ph586.us.us.preheader, %swapfunc.exit.us.us.us.us
  %i.ar = phi i32 [ %i.az, %swapfunc.exit.us.us.us.us ], [ %.pre694, %.lr.ph586.us.us.preheader ]
  %.0357585.us.us.us.us = phi ptr [ %i.as, %swapfunc.exit.us.us.us.us ], [ %.0360592.us.us, %.lr.ph586.us.us.preheader ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.0357585.us.us.us.us, i64 %i.a ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = sub i32 %i.at, %i.ar
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %swapfunc.exit.us.us.us.us, label %.critedge.us.us

swapfunc.exit.us.us.us.us:                        ; preds = %.lr.ph586.us.us
  %i.aw = load i64, ptr %.0357585.us.us.us.us, align 8, !tbaa !9 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !9
  store i64 %i.ax, ptr %.0357585.us.us.us.us, align 8, !tbaa !9
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !9
  %i.ay = icmp ugt ptr %i.as, %.0.lcssa
  %i.az = trunc i64 %i.aw to i32
  br i1 %i.ay, label %.lr.ph586.us.us, label %.critedge.us.us

.preheader488.us:                                 ; preds = %.preheader488.lr.ph.split.us, %.critedge.us
  %.0360592.us = phi ptr [ %.0360.us, %.critedge.us ], [ %.0360591, %.preheader488.lr.ph.split.us ] ; 3 uses
  %i.ba = icmp ugt ptr %.0360592.us, %.0.lcssa
  br i1 %i.ba, label %.lr.ph586.us, label %.critedge.us

.critedge.us:                                     ; preds = %swapfunc.exit.us.us599, %.lr.ph586.us, %.preheader488.us
  %.0360.us = getelementptr inbounds nuw i8, ptr %.0360592.us, i64 %2 ; 2 uses
  %i.bb = icmp ult ptr %.0360.us, %i.ak
  br i1 %i.bb, label %.preheader488.us, label %.loopexit

.lr.ph586.us:                                     ; preds = %.preheader488.us, %swapfunc.exit.us.us599
  %.0357585.us.us598 = phi ptr [ %i.bc, %swapfunc.exit.us.us599 ], [ %.0360592.us, %.preheader488.us ] ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.0357585.us.us598, i64 %i.a ; 5 uses
  %i.bd = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.bc, ptr noundef nonnull %.0357585.us.us598) #2
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %swapfunc.exit.us.us599, label %.critedge.us

swapfunc.exit.us.us599:                           ; preds = %.lr.ph586.us
  %i.bf = load i64, ptr %.0357585.us.us598, align 8, !tbaa !9
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !9
  store i64 %i.bg, ptr %.0357585.us.us598, align 8, !tbaa !9
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !9
  %i.bh = icmp ugt ptr %i.bc, %.0.lcssa
  br i1 %i.bh, label %.lr.ph586.us, label %.critedge.us

.preheader488.lr.ph.split:                        ; preds = %.preheader488.lr.ph
  br i1 %or.cond.lcssa, label %.preheader488.lr.ph.split.split.us, label %.preheader488.lr.ph.split.split

.preheader488.lr.ph.split.split.us:               ; preds = %.preheader488.lr.ph.split
  %i.bi = and i64 %i.an, -8                       ; 2 uses
  %i.bj = add i64 %2, %i.bi
  %i.bk = add i64 %i.bj, 8                        ; 2 uses
  %.not1573 = icmp eq i64 %i.ao, 0
  %i.bl = select i1 %.not1573, i64 0, i64 8       ; 4 uses
  %i.bm = add nsw i64 %i.bi, 8                    ; 2 uses
  br i1 %.not404, label %.preheader488.us603.us.preheader, label %.preheader488.us603.preheader

.preheader488.us603.preheader:                    ; preds = %.preheader488.lr.ph.split.split.us
  %min.iters.check1510 = icmp ult i64 %i.an, 32
  %n.vec1512 = and i64 %i.ao, 2305843009213693948 ; 3 uses
  %i.bn = shl nuw i64 %n.vec1512, 3               ; 2 uses
  %9 = and i64 %i.ao, 3
  %cmp.n1523 = icmp eq i64 %i.ao, %n.vec1512
  br label %.preheader488.us603

.preheader488.us603.us.preheader:                 ; preds = %.preheader488.lr.ph.split.split.us
  %min.iters.check1540 = icmp ult i64 %i.an, 32
  %n.vec1542 = and i64 %i.ao, 2305843009213693948 ; 3 uses
  %i.bo = shl nuw i64 %n.vec1542, 3               ; 2 uses
  %10 = and i64 %i.ao, 3
  %cmp.n1553 = icmp eq i64 %i.ao, %n.vec1542
  br label %.preheader488.us603.us

.preheader488.us603.us:                           ; preds = %.preheader488.us603.us.preheader, %.critedge.us605.us
  %indvar1529 = phi i64 [ %indvar.next1530, %.critedge.us605.us ], [ 0, %.preheader488.us603.us.preheader ] ; 2 uses
  %.0360592.us604.us = phi ptr [ %.0360.us606.us, %.critedge.us605.us ], [ %.0360591, %.preheader488.us603.us.preheader ] ; 4 uses
  %i.bp = mul i64 %2, %indvar1529                 ; 3 uses
  %i.bq = icmp ugt ptr %.0360592.us604.us, %.0.lcssa
  br i1 %i.bq, label %.lr.ph586.us607.us.preheader, label %.critedge.us605.us

.lr.ph586.us607.us.preheader:                     ; preds = %.preheader488.us603.us
  %.pre693 = load i32, ptr %.0360592.us604.us, align 4, !tbaa !8
  %i.br = add i64 %i.bk, %i.bp
  %i.bs = add i64 %i.bm, %i.bp
  br label %.lr.ph586.us607.us

.critedge.us605.us:                               ; preds = %swapfunc.exit.loopexit.us.us.us.us, %.lr.ph586.us607.us, %.preheader488.us603.us
  %.0360.us606.us = getelementptr inbounds nuw i8, ptr %.0360592.us604.us, i64 %2 ; 2 uses
  %i.bt = icmp ult ptr %.0360.us606.us, %i.ak
  %indvar.next1530 = add i64 %indvar1529, 1
  br i1 %i.bt, label %.preheader488.us603.us, label %.loopexit

.lr.ph586.us607.us:                               ; preds = %.lr.ph586.us607.us.preheader, %swapfunc.exit.loopexit.us.us.us.us
  %indvar1531 = phi i64 [ 0, %.lr.ph586.us607.us.preheader ], [ %indvar.next1532, %swapfunc.exit.loopexit.us.us.us.us ] ; 2 uses
  %i.bu = phi i32 [ %.pre693, %.lr.ph586.us607.us.preheader ], [ %i.cc, %swapfunc.exit.loopexit.us.us.us.us ]
  %.0357585.us588.us.us.us = phi ptr [ %.0360592.us604.us, %.lr.ph586.us607.us.preheader ], [ %i.cb, %swapfunc.exit.loopexit.us.us.us.us ] ; 6 uses
  %i.bv = mul i64 %2, %indvar1531                 ; 3 uses
  %i.bw = add i64 %i.bl, %i.bv
  %i.bx = sub i64 %i.br, %i.bw
  %scevgep1533 = getelementptr i8, ptr %.0.lcssa, i64 %i.bx
  %i.by = sub i64 %i.bp, %i.bv
  %scevgep1534 = getelementptr i8, ptr %.0.lcssa, i64 %i.by
  %i.bz = add i64 %i.bl, %i.bv
  %i.ca = sub i64 %i.bs, %i.bz
  %scevgep1535 = getelementptr i8, ptr %.0.lcssa, i64 %i.ca
  %i.cb = getelementptr inbounds i8, ptr %.0357585.us588.us.us.us, i64 %i.a ; 7 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 2 uses
  %i.cd = sub i32 %i.cc, %i.bu
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader778, label %.critedge.us605.us

.preheader778:                                    ; preds = %.lr.ph586.us607.us
  br i1 %min.iters.check1540, label %scalar.ph1539.preheader, label %vector.memcheck1527

vector.memcheck1527:                              ; preds = %.preheader778
  %bound01536 = icmp ult ptr %.0357585.us588.us.us.us, %scevgep1535
  %bound11537 = icmp ult ptr %scevgep1534, %scevgep1533
  %found.conflict1538 = and i1 %bound01536, %bound11537
  br i1 %found.conflict1538, label %scalar.ph1539.preheader, label %vector.ph1541

vector.ph1541:                                    ; preds = %vector.memcheck1527
  %i.cf = getelementptr i8, ptr %i.cb, i64 %i.bo
  %i.cg = getelementptr i8, ptr %.0357585.us588.us.us.us, i64 %i.bo
  br label %vector.body1543

vector.body1543:                                  ; preds = %vector.body1543, %vector.ph1541
  %index1544 = phi i64 [ 0, %vector.ph1541 ], [ %index.next1551, %vector.body1543 ] ; 2 uses
  %i.ch = shl i64 %index1544, 3                   ; 2 uses
  %next.gep1545 = getelementptr i8, ptr %i.cb, i64 %i.ch ; 3 uses
  %next.gep1546 = getelementptr i8, ptr %.0357585.us588.us.us.us, i64 %i.ch ; 3 uses
  %i.ci = getelementptr i8, ptr %next.gep1546, i64 16 ; 2 uses
  %wide.load1547 = load <2 x i64>, ptr %next.gep1546, align 8, !tbaa !9, !alias.scope !166, !noalias !169
  %wide.load1548 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !9, !alias.scope !166, !noalias !169
  %i.cj = getelementptr i8, ptr %next.gep1545, i64 16 ; 2 uses
  %wide.load1549 = load <2 x i64>, ptr %next.gep1545, align 8, !tbaa !9, !alias.scope !169
  %wide.load1550 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !9, !alias.scope !169
  store <2 x i64> %wide.load1549, ptr %next.gep1546, align 8, !tbaa !9, !alias.scope !166, !noalias !169
  store <2 x i64> %wide.load1550, ptr %i.ci, align 8, !tbaa !9, !alias.scope !166, !noalias !169
  store <2 x i64> %wide.load1547, ptr %next.gep1545, align 8, !tbaa !9, !alias.scope !169
  store <2 x i64> %wide.load1548, ptr %i.cj, align 8, !tbaa !9, !alias.scope !169
  %index.next1551 = add nuw i64 %index1544, 4     ; 2 uses
  %i.ck = icmp eq i64 %index.next1551, %n.vec1542
  br i1 %i.ck, label %middle.block1552, label %vector.body1543, !llvm.loop !171

middle.block1552:                                 ; preds = %vector.body1543
  br i1 %cmp.n1553, label %swapfunc.exit.loopexit.us.us.us.us, label %scalar.ph1539.preheader

scalar.ph1539.preheader:                          ; preds = %vector.memcheck1527, %.preheader778, %middle.block1552
  %.022.i.us.us.us.us.ph = phi ptr [ %i.cb, %vector.memcheck1527 ], [ %i.cb, %.preheader778 ], [ %i.cf, %middle.block1552 ]
  %.021.i.us.us.us.us.ph = phi ptr [ %.0357585.us588.us.us.us, %vector.memcheck1527 ], [ %.0357585.us588.us.us.us, %.preheader778 ], [ %i.cg, %middle.block1552 ]
  %.0.i.us.us.us.us.ph = phi i64 [ %i.ao, %vector.memcheck1527 ], [ %i.ao, %.preheader778 ], [ %10, %middle.block1552 ]
  br label %scalar.ph1539

scalar.ph1539:                                    ; preds = %scalar.ph1539.preheader, %scalar.ph1539
  %.022.i.us.us.us.us = phi ptr [ %i.co, %scalar.ph1539 ], [ %.022.i.us.us.us.us.ph, %scalar.ph1539.preheader ] ; 3 uses
  %.021.i.us.us.us.us = phi ptr [ %i.cn, %scalar.ph1539 ], [ %.021.i.us.us.us.us.ph, %scalar.ph1539.preheader ] ; 3 uses
  %.0.i.us.us.us.us = phi i64 [ %i.cp, %scalar.ph1539 ], [ %.0.i.us.us.us.us.ph, %scalar.ph1539.preheader ] ; 2 uses
  %i.cl = load i64, ptr %.021.i.us.us.us.us, align 8, !tbaa !9
  %i.cm = load i64, ptr %.022.i.us.us.us.us, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i.us.us.us.us, i64 8
  store i64 %i.cm, ptr %.021.i.us.us.us.us, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %.022.i.us.us.us.us, i64 8
  store i64 %i.cl, ptr %.022.i.us.us.us.us, align 8, !tbaa !9
  %i.cp = add nsw i64 %.0.i.us.us.us.us, -1
  %i.cq = icmp samesign ugt i64 %.0.i.us.us.us.us, 1
  br i1 %i.cq, label %scalar.ph1539, label %swapfunc.exit.loopexit.us.us.us.us, !llvm.loop !172

swapfunc.exit.loopexit.us.us.us.us:               ; preds = %scalar.ph1539, %middle.block1552
  %i.cr = icmp ugt ptr %i.cb, %.0.lcssa
  %indvar.next1532 = add i64 %indvar1531, 1
  br i1 %i.cr, label %.lr.ph586.us607.us, label %.critedge.us605.us

.preheader488.us603:                              ; preds = %.preheader488.us603.preheader, %.critedge.us605
  %indvar1499 = phi i64 [ %indvar.next1500, %.critedge.us605 ], [ 0, %.preheader488.us603.preheader ] ; 2 uses
  %.0360592.us604 = phi ptr [ %.0360.us606, %.critedge.us605 ], [ %.0360591, %.preheader488.us603.preheader ] ; 3 uses
  %i.cs = mul i64 %2, %indvar1499                 ; 3 uses
  %i.ct = icmp ugt ptr %.0360592.us604, %.0.lcssa
  br i1 %i.ct, label %.lr.ph586.us607.preheader, label %.critedge.us605

.lr.ph586.us607.preheader:                        ; preds = %.preheader488.us603
  %i.cu = add i64 %i.bk, %i.cs
  %i.cv = add i64 %i.bm, %i.cs
  br label %.lr.ph586.us607

.critedge.us605:                                  ; preds = %swapfunc.exit.loopexit.us.us, %.lr.ph586.us607, %.preheader488.us603
  %.0360.us606 = getelementptr inbounds nuw i8, ptr %.0360592.us604, i64 %2 ; 2 uses
  %i.cw = icmp ult ptr %.0360.us606, %i.ak
  %indvar.next1500 = add i64 %indvar1499, 1
  br i1 %i.cw, label %.preheader488.us603, label %.loopexit

.lr.ph586.us607:                                  ; preds = %.lr.ph586.us607.preheader, %swapfunc.exit.loopexit.us.us
  %indvar1501 = phi i64 [ %indvar.next1502, %swapfunc.exit.loopexit.us.us ], [ 0, %.lr.ph586.us607.preheader ] ; 2 uses
  %.0357585.us588.us = phi ptr [ %i.dd, %swapfunc.exit.loopexit.us.us ], [ %.0360592.us604, %.lr.ph586.us607.preheader ] ; 7 uses
  %i.cx = mul i64 %2, %indvar1501                 ; 3 uses
  %i.cy = add i64 %i.bl, %i.cx
  %i.cz = sub i64 %i.cu, %i.cy
  %scevgep1503 = getelementptr i8, ptr %.0.lcssa, i64 %i.cz
  %i.da = sub i64 %i.cs, %i.cx
  %scevgep1504 = getelementptr i8, ptr %.0.lcssa, i64 %i.da
  %i.db = add i64 %i.bl, %i.cx
  %i.dc = sub i64 %i.cv, %i.db
  %scevgep1505 = getelementptr i8, ptr %.0.lcssa, i64 %i.dc
  %i.dd = getelementptr inbounds i8, ptr %.0357585.us588.us, i64 %i.a ; 7 uses
  %i.de = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.dd, ptr noundef nonnull %.0357585.us588.us) #2
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader780, label %.critedge.us605

.preheader780:                                    ; preds = %.lr.ph586.us607
  br i1 %min.iters.check1510, label %scalar.ph1509.preheader, label %vector.memcheck1497

vector.memcheck1497:                              ; preds = %.preheader780
  %bound01506 = icmp ult ptr %.0357585.us588.us, %scevgep1505
  %bound11507 = icmp ult ptr %scevgep1504, %scevgep1503
  %found.conflict1508 = and i1 %bound01506, %bound11507
  br i1 %found.conflict1508, label %scalar.ph1509.preheader, label %vector.ph1511

vector.ph1511:                                    ; preds = %vector.memcheck1497
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.bn
  %i.dh = getelementptr i8, ptr %.0357585.us588.us, i64 %i.bn
  br label %vector.body1513

vector.body1513:                                  ; preds = %vector.body1513, %vector.ph1511
  %index1514 = phi i64 [ 0, %vector.ph1511 ], [ %index.next1521, %vector.body1513 ] ; 2 uses
  %i.di = shl i64 %index1514, 3                   ; 2 uses
  %next.gep1515 = getelementptr i8, ptr %i.dd, i64 %i.di ; 3 uses
  %next.gep1516 = getelementptr i8, ptr %.0357585.us588.us, i64 %i.di ; 3 uses
  %i.dj = getelementptr i8, ptr %next.gep1516, i64 16 ; 2 uses
  %wide.load1517 = load <2 x i64>, ptr %next.gep1516, align 8, !tbaa !9, !alias.scope !173, !noalias !176
  %wide.load1518 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !9, !alias.scope !173, !noalias !176
  %i.dk = getelementptr i8, ptr %next.gep1515, i64 16 ; 2 uses
  %wide.load1519 = load <2 x i64>, ptr %next.gep1515, align 8, !tbaa !9, !alias.scope !176
  %wide.load1520 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !9, !alias.scope !176
  store <2 x i64> %wide.load1519, ptr %next.gep1516, align 8, !tbaa !9, !alias.scope !173, !noalias !176
  store <2 x i64> %wide.load1520, ptr %i.dj, align 8, !tbaa !9, !alias.scope !173, !noalias !176
  store <2 x i64> %wide.load1517, ptr %next.gep1515, align 8, !tbaa !9, !alias.scope !176
  store <2 x i64> %wide.load1518, ptr %i.dk, align 8, !tbaa !9, !alias.scope !176
  %index.next1521 = add nuw i64 %index1514, 4     ; 2 uses
  %i.dl = icmp eq i64 %index.next1521, %n.vec1512
  br i1 %i.dl, label %middle.block1522, label %vector.body1513, !llvm.loop !178

middle.block1522:                                 ; preds = %vector.body1513
  br i1 %cmp.n1523, label %swapfunc.exit.loopexit.us.us, label %scalar.ph1509.preheader

scalar.ph1509.preheader:                          ; preds = %vector.memcheck1497, %.preheader780, %middle.block1522
  %.022.i.us.us.ph = phi ptr [ %i.dd, %vector.memcheck1497 ], [ %i.dd, %.preheader780 ], [ %i.dg, %middle.block1522 ]
  %.021.i.us.us.ph = phi ptr [ %.0357585.us588.us, %vector.memcheck1497 ], [ %.0357585.us588.us, %.preheader780 ], [ %i.dh, %middle.block1522 ]
  %.0.i.us.us.ph = phi i64 [ %i.ao, %vector.memcheck1497 ], [ %i.ao, %.preheader780 ], [ %9, %middle.block1522 ]
  br label %scalar.ph1509

scalar.ph1509:                                    ; preds = %scalar.ph1509.preheader, %scalar.ph1509
  %.022.i.us.us = phi ptr [ %i.dp, %scalar.ph1509 ], [ %.022.i.us.us.ph, %scalar.ph1509.preheader ] ; 3 uses
  %.021.i.us.us = phi ptr [ %i.do, %scalar.ph1509 ], [ %.021.i.us.us.ph, %scalar.ph1509.preheader ] ; 3 uses
  %.0.i.us.us = phi i64 [ %i.dq, %scalar.ph1509 ], [ %.0.i.us.us.ph, %scalar.ph1509.preheader ] ; 2 uses
  %i.dm = load i64, ptr %.021.i.us.us, align 8, !tbaa !9
  %i.dn = load i64, ptr %.022.i.us.us, align 8, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 8
  store i64 %i.dn, ptr %.021.i.us.us, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 8
  store i64 %i.dm, ptr %.022.i.us.us, align 8, !tbaa !9
  %i.dq = add nsw i64 %.0.i.us.us, -1
  %i.dr = icmp samesign ugt i64 %.0.i.us.us, 1
  br i1 %i.dr, label %scalar.ph1509, label %swapfunc.exit.loopexit.us.us, !llvm.loop !179

swapfunc.exit.loopexit.us.us:                     ; preds = %scalar.ph1509, %middle.block1522
  %i.ds = icmp ugt ptr %i.dd, %.0.lcssa
  %indvar.next1502 = add i64 %indvar1501, 1
  br i1 %i.ds, label %.lr.ph586.us607, label %.critedge.us605

.preheader488.lr.ph.split.split:                  ; preds = %.preheader488.lr.ph.split
  %i.dt = add i64 %2, %i.an
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %smin1446 = tail call i64 @llvm.smin.i64(i64 %i.an, i64 1) ; 2 uses
  %i.dv = tail call i64 @llvm.smax.i64(i64 %i.an, i64 1) ; 2 uses
  %i.dw = tail call i64 @llvm.smax.i64(i64 %i.an, i64 1) ; 10 uses
  br i1 %.not404, label %.preheader488.us608.preheader, label %.preheader488.preheader

.preheader488.preheader:                          ; preds = %.preheader488.lr.ph.split.split
  %min.iters.check1407 = icmp slt i64 %i.an, 4
  %min.iters.check1409 = icmp slt i64 %i.an, 32
  %i.dx = and i64 %i.dw, 28
  %n.vec1411 = and i64 %i.dw, 9223372036854775776 ; 6 uses
  %i.dy = sub nsw i64 %i.an, %n.vec1411
  %cmp.n1422 = icmp eq i64 %i.dw, %n.vec1411
  %min.epilog.iters.check1430 = icmp eq i64 %i.dx, 0
  %n.vec1432 = and i64 %i.dw, 9223372036854775804 ; 5 uses
  %i.dz = sub nsw i64 %i.an, %n.vec1432
  %cmp.n1441 = icmp eq i64 %i.dw, %n.vec1432
  br label %.preheader488

.preheader488.us608.preheader:                    ; preds = %.preheader488.lr.ph.split.split
  %min.iters.check1459 = icmp slt i64 %i.an, 4
  %min.iters.check1461 = icmp slt i64 %i.an, 32
  %i.ea = and i64 %i.dw, 28
  %n.vec1463 = and i64 %i.dw, 9223372036854775776 ; 6 uses
  %i.eb = sub nsw i64 %i.an, %n.vec1463
  %cmp.n1474 = icmp eq i64 %i.dw, %n.vec1463
  %min.epilog.iters.check1482 = icmp eq i64 %i.ea, 0
  %n.vec1484 = and i64 %i.dw, 9223372036854775804 ; 5 uses
  %i.ec = sub nsw i64 %i.an, %n.vec1484
  %cmp.n1493 = icmp eq i64 %i.dw, %n.vec1484
  br label %.preheader488.us608

.preheader488.us608:                              ; preds = %.preheader488.us608.preheader, %.critedge.us610
  %indvar1447 = phi i64 [ %indvar.next1448, %.critedge.us610 ], [ 0, %.preheader488.us608.preheader ] ; 2 uses
  %.0360592.us609 = phi ptr [ %.0360.us611, %.critedge.us610 ], [ %.0360591, %.preheader488.us608.preheader ] ; 3 uses
  %i.ed = mul i64 %2, %indvar1447                 ; 3 uses
  %i.ee = add i64 %i.dv, %i.ed
  %i.ef = icmp ugt ptr %.0360592.us609, %.0.lcssa
  br i1 %i.ef, label %.lr.ph586.us612.preheader, label %.critedge.us610

.lr.ph586.us612.preheader:                        ; preds = %.preheader488.us608
  %i.eg = add i64 %i.du, %i.ed
  br label %.lr.ph586.us612

.critedge.us610:                                  ; preds = %swapfunc.exit.loopexit487.us.us, %.lr.ph586.us612, %.preheader488.us608
  %.0360.us611 = getelementptr inbounds nuw i8, ptr %.0360592.us609, i64 %2 ; 2 uses
  %i.eh = icmp ult ptr %.0360.us611, %i.ak
  %indvar.next1448 = add i64 %indvar1447, 1
  br i1 %i.eh, label %.preheader488.us608, label %.loopexit

.lr.ph586.us612:                                  ; preds = %.lr.ph586.us612.preheader, %swapfunc.exit.loopexit487.us.us
  %indvar1449 = phi i64 [ %indvar.next1450, %swapfunc.exit.loopexit487.us.us ], [ 0, %.lr.ph586.us612.preheader ] ; 2 uses
  %.0357585.us590.us = phi ptr [ %i.en, %swapfunc.exit.loopexit487.us.us ], [ %.0360592.us609, %.lr.ph586.us612.preheader ] ; 9 uses
  %i.ei = mul i64 %2, %indvar1449                 ; 3 uses
  %i.ej = add i64 %smin1446, %i.ei
  %i.ek = sub i64 %i.eg, %i.ej
  %scevgep1451 = getelementptr i8, ptr %.0.lcssa, i64 %i.ek
  %i.el = sub i64 %i.ed, %i.ei
  %scevgep1452 = getelementptr i8, ptr %.0.lcssa, i64 %i.el
  %i.em = sub i64 %i.ee, %i.ei
  %scevgep1453 = getelementptr i8, ptr %.0.lcssa, i64 %i.em
  %i.en = getelementptr inbounds i8, ptr %.0357585.us590.us, i64 %i.a ; 9 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = load i32, ptr %.0357585.us590.us, align 4, !tbaa !8
  %i.eq = sub i32 %i.eo, %i.ep
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %iter.check1479, label %.critedge.us610

iter.check1479:                                   ; preds = %.lr.ph586.us612
  br i1 %min.iters.check1459, label %.preheader.us.us.preheader, label %vector.memcheck1445

vector.memcheck1445:                              ; preds = %iter.check1479
  %bound01454 = icmp ult ptr %.0357585.us590.us, %scevgep1453
  %bound11455 = icmp ult ptr %scevgep1452, %scevgep1451
  %found.conflict1456 = and i1 %bound01454, %bound11455
  br i1 %found.conflict1456, label %.preheader.us.us.preheader, label %vector.main.loop.iter.check1460

vector.main.loop.iter.check1460:                  ; preds = %vector.memcheck1445
  br i1 %min.iters.check1461, label %vec.epilog.ph1483, label %vector.ph1462

vector.ph1462:                                    ; preds = %vector.main.loop.iter.check1460
  %i.es = getelementptr i8, ptr %.0357585.us590.us, i64 %n.vec1463
  %i.et = getelementptr i8, ptr %i.en, i64 %n.vec1463
  br label %vector.body1464

vector.body1464:                                  ; preds = %vector.body1464, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1472, %vector.body1464 ] ; 3 uses
  %next.gep1466 = getelementptr i8, ptr %.0357585.us590.us, i64 %index1465 ; 3 uses
  %next.gep1467 = getelementptr i8, ptr %i.en, i64 %index1465 ; 3 uses
  %i.eu = getelementptr i8, ptr %next.gep1466, i64 16 ; 2 uses
  %wide.load1468 = load <16 x i8>, ptr %next.gep1466, align 1, !tbaa !27, !alias.scope !180, !noalias !183
  %wide.load1469 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !27, !alias.scope !180, !noalias !183
  %i.ev = getelementptr i8, ptr %next.gep1467, i64 16 ; 2 uses
  %wide.load1470 = load <16 x i8>, ptr %next.gep1467, align 1, !tbaa !27, !alias.scope !183
  %wide.load1471 = load <16 x i8>, ptr %i.ev, align 1, !tbaa !27, !alias.scope !183
  store <16 x i8> %wide.load1470, ptr %next.gep1466, align 1, !tbaa !27, !alias.scope !180, !noalias !183
  store <16 x i8> %wide.load1471, ptr %i.eu, align 1, !tbaa !27, !alias.scope !180, !noalias !183
  store <16 x i8> %wide.load1468, ptr %next.gep1467, align 1, !tbaa !27, !alias.scope !183
  store <16 x i8> %wide.load1469, ptr %i.ev, align 1, !tbaa !27, !alias.scope !183
  %index.next1472 = add nuw i64 %index1465, 32    ; 2 uses
  %i.ew = icmp eq i64 %index.next1472, %n.vec1463
  br i1 %i.ew, label %middle.block1473, label %vector.body1464, !llvm.loop !185

middle.block1473:                                 ; preds = %vector.body1464
  br i1 %cmp.n1474, label %swapfunc.exit.loopexit487.us.us, label %vec.epilog.iter.check1481

vec.epilog.iter.check1481:                        ; preds = %middle.block1473
  br i1 %min.epilog.iters.check1482, label %.preheader.us.us.preheader, label %vec.epilog.ph1483, !prof !34

vec.epilog.ph1483:                                ; preds = %vector.main.loop.iter.check1460, %vec.epilog.iter.check1481
  %vec.epilog.resume.val1475 = phi i64 [ %n.vec1463, %vec.epilog.iter.check1481 ], [ 0, %vector.main.loop.iter.check1460 ]
  %i.ex = getelementptr i8, ptr %.0357585.us590.us, i64 %n.vec1484
  %i.ey = getelementptr i8, ptr %i.en, i64 %n.vec1484
  br label %vec.epilog.vector.body1485

vec.epilog.vector.body1485:                       ; preds = %vec.epilog.vector.body1485, %vec.epilog.ph1483
  %index1486 = phi i64 [ %vec.epilog.resume.val1475, %vec.epilog.ph1483 ], [ %index.next1491, %vec.epilog.vector.body1485 ] ; 3 uses
  %next.gep1487 = getelementptr i8, ptr %.0357585.us590.us, i64 %index1486 ; 2 uses
  %next.gep1488 = getelementptr i8, ptr %i.en, i64 %index1486 ; 2 uses
  %wide.load1489 = load <4 x i8>, ptr %next.gep1487, align 1, !tbaa !27, !alias.scope !180, !noalias !183
  %wide.load1490 = load <4 x i8>, ptr %next.gep1488, align 1, !tbaa !27, !alias.scope !183
  store <4 x i8> %wide.load1490, ptr %next.gep1487, align 1, !tbaa !27, !alias.scope !180, !noalias !183
  store <4 x i8> %wide.load1489, ptr %next.gep1488, align 1, !tbaa !27, !alias.scope !183
  %index.next1491 = add nuw i64 %index1486, 4     ; 2 uses
  %i.ez = icmp eq i64 %index.next1491, %n.vec1484
  br i1 %i.ez, label %vec.epilog.middle.block1492, label %vec.epilog.vector.body1485, !llvm.loop !186

vec.epilog.middle.block1492:                      ; preds = %vec.epilog.vector.body1485
  br i1 %cmp.n1493, label %swapfunc.exit.loopexit487.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %vector.memcheck1445, %iter.check1479, %vec.epilog.iter.check1481, %vec.epilog.middle.block1492
  %.020.i.us.us.ph = phi i64 [ %i.an, %iter.check1479 ], [ %i.an, %vector.memcheck1445 ], [ %i.eb, %vec.epilog.iter.check1481 ], [ %i.ec, %vec.epilog.middle.block1492 ]
  %.019.i.us.us.ph = phi ptr [ %.0357585.us590.us, %iter.check1479 ], [ %.0357585.us590.us, %vector.memcheck1445 ], [ %i.es, %vec.epilog.iter.check1481 ], [ %i.ex, %vec.epilog.middle.block1492 ]
  %.018.i.us.us.ph = phi ptr [ %i.en, %iter.check1479 ], [ %i.en, %vector.memcheck1445 ], [ %i.et, %vec.epilog.iter.check1481 ], [ %i.ey, %vec.epilog.middle.block1492 ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %.preheader.us.us
  %.020.i.us.us = phi i64 [ %i.fe, %.preheader.us.us ], [ %.020.i.us.us.ph, %.preheader.us.us.preheader ] ; 2 uses
  %.019.i.us.us = phi ptr [ %i.fc, %.preheader.us.us ], [ %.019.i.us.us.ph, %.preheader.us.us.preheader ] ; 3 uses
  %.018.i.us.us = phi ptr [ %i.fd, %.preheader.us.us ], [ %.018.i.us.us.ph, %.preheader.us.us.preheader ] ; 3 uses
  %i.fa = load i8, ptr %.019.i.us.us, align 1, !tbaa !27
  %i.fb = load i8, ptr %.018.i.us.us, align 1, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %.019.i.us.us, i64 1
  store i8 %i.fb, ptr %.019.i.us.us, align 1, !tbaa !27
  %i.fd = getelementptr inbounds nuw i8, ptr %.018.i.us.us, i64 1
  store i8 %i.fa, ptr %.018.i.us.us, align 1, !tbaa !27
  %i.fe = add nsw i64 %.020.i.us.us, -1
  %i.ff = icmp sgt i64 %.020.i.us.us, 1
  br i1 %i.ff, label %.preheader.us.us, label %swapfunc.exit.loopexit487.us.us, !llvm.loop !187

swapfunc.exit.loopexit487.us.us:                  ; preds = %.preheader.us.us, %vec.epilog.middle.block1492, %middle.block1473
  %i.fg = icmp ugt ptr %i.en, %.0.lcssa
  %indvar.next1450 = add i64 %indvar1449, 1
  br i1 %i.fg, label %.lr.ph586.us612, label %.critedge.us610

.preheader488:                                    ; preds = %.preheader488.preheader, %.critedge
  %indvar1395 = phi i64 [ %indvar.next1396, %.critedge ], [ 0, %.preheader488.preheader ] ; 2 uses
  %.0360592 = phi ptr [ %.0360, %.critedge ], [ %.0360591, %.preheader488.preheader ] ; 3 uses
  %i.fh = mul i64 %2, %indvar1395                 ; 3 uses
  %i.fi = add i64 %i.dv, %i.fh
  %i.fj = icmp ugt ptr %.0360592, %.0.lcssa
  br i1 %i.fj, label %.lr.ph586.preheader, label %.critedge

.lr.ph586.preheader:                              ; preds = %.preheader488
  %i.fk = add i64 %i.du, %i.fh
  br label %.lr.ph586

.lr.ph586:                                        ; preds = %.lr.ph586.preheader, %swapfunc.exit.loopexit487
  %indvar1397 = phi i64 [ %indvar.next1398, %swapfunc.exit.loopexit487 ], [ 0, %.lr.ph586.preheader ] ; 2 uses
  %.0357585 = phi ptr [ %i.fq, %swapfunc.exit.loopexit487 ], [ %.0360592, %.lr.ph586.preheader ] ; 9 uses
  %i.fl = mul i64 %2, %indvar1397                 ; 3 uses
  %i.fm = add i64 %smin1446, %i.fl
  %i.fn = sub i64 %i.fk, %i.fm
  %scevgep1399 = getelementptr i8, ptr %.0.lcssa, i64 %i.fn
  %i.fo = sub i64 %i.fh, %i.fl
  %scevgep1400 = getelementptr i8, ptr %.0.lcssa, i64 %i.fo
  %i.fp = sub i64 %i.fi, %i.fl
end_hunk_1
begin_hunk_2_@cli_qsort_r:bb.a
  %i.kq = sub i32 %i.kf, %i.kk
  %i.kr = icmp slt i32 %i.kq, 0
  %.407 = select i1 %i.kr, ptr %i.ke, ptr %i.gq
  br label %med3_r.exit411.thread

med3_r.exit411:                                   ; preds = %bb.c
  br i1 %.not396, label %med3_r.exit411.med3_r.exit411.thread_crit_edge, label %med3_r.exit411.thread472

med3_r.exit411.med3_r.exit411.thread_crit_edge:   ; preds = %med3_r.exit411
  %.pre = load i32, ptr %.0552, align 4, !tbaa !8
  %.pre690 = load i32, ptr %i.gn, align 4, !tbaa !8
  br label %med3_r.exit411.thread

med3_r.exit411.thread472:                         ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %med3_r.exit411
  %.1358479 = phi ptr [ %.0552, %med3_r.exit411 ], [ %i.ie, %bb.aa ], [ %i.ie, %bb.z ], [ %i.ie, %bb.y ], [ %i.ie, %bb.x ] ; 5 uses
  %.1361478 = phi ptr [ %i.gn, %med3_r.exit411 ], [ %i.jl, %bb.aa ], [ %i.jl, %bb.z ], [ %i.jl, %bb.y ], [ %i.jl, %bb.x ] ; 4 uses
  %.0364477 = phi ptr [ %i.gq, %med3_r.exit411 ], [ %i.jz, %bb.aa ], [ %i.jo, %bb.z ], [ %i.jv, %bb.y ], [ %i.jo, %bb.x ] ; 5 uses
  %i.ks = tail call i32 %3(ptr noundef %4, ptr noundef %.1358479, ptr noundef %.1361478) #2, !inline_history !196
  %i.kt = icmp slt i32 %i.ks, 0
  %i.ku = tail call i32 %3(ptr noundef %4, ptr noundef %.1361478, ptr noundef %.0364477) #2, !inline_history !196 ; 2 uses
  br i1 %i.kt, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %med3_r.exit411.thread472
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %med3_r.exit412, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kw = tail call i32 %3(ptr noundef %4, ptr noundef %.1358479, ptr noundef %.0364477) #2, !inline_history !196
  %i.kx = icmp slt i32 %i.kw, 0
  %i.ky = select i1 %i.kx, ptr %.0364477, ptr %.1358479
  br label %med3_r.exit412

bb.ai:                                            ; preds = %med3_r.exit411.thread472
  %i.kz = icmp sgt i32 %i.ku, 0
  br i1 %i.kz, label %med3_r.exit412, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.la = tail call i32 %3(ptr noundef %4, ptr noundef %.1358479, ptr noundef %.0364477) #2, !inline_history !196
  %i.lb = icmp slt i32 %i.la, 0
  %i.lc = select i1 %i.lb, ptr %.1358479, ptr %.0364477
  br label %med3_r.exit412

med3_r.exit411.thread:                            ; preds = %med3_r.exit411.med3_r.exit411.thread_crit_edge, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.ld = phi i32 [ %.pre690, %med3_r.exit411.med3_r.exit411.thread_crit_edge ], [ %i.ka, %bb.ac ], [ %i.ka, %bb.ad ], [ %i.ka, %bb.ae ], [ %i.ka, %bb.af ] ; 2 uses
  %i.le = phi i32 [ %.pre, %med3_r.exit411.med3_r.exit411.thread_crit_edge ], [ %i.it, %bb.ac ], [ %i.it, %bb.ad ], [ %i.it, %bb.ae ], [ %i.it, %bb.af ] ; 3 uses
  %.1358469 = phi ptr [ %.0552, %med3_r.exit411.med3_r.exit411.thread_crit_edge ], [ %.ph, %bb.ac ], [ %.ph, %bb.ad ], [ %.ph, %bb.ae ], [ %.ph, %bb.af ] ; 2 uses
  %.1361468 = phi ptr [ %i.gn, %med3_r.exit411.med3_r.exit411.thread_crit_edge ], [ %.ph462, %bb.ac ], [ %.ph462, %bb.ad ], [ %.ph462, %bb.ae ], [ %.ph462, %bb.af ] ; 2 uses
  %.0364467 = phi ptr [ %i.gq, %med3_r.exit411.med3_r.exit411.thread_crit_edge ], [ %i.kg, %bb.ac ], [ %.406, %bb.ad ], [ %i.kg, %bb.ae ], [ %.407, %bb.af ] ; 3 uses
  %i.lf = sub i32 %i.le, %i.ld
  %i.lg = icmp slt i32 %i.lf, 0
  %i.lh = load i32, ptr %.0364467, align 4, !tbaa !8 ; 3 uses
  %i.li = sub i32 %i.ld, %i.lh                    ; 2 uses
  br i1 %i.lg, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %med3_r.exit411.thread
  %i.lj = icmp slt i32 %i.li, 0
  br i1 %i.lj, label %med3_r.exit412, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lk = sub i32 %i.le, %i.lh
  %i.ll = icmp slt i32 %i.lk, 0
  %i.lm = select i1 %i.ll, ptr %.0364467, ptr %.1358469
  br label %med3_r.exit412

bb.am:                                            ; preds = %med3_r.exit411.thread
  %i.ln = icmp sgt i32 %i.li, 0
  br i1 %i.ln, label %med3_r.exit412, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lo = sub i32 %i.le, %i.lh
  %i.lp = icmp slt i32 %i.lo, 0
  %i.lq = select i1 %i.lp, ptr %.1358469, ptr %.0364467
  br label %med3_r.exit412

med3_r.exit412:                                   ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.an, %bb.al, %bb.ak, %bb.am, %bb.b
  %.2362 = phi ptr [ %i.gn, %bb.b ], [ %.1361468, %bb.am ], [ %i.lm, %bb.al ], [ %i.lq, %bb.an ], [ %.1361468, %bb.ak ], [ %i.ky, %bb.ah ], [ %i.lc, %bb.aj ], [ %.1361478, %bb.ag ], [ %.1361478, %bb.ai ] ; 16 uses
  %i.lr = icmp eq i32 %i.gj, 0                    ; 5 uses
  br i1 %i.lr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %med3_r.exit412
  %i.ls = load i64, ptr %.0552, align 8, !tbaa !9
  %i.lt = load i64, ptr %.2362, align 8, !tbaa !9
  store i64 %i.lt, ptr %.0552, align 8, !tbaa !9
  store i64 %i.ls, ptr %.2362, align 8, !tbaa !9
  br label %swapfunc.exit419

bb.ap:                                            ; preds = %med3_r.exit412
  br i1 %or.cond553, label %.preheader633.preheader, label %iter.check1215

iter.check1215:                                   ; preds = %bb.ap
  br i1 %min.iters.check1195, label %.preheader505.preheader, label %vector.memcheck1188

vector.memcheck1188:                              ; preds = %iter.check1215
  %scevgep1189 = getelementptr i8, ptr %.0552, i64 %i.n
  %scevgep1190 = getelementptr i8, ptr %.2362, i64 %i.n
  %bound01191 = icmp ult ptr %.0552, %scevgep1190
  %bound11192 = icmp ult ptr %.2362, %scevgep1189
  %found.conflict1193 = and i1 %bound01191, %bound11192
  br i1 %found.conflict1193, label %.preheader505.preheader, label %vector.main.loop.iter.check1196

vector.main.loop.iter.check1196:                  ; preds = %vector.memcheck1188
  br i1 %min.iters.check1197, label %vec.epilog.ph1219, label %vector.ph1198

vector.ph1198:                                    ; preds = %vector.main.loop.iter.check1196
  %i.lu = getelementptr i8, ptr %.0552, i64 %n.vec1199
  %i.lv = getelementptr i8, ptr %.2362, i64 %n.vec1199
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1208, %vector.body1200 ] ; 3 uses
  %next.gep1202 = getelementptr i8, ptr %.0552, i64 %index1201 ; 3 uses
  %next.gep1203 = getelementptr i8, ptr %.2362, i64 %index1201 ; 3 uses
  %i.lw = getelementptr i8, ptr %next.gep1202, i64 16 ; 2 uses
  %wide.load1204 = load <16 x i8>, ptr %next.gep1202, align 1, !tbaa !27, !alias.scope !197, !noalias !200
  %wide.load1205 = load <16 x i8>, ptr %i.lw, align 1, !tbaa !27, !alias.scope !197, !noalias !200
  %i.lx = getelementptr i8, ptr %next.gep1203, i64 16 ; 2 uses
  %wide.load1206 = load <16 x i8>, ptr %next.gep1203, align 1, !tbaa !27, !alias.scope !200
  %wide.load1207 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !27, !alias.scope !200
  store <16 x i8> %wide.load1206, ptr %next.gep1202, align 1, !tbaa !27, !alias.scope !197, !noalias !200
  store <16 x i8> %wide.load1207, ptr %i.lw, align 1, !tbaa !27, !alias.scope !197, !noalias !200
  store <16 x i8> %wide.load1204, ptr %next.gep1203, align 1, !tbaa !27, !alias.scope !200
  store <16 x i8> %wide.load1205, ptr %i.lx, align 1, !tbaa !27, !alias.scope !200
  %index.next1208 = add nuw i64 %index1201, 32    ; 2 uses
  %i.ly = icmp eq i64 %index.next1208, %n.vec1199
  br i1 %i.ly, label %middle.block1209, label %vector.body1200, !llvm.loop !202

middle.block1209:                                 ; preds = %vector.body1200
  br i1 %cmp.n1210, label %swapfunc.exit419, label %vec.epilog.iter.check1217

vec.epilog.iter.check1217:                        ; preds = %middle.block1209
  br i1 %min.epilog.iters.check1218, label %.preheader505.preheader, label %vec.epilog.ph1219, !prof !34

vec.epilog.ph1219:                                ; preds = %vector.main.loop.iter.check1196, %vec.epilog.iter.check1217
  %vec.epilog.resume.val1211 = phi i64 [ %n.vec1199, %vec.epilog.iter.check1217 ], [ 0, %vector.main.loop.iter.check1196 ]
  %i.lz = getelementptr i8, ptr %.0552, i64 %n.vec1220
  %i.ma = getelementptr i8, ptr %.2362, i64 %n.vec1220
  br label %vec.epilog.vector.body1221

vec.epilog.vector.body1221:                       ; preds = %vec.epilog.vector.body1221, %vec.epilog.ph1219
  %index1222 = phi i64 [ %vec.epilog.resume.val1211, %vec.epilog.ph1219 ], [ %index.next1227, %vec.epilog.vector.body1221 ] ; 3 uses
  %next.gep1223 = getelementptr i8, ptr %.0552, i64 %index1222 ; 2 uses
  %next.gep1224 = getelementptr i8, ptr %.2362, i64 %index1222 ; 2 uses
  %wide.load1225 = load <4 x i8>, ptr %next.gep1223, align 1, !tbaa !27, !alias.scope !197, !noalias !200
  %wide.load1226 = load <4 x i8>, ptr %next.gep1224, align 1, !tbaa !27, !alias.scope !200
  store <4 x i8> %wide.load1226, ptr %next.gep1223, align 1, !tbaa !27, !alias.scope !197, !noalias !200
  store <4 x i8> %wide.load1225, ptr %next.gep1224, align 1, !tbaa !27, !alias.scope !200
  %index.next1227 = add nuw i64 %index1222, 4     ; 2 uses
  %i.mb = icmp eq i64 %index.next1227, %n.vec1220
  br i1 %i.mb, label %vec.epilog.middle.block1228, label %vec.epilog.vector.body1221, !llvm.loop !203

vec.epilog.middle.block1228:                      ; preds = %vec.epilog.vector.body1221
  br i1 %cmp.n1229, label %swapfunc.exit419, label %.preheader505.preheader

.preheader505.preheader:                          ; preds = %vector.memcheck1188, %iter.check1215, %vec.epilog.iter.check1217, %vec.epilog.middle.block1228
  %.020.i413.ph = phi i64 [ %i.i, %iter.check1215 ], [ %i.i, %vector.memcheck1188 ], [ %i.u, %vec.epilog.iter.check1217 ], [ %i.v, %vec.epilog.middle.block1228 ]
  %.019.i414.ph = phi ptr [ %.0552, %iter.check1215 ], [ %.0552, %vector.memcheck1188 ], [ %i.lu, %vec.epilog.iter.check1217 ], [ %i.lz, %vec.epilog.middle.block1228 ]
  %.018.i415.ph = phi ptr [ %.2362, %iter.check1215 ], [ %.2362, %vector.memcheck1188 ], [ %i.lv, %vec.epilog.iter.check1217 ], [ %i.ma, %vec.epilog.middle.block1228 ]
  br label %.preheader505

.preheader633.preheader:                          ; preds = %bb.ap
  br i1 %min.iters.check1171, label %.preheader633.preheader1595, label %vector.memcheck1163

vector.memcheck1163:                              ; preds = %.preheader633.preheader
  %scevgep1165 = getelementptr i8, ptr %.0552, i64 %i.s
  %scevgep1166 = getelementptr i8, ptr %.2362, i64 %i.s
  %bound01167 = icmp ult ptr %.0552, %scevgep1166
  %bound11168 = icmp ult ptr %.2362, %scevgep1165
  %found.conflict1169 = and i1 %bound01167, %bound11168
  br i1 %found.conflict1169, label %.preheader633.preheader1595, label %vector.ph1172

vector.ph1172:                                    ; preds = %vector.memcheck1163
  %i.mc = getelementptr i8, ptr %.2362, i64 %i.w
  %i.md = getelementptr i8, ptr %.0552, i64 %i.w
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1172
  %index1175 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1182, %vector.body1174 ] ; 2 uses
  %i.me = shl i64 %index1175, 3                   ; 2 uses
  %next.gep1176 = getelementptr i8, ptr %.2362, i64 %i.me ; 3 uses
  %next.gep1177 = getelementptr i8, ptr %.0552, i64 %i.me ; 3 uses
  %i.mf = getelementptr i8, ptr %next.gep1177, i64 16 ; 2 uses
  %wide.load1178 = load <2 x i64>, ptr %next.gep1177, align 8, !tbaa !9, !alias.scope !204, !noalias !207
  %wide.load1179 = load <2 x i64>, ptr %i.mf, align 8, !tbaa !9, !alias.scope !204, !noalias !207
  %i.mg = getelementptr i8, ptr %next.gep1176, i64 16 ; 2 uses
  %wide.load1180 = load <2 x i64>, ptr %next.gep1176, align 8, !tbaa !9, !alias.scope !207
  %wide.load1181 = load <2 x i64>, ptr %i.mg, align 8, !tbaa !9, !alias.scope !207
  store <2 x i64> %wide.load1180, ptr %next.gep1177, align 8, !tbaa !9, !alias.scope !204, !noalias !207
  store <2 x i64> %wide.load1181, ptr %i.mf, align 8, !tbaa !9, !alias.scope !204, !noalias !207
  store <2 x i64> %wide.load1178, ptr %next.gep1176, align 8, !tbaa !9, !alias.scope !207
  store <2 x i64> %wide.load1179, ptr %i.mg, align 8, !tbaa !9, !alias.scope !207
  %index.next1182 = add nuw i64 %index1175, 4     ; 2 uses
  %i.mh = icmp eq i64 %index.next1182, %n.vec1173
  br i1 %i.mh, label %middle.block1183, label %vector.body1174, !llvm.loop !209

middle.block1183:                                 ; preds = %vector.body1174
  br i1 %cmp.n1184, label %swapfunc.exit419, label %.preheader633.preheader1595

.preheader633.preheader1595:                      ; preds = %vector.memcheck1163, %.preheader633.preheader, %middle.block1183
  %.022.i416.ph = phi ptr [ %.2362, %vector.memcheck1163 ], [ %.2362, %.preheader633.preheader ], [ %i.mc, %middle.block1183 ]
  %.021.i417.ph = phi ptr [ %.0552, %vector.memcheck1163 ], [ %.0552, %.preheader633.preheader ], [ %i.md, %middle.block1183 ]
  %.0.i418.ph = phi i64 [ %i.j, %vector.memcheck1163 ], [ %i.j, %.preheader633.preheader ], [ %5, %middle.block1183 ]
  br label %.preheader633

.preheader633:                                    ; preds = %.preheader633.preheader1595, %.preheader633
  %.022.i416 = phi ptr [ %i.ml, %.preheader633 ], [ %.022.i416.ph, %.preheader633.preheader1595 ] ; 3 uses
  %.021.i417 = phi ptr [ %i.mk, %.preheader633 ], [ %.021.i417.ph, %.preheader633.preheader1595 ] ; 3 uses
  %.0.i418 = phi i64 [ %i.mm, %.preheader633 ], [ %.0.i418.ph, %.preheader633.preheader1595 ] ; 2 uses
  %i.mi = load i64, ptr %.021.i417, align 8, !tbaa !9
  %i.mj = load i64, ptr %.022.i416, align 8, !tbaa !9
  %i.mk = getelementptr inbounds nuw i8, ptr %.021.i417, i64 8
  store i64 %i.mj, ptr %.021.i417, align 8, !tbaa !9
  %i.ml = getelementptr inbounds nuw i8, ptr %.022.i416, i64 8
  store i64 %i.mi, ptr %.022.i416, align 8, !tbaa !9
  %i.mm = add nsw i64 %.0.i418, -1
  %i.mn = icmp samesign ugt i64 %.0.i418, 1
  br i1 %i.mn, label %.preheader633, label %swapfunc.exit419, !llvm.loop !210

.preheader505:                                    ; preds = %.preheader505.preheader, %.preheader505
  %.020.i413 = phi i64 [ %i.ms, %.preheader505 ], [ %.020.i413.ph, %.preheader505.preheader ] ; 2 uses
  %.019.i414 = phi ptr [ %i.mq, %.preheader505 ], [ %.019.i414.ph, %.preheader505.preheader ] ; 3 uses
  %.018.i415 = phi ptr [ %i.mr, %.preheader505 ], [ %.018.i415.ph, %.preheader505.preheader ] ; 3 uses
  %i.mo = load i8, ptr %.019.i414, align 1, !tbaa !27
  %i.mp = load i8, ptr %.018.i415, align 1, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %.019.i414, i64 1
  store i8 %i.mp, ptr %.019.i414, align 1, !tbaa !27
  %i.mr = getelementptr inbounds nuw i8, ptr %.018.i415, i64 1
  store i8 %i.mo, ptr %.018.i415, align 1, !tbaa !27
  %i.ms = add nsw i64 %.020.i413, -1
  %i.mt = icmp sgt i64 %.020.i413, 1
  br i1 %i.mt, label %.preheader505, label %swapfunc.exit419, !llvm.loop !211

swapfunc.exit419:                                 ; preds = %.preheader505, %.preheader633, %middle.block1209, %vec.epilog.middle.block1228, %middle.block1183, %bb.ao
  %i.mu = getelementptr inbounds nuw i8, ptr %.0552, i64 %2 ; 8 uses
  %i.mv = add i64 %.0345551, -1
  %i.mw = mul i64 %i.mv, %2
  %i.mx = getelementptr inbounds nuw i8, ptr %.0552, i64 %i.mw ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %swapfunc.exit440, %swapfunc.exit419
  %.0354 = phi i32 [ 0, %swapfunc.exit419 ], [ 1, %swapfunc.exit440 ] ; 2 uses
  %.0351 = phi ptr [ %i.mx, %swapfunc.exit419 ], [ %.1352536, %swapfunc.exit440 ] ; 2 uses
  %.0349 = phi ptr [ %i.mx, %swapfunc.exit419 ], [ %i.rj, %swapfunc.exit440 ] ; 9 uses
  %.0347 = phi ptr [ %i.mu, %swapfunc.exit419 ], [ %i.ri, %swapfunc.exit440 ] ; 5 uses
  %.0346 = phi ptr [ %i.mu, %swapfunc.exit419 ], [ %.1.lcssa, %swapfunc.exit440 ] ; 2 uses
  %.not397523 = icmp ugt ptr %.0347, %.0349
  br i1 %.not397523, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aq
  %i.my = getelementptr i8, ptr %.0347, i64 %i.n
  %i.mz = getelementptr i8, ptr %.0347, i64 %i.r
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %indvar1094 = phi i64 [ %indvar.next1095, %bb.ay ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1527 = phi ptr [ %.2, %bb.ay ], [ %.0346, %.lr.ph.preheader ] ; 19 uses
  %.1348525 = phi ptr [ %i.om, %bb.ay ], [ %.0347, %.lr.ph.preheader ] ; 18 uses
  %.1355524 = phi i32 [ %.2356, %bb.ay ], [ %.0354, %.lr.ph.preheader ] ; 2 uses
  %i.na = mul i64 %2, %indvar1094
  %scevgep1120 = getelementptr i8, ptr %i.my, i64 %i.na
  %i.nb = mul i64 %2, %indvar1094
  %scevgep1096 = getelementptr i8, ptr %i.mz, i64 %i.nb
  br i1 %.not396, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph
  %i.nc = tail call i32 %3(ptr noundef %4, ptr noundef %.1348525, ptr noundef %.0552) #2
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph
  %i.nd = load i32, ptr %.1348525, align 4, !tbaa !8
  %i.ne = load i32, ptr %.0552, align 4, !tbaa !8
  %i.nf = sub i32 %i.nd, %i.ne
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ng = phi i32 [ %i.nc, %bb.ar ], [ %i.nf, %bb.as ] ; 2 uses
  %i.nh = icmp slt i32 %i.ng, 1
  br i1 %i.nh, label %bb.au, label %.critedge2

bb.au:                                            ; preds = %bb.at
  %i.ni = icmp eq i32 %i.ng, 0
  br i1 %i.ni, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %i.lr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nj = load i64, ptr %.1527, align 8, !tbaa !9
  %i.nk = load i64, ptr %.1348525, align 8, !tbaa !9
  store i64 %i.nk, ptr %.1527, align 8, !tbaa !9
  store i64 %i.nj, ptr %.1348525, align 8, !tbaa !9
  br label %swapfunc.exit426

bb.ax:                                            ; preds = %bb.av
  br i1 %or.cond553, label %.preheader626.preheader, label %iter.check1145

iter.check1145:                                   ; preds = %bb.ax
  br i1 %min.iters.check1125, label %.preheader497.preheader, label %vector.memcheck1118

vector.memcheck1118:                              ; preds = %iter.check1145
  %scevgep1119 = getelementptr i8, ptr %.1527, i64 %i.n
  %bound01121 = icmp ult ptr %.1527, %scevgep1120
  %bound11122 = icmp ult ptr %.1348525, %scevgep1119
  %found.conflict1123 = and i1 %bound01121, %bound11122
  br i1 %found.conflict1123, label %.preheader497.preheader, label %vector.main.loop.iter.check1126

vector.main.loop.iter.check1126:                  ; preds = %vector.memcheck1118
  br i1 %min.iters.check1127, label %vec.epilog.ph1149, label %vector.ph1128

vector.ph1128:                                    ; preds = %vector.main.loop.iter.check1126
  %i.nl = getelementptr i8, ptr %.1527, i64 %n.vec1129
  %i.nm = getelementptr i8, ptr %.1348525, i64 %n.vec1129
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1128
  %index1131 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1138, %vector.body1130 ] ; 3 uses
  %next.gep1132 = getelementptr i8, ptr %.1527, i64 %index1131 ; 3 uses
  %next.gep1133 = getelementptr i8, ptr %.1348525, i64 %index1131 ; 3 uses
  %i.nn = getelementptr i8, ptr %next.gep1132, i64 16 ; 2 uses
  %wide.load1134 = load <16 x i8>, ptr %next.gep1132, align 1, !tbaa !27, !alias.scope !212, !noalias !215
  %wide.load1135 = load <16 x i8>, ptr %i.nn, align 1, !tbaa !27, !alias.scope !212, !noalias !215
  %i.no = getelementptr i8, ptr %next.gep1133, i64 16 ; 2 uses
  %wide.load1136 = load <16 x i8>, ptr %next.gep1133, align 1, !tbaa !27, !alias.scope !215
  %wide.load1137 = load <16 x i8>, ptr %i.no, align 1, !tbaa !27, !alias.scope !215
  store <16 x i8> %wide.load1136, ptr %next.gep1132, align 1, !tbaa !27, !alias.scope !212, !noalias !215
  store <16 x i8> %wide.load1137, ptr %i.nn, align 1, !tbaa !27, !alias.scope !212, !noalias !215
  store <16 x i8> %wide.load1134, ptr %next.gep1133, align 1, !tbaa !27, !alias.scope !215
  store <16 x i8> %wide.load1135, ptr %i.no, align 1, !tbaa !27, !alias.scope !215
  %index.next1138 = add nuw i64 %index1131, 32    ; 2 uses
  %i.np = icmp eq i64 %index.next1138, %n.vec1129
  br i1 %i.np, label %middle.block1139, label %vector.body1130, !llvm.loop !217

middle.block1139:                                 ; preds = %vector.body1130
  br i1 %cmp.n1140, label %swapfunc.exit426, label %vec.epilog.iter.check1147

vec.epilog.iter.check1147:                        ; preds = %middle.block1139
  br i1 %min.epilog.iters.check1148, label %.preheader497.preheader, label %vec.epilog.ph1149, !prof !34

vec.epilog.ph1149:                                ; preds = %vector.main.loop.iter.check1126, %vec.epilog.iter.check1147
  %vec.epilog.resume.val1141 = phi i64 [ %n.vec1129, %vec.epilog.iter.check1147 ], [ 0, %vector.main.loop.iter.check1126 ]
  %i.nq = getelementptr i8, ptr %.1527, i64 %n.vec1150
  %i.nr = getelementptr i8, ptr %.1348525, i64 %n.vec1150
  br label %vec.epilog.vector.body1151

vec.epilog.vector.body1151:                       ; preds = %vec.epilog.vector.body1151, %vec.epilog.ph1149
  %index1152 = phi i64 [ %vec.epilog.resume.val1141, %vec.epilog.ph1149 ], [ %index.next1157, %vec.epilog.vector.body1151 ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %.1527, i64 %index1152 ; 2 uses
  %next.gep1154 = getelementptr i8, ptr %.1348525, i64 %index1152 ; 2 uses
  %wide.load1155 = load <4 x i8>, ptr %next.gep1153, align 1, !tbaa !27, !alias.scope !212, !noalias !215
  %wide.load1156 = load <4 x i8>, ptr %next.gep1154, align 1, !tbaa !27, !alias.scope !215
  store <4 x i8> %wide.load1156, ptr %next.gep1153, align 1, !tbaa !27, !alias.scope !212, !noalias !215
  store <4 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !27, !alias.scope !215
  %index.next1157 = add nuw i64 %index1152, 4     ; 2 uses
  %i.ns = icmp eq i64 %index.next1157, %n.vec1150
  br i1 %i.ns, label %vec.epilog.middle.block1158, label %vec.epilog.vector.body1151, !llvm.loop !218

vec.epilog.middle.block1158:                      ; preds = %vec.epilog.vector.body1151
  br i1 %cmp.n1159, label %swapfunc.exit426, label %.preheader497.preheader

.preheader497.preheader:                          ; preds = %vector.memcheck1118, %iter.check1145, %vec.epilog.iter.check1147, %vec.epilog.middle.block1158
  %.020.i420.ph = phi i64 [ %i.i, %iter.check1145 ], [ %i.i, %vector.memcheck1118 ], [ %i.y, %vec.epilog.iter.check1147 ], [ %i.z, %vec.epilog.middle.block1158 ]
  %.019.i421.ph = phi ptr [ %.1527, %iter.check1145 ], [ %.1527, %vector.memcheck1118 ], [ %i.nl, %vec.epilog.iter.check1147 ], [ %i.nq, %vec.epilog.middle.block1158 ]
  %.018.i422.ph = phi ptr [ %.1348525, %iter.check1145 ], [ %.1348525, %vector.memcheck1118 ], [ %i.nm, %vec.epilog.iter.check1147 ], [ %i.nr, %vec.epilog.middle.block1158 ]
  br label %.preheader497

.preheader626.preheader:                          ; preds = %bb.ax
  br i1 %min.iters.check1101, label %.preheader626.preheader1588, label %vector.memcheck1091

vector.memcheck1091:                              ; preds = %.preheader626.preheader
  %scevgep1093 = getelementptr i8, ptr %.1527, i64 %i.r
  %bound01097 = icmp ult ptr %.1527, %scevgep1096
  %bound11098 = icmp ult ptr %.1348525, %scevgep1093
  %found.conflict1099 = and i1 %bound01097, %bound11098
  br i1 %found.conflict1099, label %.preheader626.preheader1588, label %vector.ph1102

vector.ph1102:                                    ; preds = %vector.memcheck1091
  %i.nt = getelementptr i8, ptr %.1348525, i64 %i.aa
  %i.nu = getelementptr i8, ptr %.1527, i64 %i.aa
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1102
  %index1105 = phi i64 [ 0, %vector.ph1102 ], [ %index.next1112, %vector.body1104 ] ; 2 uses
  %i.nv = shl i64 %index1105, 3                   ; 2 uses
  %next.gep1106 = getelementptr i8, ptr %.1348525, i64 %i.nv ; 3 uses
  %next.gep1107 = getelementptr i8, ptr %.1527, i64 %i.nv ; 3 uses
  %i.nw = getelementptr i8, ptr %next.gep1107, i64 16 ; 2 uses
  %wide.load1108 = load <2 x i64>, ptr %next.gep1107, align 8, !tbaa !9, !alias.scope !219, !noalias !222
  %wide.load1109 = load <2 x i64>, ptr %i.nw, align 8, !tbaa !9, !alias.scope !219, !noalias !222
  %i.nx = getelementptr i8, ptr %next.gep1106, i64 16 ; 2 uses
  %wide.load1110 = load <2 x i64>, ptr %next.gep1106, align 8, !tbaa !9, !alias.scope !222
  %wide.load1111 = load <2 x i64>, ptr %i.nx, align 8, !tbaa !9, !alias.scope !222
  store <2 x i64> %wide.load1110, ptr %next.gep1107, align 8, !tbaa !9, !alias.scope !219, !noalias !222
  store <2 x i64> %wide.load1111, ptr %i.nw, align 8, !tbaa !9, !alias.scope !219, !noalias !222
  store <2 x i64> %wide.load1108, ptr %next.gep1106, align 8, !tbaa !9, !alias.scope !222
  store <2 x i64> %wide.load1109, ptr %i.nx, align 8, !tbaa !9, !alias.scope !222
  %index.next1112 = add nuw i64 %index1105, 4     ; 2 uses
  %i.ny = icmp eq i64 %index.next1112, %n.vec1103
  br i1 %i.ny, label %middle.block1113, label %vector.body1104, !llvm.loop !224

middle.block1113:                                 ; preds = %vector.body1104
  br i1 %cmp.n1114, label %swapfunc.exit426, label %.preheader626.preheader1588

.preheader626.preheader1588:                      ; preds = %vector.memcheck1091, %.preheader626.preheader, %middle.block1113
  %.022.i423.ph = phi ptr [ %.1348525, %vector.memcheck1091 ], [ %.1348525, %.preheader626.preheader ], [ %i.nt, %middle.block1113 ]
  %.021.i424.ph = phi ptr [ %.1527, %vector.memcheck1091 ], [ %.1527, %.preheader626.preheader ], [ %i.nu, %middle.block1113 ]
  %.0.i425.ph = phi i64 [ %i.j, %vector.memcheck1091 ], [ %i.j, %.preheader626.preheader ], [ %6, %middle.block1113 ]
  br label %.preheader626

.preheader626:                                    ; preds = %.preheader626.preheader1588, %.preheader626
  %.022.i423 = phi ptr [ %i.oc, %.preheader626 ], [ %.022.i423.ph, %.preheader626.preheader1588 ] ; 3 uses
  %.021.i424 = phi ptr [ %i.ob, %.preheader626 ], [ %.021.i424.ph, %.preheader626.preheader1588 ] ; 3 uses
  %.0.i425 = phi i64 [ %i.od, %.preheader626 ], [ %.0.i425.ph, %.preheader626.preheader1588 ] ; 2 uses
  %i.nz = load i64, ptr %.021.i424, align 8, !tbaa !9
  %i.oa = load i64, ptr %.022.i423, align 8, !tbaa !9
  %i.ob = getelementptr inbounds nuw i8, ptr %.021.i424, i64 8
  store i64 %i.oa, ptr %.021.i424, align 8, !tbaa !9
  %i.oc = getelementptr inbounds nuw i8, ptr %.022.i423, i64 8
  store i64 %i.nz, ptr %.022.i423, align 8, !tbaa !9
  %i.od = add nsw i64 %.0.i425, -1
  %i.oe = icmp samesign ugt i64 %.0.i425, 1
  br i1 %i.oe, label %.preheader626, label %swapfunc.exit426, !llvm.loop !225

.preheader497:                                    ; preds = %.preheader497.preheader, %.preheader497
  %.020.i420 = phi i64 [ %i.oj, %.preheader497 ], [ %.020.i420.ph, %.preheader497.preheader ] ; 2 uses
  %.019.i421 = phi ptr [ %i.oh, %.preheader497 ], [ %.019.i421.ph, %.preheader497.preheader ] ; 3 uses
  %.018.i422 = phi ptr [ %i.oi, %.preheader497 ], [ %.018.i422.ph, %.preheader497.preheader ] ; 3 uses
  %i.of = load i8, ptr %.019.i421, align 1, !tbaa !27
  %i.og = load i8, ptr %.018.i422, align 1, !tbaa !27
  %i.oh = getelementptr inbounds nuw i8, ptr %.019.i421, i64 1
  store i8 %i.og, ptr %.019.i421, align 1, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %.018.i422, i64 1
  store i8 %i.of, ptr %.018.i422, align 1, !tbaa !27
  %i.oj = add nsw i64 %.020.i420, -1
  %i.ok = icmp sgt i64 %.020.i420, 1
  br i1 %i.ok, label %.preheader497, label %swapfunc.exit426, !llvm.loop !226

swapfunc.exit426:                                 ; preds = %.preheader497, %.preheader626, %middle.block1139, %vec.epilog.middle.block1158, %middle.block1113, %bb.aw
  %i.ol = getelementptr inbounds nuw i8, ptr %.1527, i64 %2
  br label %bb.ay

bb.ay:                                            ; preds = %swapfunc.exit426, %bb.au
  %.2356 = phi i32 [ 1, %swapfunc.exit426 ], [ %.1355524, %bb.au ] ; 2 uses
  %.2 = phi ptr [ %i.ol, %swapfunc.exit426 ], [ %.1527, %bb.au ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.1348525, i64 %2 ; 3 uses
  %.not397 = icmp ugt ptr %i.om, %.0349
  %indvar.next1095 = add i64 %indvar1094, 1
  br i1 %.not397, label %.critedge2, label %.lr.ph

.critedge2:                                       ; preds = %bb.at, %bb.ay, %bb.aq
  %.1355.lcssa = phi i32 [ %.0354, %bb.aq ], [ %.2356, %bb.ay ], [ %.1355524, %bb.at ] ; 2 uses
  %.1348.lcssa = phi ptr [ %.0347, %bb.aq ], [ %i.om, %bb.ay ], [ %.1348525, %bb.at ] ; 37 uses
  %.1.lcssa = phi ptr [ %.0346, %bb.aq ], [ %.2, %bb.ay ], [ %.1527, %bb.at ] ; 2 uses
  %.not399534 = icmp ugt ptr %.1348.lcssa, %.0349
  br i1 %.not399534, label %.critedge2._crit_edge, label %.lr.ph539

.lr.ph539:                                        ; preds = %.critedge2, %bb.bg
  %indvar = phi i64 [ %indvar.next, %bb.bg ], [ 0, %.critedge2 ] ; 5 uses
  %.1350537 = phi ptr [ %i.qb, %bb.bg ], [ %.0349, %.critedge2 ] ; 32 uses
  %.1352536 = phi ptr [ %.2353, %bb.bg ], [ %.0351, %.critedge2 ] ; 19 uses
  %.3535 = phi i32 [ %.4, %bb.bg ], [ %.1355.lcssa, %.critedge2 ]
  %i.on = mul i64 %2, %indvar
  %i.oo = sub i64 %i.n, %i.on
  %scevgep1047 = getelementptr i8, ptr %.0349, i64 %i.oo
  %i.op = mul i64 %2, %indvar
  %i.oq = sub i64 %i.p, %i.op
  %scevgep1023 = getelementptr i8, ptr %.0349, i64 %i.oq
  br i1 %.not396, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph539
  %i.or = tail call i32 %3(ptr noundef %4, ptr noundef %.1350537, ptr noundef %.0552) #2
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph539
  %i.os = load i32, ptr %.1350537, align 4, !tbaa !8
  %i.ot = load i32, ptr %.0552, align 4, !tbaa !8
  %i.ou = sub i32 %i.os, %i.ot
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ov = phi i32 [ %i.or, %bb.az ], [ %i.ou, %bb.ba ] ; 2 uses
  %i.ow = icmp sgt i32 %i.ov, -1
  br i1 %i.ow, label %bb.bc, label %.critedge4

bb.bc:                                            ; preds = %bb.bb
  %i.ox = icmp eq i32 %i.ov, 0
  br i1 %i.ox, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.lr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.oy = load i64, ptr %.1350537, align 8, !tbaa !9
  %i.oz = load i64, ptr %.1352536, align 8, !tbaa !9
  store i64 %i.oz, ptr %.1350537, align 8, !tbaa !9
  store i64 %i.oy, ptr %.1352536, align 8, !tbaa !9
  br label %swapfunc.exit433

bb.bf:                                            ; preds = %bb.bd
  br i1 %or.cond553, label %.preheader624.preheader, label %iter.check1073

iter.check1073:                                   ; preds = %bb.bf
  br i1 %min.iters.check1053, label %.preheader495.preheader, label %vector.memcheck1046

vector.memcheck1046:                              ; preds = %iter.check1073
  %scevgep1048 = getelementptr i8, ptr %.1352536, i64 %i.n
  %bound01049 = icmp ult ptr %.1350537, %scevgep1048
  %bound11050 = icmp ult ptr %.1352536, %scevgep1047
  %found.conflict1051 = and i1 %bound01049, %bound11050
  br i1 %found.conflict1051, label %.preheader495.preheader, label %vector.main.loop.iter.check1054

vector.main.loop.iter.check1054:                  ; preds = %vector.memcheck1046
  br i1 %min.iters.check1055, label %vec.epilog.ph1077, label %vector.ph1056

vector.ph1056:                                    ; preds = %vector.main.loop.iter.check1054
  %i.pa = getelementptr i8, ptr %.1350537, i64 %n.vec1057
  %i.pb = getelementptr i8, ptr %.1352536, i64 %n.vec1057
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %vector.ph1056
  %index1059 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1066, %vector.body1058 ] ; 3 uses
  %next.gep1060 = getelementptr i8, ptr %.1350537, i64 %index1059 ; 3 uses
  %next.gep1061 = getelementptr i8, ptr %.1352536, i64 %index1059 ; 3 uses
  %i.pc = getelementptr i8, ptr %next.gep1060, i64 16 ; 2 uses
  %wide.load1062 = load <16 x i8>, ptr %next.gep1060, align 1, !tbaa !27, !alias.scope !227, !noalias !230
  %wide.load1063 = load <16 x i8>, ptr %i.pc, align 1, !tbaa !27, !alias.scope !227, !noalias !230
  %i.pd = getelementptr i8, ptr %next.gep1061, i64 16 ; 2 uses
  %wide.load1064 = load <16 x i8>, ptr %next.gep1061, align 1, !tbaa !27, !alias.scope !230
  %wide.load1065 = load <16 x i8>, ptr %i.pd, align 1, !tbaa !27, !alias.scope !230
  store <16 x i8> %wide.load1064, ptr %next.gep1060, align 1, !tbaa !27, !alias.scope !227, !noalias !230
  store <16 x i8> %wide.load1065, ptr %i.pc, align 1, !tbaa !27, !alias.scope !227, !noalias !230
  store <16 x i8> %wide.load1062, ptr %next.gep1061, align 1, !tbaa !27, !alias.scope !230
  store <16 x i8> %wide.load1063, ptr %i.pd, align 1, !tbaa !27, !alias.scope !230
  %index.next1066 = add nuw i64 %index1059, 32    ; 2 uses
  %i.pe = icmp eq i64 %index.next1066, %n.vec1057
  br i1 %i.pe, label %middle.block1067, label %vector.body1058, !llvm.loop !232

middle.block1067:                                 ; preds = %vector.body1058
  br i1 %cmp.n1068, label %swapfunc.exit433, label %vec.epilog.iter.check1075

vec.epilog.iter.check1075:                        ; preds = %middle.block1067
  br i1 %min.epilog.iters.check1076, label %.preheader495.preheader, label %vec.epilog.ph1077, !prof !34

vec.epilog.ph1077:                                ; preds = %vector.main.loop.iter.check1054, %vec.epilog.iter.check1075
  %vec.epilog.resume.val1069 = phi i64 [ %n.vec1057, %vec.epilog.iter.check1075 ], [ 0, %vector.main.loop.iter.check1054 ]
  %i.pf = getelementptr i8, ptr %.1350537, i64 %n.vec1078
  %i.pg = getelementptr i8, ptr %.1352536, i64 %n.vec1078
  br label %vec.epilog.vector.body1079

vec.epilog.vector.body1079:                       ; preds = %vec.epilog.vector.body1079, %vec.epilog.ph1077
  %index1080 = phi i64 [ %vec.epilog.resume.val1069, %vec.epilog.ph1077 ], [ %index.next1085, %vec.epilog.vector.body1079 ] ; 3 uses
  %next.gep1081 = getelementptr i8, ptr %.1350537, i64 %index1080 ; 2 uses
  %next.gep1082 = getelementptr i8, ptr %.1352536, i64 %index1080 ; 2 uses
  %wide.load1083 = load <4 x i8>, ptr %next.gep1081, align 1, !tbaa !27, !alias.scope !227, !noalias !230
  %wide.load1084 = load <4 x i8>, ptr %next.gep1082, align 1, !tbaa !27, !alias.scope !230
  store <4 x i8> %wide.load1084, ptr %next.gep1081, align 1, !tbaa !27, !alias.scope !227, !noalias !230
  store <4 x i8> %wide.load1083, ptr %next.gep1082, align 1, !tbaa !27, !alias.scope !230
  %index.next1085 = add nuw i64 %index1080, 4     ; 2 uses
  %i.ph = icmp eq i64 %index.next1085, %n.vec1078
  br i1 %i.ph, label %vec.epilog.middle.block1086, label %vec.epilog.vector.body1079, !llvm.loop !233

vec.epilog.middle.block1086:                      ; preds = %vec.epilog.vector.body1079
  br i1 %cmp.n1087, label %swapfunc.exit433, label %.preheader495.preheader

.preheader495.preheader:                          ; preds = %vector.memcheck1046, %iter.check1073, %vec.epilog.iter.check1075, %vec.epilog.middle.block1086
  %.020.i427.ph = phi i64 [ %i.i, %iter.check1073 ], [ %i.i, %vector.memcheck1046 ], [ %i.ac, %vec.epilog.iter.check1075 ], [ %i.ad, %vec.epilog.middle.block1086 ]
  %.019.i428.ph = phi ptr [ %.1350537, %iter.check1073 ], [ %.1350537, %vector.memcheck1046 ], [ %i.pa, %vec.epilog.iter.check1075 ], [ %i.pf, %vec.epilog.middle.block1086 ]
  %.018.i429.ph = phi ptr [ %.1352536, %iter.check1073 ], [ %.1352536, %vector.memcheck1046 ], [ %i.pb, %vec.epilog.iter.check1075 ], [ %i.pg, %vec.epilog.middle.block1086 ]
  br label %.preheader495

.preheader624.preheader:                          ; preds = %bb.bf
  br i1 %min.iters.check1029, label %.preheader624.preheader1586, label %vector.memcheck1021

vector.memcheck1021:                              ; preds = %.preheader624.preheader
  %scevgep1024 = getelementptr i8, ptr %.1352536, i64 %i.p
  %bound01025 = icmp ult ptr %.1350537, %scevgep1024
  %bound11026 = icmp ult ptr %.1352536, %scevgep1023
  %found.conflict1027 = and i1 %bound01025, %bound11026
  br i1 %found.conflict1027, label %.preheader624.preheader1586, label %vector.ph1030

vector.ph1030:                                    ; preds = %vector.memcheck1021
  %i.pi = getelementptr i8, ptr %.1352536, i64 %i.ae
  %i.pj = getelementptr i8, ptr %.1350537, i64 %i.ae
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1030
  %index1033 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1040, %vector.body1032 ] ; 2 uses
  %i.pk = shl i64 %index1033, 3                   ; 2 uses
  %next.gep1034 = getelementptr i8, ptr %.1352536, i64 %i.pk ; 3 uses
  %next.gep1035 = getelementptr i8, ptr %.1350537, i64 %i.pk ; 3 uses
  %i.pl = getelementptr i8, ptr %next.gep1035, i64 16 ; 2 uses
  %wide.load1036 = load <2 x i64>, ptr %next.gep1035, align 8, !tbaa !9, !alias.scope !234, !noalias !237
  %wide.load1037 = load <2 x i64>, ptr %i.pl, align 8, !tbaa !9, !alias.scope !234, !noalias !237
  %i.pm = getelementptr i8, ptr %next.gep1034, i64 16 ; 2 uses
  %wide.load1038 = load <2 x i64>, ptr %next.gep1034, align 8, !tbaa !9, !alias.scope !237
  %wide.load1039 = load <2 x i64>, ptr %i.pm, align 8, !tbaa !9, !alias.scope !237
  store <2 x i64> %wide.load1038, ptr %next.gep1035, align 8, !tbaa !9, !alias.scope !234, !noalias !237
  store <2 x i64> %wide.load1039, ptr %i.pl, align 8, !tbaa !9, !alias.scope !234, !noalias !237
  store <2 x i64> %wide.load1036, ptr %next.gep1034, align 8, !tbaa !9, !alias.scope !237
  store <2 x i64> %wide.load1037, ptr %i.pm, align 8, !tbaa !9, !alias.scope !237
  %index.next1040 = add nuw i64 %index1033, 4     ; 2 uses
  %i.pn = icmp eq i64 %index.next1040, %n.vec1031
  br i1 %i.pn, label %middle.block1041, label %vector.body1032, !llvm.loop !239

middle.block1041:                                 ; preds = %vector.body1032
  br i1 %cmp.n1042, label %swapfunc.exit433, label %.preheader624.preheader1586

.preheader624.preheader1586:                      ; preds = %vector.memcheck1021, %.preheader624.preheader, %middle.block1041
  %.022.i430.ph = phi ptr [ %.1352536, %vector.memcheck1021 ], [ %.1352536, %.preheader624.preheader ], [ %i.pi, %middle.block1041 ]
  %.021.i431.ph = phi ptr [ %.1350537, %vector.memcheck1021 ], [ %.1350537, %.preheader624.preheader ], [ %i.pj, %middle.block1041 ]
  %.0.i432.ph = phi i64 [ %i.j, %vector.memcheck1021 ], [ %i.j, %.preheader624.preheader ], [ %7, %middle.block1041 ]
  br label %.preheader624

.preheader624:                                    ; preds = %.preheader624.preheader1586, %.preheader624
  %.022.i430 = phi ptr [ %i.pr, %.preheader624 ], [ %.022.i430.ph, %.preheader624.preheader1586 ] ; 3 uses
  %.021.i431 = phi ptr [ %i.pq, %.preheader624 ], [ %.021.i431.ph, %.preheader624.preheader1586 ] ; 3 uses
  %.0.i432 = phi i64 [ %i.ps, %.preheader624 ], [ %.0.i432.ph, %.preheader624.preheader1586 ] ; 2 uses
  %i.po = load i64, ptr %.021.i431, align 8, !tbaa !9
  %i.pp = load i64, ptr %.022.i430, align 8, !tbaa !9
  %i.pq = getelementptr inbounds nuw i8, ptr %.021.i431, i64 8
  store i64 %i.pp, ptr %.021.i431, align 8, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.022.i430, i64 8
  store i64 %i.po, ptr %.022.i430, align 8, !tbaa !9
  %i.ps = add nsw i64 %.0.i432, -1
  %i.pt = icmp samesign ugt i64 %.0.i432, 1
  br i1 %i.pt, label %.preheader624, label %swapfunc.exit433, !llvm.loop !240

.preheader495:                                    ; preds = %.preheader495.preheader, %.preheader495
  %.020.i427 = phi i64 [ %i.py, %.preheader495 ], [ %.020.i427.ph, %.preheader495.preheader ] ; 2 uses
  %.019.i428 = phi ptr [ %i.pw, %.preheader495 ], [ %.019.i428.ph, %.preheader495.preheader ] ; 3 uses
  %.018.i429 = phi ptr [ %i.px, %.preheader495 ], [ %.018.i429.ph, %.preheader495.preheader ] ; 3 uses
  %i.pu = load i8, ptr %.019.i428, align 1, !tbaa !27
  %i.pv = load i8, ptr %.018.i429, align 1, !tbaa !27
  %i.pw = getelementptr inbounds nuw i8, ptr %.019.i428, i64 1
  store i8 %i.pv, ptr %.019.i428, align 1, !tbaa !27
  %i.px = getelementptr inbounds nuw i8, ptr %.018.i429, i64 1
  store i8 %i.pu, ptr %.018.i429, align 1, !tbaa !27
  %i.py = add nsw i64 %.020.i427, -1
  %i.pz = icmp sgt i64 %.020.i427, 1
  br i1 %i.pz, label %.preheader495, label %swapfunc.exit433, !llvm.loop !241

swapfunc.exit433:                                 ; preds = %.preheader495, %.preheader624, %middle.block1067, %vec.epilog.middle.block1086, %middle.block1041, %bb.be
  %i.qa = getelementptr inbounds i8, ptr %.1352536, i64 %i.a
  br label %bb.bg

bb.bg:                                            ; preds = %swapfunc.exit433, %bb.bc
  %.4 = phi i32 [ 1, %swapfunc.exit433 ], [ %.3535, %bb.bc ] ; 2 uses
  %.2353 = phi ptr [ %i.qa, %swapfunc.exit433 ], [ %.1352536, %bb.bc ] ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %.1350537, i64 %i.a ; 3 uses
  %.not399 = icmp ugt ptr %.1348.lcssa, %i.qb
  %indvar.next = add i64 %indvar, 1
  br i1 %.not399, label %.critedge2._crit_edge, label %.lr.ph539

.critedge4:                                       ; preds = %bb.bb
  br i1 %i.lr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.critedge4
  %i.qc = load i64, ptr %.1348.lcssa, align 8, !tbaa !9
  %i.qd = load i64, ptr %.1350537, align 8, !tbaa !9
  store i64 %i.qd, ptr %.1348.lcssa, align 8, !tbaa !9
  store i64 %i.qc, ptr %.1350537, align 8, !tbaa !9
  br label %swapfunc.exit440

bb.bi:                                            ; preds = %.critedge4
  br i1 %or.cond553, label %.preheader628.preheader, label %iter.check1003

iter.check1003:                                   ; preds = %bb.bi
  br i1 %min.iters.check983, label %.preheader499.preheader, label %vector.memcheck975

vector.memcheck975:                               ; preds = %iter.check1003
  %scevgep976 = getelementptr i8, ptr %.1348.lcssa, i64 %i.m
  %i.qe = mul i64 %2, %indvar
  %i.qf = sub i64 %i.m, %i.qe
  %scevgep977 = getelementptr i8, ptr %.0349, i64 %i.qf
  %bound0978 = icmp ult ptr %.1348.lcssa, %scevgep977
  %bound1979 = icmp ult ptr %.1350537, %scevgep976
  %found.conflict980 = and i1 %bound0978, %bound1979
  br i1 %found.conflict980, label %.preheader499.preheader, label %vector.main.loop.iter.check984

vector.main.loop.iter.check984:                   ; preds = %vector.memcheck975
  br i1 %min.iters.check985, label %vec.epilog.ph1007, label %vector.ph986

vector.ph986:                                     ; preds = %vector.main.loop.iter.check984
  %i.qg = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec987
  %i.qh = getelementptr i8, ptr %.1350537, i64 %n.vec987
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next996, %vector.body988 ] ; 3 uses
  %next.gep990 = getelementptr i8, ptr %.1348.lcssa, i64 %index989 ; 3 uses
  %next.gep991 = getelementptr i8, ptr %.1350537, i64 %index989 ; 3 uses
  %i.qi = getelementptr i8, ptr %next.gep990, i64 16 ; 2 uses
  %wide.load992 = load <16 x i8>, ptr %next.gep990, align 1, !tbaa !27, !alias.scope !242, !noalias !245
  %wide.load993 = load <16 x i8>, ptr %i.qi, align 1, !tbaa !27, !alias.scope !242, !noalias !245
  %i.qj = getelementptr i8, ptr %next.gep991, i64 16 ; 2 uses
  %wide.load994 = load <16 x i8>, ptr %next.gep991, align 1, !tbaa !27, !alias.scope !245
  %wide.load995 = load <16 x i8>, ptr %i.qj, align 1, !tbaa !27, !alias.scope !245
  store <16 x i8> %wide.load994, ptr %next.gep990, align 1, !tbaa !27, !alias.scope !242, !noalias !245
  store <16 x i8> %wide.load995, ptr %i.qi, align 1, !tbaa !27, !alias.scope !242, !noalias !245
  store <16 x i8> %wide.load992, ptr %next.gep991, align 1, !tbaa !27, !alias.scope !245
  store <16 x i8> %wide.load993, ptr %i.qj, align 1, !tbaa !27, !alias.scope !245
  %index.next996 = add nuw i64 %index989, 32      ; 2 uses
  %i.qk = icmp eq i64 %index.next996, %n.vec987
  br i1 %i.qk, label %middle.block997, label %vector.body988, !llvm.loop !247

middle.block997:                                  ; preds = %vector.body988
  br i1 %cmp.n998, label %swapfunc.exit440, label %vec.epilog.iter.check1005

vec.epilog.iter.check1005:                        ; preds = %middle.block997
  br i1 %min.epilog.iters.check1006, label %.preheader499.preheader, label %vec.epilog.ph1007, !prof !34

vec.epilog.ph1007:                                ; preds = %vector.main.loop.iter.check984, %vec.epilog.iter.check1005
  %vec.epilog.resume.val999 = phi i64 [ %n.vec987, %vec.epilog.iter.check1005 ], [ 0, %vector.main.loop.iter.check984 ]
  %i.ql = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec1008
  %i.qm = getelementptr i8, ptr %.1350537, i64 %n.vec1008
  br label %vec.epilog.vector.body1009

vec.epilog.vector.body1009:                       ; preds = %vec.epilog.vector.body1009, %vec.epilog.ph1007
  %index1010 = phi i64 [ %vec.epilog.resume.val999, %vec.epilog.ph1007 ], [ %index.next1015, %vec.epilog.vector.body1009 ] ; 3 uses
  %next.gep1011 = getelementptr i8, ptr %.1348.lcssa, i64 %index1010 ; 2 uses
  %next.gep1012 = getelementptr i8, ptr %.1350537, i64 %index1010 ; 2 uses
  %wide.load1013 = load <4 x i8>, ptr %next.gep1011, align 1, !tbaa !27, !alias.scope !242, !noalias !245
  %wide.load1014 = load <4 x i8>, ptr %next.gep1012, align 1, !tbaa !27, !alias.scope !245
  store <4 x i8> %wide.load1014, ptr %next.gep1011, align 1, !tbaa !27, !alias.scope !242, !noalias !245
  store <4 x i8> %wide.load1013, ptr %next.gep1012, align 1, !tbaa !27, !alias.scope !245
  %index.next1015 = add nuw i64 %index1010, 4     ; 2 uses
  %i.qn = icmp eq i64 %index.next1015, %n.vec1008
  br i1 %i.qn, label %vec.epilog.middle.block1016, label %vec.epilog.vector.body1009, !llvm.loop !248

vec.epilog.middle.block1016:                      ; preds = %vec.epilog.vector.body1009
  br i1 %cmp.n1017, label %swapfunc.exit440, label %.preheader499.preheader

.preheader499.preheader:                          ; preds = %vector.memcheck975, %iter.check1003, %vec.epilog.iter.check1005, %vec.epilog.middle.block1016
  %.020.i434.ph = phi i64 [ %i.i, %iter.check1003 ], [ %i.i, %vector.memcheck975 ], [ %i.ag, %vec.epilog.iter.check1005 ], [ %i.ah, %vec.epilog.middle.block1016 ]
  %.019.i435.ph = phi ptr [ %.1348.lcssa, %iter.check1003 ], [ %.1348.lcssa, %vector.memcheck975 ], [ %i.qg, %vec.epilog.iter.check1005 ], [ %i.ql, %vec.epilog.middle.block1016 ]
  %.018.i436.ph = phi ptr [ %.1350537, %iter.check1003 ], [ %.1350537, %vector.memcheck975 ], [ %i.qh, %vec.epilog.iter.check1005 ], [ %i.qm, %vec.epilog.middle.block1016 ]
  br label %.preheader499

.preheader628.preheader:                          ; preds = %bb.bi
  br i1 %min.iters.check958, label %.preheader628.preheader1590, label %vector.memcheck950

vector.memcheck950:                               ; preds = %.preheader628.preheader
  %scevgep952 = getelementptr i8, ptr %.1348.lcssa, i64 %i.l
  %i.qo = mul i64 %2, %indvar
  %i.qp = sub i64 %i.l, %i.qo
  %scevgep953 = getelementptr i8, ptr %.0349, i64 %i.qp
  %bound0954 = icmp ult ptr %.1348.lcssa, %scevgep953
  %bound1955 = icmp ult ptr %.1350537, %scevgep952
  %found.conflict956 = and i1 %bound0954, %bound1955
  br i1 %found.conflict956, label %.preheader628.preheader1590, label %vector.ph959

vector.ph959:                                     ; preds = %vector.memcheck950
  %i.qq = getelementptr i8, ptr %.1350537, i64 %i.ai
  %i.qr = getelementptr i8, ptr %.1348.lcssa, i64 %i.ai
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %vector.ph959
  %index962 = phi i64 [ 0, %vector.ph959 ], [ %index.next969, %vector.body961 ] ; 2 uses
  %i.qs = shl i64 %index962, 3                    ; 2 uses
  %next.gep963 = getelementptr i8, ptr %.1350537, i64 %i.qs ; 3 uses
  %next.gep964 = getelementptr i8, ptr %.1348.lcssa, i64 %i.qs ; 3 uses
  %i.qt = getelementptr i8, ptr %next.gep964, i64 16 ; 2 uses
  %wide.load965 = load <2 x i64>, ptr %next.gep964, align 8, !tbaa !9, !alias.scope !249, !noalias !252
  %wide.load966 = load <2 x i64>, ptr %i.qt, align 8, !tbaa !9, !alias.scope !249, !noalias !252
  %i.qu = getelementptr i8, ptr %next.gep963, i64 16 ; 2 uses
  %wide.load967 = load <2 x i64>, ptr %next.gep963, align 8, !tbaa !9, !alias.scope !252
  %wide.load968 = load <2 x i64>, ptr %i.qu, align 8, !tbaa !9, !alias.scope !252
  store <2 x i64> %wide.load967, ptr %next.gep964, align 8, !tbaa !9, !alias.scope !249, !noalias !252
  store <2 x i64> %wide.load968, ptr %i.qt, align 8, !tbaa !9, !alias.scope !249, !noalias !252
  store <2 x i64> %wide.load965, ptr %next.gep963, align 8, !tbaa !9, !alias.scope !252
  store <2 x i64> %wide.load966, ptr %i.qu, align 8, !tbaa !9, !alias.scope !252
  %index.next969 = add nuw i64 %index962, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next969, %n.vec960
  br i1 %i.qv, label %middle.block970, label %vector.body961, !llvm.loop !254

middle.block970:                                  ; preds = %vector.body961
  br i1 %cmp.n971, label %swapfunc.exit440, label %.preheader628.preheader1590

.preheader628.preheader1590:                      ; preds = %vector.memcheck950, %.preheader628.preheader, %middle.block970
  %.022.i437.ph = phi ptr [ %.1350537, %vector.memcheck950 ], [ %.1350537, %.preheader628.preheader ], [ %i.qq, %middle.block970 ]
  %.021.i438.ph = phi ptr [ %.1348.lcssa, %vector.memcheck950 ], [ %.1348.lcssa, %.preheader628.preheader ], [ %i.qr, %middle.block970 ]
  %.0.i439.ph = phi i64 [ %i.j, %vector.memcheck950 ], [ %i.j, %.preheader628.preheader ], [ %8, %middle.block970 ]
  br label %.preheader628

.preheader628:                                    ; preds = %.preheader628.preheader1590, %.preheader628
  %.022.i437 = phi ptr [ %i.qz, %.preheader628 ], [ %.022.i437.ph, %.preheader628.preheader1590 ] ; 3 uses
  %.021.i438 = phi ptr [ %i.qy, %.preheader628 ], [ %.021.i438.ph, %.preheader628.preheader1590 ] ; 3 uses
  %.0.i439 = phi i64 [ %i.ra, %.preheader628 ], [ %.0.i439.ph, %.preheader628.preheader1590 ] ; 2 uses
  %i.qw = load i64, ptr %.021.i438, align 8, !tbaa !9
  %i.qx = load i64, ptr %.022.i437, align 8, !tbaa !9
  %i.qy = getelementptr inbounds nuw i8, ptr %.021.i438, i64 8
  store i64 %i.qx, ptr %.021.i438, align 8, !tbaa !9
  %i.qz = getelementptr inbounds nuw i8, ptr %.022.i437, i64 8
  store i64 %i.qw, ptr %.022.i437, align 8, !tbaa !9
  %i.ra = add nsw i64 %.0.i439, -1
  %i.rb = icmp samesign ugt i64 %.0.i439, 1
  br i1 %i.rb, label %.preheader628, label %swapfunc.exit440, !llvm.loop !255

.preheader499:                                    ; preds = %.preheader499.preheader, %.preheader499
  %.020.i434 = phi i64 [ %i.rg, %.preheader499 ], [ %.020.i434.ph, %.preheader499.preheader ] ; 2 uses
  %.019.i435 = phi ptr [ %i.re, %.preheader499 ], [ %.019.i435.ph, %.preheader499.preheader ] ; 3 uses
  %.018.i436 = phi ptr [ %i.rf, %.preheader499 ], [ %.018.i436.ph, %.preheader499.preheader ] ; 3 uses
  %i.rc = load i8, ptr %.019.i435, align 1, !tbaa !27
  %i.rd = load i8, ptr %.018.i436, align 1, !tbaa !27
  %i.re = getelementptr inbounds nuw i8, ptr %.019.i435, i64 1
  store i8 %i.rd, ptr %.019.i435, align 1, !tbaa !27
  %i.rf = getelementptr inbounds nuw i8, ptr %.018.i436, i64 1
  store i8 %i.rc, ptr %.018.i436, align 1, !tbaa !27
  %i.rg = add nsw i64 %.020.i434, -1
  %i.rh = icmp sgt i64 %.020.i434, 1
  br i1 %i.rh, label %.preheader499, label %swapfunc.exit440, !llvm.loop !256

swapfunc.exit440:                                 ; preds = %.preheader499, %.preheader628, %middle.block997, %vec.epilog.middle.block1016, %middle.block970, %bb.bh
  %i.ri = getelementptr inbounds nuw i8, ptr %.1348.lcssa, i64 %2
  %i.rj = getelementptr inbounds i8, ptr %.1350537, i64 %i.a
  br label %bb.aq

.critedge2._crit_edge:                            ; preds = %.critedge2, %bb.bg
  %.3.lcssa = phi i32 [ %.4, %bb.bg ], [ %.1355.lcssa, %.critedge2 ]
  %.1352.lcssa = phi ptr [ %.2353, %bb.bg ], [ %.0351, %.critedge2 ]
  %.1350.lcssa = phi ptr [ %i.qb, %bb.bg ], [ %.0349, %.critedge2 ]
  %i.rk = icmp eq i32 %.3.lcssa, 0
  %i.rl = mul i64 %.0345551, %2                   ; 4 uses
  %i.rm = getelementptr i8, ptr %.0552, i64 %i.rl ; 9 uses
  br i1 %i.rk, label %.preheader493, label %bb.bj

.preheader493:                                    ; preds = %.critedge2._crit_edge
  %i.rn = icmp samesign ult i64 %2, %i.rl
  br i1 %i.rn, label %.preheader492.lr.ph, label %.loopexit

.preheader492.lr.ph:                              ; preds = %.preheader493
  br i1 %i.lr, label %.preheader492.lr.ph.split.us, label %.preheader492.lr.ph.split

.preheader492.lr.ph.split.us:                     ; preds = %.preheader492.lr.ph
  br i1 %.not396, label %.preheader492.us.us, label %.preheader492.us

.preheader492.us.us:                              ; preds = %.preheader492.lr.ph.split.us, %.critedge6.us.us
  %.3363566.us.us = phi ptr [ %i.rp, %.critedge6.us.us ], [ %i.mu, %.preheader492.lr.ph.split.us ] ; 4 uses
  %i.ro = icmp ugt ptr %.3363566.us.us, %.0552
  br i1 %i.ro, label %.lr.ph561.us.us.preheader, label %.critedge6.us.us

.lr.ph561.us.us.preheader:                        ; preds = %.preheader492.us.us
  %.pre692 = load i32, ptr %.3363566.us.us, align 4, !tbaa !8
  br label %.lr.ph561.us.us

.critedge6.us.us:                                 ; preds = %swapfunc.exit447.us.us.us.us, %.lr.ph561.us.us, %.preheader492.us.us
  %i.rp = getelementptr inbounds nuw i8, ptr %.3363566.us.us, i64 %2 ; 2 uses
  %i.rq = icmp ult ptr %i.rp, %i.rm
  br i1 %i.rq, label %.preheader492.us.us, label %.loopexit

.lr.ph561.us.us:                                  ; preds = %.lr.ph561.us.us.preheader, %swapfunc.exit447.us.us.us.us
  %i.rr = phi i32 [ %i.rz, %swapfunc.exit447.us.us.us.us ], [ %.pre692, %.lr.ph561.us.us.preheader ]
  %.2359560.us.us.us.us = phi ptr [ %i.rs, %swapfunc.exit447.us.us.us.us ], [ %.3363566.us.us, %.lr.ph561.us.us.preheader ] ; 3 uses
  %i.rs = getelementptr inbounds i8, ptr %.2359560.us.us.us.us, i64 %i.a ; 5 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !8
  %i.ru = sub i32 %i.rt, %i.rr
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %swapfunc.exit447.us.us.us.us, label %.critedge6.us.us

swapfunc.exit447.us.us.us.us:                     ; preds = %.lr.ph561.us.us
  %i.rw = load i64, ptr %.2359560.us.us.us.us, align 8, !tbaa !9 ; 2 uses
  %i.rx = load i64, ptr %i.rs, align 8, !tbaa !9
  store i64 %i.rx, ptr %.2359560.us.us.us.us, align 8, !tbaa !9
  store i64 %i.rw, ptr %i.rs, align 8, !tbaa !9
  %i.ry = icmp ugt ptr %i.rs, %.0552
  %i.rz = trunc i64 %i.rw to i32
  br i1 %i.ry, label %.lr.ph561.us.us, label %.critedge6.us.us

.preheader492.us:                                 ; preds = %.preheader492.lr.ph.split.us, %.critedge6.us
  %.3363566.us = phi ptr [ %i.sb, %.critedge6.us ], [ %i.mu, %.preheader492.lr.ph.split.us ] ; 3 uses
  %i.sa = icmp ugt ptr %.3363566.us, %.0552
  br i1 %i.sa, label %.lr.ph561.us, label %.critedge6.us

.critedge6.us:                                    ; preds = %swapfunc.exit447.us.us573, %.lr.ph561.us, %.preheader492.us
  %i.sb = getelementptr inbounds nuw i8, ptr %.3363566.us, i64 %2 ; 2 uses
  %i.sc = icmp ult ptr %i.sb, %i.rm
  br i1 %i.sc, label %.preheader492.us, label %.loopexit

.lr.ph561.us:                                     ; preds = %.preheader492.us, %swapfunc.exit447.us.us573
  %.2359560.us.us572 = phi ptr [ %i.sd, %swapfunc.exit447.us.us573 ], [ %.3363566.us, %.preheader492.us ] ; 4 uses
  %i.sd = getelementptr inbounds i8, ptr %.2359560.us.us572, i64 %i.a ; 5 uses
  %i.se = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.sd, ptr noundef nonnull %.2359560.us.us572) #2
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %swapfunc.exit447.us.us573, label %.critedge6.us

swapfunc.exit447.us.us573:                        ; preds = %.lr.ph561.us
  %i.sg = load i64, ptr %.2359560.us.us572, align 8, !tbaa !9
  %i.sh = load i64, ptr %i.sd, align 8, !tbaa !9
  store i64 %i.sh, ptr %.2359560.us.us572, align 8, !tbaa !9
  store i64 %i.sg, ptr %i.sd, align 8, !tbaa !9
  %i.si = icmp ugt ptr %i.sd, %.0552
  br i1 %i.si, label %.lr.ph561.us, label %.critedge6.us

.preheader492.lr.ph.split:                        ; preds = %.preheader492.lr.ph
  br i1 %or.cond553, label %.preheader492.lr.ph.split.split.us, label %.preheader492.lr.ph.split.split

.preheader492.lr.ph.split.split.us:               ; preds = %.preheader492.lr.ph.split
  %i.sj = and i64 %i.i, -8                        ; 2 uses
  %i.sk = add i64 %2, %i.sj
  %i.sl = add i64 %i.sk, 8                        ; 2 uses
  %.not1569 = icmp eq i64 %i.j, 0
  %i.sm = select i1 %.not1569, i64 0, i64 8       ; 4 uses
  %i.sn = add nsw i64 %i.sj, 8                    ; 2 uses
  br i1 %.not396, label %.preheader492.us577.us.preheader, label %.preheader492.us577.preheader

.preheader492.us577.preheader:                    ; preds = %.preheader492.lr.ph.split.split.us
  %min.iters.check1346 = icmp ult i64 %i.i, 32
  %n.vec1348 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.so = shl nuw i64 %n.vec1348, 3               ; 2 uses
  %11 = and i64 %i.j, 3
  %cmp.n1359 = icmp eq i64 %i.j, %n.vec1348
  br label %.preheader492.us577

.preheader492.us577.us.preheader:                 ; preds = %.preheader492.lr.ph.split.split.us
  %min.iters.check1376 = icmp ult i64 %i.i, 32
  %n.vec1378 = and i64 %i.j, 2305843009213693948  ; 3 uses
  %i.sp = shl nuw i64 %n.vec1378, 3               ; 2 uses
  %12 = and i64 %i.j, 3
  %cmp.n1389 = icmp eq i64 %i.j, %n.vec1378
  br label %.preheader492.us577.us

.preheader492.us577.us:                           ; preds = %.preheader492.us577.us.preheader, %.critedge6.us579.us
  %indvar1365 = phi i64 [ %indvar.next1366, %.critedge6.us579.us ], [ 0, %.preheader492.us577.us.preheader ] ; 2 uses
  %.3363566.us578.us = phi ptr [ %i.su, %.critedge6.us579.us ], [ %i.mu, %.preheader492.us577.us.preheader ] ; 4 uses
  %i.sq = mul i64 %2, %indvar1365                 ; 3 uses
  %i.sr = icmp ugt ptr %.3363566.us578.us, %.0552
  br i1 %i.sr, label %.lr.ph561.us580.us.preheader, label %.critedge6.us579.us

.lr.ph561.us580.us.preheader:                     ; preds = %.preheader492.us577.us
  %.pre691 = load i32, ptr %.3363566.us578.us, align 4, !tbaa !8
  %i.ss = add i64 %i.sl, %i.sq
  %i.st = add i64 %i.sn, %i.sq
  br label %.lr.ph561.us580.us

.critedge6.us579.us:                              ; preds = %swapfunc.exit447.loopexit.us.us.us.us, %.lr.ph561.us580.us, %.preheader492.us577.us
  %i.su = getelementptr inbounds nuw i8, ptr %.3363566.us578.us, i64 %2 ; 2 uses
  %i.sv = icmp ult ptr %i.su, %i.rm
  %indvar.next1366 = add i64 %indvar1365, 1
  br i1 %i.sv, label %.preheader492.us577.us, label %.loopexit

.lr.ph561.us580.us:                               ; preds = %.lr.ph561.us580.us.preheader, %swapfunc.exit447.loopexit.us.us.us.us
  %indvar1367 = phi i64 [ 0, %.lr.ph561.us580.us.preheader ], [ %indvar.next1368, %swapfunc.exit447.loopexit.us.us.us.us ] ; 2 uses
  %i.sw = phi i32 [ %.pre691, %.lr.ph561.us580.us.preheader ], [ %i.te, %swapfunc.exit447.loopexit.us.us.us.us ]
  %.2359560.us563.us.us.us = phi ptr [ %.3363566.us578.us, %.lr.ph561.us580.us.preheader ], [ %i.td, %swapfunc.exit447.loopexit.us.us.us.us ] ; 6 uses
  %i.sx = mul i64 %2, %indvar1367                 ; 3 uses
  %i.sy = add i64 %i.sm, %i.sx
  %i.sz = sub i64 %i.ss, %i.sy
  %scevgep1369 = getelementptr i8, ptr %.0552, i64 %i.sz
  %i.ta = sub i64 %i.sq, %i.sx
  %scevgep1370 = getelementptr i8, ptr %.0552, i64 %i.ta
  %i.tb = add i64 %i.sm, %i.sx
  %i.tc = sub i64 %i.st, %i.tb
  %scevgep1371 = getelementptr i8, ptr %.0552, i64 %i.tc
  %i.td = getelementptr inbounds i8, ptr %.2359560.us563.us.us.us, i64 %i.a ; 7 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !8  ; 2 uses
  %i.tf = sub i32 %i.te, %i.sw
  %i.tg = icmp sgt i32 %i.tf, 0
  br i1 %i.tg, label %.preheader786, label %.critedge6.us579.us

.preheader786:                                    ; preds = %.lr.ph561.us580.us
  br i1 %min.iters.check1376, label %scalar.ph1375.preheader, label %vector.memcheck1363

vector.memcheck1363:                              ; preds = %.preheader786
  %bound01372 = icmp ult ptr %.2359560.us563.us.us.us, %scevgep1371
  %bound11373 = icmp ult ptr %scevgep1370, %scevgep1369
  %found.conflict1374 = and i1 %bound01372, %bound11373
  br i1 %found.conflict1374, label %scalar.ph1375.preheader, label %vector.ph1377

vector.ph1377:                                    ; preds = %vector.memcheck1363
  %i.th = getelementptr i8, ptr %i.td, i64 %i.sp
  %i.ti = getelementptr i8, ptr %.2359560.us563.us.us.us, i64 %i.sp
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %vector.ph1377
  %index1380 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1387, %vector.body1379 ] ; 2 uses
  %i.tj = shl i64 %index1380, 3                   ; 2 uses
  %next.gep1381 = getelementptr i8, ptr %i.td, i64 %i.tj ; 3 uses
  %next.gep1382 = getelementptr i8, ptr %.2359560.us563.us.us.us, i64 %i.tj ; 3 uses
  %i.tk = getelementptr i8, ptr %next.gep1382, i64 16 ; 2 uses
  %wide.load1383 = load <2 x i64>, ptr %next.gep1382, align 8, !tbaa !9, !alias.scope !257, !noalias !260
  %wide.load1384 = load <2 x i64>, ptr %i.tk, align 8, !tbaa !9, !alias.scope !257, !noalias !260
  %i.tl = getelementptr i8, ptr %next.gep1381, i64 16 ; 2 uses
  %wide.load1385 = load <2 x i64>, ptr %next.gep1381, align 8, !tbaa !9, !alias.scope !260
  %wide.load1386 = load <2 x i64>, ptr %i.tl, align 8, !tbaa !9, !alias.scope !260
  store <2 x i64> %wide.load1385, ptr %next.gep1382, align 8, !tbaa !9, !alias.scope !257, !noalias !260
  store <2 x i64> %wide.load1386, ptr %i.tk, align 8, !tbaa !9, !alias.scope !257, !noalias !260
  store <2 x i64> %wide.load1383, ptr %next.gep1381, align 8, !tbaa !9, !alias.scope !260
  store <2 x i64> %wide.load1384, ptr %i.tl, align 8, !tbaa !9, !alias.scope !260
  %index.next1387 = add nuw i64 %index1380, 4     ; 2 uses
  %i.tm = icmp eq i64 %index.next1387, %n.vec1378
  br i1 %i.tm, label %middle.block1388, label %vector.body1379, !llvm.loop !262

middle.block1388:                                 ; preds = %vector.body1379
  br i1 %cmp.n1389, label %swapfunc.exit447.loopexit.us.us.us.us, label %scalar.ph1375.preheader

scalar.ph1375.preheader:                          ; preds = %vector.memcheck1363, %.preheader786, %middle.block1388
  %.022.i444.us.us.us.us.ph = phi ptr [ %i.td, %vector.memcheck1363 ], [ %i.td, %.preheader786 ], [ %i.th, %middle.block1388 ]
  %.021.i445.us.us.us.us.ph = phi ptr [ %.2359560.us563.us.us.us, %vector.memcheck1363 ], [ %.2359560.us563.us.us.us, %.preheader786 ], [ %i.ti, %middle.block1388 ]
  %.0.i446.us.us.us.us.ph = phi i64 [ %i.j, %vector.memcheck1363 ], [ %i.j, %.preheader786 ], [ %12, %middle.block1388 ]
  br label %scalar.ph1375

scalar.ph1375:                                    ; preds = %scalar.ph1375.preheader, %scalar.ph1375
  %.022.i444.us.us.us.us = phi ptr [ %i.tq, %scalar.ph1375 ], [ %.022.i444.us.us.us.us.ph, %scalar.ph1375.preheader ] ; 3 uses
  %.021.i445.us.us.us.us = phi ptr [ %i.tp, %scalar.ph1375 ], [ %.021.i445.us.us.us.us.ph, %scalar.ph1375.preheader ] ; 3 uses
  %.0.i446.us.us.us.us = phi i64 [ %i.tr, %scalar.ph1375 ], [ %.0.i446.us.us.us.us.ph, %scalar.ph1375.preheader ] ; 2 uses
  %i.tn = load i64, ptr %.021.i445.us.us.us.us, align 8, !tbaa !9
  %i.to = load i64, ptr %.022.i444.us.us.us.us, align 8, !tbaa !9
  %i.tp = getelementptr inbounds nuw i8, ptr %.021.i445.us.us.us.us, i64 8
  store i64 %i.to, ptr %.021.i445.us.us.us.us, align 8, !tbaa !9
  %i.tq = getelementptr inbounds nuw i8, ptr %.022.i444.us.us.us.us, i64 8
  store i64 %i.tn, ptr %.022.i444.us.us.us.us, align 8, !tbaa !9
  %i.tr = add nsw i64 %.0.i446.us.us.us.us, -1
  %i.ts = icmp samesign ugt i64 %.0.i446.us.us.us.us, 1
  br i1 %i.ts, label %scalar.ph1375, label %swapfunc.exit447.loopexit.us.us.us.us, !llvm.loop !263

swapfunc.exit447.loopexit.us.us.us.us:            ; preds = %scalar.ph1375, %middle.block1388
  %i.tt = icmp ugt ptr %i.td, %.0552
  %indvar.next1368 = add i64 %indvar1367, 1
  br i1 %i.tt, label %.lr.ph561.us580.us, label %.critedge6.us579.us

.preheader492.us577:                              ; preds = %.preheader492.us577.preheader, %.critedge6.us579
  %indvar1335 = phi i64 [ %indvar.next1336, %.critedge6.us579 ], [ 0, %.preheader492.us577.preheader ] ; 2 uses
  %.3363566.us578 = phi ptr [ %i.ty, %.critedge6.us579 ], [ %i.mu, %.preheader492.us577.preheader ] ; 3 uses
  %i.tu = mul i64 %2, %indvar1335                 ; 3 uses
  %i.tv = icmp ugt ptr %.3363566.us578, %.0552
  br i1 %i.tv, label %.lr.ph561.us580.preheader, label %.critedge6.us579

.lr.ph561.us580.preheader:                        ; preds = %.preheader492.us577
  %i.tw = add i64 %i.sl, %i.tu
  %i.tx = add i64 %i.sn, %i.tu
  br label %.lr.ph561.us580

.critedge6.us579:                                 ; preds = %swapfunc.exit447.loopexit.us.us, %.lr.ph561.us580, %.preheader492.us577
  %i.ty = getelementptr inbounds nuw i8, ptr %.3363566.us578, i64 %2 ; 2 uses
  %i.tz = icmp ult ptr %i.ty, %i.rm
  %indvar.next1336 = add i64 %indvar1335, 1
  br i1 %i.tz, label %.preheader492.us577, label %.loopexit

.lr.ph561.us580:                                  ; preds = %.lr.ph561.us580.preheader, %swapfunc.exit447.loopexit.us.us
  %indvar1337 = phi i64 [ %indvar.next1338, %swapfunc.exit447.loopexit.us.us ], [ 0, %.lr.ph561.us580.preheader ] ; 2 uses
  %.2359560.us563.us = phi ptr [ %i.ug, %swapfunc.exit447.loopexit.us.us ], [ %.3363566.us578, %.lr.ph561.us580.preheader ] ; 7 uses
  %i.ua = mul i64 %2, %indvar1337                 ; 3 uses
  %i.ub = add i64 %i.sm, %i.ua
  %i.uc = sub i64 %i.tw, %i.ub
  %scevgep1339 = getelementptr i8, ptr %.0552, i64 %i.uc
  %i.ud = sub i64 %i.tu, %i.ua
  %scevgep1340 = getelementptr i8, ptr %.0552, i64 %i.ud
  %i.ue = add i64 %i.sm, %i.ua
  %i.uf = sub i64 %i.tx, %i.ue
  %scevgep1341 = getelementptr i8, ptr %.0552, i64 %i.uf
  %i.ug = getelementptr inbounds i8, ptr %.2359560.us563.us, i64 %i.a ; 7 uses
  %i.uh = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.ug, ptr noundef nonnull %.2359560.us563.us) #2
  %i.ui = icmp sgt i32 %i.uh, 0
  br i1 %i.ui, label %.preheader788, label %.critedge6.us579

.preheader788:                                    ; preds = %.lr.ph561.us580
  br i1 %min.iters.check1346, label %scalar.ph1345.preheader, label %vector.memcheck1333

vector.memcheck1333:                              ; preds = %.preheader788
  %bound01342 = icmp ult ptr %.2359560.us563.us, %scevgep1341
  %bound11343 = icmp ult ptr %scevgep1340, %scevgep1339
  %found.conflict1344 = and i1 %bound01342, %bound11343
  br i1 %found.conflict1344, label %scalar.ph1345.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %vector.memcheck1333
  %i.uj = getelementptr i8, ptr %i.ug, i64 %i.so
  %i.uk = getelementptr i8, ptr %.2359560.us563.us, i64 %i.so
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1357, %vector.body1349 ] ; 2 uses
  %i.ul = shl i64 %index1350, 3                   ; 2 uses
  %next.gep1351 = getelementptr i8, ptr %i.ug, i64 %i.ul ; 3 uses
  %next.gep1352 = getelementptr i8, ptr %.2359560.us563.us, i64 %i.ul ; 3 uses
  %i.um = getelementptr i8, ptr %next.gep1352, i64 16 ; 2 uses
  %wide.load1353 = load <2 x i64>, ptr %next.gep1352, align 8, !tbaa !9, !alias.scope !264, !noalias !267
  %wide.load1354 = load <2 x i64>, ptr %i.um, align 8, !tbaa !9, !alias.scope !264, !noalias !267
  %i.un = getelementptr i8, ptr %next.gep1351, i64 16 ; 2 uses
  %wide.load1355 = load <2 x i64>, ptr %next.gep1351, align 8, !tbaa !9, !alias.scope !267
  %wide.load1356 = load <2 x i64>, ptr %i.un, align 8, !tbaa !9, !alias.scope !267
  store <2 x i64> %wide.load1355, ptr %next.gep1352, align 8, !tbaa !9, !alias.scope !264, !noalias !267
  store <2 x i64> %wide.load1356, ptr %i.um, align 8, !tbaa !9, !alias.scope !264, !noalias !267
  store <2 x i64> %wide.load1353, ptr %next.gep1351, align 8, !tbaa !9, !alias.scope !267
  store <2 x i64> %wide.load1354, ptr %i.un, align 8, !tbaa !9, !alias.scope !267
  %index.next1357 = add nuw i64 %index1350, 4     ; 2 uses
  %i.uo = icmp eq i64 %index.next1357, %n.vec1348
  br i1 %i.uo, label %middle.block1358, label %vector.body1349, !llvm.loop !269

middle.block1358:                                 ; preds = %vector.body1349
  br i1 %cmp.n1359, label %swapfunc.exit447.loopexit.us.us, label %scalar.ph1345.preheader

scalar.ph1345.preheader:                          ; preds = %vector.memcheck1333, %.preheader788, %middle.block1358
  %.022.i444.us.us.ph = phi ptr [ %i.ug, %vector.memcheck1333 ], [ %i.ug, %.preheader788 ], [ %i.uj, %middle.block1358 ]
  %.021.i445.us.us.ph = phi ptr [ %.2359560.us563.us, %vector.memcheck1333 ], [ %.2359560.us563.us, %.preheader788 ], [ %i.uk, %middle.block1358 ]
  %.0.i446.us.us.ph = phi i64 [ %i.j, %vector.memcheck1333 ], [ %i.j, %.preheader788 ], [ %11, %middle.block1358 ]
  br label %scalar.ph1345

scalar.ph1345:                                    ; preds = %scalar.ph1345.preheader, %scalar.ph1345
  %.022.i444.us.us = phi ptr [ %i.us, %scalar.ph1345 ], [ %.022.i444.us.us.ph, %scalar.ph1345.preheader ] ; 3 uses
  %.021.i445.us.us = phi ptr [ %i.ur, %scalar.ph1345 ], [ %.021.i445.us.us.ph, %scalar.ph1345.preheader ] ; 3 uses
  %.0.i446.us.us = phi i64 [ %i.ut, %scalar.ph1345 ], [ %.0.i446.us.us.ph, %scalar.ph1345.preheader ] ; 2 uses
  %i.up = load i64, ptr %.021.i445.us.us, align 8, !tbaa !9
  %i.uq = load i64, ptr %.022.i444.us.us, align 8, !tbaa !9
  %i.ur = getelementptr inbounds nuw i8, ptr %.021.i445.us.us, i64 8
  store i64 %i.uq, ptr %.021.i445.us.us, align 8, !tbaa !9
  %i.us = getelementptr inbounds nuw i8, ptr %.022.i444.us.us, i64 8
  store i64 %i.up, ptr %.022.i444.us.us, align 8, !tbaa !9
  %i.ut = add nsw i64 %.0.i446.us.us, -1
  %i.uu = icmp samesign ugt i64 %.0.i446.us.us, 1
  br i1 %i.uu, label %scalar.ph1345, label %swapfunc.exit447.loopexit.us.us, !llvm.loop !270

swapfunc.exit447.loopexit.us.us:                  ; preds = %scalar.ph1345, %middle.block1358
  %i.uv = icmp ugt ptr %i.ug, %.0552
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %i.uv, label %.lr.ph561.us580, label %.critedge6.us579

.preheader492.lr.ph.split.split:                  ; preds = %.preheader492.lr.ph.split
  %i.uw = add i64 %2, %i.i
  %i.ux = add i64 %i.uw, 1                        ; 2 uses
  br i1 %.not396, label %.preheader492.us581.preheader, label %.preheader492.preheader

.preheader492.preheader:                          ; preds = %.preheader492.lr.ph.split.split
  %min.iters.check1245 = icmp slt i64 %i.i, 4
  %min.iters.check1247 = icmp slt i64 %i.i, 32
  %i.uy = and i64 %i.n, 28
  %n.vec1249 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.uz = sub nsw i64 %i.i, %n.vec1249
  %cmp.n1260 = icmp eq i64 %i.n, %n.vec1249
  %min.epilog.iters.check1268 = icmp eq i64 %i.uy, 0
  %n.vec1270 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.va = sub nsw i64 %i.i, %n.vec1270
  %cmp.n1279 = icmp eq i64 %i.n, %n.vec1270
  br label %.preheader492

.preheader492.us581.preheader:                    ; preds = %.preheader492.lr.ph.split.split
  %min.iters.check1295 = icmp slt i64 %i.i, 4
  %min.iters.check1297 = icmp slt i64 %i.i, 32
  %i.vb = and i64 %i.n, 28
  %n.vec1299 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.vc = sub nsw i64 %i.i, %n.vec1299
  %cmp.n1310 = icmp eq i64 %i.n, %n.vec1299
  %min.epilog.iters.check1318 = icmp eq i64 %i.vb, 0
  %n.vec1320 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.vd = sub nsw i64 %i.i, %n.vec1320
  %cmp.n1329 = icmp eq i64 %i.n, %n.vec1320
  br label %.preheader492.us581

.preheader492.us581:                              ; preds = %.preheader492.us581.preheader, %.critedge6.us583
  %indvar1284 = phi i64 [ %indvar.next1285, %.critedge6.us583 ], [ 0, %.preheader492.us581.preheader ] ; 2 uses
  %.3363566.us582 = phi ptr [ %i.vi, %.critedge6.us583 ], [ %i.mu, %.preheader492.us581.preheader ] ; 3 uses
  %i.ve = mul i64 %2, %indvar1284                 ; 3 uses
  %i.vf = add i64 %i.n, %i.ve
  %i.vg = icmp ugt ptr %.3363566.us582, %.0552
  br i1 %i.vg, label %.lr.ph561.us584.preheader, label %.critedge6.us583

.lr.ph561.us584.preheader:                        ; preds = %.preheader492.us581
  %i.vh = add i64 %i.ux, %i.ve
  br label %.lr.ph561.us584

.critedge6.us583:                                 ; preds = %swapfunc.exit447.loopexit491.us.us, %.lr.ph561.us584, %.preheader492.us581
  %i.vi = getelementptr inbounds nuw i8, ptr %.3363566.us582, i64 %2 ; 2 uses
  %i.vj = icmp ult ptr %i.vi, %i.rm
  %indvar.next1285 = add i64 %indvar1284, 1
  br i1 %i.vj, label %.preheader492.us581, label %.loopexit

.lr.ph561.us584:                                  ; preds = %.lr.ph561.us584.preheader, %swapfunc.exit447.loopexit491.us.us
  %indvar1286 = phi i64 [ %indvar.next1287, %swapfunc.exit447.loopexit491.us.us ], [ 0, %.lr.ph561.us584.preheader ] ; 2 uses
  %.2359560.us565.us = phi ptr [ %i.vp, %swapfunc.exit447.loopexit491.us.us ], [ %.3363566.us582, %.lr.ph561.us584.preheader ] ; 9 uses
  %i.vk = mul i64 %2, %indvar1286                 ; 3 uses
  %i.vl = add i64 %smin981, %i.vk
  %i.vm = sub i64 %i.vh, %i.vl
  %scevgep1288 = getelementptr i8, ptr %.0552, i64 %i.vm
  %i.vn = sub i64 %i.ve, %i.vk
  %scevgep1289 = getelementptr i8, ptr %.0552, i64 %i.vn
  %i.vo = sub i64 %i.vf, %i.vk
  %scevgep1290 = getelementptr i8, ptr %.0552, i64 %i.vo
  %i.vp = getelementptr inbounds i8, ptr %.2359560.us565.us, i64 %i.a ; 9 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !8
  %i.vr = load i32, ptr %.2359560.us565.us, align 4, !tbaa !8
  %i.vs = sub i32 %i.vq, %i.vr
  %i.vt = icmp sgt i32 %i.vs, 0
  br i1 %i.vt, label %iter.check1315, label %.critedge6.us583

iter.check1315:                                   ; preds = %.lr.ph561.us584
  br i1 %min.iters.check1295, label %.preheader490.us.us.preheader, label %vector.memcheck1283

vector.memcheck1283:                              ; preds = %iter.check1315
  %bound01291 = icmp ult ptr %.2359560.us565.us, %scevgep1290
  %bound11292 = icmp ult ptr %scevgep1289, %scevgep1288
  %found.conflict1293 = and i1 %bound01291, %bound11292
  br i1 %found.conflict1293, label %.preheader490.us.us.preheader, label %vector.main.loop.iter.check1296

vector.main.loop.iter.check1296:                  ; preds = %vector.memcheck1283
  br i1 %min.iters.check1297, label %vec.epilog.ph1319, label %vector.ph1298

vector.ph1298:                                    ; preds = %vector.main.loop.iter.check1296
  %i.vu = getelementptr i8, ptr %.2359560.us565.us, i64 %n.vec1299
  %i.vv = getelementptr i8, ptr %i.vp, i64 %n.vec1299
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1308, %vector.body1300 ] ; 3 uses
  %next.gep1302 = getelementptr i8, ptr %.2359560.us565.us, i64 %index1301 ; 3 uses
  %next.gep1303 = getelementptr i8, ptr %i.vp, i64 %index1301 ; 3 uses
  %i.vw = getelementptr i8, ptr %next.gep1302, i64 16 ; 2 uses
  %wide.load1304 = load <16 x i8>, ptr %next.gep1302, align 1, !tbaa !27, !alias.scope !271, !noalias !274
  %wide.load1305 = load <16 x i8>, ptr %i.vw, align 1, !tbaa !27, !alias.scope !271, !noalias !274
  %i.vx = getelementptr i8, ptr %next.gep1303, i64 16 ; 2 uses
  %wide.load1306 = load <16 x i8>, ptr %next.gep1303, align 1, !tbaa !27, !alias.scope !274
  %wide.load1307 = load <16 x i8>, ptr %i.vx, align 1, !tbaa !27, !alias.scope !274
  store <16 x i8> %wide.load1306, ptr %next.gep1302, align 1, !tbaa !27, !alias.scope !271, !noalias !274
  store <16 x i8> %wide.load1307, ptr %i.vw, align 1, !tbaa !27, !alias.scope !271, !noalias !274
  store <16 x i8> %wide.load1304, ptr %next.gep1303, align 1, !tbaa !27, !alias.scope !274
  store <16 x i8> %wide.load1305, ptr %i.vx, align 1, !tbaa !27, !alias.scope !274
  %index.next1308 = add nuw i64 %index1301, 32    ; 2 uses
  %i.vy = icmp eq i64 %index.next1308, %n.vec1299
  br i1 %i.vy, label %middle.block1309, label %vector.body1300, !llvm.loop !276

middle.block1309:                                 ; preds = %vector.body1300
  br i1 %cmp.n1310, label %swapfunc.exit447.loopexit491.us.us, label %vec.epilog.iter.check1317

vec.epilog.iter.check1317:                        ; preds = %middle.block1309
  br i1 %min.epilog.iters.check1318, label %.preheader490.us.us.preheader, label %vec.epilog.ph1319, !prof !34

vec.epilog.ph1319:                                ; preds = %vector.main.loop.iter.check1296, %vec.epilog.iter.check1317
  %vec.epilog.resume.val1311 = phi i64 [ %n.vec1299, %vec.epilog.iter.check1317 ], [ 0, %vector.main.loop.iter.check1296 ]
  %i.vz = getelementptr i8, ptr %.2359560.us565.us, i64 %n.vec1320
  %i.wa = getelementptr i8, ptr %i.vp, i64 %n.vec1320
  br label %vec.epilog.vector.body1321

vec.epilog.vector.body1321:                       ; preds = %vec.epilog.vector.body1321, %vec.epilog.ph1319
  %index1322 = phi i64 [ %vec.epilog.resume.val1311, %vec.epilog.ph1319 ], [ %index.next1327, %vec.epilog.vector.body1321 ] ; 3 uses
  %next.gep1323 = getelementptr i8, ptr %.2359560.us565.us, i64 %index1322 ; 2 uses
  %next.gep1324 = getelementptr i8, ptr %i.vp, i64 %index1322 ; 2 uses
  %wide.load1325 = load <4 x i8>, ptr %next.gep1323, align 1, !tbaa !27, !alias.scope !271, !noalias !274
  %wide.load1326 = load <4 x i8>, ptr %next.gep1324, align 1, !tbaa !27, !alias.scope !274
  store <4 x i8> %wide.load1326, ptr %next.gep1323, align 1, !tbaa !27, !alias.scope !271, !noalias !274
  store <4 x i8> %wide.load1325, ptr %next.gep1324, align 1, !tbaa !27, !alias.scope !274
  %index.next1327 = add nuw i64 %index1322, 4     ; 2 uses
  %i.wb = icmp eq i64 %index.next1327, %n.vec1320
  br i1 %i.wb, label %vec.epilog.middle.block1328, label %vec.epilog.vector.body1321, !llvm.loop !277

vec.epilog.middle.block1328:                      ; preds = %vec.epilog.vector.body1321
  br i1 %cmp.n1329, label %swapfunc.exit447.loopexit491.us.us, label %.preheader490.us.us.preheader

.preheader490.us.us.preheader:                    ; preds = %vector.memcheck1283, %iter.check1315, %vec.epilog.iter.check1317, %vec.epilog.middle.block1328
  %.020.i441.us.us.ph = phi i64 [ %i.i, %iter.check1315 ], [ %i.i, %vector.memcheck1283 ], [ %i.vc, %vec.epilog.iter.check1317 ], [ %i.vd, %vec.epilog.middle.block1328 ]
  %.019.i442.us.us.ph = phi ptr [ %.2359560.us565.us, %iter.check1315 ], [ %.2359560.us565.us, %vector.memcheck1283 ], [ %i.vu, %vec.epilog.iter.check1317 ], [ %i.vz, %vec.epilog.middle.block1328 ]
  %.018.i443.us.us.ph = phi ptr [ %i.vp, %iter.check1315 ], [ %i.vp, %vector.memcheck1283 ], [ %i.vv, %vec.epilog.iter.check1317 ], [ %i.wa, %vec.epilog.middle.block1328 ]
  br label %.preheader490.us.us

.preheader490.us.us:                              ; preds = %.preheader490.us.us.preheader, %.preheader490.us.us
  %.020.i441.us.us = phi i64 [ %i.wg, %.preheader490.us.us ], [ %.020.i441.us.us.ph, %.preheader490.us.us.preheader ] ; 2 uses
  %.019.i442.us.us = phi ptr [ %i.we, %.preheader490.us.us ], [ %.019.i442.us.us.ph, %.preheader490.us.us.preheader ] ; 3 uses
  %.018.i443.us.us = phi ptr [ %i.wf, %.preheader490.us.us ], [ %.018.i443.us.us.ph, %.preheader490.us.us.preheader ] ; 3 uses
  %i.wc = load i8, ptr %.019.i442.us.us, align 1, !tbaa !27
  %i.wd = load i8, ptr %.018.i443.us.us, align 1, !tbaa !27
  %i.we = getelementptr inbounds nuw i8, ptr %.019.i442.us.us, i64 1
  store i8 %i.wd, ptr %.019.i442.us.us, align 1, !tbaa !27
  %i.wf = getelementptr inbounds nuw i8, ptr %.018.i443.us.us, i64 1
  store i8 %i.wc, ptr %.018.i443.us.us, align 1, !tbaa !27
  %i.wg = add nsw i64 %.020.i441.us.us, -1
  %i.wh = icmp sgt i64 %.020.i441.us.us, 1
  br i1 %i.wh, label %.preheader490.us.us, label %swapfunc.exit447.loopexit491.us.us, !llvm.loop !278

swapfunc.exit447.loopexit491.us.us:               ; preds = %.preheader490.us.us, %vec.epilog.middle.block1328, %middle.block1309
  %i.wi = icmp ugt ptr %i.vp, %.0552
  %indvar.next1287 = add i64 %indvar1286, 1
  br i1 %i.wi, label %.lr.ph561.us584, label %.critedge6.us583

.preheader492:                                    ; preds = %.preheader492.preheader, %.critedge6
  %indvar1234 = phi i64 [ %indvar.next1235, %.critedge6 ], [ 0, %.preheader492.preheader ] ; 2 uses
  %.3363566 = phi ptr [ %i.xk, %.critedge6 ], [ %i.mu, %.preheader492.preheader ] ; 3 uses
  %i.wj = mul i64 %2, %indvar1234                 ; 3 uses
  %i.wk = add i64 %i.n, %i.wj
  %i.wl = icmp ugt ptr %.3363566, %.0552
  br i1 %i.wl, label %.lr.ph561.preheader, label %.critedge6

.lr.ph561.preheader:                              ; preds = %.preheader492
  %i.wm = add i64 %i.ux, %i.wj
  br label %.lr.ph561

.lr.ph561:                                        ; preds = %.lr.ph561.preheader, %swapfunc.exit447.loopexit491
  %indvar1236 = phi i64 [ %indvar.next1237, %swapfunc.exit447.loopexit491 ], [ 0, %.lr.ph561.preheader ] ; 2 uses
  %.2359560 = phi ptr [ %i.ws, %swapfunc.exit447.loopexit491 ], [ %.3363566, %.lr.ph561.preheader ] ; 9 uses
  %i.wn = mul i64 %2, %indvar1236                 ; 3 uses
  %i.wo = add i64 %smin981, %i.wn
  %i.wp = sub i64 %i.wm, %i.wo
  %scevgep1238 = getelementptr i8, ptr %.0552, i64 %i.wp
  %i.wq = sub i64 %i.wj, %i.wn
  %scevgep1239 = getelementptr i8, ptr %.0552, i64 %i.wq
  %i.wr = sub i64 %i.wk, %i.wn
  %scevgep1240 = getelementptr i8, ptr %.0552, i64 %i.wr
  %i.ws = getelementptr inbounds i8, ptr %.2359560, i64 %i.a ; 9 uses
  %i.wt = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.ws, ptr noundef nonnull %.2359560) #2
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %iter.check1265, label %.critedge6

iter.check1265:                                   ; preds = %.lr.ph561
  br i1 %min.iters.check1245, label %.preheader490.preheader, label %vector.memcheck1233

vector.memcheck1233:                              ; preds = %iter.check1265
  %bound01241 = icmp ult ptr %.2359560, %scevgep1240
  %bound11242 = icmp ult ptr %scevgep1239, %scevgep1238
  %found.conflict1243 = and i1 %bound01241, %bound11242
  br i1 %found.conflict1243, label %.preheader490.preheader, label %vector.main.loop.iter.check1246

vector.main.loop.iter.check1246:                  ; preds = %vector.memcheck1233
  br i1 %min.iters.check1247, label %vec.epilog.ph1269, label %vector.ph1248

vector.ph1248:                                    ; preds = %vector.main.loop.iter.check1246
  %i.wv = getelementptr i8, ptr %.2359560, i64 %n.vec1249
  %i.ww = getelementptr i8, ptr %i.ws, i64 %n.vec1249
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1258, %vector.body1250 ] ; 3 uses
  %next.gep1252 = getelementptr i8, ptr %.2359560, i64 %index1251 ; 3 uses
  %next.gep1253 = getelementptr i8, ptr %i.ws, i64 %index1251 ; 3 uses
  %i.wx = getelementptr i8, ptr %next.gep1252, i64 16 ; 2 uses
  %wide.load1254 = load <16 x i8>, ptr %next.gep1252, align 1, !tbaa !27, !alias.scope !279, !noalias !282
  %wide.load1255 = load <16 x i8>, ptr %i.wx, align 1, !tbaa !27, !alias.scope !279, !noalias !282
  %i.wy = getelementptr i8, ptr %next.gep1253, i64 16 ; 2 uses
  %wide.load1256 = load <16 x i8>, ptr %next.gep1253, align 1, !tbaa !27, !alias.scope !282
  %wide.load1257 = load <16 x i8>, ptr %i.wy, align 1, !tbaa !27, !alias.scope !282
  store <16 x i8> %wide.load1256, ptr %next.gep1252, align 1, !tbaa !27, !alias.scope !279, !noalias !282
  store <16 x i8> %wide.load1257, ptr %i.wx, align 1, !tbaa !27, !alias.scope !279, !noalias !282
  store <16 x i8> %wide.load1254, ptr %next.gep1253, align 1, !tbaa !27, !alias.scope !282
  store <16 x i8> %wide.load1255, ptr %i.wy, align 1, !tbaa !27, !alias.scope !282
  %index.next1258 = add nuw i64 %index1251, 32    ; 2 uses
  %i.wz = icmp eq i64 %index.next1258, %n.vec1249
  br i1 %i.wz, label %middle.block1259, label %vector.body1250, !llvm.loop !284

middle.block1259:                                 ; preds = %vector.body1250
  br i1 %cmp.n1260, label %swapfunc.exit447.loopexit491, label %vec.epilog.iter.check1267

vec.epilog.iter.check1267:                        ; preds = %middle.block1259
  br i1 %min.epilog.iters.check1268, label %.preheader490.preheader, label %vec.epilog.ph1269, !prof !34

vec.epilog.ph1269:                                ; preds = %vector.main.loop.iter.check1246, %vec.epilog.iter.check1267
  %vec.epilog.resume.val1261 = phi i64 [ %n.vec1249, %vec.epilog.iter.check1267 ], [ 0, %vector.main.loop.iter.check1246 ]
  %i.xa = getelementptr i8, ptr %.2359560, i64 %n.vec1270
  %i.xb = getelementptr i8, ptr %i.ws, i64 %n.vec1270
  br label %vec.epilog.vector.body1271

vec.epilog.vector.body1271:                       ; preds = %vec.epilog.vector.body1271, %vec.epilog.ph1269
  %index1272 = phi i64 [ %vec.epilog.resume.val1261, %vec.epilog.ph1269 ], [ %index.next1277, %vec.epilog.vector.body1271 ] ; 3 uses
  %next.gep1273 = getelementptr i8, ptr %.2359560, i64 %index1272 ; 2 uses
  %next.gep1274 = getelementptr i8, ptr %i.ws, i64 %index1272 ; 2 uses
  %wide.load1275 = load <4 x i8>, ptr %next.gep1273, align 1, !tbaa !27, !alias.scope !279, !noalias !282
  %wide.load1276 = load <4 x i8>, ptr %next.gep1274, align 1, !tbaa !27, !alias.scope !282
  store <4 x i8> %wide.load1276, ptr %next.gep1273, align 1, !tbaa !27, !alias.scope !279, !noalias !282
  store <4 x i8> %wide.load1275, ptr %next.gep1274, align 1, !tbaa !27, !alias.scope !282
  %index.next1277 = add nuw i64 %index1272, 4     ; 2 uses
  %i.xc = icmp eq i64 %index.next1277, %n.vec1270
  br i1 %i.xc, label %vec.epilog.middle.block1278, label %vec.epilog.vector.body1271, !llvm.loop !285

vec.epilog.middle.block1278:                      ; preds = %vec.epilog.vector.body1271
  br i1 %cmp.n1279, label %swapfunc.exit447.loopexit491, label %.preheader490.preheader

.preheader490.preheader:                          ; preds = %vector.memcheck1233, %iter.check1265, %vec.epilog.iter.check1267, %vec.epilog.middle.block1278
  %.020.i441.ph = phi i64 [ %i.i, %iter.check1265 ], [ %i.i, %vector.memcheck1233 ], [ %i.uz, %vec.epilog.iter.check1267 ], [ %i.va, %vec.epilog.middle.block1278 ]
  %.019.i442.ph = phi ptr [ %.2359560, %iter.check1265 ], [ %.2359560, %vector.memcheck1233 ], [ %i.wv, %vec.epilog.iter.check1267 ], [ %i.xa, %vec.epilog.middle.block1278 ]
  %.018.i443.ph = phi ptr [ %i.ws, %iter.check1265 ], [ %i.ws, %vector.memcheck1233 ], [ %i.ww, %vec.epilog.iter.check1267 ], [ %i.xb, %vec.epilog.middle.block1278 ]
  br label %.preheader490

.preheader490:                                    ; preds = %.preheader490.preheader, %.preheader490
  %.020.i441 = phi i64 [ %i.xh, %.preheader490 ], [ %.020.i441.ph, %.preheader490.preheader ] ; 2 uses
  %.019.i442 = phi ptr [ %i.xf, %.preheader490 ], [ %.019.i442.ph, %.preheader490.preheader ] ; 3 uses
  %.018.i443 = phi ptr [ %i.xg, %.preheader490 ], [ %.018.i443.ph, %.preheader490.preheader ] ; 3 uses
  %i.xd = load i8, ptr %.019.i442, align 1, !tbaa !27
  %i.xe = load i8, ptr %.018.i443, align 1, !tbaa !27
  %i.xf = getelementptr inbounds nuw i8, ptr %.019.i442, i64 1
  store i8 %i.xe, ptr %.019.i442, align 1, !tbaa !27
  %i.xg = getelementptr inbounds nuw i8, ptr %.018.i443, i64 1
  store i8 %i.xd, ptr %.018.i443, align 1, !tbaa !27
  %i.xh = add nsw i64 %.020.i441, -1
  %i.xi = icmp sgt i64 %.020.i441, 1
  br i1 %i.xi, label %.preheader490, label %swapfunc.exit447.loopexit491, !llvm.loop !286

swapfunc.exit447.loopexit491:                     ; preds = %.preheader490, %vec.epilog.middle.block1278, %middle.block1259
  %i.xj = icmp ugt ptr %i.ws, %.0552
  %indvar.next1237 = add i64 %indvar1236, 1
  br i1 %i.xj, label %.lr.ph561, label %.critedge6

.critedge6:                                       ; preds = %swapfunc.exit447.loopexit491, %.lr.ph561, %.preheader492
  %i.xk = getelementptr inbounds nuw i8, ptr %.3363566, i64 %2 ; 2 uses
  %i.xl = icmp ult ptr %i.xk, %i.rm
  %indvar.next1235 = add i64 %indvar1234, 1
  br i1 %i.xl, label %.preheader492, label %.loopexit

bb.bj:                                            ; preds = %.critedge2._crit_edge
  %i.xm = ptrtoint ptr %.1.lcssa to i64           ; 2 uses
  %i.xn = sub i64 %i.xm, %i.gk
  %i.xo = ptrtoint ptr %.1348.lcssa to i64
  %i.xp = sub i64 %i.xo, %i.xm                    ; 2 uses
  %.408 = tail call i64 @llvm.smin.i64(i64 %i.xn, i64 %i.xp) ; 3 uses
  %i.xq = trunc i64 %.408 to i32
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %bb.bk, label %swapfunc.exit454

bb.bk:                                            ; preds = %bb.bj
  %i.xs = and i64 %.408, 2147483647               ; 14 uses
  %i.xt = sub nsw i64 0, %i.xs
  %i.xu = getelementptr i8, ptr %.1348.lcssa, i64 %i.xt ; 12 uses
  br i1 %or.cond553, label %bb.bl, label %iter.check932

iter.check932:                                    ; preds = %bb.bk
  %i.xv = tail call i64 @llvm.umax.i64(i64 %i.xs, i64 1) ; 3 uses
  %min.iters.check912 = icmp samesign ult i64 %i.xs, 4
  br i1 %min.iters.check912, label %.preheader503.preheader, label %vector.memcheck901

vector.memcheck901:                               ; preds = %iter.check932
  %scevgep904 = getelementptr i8, ptr %.0552, i64 %i.xs
  %bound0907 = icmp ult ptr %.0552, %.1348.lcssa
  %bound1908 = icmp ult ptr %i.xu, %scevgep904
  %found.conflict909 = and i1 %bound0907, %bound1908
  br i1 %found.conflict909, label %.preheader503.preheader, label %vector.main.loop.iter.check913

vector.main.loop.iter.check913:                   ; preds = %vector.memcheck901
  %min.iters.check914 = icmp samesign ult i64 %i.xs, 32
  br i1 %min.iters.check914, label %vec.epilog.ph936, label %vector.ph915

vector.ph915:                                     ; preds = %vector.main.loop.iter.check913
  %i.xw = and i64 %i.xv, 28
  %n.vec916 = and i64 %i.xv, 2147483616           ; 6 uses
  %i.xx = sub nsw i64 %i.xs, %n.vec916
  %i.xy = getelementptr i8, ptr %.0552, i64 %n.vec916
  %i.xz = getelementptr i8, ptr %i.xu, i64 %n.vec916
  br label %vector.body917

vector.body917:                                   ; preds = %vector.body917, %vector.ph915
  %index918 = phi i64 [ 0, %vector.ph915 ], [ %index.next925, %vector.body917 ] ; 3 uses
  %next.gep919 = getelementptr i8, ptr %.0552, i64 %index918 ; 3 uses
  %next.gep920 = getelementptr i8, ptr %i.xu, i64 %index918 ; 3 uses
  %i.ya = getelementptr i8, ptr %next.gep919, i64 16 ; 2 uses
  %wide.load921 = load <16 x i8>, ptr %next.gep919, align 1, !tbaa !27, !alias.scope !287, !noalias !290
  %wide.load922 = load <16 x i8>, ptr %i.ya, align 1, !tbaa !27, !alias.scope !287, !noalias !290
  %i.yb = getelementptr i8, ptr %next.gep920, i64 16 ; 2 uses
  %wide.load923 = load <16 x i8>, ptr %next.gep920, align 1, !tbaa !27, !alias.scope !290
  %wide.load924 = load <16 x i8>, ptr %i.yb, align 1, !tbaa !27, !alias.scope !290
  store <16 x i8> %wide.load923, ptr %next.gep919, align 1, !tbaa !27, !alias.scope !287, !noalias !290
  store <16 x i8> %wide.load924, ptr %i.ya, align 1, !tbaa !27, !alias.scope !287, !noalias !290
  store <16 x i8> %wide.load921, ptr %next.gep920, align 1, !tbaa !27, !alias.scope !290
  store <16 x i8> %wide.load922, ptr %i.yb, align 1, !tbaa !27, !alias.scope !290
  %index.next925 = add nuw i64 %index918, 32      ; 2 uses
  %i.yc = icmp eq i64 %index.next925, %n.vec916
  br i1 %i.yc, label %middle.block926, label %vector.body917, !llvm.loop !292

middle.block926:                                  ; preds = %vector.body917
  %cmp.n927 = icmp eq i64 %i.xs, %n.vec916
  br i1 %cmp.n927, label %swapfunc.exit454, label %vec.epilog.iter.check934

vec.epilog.iter.check934:                         ; preds = %middle.block926
  %min.epilog.iters.check935 = icmp eq i64 %i.xw, 0
  br i1 %min.epilog.iters.check935, label %.preheader503.preheader, label %vec.epilog.ph936, !prof !34

vec.epilog.ph936:                                 ; preds = %vector.main.loop.iter.check913, %vec.epilog.iter.check934
  %vec.epilog.resume.val928 = phi i64 [ %n.vec916, %vec.epilog.iter.check934 ], [ 0, %vector.main.loop.iter.check913 ]
  %n.vec937 = and i64 %i.xv, 2147483644           ; 5 uses
  %i.yd = sub nsw i64 %i.xs, %n.vec937
  %i.ye = getelementptr i8, ptr %.0552, i64 %n.vec937
  %i.yf = getelementptr i8, ptr %i.xu, i64 %n.vec937
  br label %vec.epilog.vector.body938

vec.epilog.vector.body938:                        ; preds = %vec.epilog.vector.body938, %vec.epilog.ph936
  %index939 = phi i64 [ %vec.epilog.resume.val928, %vec.epilog.ph936 ], [ %index.next944, %vec.epilog.vector.body938 ] ; 3 uses
  %next.gep940 = getelementptr i8, ptr %.0552, i64 %index939 ; 2 uses
  %next.gep941 = getelementptr i8, ptr %i.xu, i64 %index939 ; 2 uses
  %wide.load942 = load <4 x i8>, ptr %next.gep940, align 1, !tbaa !27, !alias.scope !287, !noalias !290
  %wide.load943 = load <4 x i8>, ptr %next.gep941, align 1, !tbaa !27, !alias.scope !290
  store <4 x i8> %wide.load943, ptr %next.gep940, align 1, !tbaa !27, !alias.scope !287, !noalias !290
  store <4 x i8> %wide.load942, ptr %next.gep941, align 1, !tbaa !27, !alias.scope !290
  %index.next944 = add nuw i64 %index939, 4       ; 2 uses
  %i.yg = icmp eq i64 %index.next944, %n.vec937
  br i1 %i.yg, label %vec.epilog.middle.block945, label %vec.epilog.vector.body938, !llvm.loop !293

vec.epilog.middle.block945:                       ; preds = %vec.epilog.vector.body938
  %cmp.n946 = icmp eq i64 %i.xs, %n.vec937
  br i1 %cmp.n946, label %swapfunc.exit454, label %.preheader503.preheader

.preheader503.preheader:                          ; preds = %vector.memcheck901, %iter.check932, %vec.epilog.iter.check934, %vec.epilog.middle.block945
  %.020.i448.ph = phi i64 [ %i.xs, %iter.check932 ], [ %i.xs, %vector.memcheck901 ], [ %i.xx, %vec.epilog.iter.check934 ], [ %i.yd, %vec.epilog.middle.block945 ]
  %.019.i449.ph = phi ptr [ %.0552, %iter.check932 ], [ %.0552, %vector.memcheck901 ], [ %i.xy, %vec.epilog.iter.check934 ], [ %i.ye, %vec.epilog.middle.block945 ]
  %.018.i450.ph = phi ptr [ %i.xu, %iter.check932 ], [ %i.xu, %vector.memcheck901 ], [ %i.xz, %vec.epilog.iter.check934 ], [ %i.yf, %vec.epilog.middle.block945 ]
  br label %.preheader503

bb.bl:                                            ; preds = %bb.bk
  %i.yh = lshr i64 %i.xs, 3                       ; 6 uses
  %min.iters.check884 = icmp samesign ult i64 %i.xs, 64
  br i1 %min.iters.check884, label %scalar.ph883.preheader, label %vector.memcheck874

vector.memcheck874:                               ; preds = %bb.bl
  %scevgep875 = getelementptr i8, ptr %.0552, i64 8
  %i.yi = and i64 %.408, 2147483640               ; 2 uses
  %.not1564 = icmp eq i64 %i.yh, 0
  %i.yj = select i1 %.not1564, i64 0, i64 8       ; 2 uses
  %i.yk = sub nsw i64 %i.yi, %i.yj
  %scevgep877 = getelementptr i8, ptr %scevgep875, i64 %i.yk
  %scevgep878 = getelementptr i8, ptr %.1348.lcssa, i64 8
  %i.yl = add nuw nsw i64 %i.xs, %i.yj
  %i.ym = sub nsw i64 %i.yi, %i.yl
  %scevgep879 = getelementptr i8, ptr %scevgep878, i64 %i.ym
  %bound0880 = icmp ult ptr %.0552, %scevgep879
  %bound1881 = icmp ult ptr %i.xu, %scevgep877
  %found.conflict882 = and i1 %bound0880, %bound1881
  br i1 %found.conflict882, label %scalar.ph883.preheader, label %vector.ph885

vector.ph885:                                     ; preds = %vector.memcheck874
  %n.vec886 = and i64 %i.yh, 268435452            ; 3 uses
  %i.yn = shl nuw nsw i64 %n.vec886, 3            ; 2 uses
  %i.yo = getelementptr i8, ptr %i.xu, i64 %i.yn
  %i.yp = getelementptr i8, ptr %.0552, i64 %i.yn
  %13 = and i64 %i.yh, 3
  br label %vector.body887

vector.body887:                                   ; preds = %vector.body887, %vector.ph885
  %index888 = phi i64 [ 0, %vector.ph885 ], [ %index.next895, %vector.body887 ] ; 2 uses
  %i.yq = shl i64 %index888, 3                    ; 2 uses
  %next.gep889 = getelementptr i8, ptr %i.xu, i64 %i.yq ; 3 uses
  %next.gep890 = getelementptr i8, ptr %.0552, i64 %i.yq ; 3 uses
  %i.yr = getelementptr i8, ptr %next.gep890, i64 16 ; 2 uses
  %wide.load891 = load <2 x i64>, ptr %next.gep890, align 8, !tbaa !9, !alias.scope !294, !noalias !297
  %wide.load892 = load <2 x i64>, ptr %i.yr, align 8, !tbaa !9, !alias.scope !294, !noalias !297
  %i.ys = getelementptr i8, ptr %next.gep889, i64 16 ; 2 uses
  %wide.load893 = load <2 x i64>, ptr %next.gep889, align 8, !tbaa !9, !alias.scope !297
  %wide.load894 = load <2 x i64>, ptr %i.ys, align 8, !tbaa !9, !alias.scope !297
  store <2 x i64> %wide.load893, ptr %next.gep890, align 8, !tbaa !9, !alias.scope !294, !noalias !297
  store <2 x i64> %wide.load894, ptr %i.yr, align 8, !tbaa !9, !alias.scope !294, !noalias !297
  store <2 x i64> %wide.load891, ptr %next.gep889, align 8, !tbaa !9, !alias.scope !297
  store <2 x i64> %wide.load892, ptr %i.ys, align 8, !tbaa !9, !alias.scope !297
  %index.next895 = add nuw i64 %index888, 4       ; 2 uses
  %i.yt = icmp eq i64 %index.next895, %n.vec886
  br i1 %i.yt, label %middle.block896, label %vector.body887, !llvm.loop !299

middle.block896:                                  ; preds = %vector.body887
  %cmp.n897 = icmp eq i64 %i.yh, %n.vec886
  br i1 %cmp.n897, label %swapfunc.exit454, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %vector.memcheck874, %bb.bl, %middle.block896
  %.022.i451.ph = phi ptr [ %i.xu, %vector.memcheck874 ], [ %i.xu, %bb.bl ], [ %i.yo, %middle.block896 ]
  %.021.i452.ph = phi ptr [ %.0552, %vector.memcheck874 ], [ %.0552, %bb.bl ], [ %i.yp, %middle.block896 ]
  %.0.i453.ph = phi i64 [ %i.yh, %vector.memcheck874 ], [ %i.yh, %bb.bl ], [ %13, %middle.block896 ]
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %.022.i451 = phi ptr [ %i.yx, %scalar.ph883 ], [ %.022.i451.ph, %scalar.ph883.preheader ] ; 3 uses
  %.021.i452 = phi ptr [ %i.yw, %scalar.ph883 ], [ %.021.i452.ph, %scalar.ph883.preheader ] ; 3 uses
  %.0.i453 = phi i64 [ %i.yy, %scalar.ph883 ], [ %.0.i453.ph, %scalar.ph883.preheader ] ; 2 uses
  %i.yu = load i64, ptr %.021.i452, align 8, !tbaa !9
  %i.yv = load i64, ptr %.022.i451, align 8, !tbaa !9
  %i.yw = getelementptr inbounds nuw i8, ptr %.021.i452, i64 8
  store i64 %i.yv, ptr %.021.i452, align 8, !tbaa !9
  %i.yx = getelementptr inbounds nuw i8, ptr %.022.i451, i64 8
  store i64 %i.yu, ptr %.022.i451, align 8, !tbaa !9
  %i.yy = add nsw i64 %.0.i453, -1
  %i.yz = icmp samesign ugt i64 %.0.i453, 1
  br i1 %i.yz, label %scalar.ph883, label %swapfunc.exit454, !llvm.loop !300

.preheader503:                                    ; preds = %.preheader503.preheader, %.preheader503
  %.020.i448 = phi i64 [ %i.ze, %.preheader503 ], [ %.020.i448.ph, %.preheader503.preheader ] ; 2 uses
  %.019.i449 = phi ptr [ %i.zc, %.preheader503 ], [ %.019.i449.ph, %.preheader503.preheader ] ; 3 uses
  %.018.i450 = phi ptr [ %i.zd, %.preheader503 ], [ %.018.i450.ph, %.preheader503.preheader ] ; 3 uses
  %i.za = load i8, ptr %.019.i449, align 1, !tbaa !27
  %i.zb = load i8, ptr %.018.i450, align 1, !tbaa !27
  %i.zc = getelementptr inbounds nuw i8, ptr %.019.i449, i64 1
  store i8 %i.zb, ptr %.019.i449, align 1, !tbaa !27
  %i.zd = getelementptr inbounds nuw i8, ptr %.018.i450, i64 1
  store i8 %i.za, ptr %.018.i450, align 1, !tbaa !27
  %i.ze = add nsw i64 %.020.i448, -1
  %i.zf = icmp samesign ugt i64 %.020.i448, 1
  br i1 %i.zf, label %.preheader503, label %swapfunc.exit454, !llvm.loop !301

swapfunc.exit454:                                 ; preds = %.preheader503, %scalar.ph883, %middle.block926, %vec.epilog.middle.block945, %middle.block896, %bb.bj
  %i.zg = ptrtoint ptr %.1352.lcssa to i64        ; 2 uses
  %i.zh = ptrtoint ptr %.1350.lcssa to i64
  %i.zi = sub i64 %i.zg, %i.zh                    ; 2 uses
  %i.zj = ptrtoint ptr %i.rm to i64
  %i.zk = add i64 %2, %i.zg
  %i.zl = sub i64 %i.zj, %i.zk
  %.409 = tail call i64 @llvm.umin.i64(i64 %i.zi, i64 %i.zl) ; 3 uses
  %i.zm = trunc i64 %.409 to i32
  %i.zn = icmp sgt i32 %i.zm, 0
  br i1 %i.zn, label %bb.bm, label %swapfunc.exit461

bb.bm:                                            ; preds = %swapfunc.exit454
  %i.zo = and i64 %.409, 2147483647               ; 14 uses
  %i.zp = sub nsw i64 0, %i.zo
  %i.zq = getelementptr i8, ptr %i.rm, i64 %i.zp  ; 12 uses
  br i1 %or.cond553, label %bb.bn, label %iter.check

iter.check:                                       ; preds = %bb.bm
  %i.zr = tail call i64 @llvm.umax.i64(i64 %i.zo, i64 1) ; 3 uses
  %min.iters.check845 = icmp samesign ult i64 %i.zo, 4
  br i1 %min.iters.check845, label %.preheader501.preheader, label %vector.memcheck834

vector.memcheck834:                               ; preds = %iter.check
  %scevgep837 = getelementptr i8, ptr %.1348.lcssa, i64 %i.zo
  %scevgep839 = getelementptr i8, ptr %.0552, i64 %i.rl
  %bound0840 = icmp ult ptr %.1348.lcssa, %scevgep839
  %bound1841 = icmp ult ptr %i.zq, %scevgep837
  %found.conflict842 = and i1 %bound0840, %bound1841
  br i1 %found.conflict842, label %.preheader501.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck834
  %min.iters.check846 = icmp samesign ult i64 %i.zo, 32
  br i1 %min.iters.check846, label %vec.epilog.ph, label %vector.ph847

vector.ph847:                                     ; preds = %vector.main.loop.iter.check
  %i.zs = and i64 %i.zr, 28
  %n.vec848 = and i64 %i.zr, 2147483616           ; 6 uses
  %i.zt = sub nsw i64 %i.zo, %n.vec848
  %i.zu = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec848
  %i.zv = getelementptr i8, ptr %i.zq, i64 %n.vec848
  br label %vector.body849

vector.body849:                                   ; preds = %vector.body849, %vector.ph847
  %index850 = phi i64 [ 0, %vector.ph847 ], [ %index.next857, %vector.body849 ] ; 3 uses
  %next.gep851 = getelementptr i8, ptr %.1348.lcssa, i64 %index850 ; 3 uses
  %next.gep852 = getelementptr i8, ptr %i.zq, i64 %index850 ; 3 uses
  %i.zw = getelementptr i8, ptr %next.gep851, i64 16 ; 2 uses
  %wide.load853 = load <16 x i8>, ptr %next.gep851, align 1, !tbaa !27, !alias.scope !302, !noalias !305
  %wide.load854 = load <16 x i8>, ptr %i.zw, align 1, !tbaa !27, !alias.scope !302, !noalias !305
  %i.zx = getelementptr i8, ptr %next.gep852, i64 16 ; 2 uses
  %wide.load855 = load <16 x i8>, ptr %next.gep852, align 1, !tbaa !27, !alias.scope !305
  %wide.load856 = load <16 x i8>, ptr %i.zx, align 1, !tbaa !27, !alias.scope !305
  store <16 x i8> %wide.load855, ptr %next.gep851, align 1, !tbaa !27, !alias.scope !302, !noalias !305
  store <16 x i8> %wide.load856, ptr %i.zw, align 1, !tbaa !27, !alias.scope !302, !noalias !305
  store <16 x i8> %wide.load853, ptr %next.gep852, align 1, !tbaa !27, !alias.scope !305
  store <16 x i8> %wide.load854, ptr %i.zx, align 1, !tbaa !27, !alias.scope !305
  %index.next857 = add nuw i64 %index850, 32      ; 2 uses
  %i.zy = icmp eq i64 %index.next857, %n.vec848
  br i1 %i.zy, label %middle.block858, label %vector.body849, !llvm.loop !307

middle.block858:                                  ; preds = %vector.body849
  %cmp.n859 = icmp eq i64 %i.zo, %n.vec848
  br i1 %cmp.n859, label %swapfunc.exit461, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block858
  %min.epilog.iters.check = icmp eq i64 %i.zs, 0
  br i1 %min.epilog.iters.check, label %.preheader501.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec848, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec863 = and i64 %i.zr, 2147483644           ; 5 uses
  %i.zz = sub nsw i64 %i.zo, %n.vec863
  %i.aaa = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec863
  %i.aab = getelementptr i8, ptr %i.zq, i64 %n.vec863
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index864 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next869, %vec.epilog.vector.body ] ; 3 uses
  %next.gep865 = getelementptr i8, ptr %.1348.lcssa, i64 %index864 ; 2 uses
  %next.gep866 = getelementptr i8, ptr %i.zq, i64 %index864 ; 2 uses
  %wide.load867 = load <4 x i8>, ptr %next.gep865, align 1, !tbaa !27, !alias.scope !302, !noalias !305
  %wide.load868 = load <4 x i8>, ptr %next.gep866, align 1, !tbaa !27, !alias.scope !305
  store <4 x i8> %wide.load868, ptr %next.gep865, align 1, !tbaa !27, !alias.scope !302, !noalias !305
  store <4 x i8> %wide.load867, ptr %next.gep866, align 1, !tbaa !27, !alias.scope !305
  %index.next869 = add nuw i64 %index864, 4       ; 2 uses
  %i.aac = icmp eq i64 %index.next869, %n.vec863
  br i1 %i.aac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !308

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n870 = icmp eq i64 %i.zo, %n.vec863
  br i1 %cmp.n870, label %swapfunc.exit461, label %.preheader501.preheader

.preheader501.preheader:                          ; preds = %vector.memcheck834, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.i455.ph = phi i64 [ %i.zo, %iter.check ], [ %i.zo, %vector.memcheck834 ], [ %i.zt, %vec.epilog.iter.check ], [ %i.zz, %vec.epilog.middle.block ]
  %.019.i456.ph = phi ptr [ %.1348.lcssa, %iter.check ], [ %.1348.lcssa, %vector.memcheck834 ], [ %i.zu, %vec.epilog.iter.check ], [ %i.aaa, %vec.epilog.middle.block ]
  %.018.i457.ph = phi ptr [ %i.zq, %iter.check ], [ %i.zq, %vector.memcheck834 ], [ %i.zv, %vec.epilog.iter.check ], [ %i.aab, %vec.epilog.middle.block ]
  br label %.preheader501

bb.bn:                                            ; preds = %bb.bm
  %i.aad = lshr i64 %i.zo, 3                      ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.zo, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bn
  %scevgep = getelementptr i8, ptr %.1348.lcssa, i64 8
  %i.aae = and i64 %.409, 2147483640              ; 2 uses
  %.not1566 = icmp eq i64 %i.aad, 0
  %i.aaf = select i1 %.not1566, i64 0, i64 8      ; 2 uses
  %i.aag = sub nsw i64 %i.aae, %i.aaf
  %scevgep825 = getelementptr i8, ptr %scevgep, i64 %i.aag
  %scevgep826 = getelementptr i8, ptr %.0552, i64 8
  %i.aah = add i64 %i.rl, %i.aae
  %i.aai = add nuw nsw i64 %i.zo, %i.aaf
  %i.aaj = sub i64 %i.aah, %i.aai
  %scevgep827 = getelementptr i8, ptr %scevgep826, i64 %i.aaj
  %bound0 = icmp ult ptr %.1348.lcssa, %scevgep827
  %bound1 = icmp ult ptr %i.zq, %scevgep825
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aad, 268435452              ; 3 uses
  %i.aak = shl nuw nsw i64 %n.vec, 3              ; 2 uses
  %i.aal = getelementptr i8, ptr %i.zq, i64 %i.aak
  %i.aam = getelementptr i8, ptr %.1348.lcssa, i64 %i.aak
  %14 = and i64 %i.aad, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aan = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.zq, i64 %i.aan ; 3 uses
  %next.gep828 = getelementptr i8, ptr %.1348.lcssa, i64 %i.aan ; 3 uses
  %i.aao = getelementptr i8, ptr %next.gep828, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep828, align 8, !tbaa !9, !alias.scope !309, !noalias !312
  %wide.load829 = load <2 x i64>, ptr %i.aao, align 8, !tbaa !9, !alias.scope !309, !noalias !312
  %i.aap = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load830 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !312
  %wide.load831 = load <2 x i64>, ptr %i.aap, align 8, !tbaa !9, !alias.scope !312
  store <2 x i64> %wide.load830, ptr %next.gep828, align 8, !tbaa !9, !alias.scope !309, !noalias !312
  store <2 x i64> %wide.load831, ptr %i.aao, align 8, !tbaa !9, !alias.scope !309, !noalias !312
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !9, !alias.scope !312
  store <2 x i64> %wide.load829, ptr %i.aap, align 8, !tbaa !9, !alias.scope !312
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aaq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaq, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aad, %n.vec
  br i1 %cmp.n, label %swapfunc.exit461, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bn, %middle.block
  %.022.i458.ph = phi ptr [ %i.zq, %vector.memcheck ], [ %i.zq, %bb.bn ], [ %i.aal, %middle.block ]
  %.021.i459.ph = phi ptr [ %.1348.lcssa, %vector.memcheck ], [ %.1348.lcssa, %bb.bn ], [ %i.aam, %middle.block ]
  %.0.i460.ph = phi i64 [ %i.aad, %vector.memcheck ], [ %i.aad, %bb.bn ], [ %14, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.i458 = phi ptr [ %i.aau, %scalar.ph ], [ %.022.i458.ph, %scalar.ph.preheader ] ; 3 uses
  %.021.i459 = phi ptr [ %i.aat, %scalar.ph ], [ %.021.i459.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.i460 = phi i64 [ %i.aav, %scalar.ph ], [ %.0.i460.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aar = load i64, ptr %.021.i459, align 8, !tbaa !9
  %i.aas = load i64, ptr %.022.i458, align 8, !tbaa !9
  %i.aat = getelementptr inbounds nuw i8, ptr %.021.i459, i64 8
  store i64 %i.aas, ptr %.021.i459, align 8, !tbaa !9
  %i.aau = getelementptr inbounds nuw i8, ptr %.022.i458, i64 8
  store i64 %i.aar, ptr %.022.i458, align 8, !tbaa !9
  %i.aav = add nsw i64 %.0.i460, -1
  %i.aaw = icmp samesign ugt i64 %.0.i460, 1
  br i1 %i.aaw, label %scalar.ph, label %swapfunc.exit461, !llvm.loop !315

.preheader501:                                    ; preds = %.preheader501.preheader, %.preheader501
  %.020.i455 = phi i64 [ %i.abb, %.preheader501 ], [ %.020.i455.ph, %.preheader501.preheader ] ; 2 uses
  %.019.i456 = phi ptr [ %i.aaz, %.preheader501 ], [ %.019.i456.ph, %.preheader501.preheader ] ; 3 uses
  %.018.i457 = phi ptr [ %i.aba, %.preheader501 ], [ %.018.i457.ph, %.preheader501.preheader ] ; 3 uses
  %i.aax = load i8, ptr %.019.i456, align 1, !tbaa !27
  %i.aay = load i8, ptr %.018.i457, align 1, !tbaa !27
  %i.aaz = getelementptr inbounds nuw i8, ptr %.019.i456, i64 1
  store i8 %i.aay, ptr %.019.i456, align 1, !tbaa !27
  %i.aba = getelementptr inbounds nuw i8, ptr %.018.i457, i64 1
  store i8 %i.aax, ptr %.018.i457, align 1, !tbaa !27
  %i.abb = add nsw i64 %.020.i455, -1
  %i.abc = icmp samesign ugt i64 %.020.i455, 1
  br i1 %i.abc, label %.preheader501, label %swapfunc.exit461, !llvm.loop !316

swapfunc.exit461:                                 ; preds = %.preheader501, %scalar.ph, %middle.block858, %vec.epilog.middle.block, %middle.block, %swapfunc.exit454
  %sext401 = shl i64 %i.xp, 32
  %i.abd = ashr exact i64 %sext401, 32            ; 2 uses
  %i.abe = icmp ugt i64 %i.abd, %2
  br i1 %i.abe, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %swapfunc.exit461
  %i.abf = udiv i64 %i.abd, %2
  tail call void @cli_qsort_r(ptr noundef %.0552, i64 noundef %i.abf, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %swapfunc.exit461
  %sext402 = shl i64 %i.zi, 32
  %i.abg = ashr exact i64 %sext402, 32            ; 3 uses
  %i.abh = icmp ugt i64 %i.abg, %2
  br i1 %i.abh, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.abi = sub nsw i64 0, %i.abg
  %i.abj = getelementptr inbounds i8, ptr %i.rm, i64 %i.abi
  %.fr732 = freeze ptr %i.abj                     ; 3 uses
  %i.abk = udiv i64 %i.abg, %2                    ; 3 uses
  %i.abl = ptrtoint ptr %.fr732 to i64            ; 2 uses
  %i.abm = or i64 %2, %i.abl
  %i.abn = and i64 %i.abm, 7
  %or.cond = icmp eq i64 %i.abn, 0                ; 3 uses
  %i.abo = select i1 %or.cond, i32 %i.c, i32 2    ; 2 uses
  %i.abp = icmp ult i64 %i.abk, 7
  br i1 %i.abp, label %.preheader489, label %bb.b

.loopexit:                                        ; preds = %bb.bp, %.critedge6, %.critedge6.us583, %.critedge6.us579, %.critedge6.us579.us, %.critedge6.us, %.critedge6.us.us, %.critedge, %.critedge.us610, %.critedge.us605, %.critedge.us605.us, %.critedge.us, %.critedge.us.us, %.preheader493, %.preheader489
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !17}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !17, !18}
!26 = distinct !{!26, !17}
!27 = !{!6, !6, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !17, !18}
!34 = !{!"branch_weights", i32 4, i32 28}
!35 = distinct !{!35, !17, !18}
!36 = distinct !{!36, !17}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !17, !18}
!43 = distinct !{!43, !17, !18}
!44 = distinct !{!44, !17}
!45 = distinct !{null}
!46 = !{!47}
!47 = distinct !{!47, !48}
!48 = distinct !{!48, !"LVerDomain"}
!49 = !{!50}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !17, !18}
!52 = distinct !{!52, !17, !18}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !17, !18}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !17, !18}
!67 = distinct !{!67, !17, !18}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !17, !18}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !17, !18}
!82 = distinct !{!82, !17, !18}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !17, !18}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = !{!92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!95}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !17, !18}
!97 = distinct !{!97, !17, !18}
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !{!102}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !17, !18}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !17, !18}
!112 = distinct !{!112, !17}
!113 = !{!114}
!114 = distinct !{!114, !115}
!115 = distinct !{!115, !"LVerDomain"}
end_hunk_2
