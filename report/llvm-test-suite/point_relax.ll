inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@hypre_PointRelax:bb.a
  %i.qd = mul nsw i32 %i.qb, %i.qc
  %i.qe = select i1 %i.ol, i32 %i.qd, i32 0
  br i1 %i.pp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.qf = load i32, ptr %i.lq, align 4, !tbaa !4
  %i.qg = mul nsw i32 %i.qf, %i.pr
  %i.qh = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.qi = mul nsw i32 %i.qh, %i.pr
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.qj = phi i32 [ %i.qg, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.qk = phi i32 [ %i.qi, %bb.ak ], [ 0, %bb.aj ]
  %i.ql = add nuw nsw i32 %i.pf, 1                ; 5 uses
  %i.qm = load i32, ptr %i.b, align 4, !tbaa !4   ; 24 uses
  %i.qn = load i32, ptr %i.kw, align 4, !tbaa !4  ; 14 uses
  %i.qo = load i32, ptr %i.kx, align 4, !tbaa !4  ; 7 uses
  %.01022 = call i32 @llvm.smax.i32(i32 %i.qn, i32 %i.qm)
  %.11023 = call i32 @llvm.smax.i32(i32 %i.qo, i32 %.01022)
  %i.qp = icmp sgt i32 %.11023, 0                 ; 3 uses
  br i1 %i.qp, label %.preheader1161.lr.ph, label %.preheader1163

.preheader1161.lr.ph:                             ; preds = %bb.al
  %factor.op.mul1234 = mul i32 %i.qn, %i.qj
  %factor.op.mul1233 = mul i32 %i.qn, %i.qa
  %factor.op.mul1232 = mul i32 %i.pv, %i.qm       ; 2 uses
  %i.qq = mul nsw i32 %i.qk, %i.ql
  %i.qr = select i1 %i.pg, i32 %i.qq, i32 0
  %i.qs = icmp sgt i32 %i.qo, 0
  %i.qt = icmp sgt i32 %i.qn, 0
  %i.qu = sub i32 %i.qa, %factor.op.mul1232
  %i.qv = sub i32 %i.qj, %factor.op.mul1232
  %i.qw = sub i32 %i.qe, %factor.op.mul1233
  %i.qx = sub i32 %i.qr, %factor.op.mul1234
  %brmerge1334.not1490 = and i1 %i.qs, %i.qt
  %i.qy = icmp sgt i32 %i.qm, 0
  %or.cond1481 = and i1 %brmerge1334.not1490, %i.qy
  br i1 %or.cond1481, label %.preheader1157.us.us.preheader, label %.preheader1163

.preheader1157.us.us.preheader:                   ; preds = %.preheader1161.lr.ph
  %i.qz = sext i32 %i.pv to i64                   ; 10 uses
  %i.ra = zext nneg i32 %i.qm to i64              ; 2 uses
  %min.iters.check1590 = icmp ugt i32 %i.qm, 7
  %ident.check1586.not = icmp eq i32 %i.pv, 1
  %or.cond1605 = select i1 %min.iters.check1590, i1 %ident.check1586.not, i1 false
  %n.vec1593 = and i64 %i.ra, 2147483644          ; 5 uses
  %i.rb = trunc nuw nsw i64 %n.vec1593 to i32
  %cmp.n1600 = icmp eq i64 %n.vec1593, %i.ra
  br label %.preheader1157.us.us

.preheader1157.us.us:                             ; preds = %.preheader1157.us.us.preheader, %._crit_edge1219.split.us.us.us
  %.39341229.us.us = phi i32 [ %i.sp, %._crit_edge1219.split.us.us.us ], [ %i.oz, %.preheader1157.us.us.preheader ]
  %.09631228.us.us = phi i32 [ %i.sq, %._crit_edge1219.split.us.us.us ], [ %i.pu, %.preheader1157.us.us.preheader ]
  %.310051227.us.us = phi i32 [ %i.sr, %._crit_edge1219.split.us.us.us ], [ 0, %.preheader1157.us.us.preheader ]
  br label %.preheader1154.us.us.us

.preheader1154.us.us.us:                          ; preds = %._crit_edge1213.us.us.us, %.preheader1157.us.us
  %.49351218.us.us.us = phi i32 [ %.39341229.us.us, %.preheader1157.us.us ], [ %i.sm, %._crit_edge1213.us.us.us ]
  %.19641217.us.us.us = phi i32 [ %.09631228.us.us, %.preheader1157.us.us ], [ %i.sn, %._crit_edge1213.us.us.us ]
  %.39971216.us.us.us = phi i32 [ 0, %.preheader1157.us.us ], [ %i.so, %._crit_edge1213.us.us.us ]
  %i.rc = sext i32 %.49351218.us.us.us to i64     ; 5 uses
  %i.rd = sext i32 %.19641217.us.us.us to i64     ; 5 uses
  br i1 %or.cond1605, label %vector.memcheck1587, label %scalar.ph1589.preheader

vector.memcheck1587:                              ; preds = %.preheader1154.us.us.us
  %i.re = add nsw i64 %i.na, %i.rd
  %i.rf = shl nsw i64 %i.re, 3
  %i.rg = add i64 %i.rf, %i.nf
  %i.rh = add nsw i64 %i.mu, %i.rc
  %i.ri = shl nsw i64 %i.rh, 3
  %i.rj = add i64 %i.ri, %i.ng
  %i.rk = sub i64 %i.rg, %i.rj
  %diff.check1588 = icmp ult i64 %i.rk, 32
  br i1 %diff.check1588, label %scalar.ph1589.preheader, label %vector.ph1591

vector.ph1591:                                    ; preds = %vector.memcheck1587
  %i.rl = add nsw i64 %n.vec1593, %i.rd           ; 2 uses
  %i.rm = add nsw i64 %n.vec1593, %i.rc           ; 2 uses
  %invariant.gep1653 = getelementptr [8 x i8], ptr %i.mv, i64 %i.rc
  %invariant.gep1655 = getelementptr [8 x i8], ptr %i.nb, i64 %i.rd
  br label %vector.body1594

vector.body1594:                                  ; preds = %vector.body1594, %vector.ph1591
  %index1595 = phi i64 [ 0, %vector.ph1591 ], [ %index.next1598, %vector.body1594 ] ; 3 uses
  %gep1654 = getelementptr [8 x i8], ptr %invariant.gep1653, i64 %index1595 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %gep1654, i64 16
  %wide.load1596 = load <2 x double>, ptr %gep1654, align 8, !tbaa !84
  %wide.load1597 = load <2 x double>, ptr %i.rn, align 8, !tbaa !84
  %gep1656 = getelementptr [8 x i8], ptr %invariant.gep1655, i64 %index1595 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %gep1656, i64 16
  store <2 x double> %wide.load1596, ptr %gep1656, align 8, !tbaa !84
  store <2 x double> %wide.load1597, ptr %i.ro, align 8, !tbaa !84
  %index.next1598 = add nuw i64 %index1595, 4     ; 2 uses
  %i.rp = icmp eq i64 %index.next1598, %n.vec1593
  br i1 %i.rp, label %middle.block1599, label %vector.body1594, !llvm.loop !96

middle.block1599:                                 ; preds = %vector.body1594
  br i1 %cmp.n1600, label %._crit_edge1213.us.us.us, label %scalar.ph1589.preheader

scalar.ph1589.preheader:                          ; preds = %vector.memcheck1587, %.preheader1154.us.us.us, %middle.block1599
  %indvars.iv1394.ph = phi i64 [ %i.rd, %vector.memcheck1587 ], [ %i.rd, %.preheader1154.us.us.us ], [ %i.rl, %middle.block1599 ] ; 2 uses
  %indvars.iv1392.ph = phi i64 [ %i.rc, %vector.memcheck1587 ], [ %i.rc, %.preheader1154.us.us.us ], [ %i.rm, %middle.block1599 ] ; 2 uses
  %.39891209.us.us.us.ph = phi i32 [ 0, %vector.memcheck1587 ], [ 0, %.preheader1154.us.us.us ], [ %i.rb, %middle.block1599 ] ; 4 uses
  %i.rq = sub i32 %i.qm, %.39891209.us.us.us.ph
  %xtraiter1628 = and i32 %i.rq, 3                ; 2 uses
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %scalar.ph1589.prol.loopexit, label %scalar.ph1589.prol

scalar.ph1589.prol:                               ; preds = %scalar.ph1589.preheader, %scalar.ph1589.prol
  %indvars.iv1394.prol = phi i64 [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ], [ %indvars.iv1394.ph, %scalar.ph1589.preheader ] ; 2 uses
  %indvars.iv1392.prol = phi i64 [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ], [ %indvars.iv1392.ph, %scalar.ph1589.preheader ] ; 2 uses
  %.39891209.us.us.us.prol = phi i32 [ %i.ru, %scalar.ph1589.prol ], [ %.39891209.us.us.us.ph, %scalar.ph1589.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph1589.prol ], [ 0, %scalar.ph1589.preheader ]
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %indvars.iv1392.prol
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !84
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %indvars.iv1394.prol
  store double %i.rs, ptr %i.rt, align 8, !tbaa !84
  %indvars.iv.next1393.prol = add nsw i64 %indvars.iv1392.prol, %i.qz ; 3 uses
  %indvars.iv.next1395.prol = add nsw i64 %indvars.iv1394.prol, %i.qz ; 3 uses
  %i.ru = add nuw nsw i32 %.39891209.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1628
  br i1 %prol.iter.cmp.not, label %scalar.ph1589.prol.loopexit, label %scalar.ph1589.prol, !llvm.loop !97

scalar.ph1589.prol.loopexit:                      ; preds = %scalar.ph1589.prol, %scalar.ph1589.preheader
  %indvars.iv.next1393.lcssa1609.unr = phi i64 [ poison, %scalar.ph1589.preheader ], [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ]
  %indvars.iv.next1395.lcssa1608.unr = phi i64 [ poison, %scalar.ph1589.preheader ], [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ]
  %indvars.iv1394.unr = phi i64 [ %indvars.iv1394.ph, %scalar.ph1589.preheader ], [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ]
  %indvars.iv1392.unr = phi i64 [ %indvars.iv1392.ph, %scalar.ph1589.preheader ], [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ]
  %.39891209.us.us.us.unr = phi i32 [ %.39891209.us.us.us.ph, %scalar.ph1589.preheader ], [ %i.ru, %scalar.ph1589.prol ]
  %i.rv = sub i32 %.39891209.us.us.us.ph, %i.qm
  %i.rw = icmp ugt i32 %i.rv, -4
  br i1 %i.rw, label %._crit_edge1213.us.us.us, label %scalar.ph1589

scalar.ph1589:                                    ; preds = %scalar.ph1589.prol.loopexit, %scalar.ph1589
  %indvars.iv1394 = phi i64 [ %indvars.iv.next1395.3, %scalar.ph1589 ], [ %indvars.iv1394.unr, %scalar.ph1589.prol.loopexit ] ; 2 uses
  %indvars.iv1392 = phi i64 [ %indvars.iv.next1393.3, %scalar.ph1589 ], [ %indvars.iv1392.unr, %scalar.ph1589.prol.loopexit ] ; 2 uses
  %.39891209.us.us.us = phi i32 [ %i.sj, %scalar.ph1589 ], [ %.39891209.us.us.us.unr, %scalar.ph1589.prol.loopexit ]
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %indvars.iv1392
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !84
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %indvars.iv1394
  store double %i.ry, ptr %i.rz, align 8, !tbaa !84
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, %i.qz ; 2 uses
  %indvars.iv.next1395 = add nsw i64 %indvars.iv1394, %i.qz ; 2 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %indvars.iv.next1393
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !84
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %indvars.iv.next1395
  store double %i.sb, ptr %i.sc, align 8, !tbaa !84
  %indvars.iv.next1393.1 = add nsw i64 %indvars.iv.next1393, %i.qz ; 2 uses
  %indvars.iv.next1395.1 = add nsw i64 %indvars.iv.next1395, %i.qz ; 2 uses
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %indvars.iv.next1393.1
  %i.se = load double, ptr %i.sd, align 8, !tbaa !84
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %indvars.iv.next1395.1
  store double %i.se, ptr %i.sf, align 8, !tbaa !84
  %indvars.iv.next1393.2 = add nsw i64 %indvars.iv.next1393.1, %i.qz ; 2 uses
  %indvars.iv.next1395.2 = add nsw i64 %indvars.iv.next1395.1, %i.qz ; 2 uses
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %indvars.iv.next1393.2
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !84
  %i.si = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %indvars.iv.next1395.2
  store double %i.sh, ptr %i.si, align 8, !tbaa !84
  %indvars.iv.next1393.3 = add nsw i64 %indvars.iv.next1393.2, %i.qz ; 2 uses
  %indvars.iv.next1395.3 = add nsw i64 %indvars.iv.next1395.2, %i.qz ; 2 uses
  %i.sj = add nuw nsw i32 %.39891209.us.us.us, 4  ; 2 uses
  %exitcond1399.not.3 = icmp eq i32 %i.sj, %i.qm
  br i1 %exitcond1399.not.3, label %._crit_edge1213.us.us.us, label %scalar.ph1589, !llvm.loop !99

._crit_edge1213.us.us.us:                         ; preds = %scalar.ph1589.prol.loopexit, %scalar.ph1589, %middle.block1599
  %indvars.iv.next1393.lcssa = phi i64 [ %i.rm, %middle.block1599 ], [ %indvars.iv.next1393.lcssa1609.unr, %scalar.ph1589.prol.loopexit ], [ %indvars.iv.next1393.3, %scalar.ph1589 ]
  %indvars.iv.next1395.lcssa = phi i64 [ %i.rl, %middle.block1599 ], [ %indvars.iv.next1395.lcssa1608.unr, %scalar.ph1589.prol.loopexit ], [ %indvars.iv.next1395.3, %scalar.ph1589 ]
  %i.sk = trunc nsw i64 %indvars.iv.next1395.lcssa to i32
  %i.sl = trunc nsw i64 %indvars.iv.next1393.lcssa to i32
  %i.sm = add nsw i32 %i.qu, %i.sl                ; 2 uses
  %i.sn = add nsw i32 %i.qv, %i.sk                ; 2 uses
  %i.so = add nuw nsw i32 %.39971216.us.us.us, 1  ; 2 uses
  %exitcond1400.not = icmp eq i32 %i.so, %i.qn
  br i1 %exitcond1400.not, label %._crit_edge1219.split.us.us.us, label %.preheader1154.us.us.us, !llvm.loop !100

._crit_edge1219.split.us.us.us:                   ; preds = %._crit_edge1213.us.us.us
  %i.sp = add nsw i32 %i.qw, %i.sm
  %i.sq = add nsw i32 %i.qx, %i.sn
  %i.sr = add nuw nsw i32 %.310051227.us.us, 1    ; 2 uses
  %exitcond1401.not = icmp eq i32 %i.sr, %i.qo
  br i1 %exitcond1401.not, label %.preheader1163, label %.preheader1157.us.us, !llvm.loop !101

.preheader1163:                                   ; preds = %._crit_edge1219.split.us.us.us, %.preheader1161.lr.ph, %bb.al
  br i1 %i.ky, label %.lr.ph1283, label %._crit_edge1284

.lr.ph1283:                                       ; preds = %.preheader1163
  %i.ss = mul i32 %i.pr, %i.ql
  %i.st = mul i32 %i.pv, %i.qm                    ; 3 uses
  %i.su = icmp slt i32 %i.qo, 1
  %i.sv = icmp slt i32 %i.qn, 1
  %i.sw = icmp slt i32 %i.qm, 1
  %i.sx = sext i32 %i.pv to i64                   ; 9 uses
  %brmerge1337 = or i1 %i.su, %i.sv
  %i.sy = add i32 %i.qm, -1
  %i.sz = zext i32 %i.sy to i64
  %i.ta = shl nuw nsw i64 %i.sz, 3                ; 3 uses
  %scevgep1544 = getelementptr i8, ptr %scevgep1543, i64 %i.ta
  %4 = zext i32 %i.qm to i64                      ; 2 uses
  %brmerge1483 = or i1 %brmerge1337, %i.sw
  %min.iters.check1566 = icmp ugt i32 %i.qm, 5
  %ident.check1538.not = icmp eq i32 %i.pv, 1
  %or.cond1606 = select i1 %min.iters.check1566, i1 %ident.check1538.not, i1 false
  %n.vec1569 = and i64 %4, 2147483644             ; 6 uses
  %i.tb = trunc nuw nsw i64 %n.vec1569 to i32
  %cmp.n1580 = icmp eq i64 %n.vec1569, %4
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph1283, %.loopexit1160
  %indvars.iv1416 = phi i64 [ 0, %.lr.ph1283 ], [ %indvars.iv.next1417, %.loopexit1160 ] ; 4 uses
  %.not1113 = icmp eq i64 %indvars.iv1416, %i.lf
  br i1 %.not1113, label %.loopexit1160, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.tc = load ptr, ptr %i.kz, align 8, !tbaa !80 ; 3 uses
  %i.td = load ptr, ptr %i.la, align 8, !tbaa !81
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv1433
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !27
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv1416
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !4
  %i.ti = sext i32 %i.th to i64                   ; 2 uses
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.tc, i64 %i.ti ; 4 uses
  %i.tk = load ptr, ptr %i.kn, align 8, !tbaa !82 ; 3 uses
  %i.tl = load ptr, ptr %i.lb, align 8, !tbaa !83
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %indvars.iv1433
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !4
  %i.to = sext i32 %i.tn to i64                   ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.tk, i64 %i.to
  %i.tq = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv1416 ; 3 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !4
  %i.tu = load i32, ptr %i.nq, align 4, !tbaa !4
  %i.tv = load i32, ptr %i.nr, align 4, !tbaa !4  ; 2 uses
  %i.tw = sub nsw i32 %i.tu, %i.tv                ; 4 uses
  %i.tx = icmp sgt i32 %i.tw, -1                  ; 3 uses
  br i1 %i.tx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !4
  %i.ua = add nuw nsw i32 %i.tw, 1
  %i.ub = mul nsw i32 %i.tz, %i.ua
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.uc = phi i32 [ %i.ub, %bb.ao ], [ 0, %bb.an ]
  %i.ud = load i32, ptr %i.np, align 4, !tbaa !4
  %i.ue = load i32, ptr %i.mm, align 4, !tbaa !4  ; 2 uses
  %i.uf = sub nsw i32 %i.ud, %i.ue                ; 2 uses
  %i.ug = icmp sgt i32 %i.uf, -1                  ; 3 uses
  %i.uh = add nsw i32 %i.uc, %i.tt
  %i.ui = add nuw nsw i32 %i.uf, 1                ; 4 uses
  %i.uj = mul nsw i32 %i.ui, %i.uh
  %i.uk = select i1 %i.ug, i32 %i.uj, i32 0
  %i.ul = add i32 %i.uk, %i.tr
  %i.um = sext i32 %i.ul to i64                   ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.tp, i64 %i.um ; 4 uses
  %i.uo = load i32, ptr %i.mg, align 4, !tbaa !4  ; 2 uses
  %i.up = sub i32 %i.ob, %i.uo
  %i.uq = load i32, ptr %i.ns, align 4, !tbaa !4  ; 2 uses
  %i.ur = sub i32 %i.of, %i.uq
  %i.us = load i32, ptr %i.nu, align 4, !tbaa !4
  %i.ut = sub nsw i32 %i.us, %i.uq                ; 3 uses
  %i.uu = icmp sgt i32 %i.ut, -1                  ; 2 uses
  br i1 %i.uu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.uv = load i32, ptr %i.oi, align 4, !tbaa !4
  %i.uw = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.ux = sub nsw i32 %i.uv, %i.uw
  %i.uy = add nuw nsw i32 %i.ut, 1
  %i.uz = mul nsw i32 %i.ux, %i.uy
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.va = phi i32 [ %i.uz, %bb.aq ], [ 0, %bb.ap ]
  %i.vb = load i32, ptr %i.nt, align 4, !tbaa !4
  %i.vc = sub nsw i32 %i.vb, %i.uo                ; 2 uses
  %i.vd = icmp sgt i32 %i.vc, -1                  ; 2 uses
  %i.ve = add nsw i32 %i.ur, %i.va
  %i.vf = add nuw nsw i32 %i.vc, 1                ; 3 uses
  %i.vg = mul nsw i32 %i.vf, %i.ve
  %i.vh = select i1 %i.vd, i32 %i.vg, i32 0
  %i.vi = add nsw i32 %i.up, %i.vh
  %i.vj = sub i32 %i.ob, %i.ue
  %i.vk = sub i32 %i.of, %i.tv
  br i1 %i.tx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.vl = load i32, ptr %i.oi, align 4, !tbaa !4
  %i.vm = load i32, ptr %i.nw, align 4, !tbaa !4
  %i.vn = sub nsw i32 %i.vl, %i.vm
  %i.vo = add nuw nsw i32 %i.tw, 1
  %i.vp = mul nsw i32 %i.vn, %i.vo
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.vq = phi i32 [ %i.vp, %bb.as ], [ 0, %bb.ar ]
  %i.vr = add nsw i32 %i.vk, %i.vq
  %i.vs = mul nsw i32 %i.vr, %i.ui
  %i.vt = select i1 %i.ug, i32 %i.vs, i32 0
  %i.vu = add nsw i32 %i.vj, %i.vt
  br i1 %i.pg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.vv = load i32, ptr %i.oi, align 4, !tbaa !4
  %i.vw = load i32, ptr %i.nm, align 4, !tbaa !4
  %i.vx = sub nsw i32 %i.vv, %i.vw
  %i.vy = mul nsw i32 %i.vx, %i.ql
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.vz = phi i32 [ %i.vy, %bb.au ], [ 0, %bb.at ]
  %i.wa = add nsw i32 %i.vz, %i.pd
  %i.wb = mul nsw i32 %i.wa, %i.pr
  %i.wc = select i1 %i.pp, i32 %i.wb, i32 0
  %i.wd = add nsw i32 %i.wc, %i.pb
  br i1 %i.vd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.we = load i32, ptr %i.lq, align 4, !tbaa !4
  %i.wf = mul nsw i32 %i.we, %i.vf
  %i.wg = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.wh = mul nsw i32 %i.wg, %i.vf
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.wi = phi i32 [ %i.wf, %bb.aw ], [ 0, %bb.av ] ; 2 uses
  %i.wj = phi i32 [ %i.wh, %bb.aw ], [ 0, %bb.av ]
  %i.wk = add nuw nsw i32 %i.ut, 1
  %i.wl = mul nsw i32 %i.wj, %i.wk
  %i.wm = select i1 %i.uu, i32 %i.wl, i32 0
  br i1 %i.ug, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.wn = load i32, ptr %i.lq, align 4, !tbaa !4
  %i.wo = mul nsw i32 %i.wn, %i.ui
  %i.wp = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.wq = mul nsw i32 %i.wp, %i.ui
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.wr = phi i32 [ %i.wo, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %i.ws = phi i32 [ %i.wq, %bb.ay ], [ 0, %bb.ax ]
  %i.wt = add nuw nsw i32 %i.tw, 1
  %i.wu = mul nsw i32 %i.ws, %i.wt
  %i.wv = select i1 %i.tx, i32 %i.wu, i32 0
  br i1 %i.pp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ww = load i32, ptr %i.lq, align 4, !tbaa !4
  %i.wx = mul nsw i32 %i.ww, %i.pr
  %i.wy = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.wz = mul i32 %i.ss, %i.wy
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.xa = phi i32 [ %i.wx, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.xb = phi i32 [ %i.wz, %bb.ba ], [ 0, %bb.az ]
  br i1 %i.qp, label %.preheader1156.lr.ph, label %.loopexit1160

.preheader1156.lr.ph:                             ; preds = %bb.bb
  %i.xc = mul i32 %i.qn, %i.xa
  %i.xd = mul i32 %i.qn, %i.wr
  %i.xe = mul i32 %i.qn, %i.wi
  %i.xf = select i1 %i.pg, i32 %i.xb, i32 0
  %i.xg = sub i32 %i.wi, %i.st
  %i.xh = sub i32 %i.wr, %i.st
  %i.xi = sub i32 %i.xa, %i.st
  %i.xj = sub i32 %i.wm, %i.xe
  %i.xk = sub i32 %i.wv, %i.xd
  %i.xl = sub i32 %i.xf, %i.xc
  br i1 %brmerge1483, label %.loopexit1160, label %.preheader1153.us.us.preheader

.preheader1153.us.us.preheader:                   ; preds = %.preheader1156.lr.ph
  %i.xm = shl nsw i64 %i.ti, 3                    ; 2 uses
  %scevgep1546 = getelementptr i8, ptr %i.tc, i64 %i.xm
  %scevgep1548 = getelementptr i8, ptr %i.tc, i64 8
  %scevgep1549 = getelementptr i8, ptr %scevgep1548, i64 %i.ta
  %scevgep1550 = getelementptr i8, ptr %scevgep1549, i64 %i.xm
  %i.xn = add nsw i64 %i.to, %i.um
  %i.xo = shl nsw i64 %i.xn, 3                    ; 2 uses
  %scevgep1552 = getelementptr i8, ptr %i.tk, i64 %i.xo
  %scevgep1554 = getelementptr i8, ptr %i.tk, i64 8
  %scevgep1555 = getelementptr i8, ptr %scevgep1554, i64 %i.ta
  %scevgep1556 = getelementptr i8, ptr %scevgep1555, i64 %i.xo
  br label %.preheader1153.us.us

.preheader1153.us.us:                             ; preds = %.preheader1153.us.us.preheader, %._crit_edge1252.split.us.us.us
  %.39281267.us.us = phi i32 [ %i.zp, %._crit_edge1252.split.us.us.us ], [ %i.vi, %.preheader1153.us.us.preheader ]
  %.39401266.us.us = phi i32 [ %i.zq, %._crit_edge1252.split.us.us.us ], [ %i.vu, %.preheader1153.us.us.preheader ]
  %.39661265.us.us = phi i32 [ %i.zr, %._crit_edge1252.split.us.us.us ], [ %i.wd, %.preheader1153.us.us.preheader ]
  %.510071264.us.us = phi i32 [ %i.zs, %._crit_edge1252.split.us.us.us ], [ 0, %.preheader1153.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge1244.us.us.us, %.preheader1153.us.us
  %.49291251.us.us.us = phi i32 [ %.39281267.us.us, %.preheader1153.us.us ], [ %i.zl, %._crit_edge1244.us.us.us ]
  %.49411250.us.us.us = phi i32 [ %.39401266.us.us, %.preheader1153.us.us ], [ %i.zm, %._crit_edge1244.us.us.us ]
  %.49671249.us.us.us = phi i32 [ %.39661265.us.us, %.preheader1153.us.us ], [ %i.zn, %._crit_edge1244.us.us.us ]
end_hunk_0
