Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrttf?download=true
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dtrttf_:bb.a
  %i.ant = getelementptr [8 x i8], ptr %5, i64 %indvars.iv855
  %i.anu = getelementptr i8, ptr %i.ant, i64 16
  store double %i.ans, ptr %i.anu, align 8, !tbaa !108
  %indvars.iv.next858.2 = add nuw nsw i64 %indvars.iv857, 3
  %indvars.iv867.3 = add i32 %indvars.iv867.in, 4 ; 2 uses
  %i.anv = mul nsw i64 %indvars.iv.next858.2, %i.alj
  %gep1036.3 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %i.anv
  %i.anw = load double, ptr %gep1036.3, align 8, !tbaa !108
  %i.anx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv855
  %i.any = getelementptr i8, ptr %i.anx, i64 24
  store double %i.anw, ptr %i.any, align 8, !tbaa !108
  %indvars.iv.next856.3 = add nsw i64 %indvars.iv855, 4 ; 2 uses
  %indvars.iv.next858.3 = add nuw nsw i64 %indvars.iv857, 4 ; 2 uses
  %exitcond865.not.3 = icmp eq i64 %indvars.iv.next858.3, %indvars.iv880
  br i1 %exitcond865.not.3, label %.loopexit1824, label %vec.epilog.scalar.ph1554, !llvm.loop !78

.loopexit1824:                                    ; preds = %vec.epilog.scalar.ph1554.prol.loopexit, %vec.epilog.scalar.ph1554, %vec.epilog.middle.block1564, %middle.block1546
  %indvars.iv867.lcssa = phi i32 [ %i.ane, %vec.epilog.middle.block1564 ], [ %i.amw, %middle.block1546 ], [ %indvars.iv867.lcssa1863.unr, %vec.epilog.scalar.ph1554.prol.loopexit ], [ %indvars.iv867.3, %vec.epilog.scalar.ph1554 ]
  %indvars.iv.next856.lcssa = phi i64 [ %i.amx, %vec.epilog.middle.block1564 ], [ %i.amg, %middle.block1546 ], [ %indvars.iv.next856.lcssa1862.unr, %vec.epilog.scalar.ph1554.prol.loopexit ], [ %indvars.iv.next856.3, %vec.epilog.scalar.ph1554 ]
  %i.anz = add nuw nsw i64 %indvars.iv882, %i.alk ; 2 uses
  %.not429.not583 = icmp samesign ult i64 %i.anz, %i.all
  br i1 %.not429.not583, label %iter.check1512, label %._crit_edge588

iter.check1512:                                   ; preds = %.loopexit1824
  %i.aoa = mul nsw i64 %i.anz, %i.alj
  %i.aob = sext i32 %indvars.iv867.lcssa to i64   ; 7 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %3, i64 %i.aoa ; 11 uses
  %min.iters.check1496 = icmp ult i32 %i.als, 3
  br i1 %min.iters.check1496, label %vec.epilog.scalar.ph1513.preheader, label %vector.memcheck1494

vector.memcheck1494:                              ; preds = %iter.check1512
  %i.aoc = add i64 %i.alv, %i.b
  %i.aod = add i64 %i.aln, %i.alw
  %i.aoe = shl i64 %i.aod, 3
  %i.aof = add i64 %i.aoe, %i.a
  %i.aog = sub i64 %i.aoc, %i.aof
  %i.aoh = shl nsw i64 %i.aob, 3
  %i.aoi = add i64 %i.aog, %i.aoh
  %i.aoj = add i64 %i.aoi, -1
  %diff.check1495 = icmp ult i64 %i.aoj, 127
  br i1 %diff.check1495, label %vec.epilog.scalar.ph1513.preheader, label %vector.main.loop.iter.check1497

vector.main.loop.iter.check1497:                  ; preds = %vector.memcheck1494
  %min.iters.check1498 = icmp ult i32 %i.als, 15
  br i1 %min.iters.check1498, label %vec.epilog.ph1516, label %vector.ph1499

vector.ph1499:                                    ; preds = %vector.main.loop.iter.check1497
  %i.aok = and i64 %i.alu, 12
  %n.vec1500 = and i64 %i.alu, 8589934576         ; 5 uses
  %i.aol = add nsw i64 %n.vec1500, %i.alx
  %i.aom = add nsw i64 %n.vec1500, %i.aob         ; 2 uses
  %invariant.gep2041 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.alx
  %invariant.gep2043 = getelementptr [8 x i8], ptr %5, i64 %i.aob
  br label %vector.body1501

vector.body1501:                                  ; preds = %vector.ph1499, %vector.body1501
  %index1502 = phi i64 [ 0, %vector.ph1499 ], [ %index.next1507, %vector.body1501 ] ; 3 uses
  %gep2042 = getelementptr [8 x i8], ptr %invariant.gep2041, i64 %index1502 ; 4 uses
  %i.aon = getelementptr i8, ptr %gep2042, i64 32
  %i.aoo = getelementptr i8, ptr %gep2042, i64 64
  %i.aop = getelementptr i8, ptr %gep2042, i64 96
  %wide.load1503 = load <4 x double>, ptr %gep2042, align 8, !tbaa !108
  %wide.load1504 = load <4 x double>, ptr %i.aon, align 8, !tbaa !108
  %wide.load1505 = load <4 x double>, ptr %i.aoo, align 8, !tbaa !108
  %wide.load1506 = load <4 x double>, ptr %i.aop, align 8, !tbaa !108
  %gep2044 = getelementptr [8 x i8], ptr %invariant.gep2043, i64 %index1502 ; 4 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %gep2044, i64 32
  %i.aor = getelementptr inbounds nuw i8, ptr %gep2044, i64 64
  %i.aos = getelementptr inbounds nuw i8, ptr %gep2044, i64 96
  store <4 x double> %wide.load1503, ptr %gep2044, align 8, !tbaa !108
  store <4 x double> %wide.load1504, ptr %i.aoq, align 8, !tbaa !108
  store <4 x double> %wide.load1505, ptr %i.aor, align 8, !tbaa !108
  store <4 x double> %wide.load1506, ptr %i.aos, align 8, !tbaa !108
  %index.next1507 = add nuw i64 %index1502, 16    ; 2 uses
  %i.aot = icmp eq i64 %index.next1507, %n.vec1500
  br i1 %i.aot, label %middle.block1508, label %vector.body1501, !llvm.loop !79

middle.block1508:                                 ; preds = %vector.body1501
  %cmp.n1509 = icmp eq i64 %i.alu, %n.vec1500
  br i1 %cmp.n1509, label %._crit_edge588, label %vec.epilog.iter.check1514

vec.epilog.iter.check1514:                        ; preds = %middle.block1508
  %min.epilog.iters.check1515 = icmp eq i64 %i.aok, 0
  br i1 %min.epilog.iters.check1515, label %vec.epilog.scalar.ph1513.preheader, label %vec.epilog.ph1516, !prof !112

vec.epilog.ph1516:                                ; preds = %vector.main.loop.iter.check1497, %vec.epilog.iter.check1514
  %vec.epilog.resume.val1510 = phi i64 [ %n.vec1500, %vec.epilog.iter.check1514 ], [ 0, %vector.main.loop.iter.check1497 ]
  %n.vec1517 = and i64 %i.alu, 8589934588         ; 4 uses
  %i.aou = add nsw i64 %n.vec1517, %i.alx
  %i.aov = add nsw i64 %n.vec1517, %i.aob         ; 2 uses
  %invariant.gep2045 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.alx
  %invariant.gep2047 = getelementptr [8 x i8], ptr %5, i64 %i.aob
  br label %vec.epilog.vector.body1518

vec.epilog.vector.body1518:                       ; preds = %vec.epilog.vector.body1518, %vec.epilog.ph1516
  %index1519 = phi i64 [ %vec.epilog.resume.val1510, %vec.epilog.ph1516 ], [ %index.next1521, %vec.epilog.vector.body1518 ] ; 3 uses
  %gep2046 = getelementptr [8 x i8], ptr %invariant.gep2045, i64 %index1519
  %wide.load1520 = load <4 x double>, ptr %gep2046, align 8, !tbaa !108
  %gep2048 = getelementptr [8 x i8], ptr %invariant.gep2047, i64 %index1519
  store <4 x double> %wide.load1520, ptr %gep2048, align 8, !tbaa !108
  %index.next1521 = add nuw i64 %index1519, 4     ; 2 uses
  %i.aow = icmp eq i64 %index.next1521, %n.vec1517
  br i1 %i.aow, label %vec.epilog.middle.block1522, label %vec.epilog.vector.body1518, !llvm.loop !80

vec.epilog.middle.block1522:                      ; preds = %vec.epilog.vector.body1518
  %cmp.n1523 = icmp eq i64 %i.alu, %n.vec1517
  br i1 %cmp.n1523, label %._crit_edge588, label %vec.epilog.scalar.ph1513.preheader

vec.epilog.scalar.ph1513.preheader:               ; preds = %iter.check1512, %vector.memcheck1494, %vec.epilog.iter.check1514, %vec.epilog.middle.block1522
  %indvars.iv873.ph = phi i64 [ %i.alx, %iter.check1512 ], [ %i.alx, %vector.memcheck1494 ], [ %i.aol, %vec.epilog.iter.check1514 ], [ %i.aou, %vec.epilog.middle.block1522 ] ; 3 uses
  %indvars.iv869.ph = phi i64 [ %i.aob, %iter.check1512 ], [ %i.aob, %vector.memcheck1494 ], [ %i.aom, %vec.epilog.iter.check1514 ], [ %i.aov, %vec.epilog.middle.block1522 ] ; 2 uses
  %i.aox = trunc i64 %indvars.iv873.ph to i32     ; 2 uses
  %i.aoy = sub i32 %i.i, %i.aox
  %xtraiter1933 = and i32 %i.aoy, 7               ; 2 uses
  %lcmp.mod1934.not = icmp eq i32 %xtraiter1933, 0
  br i1 %lcmp.mod1934.not, label %vec.epilog.scalar.ph1513.prol.loopexit, label %vec.epilog.scalar.ph1513.prol

vec.epilog.scalar.ph1513.prol:                    ; preds = %vec.epilog.scalar.ph1513.preheader, %vec.epilog.scalar.ph1513.prol
  %indvars.iv873.prol = phi i64 [ %indvars.iv.next874.prol, %vec.epilog.scalar.ph1513.prol ], [ %indvars.iv873.ph, %vec.epilog.scalar.ph1513.preheader ] ; 2 uses
  %indvars.iv869.prol = phi i64 [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1513.prol ], [ %indvars.iv869.ph, %vec.epilog.scalar.ph1513.preheader ] ; 2 uses
  %prol.iter1935 = phi i32 [ %prol.iter1935.next, %vec.epilog.scalar.ph1513.prol ], [ 0, %vec.epilog.scalar.ph1513.preheader ]
  %gep1038.prol = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873.prol
  %i.aoz = load double, ptr %gep1038.prol, align 8, !tbaa !108
  %i.apa = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv869.prol
  store double %i.aoz, ptr %i.apa, align 8, !tbaa !108
  %indvars.iv.next870.prol = add nsw i64 %indvars.iv869.prol, 1 ; 3 uses
  %indvars.iv.next874.prol = add nsw i64 %indvars.iv873.prol, 1 ; 2 uses
  %prol.iter1935.next = add i32 %prol.iter1935, 1 ; 2 uses
  %prol.iter1935.cmp.not = icmp eq i32 %prol.iter1935.next, %xtraiter1933
  br i1 %prol.iter1935.cmp.not, label %vec.epilog.scalar.ph1513.prol.loopexit, label %vec.epilog.scalar.ph1513.prol, !llvm.loop !81

vec.epilog.scalar.ph1513.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1513.prol, %vec.epilog.scalar.ph1513.preheader
  %indvars.iv.next870.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1513.preheader ], [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1513.prol ]
  %indvars.iv873.unr = phi i64 [ %indvars.iv873.ph, %vec.epilog.scalar.ph1513.preheader ], [ %indvars.iv.next874.prol, %vec.epilog.scalar.ph1513.prol ]
  %indvars.iv869.unr = phi i64 [ %indvars.iv869.ph, %vec.epilog.scalar.ph1513.preheader ], [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1513.prol ]
  %i.apb = sub i32 %i.aox, %i.i
  %i.apc = icmp ugt i32 %i.apb, -8
  br i1 %i.apc, label %._crit_edge588, label %vec.epilog.scalar.ph1513

vec.epilog.scalar.ph1513:                         ; preds = %vec.epilog.scalar.ph1513.prol.loopexit, %vec.epilog.scalar.ph1513
  %indvars.iv873 = phi i64 [ %indvars.iv.next874.7, %vec.epilog.scalar.ph1513 ], [ %indvars.iv873.unr, %vec.epilog.scalar.ph1513.prol.loopexit ] ; 9 uses
  %indvars.iv869 = phi i64 [ %indvars.iv.next870.7, %vec.epilog.scalar.ph1513 ], [ %indvars.iv869.unr, %vec.epilog.scalar.ph1513.prol.loopexit ] ; 9 uses
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %i.apd = load double, ptr %gep1038, align 8, !tbaa !108
  %i.ape = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv869
  store double %i.apd, ptr %i.ape, align 8, !tbaa !108
  %i.apf = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.1 = getelementptr i8, ptr %i.apf, i64 8
  %i.apg = load double, ptr %gep1038.1, align 8, !tbaa !108
  %i.aph = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.api = getelementptr i8, ptr %i.aph, i64 8
  store double %i.apg, ptr %i.api, align 8, !tbaa !108
  %i.apj = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.2 = getelementptr i8, ptr %i.apj, i64 16
  %i.apk = load double, ptr %gep1038.2, align 8, !tbaa !108
  %i.apl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apm = getelementptr i8, ptr %i.apl, i64 16
  store double %i.apk, ptr %i.apm, align 8, !tbaa !108
  %i.apn = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.3 = getelementptr i8, ptr %i.apn, i64 24
  %i.apo = load double, ptr %gep1038.3, align 8, !tbaa !108
  %i.app = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apq = getelementptr i8, ptr %i.app, i64 24
  store double %i.apo, ptr %i.apq, align 8, !tbaa !108
  %i.apr = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.4 = getelementptr i8, ptr %i.apr, i64 32
  %i.aps = load double, ptr %gep1038.4, align 8, !tbaa !108
  %i.apt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apu = getelementptr i8, ptr %i.apt, i64 32
  store double %i.aps, ptr %i.apu, align 8, !tbaa !108
  %i.apv = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.5 = getelementptr i8, ptr %i.apv, i64 40
  %i.apw = load double, ptr %gep1038.5, align 8, !tbaa !108
  %i.apx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apy = getelementptr i8, ptr %i.apx, i64 40
  store double %i.apw, ptr %i.apy, align 8, !tbaa !108
  %i.apz = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.6 = getelementptr i8, ptr %i.apz, i64 48
  %i.aqa = load double, ptr %gep1038.6, align 8, !tbaa !108
  %i.aqb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.aqc = getelementptr i8, ptr %i.aqb, i64 48
  store double %i.aqa, ptr %i.aqc, align 8, !tbaa !108
  %i.aqd = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.7 = getelementptr i8, ptr %i.aqd, i64 56
  %i.aqe = load double, ptr %gep1038.7, align 8, !tbaa !108
  %i.aqf = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 56
  store double %i.aqe, ptr %i.aqg, align 8, !tbaa !108
  %indvars.iv.next870.7 = add nsw i64 %indvars.iv869, 8 ; 2 uses
  %indvars.iv.next874.7 = add nsw i64 %indvars.iv873, 8 ; 2 uses
  %lftr.wideiv878.7 = trunc i64 %indvars.iv.next874.7 to i32
  %exitcond879.not.7 = icmp eq i32 %i.i, %lftr.wideiv878.7
  br i1 %exitcond879.not.7, label %._crit_edge588, label %vec.epilog.scalar.ph1513, !llvm.loop !82

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1513.prol.loopexit, %vec.epilog.scalar.ph1513, %middle.block1508, %vec.epilog.middle.block1522, %.loopexit1824
  %.25.lcssa.in = phi i64 [ %indvars.iv.next856.lcssa, %.loopexit1824 ], [ %i.aov, %vec.epilog.middle.block1522 ], [ %i.aom, %middle.block1508 ], [ %indvars.iv.next870.lcssa.unr, %vec.epilog.scalar.ph1513.prol.loopexit ], [ %indvars.iv.next870.7, %vec.epilog.scalar.ph1513 ] ; 2 uses
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1 ; 2 uses
  %indvars.iv.next881 = add nuw nsw i64 %indvars.iv880, 1
  %indvars.iv.next872 = add nuw i32 %indvars.iv871, 1
  %exitcond888.not = icmp eq i64 %indvars.iv.next883, %wide.trip.count887
  br i1 %exitcond888.not, label %.preheader471.preheader, label %iter.check1553, !llvm.loop !83

.preheader471.preheader:                          ; preds = %._crit_edge588, %._crit_edge579
  %.23.lcssa = phi i64 [ %indvars.iv.next851.lcssa, %._crit_edge579 ], [ %.25.lcssa.in, %._crit_edge588 ]
  %i.aqh = sext i32 %i.d to i64                   ; 9 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %i.aqi = lshr exact i32 %i.i, 1                 ; 2 uses
  %i.aqj = zext nneg i32 %i.aqi to i64
  %i.aqk = add nsw i64 %i.aqj, -1
  %smax900 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.v)
  %i.aql = add nuw i32 %smax900, %i.aqi
  %i.aqm = sub i32 %i.aql, %i.v
  %wide.trip.count901 = zext i32 %i.aqm to i64
  %sext993 = shl i64 %.23.lcssa, 32
  %7 = ashr exact i64 %sext993, 32
  %wide.trip.count896 = zext nneg i32 %umax to i64 ; 8 uses
  %i.aqn = add i64 %i.b, 8
  %min.iters.check1575 = icmp ugt i32 %i.i, 7
  %ident.check1570.not = icmp eq i32 %i.d, 1
  %or.cond1837 = select i1 %min.iters.check1575, i1 %ident.check1570.not, i1 false
  %min.iters.check1577 = icmp ult i32 %i.i, 32
  %i.aqo = and i64 %wide.trip.count896, 12
  %n.vec1579 = and i64 %wide.trip.count896, 1073741808 ; 5 uses
  %cmp.n1588 = icmp eq i64 %n.vec1579, %wide.trip.count896
  %min.epilog.iters.check1593 = icmp eq i64 %i.aqo, 0
  %n.vec1595 = and i64 %wide.trip.count896, 1073741820 ; 4 uses
  %cmp.n1601 = icmp eq i64 %n.vec1595, %wide.trip.count896
  br label %iter.check1590

iter.check1590:                                   ; preds = %.preheader471.preheader, %._crit_edge599
  %indvar1572 = phi i64 [ 0, %.preheader471.preheader ], [ %indvar.next1573, %._crit_edge599 ] ; 2 uses
  %indvars.iv898 = phi i64 [ %i.aqk, %.preheader471.preheader ], [ %indvars.iv.next899, %._crit_edge599 ] ; 2 uses
  %.26603 = phi i64 [ %7, %.preheader471.preheader ], [ %indvars.iv.next890.lcssa, %._crit_edge599 ] ; 7 uses
  %invariant.gep1039 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv898 ; 11 uses
  br i1 %or.cond1837, label %vector.memcheck1571, label %vec.epilog.scalar.ph1591.preheader

vector.memcheck1571:                              ; preds = %iter.check1590
  %i.aqp = add i64 %indvar1572, %i.akk
  %i.aqq = shl i64 %i.aqp, 3
  %i.aqr = add i64 %i.aqq, %i.a
  %i.aqs = sub i64 %i.aqn, %i.aqr
  %i.aqt = shl i64 %.26603, 3
  %i.aqu = add i64 %i.aqs, %i.aqt
  %i.aqv = add i64 %i.aqu, -1
  %diff.check1574 = icmp ult i64 %i.aqv, 127
  br i1 %diff.check1574, label %vec.epilog.scalar.ph1591.preheader, label %vector.main.loop.iter.check1576

vector.main.loop.iter.check1576:                  ; preds = %vector.memcheck1571
  br i1 %min.iters.check1577, label %vec.epilog.ph1594, label %vector.ph1578

vector.ph1578:                                    ; preds = %vector.main.loop.iter.check1576
  %i.aqw = add i64 %.26603, %n.vec1579            ; 2 uses
  %i.aqx = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vector.body1580

vector.body1580:                                  ; preds = %vector.ph1578, %vector.body1580
  %index1581 = phi i64 [ 0, %vector.ph1578 ], [ %index.next1586, %vector.body1580 ] ; 3 uses
  %i.aqy = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1581 ; 4 uses
  %i.aqz = getelementptr i8, ptr %i.aqy, i64 32
  %i.ara = getelementptr i8, ptr %i.aqy, i64 64
  %i.arb = getelementptr i8, ptr %i.aqy, i64 96
  %wide.load1582 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !108
  %wide.load1583 = load <4 x double>, ptr %i.aqz, align 8, !tbaa !108
  %wide.load1584 = load <4 x double>, ptr %i.ara, align 8, !tbaa !108
  %wide.load1585 = load <4 x double>, ptr %i.arb, align 8, !tbaa !108
  %i.arc = getelementptr [8 x i8], ptr %i.aqx, i64 %index1581 ; 4 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 32
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 64
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arc, i64 96
  store <4 x double> %wide.load1582, ptr %i.arc, align 8, !tbaa !108
  store <4 x double> %wide.load1583, ptr %i.ard, align 8, !tbaa !108
  store <4 x double> %wide.load1584, ptr %i.are, align 8, !tbaa !108
  store <4 x double> %wide.load1585, ptr %i.arf, align 8, !tbaa !108
  %index.next1586 = add nuw i64 %index1581, 16    ; 2 uses
  %i.arg = icmp eq i64 %index.next1586, %n.vec1579
  br i1 %i.arg, label %middle.block1587, label %vector.body1580, !llvm.loop !84

middle.block1587:                                 ; preds = %vector.body1580
  br i1 %cmp.n1588, label %._crit_edge599, label %vec.epilog.iter.check1592

vec.epilog.iter.check1592:                        ; preds = %middle.block1587
  br i1 %min.epilog.iters.check1593, label %vec.epilog.scalar.ph1591.preheader, label %vec.epilog.ph1594, !prof !112

vec.epilog.ph1594:                                ; preds = %vector.main.loop.iter.check1576, %vec.epilog.iter.check1592
  %vec.epilog.resume.val1589 = phi i64 [ %n.vec1579, %vec.epilog.iter.check1592 ], [ 0, %vector.main.loop.iter.check1576 ]
  %i.arh = add i64 %.26603, %n.vec1595            ; 2 uses
  %i.ari = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vec.epilog.vector.body1596

vec.epilog.vector.body1596:                       ; preds = %vec.epilog.vector.body1596, %vec.epilog.ph1594
  %index1597 = phi i64 [ %vec.epilog.resume.val1589, %vec.epilog.ph1594 ], [ %index.next1599, %vec.epilog.vector.body1596 ] ; 3 uses
  %i.arj = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1597
  %wide.load1598 = load <4 x double>, ptr %i.arj, align 8, !tbaa !108
  %i.ark = getelementptr [8 x i8], ptr %i.ari, i64 %index1597
  store <4 x double> %wide.load1598, ptr %i.ark, align 8, !tbaa !108
  %index.next1599 = add nuw i64 %index1597, 4     ; 2 uses
  %i.arl = icmp eq i64 %index.next1599, %n.vec1595
  br i1 %i.arl, label %vec.epilog.middle.block1600, label %vec.epilog.vector.body1596, !llvm.loop !85

vec.epilog.middle.block1600:                      ; preds = %vec.epilog.vector.body1596
  br i1 %cmp.n1601, label %._crit_edge599, label %vec.epilog.scalar.ph1591.preheader

vec.epilog.scalar.ph1591.preheader:               ; preds = %iter.check1590, %vector.memcheck1571, %vec.epilog.iter.check1592, %vec.epilog.middle.block1600
  %indvars.iv891.ph = phi i64 [ 0, %iter.check1590 ], [ 0, %vector.memcheck1571 ], [ %n.vec1579, %vec.epilog.iter.check1592 ], [ %n.vec1595, %vec.epilog.middle.block1600 ] ; 4 uses
  %indvars.iv889.ph = phi i64 [ %.26603, %iter.check1590 ], [ %.26603, %vector.memcheck1571 ], [ %i.aqw, %vec.epilog.iter.check1592 ], [ %i.arh, %vec.epilog.middle.block1600 ] ; 2 uses
  %i.arm = sub nsw i64 %wide.trip.count896, %indvars.iv891.ph
  %xtraiter1936 = and i64 %i.arm, 7               ; 2 uses
  %lcmp.mod1937.not = icmp eq i64 %xtraiter1936, 0
  br i1 %lcmp.mod1937.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol

vec.epilog.scalar.ph1591.prol:                    ; preds = %vec.epilog.scalar.ph1591.preheader, %vec.epilog.scalar.ph1591.prol
  %indvars.iv891.prol = phi i64 [ %indvars.iv.next892.prol, %vec.epilog.scalar.ph1591.prol ], [ %indvars.iv891.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %indvars.iv889.prol = phi i64 [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1591.prol ], [ %indvars.iv889.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %prol.iter1938 = phi i64 [ %prol.iter1938.next, %vec.epilog.scalar.ph1591.prol ], [ 0, %vec.epilog.scalar.ph1591.preheader ]
  %i.arn = mul nsw i64 %indvars.iv891.prol, %i.aqh
  %gep1040.prol = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.arn
  %i.aro = load double, ptr %gep1040.prol, align 8, !tbaa !108
  %i.arp = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv889.prol
  store double %i.aro, ptr %i.arp, align 8, !tbaa !108
  %indvars.iv.next890.prol = add nsw i64 %indvars.iv889.prol, 1 ; 3 uses
  %indvars.iv.next892.prol = add nuw nsw i64 %indvars.iv891.prol, 1 ; 2 uses
  %prol.iter1938.next = add i64 %prol.iter1938, 1 ; 2 uses
  %prol.iter1938.cmp.not = icmp eq i64 %prol.iter1938.next, %xtraiter1936
  br i1 %prol.iter1938.cmp.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol, !llvm.loop !86

vec.epilog.scalar.ph1591.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1591.prol, %vec.epilog.scalar.ph1591.preheader
  %indvars.iv.next890.lcssa1856.unr = phi i64 [ poison, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1591.prol ]
  %indvars.iv891.unr = phi i64 [ %indvars.iv891.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next892.prol, %vec.epilog.scalar.ph1591.prol ]
  %indvars.iv889.unr = phi i64 [ %indvars.iv889.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1591.prol ]
  %i.arq = sub nsw i64 %indvars.iv891.ph, %wide.trip.count896
  %i.arr = icmp ugt i64 %i.arq, -8
  br i1 %i.arr, label %._crit_edge599, label %vec.epilog.scalar.ph1591

vec.epilog.scalar.ph1591:                         ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %vec.epilog.scalar.ph1591
  %indvars.iv891 = phi i64 [ %indvars.iv.next892.7, %vec.epilog.scalar.ph1591 ], [ %indvars.iv891.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 9 uses
  %indvars.iv889 = phi i64 [ %indvars.iv.next890.7, %vec.epilog.scalar.ph1591 ], [ %indvars.iv889.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 9 uses
  %i.ars = mul nsw i64 %indvars.iv891, %i.aqh
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.ars
  %i.art = load double, ptr %gep1040, align 8, !tbaa !108
  %i.aru = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv889
  store double %i.art, ptr %i.aru, align 8, !tbaa !108
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1
  %i.arv = mul nsw i64 %indvars.iv.next892, %i.aqh
  %gep1040.1 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.arv
  %i.arw = load double, ptr %gep1040.1, align 8, !tbaa !108
  %i.arx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.ary = getelementptr i8, ptr %i.arx, i64 8
  store double %i.arw, ptr %i.ary, align 8, !tbaa !108
  %indvars.iv.next892.1 = add nuw nsw i64 %indvars.iv891, 2
  %i.arz = mul nsw i64 %indvars.iv.next892.1, %i.aqh
  %gep1040.2 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.arz
  %i.asa = load double, ptr %gep1040.2, align 8, !tbaa !108
  %i.asb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.asc = getelementptr i8, ptr %i.asb, i64 16
  store double %i.asa, ptr %i.asc, align 8, !tbaa !108
  %indvars.iv.next892.2 = add nuw nsw i64 %indvars.iv891, 3
  %i.asd = mul nsw i64 %indvars.iv.next892.2, %i.aqh
  %gep1040.3 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asd
  %i.ase = load double, ptr %gep1040.3, align 8, !tbaa !108
  %i.asf = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.asg = getelementptr i8, ptr %i.asf, i64 24
  store double %i.ase, ptr %i.asg, align 8, !tbaa !108
  %indvars.iv.next892.3 = add nuw nsw i64 %indvars.iv891, 4
  %i.ash = mul nsw i64 %indvars.iv.next892.3, %i.aqh
  %gep1040.4 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.ash
  %i.asi = load double, ptr %gep1040.4, align 8, !tbaa !108
  %i.asj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.ask = getelementptr i8, ptr %i.asj, i64 32
  store double %i.asi, ptr %i.ask, align 8, !tbaa !108
  %indvars.iv.next892.4 = add nuw nsw i64 %indvars.iv891, 5
  %i.asl = mul nsw i64 %indvars.iv.next892.4, %i.aqh
  %gep1040.5 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asl
  %i.asm = load double, ptr %gep1040.5, align 8, !tbaa !108
  %i.asn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.aso = getelementptr i8, ptr %i.asn, i64 40
  store double %i.asm, ptr %i.aso, align 8, !tbaa !108
  %indvars.iv.next892.5 = add nuw nsw i64 %indvars.iv891, 6
  %i.asp = mul nsw i64 %indvars.iv.next892.5, %i.aqh
  %gep1040.6 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asp
  %i.asq = load double, ptr %gep1040.6, align 8, !tbaa !108
  %i.asr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.ass = getelementptr i8, ptr %i.asr, i64 48
  store double %i.asq, ptr %i.ass, align 8, !tbaa !108
  %indvars.iv.next892.6 = add nuw nsw i64 %indvars.iv891, 7
  %i.ast = mul nsw i64 %indvars.iv.next892.6, %i.aqh
  %gep1040.7 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.ast
  %i.asu = load double, ptr %gep1040.7, align 8, !tbaa !108
  %i.asv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.asw = getelementptr i8, ptr %i.asv, i64 56
  store double %i.asu, ptr %i.asw, align 8, !tbaa !108
  %indvars.iv.next890.7 = add nsw i64 %indvars.iv889, 8 ; 2 uses
  %indvars.iv.next892.7 = add nuw nsw i64 %indvars.iv891, 8 ; 2 uses
  %exitcond897.not.7 = icmp eq i64 %indvars.iv.next892.7, %wide.trip.count896
  br i1 %exitcond897.not.7, label %._crit_edge599, label %vec.epilog.scalar.ph1591, !llvm.loop !87

._crit_edge599:                                   ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %vec.epilog.scalar.ph1591, %vec.epilog.middle.block1600, %middle.block1587
  %indvars.iv.next890.lcssa = phi i64 [ %i.arh, %vec.epilog.middle.block1600 ], [ %i.aqw, %middle.block1587 ], [ %indvars.iv.next890.lcssa1856.unr, %vec.epilog.scalar.ph1591.prol.loopexit ], [ %indvars.iv.next890.7, %vec.epilog.scalar.ph1591 ]
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next899, %wide.trip.count901
  %indvar.next1573 = add i64 %indvar1572, 1
  br i1 %exitcond902.not, label %.loopexit, label %iter.check1590, !llvm.loop !88

.preheader468.us.preheader:                       ; preds = %bb.p
  %i.asx = lshr exact i32 %i.i, 1
  %i.asy = zext nneg i32 %i.asx to i64            ; 9 uses
  %i.asz = sext i32 %i.d to i64                   ; 2 uses
  %i.ata = zext nneg i32 %i.i to i64              ; 2 uses
  %i.atb = add nuw nsw i32 %i.v, 1
  %wide.trip.count937 = zext nneg i32 %i.atb to i64 ; 2 uses
  %umax1685 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count937, i64 %i.ata)
  %i.atc = sub nsw i64 %umax1685, %i.asy          ; 7 uses
  %min.iters.check1686 = icmp ugt i64 %i.atc, 3
  %ident.check1682.not = icmp eq i32 %i.d, 1
  %or.cond1838 = select i1 %min.iters.check1686, i1 %ident.check1682.not, i1 false
  %min.iters.check1688 = icmp ult i64 %i.atc, 16
  %i.atd = and i64 %i.atc, 12
  %n.vec1690 = and i64 %i.atc, -16                ; 5 uses
  %i.ate = add nsw i64 %n.vec1690, %i.asy
  %cmp.n1699 = icmp eq i64 %i.atc, %n.vec1690
  %min.epilog.iters.check1705 = icmp eq i64 %i.atd, 0
  %n.vec1707 = and i64 %i.atc, -4                 ; 4 uses
  %i.atf = add nsw i64 %n.vec1707, %i.asy
  %cmp.n1713 = icmp eq i64 %i.atc, %n.vec1707
  br label %iter.check1702

iter.check1702:                                   ; preds = %.preheader468.us.preheader, %._crit_edge622.us
  %indvars.iv934 = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next935, %._crit_edge622.us ] ; 3 uses
  %.28625.us = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next930.lcssa, %._crit_edge622.us ] ; 7 uses
  %invariant.gep1045 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv934 ; 3 uses
  br i1 %or.cond1838, label %vector.memcheck1683, label %vec.epilog.scalar.ph1703.preheader

vector.memcheck1683:                              ; preds = %iter.check1702
  %i.atg = add nuw i64 %indvars.iv934, %i.asy
end_hunk_0
