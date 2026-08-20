inline.NumInlined: 330
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@proj_trans_bounds_3D:bb.a
  %i.dw = insertelement <2 x double> %i.dv, double %.04321136, i64 1 ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %7, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %3, i64 1
  %i.dz = insertelement <2 x double> poison, double %4, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %6, i64 1
  %xtraiter = and i64 %i.do, 3                    ; 3 uses
  %i.eb = icmp ult i64 %i.dp, 3
  %unroll_iter = and i64 %i.do, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1636 = icmp ne i64 %xtraiter, 0
  %xtraiter1638 = and i64 %i.do, 1
  %i.ec = icmp eq i64 %i.dp, 0
  %unroll_iter1643 = and i64 %i.do, -2
  %lcmp.mod1640.not = icmp eq i64 %xtraiter1638, 0
  %lcmp.mod1642 = trunc i64 %i.do to i1
  %xtraiter1646 = and i64 %i.do, 3                ; 3 uses
  %i.ed = icmp ult i64 %i.dp, 3
  %unroll_iter1651 = and i64 %i.do, -4
  %lcmp.mod1648.not = icmp eq i64 %xtraiter1646, 0
  %lcmp.mod1650 = icmp ne i64 %xtraiter1646, 0
  %xtraiter1654 = and i64 %i.do, 1
  %i.ee = icmp eq i64 %i.dp, 0
  %unroll_iter1659 = and i64 %i.do, -2
  %lcmp.mod1656.not = icmp eq i64 %xtraiter1654, 0
  %lcmp.mod1658 = trunc i64 %i.do to i1
  %xtraiter1662 = and i64 %i.do, 3                ; 3 uses
  %i.ef = icmp ult i64 %i.dp, 3
  %unroll_iter1667 = and i64 %i.do, -4
  %lcmp.mod1664.not = icmp eq i64 %xtraiter1662, 0
  %lcmp.mod1666 = icmp ne i64 %xtraiter1662, 0
  %xtraiter1670 = and i64 %i.do, 1
  %i.eg = icmp eq i64 %i.dp, 0
  %unroll_iter1675 = and i64 %i.do, -2
  %lcmp.mod1672.not = icmp eq i64 %xtraiter1670, 0
  %lcmp.mod1674 = trunc i64 %i.do to i1
  %xtraiter1679 = and i64 %i.do, 1
  %i.eh = icmp eq i64 %i.dp, 0
  %unroll_iter1684 = and i64 %i.do, -2
  %lcmp.mod1681.not = icmp eq i64 %xtraiter1679, 0
  %lcmp.mod1683 = trunc i64 %i.do to i1
  %xtraiter1688 = and i64 %i.do, 3                ; 3 uses
  %i.ei = icmp ult i64 %i.dp, 3
  %unroll_iter1693 = and i64 %i.do, -4
  %lcmp.mod1690.not = icmp eq i64 %xtraiter1688, 0
  %lcmp.mod1692 = icmp ne i64 %xtraiter1688, 0
  %xtraiter1697 = and i64 %i.do, 3                ; 3 uses
  %i.ej = icmp ult i64 %i.dp, 3
  %unroll_iter1702 = and i64 %i.do, -4
  %lcmp.mod1699.not = icmp eq i64 %xtraiter1697, 0
  %lcmp.mod1701 = icmp ne i64 %xtraiter1697, 0
  %xtraiter1705 = and i64 %i.do, 1
  %i.ek = icmp eq i64 %i.dp, 0
  %unroll_iter1710 = and i64 %i.do, -2
  %lcmp.mod1707.not = icmp eq i64 %xtraiter1705, 0
  %lcmp.mod1709 = trunc i64 %i.do to i1
  %min.iters.check = icmp ult i32 %15, 3
  %n.vec = and i64 %wide.trip.count, 32764        ; 3 uses
  %broadcast.splatinsert1187 = insertelement <2 x double> poison, double %.04321136, i64 0
  %broadcast.splat1188 = shufflevector <2 x double> %broadcast.splatinsert1187, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1189 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1190 = shufflevector <2 x double> %broadcast.splatinsert1189, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter1712 = and i64 %wide.trip.count, 1
  %lcmp.mod1713.not = icmp eq i64 %xtraiter1712, 0
  br label %.lr.ph.preheader

.lr.ph1030.preheader:                             ; preds = %.lr.ph1021.1, %middle.block1482
  %indvars.iv.next1098.1.lcssa = phi i64 [ %i.jx, %middle.block1482 ], [ %indvars.iv.next1098.1, %.lr.ph1021.1 ] ; 3 uses
  %i.el = fsub double %8, %5
  %i.em = uitofp nneg i32 %i.o to double
  %i.en = fdiv double %i.el, %i.em                ; 8 uses
  %min.iters.check1487 = icmp ult i32 %15, 3
  br i1 %min.iters.check1487, label %.lr.ph1030.preheader1604, label %vector.ph1488

vector.ph1488:                                    ; preds = %.lr.ph1030.preheader
  %n.vec1489 = and i64 %i.fr, 32764               ; 4 uses
  %i.eo = add i64 %indvars.iv.next1098.1.lcssa, %n.vec1489 ; 2 uses
  %i.ep = trunc nuw nsw i64 %n.vec1489 to i32
  %broadcast.splatinsert1490 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat1491 = shufflevector <2 x double> %broadcast.splatinsert1490, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1492 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1493 = shufflevector <2 x double> %broadcast.splatinsert1492, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1494 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1495 = shufflevector <2 x double> %broadcast.splatinsert1494, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1496 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1497 = shufflevector <2 x double> %broadcast.splatinsert1496, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1498

vector.body1498:                                  ; preds = %vector.body1498, %vector.ph1488
  %index1499 = phi i64 [ 0, %vector.ph1488 ], [ %index.next1502, %vector.body1498 ] ; 2 uses
  %vec.ind1500 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1488 ], [ %vec.ind.next1503, %vector.body1498 ] ; 3 uses
  %step.add1501 = add nuw <2 x i32> %vec.ind1500, splat (i32 2)
  %i.eq = add i64 %indvars.iv.next1098.1.lcssa, %index1499 ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x double> %broadcast.splat1493, ptr %i.er, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1493, ptr %i.es, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.eq ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x double> %broadcast.splat1495, ptr %i.et, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1495, ptr %i.eu, align 8, !tbaa !8
  %i.ev = uitofp nneg <2 x i32> %vec.ind1500 to <2 x double>
  %i.ew = uitofp nneg <2 x i32> %step.add1501 to <2 x double>
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %broadcast.splat1491, <2 x double> %broadcast.splat1497)
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %broadcast.splat1491, <2 x double> %broadcast.splat1497)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.eq ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <2 x double> %i.ex, ptr %i.ez, align 8, !tbaa !8
  store <2 x double> %i.ey, ptr %i.fa, align 8, !tbaa !8
  %index.next1502 = add nuw i64 %index1499, 4     ; 2 uses
  %vec.ind.next1503 = add nuw <2 x i32> %vec.ind1500, splat (i32 4)
  %i.fb = icmp eq i64 %index.next1502, %n.vec1489
  br i1 %i.fb, label %middle.block1504, label %vector.body1498, !llvm.loop !44

middle.block1504:                                 ; preds = %vector.body1498
  %cmp.n1505 = icmp eq i64 %n.vec1489, %i.fr
  br i1 %cmp.n1505, label %.lr.ph1035.preheader, label %.lr.ph1030.preheader1604

.lr.ph1030.preheader1604:                         ; preds = %.lr.ph1030.preheader, %middle.block1504
  %indvars.iv1105.ph = phi i64 [ %indvars.iv.next1098.1.lcssa, %.lr.ph1030.preheader ], [ %i.eo, %middle.block1504 ]
  %.04161028.ph = phi i32 [ 0, %.lr.ph1030.preheader ], [ %i.ep, %middle.block1504 ]
  br label %.lr.ph1030

.lr.ph1007.preheader:                             ; preds = %bb.am
  %i.fc = add nuw nsw i32 %15, 1                  ; 2 uses
  %wide.trip.count1103 = zext nneg i32 %i.fc to i64 ; 3 uses
  %min.iters.check1312 = icmp ult i32 %15, 3
  br i1 %min.iters.check1312, label %.lr.ph1007.preheader1620, label %vector.ph1313

vector.ph1313:                                    ; preds = %.lr.ph1007.preheader
  %n.vec1314 = and i64 %wide.trip.count1103, 32764 ; 3 uses
  %broadcast.splatinsert1315 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat1316 = shufflevector <2 x double> %broadcast.splatinsert1315, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1317 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1318 = shufflevector <2 x double> %broadcast.splatinsert1317, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1319 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1320 = shufflevector <2 x double> %broadcast.splatinsert1319, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1321 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1322 = shufflevector <2 x double> %broadcast.splatinsert1321, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1313
  %index1324 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1327, %vector.body1323 ] ; 4 uses
  %vec.ind1325 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1313 ], [ %vec.ind.next1328, %vector.body1323 ] ; 3 uses
  %step.add1326 = add <2 x i32> %vec.ind1325, splat (i32 2)
  %i.fd = uitofp nneg <2 x i32> %vec.ind1325 to <2 x double>
  %i.fe = uitofp nneg <2 x i32> %step.add1326 to <2 x double>
  %i.ff = fneg <2 x double> %i.fd
  %i.fg = fneg <2 x double> %i.fe
  %i.fh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %broadcast.splat1316, <2 x double> %broadcast.splat1318)
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %broadcast.splat1316, <2 x double> %broadcast.splat1318)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index1324 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x double> %i.fh, ptr %i.fj, align 8, !tbaa !8
  store <2 x double> %i.fi, ptr %i.fk, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index1324 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x double> %broadcast.splat1320, ptr %i.fl, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1320, ptr %i.fm, align 8, !tbaa !8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1324 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <2 x double> %broadcast.splat1322, ptr %i.fn, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1322, ptr %i.fo, align 8, !tbaa !8
  %index.next1327 = add nuw i64 %index1324, 4     ; 2 uses
  %vec.ind.next1328 = add <2 x i32> %vec.ind1325, splat (i32 4)
  %i.fp = icmp eq i64 %index.next1327, %n.vec1314
  br i1 %i.fp, label %middle.block1329, label %vector.body1323, !llvm.loop !45

middle.block1329:                                 ; preds = %vector.body1323
  %cmp.n1330 = icmp eq i64 %n.vec1314, %wide.trip.count1103
  br i1 %cmp.n1330, label %.lr.ph1011.preheader, label %.lr.ph1007.preheader1620

.lr.ph1007.preheader1620:                         ; preds = %.lr.ph1007.preheader, %middle.block1329
  %indvars.iv1082.ph = phi i64 [ 0, %.lr.ph1007.preheader ], [ %n.vec1314, %middle.block1329 ]
  br label %.lr.ph1007

.lr.ph1011.preheader:                             ; preds = %.lr.ph1007, %middle.block1329
  %i.fq = zext nneg i32 %i.fc to i64              ; 3 uses
  %narrow = add nuw nsw i32 %15, 1
  %i.fr = zext nneg i32 %narrow to i64            ; 22 uses
  %min.iters.check1333 = icmp ult i32 %15, 3
  br i1 %min.iters.check1333, label %.lr.ph1011.preheader1618, label %vector.ph1334

vector.ph1334:                                    ; preds = %.lr.ph1011.preheader
  %n.vec1335 = and i64 %i.fr, 32764               ; 4 uses
  %i.fs = add nuw nsw i64 %n.vec1335, %i.fq       ; 2 uses
  %i.ft = trunc nuw nsw i64 %n.vec1335 to i32
  %broadcast.splatinsert1336 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1337 = shufflevector <2 x double> %broadcast.splatinsert1336, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1338 = insertelement <2 x double> poison, double %.04321136, i64 0
  %broadcast.splat1339 = shufflevector <2 x double> %broadcast.splatinsert1338, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1340 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1341 = shufflevector <2 x double> %broadcast.splatinsert1340, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1342 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1343 = shufflevector <2 x double> %broadcast.splatinsert1342, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1334
  %index1345 = phi i64 [ 0, %vector.ph1334 ], [ %index.next1348, %vector.body1344 ] ; 2 uses
  %vec.ind1346 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1334 ], [ %vec.ind.next1349, %vector.body1344 ] ; 3 uses
  %step.add1347 = add nuw nsw <2 x i32> %vec.ind1346, splat (i32 2)
  %i.fu = add nuw i64 %index1345, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <2 x double> %broadcast.splat1337, ptr %i.fv, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1337, ptr %i.fw, align 8, !tbaa !8
  %i.fx = uitofp nneg <2 x i32> %vec.ind1346 to <2 x double>
  %i.fy = uitofp nneg <2 x i32> %step.add1347 to <2 x double>
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %broadcast.splat1339, <2 x double> %broadcast.splat1341)
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %broadcast.splat1339, <2 x double> %broadcast.splat1341)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.fu ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <2 x double> %i.fz, ptr %i.gb, align 8, !tbaa !8
  store <2 x double> %i.ga, ptr %i.gc, align 8, !tbaa !8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.fu ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <2 x double> %broadcast.splat1343, ptr %i.gd, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1343, ptr %i.ge, align 8, !tbaa !8
  %index.next1348 = add nuw i64 %index1345, 4     ; 2 uses
  %vec.ind.next1349 = add nuw nsw <2 x i32> %vec.ind1346, splat (i32 4)
  %i.gf = icmp eq i64 %index.next1348, %n.vec1335
  br i1 %i.gf, label %middle.block1350, label %vector.body1344, !llvm.loop !46

middle.block1350:                                 ; preds = %vector.body1344
  %cmp.n1351 = icmp eq i64 %n.vec1335, %i.fr
  br i1 %cmp.n1351, label %.lr.ph1016.preheader, label %.lr.ph1011.preheader1618

.lr.ph1011.preheader1618:                         ; preds = %.lr.ph1011.preheader, %middle.block1350
  %indvars.iv1087.ph = phi i64 [ %i.fq, %.lr.ph1011.preheader ], [ %i.fs, %middle.block1350 ]
  %.04191010.ph = phi i32 [ 0, %.lr.ph1011.preheader ], [ %i.ft, %middle.block1350 ]
  br label %.lr.ph1011

.lr.ph1007:                                       ; preds = %.lr.ph1007.preheader1620, %.lr.ph1007
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %.lr.ph1007 ], [ %indvars.iv1082.ph, %.lr.ph1007.preheader1620 ] ; 5 uses
  %indvars1102 = trunc i64 %indvars.iv1082 to i32
  %i.gg = uitofp nneg i32 %indvars1102 to double
  %i.gh = fneg double %i.gg
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.by, double %7)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1082
  store double %i.gi, ptr %i.gj, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1082
  store double %3, ptr %i.gk, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1082
  store double %5, ptr %i.gl, align 8, !tbaa !8
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 1 ; 2 uses
  %exitcond1104.not = icmp eq i64 %indvars.iv.next1083, %wide.trip.count1103
  br i1 %exitcond1104.not, label %.lr.ph1011.preheader, label %.lr.ph1007, !llvm.loop !47

.lr.ph1011:                                       ; preds = %.lr.ph1011.preheader1618, %.lr.ph1011
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %.lr.ph1011 ], [ %indvars.iv1087.ph, %.lr.ph1011.preheader1618 ] ; 4 uses
  %.04191010 = phi i32 [ %i.gr, %.lr.ph1011 ], [ %.04191010.ph, %.lr.ph1011.preheader1618 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1087
  store double %4, ptr %i.gm, align 8, !tbaa !8
  %i.gn = uitofp nneg i32 %.04191010 to double
  %i.go = call double @llvm.fmuladd.f64(double %i.gn, double %.04321136, double %3)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1087
  store double %i.go, ptr %i.gp, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1087
  store double %5, ptr %i.gq, align 8, !tbaa !8
  %indvars.iv.next1088 = add nuw nsw i64 %indvars.iv1087, 1 ; 2 uses
  %i.gr = add nuw nsw i32 %.04191010, 1
  %exitcond1091.not = icmp eq i32 %.04191010, %15
  br i1 %exitcond1091.not, label %.lr.ph1016.preheader, label %.lr.ph1011, !llvm.loop !48

.lr.ph1016.preheader:                             ; preds = %.lr.ph1011, %middle.block1350
  %indvars.iv.next1088.lcssa = phi i64 [ %i.fs, %middle.block1350 ], [ %indvars.iv.next1088, %.lr.ph1011 ] ; 3 uses
  %min.iters.check1355 = icmp ult i32 %15, 3
  br i1 %min.iters.check1355, label %.lr.ph1016.preheader1616, label %vector.ph1356

vector.ph1356:                                    ; preds = %.lr.ph1016.preheader
  %n.vec1357 = and i64 %i.fr, 32764               ; 4 uses
  %i.gs = add i64 %indvars.iv.next1088.lcssa, %n.vec1357 ; 2 uses
  %i.gt = trunc nuw nsw i64 %n.vec1357 to i32
  %broadcast.splatinsert1358 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat1359 = shufflevector <2 x double> %broadcast.splatinsert1358, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1360 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1361 = shufflevector <2 x double> %broadcast.splatinsert1360, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1362 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1363 = shufflevector <2 x double> %broadcast.splatinsert1362, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1364 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1365 = shufflevector <2 x double> %broadcast.splatinsert1364, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1356
  %index1367 = phi i64 [ 0, %vector.ph1356 ], [ %index.next1370, %vector.body1366 ] ; 2 uses
  %vec.ind1368 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1356 ], [ %vec.ind.next1371, %vector.body1366 ] ; 3 uses
  %step.add1369 = add nuw nsw <2 x i32> %vec.ind1368, splat (i32 2)
  %i.gu = add nuw i64 %indvars.iv.next1088.lcssa, %index1367 ; 3 uses
  %i.gv = uitofp nneg <2 x i32> %vec.ind1368 to <2 x double>
  %i.gw = uitofp nneg <2 x i32> %step.add1369 to <2 x double>
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %broadcast.splat1359, <2 x double> %broadcast.splat1361)
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %broadcast.splat1359, <2 x double> %broadcast.splat1361)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gu ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x double> %i.gx, ptr %i.gz, align 8, !tbaa !8
  store <2 x double> %i.gy, ptr %i.ha, align 8, !tbaa !8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.gu ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <2 x double> %broadcast.splat1363, ptr %i.hb, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1363, ptr %i.hc, align 8, !tbaa !8
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.gu ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <2 x double> %broadcast.splat1365, ptr %i.hd, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1365, ptr %i.he, align 8, !tbaa !8
  %index.next1370 = add nuw i64 %index1367, 4     ; 2 uses
  %vec.ind.next1371 = add nuw nsw <2 x i32> %vec.ind1368, splat (i32 4)
  %i.hf = icmp eq i64 %index.next1370, %n.vec1357
  br i1 %i.hf, label %middle.block1372, label %vector.body1366, !llvm.loop !49

middle.block1372:                                 ; preds = %vector.body1366
  %cmp.n1373 = icmp eq i64 %n.vec1357, %i.fr
  br i1 %cmp.n1373, label %.lr.ph1021.preheader, label %.lr.ph1016.preheader1616

.lr.ph1016.preheader1616:                         ; preds = %.lr.ph1016.preheader, %middle.block1372
  %indvars.iv1092.ph = phi i64 [ %indvars.iv.next1088.lcssa, %.lr.ph1016.preheader ], [ %i.gs, %middle.block1372 ]
  %.04181015.ph = phi i32 [ 0, %.lr.ph1016.preheader ], [ %i.gt, %middle.block1372 ]
  br label %.lr.ph1016

.lr.ph1016:                                       ; preds = %.lr.ph1016.preheader1616, %.lr.ph1016
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %.lr.ph1016 ], [ %indvars.iv1092.ph, %.lr.ph1016.preheader1616 ] ; 4 uses
  %.04181015 = phi i32 [ %i.hl, %.lr.ph1016 ], [ %.04181015.ph, %.lr.ph1016.preheader1616 ] ; 3 uses
  %i.hg = uitofp nneg i32 %.04181015 to double
  %i.hh = call double @llvm.fmuladd.f64(double %i.hg, double %i.by, double %4)
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1092
  store double %i.hh, ptr %i.hi, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1092
  store double %6, ptr %i.hj, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1092
  store double %5, ptr %i.hk, align 8, !tbaa !8
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 1 ; 2 uses
  %i.hl = add nuw nsw i32 %.04181015, 1
  %exitcond1096.not = icmp eq i32 %.04181015, %15
  br i1 %exitcond1096.not, label %.lr.ph1021.preheader, label %.lr.ph1016, !llvm.loop !50

.lr.ph1021.preheader:                             ; preds = %.lr.ph1016, %middle.block1372
  %indvars.iv.next1093.lcssa = phi i64 [ %i.gs, %middle.block1372 ], [ %indvars.iv.next1093, %.lr.ph1016 ] ; 3 uses
  %min.iters.check1377 = icmp ult i32 %15, 3
  br i1 %min.iters.check1377, label %.lr.ph1021.preheader1614, label %vector.ph1378

vector.ph1378:                                    ; preds = %.lr.ph1021.preheader
  %n.vec1379 = and i64 %i.fr, 32764               ; 4 uses
  %i.hm = add i64 %indvars.iv.next1093.lcssa, %n.vec1379 ; 2 uses
  %i.hn = trunc nuw nsw i64 %n.vec1379 to i32
  %broadcast.splatinsert1380 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1381 = shufflevector <2 x double> %broadcast.splatinsert1380, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1382 = insertelement <2 x double> poison, double %.04321136, i64 0
  %broadcast.splat1383 = shufflevector <2 x double> %broadcast.splatinsert1382, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1384 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1385 = shufflevector <2 x double> %broadcast.splatinsert1384, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1386 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1387 = shufflevector <2 x double> %broadcast.splatinsert1386, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %vector.ph1378
  %index1389 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1392, %vector.body1388 ] ; 2 uses
  %vec.ind1390 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1378 ], [ %vec.ind.next1393, %vector.body1388 ] ; 3 uses
  %step.add1391 = add nuw nsw <2 x i32> %vec.ind1390, splat (i32 2)
  %i.ho = add nuw i64 %indvars.iv.next1093.lcssa, %index1389 ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <2 x double> %broadcast.splat1381, ptr %i.hp, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1381, ptr %i.hq, align 8, !tbaa !8
  %i.hr = uitofp nneg <2 x i32> %vec.ind1390 to <2 x double>
  %i.hs = uitofp nneg <2 x i32> %step.add1391 to <2 x double>
  %i.ht = fneg <2 x double> %i.hr
  %i.hu = fneg <2 x double> %i.hs
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %broadcast.splat1383, <2 x double> %broadcast.splat1385)
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %broadcast.splat1383, <2 x double> %broadcast.splat1385)
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ho ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store <2 x double> %i.hv, ptr %i.hx, align 8, !tbaa !8
  store <2 x double> %i.hw, ptr %i.hy, align 8, !tbaa !8
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ho ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <2 x double> %broadcast.splat1387, ptr %i.hz, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1387, ptr %i.ia, align 8, !tbaa !8
  %index.next1392 = add nuw i64 %index1389, 4     ; 2 uses
  %vec.ind.next1393 = add nuw nsw <2 x i32> %vec.ind1390, splat (i32 4)
  %i.ib = icmp eq i64 %index.next1392, %n.vec1379
  br i1 %i.ib, label %middle.block1394, label %vector.body1388, !llvm.loop !51

middle.block1394:                                 ; preds = %vector.body1388
  %cmp.n1395 = icmp eq i64 %n.vec1379, %i.fr
  br i1 %cmp.n1395, label %.lr.ph1007.1.preheader, label %.lr.ph1021.preheader1614

.lr.ph1021.preheader1614:                         ; preds = %.lr.ph1021.preheader, %middle.block1394
  %indvars.iv1097.ph = phi i64 [ %indvars.iv.next1093.lcssa, %.lr.ph1021.preheader ], [ %i.hm, %middle.block1394 ]
  %.04171020.ph = phi i32 [ 0, %.lr.ph1021.preheader ], [ %i.hn, %middle.block1394 ]
  br label %.lr.ph1021

.lr.ph1007.1:                                     ; preds = %.lr.ph1007.1.preheader1612, %.lr.ph1007.1
  %indvars.iv1082.1 = phi i64 [ %indvars.iv.next1083.1, %.lr.ph1007.1 ], [ %indvars.iv1082.1.ph, %.lr.ph1007.1.preheader1612 ] ; 4 uses
  %.04201005.1 = phi i32 [ %i.ii, %.lr.ph1007.1 ], [ %.04201005.1.ph, %.lr.ph1007.1.preheader1612 ] ; 3 uses
  %i.ic = uitofp nneg i32 %.04201005.1 to double
  %i.id = fneg double %i.ic
  %i.ie = call double @llvm.fmuladd.f64(double %i.id, double %i.by, double %7)
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1082.1
  store double %i.ie, ptr %i.if, align 8, !tbaa !8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1082.1
  store double %3, ptr %i.ig, align 8, !tbaa !8
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1082.1
  store double %8, ptr %i.ih, align 8, !tbaa !8
  %indvars.iv.next1083.1 = add nsw i64 %indvars.iv1082.1, 1 ; 2 uses
  %i.ii = add nuw nsw i32 %.04201005.1, 1
  %exitcond1086.1.not = icmp eq i32 %.04201005.1, %15
  br i1 %exitcond1086.1.not, label %.lr.ph1011.1.preheader, label %.lr.ph1007.1, !llvm.loop !52

.lr.ph1011.1.preheader:                           ; preds = %.lr.ph1007.1, %middle.block1416
  %indvars.iv.next1083.1.lcssa = phi i64 [ %i.lb, %middle.block1416 ], [ %indvars.iv.next1083.1, %.lr.ph1007.1 ] ; 3 uses
  %min.iters.check1421 = icmp ult i32 %15, 3
  br i1 %min.iters.check1421, label %.lr.ph1011.1.preheader1610, label %vector.ph1422

vector.ph1422:                                    ; preds = %.lr.ph1011.1.preheader
  %n.vec1423 = and i64 %i.fr, 32764               ; 4 uses
  %i.ij = add i64 %indvars.iv.next1083.1.lcssa, %n.vec1423 ; 2 uses
  %i.ik = trunc nuw nsw i64 %n.vec1423 to i32
  %broadcast.splatinsert1424 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1425 = shufflevector <2 x double> %broadcast.splatinsert1424, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1426 = insertelement <2 x double> poison, double %.04321136, i64 0
  %broadcast.splat1427 = shufflevector <2 x double> %broadcast.splatinsert1426, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1428 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1429 = shufflevector <2 x double> %broadcast.splatinsert1428, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1430 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat1431 = shufflevector <2 x double> %broadcast.splatinsert1430, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %vector.ph1422
  %index1433 = phi i64 [ 0, %vector.ph1422 ], [ %index.next1436, %vector.body1432 ] ; 2 uses
  %vec.ind1434 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1422 ], [ %vec.ind.next1437, %vector.body1432 ] ; 3 uses
  %step.add1435 = add nuw nsw <2 x i32> %vec.ind1434, splat (i32 2)
  %i.il = add i64 %indvars.iv.next1083.1.lcssa, %index1433 ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <2 x double> %broadcast.splat1425, ptr %i.im, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1425, ptr %i.in, align 8, !tbaa !8
  %i.io = uitofp nneg <2 x i32> %vec.ind1434 to <2 x double>
  %i.ip = uitofp nneg <2 x i32> %step.add1435 to <2 x double>
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %broadcast.splat1427, <2 x double> %broadcast.splat1429)
  %i.ir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %broadcast.splat1427, <2 x double> %broadcast.splat1429)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.il ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <2 x double> %i.iq, ptr %i.is, align 8, !tbaa !8
  store <2 x double> %i.ir, ptr %i.it, align 8, !tbaa !8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.il ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store <2 x double> %broadcast.splat1431, ptr %i.iu, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1431, ptr %i.iv, align 8, !tbaa !8
  %index.next1436 = add nuw i64 %index1433, 4     ; 2 uses
  %vec.ind.next1437 = add nuw nsw <2 x i32> %vec.ind1434, splat (i32 4)
  %i.iw = icmp eq i64 %index.next1436, %n.vec1423
  br i1 %i.iw, label %middle.block1438, label %vector.body1432, !llvm.loop !53

middle.block1438:                                 ; preds = %vector.body1432
  %cmp.n1439 = icmp eq i64 %n.vec1423, %i.fr
  br i1 %cmp.n1439, label %.lr.ph1016.1.preheader, label %.lr.ph1011.1.preheader1610

.lr.ph1011.1.preheader1610:                       ; preds = %.lr.ph1011.1.preheader, %middle.block1438
  %indvars.iv1087.1.ph = phi i64 [ %indvars.iv.next1083.1.lcssa, %.lr.ph1011.1.preheader ], [ %i.ij, %middle.block1438 ]
  %.04191010.1.ph = phi i32 [ 0, %.lr.ph1011.1.preheader ], [ %i.ik, %middle.block1438 ]
  br label %.lr.ph1011.1

.lr.ph1011.1:                                     ; preds = %.lr.ph1011.1.preheader1610, %.lr.ph1011.1
  %indvars.iv1087.1 = phi i64 [ %indvars.iv.next1088.1, %.lr.ph1011.1 ], [ %indvars.iv1087.1.ph, %.lr.ph1011.1.preheader1610 ] ; 4 uses
  %.04191010.1 = phi i32 [ %i.jc, %.lr.ph1011.1 ], [ %.04191010.1.ph, %.lr.ph1011.1.preheader1610 ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1087.1
  store double %4, ptr %i.ix, align 8, !tbaa !8
  %i.iy = uitofp nneg i32 %.04191010.1 to double
  %i.iz = call double @llvm.fmuladd.f64(double %i.iy, double %.04321136, double %3)
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1087.1
  store double %i.iz, ptr %i.ja, align 8, !tbaa !8
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1087.1
  store double %8, ptr %i.jb, align 8, !tbaa !8
  %indvars.iv.next1088.1 = add nsw i64 %indvars.iv1087.1, 1 ; 2 uses
  %i.jc = add nuw nsw i32 %.04191010.1, 1
  %exitcond1091.1.not = icmp eq i32 %.04191010.1, %15
  br i1 %exitcond1091.1.not, label %.lr.ph1016.1.preheader, label %.lr.ph1011.1, !llvm.loop !54

.lr.ph1016.1.preheader:                           ; preds = %.lr.ph1011.1, %middle.block1438
  %indvars.iv.next1088.1.lcssa = phi i64 [ %i.ij, %middle.block1438 ], [ %indvars.iv.next1088.1, %.lr.ph1011.1 ] ; 3 uses
  %min.iters.check1443 = icmp ult i32 %15, 3
  br i1 %min.iters.check1443, label %.lr.ph1016.1.preheader1608, label %vector.ph1444

vector.ph1444:                                    ; preds = %.lr.ph1016.1.preheader
  %n.vec1445 = and i64 %i.fr, 32764               ; 4 uses
  %i.jd = add i64 %indvars.iv.next1088.1.lcssa, %n.vec1445 ; 2 uses
  %i.je = trunc nuw nsw i64 %n.vec1445 to i32
  %broadcast.splatinsert1446 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat1447 = shufflevector <2 x double> %broadcast.splatinsert1446, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1448 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1449 = shufflevector <2 x double> %broadcast.splatinsert1448, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1450 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1451 = shufflevector <2 x double> %broadcast.splatinsert1450, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1452 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat1453 = shufflevector <2 x double> %broadcast.splatinsert1452, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1444
  %index1455 = phi i64 [ 0, %vector.ph1444 ], [ %index.next1458, %vector.body1454 ] ; 2 uses
  %vec.ind1456 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1444 ], [ %vec.ind.next1459, %vector.body1454 ] ; 3 uses
  %step.add1457 = add nuw nsw <2 x i32> %vec.ind1456, splat (i32 2)
  %i.jf = add i64 %indvars.iv.next1088.1.lcssa, %index1455 ; 3 uses
  %i.jg = uitofp nneg <2 x i32> %vec.ind1456 to <2 x double>
  %i.jh = uitofp nneg <2 x i32> %step.add1457 to <2 x double>
  %i.ji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %broadcast.splat1447, <2 x double> %broadcast.splat1449)
  %i.jj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %broadcast.splat1447, <2 x double> %broadcast.splat1449)
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.jf ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store <2 x double> %i.ji, ptr %i.jk, align 8, !tbaa !8
  store <2 x double> %i.jj, ptr %i.jl, align 8, !tbaa !8
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.jf ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store <2 x double> %broadcast.splat1451, ptr %i.jm, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1451, ptr %i.jn, align 8, !tbaa !8
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.jf ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store <2 x double> %broadcast.splat1453, ptr %i.jo, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1453, ptr %i.jp, align 8, !tbaa !8
  %index.next1458 = add nuw i64 %index1455, 4     ; 2 uses
  %vec.ind.next1459 = add nuw nsw <2 x i32> %vec.ind1456, splat (i32 4)
  %i.jq = icmp eq i64 %index.next1458, %n.vec1445
  br i1 %i.jq, label %middle.block1460, label %vector.body1454, !llvm.loop !55

middle.block1460:                                 ; preds = %vector.body1454
  %cmp.n1461 = icmp eq i64 %n.vec1445, %i.fr
  br i1 %cmp.n1461, label %.lr.ph1021.1.preheader, label %.lr.ph1016.1.preheader1608

.lr.ph1016.1.preheader1608:                       ; preds = %.lr.ph1016.1.preheader, %middle.block1460
  %indvars.iv1092.1.ph = phi i64 [ %indvars.iv.next1088.1.lcssa, %.lr.ph1016.1.preheader ], [ %i.jd, %middle.block1460 ]
  %.04181015.1.ph = phi i32 [ 0, %.lr.ph1016.1.preheader ], [ %i.je, %middle.block1460 ]
  br label %.lr.ph1016.1

.lr.ph1016.1:                                     ; preds = %.lr.ph1016.1.preheader1608, %.lr.ph1016.1
  %indvars.iv1092.1 = phi i64 [ %indvars.iv.next1093.1, %.lr.ph1016.1 ], [ %indvars.iv1092.1.ph, %.lr.ph1016.1.preheader1608 ] ; 4 uses
  %.04181015.1 = phi i32 [ %i.jw, %.lr.ph1016.1 ], [ %.04181015.1.ph, %.lr.ph1016.1.preheader1608 ] ; 3 uses
  %i.jr = uitofp nneg i32 %.04181015.1 to double
  %i.js = call double @llvm.fmuladd.f64(double %i.jr, double %i.by, double %4)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1092.1
  store double %i.js, ptr %i.jt, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1092.1
  store double %6, ptr %i.ju, align 8, !tbaa !8
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1092.1
  store double %8, ptr %i.jv, align 8, !tbaa !8
  %indvars.iv.next1093.1 = add nsw i64 %indvars.iv1092.1, 1 ; 2 uses
  %i.jw = add nuw nsw i32 %.04181015.1, 1
  %exitcond1096.1.not = icmp eq i32 %.04181015.1, %15
  br i1 %exitcond1096.1.not, label %.lr.ph1021.1.preheader, label %.lr.ph1016.1, !llvm.loop !56

.lr.ph1021.1.preheader:                           ; preds = %.lr.ph1016.1, %middle.block1460
  %indvars.iv.next1093.1.lcssa = phi i64 [ %i.jd, %middle.block1460 ], [ %indvars.iv.next1093.1, %.lr.ph1016.1 ] ; 3 uses
  %min.iters.check1465 = icmp ult i32 %15, 3
  br i1 %min.iters.check1465, label %.lr.ph1021.1.preheader1606, label %vector.ph1466

vector.ph1466:                                    ; preds = %.lr.ph1021.1.preheader
  %n.vec1467 = and i64 %i.fr, 32764               ; 4 uses
  %i.jx = add i64 %indvars.iv.next1093.1.lcssa, %n.vec1467 ; 2 uses
  %i.jy = trunc nuw nsw i64 %n.vec1467 to i32
  %broadcast.splatinsert1468 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1469 = shufflevector <2 x double> %broadcast.splatinsert1468, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1470 = insertelement <2 x double> poison, double %.04321136, i64 0
  %broadcast.splat1471 = shufflevector <2 x double> %broadcast.splatinsert1470, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1472 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1473 = shufflevector <2 x double> %broadcast.splatinsert1472, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1474 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat1475 = shufflevector <2 x double> %broadcast.splatinsert1474, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1476

vector.body1476:                                  ; preds = %vector.body1476, %vector.ph1466
  %index1477 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1480, %vector.body1476 ] ; 2 uses
  %vec.ind1478 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1466 ], [ %vec.ind.next1481, %vector.body1476 ] ; 3 uses
  %step.add1479 = add nuw nsw <2 x i32> %vec.ind1478, splat (i32 2)
  %i.jz = add i64 %indvars.iv.next1093.1.lcssa, %index1477 ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store <2 x double> %broadcast.splat1469, ptr %i.ka, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1469, ptr %i.kb, align 8, !tbaa !8
  %i.kc = uitofp nneg <2 x i32> %vec.ind1478 to <2 x double>
  %i.kd = uitofp nneg <2 x i32> %step.add1479 to <2 x double>
  %i.ke = fneg <2 x double> %i.kc
  %i.kf = fneg <2 x double> %i.kd
  %i.kg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %broadcast.splat1471, <2 x double> %broadcast.splat1473)
  %i.kh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %broadcast.splat1471, <2 x double> %broadcast.splat1473)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.jz ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <2 x double> %i.kg, ptr %i.ki, align 8, !tbaa !8
  store <2 x double> %i.kh, ptr %i.kj, align 8, !tbaa !8
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.jz ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <2 x double> %broadcast.splat1475, ptr %i.kk, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1475, ptr %i.kl, align 8, !tbaa !8
  %index.next1480 = add nuw i64 %index1477, 4     ; 2 uses
  %vec.ind.next1481 = add nuw nsw <2 x i32> %vec.ind1478, splat (i32 4)
  %i.km = icmp eq i64 %index.next1480, %n.vec1467
  br i1 %i.km, label %middle.block1482, label %vector.body1476, !llvm.loop !57

middle.block1482:                                 ; preds = %vector.body1476
  %cmp.n1483 = icmp eq i64 %n.vec1467, %i.fr
  br i1 %cmp.n1483, label %.lr.ph1030.preheader, label %.lr.ph1021.1.preheader1606

.lr.ph1021.1.preheader1606:                       ; preds = %.lr.ph1021.1.preheader, %middle.block1482
  %indvars.iv1097.1.ph = phi i64 [ %indvars.iv.next1093.1.lcssa, %.lr.ph1021.1.preheader ], [ %i.jx, %middle.block1482 ]
  %.04171020.1.ph = phi i32 [ 0, %.lr.ph1021.1.preheader ], [ %i.jy, %middle.block1482 ]
  br label %.lr.ph1021.1

.lr.ph1021.1:                                     ; preds = %.lr.ph1021.1.preheader1606, %.lr.ph1021.1
  %indvars.iv1097.1 = phi i64 [ %indvars.iv.next1098.1, %.lr.ph1021.1 ], [ %indvars.iv1097.1.ph, %.lr.ph1021.1.preheader1606 ] ; 4 uses
  %.04171020.1 = phi i32 [ %i.kt, %.lr.ph1021.1 ], [ %.04171020.1.ph, %.lr.ph1021.1.preheader1606 ] ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1097.1
  store double %7, ptr %i.kn, align 8, !tbaa !8
  %i.ko = uitofp nneg i32 %.04171020.1 to double
  %i.kp = fneg double %i.ko
  %i.kq = call double @llvm.fmuladd.f64(double %i.kp, double %.04321136, double %6)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1097.1
  store double %i.kq, ptr %i.kr, align 8, !tbaa !8
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1097.1
  store double %8, ptr %i.ks, align 8, !tbaa !8
  %indvars.iv.next1098.1 = add nsw i64 %indvars.iv1097.1, 1 ; 2 uses
  %i.kt = add nuw nsw i32 %.04171020.1, 1
  %exitcond1101.1.not = icmp eq i32 %.04171020.1, %15
  br i1 %exitcond1101.1.not, label %.lr.ph1030.preheader, label %.lr.ph1021.1, !llvm.loop !58

.lr.ph1021:                                       ; preds = %.lr.ph1021.preheader1614, %.lr.ph1021
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %.lr.ph1021 ], [ %indvars.iv1097.ph, %.lr.ph1021.preheader1614 ] ; 4 uses
  %.04171020 = phi i32 [ %i.la, %.lr.ph1021 ], [ %.04171020.ph, %.lr.ph1021.preheader1614 ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1097
  store double %7, ptr %i.ku, align 8, !tbaa !8
  %i.kv = uitofp nneg i32 %.04171020 to double
  %i.kw = fneg double %i.kv
  %i.kx = call double @llvm.fmuladd.f64(double %i.kw, double %.04321136, double %6)
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1097
  store double %i.kx, ptr %i.ky, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1097
  store double %5, ptr %i.kz, align 8, !tbaa !8
  %indvars.iv.next1098 = add nuw nsw i64 %indvars.iv1097, 1 ; 2 uses
  %i.la = add nuw nsw i32 %.04171020, 1
  %exitcond1101.not = icmp eq i32 %.04171020, %15
  br i1 %exitcond1101.not, label %.lr.ph1007.1.preheader, label %.lr.ph1021, !llvm.loop !59

.lr.ph1007.1.preheader:                           ; preds = %.lr.ph1021, %middle.block1394
  %indvars.iv.next1098.lcssa = phi i64 [ %i.hm, %middle.block1394 ], [ %indvars.iv.next1098, %.lr.ph1021 ] ; 3 uses
  %min.iters.check1399 = icmp ult i32 %15, 3
  br i1 %min.iters.check1399, label %.lr.ph1007.1.preheader1612, label %vector.ph1400

vector.ph1400:                                    ; preds = %.lr.ph1007.1.preheader
  %n.vec1401 = and i64 %i.fr, 32764               ; 4 uses
  %i.lb = add i64 %indvars.iv.next1098.lcssa, %n.vec1401 ; 2 uses
  %i.lc = trunc nuw nsw i64 %n.vec1401 to i32
  %broadcast.splatinsert1402 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat1403 = shufflevector <2 x double> %broadcast.splatinsert1402, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1404 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1405 = shufflevector <2 x double> %broadcast.splatinsert1404, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1406 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1407 = shufflevector <2 x double> %broadcast.splatinsert1406, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1408 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat1409 = shufflevector <2 x double> %broadcast.splatinsert1408, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1400
  %index1411 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1414, %vector.body1410 ] ; 2 uses
  %vec.ind1412 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1400 ], [ %vec.ind.next1415, %vector.body1410 ] ; 3 uses
  %step.add1413 = add nuw nsw <2 x i32> %vec.ind1412, splat (i32 2)
  %i.ld = add i64 %indvars.iv.next1098.lcssa, %index1411 ; 3 uses
  %i.le = uitofp nneg <2 x i32> %vec.ind1412 to <2 x double>
  %i.lf = uitofp nneg <2 x i32> %step.add1413 to <2 x double>
  %i.lg = fneg <2 x double> %i.le
  %i.lh = fneg <2 x double> %i.lf
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %broadcast.splat1403, <2 x double> %broadcast.splat1405)
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %broadcast.splat1403, <2 x double> %broadcast.splat1405)
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ld ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store <2 x double> %i.li, ptr %i.lk, align 8, !tbaa !8
  store <2 x double> %i.lj, ptr %i.ll, align 8, !tbaa !8
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ld ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <2 x double> %broadcast.splat1407, ptr %i.lm, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1407, ptr %i.ln, align 8, !tbaa !8
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ld ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <2 x double> %broadcast.splat1409, ptr %i.lo, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1409, ptr %i.lp, align 8, !tbaa !8
  %index.next1414 = add nuw i64 %index1411, 4     ; 2 uses
  %vec.ind.next1415 = add nuw nsw <2 x i32> %vec.ind1412, splat (i32 4)
  %i.lq = icmp eq i64 %index.next1414, %n.vec1401
  br i1 %i.lq, label %middle.block1416, label %vector.body1410, !llvm.loop !60

middle.block1416:                                 ; preds = %vector.body1410
  %cmp.n1417 = icmp eq i64 %n.vec1401, %i.fr
  br i1 %cmp.n1417, label %.lr.ph1011.1.preheader, label %.lr.ph1007.1.preheader1612

.lr.ph1007.1.preheader1612:                       ; preds = %.lr.ph1007.1.preheader, %middle.block1416
  %indvars.iv1082.1.ph = phi i64 [ %indvars.iv.next1098.lcssa, %.lr.ph1007.1.preheader ], [ %i.lb, %middle.block1416 ]
  %.04201005.1.ph = phi i32 [ 0, %.lr.ph1007.1.preheader ], [ %i.lc, %middle.block1416 ]
  br label %.lr.ph1007.1

.lr.ph1030:                                       ; preds = %.lr.ph1030.preheader1604, %.lr.ph1030
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %.lr.ph1030 ], [ %indvars.iv1105.ph, %.lr.ph1030.preheader1604 ] ; 4 uses
  %.04161028 = phi i32 [ %i.lw, %.lr.ph1030 ], [ %.04161028.ph, %.lr.ph1030.preheader1604 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1105
  store double %3, ptr %i.lr, align 8, !tbaa !8
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1105
  store double %4, ptr %i.ls, align 8, !tbaa !8
  %i.lt = uitofp nneg i32 %.04161028 to double
  %i.lu = call double @llvm.fmuladd.f64(double %i.lt, double %i.en, double %5)
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1105
  store double %i.lu, ptr %i.lv, align 8, !tbaa !8
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, 1 ; 2 uses
  %i.lw = add nuw i32 %.04161028, 1
  %exitcond1108.not = icmp eq i32 %.04161028, %15
  br i1 %exitcond1108.not, label %.lr.ph1035.preheader, label %.lr.ph1030, !llvm.loop !61

.lr.ph1035.preheader:                             ; preds = %.lr.ph1030, %middle.block1504
  %indvars.iv.next1106.lcssa = phi i64 [ %i.eo, %middle.block1504 ], [ %indvars.iv.next1106, %.lr.ph1030 ] ; 3 uses
  %min.iters.check1509 = icmp ult i32 %15, 3
  br i1 %min.iters.check1509, label %.lr.ph1035.preheader1602, label %vector.ph1510

vector.ph1510:                                    ; preds = %.lr.ph1035.preheader
  %n.vec1511 = and i64 %i.fr, 32764               ; 4 uses
  %i.lx = add i64 %indvars.iv.next1106.lcssa, %n.vec1511 ; 2 uses
  %i.ly = trunc nuw nsw i64 %n.vec1511 to i32
  %broadcast.splatinsert1512 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1513 = shufflevector <2 x double> %broadcast.splatinsert1512, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1514 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1515 = shufflevector <2 x double> %broadcast.splatinsert1514, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1516 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat1517 = shufflevector <2 x double> %broadcast.splatinsert1516, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1518 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1519 = shufflevector <2 x double> %broadcast.splatinsert1518, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1520

vector.body1520:                                  ; preds = %vector.body1520, %vector.ph1510
  %index1521 = phi i64 [ 0, %vector.ph1510 ], [ %index.next1524, %vector.body1520 ] ; 2 uses
  %vec.ind1522 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1510 ], [ %vec.ind.next1525, %vector.body1520 ] ; 3 uses
  %step.add1523 = add nuw <2 x i32> %vec.ind1522, splat (i32 2)
  %i.lz = add i64 %indvars.iv.next1106.lcssa, %index1521 ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store <2 x double> %broadcast.splat1513, ptr %i.ma, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1513, ptr %i.mb, align 8, !tbaa !8
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.lz ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store <2 x double> %broadcast.splat1515, ptr %i.mc, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1515, ptr %i.md, align 8, !tbaa !8
  %i.me = uitofp nneg <2 x i32> %vec.ind1522 to <2 x double>
  %i.mf = uitofp nneg <2 x i32> %step.add1523 to <2 x double>
  %i.mg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %broadcast.splat1517, <2 x double> %broadcast.splat1519)
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %broadcast.splat1517, <2 x double> %broadcast.splat1519)
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.lz ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <2 x double> %i.mg, ptr %i.mi, align 8, !tbaa !8
  store <2 x double> %i.mh, ptr %i.mj, align 8, !tbaa !8
  %index.next1524 = add nuw i64 %index1521, 4     ; 2 uses
  %vec.ind.next1525 = add nuw <2 x i32> %vec.ind1522, splat (i32 4)
  %i.mk = icmp eq i64 %index.next1524, %n.vec1511
  br i1 %i.mk, label %middle.block1526, label %vector.body1520, !llvm.loop !62

middle.block1526:                                 ; preds = %vector.body1520
  %cmp.n1527 = icmp eq i64 %n.vec1511, %i.fr
  br i1 %cmp.n1527, label %.lr.ph1040.preheader, label %.lr.ph1035.preheader1602

.lr.ph1035.preheader1602:                         ; preds = %.lr.ph1035.preheader, %middle.block1526
  %indvars.iv1109.ph = phi i64 [ %indvars.iv.next1106.lcssa, %.lr.ph1035.preheader ], [ %i.lx, %middle.block1526 ]
  %.04151034.ph = phi i32 [ 0, %.lr.ph1035.preheader ], [ %i.ly, %middle.block1526 ]
  br label %.lr.ph1035

.lr.ph1035:                                       ; preds = %.lr.ph1035.preheader1602, %.lr.ph1035
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %.lr.ph1035 ], [ %indvars.iv1109.ph, %.lr.ph1035.preheader1602 ] ; 4 uses
  %.04151034 = phi i32 [ %i.mq, %.lr.ph1035 ], [ %.04151034.ph, %.lr.ph1035.preheader1602 ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1109
  store double %3, ptr %i.ml, align 8, !tbaa !8
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1109
  store double %7, ptr %i.mm, align 8, !tbaa !8
  %i.mn = uitofp nneg i32 %.04151034 to double
  %i.mo = call double @llvm.fmuladd.f64(double %i.mn, double %i.en, double %5)
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1109
  store double %i.mo, ptr %i.mp, align 8, !tbaa !8
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, 1 ; 2 uses
  %i.mq = add nuw i32 %.04151034, 1
  %exitcond1112.not = icmp eq i32 %.04151034, %15
  br i1 %exitcond1112.not, label %.lr.ph1040.preheader, label %.lr.ph1035, !llvm.loop !63

.lr.ph1040.preheader:                             ; preds = %.lr.ph1035, %middle.block1526
  %indvars.iv.next1110.lcssa = phi i64 [ %i.lx, %middle.block1526 ], [ %indvars.iv.next1110, %.lr.ph1035 ] ; 3 uses
  %min.iters.check1531 = icmp ult i32 %15, 3
  br i1 %min.iters.check1531, label %.lr.ph1040.preheader1600, label %vector.ph1532

vector.ph1532:                                    ; preds = %.lr.ph1040.preheader
  %n.vec1533 = and i64 %i.fr, 32764               ; 4 uses
  %i.mr = add i64 %indvars.iv.next1110.lcssa, %n.vec1533 ; 2 uses
  %i.ms = trunc nuw nsw i64 %n.vec1533 to i32
  %broadcast.splatinsert1534 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1535 = shufflevector <2 x double> %broadcast.splatinsert1534, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1536 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1537 = shufflevector <2 x double> %broadcast.splatinsert1536, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1538 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat1539 = shufflevector <2 x double> %broadcast.splatinsert1538, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1540 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1541 = shufflevector <2 x double> %broadcast.splatinsert1540, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1542

vector.body1542:                                  ; preds = %vector.body1542, %vector.ph1532
  %index1543 = phi i64 [ 0, %vector.ph1532 ], [ %index.next1546, %vector.body1542 ] ; 2 uses
  %vec.ind1544 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1532 ], [ %vec.ind.next1547, %vector.body1542 ] ; 3 uses
  %step.add1545 = add nuw <2 x i32> %vec.ind1544, splat (i32 2)
  %i.mt = add i64 %indvars.iv.next1110.lcssa, %index1543 ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store <2 x double> %broadcast.splat1535, ptr %i.mu, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1535, ptr %i.mv, align 8, !tbaa !8
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.mt ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <2 x double> %broadcast.splat1537, ptr %i.mw, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1537, ptr %i.mx, align 8, !tbaa !8
  %i.my = uitofp nneg <2 x i32> %vec.ind1544 to <2 x double>
  %i.mz = uitofp nneg <2 x i32> %step.add1545 to <2 x double>
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %broadcast.splat1539, <2 x double> %broadcast.splat1541)
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %broadcast.splat1539, <2 x double> %broadcast.splat1541)
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.mt ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <2 x double> %i.na, ptr %i.nc, align 8, !tbaa !8
  store <2 x double> %i.nb, ptr %i.nd, align 8, !tbaa !8
  %index.next1546 = add nuw i64 %index1543, 4     ; 2 uses
  %vec.ind.next1547 = add nuw <2 x i32> %vec.ind1544, splat (i32 4)
  %i.ne = icmp eq i64 %index.next1546, %n.vec1533
  br i1 %i.ne, label %middle.block1548, label %vector.body1542, !llvm.loop !64

middle.block1548:                                 ; preds = %vector.body1542
  %cmp.n1549 = icmp eq i64 %n.vec1533, %i.fr
  br i1 %cmp.n1549, label %.lr.ph1045.preheader, label %.lr.ph1040.preheader1600

.lr.ph1040.preheader1600:                         ; preds = %.lr.ph1040.preheader, %middle.block1548
  %indvars.iv1113.ph = phi i64 [ %indvars.iv.next1110.lcssa, %.lr.ph1040.preheader ], [ %i.mr, %middle.block1548 ]
  %.04141039.ph = phi i32 [ 0, %.lr.ph1040.preheader ], [ %i.ms, %middle.block1548 ]
  br label %.lr.ph1040

.lr.ph1040:                                       ; preds = %.lr.ph1040.preheader1600, %.lr.ph1040
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %.lr.ph1040 ], [ %indvars.iv1113.ph, %.lr.ph1040.preheader1600 ] ; 4 uses
  %.04141039 = phi i32 [ %i.nk, %.lr.ph1040 ], [ %.04141039.ph, %.lr.ph1040.preheader1600 ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1113
  store double %6, ptr %i.nf, align 8, !tbaa !8
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1113
  store double %4, ptr %i.ng, align 8, !tbaa !8
  %i.nh = uitofp nneg i32 %.04141039 to double
  %i.ni = call double @llvm.fmuladd.f64(double %i.nh, double %i.en, double %5)
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1113
  store double %i.ni, ptr %i.nj, align 8, !tbaa !8
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, 1 ; 2 uses
  %i.nk = add nuw i32 %.04141039, 1
  %exitcond1116.not = icmp eq i32 %.04141039, %15
  br i1 %exitcond1116.not, label %.lr.ph1045.preheader, label %.lr.ph1040, !llvm.loop !65

.lr.ph1045.preheader:                             ; preds = %.lr.ph1040, %middle.block1548
  %indvars.iv.next1114.lcssa = phi i64 [ %i.mr, %middle.block1548 ], [ %indvars.iv.next1114, %.lr.ph1040 ] ; 3 uses
  %min.iters.check1553 = icmp ult i32 %15, 3
  br i1 %min.iters.check1553, label %.lr.ph1045.preheader1599, label %vector.ph1554

vector.ph1554:                                    ; preds = %.lr.ph1045.preheader
  %n.vec1555 = and i64 %i.fr, 32764               ; 4 uses
  %i.nl = add i64 %indvars.iv.next1114.lcssa, %n.vec1555
  %i.nm = trunc nuw nsw i64 %n.vec1555 to i32
  %broadcast.splatinsert1556 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1557 = shufflevector <2 x double> %broadcast.splatinsert1556, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1558 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1559 = shufflevector <2 x double> %broadcast.splatinsert1558, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1560 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat1561 = shufflevector <2 x double> %broadcast.splatinsert1560, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1562 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1563 = shufflevector <2 x double> %broadcast.splatinsert1562, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1564

vector.body1564:                                  ; preds = %vector.body1564, %vector.ph1554
  %index1565 = phi i64 [ 0, %vector.ph1554 ], [ %index.next1568, %vector.body1564 ] ; 2 uses
  %vec.ind1566 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1554 ], [ %vec.ind.next1569, %vector.body1564 ] ; 3 uses
  %step.add1567 = add nuw <2 x i32> %vec.ind1566, splat (i32 2)
  %i.nn = add i64 %indvars.iv.next1114.lcssa, %index1565 ; 3 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.nn ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store <2 x double> %broadcast.splat1557, ptr %i.no, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1557, ptr %i.np, align 8, !tbaa !8
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.nn ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store <2 x double> %broadcast.splat1559, ptr %i.nq, align 8, !tbaa !8
  store <2 x double> %broadcast.splat1559, ptr %i.nr, align 8, !tbaa !8
end_hunk_0
