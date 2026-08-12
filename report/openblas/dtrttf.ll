loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dtrttf_:bb.a
  %indvars.iv797.lcssa = phi i32 [ %i.wd, %vec.epilog.middle.block1368 ], [ %i.vv, %middle.block1350 ], [ %indvars.iv797.lcssa1868.unr, %vec.epilog.scalar.ph1358.prol.loopexit ], [ %indvars.iv797.7, %vec.epilog.scalar.ph1358 ]
  %indvars.iv.next787.lcssa = phi i64 [ %i.vw, %vec.epilog.middle.block1368 ], [ %i.vf, %middle.block1350 ], [ %indvars.iv.next787.lcssa1867.unr, %vec.epilog.scalar.ph1358.prol.loopexit ], [ %indvars.iv.next787.7, %vec.epilog.scalar.ph1358 ]
  %i.xn = add nsw i64 %indvars.iv812, %i.uk       ; 2 uses
  %.not439.not553 = icmp slt i64 %i.xn, %i.ul
  br i1 %.not439.not553, label %iter.check1318, label %._crit_edge558

iter.check1318:                                   ; preds = %.loopexit1813
  %i.xo = sext i32 %indvars.iv797.lcssa to i64    ; 7 uses
  %invariant.gep1015 = getelementptr [8 x i8], ptr %3, i64 %i.xn ; 11 uses
  %min.iters.check1302 = icmp ugt i32 %i.ur, 2
  %or.cond1821 = select i1 %min.iters.check1302, i1 %ident.check1299.not, i1 false
  br i1 %or.cond1821, label %vector.memcheck1300, label %.lr.ph557.preheader

vector.memcheck1300:                              ; preds = %iter.check1318
  %i.xp = add i64 %i.uu, %i.uv
  %i.xq = shl i64 %i.xp, 3
  %i.xr = sub i64 %i.um, %i.xq
  %i.xs = shl nsw i64 %i.xo, 3
  %i.xt = add i64 %i.xr, %i.xs
  %i.xu = add i64 %i.xt, -1
  %diff.check1301 = icmp ult i64 %i.xu, 127
  br i1 %diff.check1301, label %.lr.ph557.preheader, label %vector.main.loop.iter.check1303

vector.main.loop.iter.check1303:                  ; preds = %vector.memcheck1300
  %min.iters.check1304 = icmp ult i32 %i.ur, 15
  br i1 %min.iters.check1304, label %vec.epilog.ph1322, label %vector.ph1305

vector.ph1305:                                    ; preds = %vector.main.loop.iter.check1303
  %i.xv = and i64 %i.ut, 12
  %n.vec1306 = and i64 %i.ut, 8589934576          ; 5 uses
  %i.xw = add nsw i64 %n.vec1306, %i.uw
  %i.xx = add nsw i64 %n.vec1306, %i.xo           ; 2 uses
  %invariant.gep2012 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.uw
  %invariant.gep2014 = getelementptr [8 x i8], ptr %5, i64 %i.xo
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1305
  %index1308 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1313, %vector.body1307 ] ; 3 uses
  %gep2013 = getelementptr [8 x i8], ptr %invariant.gep2012, i64 %index1308 ; 4 uses
  %i.xy = getelementptr i8, ptr %gep2013, i64 32
  %i.xz = getelementptr i8, ptr %gep2013, i64 64
  %i.ya = getelementptr i8, ptr %gep2013, i64 96
  %wide.load1309 = load <4 x double>, ptr %gep2013, align 8, !tbaa !9
  %wide.load1310 = load <4 x double>, ptr %i.xy, align 8, !tbaa !9
  %wide.load1311 = load <4 x double>, ptr %i.xz, align 8, !tbaa !9
  %wide.load1312 = load <4 x double>, ptr %i.ya, align 8, !tbaa !9
  %gep2015 = getelementptr [8 x i8], ptr %invariant.gep2014, i64 %index1308 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %gep2015, i64 32
  %i.yc = getelementptr inbounds nuw i8, ptr %gep2015, i64 64
  %i.yd = getelementptr inbounds nuw i8, ptr %gep2015, i64 96
  store <4 x double> %wide.load1309, ptr %gep2015, align 8, !tbaa !9
  store <4 x double> %wide.load1310, ptr %i.yb, align 8, !tbaa !9
  store <4 x double> %wide.load1311, ptr %i.yc, align 8, !tbaa !9
  store <4 x double> %wide.load1312, ptr %i.yd, align 8, !tbaa !9
  %index.next1313 = add nuw i64 %index1308, 16    ; 2 uses
  %i.ye = icmp eq i64 %index.next1313, %n.vec1306
  br i1 %i.ye, label %middle.block1314, label %vector.body1307, !llvm.loop !57

middle.block1314:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %i.ut, %n.vec1306
  br i1 %cmp.n1315, label %._crit_edge558, label %vec.epilog.iter.check1320

vec.epilog.iter.check1320:                        ; preds = %middle.block1314
  %min.epilog.iters.check1321 = icmp eq i64 %i.xv, 0
  br i1 %min.epilog.iters.check1321, label %.lr.ph557.preheader, label %vec.epilog.ph1322, !prof !15

vec.epilog.ph1322:                                ; preds = %vector.main.loop.iter.check1303, %vec.epilog.iter.check1320
  %vec.epilog.resume.val1316 = phi i64 [ %n.vec1306, %vec.epilog.iter.check1320 ], [ 0, %vector.main.loop.iter.check1303 ]
  %n.vec1323 = and i64 %i.ut, 8589934588          ; 4 uses
  %i.yf = add nsw i64 %n.vec1323, %i.uw
  %i.yg = add nsw i64 %n.vec1323, %i.xo           ; 2 uses
  %invariant.gep2016 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.uw
  %invariant.gep2018 = getelementptr [8 x i8], ptr %5, i64 %i.xo
  br label %vec.epilog.vector.body1324

vec.epilog.vector.body1324:                       ; preds = %vec.epilog.vector.body1324, %vec.epilog.ph1322
  %index1325 = phi i64 [ %vec.epilog.resume.val1316, %vec.epilog.ph1322 ], [ %index.next1327, %vec.epilog.vector.body1324 ] ; 3 uses
  %gep2017 = getelementptr [8 x i8], ptr %invariant.gep2016, i64 %index1325
  %wide.load1326 = load <4 x double>, ptr %gep2017, align 8, !tbaa !9
  %gep2019 = getelementptr [8 x i8], ptr %invariant.gep2018, i64 %index1325
  store <4 x double> %wide.load1326, ptr %gep2019, align 8, !tbaa !9
  %index.next1327 = add nuw i64 %index1325, 4     ; 2 uses
  %i.yh = icmp eq i64 %index.next1327, %n.vec1323
  br i1 %i.yh, label %vec.epilog.middle.block1328, label %vec.epilog.vector.body1324, !llvm.loop !58

vec.epilog.middle.block1328:                      ; preds = %vec.epilog.vector.body1324
  %cmp.n1329 = icmp eq i64 %i.ut, %n.vec1323
  br i1 %cmp.n1329, label %._crit_edge558, label %.lr.ph557.preheader

.lr.ph557.preheader:                              ; preds = %vector.memcheck1300, %iter.check1318, %vec.epilog.iter.check1320, %vec.epilog.middle.block1328
  %indvars.iv803.ph = phi i64 [ %i.uw, %iter.check1318 ], [ %i.uw, %vector.memcheck1300 ], [ %i.xw, %vec.epilog.iter.check1320 ], [ %i.yf, %vec.epilog.middle.block1328 ] ; 3 uses
  %indvars.iv799.ph = phi i64 [ %i.xo, %iter.check1318 ], [ %i.xo, %vector.memcheck1300 ], [ %i.xx, %vec.epilog.iter.check1320 ], [ %i.yg, %vec.epilog.middle.block1328 ] ; 2 uses
  %i.yi = trunc i64 %indvars.iv803.ph to i32      ; 2 uses
  %i.yj = sub i32 %i.i, %i.yi
  %xtraiter1909 = and i32 %i.yj, 7                ; 2 uses
  %lcmp.mod1910.not = icmp eq i32 %xtraiter1909, 0
  br i1 %lcmp.mod1910.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol

.lr.ph557.prol:                                   ; preds = %.lr.ph557.preheader, %.lr.ph557.prol
  %indvars.iv803.prol = phi i64 [ %indvars.iv.next804.prol, %.lr.ph557.prol ], [ %indvars.iv803.ph, %.lr.ph557.preheader ] ; 2 uses
  %indvars.iv799.prol = phi i64 [ %indvars.iv.next800.prol, %.lr.ph557.prol ], [ %indvars.iv799.ph, %.lr.ph557.preheader ] ; 2 uses
  %prol.iter1911 = phi i32 [ %prol.iter1911.next, %.lr.ph557.prol ], [ 0, %.lr.ph557.preheader ]
  %i.yk = mul nsw i64 %indvars.iv803.prol, %i.uj
  %gep1016.prol = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yk
  %i.yl = load double, ptr %gep1016.prol, align 8, !tbaa !9
  %i.ym = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv799.prol
  store double %i.yl, ptr %i.ym, align 8, !tbaa !9
  %indvars.iv.next800.prol = add nsw i64 %indvars.iv799.prol, 1 ; 3 uses
  %indvars.iv.next804.prol = add nsw i64 %indvars.iv803.prol, 1 ; 2 uses
  %prol.iter1911.next = add i32 %prol.iter1911, 1 ; 2 uses
  %prol.iter1911.cmp.not = icmp eq i32 %prol.iter1911.next, %xtraiter1909
  br i1 %prol.iter1911.cmp.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol, !llvm.loop !59

.lr.ph557.prol.loopexit:                          ; preds = %.lr.ph557.prol, %.lr.ph557.preheader
  %indvars.iv.next800.lcssa.unr = phi i64 [ poison, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %indvars.iv803.unr = phi i64 [ %indvars.iv803.ph, %.lr.ph557.preheader ], [ %indvars.iv.next804.prol, %.lr.ph557.prol ]
  %indvars.iv799.unr = phi i64 [ %indvars.iv799.ph, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %i.yn = sub i32 %i.yi, %i.i
  %i.yo = icmp ugt i32 %i.yn, -8
  br i1 %i.yo, label %._crit_edge558, label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557
  %indvars.iv803 = phi i64 [ %indvars.iv.next804.7, %.lr.ph557 ], [ %indvars.iv803.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %indvars.iv799 = phi i64 [ %indvars.iv.next800.7, %.lr.ph557 ], [ %indvars.iv799.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %i.yp = mul nsw i64 %indvars.iv803, %i.uj
  %gep1016 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yp
  %i.yq = load double, ptr %gep1016, align 8, !tbaa !9
  %i.yr = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv799
  store double %i.yq, ptr %i.yr, align 8, !tbaa !9
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, 1
  %i.ys = mul nsw i64 %indvars.iv.next804, %i.uj
  %gep1016.1 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.ys
  %i.yt = load double, ptr %gep1016.1, align 8, !tbaa !9
  %i.yu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.yv = getelementptr i8, ptr %i.yu, i64 8
  store double %i.yt, ptr %i.yv, align 8, !tbaa !9
  %indvars.iv.next804.1 = add nsw i64 %indvars.iv803, 2
  %i.yw = mul nsw i64 %indvars.iv.next804.1, %i.uj
  %gep1016.2 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yw
  %i.yx = load double, ptr %gep1016.2, align 8, !tbaa !9
  %i.yy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.yz = getelementptr i8, ptr %i.yy, i64 16
  store double %i.yx, ptr %i.yz, align 8, !tbaa !9
  %indvars.iv.next804.2 = add nsw i64 %indvars.iv803, 3
  %i.za = mul nsw i64 %indvars.iv.next804.2, %i.uj
  %gep1016.3 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.za
  %i.zb = load double, ptr %gep1016.3, align 8, !tbaa !9
  %i.zc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zd = getelementptr i8, ptr %i.zc, i64 24
  store double %i.zb, ptr %i.zd, align 8, !tbaa !9
  %indvars.iv.next804.3 = add nsw i64 %indvars.iv803, 4
  %i.ze = mul nsw i64 %indvars.iv.next804.3, %i.uj
  %gep1016.4 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.ze
  %i.zf = load double, ptr %gep1016.4, align 8, !tbaa !9
  %i.zg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zh = getelementptr i8, ptr %i.zg, i64 32
  store double %i.zf, ptr %i.zh, align 8, !tbaa !9
  %indvars.iv.next804.4 = add nsw i64 %indvars.iv803, 5
  %i.zi = mul nsw i64 %indvars.iv.next804.4, %i.uj
  %gep1016.5 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zi
  %i.zj = load double, ptr %gep1016.5, align 8, !tbaa !9
  %i.zk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zl = getelementptr i8, ptr %i.zk, i64 40
  store double %i.zj, ptr %i.zl, align 8, !tbaa !9
  %indvars.iv.next804.5 = add nsw i64 %indvars.iv803, 6
  %i.zm = mul nsw i64 %indvars.iv.next804.5, %i.uj
  %gep1016.6 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zm
  %i.zn = load double, ptr %gep1016.6, align 8, !tbaa !9
  %i.zo = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zp = getelementptr i8, ptr %i.zo, i64 48
  store double %i.zn, ptr %i.zp, align 8, !tbaa !9
  %indvars.iv.next804.6 = add nsw i64 %indvars.iv803, 7
  %i.zq = mul nsw i64 %indvars.iv.next804.6, %i.uj
  %gep1016.7 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zq
  %i.zr = load double, ptr %gep1016.7, align 8, !tbaa !9
  %i.zs = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zt = getelementptr i8, ptr %i.zs, i64 56
  store double %i.zr, ptr %i.zt, align 8, !tbaa !9
  %indvars.iv.next800.7 = add nsw i64 %indvars.iv799, 8 ; 2 uses
  %indvars.iv.next804.7 = add nsw i64 %indvars.iv803, 8 ; 2 uses
  %lftr.wideiv808.7 = trunc i64 %indvars.iv.next804.7 to i32
  %exitcond809.not.7 = icmp eq i32 %i.i, %lftr.wideiv808.7
  br i1 %exitcond809.not.7, label %._crit_edge558, label %.lr.ph557, !llvm.loop !60

._crit_edge558:                                   ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557, %middle.block1314, %vec.epilog.middle.block1328, %.loopexit1813
  %.15.lcssa.in = phi i64 [ %indvars.iv.next787.lcssa, %.loopexit1813 ], [ %i.yg, %vec.epilog.middle.block1328 ], [ %i.xx, %middle.block1314 ], [ %indvars.iv.next800.lcssa.unr, %.lr.ph557.prol.loopexit ], [ %indvars.iv.next800.7, %.lr.ph557 ]
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, 1 ; 2 uses
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1
  %indvars.iv.next802 = add i32 %indvars.iv801, 1
  %exitcond818.not = icmp eq i64 %indvars.iv.next813, %wide.trip.count817
  br i1 %exitcond818.not, label %.loopexit, label %iter.check1357, !llvm.loop !61

bb.p:                                             ; preds = %bb.l
  br i1 %.not, label %.preheader468.us.preheader, label %.preheader469.lr.ph

.thread461:                                       ; preds = %bb.l
  br i1 %.not, label %iter.check1468, label %.lr.ph574.preheader

.lr.ph574.preheader:                              ; preds = %.thread461
  %i.zu = zext nneg i32 %i.i to i64               ; 6 uses
  %i.zv = lshr exact i64 %i.zu, 1                 ; 7 uses
  %i.zw = sext i32 %i.d to i64                    ; 7 uses
  %i.zx = zext nneg i32 %i.i to i64
  %i.zy = zext nneg i32 %i.v to i64
  %wide.trip.count839 = zext nneg i32 %i.v to i64 ; 2 uses
  %invariant.gep1031 = getelementptr [8 x i8], ptr %3, i64 %i.zy
  %i.zz = sub i64 %i.b, %i.a                      ; 2 uses
  %i.aaa = shl nsw i64 %i.zw, 3
  %i.aab = sub nuw nsw i64 -8, %i.aaa
  %7 = add nuw nsw i64 %wide.trip.count839, 1
  %ident.check1406.not = icmp eq i32 %i.d, 1
  br label %iter.check1434

iter.check1434:                                   ; preds = %.lr.ph574.preheader, %._crit_edge569
  %indvars.iv842.in = phi i64 [ %i.zv, %.lr.ph574.preheader ], [ %i.aag, %._crit_edge569 ] ; 3 uses
  %indvars.iv829 = phi i64 [ 0, %.lr.ph574.preheader ], [ %indvars.iv.next830, %._crit_edge569 ] ; 17 uses
  %.16573 = phi i32 [ 0, %.lr.ph574.preheader ], [ %.18.lcssa, %._crit_edge569 ] ; 5 uses
  %8 = add nuw i64 %7, %indvars.iv829
  %i.aac = add nuw i64 %indvars.iv829, 1          ; 5 uses
  %i.aad = sub nsw i64 %i.zu, %indvars.iv829      ; 7 uses
  %i.aae = mul i64 %i.aab, %indvars.iv829
  %i.aaf = add i64 %i.zz, %i.aae
  %i.aag = add nuw nsw i64 %indvars.iv842.in, 1
  %i.aah = sext i32 %.16573 to i64                ; 7 uses
  %invariant.gep1017 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %indvars.iv829 ; 7 uses
  %min.iters.check1410 = icmp samesign ugt i64 %indvars.iv829, 2
  %or.cond1822 = select i1 %min.iters.check1410, i1 %ident.check1406.not, i1 false
  br i1 %or.cond1822, label %vector.memcheck1407, label %vec.epilog.scalar.ph1435.preheader

vector.memcheck1407:                              ; preds = %iter.check1434
  %i.aai = add nuw i64 %indvars.iv829, %i.zu
  %i.aaj = shl i64 %i.aai, 3
  %i.aak = sub i64 %i.zz, %i.aaj
  %i.aal = shl nsw i64 %i.aah, 3
  %i.aam = add i64 %i.aak, %i.aal
  %i.aan = add i64 %i.aam, -1
  %diff.check1408 = icmp ult i64 %i.aan, 127
  br i1 %diff.check1408, label %vec.epilog.scalar.ph1435.preheader, label %vector.main.loop.iter.check1411

vector.main.loop.iter.check1411:                  ; preds = %vector.memcheck1407
  %min.iters.check1412 = icmp samesign ult i64 %indvars.iv829, 15
  br i1 %min.iters.check1412, label %vec.epilog.ph1438, label %vector.ph1413

vector.ph1413:                                    ; preds = %vector.main.loop.iter.check1411
  %i.aao = and i64 %i.aac, 12
  %n.vec1414 = and i64 %i.aac, -16                ; 5 uses
  %i.aap = add i64 %i.zv, %n.vec1414
  %i.aaq = add i64 %n.vec1414, %i.aah             ; 2 uses
  %i.aar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16573, i64 0
  %i.aas = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zv
  %invariant.gep2020 = getelementptr [8 x i8], ptr %5, i64 %i.aah
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1425, %vector.body1415 ] ; 3 uses
  %vec.phi1417 = phi <4 x i32> [ %i.aar, %vector.ph1413 ], [ %i.aat, %vector.body1415 ]
  %vec.phi1418 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aau, %vector.body1415 ]
  %vec.phi1419 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aav, %vector.body1415 ]
  %vec.phi1420 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aaw, %vector.body1415 ]
  %i.aat = add <4 x i32> %vec.phi1417, splat (i32 1) ; 2 uses
  %i.aau = add <4 x i32> %vec.phi1418, splat (i32 1) ; 2 uses
  %i.aav = add <4 x i32> %vec.phi1419, splat (i32 1) ; 2 uses
  %i.aaw = add <4 x i32> %vec.phi1420, splat (i32 1) ; 2 uses
  %i.aax = getelementptr [8 x i8], ptr %i.aas, i64 %index1416 ; 4 uses
  %i.aay = getelementptr i8, ptr %i.aax, i64 32
  %i.aaz = getelementptr i8, ptr %i.aax, i64 64
  %i.aba = getelementptr i8, ptr %i.aax, i64 96
  %wide.load1421 = load <4 x double>, ptr %i.aax, align 8, !tbaa !9
  %wide.load1422 = load <4 x double>, ptr %i.aay, align 8, !tbaa !9
  %wide.load1423 = load <4 x double>, ptr %i.aaz, align 8, !tbaa !9
  %wide.load1424 = load <4 x double>, ptr %i.aba, align 8, !tbaa !9
  %gep2021 = getelementptr [8 x i8], ptr %invariant.gep2020, i64 %index1416 ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %gep2021, i64 32
  %i.abc = getelementptr inbounds nuw i8, ptr %gep2021, i64 64
  %i.abd = getelementptr inbounds nuw i8, ptr %gep2021, i64 96
  store <4 x double> %wide.load1421, ptr %gep2021, align 8, !tbaa !9
  store <4 x double> %wide.load1422, ptr %i.abb, align 8, !tbaa !9
  store <4 x double> %wide.load1423, ptr %i.abc, align 8, !tbaa !9
  store <4 x double> %wide.load1424, ptr %i.abd, align 8, !tbaa !9
  %index.next1425 = add nuw i64 %index1416, 16    ; 2 uses
  %i.abe = icmp eq i64 %index.next1425, %n.vec1414
  br i1 %i.abe, label %middle.block1426, label %vector.body1415, !llvm.loop !62

middle.block1426:                                 ; preds = %vector.body1415
  %bin.rdx1427 = add <4 x i32> %i.aau, %i.aat
  %bin.rdx1428 = add <4 x i32> %i.aav, %bin.rdx1427
  %bin.rdx1429 = add <4 x i32> %i.aaw, %bin.rdx1428
  %i.abf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1429) ; 3 uses
  %cmp.n1430 = icmp eq i64 %i.aac, %n.vec1414
  br i1 %cmp.n1430, label %.preheader474, label %vec.epilog.iter.check1436

vec.epilog.iter.check1436:                        ; preds = %middle.block1426
  %min.epilog.iters.check1437 = icmp eq i64 %i.aao, 0
  br i1 %min.epilog.iters.check1437, label %vec.epilog.scalar.ph1435.preheader, label %vec.epilog.ph1438, !prof !15

vec.epilog.ph1438:                                ; preds = %vector.main.loop.iter.check1411, %vec.epilog.iter.check1436
  %vec.epilog.resume.val1431 = phi i64 [ %n.vec1414, %vec.epilog.iter.check1436 ], [ 0, %vector.main.loop.iter.check1411 ]
  %bc.merge.rdx1432 = phi i32 [ %i.abf, %vec.epilog.iter.check1436 ], [ %.16573, %vector.main.loop.iter.check1411 ]
  %n.vec1439 = and i64 %i.aac, -4                 ; 4 uses
  %i.abg = add i64 %i.zv, %n.vec1439
  %i.abh = add i64 %n.vec1439, %i.aah             ; 2 uses
  %i.abi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1432, i64 0
  %i.abj = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zv
  %invariant.gep2022 = getelementptr [8 x i8], ptr %5, i64 %i.aah
  br label %vec.epilog.vector.body1440

vec.epilog.vector.body1440:                       ; preds = %vec.epilog.vector.body1440, %vec.epilog.ph1438
  %index1441 = phi i64 [ %vec.epilog.resume.val1431, %vec.epilog.ph1438 ], [ %index.next1444, %vec.epilog.vector.body1440 ] ; 3 uses
  %vec.phi1442 = phi <4 x i32> [ %i.abi, %vec.epilog.ph1438 ], [ %i.abk, %vec.epilog.vector.body1440 ]
  %i.abk = add <4 x i32> %vec.phi1442, splat (i32 1) ; 2 uses
  %i.abl = getelementptr [8 x i8], ptr %i.abj, i64 %index1441
  %wide.load1443 = load <4 x double>, ptr %i.abl, align 8, !tbaa !9
  %gep2023 = getelementptr [8 x i8], ptr %invariant.gep2022, i64 %index1441
  store <4 x double> %wide.load1443, ptr %gep2023, align 8, !tbaa !9
  %index.next1444 = add nuw i64 %index1441, 4     ; 2 uses
  %i.abm = icmp eq i64 %index.next1444, %n.vec1439
  br i1 %i.abm, label %vec.epilog.middle.block1445, label %vec.epilog.vector.body1440, !llvm.loop !63

vec.epilog.middle.block1445:                      ; preds = %vec.epilog.vector.body1440
  %i.abn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.abk) ; 2 uses
  %cmp.n1446 = icmp eq i64 %i.aac, %n.vec1439
  br i1 %cmp.n1446, label %.preheader474, label %vec.epilog.scalar.ph1435.preheader

vec.epilog.scalar.ph1435.preheader:               ; preds = %vector.memcheck1407, %iter.check1434, %vec.epilog.iter.check1436, %vec.epilog.middle.block1445
  %indvars.iv825.in.ph = phi i32 [ %.16573, %iter.check1434 ], [ %.16573, %vector.memcheck1407 ], [ %i.abf, %vec.epilog.iter.check1436 ], [ %i.abn, %vec.epilog.middle.block1445 ] ; 2 uses
  %indvars.iv821.ph = phi i64 [ %i.zv, %iter.check1434 ], [ %i.zv, %vector.memcheck1407 ], [ %i.aap, %vec.epilog.iter.check1436 ], [ %i.abg, %vec.epilog.middle.block1445 ] ; 4 uses
  %indvars.iv819.ph = phi i64 [ %i.aah, %iter.check1434 ], [ %i.aah, %vector.memcheck1407 ], [ %i.aaq, %vec.epilog.iter.check1436 ], [ %i.abh, %vec.epilog.middle.block1445 ] ; 2 uses
  %9 = sub i64 %8, %indvars.iv821.ph
  %10 = sub i64 %indvars.iv842.in, %indvars.iv821.ph
  %xtraiter1923 = and i64 %9, 3                   ; 2 uses
  %lcmp.mod1924.not = icmp eq i64 %xtraiter1923, 0
  br i1 %lcmp.mod1924.not, label %vec.epilog.scalar.ph1446.prol.loopexit, label %vec.epilog.scalar.ph1446.prol

vec.epilog.scalar.ph1446.prol:                    ; preds = %vec.epilog.scalar.ph1435.preheader, %vec.epilog.scalar.ph1446.prol
  %indvars.iv829.in.prol = phi i32 [ %indvars.iv829.prol, %vec.epilog.scalar.ph1446.prol ], [ %indvars.iv825.in.ph, %vec.epilog.scalar.ph1435.preheader ]
  %indvars.iv821.prol = phi i64 [ %indvars.iv.next822.prol, %vec.epilog.scalar.ph1446.prol ], [ %indvars.iv821.ph, %vec.epilog.scalar.ph1435.preheader ] ; 2 uses
  %indvars.iv819.prol = phi i64 [ %indvars.iv.next820.prol, %vec.epilog.scalar.ph1446.prol ], [ %indvars.iv819.ph, %vec.epilog.scalar.ph1435.preheader ] ; 2 uses
  %prol.iter1925 = phi i64 [ %prol.iter1925.next, %vec.epilog.scalar.ph1446.prol ], [ 0, %vec.epilog.scalar.ph1435.preheader ]
  %indvars.iv829.prol = add i32 %indvars.iv829.in.prol, 1 ; 3 uses
  %11 = mul nsw i64 %indvars.iv821.prol, %i.zw
  %gep1028.prol = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %11
  %12 = load double, ptr %gep1028.prol, align 8, !tbaa !9
  %13 = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv819.prol
  store double %12, ptr %13, align 8, !tbaa !9
  %indvars.iv.next820.prol = add nsw i64 %indvars.iv819.prol, 1 ; 3 uses
  %indvars.iv.next822.prol = add nuw nsw i64 %indvars.iv821.prol, 1 ; 2 uses
  %prol.iter1925.next = add i64 %prol.iter1925, 1 ; 2 uses
  %prol.iter1925.cmp.not = icmp eq i64 %prol.iter1925.next, %xtraiter1923
  br i1 %prol.iter1925.cmp.not, label %vec.epilog.scalar.ph1446.prol.loopexit, label %vec.epilog.scalar.ph1446.prol, !llvm.loop !64

vec.epilog.scalar.ph1446.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1446.prol, %vec.epilog.scalar.ph1435.preheader
  %indvars.iv829.lcssa1871.unr = phi i32 [ poison, %vec.epilog.scalar.ph1435.preheader ], [ %indvars.iv829.prol, %vec.epilog.scalar.ph1446.prol ]
  %indvars.iv.next820.lcssa1870.unr = phi i64 [ poison, %vec.epilog.scalar.ph1435.preheader ], [ %indvars.iv.next820.prol, %vec.epilog.scalar.ph1446.prol ]
  %indvars.iv829.in.unr = phi i32 [ %indvars.iv825.in.ph, %vec.epilog.scalar.ph1435.preheader ], [ %indvars.iv829.prol, %vec.epilog.scalar.ph1446.prol ]
  %indvars.iv821.unr = phi i64 [ %indvars.iv821.ph, %vec.epilog.scalar.ph1435.preheader ], [ %indvars.iv.next822.prol, %vec.epilog.scalar.ph1446.prol ]
  %indvars.iv819.unr = phi i64 [ %indvars.iv819.ph, %vec.epilog.scalar.ph1435.preheader ], [ %indvars.iv.next820.prol, %vec.epilog.scalar.ph1446.prol ]
  %14 = icmp ult i64 %10, 3
  br i1 %14, label %.preheader474, label %vec.epilog.scalar.ph1435

.preheader474:                                    ; preds = %vec.epilog.scalar.ph1446.prol.loopexit, %vec.epilog.scalar.ph1435, %vec.epilog.middle.block1445, %middle.block1426
  %indvars.iv829.lcssa = phi i32 [ %i.abn, %vec.epilog.middle.block1445 ], [ %i.abf, %middle.block1426 ], [ %indvars.iv829.lcssa1871.unr, %vec.epilog.scalar.ph1446.prol.loopexit ], [ %indvars.iv825, %vec.epilog.scalar.ph1435 ]
  %indvars.iv.next820.lcssa = phi i64 [ %i.abh, %vec.epilog.middle.block1445 ], [ %i.aaq, %middle.block1426 ], [ %indvars.iv.next820.lcssa1870.unr, %vec.epilog.scalar.ph1446.prol.loopexit ], [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ]
  %.not435.not565 = icmp samesign ult i64 %indvars.iv829, %i.zx
  br i1 %.not435.not565, label %iter.check1391, label %._crit_edge569

iter.check1391:                                   ; preds = %.preheader474
  %i.abo = mul nsw i64 %indvars.iv829, %i.zw
  %i.abp = sext i32 %indvars.iv829.lcssa to i64   ; 7 uses
  %invariant.gep1019 = getelementptr [8 x i8], ptr %3, i64 %i.abo ; 11 uses
  %min.iters.check1375 = icmp ult i64 %i.aad, 4
  br i1 %min.iters.check1375, label %vec.epilog.scalar.ph1392.preheader, label %vector.memcheck1373

vector.memcheck1373:                              ; preds = %iter.check1391
  %i.abq = shl nsw i64 %i.abp, 3
  %i.abr = add i64 %i.aaf, %i.abq
  %i.abs = add i64 %i.abr, -1
  %diff.check1374 = icmp ult i64 %i.abs, 127
  br i1 %diff.check1374, label %vec.epilog.scalar.ph1392.preheader, label %vector.main.loop.iter.check1376

vector.main.loop.iter.check1376:                  ; preds = %vector.memcheck1373
  %min.iters.check1377 = icmp ult i64 %i.aad, 16
  br i1 %min.iters.check1377, label %vec.epilog.ph1395, label %vector.ph1378

vector.ph1378:                                    ; preds = %vector.main.loop.iter.check1376
  %i.abt = and i64 %i.aad, 12
  %n.vec1379 = and i64 %i.aad, -16                ; 5 uses
  %i.abu = add i64 %indvars.iv829, %n.vec1379
  %i.abv = add i64 %n.vec1379, %i.abp             ; 2 uses
  %i.abw = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  %invariant.gep2024 = getelementptr [8 x i8], ptr %5, i64 %i.abp
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1386, %vector.body1380 ] ; 3 uses
  %i.abx = getelementptr [8 x i8], ptr %i.abw, i64 %index1381 ; 4 uses
  %i.aby = getelementptr i8, ptr %i.abx, i64 32
  %i.abz = getelementptr i8, ptr %i.abx, i64 64
  %i.aca = getelementptr i8, ptr %i.abx, i64 96
  %wide.load1382 = load <4 x double>, ptr %i.abx, align 8, !tbaa !9
  %wide.load1383 = load <4 x double>, ptr %i.aby, align 8, !tbaa !9
  %wide.load1384 = load <4 x double>, ptr %i.abz, align 8, !tbaa !9
  %wide.load1385 = load <4 x double>, ptr %i.aca, align 8, !tbaa !9
  %gep2025 = getelementptr [8 x i8], ptr %invariant.gep2024, i64 %index1381 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %gep2025, i64 32
  %i.acc = getelementptr inbounds nuw i8, ptr %gep2025, i64 64
  %i.acd = getelementptr inbounds nuw i8, ptr %gep2025, i64 96
  store <4 x double> %wide.load1382, ptr %gep2025, align 8, !tbaa !9
  store <4 x double> %wide.load1383, ptr %i.acb, align 8, !tbaa !9
  store <4 x double> %wide.load1384, ptr %i.acc, align 8, !tbaa !9
  store <4 x double> %wide.load1385, ptr %i.acd, align 8, !tbaa !9
  %index.next1386 = add nuw i64 %index1381, 16    ; 2 uses
  %i.ace = icmp eq i64 %index.next1386, %n.vec1379
  br i1 %i.ace, label %middle.block1387, label %vector.body1380, !llvm.loop !65

middle.block1387:                                 ; preds = %vector.body1380
  %cmp.n1388 = icmp eq i64 %i.aad, %n.vec1379
  br i1 %cmp.n1388, label %._crit_edge569, label %vec.epilog.iter.check1393

vec.epilog.iter.check1393:                        ; preds = %middle.block1387
  %min.epilog.iters.check1394 = icmp eq i64 %i.abt, 0
  br i1 %min.epilog.iters.check1394, label %vec.epilog.scalar.ph1392.preheader, label %vec.epilog.ph1395, !prof !15

vec.epilog.ph1395:                                ; preds = %vector.main.loop.iter.check1376, %vec.epilog.iter.check1393
  %vec.epilog.resume.val1389 = phi i64 [ %n.vec1379, %vec.epilog.iter.check1393 ], [ 0, %vector.main.loop.iter.check1376 ]
  %n.vec1396 = and i64 %i.aad, -4                 ; 4 uses
  %i.acf = add i64 %indvars.iv829, %n.vec1396
  %i.acg = add i64 %n.vec1396, %i.abp             ; 2 uses
  %i.ach = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  %invariant.gep2026 = getelementptr [8 x i8], ptr %5, i64 %i.abp
  br label %vec.epilog.vector.body1397

vec.epilog.vector.body1397:                       ; preds = %vec.epilog.vector.body1397, %vec.epilog.ph1395
  %index1398 = phi i64 [ %vec.epilog.resume.val1389, %vec.epilog.ph1395 ], [ %index.next1400, %vec.epilog.vector.body1397 ] ; 3 uses
  %i.aci = getelementptr [8 x i8], ptr %i.ach, i64 %index1398
  %wide.load1399 = load <4 x double>, ptr %i.aci, align 8, !tbaa !9
  %gep2027 = getelementptr [8 x i8], ptr %invariant.gep2026, i64 %index1398
  store <4 x double> %wide.load1399, ptr %gep2027, align 8, !tbaa !9
  %index.next1400 = add nuw i64 %index1398, 4     ; 2 uses
  %i.acj = icmp eq i64 %index.next1400, %n.vec1396
  br i1 %i.acj, label %vec.epilog.middle.block1401, label %vec.epilog.vector.body1397, !llvm.loop !66

vec.epilog.middle.block1401:                      ; preds = %vec.epilog.vector.body1397
  %cmp.n1402 = icmp eq i64 %i.aad, %n.vec1396
  br i1 %cmp.n1402, label %._crit_edge569, label %vec.epilog.scalar.ph1392.preheader

vec.epilog.scalar.ph1392.preheader:               ; preds = %vector.memcheck1373, %iter.check1391, %vec.epilog.iter.check1393, %vec.epilog.middle.block1401
  %indvars.iv831.ph.a = phi i64 [ %indvars.iv829, %iter.check1391 ], [ %indvars.iv829, %vector.memcheck1373 ], [ %i.abu, %vec.epilog.iter.check1393 ], [ %i.acf, %vec.epilog.middle.block1401 ] ; 4 uses
  %indvars.iv827.ph = phi i64 [ %i.abp, %iter.check1391 ], [ %i.abp, %vector.memcheck1373 ], [ %i.abv, %vec.epilog.iter.check1393 ], [ %i.acg, %vec.epilog.middle.block1401 ] ; 2 uses
  %i.ack = sub i64 %i.zu, %indvars.iv831.ph.a
  %xtraiter1912 = and i64 %i.ack, 7               ; 2 uses
  %lcmp.mod1913.not = icmp eq i64 %xtraiter1912, 0
  br i1 %lcmp.mod1913.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol

vec.epilog.scalar.ph1392.prol:                    ; preds = %vec.epilog.scalar.ph1392.preheader, %vec.epilog.scalar.ph1392.prol
  %indvars.iv831.prol.a = phi i64 [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %indvars.iv827.prol = phi i64 [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %prol.iter1914 = phi i64 [ %prol.iter1914.next, %vec.epilog.scalar.ph1392.prol ], [ 0, %vec.epilog.scalar.ph1392.preheader ]
  %gep1020.prol = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.prol.a
  %i.acl = load double, ptr %gep1020.prol, align 8, !tbaa !9
  %i.acm = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv827.prol
  store double %i.acl, ptr %i.acm, align 8, !tbaa !9
  %indvars.iv.next828.prol = add nsw i64 %indvars.iv827.prol, 1 ; 3 uses
  %indvars.iv.next832.prol = add nuw nsw i64 %indvars.iv831.prol.a, 1 ; 2 uses
  %prol.iter1914.next = add i64 %prol.iter1914, 1 ; 2 uses
  %prol.iter1914.cmp.not = icmp eq i64 %prol.iter1914.next, %xtraiter1912
  br i1 %prol.iter1914.cmp.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol, !llvm.loop !67

vec.epilog.scalar.ph1392.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1392.prol, %vec.epilog.scalar.ph1392.preheader
  %indvars.iv.next828.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv831.unr.a = phi i64 [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv827.unr = phi i64 [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %i.acn = sub i64 %indvars.iv831.ph.a, %i.zu
  %i.aco = icmp ugt i64 %i.acn, -8
  br i1 %i.aco, label %._crit_edge569, label %vec.epilog.scalar.ph1392

vec.epilog.scalar.ph1435:                         ; preds = %vec.epilog.scalar.ph1446.prol.loopexit, %vec.epilog.scalar.ph1435
  %indvars.iv825.in = phi i32 [ %indvars.iv825, %vec.epilog.scalar.ph1435 ], [ %indvars.iv829.in.unr, %vec.epilog.scalar.ph1446.prol.loopexit ]
  %indvars.iv821 = phi i64 [ %indvars.iv.next822.a, %vec.epilog.scalar.ph1435 ], [ %indvars.iv821.unr, %vec.epilog.scalar.ph1446.prol.loopexit ] ; 5 uses
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ], [ %indvars.iv819.unr, %vec.epilog.scalar.ph1446.prol.loopexit ] ; 5 uses
  %15 = mul nsw i64 %indvars.iv821, %i.zw
  %gep1028 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %15
  %16 = load double, ptr %gep1028, align 8, !tbaa !9
  %17 = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv819
  store double %16, ptr %17, align 8, !tbaa !9
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1
  %18 = mul nsw i64 %indvars.iv.next822, %i.zw
  %gep1028.1 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %18
  %19 = load double, ptr %gep1028.1, align 8, !tbaa !9
  %20 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv819
  %21 = getelementptr i8, ptr %20, i64 8
  store double %19, ptr %21, align 8, !tbaa !9
  %indvars.iv.next822.1 = add nuw nsw i64 %indvars.iv821, 2
  %22 = mul nsw i64 %indvars.iv.next822.1, %i.zw
  %gep1028.2 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %22
  %23 = load double, ptr %gep1028.2, align 8, !tbaa !9
  %24 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv819
  %25 = getelementptr i8, ptr %24, i64 16
  store double %23, ptr %25, align 8, !tbaa !9
  %indvars.iv.next822.2 = add nuw nsw i64 %indvars.iv821, 3 ; 2 uses
  %indvars.iv825 = add i32 %indvars.iv825.in, 4   ; 2 uses
  %i.acp = mul nsw i64 %indvars.iv.next822.2, %i.zw
  %gep1018 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.acp
  %i.acq = load double, ptr %gep1018, align 8, !tbaa !9
  %i.acr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv819
  %26 = getelementptr i8, ptr %i.acr, i64 24
  store double %i.acq, ptr %26, align 8, !tbaa !9
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, 4 ; 2 uses
  %indvars.iv.next822.a = add nuw nsw i64 %indvars.iv821, 4
  %exitcond827.not.3 = icmp eq i64 %indvars.iv.next822.2, %indvars.iv842.in
  br i1 %exitcond827.not.3, label %.preheader474, label %vec.epilog.scalar.ph1435, !llvm.loop !68

vec.epilog.scalar.ph1392:                         ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392
  %indvars.iv831.a = phi i64 [ %indvars.iv.next832.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv831.unr.a, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %indvars.iv827 = phi i64 [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv827.unr, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %i.acs = load double, ptr %gep1020, align 8, !tbaa !9
  %i.act = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv827
  store double %i.acs, ptr %i.act, align 8, !tbaa !9
  %i.acu = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.1 = getelementptr i8, ptr %i.acu, i64 8
  %i.acv = load double, ptr %gep1020.1, align 8, !tbaa !9
  %i.acw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.acx = getelementptr i8, ptr %i.acw, i64 8
  store double %i.acv, ptr %i.acx, align 8, !tbaa !9
  %i.acy = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.2 = getelementptr i8, ptr %i.acy, i64 16
  %i.acz = load double, ptr %gep1020.2, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adb = getelementptr i8, ptr %i.ada, i64 16
  store double %i.acz, ptr %i.adb, align 8, !tbaa !9
  %i.adc = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.3 = getelementptr i8, ptr %i.adc, i64 24
  %i.add = load double, ptr %gep1020.3, align 8, !tbaa !9
  %i.ade = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adf = getelementptr i8, ptr %i.ade, i64 24
  store double %i.add, ptr %i.adf, align 8, !tbaa !9
  %i.adg = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.4 = getelementptr i8, ptr %i.adg, i64 32
  %i.adh = load double, ptr %gep1020.4, align 8, !tbaa !9
  %i.adi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adj = getelementptr i8, ptr %i.adi, i64 32
  store double %i.adh, ptr %i.adj, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.5 = getelementptr i8, ptr %i.adk, i64 40
  %i.adl = load double, ptr %gep1020.5, align 8, !tbaa !9
  %i.adm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adn = getelementptr i8, ptr %i.adm, i64 40
  store double %i.adl, ptr %i.adn, align 8, !tbaa !9
  %i.ado = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.6 = getelementptr i8, ptr %i.ado, i64 48
  %i.adp = load double, ptr %gep1020.6, align 8, !tbaa !9
  %i.adq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adr = getelementptr i8, ptr %i.adq, i64 48
  store double %i.adp, ptr %i.adr, align 8, !tbaa !9
  %i.ads = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.7 = getelementptr i8, ptr %i.ads, i64 56
  %i.adt = load double, ptr %gep1020.7, align 8, !tbaa !9
  %i.adu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adv = getelementptr i8, ptr %i.adu, i64 56
  store double %i.adt, ptr %i.adv, align 8, !tbaa !9
  %indvars.iv.next828.7 = add nsw i64 %indvars.iv827, 8 ; 2 uses
  %indvars.iv.next832.7 = add nuw nsw i64 %indvars.iv831.a, 8 ; 2 uses
  %exitcond837.not.7 = icmp eq i64 %indvars.iv.next832.7, %i.zu
  br i1 %exitcond837.not.7, label %._crit_edge569, label %vec.epilog.scalar.ph1392, !llvm.loop !69

._crit_edge569:                                   ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392, %middle.block1387, %vec.epilog.middle.block1401, %.preheader474
  %.18.lcssa.in = phi i64 [ %indvars.iv.next820.lcssa, %.preheader474 ], [ %i.acg, %vec.epilog.middle.block1401 ], [ %i.abv, %middle.block1387 ], [ %indvars.iv.next828.lcssa.unr, %vec.epilog.scalar.ph1392.prol.loopexit ], [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ]
  %.18.lcssa = trunc i64 %.18.lcssa.in to i32
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next830, %wide.trip.count839
  br i1 %exitcond840.not, label %.loopexit, label %iter.check1434, !llvm.loop !70

.preheader469.lr.ph:                              ; preds = %bb.p
  %i.adw = xor i32 %i.i, -1
  %i.adx = add nsw i32 %i.u, %i.adw
  %i.ady = shl nuw i32 %i.i, 1
  %i.adz = xor i32 %i.v, -1
  %i.aea = add nsw i32 %i.i, %i.adz
  %i.aeb = sext i32 %i.d to i64                   ; 12 uses
  %i.aec = zext nneg i32 %i.i to i64              ; 4 uses
  %i.aed = zext nneg i32 %i.v to i64              ; 4 uses
  %i.aee = shl nuw nsw i64 %i.aed, 3
  %i.aef = add i64 %i.aee, %i.b
  %i.aeg = add i64 %i.aef, 8
  %i.aeh = add nuw nsw i64 %i.aec, 2305843009213693951
  %i.aei = mul i64 %i.aeh, %i.aeb
  %i.aej = shl i64 %i.aei, 3
  %i.aek = add i64 %i.aej, %i.a
  %i.ael = sub i64 %i.b, %i.aek
  %i.aem = shl nsw i64 %i.aeb, 3
  %ident.check1593.not = icmp eq i32 %i.d, 1
  %invariant.op = sub i32 -2, %i.ady
  br label %iter.check1653

iter.check1653:                                   ; preds = %.preheader469.lr.ph, %._crit_edge611
  %indvar1595 = phi i64 [ 0, %.preheader469.lr.ph ], [ %indvar.next1596, %._crit_edge611 ] ; 5 uses
  %indvars.iv916 = phi i64 [ %i.aec, %.preheader469.lr.ph ], [ %indvars.iv.next917, %._crit_edge611 ] ; 10 uses
  %indvars.iv907 = phi i32 [ %i.aea, %.preheader469.lr.ph ], [ %indvars.iv.next908, %._crit_edge611 ] ; 3 uses
  %.19616 = phi i32 [ %i.adx, %.preheader469.lr.ph ], [ %.reass.reass, %._crit_edge611 ] ; 5 uses
  %i.aen = and i64 %indvar1595, 4294967295        ; 3 uses
  %i.aeo = add nuw nsw i64 %i.aen, 1              ; 5 uses
  %i.aep = shl nuw nsw i64 %indvar1595, 3
  %i.aeq = sext i32 %indvars.iv907 to i64
  %i.aer = sext i32 %indvars.iv907 to i64         ; 6 uses
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -1 ; 4 uses
  %i.aes = mul nsw i64 %indvars.iv.next917, %i.aeb
  %i.aet = sext i32 %.19616 to i64                ; 7 uses
  %invariant.gep1029 = getelementptr [8 x i8], ptr %3, i64 %i.aes ; 11 uses
  %min.iters.check1630 = icmp ult i64 %indvars.iv916, 4
  br i1 %min.iters.check1630, label %vec.epilog.scalar.ph1654.preheader, label %vector.memcheck1628

vector.memcheck1628:                              ; preds = %iter.check1653
  %i.aeu = mul i64 %i.aem, %indvar1595
  %i.aev = add i64 %i.ael, %i.aeu
  %i.aew = shl nsw i64 %i.aet, 3
  %i.aex = add i64 %i.aev, %i.aew
  %i.aey = add i64 %i.aex, -1
  %diff.check1629 = icmp ult i64 %i.aey, 127
  br i1 %diff.check1629, label %vec.epilog.scalar.ph1654.preheader, label %vector.main.loop.iter.check1631

vector.main.loop.iter.check1631:                  ; preds = %vector.memcheck1628
  %min.iters.check1632 = icmp ult i64 %indvars.iv916, 16
  br i1 %min.iters.check1632, label %vec.epilog.ph1657, label %vector.ph1633

vector.ph1633:                                    ; preds = %vector.main.loop.iter.check1631
  %i.aez = and i64 %indvars.iv916, 12
  %n.vec1634 = and i64 %indvars.iv916, -16        ; 5 uses
  %i.afa = add i64 %n.vec1634, %i.aet             ; 2 uses
  %i.afb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.19616, i64 0
  %invariant.gep2040.a = getelementptr [8 x i8], ptr %5, i64 %i.aet
  br label %vector.body1635

vector.body1635:                                  ; preds = %vector.body1635, %vector.ph1633
  %index1636 = phi i64 [ 0, %vector.ph1633 ], [ %index.next1645, %vector.body1635 ] ; 3 uses
  %vec.phi1637 = phi <4 x i32> [ %i.afb, %vector.ph1633 ], [ %i.afc, %vector.body1635 ]
  %vec.phi1638 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.afd, %vector.body1635 ]
  %vec.phi1639 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.afe, %vector.body1635 ]
  %vec.phi1640 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.aff, %vector.body1635 ]
  %i.afc = add <4 x i32> %vec.phi1637, splat (i32 1) ; 2 uses
  %i.afd = add <4 x i32> %vec.phi1638, splat (i32 1) ; 2 uses
  %i.afe = add <4 x i32> %vec.phi1639, splat (i32 1) ; 2 uses
  %i.aff = add <4 x i32> %vec.phi1640, splat (i32 1) ; 2 uses
  %i.afg = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1636 ; 4 uses
  %i.afh = getelementptr i8, ptr %i.afg, i64 32
  %i.afi = getelementptr i8, ptr %i.afg, i64 64
  %i.afj = getelementptr i8, ptr %i.afg, i64 96
  %wide.load1641 = load <4 x double>, ptr %i.afg, align 8, !tbaa !9
  %wide.load1642 = load <4 x double>, ptr %i.afh, align 8, !tbaa !9
  %wide.load1643 = load <4 x double>, ptr %i.afi, align 8, !tbaa !9
  %wide.load1644 = load <4 x double>, ptr %i.afj, align 8, !tbaa !9
  %gep2041.a = getelementptr [8 x i8], ptr %invariant.gep2040.a, i64 %index1636 ; 4 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 32
  %i.afl = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 64
  %i.afm = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 96
  store <4 x double> %wide.load1641, ptr %gep2041.a, align 8, !tbaa !9
  store <4 x double> %wide.load1642, ptr %i.afk, align 8, !tbaa !9
  store <4 x double> %wide.load1643, ptr %i.afl, align 8, !tbaa !9
  store <4 x double> %wide.load1644, ptr %i.afm, align 8, !tbaa !9
  %index.next1645 = add nuw i64 %index1636, 16    ; 2 uses
  %i.afn = icmp eq i64 %index.next1645, %n.vec1634
  br i1 %i.afn, label %middle.block1646, label %vector.body1635, !llvm.loop !71

middle.block1646:                                 ; preds = %vector.body1635
  %bin.rdx1647 = add <4 x i32> %i.afd, %i.afc
  %bin.rdx1648 = add <4 x i32> %i.afe, %bin.rdx1647
  %bin.rdx1649 = add <4 x i32> %i.aff, %bin.rdx1648
  %i.afo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1649) ; 3 uses
  %cmp.n1650 = icmp eq i64 %indvars.iv916, %n.vec1634
  br i1 %cmp.n1650, label %.loopexit1811, label %vec.epilog.iter.check1655

vec.epilog.iter.check1655:                        ; preds = %middle.block1646
  %min.epilog.iters.check1656 = icmp eq i64 %i.aez, 0
  br i1 %min.epilog.iters.check1656, label %vec.epilog.scalar.ph1654.preheader, label %vec.epilog.ph1657, !prof !15

vec.epilog.ph1657:                                ; preds = %vector.main.loop.iter.check1631, %vec.epilog.iter.check1655
  %vec.epilog.resume.val1651 = phi i64 [ %n.vec1634, %vec.epilog.iter.check1655 ], [ 0, %vector.main.loop.iter.check1631 ]
  %bc.merge.rdx1652 = phi i32 [ %i.afo, %vec.epilog.iter.check1655 ], [ %.19616, %vector.main.loop.iter.check1631 ]
  %n.vec1658 = and i64 %indvars.iv916, -4         ; 4 uses
  %i.afp = add i64 %n.vec1658, %i.aet             ; 2 uses
  %i.afq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1652, i64 0
  %invariant.gep2042.a = getelementptr [8 x i8], ptr %5, i64 %i.aet
  br label %vec.epilog.vector.body1659

vec.epilog.vector.body1659:                       ; preds = %vec.epilog.vector.body1659, %vec.epilog.ph1657
  %index1660 = phi i64 [ %vec.epilog.resume.val1651, %vec.epilog.ph1657 ], [ %index.next1663, %vec.epilog.vector.body1659 ] ; 3 uses
  %vec.phi1661 = phi <4 x i32> [ %i.afq, %vec.epilog.ph1657 ], [ %i.afr, %vec.epilog.vector.body1659 ]
  %i.afr = add <4 x i32> %vec.phi1661, splat (i32 1) ; 2 uses
  %i.afs = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1660
  %wide.load1662 = load <4 x double>, ptr %i.afs, align 8, !tbaa !9
  %gep2043.a = getelementptr [8 x i8], ptr %invariant.gep2042.a, i64 %index1660
  store <4 x double> %wide.load1662, ptr %gep2043.a, align 8, !tbaa !9
  %index.next1663 = add nuw i64 %index1660, 4     ; 2 uses
  %i.aft = icmp eq i64 %index.next1663, %n.vec1658
  br i1 %i.aft, label %vec.epilog.middle.block1664, label %vec.epilog.vector.body1659, !llvm.loop !72

vec.epilog.middle.block1664:                      ; preds = %vec.epilog.vector.body1659
  %i.afu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afr) ; 2 uses
  %cmp.n1665 = icmp eq i64 %indvars.iv916, %n.vec1658
  br i1 %cmp.n1665, label %.loopexit1811, label %vec.epilog.scalar.ph1654.preheader

vec.epilog.scalar.ph1654.preheader:               ; preds = %vector.memcheck1628, %iter.check1653, %vec.epilog.iter.check1655, %vec.epilog.middle.block1664
  %indvars.iv903.in.ph = phi i32 [ %.19616, %iter.check1653 ], [ %.19616, %vector.memcheck1628 ], [ %i.afo, %vec.epilog.iter.check1655 ], [ %i.afu, %vec.epilog.middle.block1664 ] ; 2 uses
  %indvars.iv896.ph = phi i64 [ 0, %iter.check1653 ], [ 0, %vector.memcheck1628 ], [ %n.vec1634, %vec.epilog.iter.check1655 ], [ %n.vec1658, %vec.epilog.middle.block1664 ] ; 4 uses
  %indvars.iv894.ph = phi i64 [ %i.aet, %iter.check1653 ], [ %i.aet, %vector.memcheck1628 ], [ %i.afa, %vec.epilog.iter.check1655 ], [ %i.afp, %vec.epilog.middle.block1664 ] ; 2 uses
  %i.afv = sub i64 %indvars.iv916, %indvars.iv896.ph
  %xtraiter1924 = and i64 %i.afv, 7               ; 2 uses
  %lcmp.mod1925.not = icmp eq i64 %xtraiter1924, 0
  br i1 %lcmp.mod1925.not, label %vec.epilog.scalar.ph1654.prol.loopexit, label %vec.epilog.scalar.ph1654.prol

vec.epilog.scalar.ph1654.prol:                    ; preds = %vec.epilog.scalar.ph1654.preheader, %vec.epilog.scalar.ph1654.prol
  %indvars.iv903.in.prol = phi i32 [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv903.in.ph, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv896.prol = phi i64 [ %indvars.iv.next897.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv896.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %indvars.iv894.prol = phi i64 [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv894.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %prol.iter1926 = phi i64 [ %prol.iter1926.next, %vec.epilog.scalar.ph1654.prol ], [ 0, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv903.prol = add i32 %indvars.iv903.in.prol, 1 ; 3 uses
  %gep1030.prol = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896.prol
  %i.afw = load double, ptr %gep1030.prol, align 8, !tbaa !9
  %i.afx = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv894.prol
  store double %i.afw, ptr %i.afx, align 8, !tbaa !9
  %indvars.iv.next895.prol = add nsw i64 %indvars.iv894.prol, 1 ; 3 uses
  %indvars.iv.next897.prol = add nuw nsw i64 %indvars.iv896.prol, 1 ; 2 uses
  %prol.iter1926.next = add i64 %prol.iter1926, 1 ; 2 uses
  %prol.iter1926.cmp.not = icmp eq i64 %prol.iter1926.next, %xtraiter1924
  br i1 %prol.iter1926.cmp.not, label %vec.epilog.scalar.ph1654.prol.loopexit, label %vec.epilog.scalar.ph1654.prol, !llvm.loop !73

vec.epilog.scalar.ph1654.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1654.prol, %vec.epilog.scalar.ph1654.preheader
  %indvars.iv903.lcssa1842.unr = phi i32 [ poison, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv.next895.lcssa1841.unr = phi i64 [ poison, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv903.in.unr = phi i32 [ %indvars.iv903.in.ph, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv896.unr = phi i64 [ %indvars.iv896.ph, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv.next897.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv894.unr = phi i64 [ %indvars.iv894.ph, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ]
  %i.afy = sub i64 %indvar1595, %i.aec
  %i.afz = add i64 %i.afy, %indvars.iv896.ph
  %i.aga = icmp ugt i64 %i.afz, -8
  br i1 %i.aga, label %.loopexit1811, label %vec.epilog.scalar.ph1654

vec.epilog.scalar.ph1654:                         ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654
  %indvars.iv903.in = phi i32 [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv903.in.unr, %vec.epilog.scalar.ph1654.prol.loopexit ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv896.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv894.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %gep1030 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %i.agb = load double, ptr %gep1030, align 8, !tbaa !9
  %i.agc = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv894
  store double %i.agb, ptr %i.agc, align 8, !tbaa !9
  %i.agd = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.1 = getelementptr i8, ptr %i.agd, i64 8
  %i.age = load double, ptr %gep1030.1, align 8, !tbaa !9
  %i.agf = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agg = getelementptr i8, ptr %i.agf, i64 8
  store double %i.age, ptr %i.agg, align 8, !tbaa !9
  %i.agh = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.2 = getelementptr i8, ptr %i.agh, i64 16
  %i.agi = load double, ptr %gep1030.2, align 8, !tbaa !9
  %i.agj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agk = getelementptr i8, ptr %i.agj, i64 16
  store double %i.agi, ptr %i.agk, align 8, !tbaa !9
  %i.agl = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.3 = getelementptr i8, ptr %i.agl, i64 24
  %i.agm = load double, ptr %gep1030.3, align 8, !tbaa !9
  %i.agn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.ago = getelementptr i8, ptr %i.agn, i64 24
  store double %i.agm, ptr %i.ago, align 8, !tbaa !9
  %i.agp = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.4 = getelementptr i8, ptr %i.agp, i64 32
  %i.agq = load double, ptr %gep1030.4, align 8, !tbaa !9
  %i.agr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.ags = getelementptr i8, ptr %i.agr, i64 32
  store double %i.agq, ptr %i.ags, align 8, !tbaa !9
  %i.agt = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.5 = getelementptr i8, ptr %i.agt, i64 40
  %i.agu = load double, ptr %gep1030.5, align 8, !tbaa !9
  %i.agv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agw = getelementptr i8, ptr %i.agv, i64 40
  store double %i.agu, ptr %i.agw, align 8, !tbaa !9
  %i.agx = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.6 = getelementptr i8, ptr %i.agx, i64 48
  %i.agy = load double, ptr %gep1030.6, align 8, !tbaa !9
  %i.agz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.aha = getelementptr i8, ptr %i.agz, i64 48
  store double %i.agy, ptr %i.aha, align 8, !tbaa !9
  %indvars.iv903.7 = add i32 %indvars.iv903.in, 8 ; 2 uses
  %i.ahb = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.7 = getelementptr i8, ptr %i.ahb, i64 56
  %i.ahc = load double, ptr %gep1030.7, align 8, !tbaa !9
  %i.ahd = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 56
  store double %i.ahc, ptr %i.ahe, align 8, !tbaa !9
  %indvars.iv.next895.7 = add nsw i64 %indvars.iv894, 8 ; 2 uses
  %indvars.iv.next897.7 = add nuw nsw i64 %indvars.iv896, 8 ; 2 uses
  %exitcond902.not.7 = icmp eq i64 %indvars.iv.next897.7, %indvars.iv916
  br i1 %exitcond902.not.7, label %.loopexit1811, label %vec.epilog.scalar.ph1654, !llvm.loop !74

.loopexit1811:                                    ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654, %vec.epilog.middle.block1664, %middle.block1646
  %indvars.iv903.lcssa = phi i32 [ %i.afu, %vec.epilog.middle.block1664 ], [ %i.afo, %middle.block1646 ], [ %indvars.iv903.lcssa1842.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ]
  %indvars.iv.next895.lcssa = phi i64 [ %i.afp, %vec.epilog.middle.block1664 ], [ %i.afa, %middle.block1646 ], [ %indvars.iv.next895.lcssa1841.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ]
  %i.ahf = sub nsw i64 %indvars.iv.next917, %i.aed ; 2 uses
  %.not432.not606 = icmp slt i64 %i.ahf, %i.aed
  br i1 %.not432.not606, label %iter.check1614, label %._crit_edge611

iter.check1614:                                   ; preds = %.loopexit1811
  %i.ahg = sext i32 %indvars.iv903.lcssa to i64   ; 7 uses
  %invariant.gep1031.a = getelementptr [8 x i8], ptr %3, i64 %i.ahf ; 11 uses
  %min.iters.check1598 = icmp samesign ugt i64 %i.aen, 2
  %or.cond1823 = select i1 %min.iters.check1598, i1 %ident.check1593.not, i1 false
  br i1 %or.cond1823, label %vector.memcheck1594, label %.lr.ph610.preheader

vector.memcheck1594:                              ; preds = %iter.check1614
  %i.ahh = add i64 %i.aeg, %i.aep
  %i.ahi = add nsw i64 %i.aec, %i.aeq
  %i.ahj = shl nsw i64 %i.ahi, 3
  %i.ahk = add i64 %i.ahj, %i.a
  %i.ahl = sub i64 %i.ahh, %i.ahk
  %i.ahm = shl nsw i64 %i.ahg, 3
  %i.ahn = add i64 %i.ahl, %i.ahm
  %i.aho = add i64 %i.ahn, -1
  %diff.check1597 = icmp ult i64 %i.aho, 127
  br i1 %diff.check1597, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1599

vector.main.loop.iter.check1599:                  ; preds = %vector.memcheck1594
  %min.iters.check1600 = icmp samesign ult i64 %i.aen, 15
  br i1 %min.iters.check1600, label %vec.epilog.ph1618, label %vector.ph1601

vector.ph1601:                                    ; preds = %vector.main.loop.iter.check1599
  %i.ahp = and i64 %i.aeo, 12
  %n.vec1602 = and i64 %i.aeo, 8589934576         ; 5 uses
  %i.ahq = add nsw i64 %n.vec1602, %i.aer
  %i.ahr = add nsw i64 %n.vec1602, %i.ahg         ; 2 uses
  %invariant.gep2044.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aer
  %invariant.gep2046.a = getelementptr [8 x i8], ptr %5, i64 %i.ahg
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.body1603, %vector.ph1601
  %index1604 = phi i64 [ 0, %vector.ph1601 ], [ %index.next1609, %vector.body1603 ] ; 3 uses
  %gep2045.a = getelementptr [8 x i8], ptr %invariant.gep2044.a, i64 %index1604 ; 4 uses
  %i.ahs = getelementptr i8, ptr %gep2045.a, i64 32
  %i.aht = getelementptr i8, ptr %gep2045.a, i64 64
  %i.ahu = getelementptr i8, ptr %gep2045.a, i64 96
  %wide.load1605 = load <4 x double>, ptr %gep2045.a, align 8, !tbaa !9
  %wide.load1606 = load <4 x double>, ptr %i.ahs, align 8, !tbaa !9
  %wide.load1607 = load <4 x double>, ptr %i.aht, align 8, !tbaa !9
  %wide.load1608 = load <4 x double>, ptr %i.ahu, align 8, !tbaa !9
  %gep2047.a = getelementptr [8 x i8], ptr %invariant.gep2046.a, i64 %index1604 ; 4 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %gep2047.a, i64 32
  %i.ahw = getelementptr inbounds nuw i8, ptr %gep2047.a, i64 64
  %i.ahx = getelementptr inbounds nuw i8, ptr %gep2047.a, i64 96
  store <4 x double> %wide.load1605, ptr %gep2047.a, align 8, !tbaa !9
  store <4 x double> %wide.load1606, ptr %i.ahv, align 8, !tbaa !9
  store <4 x double> %wide.load1607, ptr %i.ahw, align 8, !tbaa !9
  store <4 x double> %wide.load1608, ptr %i.ahx, align 8, !tbaa !9
  %index.next1609 = add nuw i64 %index1604, 16    ; 2 uses
  %i.ahy = icmp eq i64 %index.next1609, %n.vec1602
  br i1 %i.ahy, label %middle.block1610, label %vector.body1603, !llvm.loop !75

middle.block1610:                                 ; preds = %vector.body1603
  %cmp.n1611 = icmp eq i64 %i.aeo, %n.vec1602
  br i1 %cmp.n1611, label %._crit_edge611, label %vec.epilog.iter.check1616

vec.epilog.iter.check1616:                        ; preds = %middle.block1610
  %min.epilog.iters.check1617 = icmp eq i64 %i.ahp, 0
  br i1 %min.epilog.iters.check1617, label %.lr.ph610.preheader, label %vec.epilog.ph1618, !prof !15

vec.epilog.ph1618:                                ; preds = %vector.main.loop.iter.check1599, %vec.epilog.iter.check1616
  %vec.epilog.resume.val1612 = phi i64 [ %n.vec1602, %vec.epilog.iter.check1616 ], [ 0, %vector.main.loop.iter.check1599 ]
  %n.vec1619 = and i64 %i.aeo, 8589934588         ; 4 uses
  %i.ahz = add nsw i64 %n.vec1619, %i.aer
  %i.aia = add nsw i64 %n.vec1619, %i.ahg         ; 2 uses
  %invariant.gep2048.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aer
  %invariant.gep2050.a = getelementptr [8 x i8], ptr %5, i64 %i.ahg
  br label %vec.epilog.vector.body1620

vec.epilog.vector.body1620:                       ; preds = %vec.epilog.vector.body1620, %vec.epilog.ph1618
  %index1621 = phi i64 [ %vec.epilog.resume.val1612, %vec.epilog.ph1618 ], [ %index.next1623, %vec.epilog.vector.body1620 ] ; 3 uses
  %gep2049.a = getelementptr [8 x i8], ptr %invariant.gep2048.a, i64 %index1621
  %wide.load1622 = load <4 x double>, ptr %gep2049.a, align 8, !tbaa !9
  %gep2051.a = getelementptr [8 x i8], ptr %invariant.gep2050.a, i64 %index1621
  store <4 x double> %wide.load1622, ptr %gep2051.a, align 8, !tbaa !9
  %index.next1623 = add nuw i64 %index1621, 4     ; 2 uses
  %i.aib = icmp eq i64 %index.next1623, %n.vec1619
  br i1 %i.aib, label %vec.epilog.middle.block1624, label %vec.epilog.vector.body1620, !llvm.loop !76

vec.epilog.middle.block1624:                      ; preds = %vec.epilog.vector.body1620
  %cmp.n1625 = icmp eq i64 %i.aeo, %n.vec1619
  br i1 %cmp.n1625, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %vector.memcheck1594, %iter.check1614, %vec.epilog.iter.check1616, %vec.epilog.middle.block1624
  %indvars.iv909.ph = phi i64 [ %i.aer, %iter.check1614 ], [ %i.aer, %vector.memcheck1594 ], [ %i.ahq, %vec.epilog.iter.check1616 ], [ %i.ahz, %vec.epilog.middle.block1624 ] ; 3 uses
  %indvars.iv905.ph = phi i64 [ %i.ahg, %iter.check1614 ], [ %i.ahg, %vector.memcheck1594 ], [ %i.ahr, %vec.epilog.iter.check1616 ], [ %i.aia, %vec.epilog.middle.block1624 ] ; 2 uses
  %i.aic = trunc i64 %indvars.iv909.ph to i32     ; 2 uses
  %i.aid = sub i32 %i.v, %i.aic
  %xtraiter1927 = and i32 %i.aid, 7               ; 2 uses
  %lcmp.mod1928.not = icmp eq i32 %xtraiter1927, 0
  br i1 %lcmp.mod1928.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv909.prol = phi i64 [ %indvars.iv.next910.prol, %.lr.ph610.prol ], [ %indvars.iv909.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %.lr.ph610.prol ], [ %indvars.iv905.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1929 = phi i32 [ %prol.iter1929.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.aie = mul nsw i64 %indvars.iv909.prol, %i.aeb
  %gep1032.prol = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aie
  %i.aif = load double, ptr %gep1032.prol, align 8, !tbaa !9
  %i.aig = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv905.prol
  store double %i.aif, ptr %i.aig, align 8, !tbaa !9
  %indvars.iv.next906.prol = add nsw i64 %indvars.iv905.prol, 1 ; 3 uses
  %indvars.iv.next910.prol = add nsw i64 %indvars.iv909.prol, 1 ; 2 uses
  %prol.iter1929.next = add i32 %prol.iter1929, 1 ; 2 uses
  %prol.iter1929.cmp.not = icmp eq i32 %prol.iter1929.next, %xtraiter1927
  br i1 %prol.iter1929.cmp.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol, !llvm.loop !77

.lr.ph610.prol.loopexit:                          ; preds = %.lr.ph610.prol, %.lr.ph610.preheader
  %indvars.iv.next906.lcssa.unr = phi i64 [ poison, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %indvars.iv909.unr = phi i64 [ %indvars.iv909.ph, %.lr.ph610.preheader ], [ %indvars.iv.next910.prol, %.lr.ph610.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %i.aih = sub i32 %i.aic, %i.v
  %i.aii = icmp ugt i32 %i.aih, -8
  br i1 %i.aii, label %._crit_edge611, label %.lr.ph610

.lr.ph610:                                        ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610
  %indvars.iv909 = phi i64 [ %indvars.iv.next910.7, %.lr.ph610 ], [ %indvars.iv909.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.7, %.lr.ph610 ], [ %indvars.iv905.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %i.aij = mul nsw i64 %indvars.iv909, %i.aeb
  %gep1032 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aij
  %i.aik = load double, ptr %gep1032, align 8, !tbaa !9
  %i.ail = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv905
  store double %i.aik, ptr %i.ail, align 8, !tbaa !9
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, 1
  %i.aim = mul nsw i64 %indvars.iv.next910, %i.aeb
  %gep1032.1 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aim
  %i.ain = load double, ptr %gep1032.1, align 8, !tbaa !9
  %i.aio = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.aip = getelementptr i8, ptr %i.aio, i64 8
  store double %i.ain, ptr %i.aip, align 8, !tbaa !9
  %indvars.iv.next910.1 = add nsw i64 %indvars.iv909, 2
  %i.aiq = mul nsw i64 %indvars.iv.next910.1, %i.aeb
  %gep1032.2 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aiq
  %i.air = load double, ptr %gep1032.2, align 8, !tbaa !9
  %i.ais = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ait = getelementptr i8, ptr %i.ais, i64 16
  store double %i.air, ptr %i.ait, align 8, !tbaa !9
  %indvars.iv.next910.2 = add nsw i64 %indvars.iv909, 3
  %i.aiu = mul nsw i64 %indvars.iv.next910.2, %i.aeb
  %gep1032.3 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aiu
  %i.aiv = load double, ptr %gep1032.3, align 8, !tbaa !9
  %i.aiw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.aix = getelementptr i8, ptr %i.aiw, i64 24
  store double %i.aiv, ptr %i.aix, align 8, !tbaa !9
  %indvars.iv.next910.3 = add nsw i64 %indvars.iv909, 4
  %i.aiy = mul nsw i64 %indvars.iv.next910.3, %i.aeb
  %gep1032.4 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aiy
  %i.aiz = load double, ptr %gep1032.4, align 8, !tbaa !9
  %i.aja = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ajb = getelementptr i8, ptr %i.aja, i64 32
  store double %i.aiz, ptr %i.ajb, align 8, !tbaa !9
  %indvars.iv.next910.4 = add nsw i64 %indvars.iv909, 5
  %i.ajc = mul nsw i64 %indvars.iv.next910.4, %i.aeb
  %gep1032.5 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ajc
  %i.ajd = load double, ptr %gep1032.5, align 8, !tbaa !9
  %i.aje = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ajf = getelementptr i8, ptr %i.aje, i64 40
  store double %i.ajd, ptr %i.ajf, align 8, !tbaa !9
  %indvars.iv.next910.5 = add nsw i64 %indvars.iv909, 6
  %i.ajg = mul nsw i64 %indvars.iv.next910.5, %i.aeb
  %gep1032.6 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ajg
  %i.ajh = load double, ptr %gep1032.6, align 8, !tbaa !9
  %i.aji = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ajj = getelementptr i8, ptr %i.aji, i64 48
  store double %i.ajh, ptr %i.ajj, align 8, !tbaa !9
  %indvars.iv.next910.6 = add nsw i64 %indvars.iv909, 7
  %i.ajk = mul nsw i64 %indvars.iv.next910.6, %i.aeb
  %gep1032.7 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ajk
  %i.ajl = load double, ptr %gep1032.7, align 8, !tbaa !9
  %i.ajm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 56
  store double %i.ajl, ptr %i.ajn, align 8, !tbaa !9
  %indvars.iv.next906.7 = add nsw i64 %indvars.iv905, 8 ; 2 uses
  %indvars.iv.next910.7 = add nsw i64 %indvars.iv909, 8 ; 2 uses
  %lftr.wideiv914.7 = trunc i64 %indvars.iv.next910.7 to i32
  %exitcond915.not.7 = icmp eq i32 %i.v, %lftr.wideiv914.7
  br i1 %exitcond915.not.7, label %._crit_edge611, label %.lr.ph610, !llvm.loop !78

._crit_edge611:                                   ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610, %middle.block1610, %vec.epilog.middle.block1624, %.loopexit1811
  %.21.lcssa.in = phi i64 [ %indvars.iv.next895.lcssa, %.loopexit1811 ], [ %i.aia, %vec.epilog.middle.block1624 ], [ %i.ahr, %middle.block1610 ], [ %indvars.iv.next906.lcssa.unr, %.lr.ph610.prol.loopexit ], [ %indvars.iv.next906.7, %.lr.ph610 ]
  %.21.lcssa = trunc i64 %.21.lcssa.in to i32
  %.reass.reass = add i32 %.21.lcssa, %invariant.op
  %.not430.not = icmp sgt i64 %indvars.iv.next917, %i.aed
  %indvars.iv.next908 = add i32 %indvars.iv907, -1
  %indvar.next1596 = add i64 %indvar1595, 1
  br i1 %.not430.not, label %iter.check1653, label %.loopexit, !llvm.loop !79

iter.check1468:                                   ; preds = %.thread461
  %i.ajo = mul nsw i32 %i.v, %i.d
  %i.ajp = lshr exact i32 %i.i, 1
  %i.ajq = zext nneg i32 %i.ajp to i64            ; 10 uses
  %i.ajr = sext i32 %i.ajo to i64                 ; 2 uses
  %i.ajs = zext nneg i32 %i.i to i64              ; 2 uses
  %invariant.gep1021 = getelementptr [8 x i8], ptr %3, i64 %i.ajr ; 3 uses
  %i.ajt = add nuw nsw i64 %i.ajq, 1
  %umax1452 = tail call i64 @llvm.umax.i64(i64 %i.ajt, i64 %i.ajs)
  %i.aju = sub nsw i64 %umax1452, %i.ajq          ; 7 uses
  %min.iters.check1453 = icmp ult i64 %i.aju, 4
  br i1 %min.iters.check1453, label %vec.epilog.scalar.ph1469.preheader, label %vector.memcheck1450

vector.memcheck1450:                              ; preds = %iter.check1468
  %i.ajv = add nsw i64 %i.ajq, %i.ajr
  %i.ajw = shl nsw i64 %i.ajv, 3
  %i.ajx = add i64 %i.ajw, %i.a
  %i.ajy = sub i64 %i.ajx, %i.b
  %diff.check1451 = icmp ugt i64 %i.ajy, -128
  br i1 %diff.check1451, label %vec.epilog.scalar.ph1469.preheader, label %vector.main.loop.iter.check1454

vector.main.loop.iter.check1454:                  ; preds = %vector.memcheck1450
  %min.iters.check1455 = icmp ult i64 %i.aju, 16
  br i1 %min.iters.check1455, label %vec.epilog.ph1472, label %vector.ph1456

vector.ph1456:                                    ; preds = %vector.main.loop.iter.check1454
  %i.ajz = and i64 %i.aju, 12
  %n.vec1457 = and i64 %i.aju, -16                ; 6 uses
  %i.aka = add nsw i64 %n.vec1457, %i.ajq
  %invariant.gep2028 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.ajq
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1464, %vector.body1458 ] ; 3 uses
  %gep2029 = getelementptr [8 x i8], ptr %invariant.gep2028, i64 %index1459 ; 4 uses
  %i.akb = getelementptr i8, ptr %gep2029, i64 32
  %i.akc = getelementptr i8, ptr %gep2029, i64 64
  %i.akd = getelementptr i8, ptr %gep2029, i64 96
  %wide.load1460 = load <4 x double>, ptr %gep2029, align 8, !tbaa !9
  %wide.load1461 = load <4 x double>, ptr %i.akb, align 8, !tbaa !9
  %wide.load1462 = load <4 x double>, ptr %i.akc, align 8, !tbaa !9
  %wide.load1463 = load <4 x double>, ptr %i.akd, align 8, !tbaa !9
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1459 ; 4 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 32
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 64
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ake, i64 96
  store <4 x double> %wide.load1460, ptr %i.ake, align 8, !tbaa !9
  store <4 x double> %wide.load1461, ptr %i.akf, align 8, !tbaa !9
  store <4 x double> %wide.load1462, ptr %i.akg, align 8, !tbaa !9
  store <4 x double> %wide.load1463, ptr %i.akh, align 8, !tbaa !9
  %index.next1464 = add nuw i64 %index1459, 16    ; 2 uses
  %i.aki = icmp eq i64 %index.next1464, %n.vec1457
  br i1 %i.aki, label %middle.block1465, label %vector.body1458, !llvm.loop !80

middle.block1465:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %i.aju, %n.vec1457
  br i1 %cmp.n1466, label %._crit_edge579, label %vec.epilog.iter.check1470

vec.epilog.iter.check1470:                        ; preds = %middle.block1465
  %min.epilog.iters.check1471 = icmp eq i64 %i.ajz, 0
  br i1 %min.epilog.iters.check1471, label %vec.epilog.scalar.ph1469.preheader, label %vec.epilog.ph1472, !prof !15

vec.epilog.ph1472:                                ; preds = %vector.main.loop.iter.check1454, %vec.epilog.iter.check1470
  %vec.epilog.resume.val1467 = phi i64 [ %n.vec1457, %vec.epilog.iter.check1470 ], [ 0, %vector.main.loop.iter.check1454 ]
  %n.vec1473 = and i64 %i.aju, -4                 ; 5 uses
  %i.akj = add nsw i64 %n.vec1473, %i.ajq
  %invariant.gep2030 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.ajq
  br label %vec.epilog.vector.body1474

vec.epilog.vector.body1474:                       ; preds = %vec.epilog.vector.body1474, %vec.epilog.ph1472
  %index1475 = phi i64 [ %vec.epilog.resume.val1467, %vec.epilog.ph1472 ], [ %index.next1477, %vec.epilog.vector.body1474 ] ; 3 uses
  %gep2031 = getelementptr [8 x i8], ptr %invariant.gep2030, i64 %index1475
  %wide.load1476 = load <4 x double>, ptr %gep2031, align 8, !tbaa !9
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1475
  store <4 x double> %wide.load1476, ptr %i.akk, align 8, !tbaa !9
  %index.next1477 = add nuw i64 %index1475, 4     ; 2 uses
  %i.akl = icmp eq i64 %index.next1477, %n.vec1473
  br i1 %i.akl, label %vec.epilog.middle.block1478, label %vec.epilog.vector.body1474, !llvm.loop !81

vec.epilog.middle.block1478:                      ; preds = %vec.epilog.vector.body1474
  %cmp.n1479 = icmp eq i64 %i.aju, %n.vec1473
  br i1 %cmp.n1479, label %._crit_edge579, label %vec.epilog.scalar.ph1469.preheader

vec.epilog.scalar.ph1469.preheader:               ; preds = %vector.memcheck1450, %iter.check1468, %vec.epilog.iter.check1470, %vec.epilog.middle.block1478
  %indvars.iv843.ph = phi i64 [ %i.ajq, %iter.check1468 ], [ %i.ajq, %vector.memcheck1450 ], [ %i.aka, %vec.epilog.iter.check1470 ], [ %i.akj, %vec.epilog.middle.block1478 ]
  %indvars.iv841.ph = phi i64 [ 0, %iter.check1468 ], [ 0, %vector.memcheck1450 ], [ %n.vec1457, %vec.epilog.iter.check1470 ], [ %n.vec1473, %vec.epilog.middle.block1478 ]
  br label %vec.epilog.scalar.ph1469

vec.epilog.scalar.ph1469:                         ; preds = %vec.epilog.scalar.ph1469.preheader, %vec.epilog.scalar.ph1469
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %vec.epilog.scalar.ph1469 ], [ %indvars.iv843.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ], [ %indvars.iv841.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %gep1022 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %indvars.iv843
  %i.akm = load double, ptr %gep1022, align 8, !tbaa !9
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv841
  store double %i.akm, ptr %i.akn, align 8, !tbaa !9
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 1 ; 2 uses
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %.not424.not = icmp samesign ult i64 %indvars.iv.next844, %i.ajs
  br i1 %.not424.not, label %vec.epilog.scalar.ph1469, label %._crit_edge579, !llvm.loop !82

._crit_edge579:                                   ; preds = %vec.epilog.scalar.ph1469, %vec.epilog.middle.block1478, %middle.block1465
  %indvars.iv.next842.lcssa = phi i64 [ %n.vec1473, %vec.epilog.middle.block1478 ], [ %n.vec1457, %middle.block1465 ], [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ] ; 2 uses
  %.not425590 = icmp samesign ult i32 %i.i, 4
  br i1 %.not425590, label %.preheader471.preheader, label %.preheader473.lr.ph

.preheader473.lr.ph:                              ; preds = %._crit_edge579
  %i.ako = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.akp = sext i32 %i.d to i64                   ; 8 uses
  %i.akq = zext nneg i32 %i.ako to i64            ; 2 uses
  %i.akr = zext nneg i32 %i.i to i64
  %i.aks = add nsw i32 %i.v, -1
  %wide.trip.count878 = zext nneg i32 %i.aks to i64
  %i.akt = mul nsw i64 %i.akq, %i.akp
  %i.aku = mul nsw i64 %i.akp, -8
  %i.akv = add nsw i32 %i.i, -2
  %ident.check1515.not = icmp eq i32 %i.d, 1
  br label %iter.check1541

iter.check1541:                                   ; preds = %.preheader473.lr.ph, %._crit_edge588
  %indvars.iv873 = phi i64 [ 0, %.preheader473.lr.ph ], [ %indvars.iv.next874, %._crit_edge588 ] ; 7 uses
  %indvars.iv871 = phi i64 [ 1, %.preheader473.lr.ph ], [ %indvars.iv.next872, %._crit_edge588 ] ; 10 uses
  %indvars.iv862 = phi i32 [ %i.ako, %.preheader473.lr.ph ], [ %indvars.iv.next863, %._crit_edge588 ] ; 3 uses
  %.23592.in = phi i64 [ %indvars.iv.next842.lcssa, %.preheader473.lr.ph ], [ %.25.lcssa.in, %._crit_edge588 ] ; 2 uses
  %i.akw = trunc i64 %indvars.iv873 to i32
  %i.akx = add i32 %i.v, %i.akw
  %i.aky = sub i32 %i.akv, %i.akx                 ; 3 uses
  %i.akz = zext i32 %i.aky to i64
  %i.ala = add nuw nsw i64 %i.akz, 1              ; 5 uses
  %i.alb = mul i64 %i.aku, %indvars.iv873
  %i.alc = sext i32 %indvars.iv862 to i64
  %.23592 = trunc i64 %.23592.in to i32           ; 4 uses
  %i.ald = sext i32 %indvars.iv862 to i64         ; 6 uses
  %sext983 = shl i64 %.23592.in, 32               ; 2 uses
  %i.ale = ashr exact i64 %sext983, 32            ; 6 uses
  %invariant.gep1023 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv873 ; 7 uses
  %min.iters.check1518 = icmp samesign ugt i64 %indvars.iv871, 3
  %or.cond1824 = select i1 %min.iters.check1518, i1 %ident.check1515.not, i1 false
  br i1 %or.cond1824, label %vector.memcheck1516, label %vec.epilog.scalar.ph1542.preheader

vector.memcheck1516:                              ; preds = %iter.check1541
  %i.alf = shl i64 %indvars.iv873, 3
  %i.alg = add i64 %i.alf, %i.a
  %i.alh = sub i64 %i.b, %i.alg
  %i.ali = ashr exact i64 %sext983, 29
  %i.alj = add i64 %i.alh, %i.ali
  %i.alk = add i64 %i.alj, -1
  %diff.check1517 = icmp ult i64 %i.alk, 127
  br i1 %diff.check1517, label %vec.epilog.scalar.ph1542.preheader, label %vector.main.loop.iter.check1519

vector.main.loop.iter.check1519:                  ; preds = %vector.memcheck1516
  %min.iters.check1520 = icmp samesign ult i64 %indvars.iv871, 16
  br i1 %min.iters.check1520, label %vec.epilog.ph1545, label %vector.ph1521

vector.ph1521:                                    ; preds = %vector.main.loop.iter.check1519
  %i.all = and i64 %indvars.iv871, 12
  %n.vec1522 = and i64 %indvars.iv871, 9223372036854775792 ; 5 uses
  %i.alm = add i64 %i.ale, %n.vec1522             ; 2 uses
  %i.aln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.23592, i64 0
  %i.alo = getelementptr [8 x i8], ptr %5, i64 %i.ale
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1521
  %index1524 = phi i64 [ 0, %vector.ph1521 ], [ %index.next1533, %vector.body1523 ] ; 3 uses
  %vec.phi1525 = phi <4 x i32> [ %i.aln, %vector.ph1521 ], [ %i.alp, %vector.body1523 ]
  %vec.phi1526 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alq, %vector.body1523 ]
  %vec.phi1527 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alr, %vector.body1523 ]
  %vec.phi1528 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.als, %vector.body1523 ]
  %i.alp = add <4 x i32> %vec.phi1525, splat (i32 1) ; 2 uses
  %i.alq = add <4 x i32> %vec.phi1526, splat (i32 1) ; 2 uses
  %i.alr = add <4 x i32> %vec.phi1527, splat (i32 1) ; 2 uses
  %i.als = add <4 x i32> %vec.phi1528, splat (i32 1) ; 2 uses
  %i.alt = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1524 ; 4 uses
  %i.alu = getelementptr i8, ptr %i.alt, i64 32
  %i.alv = getelementptr i8, ptr %i.alt, i64 64
  %i.alw = getelementptr i8, ptr %i.alt, i64 96
  %wide.load1529 = load <4 x double>, ptr %i.alt, align 8, !tbaa !9
  %wide.load1530 = load <4 x double>, ptr %i.alu, align 8, !tbaa !9
  %wide.load1531 = load <4 x double>, ptr %i.alv, align 8, !tbaa !9
  %wide.load1532 = load <4 x double>, ptr %i.alw, align 8, !tbaa !9
  %i.alx = getelementptr [8 x i8], ptr %i.alo, i64 %index1524 ; 4 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 32
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alx, i64 64
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alx, i64 96
  store <4 x double> %wide.load1529, ptr %i.alx, align 8, !tbaa !9
  store <4 x double> %wide.load1530, ptr %i.aly, align 8, !tbaa !9
  store <4 x double> %wide.load1531, ptr %i.alz, align 8, !tbaa !9
  store <4 x double> %wide.load1532, ptr %i.ama, align 8, !tbaa !9
  %index.next1533 = add nuw i64 %index1524, 16    ; 2 uses
  %i.amb = icmp eq i64 %index.next1533, %n.vec1522
  br i1 %i.amb, label %middle.block1534, label %vector.body1523, !llvm.loop !83

middle.block1534:                                 ; preds = %vector.body1523
  %bin.rdx1535 = add <4 x i32> %i.alq, %i.alp
  %bin.rdx1536 = add <4 x i32> %i.alr, %bin.rdx1535
  %bin.rdx1537 = add <4 x i32> %i.als, %bin.rdx1536
  %i.amc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1537) ; 3 uses
  %cmp.n1538 = icmp eq i64 %indvars.iv871, %n.vec1522
  br i1 %cmp.n1538, label %.loopexit1812, label %vec.epilog.iter.check1543

vec.epilog.iter.check1543:                        ; preds = %middle.block1534
  %min.epilog.iters.check1544 = icmp eq i64 %i.all, 0
  br i1 %min.epilog.iters.check1544, label %vec.epilog.scalar.ph1542.preheader, label %vec.epilog.ph1545, !prof !15

vec.epilog.ph1545:                                ; preds = %vector.main.loop.iter.check1519, %vec.epilog.iter.check1543
  %vec.epilog.resume.val1539 = phi i64 [ %n.vec1522, %vec.epilog.iter.check1543 ], [ 0, %vector.main.loop.iter.check1519 ]
  %bc.merge.rdx1540 = phi i32 [ %i.amc, %vec.epilog.iter.check1543 ], [ %.23592, %vector.main.loop.iter.check1519 ]
  %n.vec1546 = and i64 %indvars.iv871, 9223372036854775804 ; 4 uses
  %i.amd = add i64 %i.ale, %n.vec1546             ; 2 uses
  %i.ame = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1540, i64 0
  %i.amf = getelementptr [8 x i8], ptr %5, i64 %i.ale
  br label %vec.epilog.vector.body1547

vec.epilog.vector.body1547:                       ; preds = %vec.epilog.vector.body1547, %vec.epilog.ph1545
  %index1548 = phi i64 [ %vec.epilog.resume.val1539, %vec.epilog.ph1545 ], [ %index.next1551, %vec.epilog.vector.body1547 ] ; 3 uses
  %vec.phi1549 = phi <4 x i32> [ %i.ame, %vec.epilog.ph1545 ], [ %i.amg, %vec.epilog.vector.body1547 ]
  %i.amg = add <4 x i32> %vec.phi1549, splat (i32 1) ; 2 uses
  %i.amh = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1548
  %wide.load1550 = load <4 x double>, ptr %i.amh, align 8, !tbaa !9
  %i.ami = getelementptr [8 x i8], ptr %i.amf, i64 %index1548
  store <4 x double> %wide.load1550, ptr %i.ami, align 8, !tbaa !9
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.amj = icmp eq i64 %index.next1551, %n.vec1546
  br i1 %i.amj, label %vec.epilog.middle.block1552, label %vec.epilog.vector.body1547, !llvm.loop !84

vec.epilog.middle.block1552:                      ; preds = %vec.epilog.vector.body1547
  %i.amk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.amg) ; 2 uses
  %cmp.n1553 = icmp eq i64 %indvars.iv871, %n.vec1546
  br i1 %cmp.n1553, label %.loopexit1812, label %vec.epilog.scalar.ph1542.preheader

vec.epilog.scalar.ph1542.preheader:               ; preds = %vector.memcheck1516, %iter.check1541, %vec.epilog.iter.check1543, %vec.epilog.middle.block1552
  %indvars.iv858.in.ph = phi i32 [ %.23592, %iter.check1541 ], [ %.23592, %vector.memcheck1516 ], [ %i.amc, %vec.epilog.iter.check1543 ], [ %i.amk, %vec.epilog.middle.block1552 ] ; 2 uses
  %indvars.iv848.ph = phi i64 [ 0, %iter.check1541 ], [ 0, %vector.memcheck1516 ], [ %n.vec1522, %vec.epilog.iter.check1543 ], [ %n.vec1546, %vec.epilog.middle.block1552 ] ; 3 uses
  %indvars.iv846.ph = phi i64 [ %i.ale, %iter.check1541 ], [ %i.ale, %vector.memcheck1516 ], [ %i.alm, %vec.epilog.iter.check1543 ], [ %i.amd, %vec.epilog.middle.block1552 ] ; 2 uses
  %i.aml = sub nsw i64 %indvars.iv873, %indvars.iv848.ph
  %xtraiter1915 = and i64 %indvars.iv871, 3       ; 2 uses
  %lcmp.mod1916.not = icmp eq i64 %xtraiter1915, 0
  br i1 %lcmp.mod1916.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol

vec.epilog.scalar.ph1542.prol:                    ; preds = %vec.epilog.scalar.ph1542.preheader, %vec.epilog.scalar.ph1542.prol
  %indvars.iv858.in.prol = phi i32 [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv858.in.ph, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv848.prol = phi i64 [ %indvars.iv.next849.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv848.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %indvars.iv846.prol = phi i64 [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %prol.iter1917 = phi i64 [ %prol.iter1917.next, %vec.epilog.scalar.ph1542.prol ], [ 0, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv858.prol = add i32 %indvars.iv858.in.prol, 1 ; 3 uses
  %i.amm = mul nsw i64 %indvars.iv848.prol, %i.akp
  %gep1024.prol = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amm
  %i.amn = load double, ptr %gep1024.prol, align 8, !tbaa !9
  %i.amo = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv846.prol
  store double %i.amn, ptr %i.amo, align 8, !tbaa !9
  %indvars.iv.next847.prol = add nsw i64 %indvars.iv846.prol, 1 ; 3 uses
  %indvars.iv.next849.prol = add nuw nsw i64 %indvars.iv848.prol, 1 ; 2 uses
  %prol.iter1917.next = add i64 %prol.iter1917, 1 ; 2 uses
  %prol.iter1917.cmp.not = icmp eq i64 %prol.iter1917.next, %xtraiter1915
  br i1 %prol.iter1917.cmp.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol, !llvm.loop !85

vec.epilog.scalar.ph1542.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1542.prol, %vec.epilog.scalar.ph1542.preheader
  %indvars.iv858.lcssa1851.unr = phi i32 [ poison, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv.next847.lcssa1850.unr = phi i64 [ poison, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv858.in.unr = phi i32 [ %indvars.iv858.in.ph, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv848.unr = phi i64 [ %indvars.iv848.ph, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv.next849.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv846.unr = phi i64 [ %indvars.iv846.ph, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ]
  %i.amp = icmp ult i64 %i.aml, 3
  br i1 %i.amp, label %.loopexit1812, label %vec.epilog.scalar.ph1542

vec.epilog.scalar.ph1542:                         ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542
  %indvars.iv858.in = phi i32 [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv858.in.unr, %vec.epilog.scalar.ph1542.prol.loopexit ]
  %indvars.iv848 = phi i64 [ %indvars.iv.next849.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv848.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv846.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %i.amq = mul nsw i64 %indvars.iv848, %i.akp
  %gep1024 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amq
  %i.amr = load double, ptr %gep1024, align 8, !tbaa !9
  %i.ams = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv846
  store double %i.amr, ptr %i.ams, align 8, !tbaa !9
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1
  %i.amt = mul nsw i64 %indvars.iv.next849, %i.akp
  %gep1024.1 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amt
  %i.amu = load double, ptr %gep1024.1, align 8, !tbaa !9
  %i.amv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv846
  %i.amw = getelementptr i8, ptr %i.amv, i64 8
  store double %i.amu, ptr %i.amw, align 8, !tbaa !9
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2
  %i.amx = mul nsw i64 %indvars.iv.next849.1, %i.akp
  %gep1024.2 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amx
  %i.amy = load double, ptr %gep1024.2, align 8, !tbaa !9
  %i.amz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv846
  %i.ana = getelementptr i8, ptr %i.amz, i64 16
  store double %i.amy, ptr %i.ana, align 8, !tbaa !9
  %indvars.iv.next849.2 = add nuw nsw i64 %indvars.iv848, 3
  %indvars.iv858.3 = add i32 %indvars.iv858.in, 4 ; 2 uses
  %i.anb = mul nsw i64 %indvars.iv.next849.2, %i.akp
  %gep1024.3 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.anb
  %i.anc = load double, ptr %gep1024.3, align 8, !tbaa !9
  %i.and = getelementptr [8 x i8], ptr %5, i64 %indvars.iv846
  %i.ane = getelementptr i8, ptr %i.and, i64 24
  store double %i.anc, ptr %i.ane, align 8, !tbaa !9
  %indvars.iv.next847.3 = add nsw i64 %indvars.iv846, 4 ; 2 uses
  %indvars.iv.next849.3 = add nuw nsw i64 %indvars.iv848, 4 ; 2 uses
  %exitcond856.not.3 = icmp eq i64 %indvars.iv.next849.3, %indvars.iv871
  br i1 %exitcond856.not.3, label %.loopexit1812, label %vec.epilog.scalar.ph1542, !llvm.loop !86

.loopexit1812:                                    ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542, %vec.epilog.middle.block1552, %middle.block1534
  %indvars.iv858.lcssa = phi i32 [ %i.amk, %vec.epilog.middle.block1552 ], [ %i.amc, %middle.block1534 ], [ %indvars.iv858.lcssa1851.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ]
  %indvars.iv.next847.lcssa = phi i64 [ %i.amd, %vec.epilog.middle.block1552 ], [ %i.alm, %middle.block1534 ], [ %indvars.iv.next847.lcssa1850.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ]
  %i.anf = add nuw nsw i64 %indvars.iv873, %i.akq ; 2 uses
  %.not429.not583 = icmp samesign ult i64 %i.anf, %i.akr
  br i1 %.not429.not583, label %iter.check1500, label %._crit_edge588

iter.check1500:                                   ; preds = %.loopexit1812
  %i.ang = mul nsw i64 %i.anf, %i.akp
  %i.anh = sext i32 %indvars.iv858.lcssa to i64   ; 7 uses
  %invariant.gep1025 = getelementptr [8 x i8], ptr %3, i64 %i.ang ; 11 uses
  %min.iters.check1484 = icmp ult i32 %i.aky, 3
  br i1 %min.iters.check1484, label %vec.epilog.scalar.ph1501.preheader, label %vector.memcheck1482

vector.memcheck1482:                              ; preds = %iter.check1500
  %i.ani = add i64 %i.alb, %i.b
  %i.anj = add i64 %i.akt, %i.alc
  %i.ank = shl i64 %i.anj, 3
  %i.anl = add i64 %i.ank, %i.a
  %i.anm = sub i64 %i.ani, %i.anl
  %i.ann = shl nsw i64 %i.anh, 3
  %i.ano = add i64 %i.anm, %i.ann
  %i.anp = add i64 %i.ano, -1
  %diff.check1483 = icmp ult i64 %i.anp, 127
  br i1 %diff.check1483, label %vec.epilog.scalar.ph1501.preheader, label %vector.main.loop.iter.check1485

vector.main.loop.iter.check1485:                  ; preds = %vector.memcheck1482
  %min.iters.check1486 = icmp ult i32 %i.aky, 15
  br i1 %min.iters.check1486, label %vec.epilog.ph1504, label %vector.ph1487

vector.ph1487:                                    ; preds = %vector.main.loop.iter.check1485
  %i.anq = and i64 %i.ala, 12
  %n.vec1488 = and i64 %i.ala, 8589934576         ; 5 uses
  %i.anr = add nsw i64 %n.vec1488, %i.ald
  %i.ans = add nsw i64 %n.vec1488, %i.anh         ; 2 uses
  %invariant.gep2032 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.ald
  %invariant.gep2034 = getelementptr [8 x i8], ptr %5, i64 %i.anh
  br label %vector.body1489

vector.body1489:                                  ; preds = %vector.body1489, %vector.ph1487
  %index1490 = phi i64 [ 0, %vector.ph1487 ], [ %index.next1495, %vector.body1489 ] ; 3 uses
  %gep2033 = getelementptr [8 x i8], ptr %invariant.gep2032, i64 %index1490 ; 4 uses
  %i.ant = getelementptr i8, ptr %gep2033, i64 32
  %i.anu = getelementptr i8, ptr %gep2033, i64 64
  %i.anv = getelementptr i8, ptr %gep2033, i64 96
  %wide.load1491 = load <4 x double>, ptr %gep2033, align 8, !tbaa !9
  %wide.load1492 = load <4 x double>, ptr %i.ant, align 8, !tbaa !9
  %wide.load1493 = load <4 x double>, ptr %i.anu, align 8, !tbaa !9
  %wide.load1494 = load <4 x double>, ptr %i.anv, align 8, !tbaa !9
  %gep2035 = getelementptr [8 x i8], ptr %invariant.gep2034, i64 %index1490 ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %gep2035, i64 32
  %i.anx = getelementptr inbounds nuw i8, ptr %gep2035, i64 64
  %i.any = getelementptr inbounds nuw i8, ptr %gep2035, i64 96
  store <4 x double> %wide.load1491, ptr %gep2035, align 8, !tbaa !9
  store <4 x double> %wide.load1492, ptr %i.anw, align 8, !tbaa !9
  store <4 x double> %wide.load1493, ptr %i.anx, align 8, !tbaa !9
  store <4 x double> %wide.load1494, ptr %i.any, align 8, !tbaa !9
  %index.next1495 = add nuw i64 %index1490, 16    ; 2 uses
  %i.anz = icmp eq i64 %index.next1495, %n.vec1488
  br i1 %i.anz, label %middle.block1496, label %vector.body1489, !llvm.loop !87

middle.block1496:                                 ; preds = %vector.body1489
  %cmp.n1497 = icmp eq i64 %i.ala, %n.vec1488
  br i1 %cmp.n1497, label %._crit_edge588, label %vec.epilog.iter.check1502

vec.epilog.iter.check1502:                        ; preds = %middle.block1496
  %min.epilog.iters.check1503 = icmp eq i64 %i.anq, 0
  br i1 %min.epilog.iters.check1503, label %vec.epilog.scalar.ph1501.preheader, label %vec.epilog.ph1504, !prof !15

vec.epilog.ph1504:                                ; preds = %vector.main.loop.iter.check1485, %vec.epilog.iter.check1502
  %vec.epilog.resume.val1498 = phi i64 [ %n.vec1488, %vec.epilog.iter.check1502 ], [ 0, %vector.main.loop.iter.check1485 ]
  %n.vec1505 = and i64 %i.ala, 8589934588         ; 4 uses
  %i.aoa = add nsw i64 %n.vec1505, %i.ald
  %i.aob = add nsw i64 %n.vec1505, %i.anh         ; 2 uses
  %invariant.gep2036 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.ald
  %invariant.gep2038 = getelementptr [8 x i8], ptr %5, i64 %i.anh
  br label %vec.epilog.vector.body1506

vec.epilog.vector.body1506:                       ; preds = %vec.epilog.vector.body1506, %vec.epilog.ph1504
  %index1507 = phi i64 [ %vec.epilog.resume.val1498, %vec.epilog.ph1504 ], [ %index.next1509, %vec.epilog.vector.body1506 ] ; 3 uses
  %gep2037 = getelementptr [8 x i8], ptr %invariant.gep2036, i64 %index1507
  %wide.load1508 = load <4 x double>, ptr %gep2037, align 8, !tbaa !9
  %gep2039 = getelementptr [8 x i8], ptr %invariant.gep2038, i64 %index1507
  store <4 x double> %wide.load1508, ptr %gep2039, align 8, !tbaa !9
  %index.next1509 = add nuw i64 %index1507, 4     ; 2 uses
  %i.aoc = icmp eq i64 %index.next1509, %n.vec1505
  br i1 %i.aoc, label %vec.epilog.middle.block1510, label %vec.epilog.vector.body1506, !llvm.loop !88

vec.epilog.middle.block1510:                      ; preds = %vec.epilog.vector.body1506
  %cmp.n1511 = icmp eq i64 %i.ala, %n.vec1505
  br i1 %cmp.n1511, label %._crit_edge588, label %vec.epilog.scalar.ph1501.preheader

vec.epilog.scalar.ph1501.preheader:               ; preds = %vector.memcheck1482, %iter.check1500, %vec.epilog.iter.check1502, %vec.epilog.middle.block1510
  %indvars.iv864.ph = phi i64 [ %i.ald, %iter.check1500 ], [ %i.ald, %vector.memcheck1482 ], [ %i.anr, %vec.epilog.iter.check1502 ], [ %i.aoa, %vec.epilog.middle.block1510 ] ; 3 uses
  %indvars.iv860.ph = phi i64 [ %i.anh, %iter.check1500 ], [ %i.anh, %vector.memcheck1482 ], [ %i.ans, %vec.epilog.iter.check1502 ], [ %i.aob, %vec.epilog.middle.block1510 ] ; 2 uses
  %i.aod = trunc i64 %indvars.iv864.ph to i32     ; 2 uses
  %i.aoe = sub i32 %i.i, %i.aod
  %xtraiter1918 = and i32 %i.aoe, 7               ; 2 uses
  %lcmp.mod1919.not = icmp eq i32 %xtraiter1918, 0
  br i1 %lcmp.mod1919.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol

vec.epilog.scalar.ph1501.prol:                    ; preds = %vec.epilog.scalar.ph1501.preheader, %vec.epilog.scalar.ph1501.prol
  %indvars.iv864.prol = phi i64 [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %indvars.iv860.prol = phi i64 [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %prol.iter1920 = phi i32 [ %prol.iter1920.next, %vec.epilog.scalar.ph1501.prol ], [ 0, %vec.epilog.scalar.ph1501.preheader ]
  %gep1026.prol = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864.prol
  %i.aof = load double, ptr %gep1026.prol, align 8, !tbaa !9
  %i.aog = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv860.prol
  store double %i.aof, ptr %i.aog, align 8, !tbaa !9
  %indvars.iv.next861.prol = add nsw i64 %indvars.iv860.prol, 1 ; 3 uses
  %indvars.iv.next865.prol = add nsw i64 %indvars.iv864.prol, 1 ; 2 uses
  %prol.iter1920.next = add i32 %prol.iter1920, 1 ; 2 uses
  %prol.iter1920.cmp.not = icmp eq i32 %prol.iter1920.next, %xtraiter1918
  br i1 %prol.iter1920.cmp.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol, !llvm.loop !89

vec.epilog.scalar.ph1501.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1501.prol, %vec.epilog.scalar.ph1501.preheader
  %indvars.iv.next861.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv864.unr = phi i64 [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv860.unr = phi i64 [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %i.aoh = sub i32 %i.aod, %i.i
  %i.aoi = icmp ugt i32 %i.aoh, -8
  br i1 %i.aoi, label %._crit_edge588, label %vec.epilog.scalar.ph1501

vec.epilog.scalar.ph1501:                         ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501
  %indvars.iv864 = phi i64 [ %indvars.iv.next865.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv864.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %indvars.iv860 = phi i64 [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv860.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %gep1026 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %i.aoj = load double, ptr %gep1026, align 8, !tbaa !9
  %i.aok = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv860
  store double %i.aoj, ptr %i.aok, align 8, !tbaa !9
  %i.aol = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.1 = getelementptr i8, ptr %i.aol, i64 8
  %i.aom = load double, ptr %gep1026.1, align 8, !tbaa !9
  %i.aon = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.aoo = getelementptr i8, ptr %i.aon, i64 8
  store double %i.aom, ptr %i.aoo, align 8, !tbaa !9
  %i.aop = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.2 = getelementptr i8, ptr %i.aop, i64 16
  %i.aoq = load double, ptr %gep1026.2, align 8, !tbaa !9
  %i.aor = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.aos = getelementptr i8, ptr %i.aor, i64 16
  store double %i.aoq, ptr %i.aos, align 8, !tbaa !9
  %i.aot = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.3 = getelementptr i8, ptr %i.aot, i64 24
  %i.aou = load double, ptr %gep1026.3, align 8, !tbaa !9
  %i.aov = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.aow = getelementptr i8, ptr %i.aov, i64 24
  store double %i.aou, ptr %i.aow, align 8, !tbaa !9
  %i.aox = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.4 = getelementptr i8, ptr %i.aox, i64 32
  %i.aoy = load double, ptr %gep1026.4, align 8, !tbaa !9
  %i.aoz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.apa = getelementptr i8, ptr %i.aoz, i64 32
  store double %i.aoy, ptr %i.apa, align 8, !tbaa !9
  %i.apb = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.5 = getelementptr i8, ptr %i.apb, i64 40
  %i.apc = load double, ptr %gep1026.5, align 8, !tbaa !9
  %i.apd = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.ape = getelementptr i8, ptr %i.apd, i64 40
  store double %i.apc, ptr %i.ape, align 8, !tbaa !9
  %i.apf = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.6 = getelementptr i8, ptr %i.apf, i64 48
  %i.apg = load double, ptr %gep1026.6, align 8, !tbaa !9
  %i.aph = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.api = getelementptr i8, ptr %i.aph, i64 48
  store double %i.apg, ptr %i.api, align 8, !tbaa !9
  %i.apj = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.7 = getelementptr i8, ptr %i.apj, i64 56
  %i.apk = load double, ptr %gep1026.7, align 8, !tbaa !9
  %i.apl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.apm = getelementptr i8, ptr %i.apl, i64 56
  store double %i.apk, ptr %i.apm, align 8, !tbaa !9
  %indvars.iv.next861.7 = add nsw i64 %indvars.iv860, 8 ; 2 uses
  %indvars.iv.next865.7 = add nsw i64 %indvars.iv864, 8 ; 2 uses
  %lftr.wideiv869.7 = trunc i64 %indvars.iv.next865.7 to i32
  %exitcond870.not.7 = icmp eq i32 %i.i, %lftr.wideiv869.7
  br i1 %exitcond870.not.7, label %._crit_edge588, label %vec.epilog.scalar.ph1501, !llvm.loop !90

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501, %middle.block1496, %vec.epilog.middle.block1510, %.loopexit1812
  %.25.lcssa.in = phi i64 [ %indvars.iv.next847.lcssa, %.loopexit1812 ], [ %i.aob, %vec.epilog.middle.block1510 ], [ %i.ans, %middle.block1496 ], [ %indvars.iv.next861.lcssa.unr, %vec.epilog.scalar.ph1501.prol.loopexit ], [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ] ; 2 uses
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1 ; 2 uses
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1
  %indvars.iv.next863 = add nuw i32 %indvars.iv862, 1
  %exitcond879.not = icmp eq i64 %indvars.iv.next874, %wide.trip.count878
  br i1 %exitcond879.not, label %.preheader471.preheader, label %iter.check1541, !llvm.loop !91

.preheader471.preheader:                          ; preds = %._crit_edge588, %._crit_edge579
  %.23.lcssa = phi i64 [ %indvars.iv.next842.lcssa, %._crit_edge579 ], [ %.25.lcssa.in, %._crit_edge588 ]
  %i.apn = sext i32 %i.d to i64                   ; 9 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %i.apo = lshr exact i32 %i.i, 1                 ; 2 uses
  %i.app = zext nneg i32 %i.apo to i64
  %i.apq = add nsw i64 %i.app, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.v)
  %i.apr = add nuw i32 %smax, %i.apo
  %i.aps = sub i32 %i.apr, %i.v
  %wide.trip.count891 = zext i32 %i.aps to i64
  %sext982 = shl i64 %.23.lcssa, 32
  %i.apt = ashr exact i64 %sext982, 32
  %wide.trip.count887 = zext nneg i32 %umax to i64 ; 8 uses
  %i.apu = add i64 %i.b, 8
  %min.iters.check1563 = icmp ugt i32 %i.i, 7
  %ident.check1558.not = icmp eq i32 %i.d, 1
  %or.cond1825 = select i1 %min.iters.check1563, i1 %ident.check1558.not, i1 false
  %min.iters.check1565 = icmp ult i32 %i.i, 32
  %i.apv = and i64 %wide.trip.count887, 12
  %n.vec1567 = and i64 %wide.trip.count887, 1073741808 ; 5 uses
  %cmp.n1576 = icmp eq i64 %n.vec1567, %wide.trip.count887
  %min.epilog.iters.check1581 = icmp eq i64 %i.apv, 0
  %n.vec1583 = and i64 %wide.trip.count887, 1073741820 ; 4 uses
  %cmp.n1589 = icmp eq i64 %n.vec1583, %wide.trip.count887
  br label %iter.check1578

iter.check1578:                                   ; preds = %.preheader471.preheader, %._crit_edge599
  %indvar1560 = phi i64 [ 0, %.preheader471.preheader ], [ %indvar.next1561, %._crit_edge599 ] ; 2 uses
  %indvars.iv889 = phi i64 [ %i.apq, %.preheader471.preheader ], [ %indvars.iv.next890, %._crit_edge599 ] ; 2 uses
  %.26603 = phi i64 [ %i.apt, %.preheader471.preheader ], [ %indvars.iv.next881.lcssa, %._crit_edge599 ] ; 7 uses
  %invariant.gep1027 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv889 ; 11 uses
  br i1 %or.cond1825, label %vector.memcheck1559, label %vec.epilog.scalar.ph1579.preheader

vector.memcheck1559:                              ; preds = %iter.check1578
  %i.apw = add i64 %indvar1560, %i.ajq
  %i.apx = shl i64 %i.apw, 3
  %i.apy = add i64 %i.apx, %i.a
  %i.apz = sub i64 %i.apu, %i.apy
  %i.aqa = shl i64 %.26603, 3
  %i.aqb = add i64 %i.apz, %i.aqa
  %i.aqc = add i64 %i.aqb, -1
  %diff.check1562 = icmp ult i64 %i.aqc, 127
  br i1 %diff.check1562, label %vec.epilog.scalar.ph1579.preheader, label %vector.main.loop.iter.check1564

vector.main.loop.iter.check1564:                  ; preds = %vector.memcheck1559
  br i1 %min.iters.check1565, label %vec.epilog.ph1582, label %vector.ph1566

vector.ph1566:                                    ; preds = %vector.main.loop.iter.check1564
  %i.aqd = add i64 %.26603, %n.vec1567            ; 2 uses
  %i.aqe = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vector.body1568

vector.body1568:                                  ; preds = %vector.body1568, %vector.ph1566
  %index1569 = phi i64 [ 0, %vector.ph1566 ], [ %index.next1574, %vector.body1568 ] ; 3 uses
  %i.aqf = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1569 ; 4 uses
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 32
  %i.aqh = getelementptr i8, ptr %i.aqf, i64 64
  %i.aqi = getelementptr i8, ptr %i.aqf, i64 96
  %wide.load1570 = load <4 x double>, ptr %i.aqf, align 8, !tbaa !9
  %wide.load1571 = load <4 x double>, ptr %i.aqg, align 8, !tbaa !9
  %wide.load1572 = load <4 x double>, ptr %i.aqh, align 8, !tbaa !9
  %wide.load1573 = load <4 x double>, ptr %i.aqi, align 8, !tbaa !9
  %i.aqj = getelementptr [8 x i8], ptr %i.aqe, i64 %index1569 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 32
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqj, i64 64
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqj, i64 96
  store <4 x double> %wide.load1570, ptr %i.aqj, align 8, !tbaa !9
  store <4 x double> %wide.load1571, ptr %i.aqk, align 8, !tbaa !9
  store <4 x double> %wide.load1572, ptr %i.aql, align 8, !tbaa !9
  store <4 x double> %wide.load1573, ptr %i.aqm, align 8, !tbaa !9
  %index.next1574 = add nuw i64 %index1569, 16    ; 2 uses
  %i.aqn = icmp eq i64 %index.next1574, %n.vec1567
  br i1 %i.aqn, label %middle.block1575, label %vector.body1568, !llvm.loop !92

middle.block1575:                                 ; preds = %vector.body1568
  br i1 %cmp.n1576, label %._crit_edge599, label %vec.epilog.iter.check1580

vec.epilog.iter.check1580:                        ; preds = %middle.block1575
  br i1 %min.epilog.iters.check1581, label %vec.epilog.scalar.ph1579.preheader, label %vec.epilog.ph1582, !prof !15

vec.epilog.ph1582:                                ; preds = %vector.main.loop.iter.check1564, %vec.epilog.iter.check1580
  %vec.epilog.resume.val1577 = phi i64 [ %n.vec1567, %vec.epilog.iter.check1580 ], [ 0, %vector.main.loop.iter.check1564 ]
  %i.aqo = add i64 %.26603, %n.vec1583            ; 2 uses
  %i.aqp = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vec.epilog.vector.body1584

vec.epilog.vector.body1584:                       ; preds = %vec.epilog.vector.body1584, %vec.epilog.ph1582
  %index1585 = phi i64 [ %vec.epilog.resume.val1577, %vec.epilog.ph1582 ], [ %index.next1587, %vec.epilog.vector.body1584 ] ; 3 uses
  %i.aqq = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1585
  %wide.load1586 = load <4 x double>, ptr %i.aqq, align 8, !tbaa !9
  %i.aqr = getelementptr [8 x i8], ptr %i.aqp, i64 %index1585
  store <4 x double> %wide.load1586, ptr %i.aqr, align 8, !tbaa !9
  %index.next1587 = add nuw i64 %index1585, 4     ; 2 uses
  %i.aqs = icmp eq i64 %index.next1587, %n.vec1583
  br i1 %i.aqs, label %vec.epilog.middle.block1588, label %vec.epilog.vector.body1584, !llvm.loop !93

vec.epilog.middle.block1588:                      ; preds = %vec.epilog.vector.body1584
  br i1 %cmp.n1589, label %._crit_edge599, label %vec.epilog.scalar.ph1579.preheader

vec.epilog.scalar.ph1579.preheader:               ; preds = %vector.memcheck1559, %iter.check1578, %vec.epilog.iter.check1580, %vec.epilog.middle.block1588
  %indvars.iv882.ph = phi i64 [ 0, %iter.check1578 ], [ 0, %vector.memcheck1559 ], [ %n.vec1567, %vec.epilog.iter.check1580 ], [ %n.vec1583, %vec.epilog.middle.block1588 ] ; 4 uses
  %indvars.iv880.ph = phi i64 [ %.26603, %iter.check1578 ], [ %.26603, %vector.memcheck1559 ], [ %i.aqd, %vec.epilog.iter.check1580 ], [ %i.aqo, %vec.epilog.middle.block1588 ] ; 2 uses
  %i.aqt = sub nsw i64 %wide.trip.count887, %indvars.iv882.ph
  %xtraiter1921 = and i64 %i.aqt, 7               ; 2 uses
  %lcmp.mod1922.not = icmp eq i64 %xtraiter1921, 0
  br i1 %lcmp.mod1922.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol

vec.epilog.scalar.ph1579.prol:                    ; preds = %vec.epilog.scalar.ph1579.preheader, %vec.epilog.scalar.ph1579.prol
  %indvars.iv882.prol = phi i64 [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %indvars.iv880.prol = phi i64 [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %prol.iter1923 = phi i64 [ %prol.iter1923.next, %vec.epilog.scalar.ph1579.prol ], [ 0, %vec.epilog.scalar.ph1579.preheader ]
  %i.aqu = mul nsw i64 %indvars.iv882.prol, %i.apn
  %gep1028.prol.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqu
  %i.aqv = load double, ptr %gep1028.prol.a, align 8, !tbaa !9
  %i.aqw = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv880.prol
  store double %i.aqv, ptr %i.aqw, align 8, !tbaa !9
  %indvars.iv.next881.prol = add nsw i64 %indvars.iv880.prol, 1 ; 3 uses
  %indvars.iv.next883.prol = add nuw nsw i64 %indvars.iv882.prol, 1 ; 2 uses
  %prol.iter1923.next = add i64 %prol.iter1923, 1 ; 2 uses
  %prol.iter1923.cmp.not = icmp eq i64 %prol.iter1923.next, %xtraiter1921
  br i1 %prol.iter1923.cmp.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol, !llvm.loop !94

vec.epilog.scalar.ph1579.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1579.prol, %vec.epilog.scalar.ph1579.preheader
  %indvars.iv.next881.lcssa1844.unr = phi i64 [ poison, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv882.unr = phi i64 [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv880.unr = phi i64 [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %i.aqx = sub nsw i64 %indvars.iv882.ph, %wide.trip.count887
  %i.aqy = icmp ugt i64 %i.aqx, -8
  br i1 %i.aqy, label %._crit_edge599, label %vec.epilog.scalar.ph1579

vec.epilog.scalar.ph1579:                         ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579
  %indvars.iv882 = phi i64 [ %indvars.iv.next883.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv882.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %indvars.iv880 = phi i64 [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv880.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %i.aqz = mul nsw i64 %indvars.iv882, %i.apn
  %gep1028.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqz
  %i.ara = load double, ptr %gep1028.a, align 8, !tbaa !9
  %i.arb = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv880
  store double %i.ara, ptr %i.arb, align 8, !tbaa !9
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1
  %i.arc = mul nsw i64 %indvars.iv.next883, %i.apn
  %gep1028.1.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arc
  %i.ard = load double, ptr %gep1028.1.a, align 8, !tbaa !9
  %i.are = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arf = getelementptr i8, ptr %i.are, i64 8
  store double %i.ard, ptr %i.arf, align 8, !tbaa !9
  %indvars.iv.next883.1 = add nuw nsw i64 %indvars.iv882, 2
  %i.arg = mul nsw i64 %indvars.iv.next883.1, %i.apn
  %gep1028.2.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arg
  %i.arh = load double, ptr %gep1028.2.a, align 8, !tbaa !9
  %i.ari = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arj = getelementptr i8, ptr %i.ari, i64 16
  store double %i.arh, ptr %i.arj, align 8, !tbaa !9
  %indvars.iv.next883.2 = add nuw nsw i64 %indvars.iv882, 3
  %i.ark = mul nsw i64 %indvars.iv.next883.2, %i.apn
  %gep1028.3 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ark
  %i.arl = load double, ptr %gep1028.3, align 8, !tbaa !9
  %i.arm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arn = getelementptr i8, ptr %i.arm, i64 24
  store double %i.arl, ptr %i.arn, align 8, !tbaa !9
  %indvars.iv.next883.3 = add nuw nsw i64 %indvars.iv882, 4
  %i.aro = mul nsw i64 %indvars.iv.next883.3, %i.apn
  %gep1028.4 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aro
  %i.arp = load double, ptr %gep1028.4, align 8, !tbaa !9
  %i.arq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arr = getelementptr i8, ptr %i.arq, i64 32
  store double %i.arp, ptr %i.arr, align 8, !tbaa !9
  %indvars.iv.next883.4 = add nuw nsw i64 %indvars.iv882, 5
  %i.ars = mul nsw i64 %indvars.iv.next883.4, %i.apn
  %gep1028.5 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ars
  %i.art = load double, ptr %gep1028.5, align 8, !tbaa !9
  %i.aru = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arv = getelementptr i8, ptr %i.aru, i64 40
  store double %i.art, ptr %i.arv, align 8, !tbaa !9
  %indvars.iv.next883.5 = add nuw nsw i64 %indvars.iv882, 6
  %i.arw = mul nsw i64 %indvars.iv.next883.5, %i.apn
  %gep1028.6 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arw
  %i.arx = load double, ptr %gep1028.6, align 8, !tbaa !9
  %i.ary = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arz = getelementptr i8, ptr %i.ary, i64 48
  store double %i.arx, ptr %i.arz, align 8, !tbaa !9
  %indvars.iv.next883.6 = add nuw nsw i64 %indvars.iv882, 7
  %i.asa = mul nsw i64 %indvars.iv.next883.6, %i.apn
  %gep1028.7 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.asa
  %i.asb = load double, ptr %gep1028.7, align 8, !tbaa !9
  %i.asc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.asd = getelementptr i8, ptr %i.asc, i64 56
  store double %i.asb, ptr %i.asd, align 8, !tbaa !9
  %indvars.iv.next881.7 = add nsw i64 %indvars.iv880, 8 ; 2 uses
  %indvars.iv.next883.7 = add nuw nsw i64 %indvars.iv882, 8 ; 2 uses
  %exitcond888.not.7 = icmp eq i64 %indvars.iv.next883.7, %wide.trip.count887
  br i1 %exitcond888.not.7, label %._crit_edge599, label %vec.epilog.scalar.ph1579, !llvm.loop !95

._crit_edge599:                                   ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579, %vec.epilog.middle.block1588, %middle.block1575
  %indvars.iv.next881.lcssa = phi i64 [ %i.aqo, %vec.epilog.middle.block1588 ], [ %i.aqd, %middle.block1575 ], [ %indvars.iv.next881.lcssa1844.unr, %vec.epilog.scalar.ph1579.prol.loopexit ], [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ]
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count891
  %indvar.next1561 = add i64 %indvar1560, 1
  br i1 %exitcond892.not, label %.loopexit, label %iter.check1578, !llvm.loop !96

.preheader468.us.preheader:                       ; preds = %bb.p
  %i.ase = lshr exact i32 %i.i, 1
  %i.asf = zext nneg i32 %i.ase to i64            ; 9 uses
  %i.asg = sext i32 %i.d to i64                   ; 2 uses
  %i.ash = zext nneg i32 %i.i to i64              ; 2 uses
  %i.asi = add nuw nsw i32 %i.v, 1
  %wide.trip.count927 = zext nneg i32 %i.asi to i64 ; 2 uses
  %umax1673 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count927, i64 %i.ash)
  %i.asj = sub nsw i64 %umax1673, %i.asf          ; 7 uses
  %min.iters.check1674 = icmp ugt i64 %i.asj, 3
  %ident.check1670.not = icmp eq i32 %i.d, 1
  %or.cond1826 = select i1 %min.iters.check1674, i1 %ident.check1670.not, i1 false
  %min.iters.check1676 = icmp ult i64 %i.asj, 16
  %i.ask = and i64 %i.asj, 12
  %n.vec1678 = and i64 %i.asj, -16                ; 5 uses
  %i.asl = add nsw i64 %n.vec1678, %i.asf
  %cmp.n1687 = icmp eq i64 %i.asj, %n.vec1678
  %min.epilog.iters.check1693 = icmp eq i64 %i.ask, 0
  %n.vec1695 = and i64 %i.asj, -4                 ; 4 uses
  %i.asm = add nsw i64 %n.vec1695, %i.asf
  %cmp.n1701 = icmp eq i64 %i.asj, %n.vec1695
  br label %iter.check1690

iter.check1690:                                   ; preds = %.preheader468.us.preheader, %._crit_edge622.us
  %indvars.iv924 = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next925, %._crit_edge622.us ] ; 3 uses
  %.28625.us = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next920.lcssa, %._crit_edge622.us ] ; 7 uses
  %invariant.gep1033 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv924 ; 3 uses
  br i1 %or.cond1826, label %vector.memcheck1671, label %vec.epilog.scalar.ph1691.preheader

vector.memcheck1671:                              ; preds = %iter.check1690
  %i.asn = add nuw i64 %indvars.iv924, %i.asf
  %i.aso = shl i64 %i.asn, 3
  %i.asp = add i64 %i.aso, %i.a
  %i.asq = sub i64 %i.b, %i.asp
  %i.asr = shl i64 %.28625.us, 3
  %i.ass = add i64 %i.asq, %i.asr
  %i.ast = add i64 %i.ass, -1
  %diff.check1672 = icmp ult i64 %i.ast, 127
  br i1 %diff.check1672, label %vec.epilog.scalar.ph1691.preheader, label %vector.main.loop.iter.check1675

vector.main.loop.iter.check1675:                  ; preds = %vector.memcheck1671
  br i1 %min.iters.check1676, label %vec.epilog.ph1694, label %vector.ph1677

vector.ph1677:                                    ; preds = %vector.main.loop.iter.check1675
  %i.asu = add i64 %.28625.us, %n.vec1678         ; 2 uses
  %invariant.gep2052 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.asf
  %i.asv = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vector.body1679

vector.body1679:                                  ; preds = %vector.body1679, %vector.ph1677
  %index1680 = phi i64 [ 0, %vector.ph1677 ], [ %index.next1685, %vector.body1679 ] ; 3 uses
  %gep2053 = getelementptr [8 x i8], ptr %invariant.gep2052, i64 %index1680 ; 4 uses
  %i.asw = getelementptr i8, ptr %gep2053, i64 32
  %i.asx = getelementptr i8, ptr %gep2053, i64 64
  %i.asy = getelementptr i8, ptr %gep2053, i64 96
  %wide.load1681 = load <4 x double>, ptr %gep2053, align 8, !tbaa !9
  %wide.load1682 = load <4 x double>, ptr %i.asw, align 8, !tbaa !9
  %wide.load1683 = load <4 x double>, ptr %i.asx, align 8, !tbaa !9
  %wide.load1684 = load <4 x double>, ptr %i.asy, align 8, !tbaa !9
  %i.asz = getelementptr [8 x i8], ptr %i.asv, i64 %index1680 ; 4 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 32
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asz, i64 64
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asz, i64 96
  store <4 x double> %wide.load1681, ptr %i.asz, align 8, !tbaa !9
  store <4 x double> %wide.load1682, ptr %i.ata, align 8, !tbaa !9
  store <4 x double> %wide.load1683, ptr %i.atb, align 8, !tbaa !9
  store <4 x double> %wide.load1684, ptr %i.atc, align 8, !tbaa !9
  %index.next1685 = add nuw i64 %index1680, 16    ; 2 uses
  %i.atd = icmp eq i64 %index.next1685, %n.vec1678
  br i1 %i.atd, label %middle.block1686, label %vector.body1679, !llvm.loop !97

middle.block1686:                                 ; preds = %vector.body1679
  br i1 %cmp.n1687, label %._crit_edge622.us, label %vec.epilog.iter.check1692

vec.epilog.iter.check1692:                        ; preds = %middle.block1686
  br i1 %min.epilog.iters.check1693, label %vec.epilog.scalar.ph1691.preheader, label %vec.epilog.ph1694, !prof !15

vec.epilog.ph1694:                                ; preds = %vector.main.loop.iter.check1675, %vec.epilog.iter.check1692
  %vec.epilog.resume.val1688 = phi i64 [ %n.vec1678, %vec.epilog.iter.check1692 ], [ 0, %vector.main.loop.iter.check1675 ]
  %i.ate = add i64 %.28625.us, %n.vec1695         ; 2 uses
  %invariant.gep2054 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.asf
  %i.atf = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vec.epilog.vector.body1696

vec.epilog.vector.body1696:                       ; preds = %vec.epilog.vector.body1696, %vec.epilog.ph1694
  %index1697 = phi i64 [ %vec.epilog.resume.val1688, %vec.epilog.ph1694 ], [ %index.next1699, %vec.epilog.vector.body1696 ] ; 3 uses
  %gep2055 = getelementptr [8 x i8], ptr %invariant.gep2054, i64 %index1697
  %wide.load1698 = load <4 x double>, ptr %gep2055, align 8, !tbaa !9
  %i.atg = getelementptr [8 x i8], ptr %i.atf, i64 %index1697
  store <4 x double> %wide.load1698, ptr %i.atg, align 8, !tbaa !9
  %index.next1699 = add nuw i64 %index1697, 4     ; 2 uses
  %i.ath = icmp eq i64 %index.next1699, %n.vec1695
  br i1 %i.ath, label %vec.epilog.middle.block1700, label %vec.epilog.vector.body1696, !llvm.loop !98

vec.epilog.middle.block1700:                      ; preds = %vec.epilog.vector.body1696
  br i1 %cmp.n1701, label %._crit_edge622.us, label %vec.epilog.scalar.ph1691.preheader

vec.epilog.scalar.ph1691.preheader:               ; preds = %vector.memcheck1671, %iter.check1690, %vec.epilog.iter.check1692, %vec.epilog.middle.block1700
  %indvars.iv921.ph = phi i64 [ %i.asf, %iter.check1690 ], [ %i.asf, %vector.memcheck1671 ], [ %i.asl, %vec.epilog.iter.check1692 ], [ %i.asm, %vec.epilog.middle.block1700 ]
  %indvars.iv919.ph = phi i64 [ %.28625.us, %iter.check1690 ], [ %.28625.us, %vector.memcheck1671 ], [ %i.asu, %vec.epilog.iter.check1692 ], [ %i.ate, %vec.epilog.middle.block1700 ]
  br label %vec.epilog.scalar.ph1691

vec.epilog.scalar.ph1691:                         ; preds = %vec.epilog.scalar.ph1691.preheader, %vec.epilog.scalar.ph1691
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %vec.epilog.scalar.ph1691 ], [ %indvars.iv921.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ], [ %indvars.iv919.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %i.ati = mul nsw i64 %indvars.iv921, %i.asg
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.ati
  %i.atj = load double, ptr %gep1034, align 8, !tbaa !9
  %i.atk = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv919
  store double %i.atj, ptr %i.atk, align 8, !tbaa !9
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, 1 ; 2 uses
  %indvars.iv.next922 = add nuw nsw i64 %indvars.iv921, 1 ; 2 uses
  %.not423.not.us = icmp samesign ult i64 %indvars.iv.next922, %i.ash
  br i1 %.not423.not.us, label %vec.epilog.scalar.ph1691, label %._crit_edge622.us, !llvm.loop !99

._crit_edge622.us:                                ; preds = %vec.epilog.scalar.ph1691, %vec.epilog.middle.block1700, %middle.block1686
  %indvars.iv.next920.lcssa = phi i64 [ %i.ate, %vec.epilog.middle.block1700 ], [ %i.asu, %middle.block1686 ], [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ] ; 3 uses
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 1 ; 2 uses
  %exitcond928.not = icmp eq i64 %indvars.iv.next925, %wide.trip.count927
  br i1 %exitcond928.not, label %.split627.us, label %iter.check1690, !llvm.loop !100

.split627.us:                                     ; preds = %._crit_edge622.us
  %.not419638 = icmp ult i32 %i.i, 4
  br i1 %.not419638, label %iter.check1796, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.split627.us
  %i.atl = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.atm = sext i32 %i.d to i64                   ; 10 uses
  %i.atn = zext nneg i32 %i.atl to i64
  %i.ato = zext nneg i32 %i.i to i64
  %i.atp = add nsw i32 %i.v, -1                   ; 2 uses
  %wide.trip.count961 = zext nneg i32 %i.atp to i64
  %i.atq = add i64 %i.b, -8
  %i.atr = add nsw i32 %i.i, -2
  %i.ats = sub i64 %i.b, %i.a
  %i.att = mul nsw i64 %i.asg, -8
  %ident.check1705.not = icmp eq i32 %i.d, 1
  br label %iter.check1763

iter.check1763:                                   ; preds = %.preheader.lr.ph, %._crit_edge636
  %indvars.iv956 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next957, %._crit_edge636 ] ; 7 uses
  %indvars.iv954 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next955, %._crit_edge636 ] ; 10 uses
  %indvars.iv945 = phi i32 [ %i.atl, %.preheader.lr.ph ], [ %indvars.iv.next946, %._crit_edge636 ] ; 3 uses
  %.30640.in = phi i64 [ %indvars.iv.next920.lcssa, %.preheader.lr.ph ], [ %.32.lcssa.in, %._crit_edge636 ] ; 2 uses
  %i.atu = trunc i64 %indvars.iv956 to i32
  %i.atv = add i32 %i.v, %i.atu
  %i.atw = sub i32 %i.atr, %i.atv                 ; 3 uses
  %i.atx = zext i32 %i.atw to i64
  %i.aty = add nuw nsw i64 %i.atx, 1              ; 5 uses
  %i.atz = add nuw i64 %indvars.iv956, %i.asf
  %i.aua = sext i32 %indvars.iv945 to i64
  %.30640 = trunc i64 %.30640.in to i32           ; 4 uses
  %i.aub = sext i32 %indvars.iv945 to i64         ; 6 uses
  %i.auc = mul nsw i64 %indvars.iv956, %i.atm
  %sext985 = shl i64 %.30640.in, 32               ; 2 uses
  %i.aud = ashr exact i64 %sext985, 32            ; 6 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %3, i64 %i.auc ; 11 uses
  %min.iters.check1740 = icmp samesign ult i64 %indvars.iv954, 4
  br i1 %min.iters.check1740, label %vec.epilog.scalar.ph1764.preheader, label %vector.memcheck1738

vector.memcheck1738:                              ; preds = %iter.check1763
  %i.aue = mul i64 %i.att, %indvars.iv956
  %i.auf = add i64 %i.ats, %i.aue
  %i.aug = ashr exact i64 %sext985, 29
  %i.auh = add i64 %i.auf, %i.aug
  %i.aui = add i64 %i.auh, -1
  %diff.check1739 = icmp ult i64 %i.aui, 127
  br i1 %diff.check1739, label %vec.epilog.scalar.ph1764.preheader, label %vector.main.loop.iter.check1741

vector.main.loop.iter.check1741:                  ; preds = %vector.memcheck1738
  %min.iters.check1742 = icmp samesign ult i64 %indvars.iv954, 16
  br i1 %min.iters.check1742, label %vec.epilog.ph1767, label %vector.ph1743

vector.ph1743:                                    ; preds = %vector.main.loop.iter.check1741
  %i.auj = and i64 %indvars.iv954, 12
  %n.vec1744 = and i64 %indvars.iv954, 9223372036854775792 ; 5 uses
  %i.auk = add i64 %i.aud, %n.vec1744             ; 2 uses
  %i.aul = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.30640, i64 0
  %i.aum = getelementptr [8 x i8], ptr %5, i64 %i.aud
  br label %vector.body1745

vector.body1745:                                  ; preds = %vector.body1745, %vector.ph1743
  %index1746 = phi i64 [ 0, %vector.ph1743 ], [ %index.next1755, %vector.body1745 ] ; 3 uses
  %vec.phi1747 = phi <4 x i32> [ %i.aul, %vector.ph1743 ], [ %i.aun, %vector.body1745 ]
  %vec.phi1748 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.auo, %vector.body1745 ]
  %vec.phi1749 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.aup, %vector.body1745 ]
  %vec.phi1750 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.auq, %vector.body1745 ]
  %i.aun = add <4 x i32> %vec.phi1747, splat (i32 1) ; 2 uses
  %i.auo = add <4 x i32> %vec.phi1748, splat (i32 1) ; 2 uses
  %i.aup = add <4 x i32> %vec.phi1749, splat (i32 1) ; 2 uses
  %i.auq = add <4 x i32> %vec.phi1750, splat (i32 1) ; 2 uses
  %i.aur = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1746 ; 4 uses
  %i.aus = getelementptr i8, ptr %i.aur, i64 32
  %i.aut = getelementptr i8, ptr %i.aur, i64 64
  %i.auu = getelementptr i8, ptr %i.aur, i64 96
  %wide.load1751 = load <4 x double>, ptr %i.aur, align 8, !tbaa !9
  %wide.load1752 = load <4 x double>, ptr %i.aus, align 8, !tbaa !9
  %wide.load1753 = load <4 x double>, ptr %i.aut, align 8, !tbaa !9
  %wide.load1754 = load <4 x double>, ptr %i.auu, align 8, !tbaa !9
  %i.auv = getelementptr [8 x i8], ptr %i.aum, i64 %index1746 ; 4 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 32
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auv, i64 64
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auv, i64 96
  store <4 x double> %wide.load1751, ptr %i.auv, align 8, !tbaa !9
  store <4 x double> %wide.load1752, ptr %i.auw, align 8, !tbaa !9
  store <4 x double> %wide.load1753, ptr %i.aux, align 8, !tbaa !9
  store <4 x double> %wide.load1754, ptr %i.auy, align 8, !tbaa !9
  %index.next1755 = add nuw i64 %index1746, 16    ; 2 uses
  %i.auz = icmp eq i64 %index.next1755, %n.vec1744
  br i1 %i.auz, label %middle.block1756, label %vector.body1745, !llvm.loop !101

middle.block1756:                                 ; preds = %vector.body1745
  %bin.rdx1757 = add <4 x i32> %i.auo, %i.aun
  %bin.rdx1758 = add <4 x i32> %i.aup, %bin.rdx1757
  %bin.rdx1759 = add <4 x i32> %i.auq, %bin.rdx1758
  %i.ava = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1759) ; 3 uses
  %cmp.n1760 = icmp eq i64 %indvars.iv954, %n.vec1744
  br i1 %cmp.n1760, label %.loopexit1810, label %vec.epilog.iter.check1765

vec.epilog.iter.check1765:                        ; preds = %middle.block1756
  %min.epilog.iters.check1766 = icmp eq i64 %i.auj, 0
  br i1 %min.epilog.iters.check1766, label %vec.epilog.scalar.ph1764.preheader, label %vec.epilog.ph1767, !prof !15

vec.epilog.ph1767:                                ; preds = %vector.main.loop.iter.check1741, %vec.epilog.iter.check1765
  %vec.epilog.resume.val1761 = phi i64 [ %n.vec1744, %vec.epilog.iter.check1765 ], [ 0, %vector.main.loop.iter.check1741 ]
  %bc.merge.rdx1762 = phi i32 [ %i.ava, %vec.epilog.iter.check1765 ], [ %.30640, %vector.main.loop.iter.check1741 ]
  %n.vec1768 = and i64 %indvars.iv954, 9223372036854775804 ; 4 uses
  %i.avb = add i64 %i.aud, %n.vec1768             ; 2 uses
  %i.avc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1762, i64 0
  %i.avd = getelementptr [8 x i8], ptr %5, i64 %i.aud
  br label %vec.epilog.vector.body1769

vec.epilog.vector.body1769:                       ; preds = %vec.epilog.vector.body1769, %vec.epilog.ph1767
  %index1770 = phi i64 [ %vec.epilog.resume.val1761, %vec.epilog.ph1767 ], [ %index.next1773, %vec.epilog.vector.body1769 ] ; 3 uses
  %vec.phi1771 = phi <4 x i32> [ %i.avc, %vec.epilog.ph1767 ], [ %i.ave, %vec.epilog.vector.body1769 ]
  %i.ave = add <4 x i32> %vec.phi1771, splat (i32 1) ; 2 uses
  %i.avf = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1770
  %wide.load1772 = load <4 x double>, ptr %i.avf, align 8, !tbaa !9
  %i.avg = getelementptr [8 x i8], ptr %i.avd, i64 %index1770
  store <4 x double> %wide.load1772, ptr %i.avg, align 8, !tbaa !9
  %index.next1773 = add nuw i64 %index1770, 4     ; 2 uses
  %i.avh = icmp eq i64 %index.next1773, %n.vec1768
  br i1 %i.avh, label %vec.epilog.middle.block1774, label %vec.epilog.vector.body1769, !llvm.loop !102

vec.epilog.middle.block1774:                      ; preds = %vec.epilog.vector.body1769
  %i.avi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ave) ; 2 uses
  %cmp.n1775 = icmp eq i64 %indvars.iv954, %n.vec1768
  br i1 %cmp.n1775, label %.loopexit1810, label %vec.epilog.scalar.ph1764.preheader

vec.epilog.scalar.ph1764.preheader:               ; preds = %vector.memcheck1738, %iter.check1763, %vec.epilog.iter.check1765, %vec.epilog.middle.block1774
  %indvars.iv941.in.ph = phi i32 [ %.30640, %iter.check1763 ], [ %.30640, %vector.memcheck1738 ], [ %i.ava, %vec.epilog.iter.check1765 ], [ %i.avi, %vec.epilog.middle.block1774 ] ; 2 uses
  %indvars.iv932.ph = phi i64 [ 0, %iter.check1763 ], [ 0, %vector.memcheck1738 ], [ %n.vec1744, %vec.epilog.iter.check1765 ], [ %n.vec1768, %vec.epilog.middle.block1774 ] ; 4 uses
  %indvars.iv930.ph = phi i64 [ %i.aud, %iter.check1763 ], [ %i.aud, %vector.memcheck1738 ], [ %i.auk, %vec.epilog.iter.check1765 ], [ %i.avb, %vec.epilog.middle.block1774 ] ; 2 uses
  %i.avj = sub nsw i64 %indvars.iv954, %indvars.iv932.ph
  %i.avk = sub nsw i64 %indvars.iv956, %indvars.iv932.ph
  %xtraiter1930 = and i64 %i.avj, 7               ; 2 uses
  %lcmp.mod1931.not = icmp eq i64 %xtraiter1930, 0
  br i1 %lcmp.mod1931.not, label %vec.epilog.scalar.ph1764.prol.loopexit, label %vec.epilog.scalar.ph1764.prol

vec.epilog.scalar.ph1764.prol:                    ; preds = %vec.epilog.scalar.ph1764.preheader, %vec.epilog.scalar.ph1764.prol
  %indvars.iv941.in.prol = phi i32 [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv941.in.ph, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv932.prol = phi i64 [ %indvars.iv.next933.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv932.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %indvars.iv930.prol = phi i64 [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv930.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %prol.iter1932 = phi i64 [ %prol.iter1932.next, %vec.epilog.scalar.ph1764.prol ], [ 0, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv941.prol = add i32 %indvars.iv941.in.prol, 1 ; 3 uses
  %gep1036.prol = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932.prol
  %i.avl = load double, ptr %gep1036.prol, align 8, !tbaa !9
  %i.avm = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv930.prol
  store double %i.avl, ptr %i.avm, align 8, !tbaa !9
  %indvars.iv.next931.prol = add nsw i64 %indvars.iv930.prol, 1 ; 3 uses
  %indvars.iv.next933.prol = add nuw nsw i64 %indvars.iv932.prol, 1 ; 2 uses
  %prol.iter1932.next = add i64 %prol.iter1932, 1 ; 2 uses
  %prol.iter1932.cmp.not = icmp eq i64 %prol.iter1932.next, %xtraiter1930
  br i1 %prol.iter1932.cmp.not, label %vec.epilog.scalar.ph1764.prol.loopexit, label %vec.epilog.scalar.ph1764.prol, !llvm.loop !103

vec.epilog.scalar.ph1764.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1764.prol, %vec.epilog.scalar.ph1764.preheader
  %indvars.iv941.lcssa1833.unr = phi i32 [ poison, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv.next931.lcssa1832.unr = phi i64 [ poison, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv941.in.unr = phi i32 [ %indvars.iv941.in.ph, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv932.unr = phi i64 [ %indvars.iv932.ph, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv.next933.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv930.unr = phi i64 [ %indvars.iv930.ph, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ]
  %i.avn = icmp ult i64 %i.avk, 7
  br i1 %i.avn, label %.loopexit1810, label %vec.epilog.scalar.ph1764

vec.epilog.scalar.ph1764:                         ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764
  %indvars.iv941.in = phi i32 [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv941.in.unr, %vec.epilog.scalar.ph1764.prol.loopexit ]
  %indvars.iv932 = phi i64 [ %indvars.iv.next933.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv932.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %indvars.iv930 = phi i64 [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv930.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %gep1036 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %i.avo = load double, ptr %gep1036, align 8, !tbaa !9
  %i.avp = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv930
  store double %i.avo, ptr %i.avp, align 8, !tbaa !9
  %i.avq = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.1 = getelementptr i8, ptr %i.avq, i64 8
  %i.avr = load double, ptr %gep1036.1, align 8, !tbaa !9
  %i.avs = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.avt = getelementptr i8, ptr %i.avs, i64 8
  store double %i.avr, ptr %i.avt, align 8, !tbaa !9
  %i.avu = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.2 = getelementptr i8, ptr %i.avu, i64 16
  %i.avv = load double, ptr %gep1036.2, align 8, !tbaa !9
  %i.avw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.avx = getelementptr i8, ptr %i.avw, i64 16
  store double %i.avv, ptr %i.avx, align 8, !tbaa !9
  %i.avy = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.3 = getelementptr i8, ptr %i.avy, i64 24
  %i.avz = load double, ptr %gep1036.3, align 8, !tbaa !9
  %i.awa = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awb = getelementptr i8, ptr %i.awa, i64 24
  store double %i.avz, ptr %i.awb, align 8, !tbaa !9
  %i.awc = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.4 = getelementptr i8, ptr %i.awc, i64 32
  %i.awd = load double, ptr %gep1036.4, align 8, !tbaa !9
  %i.awe = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awf = getelementptr i8, ptr %i.awe, i64 32
  store double %i.awd, ptr %i.awf, align 8, !tbaa !9
  %i.awg = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.5 = getelementptr i8, ptr %i.awg, i64 40
  %i.awh = load double, ptr %gep1036.5, align 8, !tbaa !9
  %i.awi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awj = getelementptr i8, ptr %i.awi, i64 40
  store double %i.awh, ptr %i.awj, align 8, !tbaa !9
  %i.awk = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.6 = getelementptr i8, ptr %i.awk, i64 48
  %i.awl = load double, ptr %gep1036.6, align 8, !tbaa !9
  %i.awm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awn = getelementptr i8, ptr %i.awm, i64 48
  store double %i.awl, ptr %i.awn, align 8, !tbaa !9
  %indvars.iv941.7 = add i32 %indvars.iv941.in, 8 ; 2 uses
  %i.awo = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.7 = getelementptr i8, ptr %i.awo, i64 56
  %i.awp = load double, ptr %gep1036.7, align 8, !tbaa !9
  %i.awq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awr = getelementptr i8, ptr %i.awq, i64 56
  store double %i.awp, ptr %i.awr, align 8, !tbaa !9
  %indvars.iv.next931.7 = add nsw i64 %indvars.iv930, 8 ; 2 uses
  %indvars.iv.next933.7 = add nuw nsw i64 %indvars.iv932, 8 ; 2 uses
  %exitcond940.not.7 = icmp eq i64 %indvars.iv.next933.7, %indvars.iv954
  br i1 %exitcond940.not.7, label %.loopexit1810, label %vec.epilog.scalar.ph1764, !llvm.loop !104

.loopexit1810:                                    ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764, %vec.epilog.middle.block1774, %middle.block1756
  %indvars.iv941.lcssa = phi i32 [ %i.avi, %vec.epilog.middle.block1774 ], [ %i.ava, %middle.block1756 ], [ %indvars.iv941.lcssa1833.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ]
  %indvars.iv.next931.lcssa = phi i64 [ %i.avb, %vec.epilog.middle.block1774 ], [ %i.auk, %middle.block1756 ], [ %indvars.iv.next931.lcssa1832.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ]
  %i.aws = add nuw nsw i64 %indvars.iv956, %i.atn ; 2 uses
  %.not422.not631 = icmp samesign ult i64 %i.aws, %i.ato
  br i1 %.not422.not631, label %iter.check1724, label %._crit_edge636

iter.check1724:                                   ; preds = %.loopexit1810
  %i.awt = sext i32 %indvars.iv941.lcssa to i64   ; 7 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %3, i64 %i.aws ; 11 uses
  %min.iters.check1708 = icmp ugt i32 %i.atw, 2
  %or.cond1827 = select i1 %min.iters.check1708, i1 %ident.check1705.not, i1 false
  br i1 %or.cond1827, label %vector.memcheck1706, label %.lr.ph635.preheader

vector.memcheck1706:                              ; preds = %iter.check1724
  %i.awu = add i64 %i.atz, %i.aua
  %i.awv = shl i64 %i.awu, 3
  %i.aww = add i64 %i.awv, %i.a
  %i.awx = sub i64 %i.atq, %i.aww
  %i.awy = shl nsw i64 %i.awt, 3
  %i.awz = add i64 %i.awx, %i.awy
  %i.axa = add i64 %i.awz, -1
  %diff.check1707 = icmp ult i64 %i.axa, 127
  br i1 %diff.check1707, label %.lr.ph635.preheader, label %vector.main.loop.iter.check1709

vector.main.loop.iter.check1709:                  ; preds = %vector.memcheck1706
  %min.iters.check1710 = icmp ult i32 %i.atw, 15
  br i1 %min.iters.check1710, label %vec.epilog.ph1728, label %vector.ph1711

vector.ph1711:                                    ; preds = %vector.main.loop.iter.check1709
  %i.axb = and i64 %i.aty, 12
  %n.vec1712 = and i64 %i.aty, 8589934576         ; 5 uses
  %i.axc = add nsw i64 %n.vec1712, %i.aub
  %i.axd = add nsw i64 %n.vec1712, %i.awt         ; 2 uses
  %invariant.gep2056 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aub
  %invariant.gep2058 = getelementptr [8 x i8], ptr %5, i64 %i.awt
  br label %vector.body1713

vector.body1713:                                  ; preds = %vector.body1713, %vector.ph1711
  %index1714 = phi i64 [ 0, %vector.ph1711 ], [ %index.next1719, %vector.body1713 ] ; 3 uses
  %gep2057 = getelementptr [8 x i8], ptr %invariant.gep2056, i64 %index1714 ; 4 uses
  %i.axe = getelementptr i8, ptr %gep2057, i64 32
  %i.axf = getelementptr i8, ptr %gep2057, i64 64
  %i.axg = getelementptr i8, ptr %gep2057, i64 96
  %wide.load1715 = load <4 x double>, ptr %gep2057, align 8, !tbaa !9
  %wide.load1716 = load <4 x double>, ptr %i.axe, align 8, !tbaa !9
  %wide.load1717 = load <4 x double>, ptr %i.axf, align 8, !tbaa !9
  %wide.load1718 = load <4 x double>, ptr %i.axg, align 8, !tbaa !9
  %gep2059 = getelementptr [8 x i8], ptr %invariant.gep2058, i64 %index1714 ; 4 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %gep2059, i64 32
  %i.axi = getelementptr inbounds nuw i8, ptr %gep2059, i64 64
  %i.axj = getelementptr inbounds nuw i8, ptr %gep2059, i64 96
  store <4 x double> %wide.load1715, ptr %gep2059, align 8, !tbaa !9
  store <4 x double> %wide.load1716, ptr %i.axh, align 8, !tbaa !9
  store <4 x double> %wide.load1717, ptr %i.axi, align 8, !tbaa !9
  store <4 x double> %wide.load1718, ptr %i.axj, align 8, !tbaa !9
  %index.next1719 = add nuw i64 %index1714, 16    ; 2 uses
  %i.axk = icmp eq i64 %index.next1719, %n.vec1712
  br i1 %i.axk, label %middle.block1720, label %vector.body1713, !llvm.loop !105

middle.block1720:                                 ; preds = %vector.body1713
  %cmp.n1721 = icmp eq i64 %i.aty, %n.vec1712
  br i1 %cmp.n1721, label %._crit_edge636, label %vec.epilog.iter.check1726

vec.epilog.iter.check1726:                        ; preds = %middle.block1720
  %min.epilog.iters.check1727 = icmp eq i64 %i.axb, 0
  br i1 %min.epilog.iters.check1727, label %.lr.ph635.preheader, label %vec.epilog.ph1728, !prof !15

vec.epilog.ph1728:                                ; preds = %vector.main.loop.iter.check1709, %vec.epilog.iter.check1726
  %vec.epilog.resume.val1722 = phi i64 [ %n.vec1712, %vec.epilog.iter.check1726 ], [ 0, %vector.main.loop.iter.check1709 ]
  %n.vec1729 = and i64 %i.aty, 8589934588         ; 4 uses
  %i.axl = add nsw i64 %n.vec1729, %i.aub
  %i.axm = add nsw i64 %n.vec1729, %i.awt         ; 2 uses
  %invariant.gep2060 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aub
  %invariant.gep2062 = getelementptr [8 x i8], ptr %5, i64 %i.awt
  br label %vec.epilog.vector.body1730

vec.epilog.vector.body1730:                       ; preds = %vec.epilog.vector.body1730, %vec.epilog.ph1728
  %index1731 = phi i64 [ %vec.epilog.resume.val1722, %vec.epilog.ph1728 ], [ %index.next1733, %vec.epilog.vector.body1730 ] ; 3 uses
  %gep2061 = getelementptr [8 x i8], ptr %invariant.gep2060, i64 %index1731
  %wide.load1732 = load <4 x double>, ptr %gep2061, align 8, !tbaa !9
  %gep2063 = getelementptr [8 x i8], ptr %invariant.gep2062, i64 %index1731
  store <4 x double> %wide.load1732, ptr %gep2063, align 8, !tbaa !9
  %index.next1733 = add nuw i64 %index1731, 4     ; 2 uses
  %i.axn = icmp eq i64 %index.next1733, %n.vec1729
  br i1 %i.axn, label %vec.epilog.middle.block1734, label %vec.epilog.vector.body1730, !llvm.loop !106

vec.epilog.middle.block1734:                      ; preds = %vec.epilog.vector.body1730
  %cmp.n1735 = icmp eq i64 %i.aty, %n.vec1729
  br i1 %cmp.n1735, label %._crit_edge636, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %vector.memcheck1706, %iter.check1724, %vec.epilog.iter.check1726, %vec.epilog.middle.block1734
  %indvars.iv947.ph = phi i64 [ %i.aub, %iter.check1724 ], [ %i.aub, %vector.memcheck1706 ], [ %i.axc, %vec.epilog.iter.check1726 ], [ %i.axl, %vec.epilog.middle.block1734 ] ; 3 uses
  %indvars.iv943.ph = phi i64 [ %i.awt, %iter.check1724 ], [ %i.awt, %vector.memcheck1706 ], [ %i.axd, %vec.epilog.iter.check1726 ], [ %i.axm, %vec.epilog.middle.block1734 ] ; 2 uses
  %i.axo = trunc i64 %indvars.iv947.ph to i32     ; 2 uses
  %i.axp = sub i32 %i.i, %i.axo
  %xtraiter1933 = and i32 %i.axp, 7               ; 2 uses
  %lcmp.mod1934.not = icmp eq i32 %xtraiter1933, 0
  br i1 %lcmp.mod1934.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol

.lr.ph635.prol:                                   ; preds = %.lr.ph635.preheader, %.lr.ph635.prol
  %indvars.iv947.prol = phi i64 [ %indvars.iv.next948.prol, %.lr.ph635.prol ], [ %indvars.iv947.ph, %.lr.ph635.preheader ] ; 2 uses
  %indvars.iv943.prol = phi i64 [ %indvars.iv.next944.prol, %.lr.ph635.prol ], [ %indvars.iv943.ph, %.lr.ph635.preheader ] ; 2 uses
  %prol.iter1935 = phi i32 [ %prol.iter1935.next, %.lr.ph635.prol ], [ 0, %.lr.ph635.preheader ]
  %i.axq = mul nsw i64 %indvars.iv947.prol, %i.atm
  %gep1038.prol = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axq
  %i.axr = load double, ptr %gep1038.prol, align 8, !tbaa !9
  %i.axs = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv943.prol
  store double %i.axr, ptr %i.axs, align 8, !tbaa !9
  %indvars.iv.next944.prol = add nsw i64 %indvars.iv943.prol, 1 ; 3 uses
  %indvars.iv.next948.prol = add nsw i64 %indvars.iv947.prol, 1 ; 2 uses
  %prol.iter1935.next = add i32 %prol.iter1935, 1 ; 2 uses
  %prol.iter1935.cmp.not = icmp eq i32 %prol.iter1935.next, %xtraiter1933
  br i1 %prol.iter1935.cmp.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol, !llvm.loop !107

.lr.ph635.prol.loopexit:                          ; preds = %.lr.ph635.prol, %.lr.ph635.preheader
  %indvars.iv.next944.lcssa.unr = phi i64 [ poison, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %indvars.iv947.unr = phi i64 [ %indvars.iv947.ph, %.lr.ph635.preheader ], [ %indvars.iv.next948.prol, %.lr.ph635.prol ]
  %indvars.iv943.unr = phi i64 [ %indvars.iv943.ph, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %i.axt = sub i32 %i.axo, %i.i
  %i.axu = icmp ugt i32 %i.axt, -8
  br i1 %i.axu, label %._crit_edge636, label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635
  %indvars.iv947 = phi i64 [ %indvars.iv.next948.7, %.lr.ph635 ], [ %indvars.iv947.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944.7, %.lr.ph635 ], [ %indvars.iv943.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %i.axv = mul nsw i64 %indvars.iv947, %i.atm
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axv
  %i.axw = load double, ptr %gep1038, align 8, !tbaa !9
  %i.axx = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv943
  store double %i.axw, ptr %i.axx, align 8, !tbaa !9
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, 1
  %i.axy = mul nsw i64 %indvars.iv.next948, %i.atm
  %gep1038.1 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axy
  %i.axz = load double, ptr %gep1038.1, align 8, !tbaa !9
  %i.aya = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayb = getelementptr i8, ptr %i.aya, i64 8
  store double %i.axz, ptr %i.ayb, align 8, !tbaa !9
  %indvars.iv.next948.1 = add nsw i64 %indvars.iv947, 2
  %i.ayc = mul nsw i64 %indvars.iv.next948.1, %i.atm
  %gep1038.2 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayc
  %i.ayd = load double, ptr %gep1038.2, align 8, !tbaa !9
  %i.aye = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayf = getelementptr i8, ptr %i.aye, i64 16
  store double %i.ayd, ptr %i.ayf, align 8, !tbaa !9
  %indvars.iv.next948.2 = add nsw i64 %indvars.iv947, 3
  %i.ayg = mul nsw i64 %indvars.iv.next948.2, %i.atm
  %gep1038.3 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayg
  %i.ayh = load double, ptr %gep1038.3, align 8, !tbaa !9
  %i.ayi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 24
  store double %i.ayh, ptr %i.ayj, align 8, !tbaa !9
  %indvars.iv.next948.3 = add nsw i64 %indvars.iv947, 4
  %i.ayk = mul nsw i64 %indvars.iv.next948.3, %i.atm
  %gep1038.4 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayk
  %i.ayl = load double, ptr %gep1038.4, align 8, !tbaa !9
  %i.aym = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayn = getelementptr i8, ptr %i.aym, i64 32
  store double %i.ayl, ptr %i.ayn, align 8, !tbaa !9
  %indvars.iv.next948.4 = add nsw i64 %indvars.iv947, 5
  %i.ayo = mul nsw i64 %indvars.iv.next948.4, %i.atm
  %gep1038.5 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayo
  %i.ayp = load double, ptr %gep1038.5, align 8, !tbaa !9
  %i.ayq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 40
  store double %i.ayp, ptr %i.ayr, align 8, !tbaa !9
  %indvars.iv.next948.5 = add nsw i64 %indvars.iv947, 6
  %i.ays = mul nsw i64 %indvars.iv.next948.5, %i.atm
  %gep1038.6 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ays
  %i.ayt = load double, ptr %gep1038.6, align 8, !tbaa !9
  %i.ayu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayv = getelementptr i8, ptr %i.ayu, i64 48
  store double %i.ayt, ptr %i.ayv, align 8, !tbaa !9
  %indvars.iv.next948.6 = add nsw i64 %indvars.iv947, 7
  %i.ayw = mul nsw i64 %indvars.iv.next948.6, %i.atm
  %gep1038.7 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayw
  %i.ayx = load double, ptr %gep1038.7, align 8, !tbaa !9
  %i.ayy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayz = getelementptr i8, ptr %i.ayy, i64 56
  store double %i.ayx, ptr %i.ayz, align 8, !tbaa !9
  %indvars.iv.next944.7 = add nsw i64 %indvars.iv943, 8 ; 2 uses
  %indvars.iv.next948.7 = add nsw i64 %indvars.iv947, 8 ; 2 uses
  %lftr.wideiv952.7 = trunc i64 %indvars.iv.next948.7 to i32
  %exitcond953.not.7 = icmp eq i32 %i.i, %lftr.wideiv952.7
  br i1 %exitcond953.not.7, label %._crit_edge636, label %.lr.ph635, !llvm.loop !108

._crit_edge636:                                   ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635, %middle.block1720, %vec.epilog.middle.block1734, %.loopexit1810
  %.32.lcssa.in = phi i64 [ %indvars.iv.next931.lcssa, %.loopexit1810 ], [ %i.axm, %vec.epilog.middle.block1734 ], [ %i.axd, %middle.block1720 ], [ %indvars.iv.next944.lcssa.unr, %.lr.ph635.prol.loopexit ], [ %indvars.iv.next944.7, %.lr.ph635 ] ; 2 uses
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1
  %indvars.iv.next946 = add nuw i32 %indvars.iv945, 1
  %exitcond962.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count961
  br i1 %exitcond962.not, label %._crit_edge641.loopexit, label %iter.check1763, !llvm.loop !109

._crit_edge641.loopexit:                          ; preds = %._crit_edge636
  %sext984 = shl i64 %.32.lcssa.in, 32
  %i.aza = ashr exact i64 %sext984, 32
  br label %iter.check1796

iter.check1796:                                   ; preds = %._crit_edge641.loopexit, %.split627.us
  %.11387.lcssa = phi i32 [ 0, %.split627.us ], [ %i.atp, %._crit_edge641.loopexit ] ; 4 uses
  %.30.lcssa = phi i64 [ %indvars.iv.next920.lcssa, %.split627.us ], [ %i.aza, %._crit_edge641.loopexit ] ; 7 uses
  %i.azb = mul nsw i32 %.11387.lcssa, %i.d
  %i.azc = sext i32 %i.azb to i64                 ; 2 uses
  %i.azd = add nsw i32 %.11387.lcssa, 1
  %wide.trip.count971 = zext i32 %i.azd to i64    ; 8 uses
  %invariant.gep1039 = getelementptr [8 x i8], ptr %3, i64 %i.azc ; 11 uses
  %min.iters.check1781 = icmp ult i32 %.11387.lcssa, 3
  br i1 %min.iters.check1781, label %vec.epilog.scalar.ph1797.preheader, label %vector.memcheck1779

vector.memcheck1779:                              ; preds = %iter.check1796
  %i.aze = shl i64 %.30.lcssa, 3
  %i.azf = add i64 %i.aze, %i.b
  %i.azg = shl nsw i64 %i.azc, 3
  %i.azh = add i64 %i.azg, %i.a
  %i.azi = sub i64 %i.azh, %i.azf
  %diff.check1780 = icmp ugt i64 %i.azi, -128
  br i1 %diff.check1780, label %vec.epilog.scalar.ph1797.preheader, label %vector.main.loop.iter.check1782

vector.main.loop.iter.check1782:                  ; preds = %vector.memcheck1779
  %min.iters.check1783 = icmp ult i32 %.11387.lcssa, 15
  br i1 %min.iters.check1783, label %vec.epilog.ph1800, label %vector.ph1784

vector.ph1784:                                    ; preds = %vector.main.loop.iter.check1782
  %i.azj = and i64 %wide.trip.count971, 12
  %n.vec1785 = and i64 %wide.trip.count971, 2147483632 ; 5 uses
  %i.azk = add i64 %.30.lcssa, %n.vec1785
  %i.azl = getelementptr [8 x i8], ptr %5, i64 %.30.lcssa
  br label %vector.body1786

vector.body1786:                                  ; preds = %vector.body1786, %vector.ph1784
  %index1787 = phi i64 [ 0, %vector.ph1784 ], [ %index.next1792, %vector.body1786 ] ; 3 uses
  %i.azm = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1787 ; 4 uses
  %i.azn = getelementptr i8, ptr %i.azm, i64 32
  %i.azo = getelementptr i8, ptr %i.azm, i64 64
  %i.azp = getelementptr i8, ptr %i.azm, i64 96
  %wide.load1788 = load <4 x double>, ptr %i.azm, align 8, !tbaa !9
  %wide.load1789 = load <4 x double>, ptr %i.azn, align 8, !tbaa !9
  %wide.load1790 = load <4 x double>, ptr %i.azo, align 8, !tbaa !9
  %wide.load1791 = load <4 x double>, ptr %i.azp, align 8, !tbaa !9
  %i.azq = getelementptr [8 x i8], ptr %i.azl, i64 %index1787 ; 4 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 32
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azq, i64 64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azq, i64 96
  store <4 x double> %wide.load1788, ptr %i.azq, align 8, !tbaa !9
  store <4 x double> %wide.load1789, ptr %i.azr, align 8, !tbaa !9
  store <4 x double> %wide.load1790, ptr %i.azs, align 8, !tbaa !9
  store <4 x double> %wide.load1791, ptr %i.azt, align 8, !tbaa !9
  %index.next1792 = add nuw i64 %index1787, 16    ; 2 uses
  %i.azu = icmp eq i64 %index.next1792, %n.vec1785
  br i1 %i.azu, label %middle.block1793, label %vector.body1786, !llvm.loop !110

middle.block1793:                                 ; preds = %vector.body1786
  %cmp.n1794 = icmp eq i64 %n.vec1785, %wide.trip.count971
  br i1 %cmp.n1794, label %.loopexit, label %vec.epilog.iter.check1798

vec.epilog.iter.check1798:                        ; preds = %middle.block1793
  %min.epilog.iters.check1799 = icmp eq i64 %i.azj, 0
  br i1 %min.epilog.iters.check1799, label %vec.epilog.scalar.ph1797.preheader, label %vec.epilog.ph1800, !prof !15

vec.epilog.ph1800:                                ; preds = %vector.main.loop.iter.check1782, %vec.epilog.iter.check1798
  %vec.epilog.resume.val1795 = phi i64 [ %n.vec1785, %vec.epilog.iter.check1798 ], [ 0, %vector.main.loop.iter.check1782 ]
  %n.vec1801 = and i64 %wide.trip.count971, 2147483644 ; 4 uses
  %i.azv = add i64 %.30.lcssa, %n.vec1801
  %i.azw = getelementptr [8 x i8], ptr %5, i64 %.30.lcssa
  br label %vec.epilog.vector.body1802

vec.epilog.vector.body1802:                       ; preds = %vec.epilog.vector.body1802, %vec.epilog.ph1800
  %index1803 = phi i64 [ %vec.epilog.resume.val1795, %vec.epilog.ph1800 ], [ %index.next1805, %vec.epilog.vector.body1802 ] ; 3 uses
  %i.azx = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1803
  %wide.load1804 = load <4 x double>, ptr %i.azx, align 8, !tbaa !9
  %i.azy = getelementptr [8 x i8], ptr %i.azw, i64 %index1803
  store <4 x double> %wide.load1804, ptr %i.azy, align 8, !tbaa !9
  %index.next1805 = add nuw i64 %index1803, 4     ; 2 uses
  %i.azz = icmp eq i64 %index.next1805, %n.vec1801
  br i1 %i.azz, label %vec.epilog.middle.block1806, label %vec.epilog.vector.body1802, !llvm.loop !111

vec.epilog.middle.block1806:                      ; preds = %vec.epilog.vector.body1802
  %cmp.n1807 = icmp eq i64 %n.vec1801, %wide.trip.count971
  br i1 %cmp.n1807, label %.loopexit, label %vec.epilog.scalar.ph1797.preheader

vec.epilog.scalar.ph1797.preheader:               ; preds = %vector.memcheck1779, %iter.check1796, %vec.epilog.iter.check1798, %vec.epilog.middle.block1806
  %indvars.iv966.ph = phi i64 [ 0, %iter.check1796 ], [ 0, %vector.memcheck1779 ], [ %n.vec1785, %vec.epilog.iter.check1798 ], [ %n.vec1801, %vec.epilog.middle.block1806 ] ; 4 uses
  %indvars.iv964.ph = phi i64 [ %.30.lcssa, %iter.check1796 ], [ %.30.lcssa, %vector.memcheck1779 ], [ %i.azk, %vec.epilog.iter.check1798 ], [ %i.azv, %vec.epilog.middle.block1806 ] ; 2 uses
  %i.baa = sub nsw i64 %wide.trip.count971, %indvars.iv966.ph
  %xtraiter1936 = and i64 %i.baa, 7               ; 2 uses
  %lcmp.mod1937.not = icmp eq i64 %xtraiter1936, 0
  br i1 %lcmp.mod1937.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol

vec.epilog.scalar.ph1797.prol:                    ; preds = %vec.epilog.scalar.ph1797.preheader, %vec.epilog.scalar.ph1797.prol
  %indvars.iv966.prol = phi i64 [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %prol.iter1938 = phi i64 [ %prol.iter1938.next, %vec.epilog.scalar.ph1797.prol ], [ 0, %vec.epilog.scalar.ph1797.preheader ]
  %gep1040.prol = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966.prol
  %i.bab = load double, ptr %gep1040.prol, align 8, !tbaa !9
  %i.bac = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv964.prol
  store double %i.bab, ptr %i.bac, align 8, !tbaa !9
  %indvars.iv.next965.prol = add nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %indvars.iv.next967.prol = add nuw nsw i64 %indvars.iv966.prol, 1 ; 2 uses
  %prol.iter1938.next = add i64 %prol.iter1938, 1 ; 2 uses
  %prol.iter1938.cmp.not = icmp eq i64 %prol.iter1938.next, %xtraiter1936
  br i1 %prol.iter1938.cmp.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol, !llvm.loop !112

vec.epilog.scalar.ph1797.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1797.prol, %vec.epilog.scalar.ph1797.preheader
  %indvars.iv966.unr = phi i64 [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ]
  %indvars.iv964.unr = phi i64 [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ]
  %i.bad = sub nsw i64 %indvars.iv966.ph, %wide.trip.count971
  %i.bae = icmp ugt i64 %i.bad, -8
  br i1 %i.bae, label %.loopexit, label %vec.epilog.scalar.ph1797

vec.epilog.scalar.ph1797:                         ; preds = %vec.epilog.scalar.ph1797.prol.loopexit, %vec.epilog.scalar.ph1797
  %indvars.iv966 = phi i64 [ %indvars.iv.next967.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv966.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv964.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %i.baf = load double, ptr %gep1040, align 8, !tbaa !9
  %i.bag = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv964
  store double %i.baf, ptr %i.bag, align 8, !tbaa !9
  %i.bah = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.1 = getelementptr i8, ptr %i.bah, i64 8
  %i.bai = load double, ptr %gep1040.1, align 8, !tbaa !9
  %i.baj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bak = getelementptr i8, ptr %i.baj, i64 8
  store double %i.bai, ptr %i.bak, align 8, !tbaa !9
  %i.bal = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.2 = getelementptr i8, ptr %i.bal, i64 16
  %i.bam = load double, ptr %gep1040.2, align 8, !tbaa !9
  %i.ban = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bao = getelementptr i8, ptr %i.ban, i64 16
  store double %i.bam, ptr %i.bao, align 8, !tbaa !9
  %i.bap = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.3 = getelementptr i8, ptr %i.bap, i64 24
  %i.baq = load double, ptr %gep1040.3, align 8, !tbaa !9
  %i.bar = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bas = getelementptr i8, ptr %i.bar, i64 24
  store double %i.baq, ptr %i.bas, align 8, !tbaa !9
  %i.bat = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.4 = getelementptr i8, ptr %i.bat, i64 32
  %i.bau = load double, ptr %gep1040.4, align 8, !tbaa !9
  %i.bav = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.baw = getelementptr i8, ptr %i.bav, i64 32
  store double %i.bau, ptr %i.baw, align 8, !tbaa !9
  %i.bax = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.5 = getelementptr i8, ptr %i.bax, i64 40
  %i.bay = load double, ptr %gep1040.5, align 8, !tbaa !9
  %i.baz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bba = getelementptr i8, ptr %i.baz, i64 40
  store double %i.bay, ptr %i.bba, align 8, !tbaa !9
  %i.bbb = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.6 = getelementptr i8, ptr %i.bbb, i64 48
  %i.bbc = load double, ptr %gep1040.6, align 8, !tbaa !9
  %i.bbd = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bbe = getelementptr i8, ptr %i.bbd, i64 48
  store double %i.bbc, ptr %i.bbe, align 8, !tbaa !9
  %i.bbf = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.7 = getelementptr i8, ptr %i.bbf, i64 56
  %i.bbg = load double, ptr %gep1040.7, align 8, !tbaa !9
  %i.bbh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bbi = getelementptr i8, ptr %i.bbh, i64 56
  store double %i.bbg, ptr %i.bbi, align 8, !tbaa !9
  %indvars.iv.next965.7 = add nsw i64 %indvars.iv964, 8
  %indvars.iv.next967.7 = add nuw nsw i64 %indvars.iv966, 8 ; 2 uses
  %exitcond972.not.7 = icmp eq i64 %indvars.iv.next967.7, %wide.trip.count971
  br i1 %exitcond972.not.7, label %.loopexit, label %vec.epilog.scalar.ph1797, !llvm.loop !113

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge510, %._crit_edge535, %._crit_edge558, %._crit_edge569, %._crit_edge599, %._crit_edge611, %vec.epilog.scalar.ph1797.prol.loopexit, %vec.epilog.scalar.ph1797, %middle.block1793, %vec.epilog.middle.block1806, %._crit_edge529, %._crit_edge549, %bb.i, %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !12, !13, !14}
!20 = distinct !{!20, !12, !13, !14}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !12, !13}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12, !13, !14}
!26 = distinct !{!26, !12, !13, !14}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !12, !13}
!29 = distinct !{!29, !12, !13, !14}
!30 = distinct !{!30, !12, !13, !14}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !12, !13}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12, !13, !14}
!35 = distinct !{!35, !12, !13, !14}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !12, !13}
!38 = distinct !{!38, !12, !13, !14}
!39 = distinct !{!39, !12, !13, !14}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !12, !13}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12, !13, !14}
!44 = distinct !{!44, !12, !13, !14}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !12, !13}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12, !13, !14}
!49 = distinct !{!49, !12, !13, !14}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12, !13, !14}
!54 = distinct !{!54, !12, !13, !14}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13, !14}
!58 = distinct !{!58, !12, !13, !14}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12, !13, !14}
!63 = distinct !{!63, !12, !13, !14}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !12, !13, !14}
!66 = distinct !{!66, !12, !13, !14}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !12, !13}
!69 = distinct !{!69, !12, !13}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12, !13, !14}
!72 = distinct !{!72, !12, !13, !14}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !12, !13}
!75 = distinct !{!75, !12, !13, !14}
!76 = distinct !{!76, !12, !13, !14}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !12, !13}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12, !13, !14}
!81 = distinct !{!81, !12, !13, !14}
!82 = distinct !{!82, !12, !13}
!83 = distinct !{!83, !12, !13, !14}
!84 = distinct !{!84, !12, !13, !14}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !12, !13}
!87 = distinct !{!87, !12, !13, !14}
!88 = distinct !{!88, !12, !13, !14}
!89 = distinct !{!89, !18}
!90 = distinct !{!90, !12, !13}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12, !13, !14}
!93 = distinct !{!93, !12, !13, !14}
!94 = distinct !{!94, !18}
!95 = distinct !{!95, !12, !13}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12, !13, !14}
!98 = distinct !{!98, !12, !13, !14}
!99 = distinct !{!99, !12, !13}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12, !13, !14}
!102 = distinct !{!102, !12, !13, !14}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !12, !13}
!105 = distinct !{!105, !12, !13, !14}
!106 = distinct !{!106, !12, !13, !14}
!107 = distinct !{!107, !18}
!108 = distinct !{!108, !12, !13}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12, !13, !14}
!111 = distinct !{!111, !12, !13, !14}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !12, !13}
end_hunk_0
